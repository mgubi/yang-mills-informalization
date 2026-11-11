#!/usr/bin/env python3
"""Incremental builds: decide what to rebuild, and record what was built.

    plan.py plan   STATE TMDIR MDDIR MODE FULL TOOLS... -> OUTDIR
    plan.py record STATE TMDIR MDDIR MODE CONVERTED EXPORTED BROKEN TOOLS...

The record (tm/.build-state.json, written only after a successful build)
holds, for every page:
  in        fingerprint of everything the .tm is made from: the page as
            patched by prep.py (so link targets resolved against the other
            pages are included) and the navigation data the page uses; for
            the manuscript (manuscript/main.tm), the output of tex_prep.py
            (main.tex with every \\input file, its metadata, references.bib);
  tm        hash of the installed .tm;
  html      hash of the installed .html, and html_from the hash of the .tm
            it was exported from;
plus a hash of the tools (scripts, style, stylesheet, build.sh, max-html,
the TeXmacs binary), the page list, the git HEAD (for information) and the
links found broken in the site.

A page is converted again when its fingerprint changed or its .tm is missing
or was edited; it is exported again when it was converted, or its .html is
missing, edited, or older than its .tm. Everything is rebuilt when there is
no record, the tools changed, the set of pages changed, or --full is given.
Content hashes are used rather than `git diff`: they see uncommitted and
untracked edits, renames and hand edits of the outputs alike.
"""
import hashlib, json, os, subprocess, sys

VERSION = 1


def sha(data):
    return hashlib.sha256(data).hexdigest()


def file_sha(path):
    try:
        return sha(open(path, 'rb').read())
    except OSError:
        return None


def tools_hash(here, tm_bin, max_html):
    h = hashlib.sha256()
    files = [os.path.join(here, 'build.sh'), os.path.join(here, 'ym-outline.ts'),
             os.path.join(here, 'ym-manuscript.ts')]
    for d in ('resources', 'scripts'):
        for root, ds, fs in os.walk(os.path.join(here, d)):
            ds[:] = sorted(x for x in ds if x != '__pycache__')
            files += [os.path.join(root, f) for f in sorted(fs) if not f.endswith('.pyc')]
    for root, ds, fs in os.walk(max_html, followlinks=True):
        ds.sort()
        files += [os.path.join(root, f) for f in sorted(fs)]
    for f in files:
        h.update(os.path.relpath(f, here).encode() + b'\0' + (file_sha(f) or '-').encode())
    st = os.stat(tm_bin)
    h.update(f'{tm_bin}\0{st.st_size}\0{int(st.st_mtime)}'.encode())
    h.update(str(VERSION).encode())
    return h.hexdigest()


def fingerprints(mddir):
    """per page: patched Markdown + the parts of pages.json post.py uses"""
    data = json.load(open(os.path.join(mddir, 'pages.json'), encoding='utf-8'))
    pages = data['pages']
    page_set = sorted(pages)
    units_ctx = json.dumps([data['units'], pages.get('outline/units.tm', {}).get('headings')],
                           sort_keys=True)
    out = {}
    for p, meta in pages.items():
        md = open(os.path.join(mddir, p[:-3] + '.md'), 'rb').read()
        ctx = {'page': p, 'pages': page_set, 'meta': meta}
        if p.startswith(('outline/units/', 'outline/notes/')):
            ctx['units'] = units_ctx
        out[p] = sha(md + b'\0' + json.dumps(ctx, sort_keys=True).encode())
    # the LaTeX manuscript (tex_prep.py output: the flattened source, its
    # metadata and the bibliography database)
    tex = os.path.join(mddir, 'tex')
    if data.get('manuscript') and os.path.exists(os.path.join(tex, 'main.tex')):
        h = hashlib.sha256()
        for f in ('main.tex', 'meta.json', 'references.bib'):
            h.update(f.encode() + b'\0' + (file_sha(os.path.join(tex, f)) or '-').encode())
        ctx = {'page': data['manuscript'], 'pages': page_set}
        out[data['manuscript']] = sha(h.hexdigest().encode() + json.dumps(ctx, sort_keys=True).encode())
    return out


def load_state(path):
    try:
        st = json.load(open(path, encoding='utf-8'))
        return st if st.get('version') == VERSION else None
    except (OSError, ValueError):
        return None


def existing_pages(tmdir):
    out = []
    for root, ds, fs in os.walk(tmdir):
        rel = os.path.relpath(root, tmdir)
        if rel.split(os.sep)[0] in ('html', 'scripts', 'resources'):
            continue
        out += [os.path.normpath(os.path.join(rel, f)) for f in fs if f.endswith('.tm')]
    return sorted(out)


def html_of(p):
    return 'html/' + p[:-3] + '.html'


def plan(state_path, tmdir, mddir, mode, full, tools, outdir):
    st = load_state(state_path)
    if mode == 'html':
        pages = sorted(st['pages']) if st else existing_pages(tmdir)
        fps = None
    else:
        fps = fingerprints(mddir)
        pages = sorted(fps)
    reason = None
    if full:
        reason = '--full given'
    elif st is None:
        reason = 'no record of a previous build (tm/.build-state.json)'
    elif st['tools'] != tools:
        reason = 'the tools changed (tm/scripts, tm/ym-outline.ts, tm/resources, tm/build.sh, max-html or TeXmacs)'
    elif sorted(st['pages']) != pages:
        old, new = set(st['pages']), set(pages)
        reason = 'the set of pages changed (added: %s; removed: %s)' % (
            ', '.join(sorted(new - old)) or '-', ', '.join(sorted(old - new)) or '-')
    conv, exp, why = [], [], {}
    if reason:
        conv = [] if mode == 'html' else list(pages)
        exp = [] if mode == 'tm' else list(pages)
    else:
        for p in pages:
            old = st['pages'][p]
            tm_now = file_sha(os.path.join(tmdir, p))
            if mode != 'html':
                if fps[p] != old.get('in'):
                    conv.append(p); why[p] = 'source changed'
                elif tm_now is None or tm_now != old.get('tm'):
                    conv.append(p); why[p] = '.tm missing or edited'
            if mode != 'tm':
                html_now = file_sha(os.path.join(tmdir, html_of(p)))
                if p in conv:
                    exp.append(p)
                elif html_now is None or html_now != old.get('html'):
                    exp.append(p); why.setdefault(p, '.html missing or edited')
                elif old.get('html_from') != tm_now:
                    exp.append(p); why.setdefault(p, '.html older than its .tm')
    kind = 'full' if reason else ('incremental' if conv or exp else 'none')
    os.makedirs(outdir, exist_ok=True)
    open(os.path.join(outdir, 'kind'), 'w').write(kind + '\n')
    open(os.path.join(outdir, 'convert.lst'), 'w').write(''.join(p + '\n' for p in conv))
    open(os.path.join(outdir, 'export.lst'), 'w').write(''.join(p + '\n' for p in exp))
    open(os.path.join(outdir, 'pages.lst'), 'w').write(''.join(p + '\n' for p in pages))
    if kind == 'full':
        print(f'build: full rebuild: {reason}')
    elif kind == 'none':
        print('build: up to date, nothing to rebuild')
    else:
        print(f'build: incremental: {len(conv)} page(s) to convert, {len(exp)} to export')
        for p in sorted(set(conv) | set(exp)):
            print(f'build:   {p}: {why.get(p, "")}')


def record(state_path, tmdir, mddir, mode, converted, exported, broken, tools, repo):
    st = load_state(state_path) or {}
    old_pages = st.get('pages', {})
    fps = fingerprints(mddir) if mode != 'html' else None
    pages = sorted(fps) if fps is not None else sorted(old_pages)
    conv = set(open(converted).read().split())
    exp = set(open(exported).read().split())
    new = {}
    for p in pages:
        o = dict(old_pages.get(p, {}))
        if fps is not None:
            o['in'] = fps[p]
        o['tm'] = file_sha(os.path.join(tmdir, p))
        if p in exp:
            o['html'] = file_sha(os.path.join(tmdir, html_of(p)))
            o['html_from'] = o['tm']
        elif p in conv and mode != 'tm':
            raise SystemExit(f'record: {p} converted but not exported')
        new[p] = o
    try:
        head = subprocess.check_output(['git', '-C', repo, 'rev-parse', 'HEAD'], text=True).strip()
    except Exception:
        head = None
    out = {'version': VERSION, 'head': head, 'tools': tools, 'pages': new,
           'broken_links': json.load(open(broken)) if broken != '-' else st.get('broken_links', [])}
    tmp = state_path + '.tmp'
    json.dump(out, open(tmp, 'w', encoding='utf-8'), indent=1, sort_keys=True)
    os.replace(tmp, state_path)


if __name__ == '__main__':
    cmd = sys.argv[1]
    if cmd == 'tools':
        print(tools_hash(*sys.argv[2:5]))
    elif cmd == 'plan':
        plan(*sys.argv[2:6], sys.argv[6] == '1', sys.argv[7], sys.argv[8])
    elif cmd == 'record':
        record(*sys.argv[2:11])
    else:
        raise SystemExit('usage: plan.py tools|plan|record ...')

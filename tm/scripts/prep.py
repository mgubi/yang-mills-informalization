#!/usr/bin/env python3
"""Prepare the Markdown sources for the TeXmacs import (step 1 of build.sh).

    prep.py REPO OUTDIR

Reads the Markdown collection of REPO (every *.md that git tracks or would
track, i.e. untracked but not ignored, except under tm/) (never modifies it) and writes a
patched copy of every page to OUTDIR, at the path of its TeXmacs document
(README.md -> index.md, so that the HTML export gives index.html), together
with OUTDIR/manifest.tsv (source, target) and OUTDIR/pages.json (titles and
navigation data for post.py).

Patches (all uniform, all on a temporary copy):
  * links to other pages of the collection: `x.md#frag` -> `x.tm#frag`
    (README.md -> index.tm), relative paths unchanged since the tree is
    mirrored;
  * a link to an anchor that a unit page (outline/units/X.md) does not have
    but its detailed notes (outline/notes/X.md) have, or conversely, goes to
    that page (sections moved between the two; reported);
  * links to folders with a converted README (data/) -> its index.tm;
  * links to other files of the repository (data/*.tsv, LICENSE,
    manuscript/, pdf/): absolute links to the repository on GitHub;
  * every ATX heading gets the anchor GitHub gives it (its slug), as an
    `<a id="..."></a>` that the importer turns into a TeXmacs label, so that
    links such as `summary.md#the-strategy` resolve.
"""
import json, os, re, subprocess, sys

REPO = os.path.abspath(sys.argv[1])
OUT = os.path.abspath(sys.argv[2])

# Markdown files that are not pages (this folder); the LaTeX manuscript
# itself is converted by tex_prep.py / tex_post.py into manuscript/main.tm
EXCLUDE = ('tm/',)
MANUSCRIPT = 'manuscript/main.tex'


def collection():
    """every Markdown file tracked in git (or untracked and not ignored),
    except under EXCLUDE; the main
    pages first, then in path order"""
    try:
        # tracked files, and untracked ones that are not ignored
        files = subprocess.check_output(['git', '-C', REPO, 'ls-files', '--cached', '--others',
                                         '--exclude-standard', '*.md'], text=True).split()
    except Exception:   # not a git checkout: walk the tree
        files = []
        for d, ds, fs in os.walk(REPO):
            ds[:] = [x for x in ds if not x.startswith('.')]
            files += [os.path.relpath(os.path.join(d, f), REPO) for f in fs if f.endswith('.md')]
    files = [f for f in files if not f.startswith(EXCLUDE) and
             os.path.exists(os.path.join(REPO, f))]
    return sorted(set(files), key=lambda f: (f.count('/'), f != 'README.md' and not f.endswith('/README.md'), f))


def target_of(src):
    """README.md -> index.md in every folder (data/README.md -> data/index.md)"""
    d, b = os.path.split(src)
    if b == 'README.md':
        b = 'index.md'
    return os.path.join(d, b) if d else b


def repo_url():
    url = os.environ.get('YM_REPO_URL')
    if not url:
        try:
            url = subprocess.check_output(['git', '-C', REPO, 'remote', 'get-url', 'origin'],
                                          text=True).strip()
        except Exception:
            url = 'https://github.com/scottnarmstrong/yang-mills-informalization'
    url = re.sub(r'^git@github\.com:', 'https://github.com/', url)
    url = re.sub(r'\.git$', '', url)
    branch = os.environ.get('YM_REPO_BRANCH', 'main')
    return url, branch


def slugify(text):
    """GitHub's heading anchor: strip markup, lowercase, keep letters,
    digits, '-', '_' and spaces, spaces -> '-'."""
    t = re.sub(r'\[([^\]]*)\]\([^)]*\)', r'\1', text)   # links -> their text
    t = re.sub(r'<[^>]+>', '', t)                       # inline html
    t = t.replace('`', '').replace('*', '').strip().lower()
    t = re.sub(r'[^\w\- ]', '', t)
    return t.replace(' ', '-')


FENCE = re.compile(r'^\s*(```|~~~)')
HEAD = re.compile(r'^(#{1,6})\s+(.*?)\s*#*\s*$')
LINK = re.compile(r'(\]\()([^)\s]+)(\))')
TITLE_CLEAN = re.compile(r'[*`]')


def anchors_of(text):
    """the anchors a page has: GitHub heading slugs and <a id="...">"""
    out, seen, fenced = set(), {}, False
    for line in text.split('\n'):
        if FENCE.match(line):
            fenced = not fenced
            continue
        if fenced:
            continue
        out.update(re.findall(r'<a id="([^"]+)"', line))
        h = HEAD.match(line)
        if h:
            slug = slugify(h.group(2))
            n = seen.get(slug, 0)
            seen[slug] = n + 1
            out.add(f'{slug}-{n}' if n else slug)
    return out


def companion(page):
    """outline/units/X.md <-> outline/notes/X.md"""
    if page.startswith('outline/units/'):
        return 'outline/notes/' + page[len('outline/units/'):]
    if page.startswith('outline/notes/'):
        return 'outline/units/' + page[len('outline/notes/'):]
    return None


def main():
    pages = collection()
    known = {p: target_of(p) for p in pages}
    anchors = {p: anchors_of(open(os.path.join(REPO, p), encoding='utf-8').read()) for p in pages}
    url, branch = repo_url()
    os.makedirs(OUT, exist_ok=True)
    meta = {}
    stats = {'md-links': 0, 'repo-links': 0, 'anchors': 0, 'unresolved': [], 'moved': []}
    for src in pages:
        text = open(os.path.join(REPO, src), encoding='utf-8').read()
        sdir = os.path.dirname(src)

        def relink(m):
            target = m.group(2)
            if re.match(r'^[a-z][a-z0-9+.-]*:', target) or target.startswith('#'):
                return m.group(0)
            path, hsh, frag = target.partition('#')
            full = os.path.normpath(os.path.join(sdir, path))
            if path.endswith('/') or os.path.isdir(os.path.join(REPO, full)):
                readme = os.path.normpath(os.path.join(full, 'README.md'))
                if readme in known:
                    full = readme
            if full in known:
                stats['md-links'] += 1
                if frag and frag not in anchors[full]:
                    # a section that moved from a unit page to its detailed
                    # notes (or back): follow it to the companion page
                    other = companion(full)
                    if other in known and frag in anchors[other]:
                        stats['moved'].append(f'{src}: {target} -> {other}')
                        full = other
                    else:
                        stats['unresolved'].append(f'{src}: {target} (no such anchor)')
                new = os.path.relpath(known[full], sdir or '.')
                new = new[:-3] + '.tm'
                return m.group(1) + new + hsh + frag + m.group(3)
            if os.path.exists(os.path.join(REPO, full)) and not full.startswith('..'):
                stats['repo-links'] += 1
                kind = 'tree' if os.path.isdir(os.path.join(REPO, full)) else 'blob'
                return m.group(1) + f'{url}/{kind}/{branch}/{full}' + hsh + frag + m.group(3)
            if path.endswith('.md') or '/' in path:
                stats['unresolved'].append(f'{src}: {target}')
            return m.group(0)

        out, fenced, seen, title, heads = [], False, {}, None, []
        for line in text.split('\n'):
            if FENCE.match(line):
                fenced = not fenced
                out.append(line)
                continue
            if fenced:
                out.append(line)
                continue
            line = LINK.sub(relink, line)
            h = HEAD.match(line)
            if h:
                slug = slugify(h.group(2))
                n = seen.get(slug, 0)
                seen[slug] = n + 1
                if n:
                    slug = f'{slug}-{n}'
                if title is None and len(h.group(1)) == 1:
                    title = TITLE_CLEAN.sub('', h.group(2))
                heads.append((len(h.group(1)), slug))
                stats['anchors'] += 1
                line = f'{h.group(1)} {h.group(2)} <a id="{slug}"></a>'
            out.append(line)
        dst = known[src]
        os.makedirs(os.path.join(OUT, os.path.dirname(dst)), exist_ok=True)
        open(os.path.join(OUT, dst), 'w', encoding='utf-8').write('\n'.join(out))
        meta[dst[:-3] + '.tm'] = {'source': src, 'title': title or src, 'headings': heads}

    # navigation data: unit order and titles from data/units.tsv
    units = []
    tsv = os.path.join(REPO, 'data/units.tsv')
    if os.path.exists(tsv):
        rows = [l.split('\t') for l in open(tsv, encoding='utf-8').read().splitlines()]
        hdr = rows[0]
        for r in rows[1:]:
            d = dict(zip(hdr, r))
            f = 'outline/units/' + d['unit'].replace('.', '-') + '.tm'
            n = f.replace('outline/units/', 'outline/notes/')
            if f in meta or n in meta:
                units.append({'unit': d['unit'], 'part': d['part'], 'title': d['title'],
                              'file': f if f in meta else None,
                              'notes': n if n in meta else None})
    # units missing from the table, in file order
    listed = {u['file'] for u in units}
    for f in meta:
        if f.startswith('outline/units/') and f not in listed:
            u = os.path.basename(f)[:-3]
            n = f.replace('outline/units/', 'outline/notes/')
            units.append({'unit': u.replace('-', '.'), 'part': u.split('-')[0],
                          'title': meta[f]['title'], 'file': f,
                          'notes': n if n in meta else None})

    manuscript = 'manuscript/main.tm' if os.path.exists(os.path.join(REPO, MANUSCRIPT)) else None
    json.dump({'pages': meta, 'units': units, 'repo': url, 'branch': branch,
               'manuscript': manuscript},
              open(os.path.join(OUT, 'pages.json'), 'w', encoding='utf-8'), indent=1,
              ensure_ascii=False)
    with open(os.path.join(OUT, 'manifest.tsv'), 'w') as f:
        for p in pages:
            f.write(f'{p}\t{known[p]}\n')
    print(f"prep: {len(pages)} pages, {stats['md-links']} page links, "
          f"{stats['repo-links']} repository links, {stats['anchors']} heading anchors")
    for u in stats['moved']:
        print('prep: anchor found on the companion page:', u)
    for u in stats['unresolved']:
        print('prep: unresolved link', u)


main()

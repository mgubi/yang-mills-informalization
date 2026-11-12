#!/usr/bin/env python3
r"""TikZ pictures of the manuscript as SVG images.

    figures.py render META_JSON REFS_TM OUTDIR CACHEDIR [--strict]
    figures.py html MAIN_HTML SNAPSHOT_DIR FIGDIR

render: every picture extracted by tex_prep.py (meta.json "figures": one
standalone LaTeX document each) is written to OUTDIR/fig-N.svg, with its
\ref{X}/\eqref{X} replaced by the numbers of the labels in REFS_TM (the
references collection that TeXmacs saves in a typeset document: the
manuscript of the previous build before the import, the freshly typeset one
after the export). OUTDIR/figures.json records, for each picture, the hash of
the document actually compiled. A picture whose hash is the one recorded in
CACHEDIR/figures.json is copied from CACHEDIR (the committed figures), so TeX
is needed only for new or changed pictures: latex + dvisvgm on the PATH, or
the installer named by YM_TEX_INSTALL (it prints the TeX bin directory),
which is run on the first picture that has to be compiled. No TeX available,
or a picture that does not compile, is an error. --strict: a label not found
in REFS_TM is an error (otherwise it is shown as ?? and the picture is
compiled again after the export).

html: TeXmacs exports the images of MAIN_HTML as copies main-K.svg next to it;
each copy is identified by its content with a picture of SNAPSHOT_DIR (the
versions present at the export), its link pointed to figures/fig-N.svg and
the copy removed; FIGDIR (the final pictures) is then copied to
figures/ next to MAIN_HTML.
"""
import hashlib, json, os, re, shutil, subprocess, sys, tempfile

VERSION = 'figures-1'   # bump to recompile every picture


def references(tm):
    """label -> number from the references collection of a saved document"""
    out = {}
    if tm and os.path.exists(tm):
        s = open(tm, encoding='utf-8', errors='replace').read()
        for m in re.finditer(r'<associate\|([^|<>]+)\|<tuple\|([^|<>]*)\|', s):
            out[m.group(1)] = m.group(2)
    return out


def resolve(src, refs, missing):
    def num(label):
        if label in refs:
            return refs[label]
        missing.append(label)
        return '??'
    src = re.sub(r'\\eqref\{([^{}]*)\}', lambda m: '(' + num(m.group(1)) + ')', src)
    return re.sub(r'\\ref\{([^{}]*)\}', lambda m: num(m.group(1)), src)


TEX = {}


def tex_bin():
    """directory of latex and dvisvgm (installed on demand)"""
    if 'bin' in TEX:
        return TEX['bin']
    if shutil.which('latex') and shutil.which('dvisvgm'):
        TEX['bin'] = os.path.dirname(shutil.which('latex'))
    elif os.environ.get('YM_TEX_INSTALL'):
        print('figures: installing TeX (' + os.environ['YM_TEX_INSTALL'] + ')', flush=True)
        out = subprocess.run(['bash', os.environ['YM_TEX_INSTALL']], stdout=subprocess.PIPE,
                             text=True)
        lines = out.stdout.strip().splitlines()
        if out.returncode or not lines or not os.path.exists(os.path.join(lines[-1], 'dvisvgm')):
            raise SystemExit('figures: TeX installation failed')
        TEX['bin'] = lines[-1]
    else:
        raise SystemExit('figures: pictures to compile but no latex/dvisvgm '
                         '(install TeX Live or set YM_TEX_INSTALL)')
    return TEX['bin']


def compile_svg(doc, target):
    b = tex_bin()
    with tempfile.TemporaryDirectory() as d:
        open(os.path.join(d, 'fig.tex'), 'w', encoding='utf-8').write(doc)
        r = subprocess.run([os.path.join(b, 'latex'), '-interaction=nonstopmode', '-halt-on-error', 'fig.tex'],
                           cwd=d, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True, errors='replace')
        if r.returncode:
            sys.stderr.write(r.stdout[-3000:])
            raise SystemExit('figures: LaTeX failed on a picture')
        # glyphs as paths: the SVG needs no fonts
        r = subprocess.run([os.path.join(b, 'dvisvgm'), '--no-fonts', '--exact-bbox', '-o', 'fig.svg', 'fig.dvi'],
                           cwd=d, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True, errors='replace')
        if r.returncode or not os.path.exists(os.path.join(d, 'fig.svg')):
            sys.stderr.write(r.stdout[-3000:])
            raise SystemExit('figures: dvisvgm failed on a picture')
        shutil.copyfile(os.path.join(d, 'fig.svg'), target)


def render(meta_json, refs_tm, outdir, cachedir, strict):
    figs = json.load(open(meta_json, encoding='utf-8')).get('figures', [])
    refs = references(refs_tm)
    try:
        cache = json.load(open(os.path.join(cachedir, 'figures.json')))
    except (OSError, ValueError):
        cache = {}
    by_hash = {h: os.path.join(cachedir, f'fig-{n}.svg') for n, h in cache.items()}
    os.makedirs(outdir, exist_ok=True)
    for f in os.listdir(outdir):
        if re.fullmatch(r'fig-\d+\.svg', f) and int(f[4:-4]) > len(figs):
            os.remove(os.path.join(outdir, f))
    record, compiled, unresolved = {}, 0, []
    for n, src in enumerate(figs, 1):
        missing = []
        doc = resolve(src, refs, missing)
        unresolved += missing
        h = hashlib.sha256((VERSION + '\n' + doc).encode()).hexdigest()[:16]
        target = os.path.join(outdir, f'fig-{n}.svg')
        try:
            done = json.load(open(os.path.join(outdir, 'figures.json'))).get(str(n)) == h and os.path.exists(target)
        except (OSError, ValueError):
            done = False
        if not done:
            if h in by_hash and os.path.exists(by_hash[h]):
                if os.path.abspath(by_hash[h]) != os.path.abspath(target):
                    shutil.copyfile(by_hash[h], target)
            else:
                compile_svg(doc, target)
                compiled += 1
        record[str(n)] = h
    json.dump(record, open(os.path.join(outdir, 'figures.json'), 'w'), indent=1, sort_keys=True)
    if unresolved and strict:
        raise SystemExit('figures: labels not found for references in pictures: ' + ', '.join(sorted(set(unresolved))))
    print(f'figures: {len(figs)} pictures, {compiled} compiled'
          + (f', {len(set(unresolved))} references not yet known' if unresolved else ''))


def html(main_html, snapshot, figdir):
    d = os.path.dirname(main_html)
    base = os.path.splitext(os.path.basename(main_html))[0]
    known = {}
    for f in os.listdir(snapshot):
        if f.endswith('.svg'):
            known.setdefault(open(os.path.join(snapshot, f), 'rb').read(), f)
    s = open(main_html, encoding='utf-8').read()
    n = 0
    for f in sorted(os.listdir(d)):
        if re.fullmatch(re.escape(base) + r'-\d+\.svg', f):
            data = open(os.path.join(d, f), 'rb').read()
            if data not in known:
                raise SystemExit(f'figures: exported image {f} is none of the pictures')
            s, k = re.subn(r'src="' + re.escape(f) + '"', 'src="figures/' + known[data] + '"', s)
            if k != 1:
                raise SystemExit(f'figures: {k} links to {f} in {main_html}')
            os.remove(os.path.join(d, f))
            n += 1
    open(main_html, 'w', encoding='utf-8').write(s)
    out = os.path.join(d, 'figures')
    shutil.rmtree(out, ignore_errors=True)
    os.makedirs(out)
    for f in os.listdir(figdir):
        if f.endswith('.svg'):
            shutil.copyfile(os.path.join(figdir, f), os.path.join(out, f))
    print(f'figures: {n} images linked in {os.path.basename(main_html)}')


if __name__ == '__main__':
    if sys.argv[1] == 'render':
        render(*sys.argv[2:6], strict='--strict' in sys.argv)
    elif sys.argv[1] == 'html':
        html(*sys.argv[2:5])
    else:
        raise SystemExit(__doc__)

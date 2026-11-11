#!/usr/bin/env python3
"""Rewrite the imported documents into native TeXmacs (step 3 of build.sh).

    post.py PAGES_JSON RAWDIR OUTDIR [PAGES.lst]

For every page of PAGES_JSON (written by prep.py) reads RAWDIR/<flat>.scm
(the stree of the Markdown import) and writes OUTDIR/<flat>.scm.

The importer (TeXmacs Upsilon, style "markdown") keeps the Markdown source
next to what it understood, so that a file can be written back unchanged.
Here we want plain TeXmacs documents in the collection's style:

  * md-source / md-block-source  -> their body (the parsed markup); empty
    bodies (HTML comments) are dropped;
  * inline formulas that the LaTeX parser split into math + text pieces
    (`$n!$`, `${\\rm cap}\\cdot t$`, `$\\texttt{x}_d$`, `$x=\\text{pole}$`,
    `$_{\\rm ray}$`) are joined again into one math node;
  * display `aligned` blocks, imported in text mode, go into equation*;
  * md-loose lists -> plain lists;
  * the heading anchors added by prep.py: label moved out of the heading;
  * heading levels: # -> ym-title (page title), ## -> section,
    ### -> subsection, #### -> subsubsection, ...;
  * <le>, <ge>, <leq>, <geq> -> <leqslant>, <geqslant> (house convention);
  * <centerdot> in text -> ym-middot (TeXmacs text fonts lack the glyph);
  * empty table rows (Markdown tables with an empty header) are removed and
    the header row of each table is ruled;
  * a navigation bar (ym-nav) on top of every page, previous/next unit on
    the unit pages, a table of contents for long pages;
  * style <tuple|generic|british|ym-outline>, html-title.
"""
import json, os, re, sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import stree

PAGES, RAW, OUT = sys.argv[1:4]
data = json.load(open(PAGES, encoding='utf-8'))
pages, units = data['pages'], data['units']

warnings = []
CUR = ['']   # page being processed, for the warnings


def flat(tm):
    return tm.replace('/', '__')[:-3] + '.scm'


def cork(s):
    """unicode -> TeXmacs (Cork) string, for the few strings we create."""
    out = []
    for ch in s:
        o = ord(ch)
        if ch == '–':
            out.append('\x15')
        elif ch == '—':
            out.append('\x16')
        elif ch == '←':
            out.append('<leftarrow>')
        elif ch == '→':
            out.append('<rightarrow>')
        elif ch == '<':
            out.append('<less>')
        elif ch == '>':
            out.append('<gtr>')
        elif o < 0x80 or (0xc0 <= o <= 0xff and ch not in '\xd7\xf7'):
            out.append(ch)
        else:
            out.append('<#%X>' % o)
    return ''.join(out)


def is_node(x, *labels):
    return isinstance(x, list) and (not labels or x[0] in labels)


def concat(*xs):
    kids = []
    for x in xs:
        if is_node(x, 'concat'):
            kids.extend(x[1:])
        elif x != '':
            kids.append(x)
    if not kids:
        return ''
    return kids[0] if len(kids) == 1 else ['concat'] + kids


# --- formulas -------------------------------------------------------------

PUNCT = re.compile(r'^[!\'.,;:()\[\]=+\-*/ ]*$')


def mathify(x):
    """content of a formula from a piece of the importer's output."""
    if isinstance(x, str):
        if PUNCT.match(x):
            return x
        lead = re.match(r'^[!\'.,;:=+\-*/]*', x).group(0)
        rest = x[len(lead):]
        return concat(lead, ['text', rest])
    if is_node(x, 'math'):
        return x[1]
    if is_node(x, 'concat'):
        return concat(*[mathify(y) for y in x[1:]])
    if is_node(x, 'with') and len(x) == 4 and x[1] == 'font-family':
        if x[2] == 'rm':
            return ['math-up', x[3]]
        return ['text', x]
    if is_node(x, 'rsub', 'rsup'):
        return [x[0], mathify(x[1])]
    return x


def fix_formula(src, body):
    if isinstance(src, str) and src.startswith('$') and not src.startswith('$$'):
        if not is_node(body, 'math'):
            return ['math', mathify(body)]
    if is_node(body, 'aligned'):
        return ['equation*', ['document', body]]
    return body


# --- generic rewriting ----------------------------------------------------

SYMS = {'<le>': '<leqslant>', '<ge>': '<geqslant>',
        '<leq>': '<leqslant>', '<geq>': '<geqslant>'}
SYM_RE = re.compile('|'.join(re.escape(k) for k in SYMS))


def roman_text(x):
    """`\\mathrm{Re\\,tr}`, `\\mathrm{work item}` are imported as
    <with|math-font-family|rm|...>, which the MathJax export writes as
    \\textrm{\\operatorname{..}} (an error): use math-up for one word,
    text for several."""
    def plain(y):
        return isinstance(y, str) or (is_node(y, 'concat', 'around', 'space') and
                                      all(plain(k) for k in y[1:] if not is_node(y, 'space')))

    def words_of(y):
        if isinstance(y, str):
            return y
        if is_node(y, 'space'):
            return ' '
        return ''.join(words_of(k) for k in y[1:])
    if not plain(x):
        return None
    words = words_of(x)
    if re.match(r'^[A-Za-z][A-Za-z0-9]*$', words):
        return ['math-up', words]
    return ['text', words]


def rewrite(x, in_math=False):
    if isinstance(x, str):
        x = SYM_RE.sub(lambda m: SYMS[m.group(0)], x)
        if not in_math and '<centerdot>' in x:
            parts = x.split('<centerdot>')
            out = [parts[0]]
            for p in parts[1:]:
                out += [['ym-middot'], p]
            return concat(*out)
        return x
    lab = x[0]
    if lab in ('md-source', 'md-block-source'):
        body = x[1]
        if body == '' or body == ['document', '']:
            src = x[2] if isinstance(x[2], str) else stree.text_of(x[2])
            if not src.startswith(('<less>!--', '<less>/details')):
                warnings.append(CUR[0] + ': dropped unparsed source: ' + src[:80])
            return None
        return rewrite(fix_formula(x[2], body), in_math)
    if lab == 'md-loose':
        return rewrite(x[1], in_math)
    if lab == 'md-fence' and len(x) == 3:       # ```lang fences: keep the code
        return rewrite(x[2], in_math)
    if len(x) == 1:
        # zero-argument tags from LaTeX commands the importer does not know
        if lab in ('lt', 'gt'):                     # \lt, \gt
            return '<less>' if lab == 'lt' else '<gtr>'
        if lab in ('iint', 'iiint', 'oint', 'oiint'):  # \iint -> big operator
            return ['big', lab]
        if in_math and re.match(r'^[A-Z][A-Za-z]*$', lab):  # e.g. $\Completed$
            warnings.append(CUR[0] + f': unknown command \\{lab} in a formula, set upright')
            return ['math-up', lab]
    if lab == 'with' and len(x) == 4 and x[2] == 'rm' and (
            x[1] == 'math-font-family' or (in_math and x[1] == 'font-family')):
        t = roman_text(x[3])
        if t is not None:
            return t
    m = in_math or lab in ('math', 'equation*', 'equation', 'align', 'align*', 'eqnarray*')
    if lab in ('verbatim', 'lean-code', 'shell-code', 'verbatim-code', 'hlink', 'label') and lab != 'hlink':
        return x
    kids = []
    for i, y in enumerate(x[1:]):
        if lab == 'hlink' and i == 1:
            kids.append(y)
            continue
        r = rewrite(y, m)
        if r is None:
            continue
        if lab == 'concat' and is_node(r, 'concat'):
            kids.extend(r[1:])
        else:
            kids.append(r)
    if lab == 'concat':
        kids = [k for k in kids if k != '']
        if not kids:
            return ''
        if len(kids) == 1:
            return kids[0]
    if lab == 'document' and not kids:
        kids = ['']
    if lab == 'table':
        kids = [r for r in kids if not all(c == ['cell', ''] for c in r[1:])] or kids
    return [lab] + kids


HEAD_MAP = {'subsection': 'section', 'subsubsection': 'subsection',
            'paragraph': 'subsubsection', 'subparagraph': 'paragraph',
            'md-h6': 'subparagraph'}


def split_label(title):
    """'Title <label|x>' -> (title, [labels])"""
    if is_node(title, 'concat'):
        labels = [k for k in title[1:] if is_node(k, 'label')]
        rest = [k for k in title[1:] if not is_node(k, 'label')]
        if rest and isinstance(rest[-1], str):
            rest[-1] = rest[-1].rstrip()
        return concat(*rest), labels
    return title, []


def src_text(x):
    return x if isinstance(x, str) else stree.text_of(x)


def details(doc):
    """<details><summary>S</summary> ... </details> (raw HTML in the
    Markdown) is imported as a paragraph S and an empty marker: group the
    paragraphs in between into <ym-details|S|...> (a <details> element in
    HTML). Markers inside lists etc. are left to rewrite()."""
    kids, stack = [], []
    for p in doc[1:]:
        if is_node(p, 'md-block-source') and src_text(p[2]).startswith('<less>details'):
            summary = p[1]
            if isinstance(summary, str):
                summary = summary.strip()
            stack.append((summary, kids))
            kids = []
        elif is_node(p, 'md-block-source') and src_text(p[2]).startswith('<less>/details') and stack:
            summary, outer = stack.pop()
            outer.append(['ym-details', summary, ['document'] + (kids or [''])])
            kids = outer
        else:
            kids.append(p)
    while stack:                                # unclosed: keep the paragraphs
        summary, outer = stack.pop()
        kids = outer + [['strong', summary]] + kids
    doc[1:] = kids


def headings(doc):
    """retag headings; returns the page title (first #)"""
    title = None
    kids = []
    for p in doc[1:]:
        head = p[1] if is_node(p, 'concat') and len(p) == 2 else p
        if is_node(head, 'section', 'subsection', 'subsubsection', 'paragraph',
                   'subparagraph', 'md-h6'):
            t, labels = split_label(head[1])
            if head[0] == 'section':
                if title is None:
                    title = t
                kids.append(concat(['ym-title', t], *labels))
            else:
                kids.append(concat([HEAD_MAP[head[0]], t], *labels))
        else:
            kids.append(p)
    doc[1:] = kids
    return title


FUNCS = {'log', 'exp', 'min', 'max', 'sup', 'inf', 'det', 'dim', 'ker', 'deg', 'lim',
         'sin', 'cos', 'tan', 'sinh', 'cosh', 'ln', 'Pr', 'tr', 'arg', 'mod', 'limsup', 'liminf'}


def split_products(x):
    """Inside imported `aligned` blocks the LaTeX parser keeps letter runs
    such as `mU` or `QW` as one identifier (upright in MathJax); elsewhere
    it writes products m*U. Do the same here."""
    def fix(s):
        def word(m):
            w = m.group(0)
            return w if w in FUNCS else '*'.join(w)
        parts = re.split(r'(<[^<>]*>)', s)
        return ''.join(p if p.startswith('<') else
                       re.sub(r'(?<![A-Za-z])[A-Za-z]{2,}(?![A-Za-z])', word, p) for p in parts)
    if not isinstance(x, list) or x[0] in ('text', 'math-up', 'math-ss', 'math-tt', 'with',
                                           'verbatim', 'label', 'hlink'):
        return
    for i in range(1, len(x)):
        if isinstance(x[i], str):
            if x[0] not in ('cwith', 'twith', 'space', 'big', 'tformat'):
                x[i] = fix(x[i])
        else:
            split_products(x[i])


def aligned_marks(x):
    """Inside `aligned` the parser reads `d^*H` as d<rsup|<nosymbol>>*H (the
    star becomes a product) and `H'` as H*'. Restore <rsup|<ast>> and
    <rprime|'>."""
    if not isinstance(x, list):
        return x
    x = [x[0]] + [aligned_marks(k) for k in x[1:]]
    kids = x[1:] if x[0] == 'concat' else None
    if kids is None:
        if all(isinstance(k, list) or "'" not in k for k in x[1:]) or x[0] in ('cwith', 'twith'):
            return x
        return [x[0]] + [primes(k) if isinstance(k, str) else k for k in x[1:]]
    out = []
    for i, k in enumerate(kids):
        if isinstance(k, str):
            if out and out[-1] == ['rsup', '<ast>'] and k[:1] in ('*', ' '):
                k = k[1:]
            k = primes(k)
        elif k == ['rsup', '<nosymbol>']:
            k = ['rsup', '<ast>']
        out.append(k)
    return concat(*out) if out else ''


def primes(s):
    if "'" not in s:
        return s
    parts = re.split(r"\*?\s*'", s)
    out = [parts[0]]
    for p in parts[1:]:
        out += [['rprime', "'"], p]
    return concat(*out)


def aligned_products(x):
    if isinstance(x, list):
        if x[0] == 'aligned':
            x[1:] = aligned_marks(x)[1:]
            split_products(x)
        else:
            for y in x[1:]:
                aligned_products(y)


def tables(x):
    """rule below the header row of every table"""
    if not isinstance(x, list) or x[0] in ('math', 'equation*', 'equation', 'aligned'):
        return
    if x[0] == 'tformat' and is_node(x[-1], 'table') and len(x[-1]) > 2:
        x[-1:-1] = [['cwith', '1', '1', '1', '-1', 'cell-bborder', '1ln'],
                    ['cwith', '1', '1', '1', '-1', 'cell-valign', 'bottom']]
    for y in x[1:]:
        tables(y)


# --- navigation -----------------------------------------------------------

def rel(frm, to):
    r = os.path.relpath(to, os.path.dirname(frm) or '.')
    return r


NAV = [('index.tm', 'Home'), ('statement.tm', 'The theorem'),
       ('summary.tm', 'The proof in one reading'), ('outline/index.tm', 'Architecture'),
       ('outline/units.tm', 'Units'), ('glossary.tm', 'Glossary'), ('faq.tm', 'FAQ'),
       ('outline/work-items.tm', 'Work items'), ('data/index.tm', 'Data'),
       ('method.tm', 'Method'), ('provenance.tm', 'Provenance'), ('CHANGELOG.tm', 'Changes')]


def nav_bar(page):
    items = []
    for f, name in NAV:
        if f not in pages:
            continue
        if f == page:
            items.append(['ym-nav-here', cork(name)])
        else:
            items.append(['hlink', cork(name), rel(page, f)])
    return ['ym-nav'] + [concat(*sum([[i, ['ym-nav-sep']] for i in items], [])[:-1])]


def part_anchor(part):
    heads = pages.get('outline/units.tm', {}).get('headings', [])
    for lvl, slug in heads:
        if slug.startswith('part-' + part.lower() + '-'):
            return slug
    return None


def unit_bar(page):
    """previous / part and companion page / next, on unit outlines
    (outline/units/X.tm) and on detailed notes (outline/notes/X.tm), both in
    the order of data/units.tsv"""
    kind = 'file' if page.startswith('outline/units/') else 'notes'
    seq = [u for u in units if u.get(kind)]
    idx = [i for i, u in enumerate(seq) if u[kind] == page]
    if not idx:
        return None
    i = idx[0]
    u = seq[i]
    suffix = '' if kind == 'file' else ' (notes)'
    left = right = ''
    if i > 0:
        p = seq[i - 1]
        left = ['hlink', cork('\u2190 ' + p['unit'] + ' ' + p['title'] + suffix), rel(page, p[kind])]
    if i + 1 < len(seq):
        n = seq[i + 1]
        right = ['hlink', cork(n['unit'] + ' ' + n['title'] + suffix + ' \u2192'), rel(page, n[kind])]
    anchor = part_anchor(u['part'])
    target = rel(page, 'outline/units.tm') + ('#' + anchor if anchor else '')
    mid = [['hlink', cork('Part ' + u['part']), target]]
    other = u.get('notes') if kind == 'file' else u.get('file')
    if other:
        mid += [['ym-nav-sep'],
                ['hlink', cork('Detailed notes' if kind == 'file' else 'Unit outline'),
                 rel(page, other)]]
    return ['ym-unit-nav', left, concat(*mid), right]


# --- main -----------------------------------------------------------------

def process(page, meta):
    CUR[0] = page
    t = stree.load(os.path.join(RAW, flat(page)))
    # (document (body (document ...)) (style "markdown") ...)
    body = None
    for k in t[1:]:
        if is_node(k, 'body'):
            body = k
    doc = body[1]
    details(doc)
    doc = rewrite(doc)
    title = headings(doc)
    tables(doc)
    aligned_products(doc)
    top = [nav_bar(page)]
    ub = unit_bar(page)
    if ub:
        top.append(ub)
    rest = doc[1:]
    # page title first, then a table of contents on long pages
    first = []
    if rest and is_node(rest[0]) and (is_node(rest[0], 'ym-title') or
                                     (is_node(rest[0], 'concat') and is_node(rest[0][1], 'ym-title'))):
        first, rest = [rest[0]], rest[1:]
    nsec = sum(1 for p in rest if is_node(p, 'section') or
               (is_node(p, 'concat') and is_node(p[1], 'section')))
    toc = []
    if nsec >= 4:
        toc = [['table-of-contents', 'toc', ['document', '']]]
    bottom = [ub] if ub else []
    doc[1:] = top + first + toc + rest + bottom
    # the package is copied next to the documents of every folder (a
    # relative path such as ../../ym-outline is not resolved by TeXmacs)
    style = 'ym-outline'
    htitle = stree.text_of(title) if title is not None else meta['title']
    htitle = re.sub(r'<[^<>]*>', '', htitle)
    tree = ['document',
            ['TeXmacs', '2.1.5'],
            ['style', ['tuple', 'generic', 'british', style]],
            ['body', doc],
            ['initial', ['collection',
                         ['associate', 'html-title', htitle + ' \x15 Yang' + '\x15' + 'Mills informalization']]]]
    stree.dump(tree, os.path.join(OUT, flat(page)))


# optional 4th argument: a file listing the pages to process (default: all)
only = set(open(sys.argv[4]).read().split()) if len(sys.argv) > 4 else None
os.makedirs(OUT, exist_ok=True)
done = 0
for page, meta in pages.items():
    if only is None or page in only:
        process(page, meta)
        done += 1
for w in warnings:
    print('post: warning:', w)
print(f'post: {done} documents')

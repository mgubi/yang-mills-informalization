#!/usr/bin/env python3
"""Rewrite the imported LaTeX manuscript into a native TeXmacs document.

    tex_post.py PAGES_JSON TEXDIR RAW.scm OUT.scm PAGE

RAW.scm is the stree of the TeXmacs import of TEXDIR/main.tex (written by
tex_prep.py); OUT.scm is the document PAGE (manuscript/main.tm) as an stree.

  * style <tuple|article|number-long-article|british|ym-outline|ym-manuscript>
    (ym-manuscript.ts: numbering of main.tex, Theorem A/B, the site's
    navigation through ym-outline);
  * preamble: the macros of macros.tex as imported (user macros, kept as
    macros), with \\DeclareMathOperator names upright and bare brackets in
    macro bodies made into around; the theorem declarations of main.tex
    are dropped (ym-manuscript.ts defines them);
  * markers of tex_prep.py -> <ym-letter-sections>, <ym-theorems-by-subsection>;
  * title from \\title (the importer loses it), empty abstract dropped;
  * table column widths p{x\\textwidth} (mis-parsed by the importer) set as
    exact widths, header rule;
  * \\bibliography: a TeXmacs bibliography with a TeXmacs bibliography
    style (no BibTeX program needed);
  * <le>, <ge>, <leq>, <geq> -> <leqslant>, <geqslant> (house convention);
  * the navigation bar of the site on top.
"""
import json, os, re, sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import stree
import post

PAGES_JSON, TEXDIR, RAW, OUT, PAGE = sys.argv[1:6]
post.load(PAGES_JSON)
meta = json.load(open(os.path.join(TEXDIR, 'meta.json'), encoding='utf-8'))
warnings = []

SYMS = {'<le>': '<leqslant>', '<ge>': '<geqslant>', '<leq>': '<leqslant>', '<geq>': '<geqslant>'}
SYM_RE = re.compile('|'.join(re.escape(k) for k in SYMS))
MARKERS = {'tmsectionsAlph': 'ym-letter-sections',
           'tmtheoremsbysubsection': 'ym-theorems-by-subsection'}
# BibTeX styles -> the TeXmacs implementations (no bibtex binary in CI)
# (TeXmacs ships tm-plain, tm-abbrv, tm-alpha, tm-unsrt, tm-acm, tm-ieeetr,
# tm-siam, tm-elsart-num, tm-abstract; no AMS style: amsplain, numeric and
# sorted by author, is closest to tm-plain, amsalpha to tm-alpha)
BIBSTYLES = {'plain': 'tm-plain', 'abbrv': 'tm-abbrv', 'alpha': 'tm-alpha', 'unsrt': 'tm-unsrt',
             'acm': 'tm-acm', 'ieeetr': 'tm-ieeetr', 'siam': 'tm-siam',
             'amsplain': 'tm-plain', 'amsalpha': 'tm-alpha'}


def is_node(x, *labels):
    return isinstance(x, list) and (not labels or x[0] in labels)


def strings(x, f):
    if isinstance(x, str):
        return f(x)
    if x[0] in ('verbatim', 'label', 'reference', 'eqref', 'hlink', 'slink', 'cite'):
        return x
    return [x[0]] + [strings(k, f) for k in x[1:]]


def pair_brackets(x):
    """'...(' X ')...' inside a concat -> <around|(|X|)> (macro bodies such
    as m_{ref}(#1), k^{(#1)}, which the importer leaves bare)"""
    if not isinstance(x, list):
        return x
    x = [x[0]] + [pair_brackets(k) for k in x[1:]]
    if x[0] != 'concat':
        return x
    kids = x[1:]
    for i, k in enumerate(kids):
        if isinstance(k, str) and k.endswith('('):
            for j in range(i + 1, len(kids)):
                if isinstance(kids[j], str) and kids[j].startswith(')'):
                    inner = kids[i + 1:j]
                    body = inner[0] if len(inner) == 1 else ['concat'] + inner
                    new = kids[:i] + ([k[:-1]] if k[:-1] else []) + [['around', '(', body, ')']] + \
                        ([kids[j][1:]] if kids[j][1:] else []) + kids[j + 1:]
                    return pair_brackets(['concat'] + new) if len(new) > 1 else new[0]
    return x


def preamble(doc):
    """the hide-preamble: keep the macros of macros.tex, drop theorem setup"""
    for p in doc[1:]:
        if is_node(p, 'hide-preamble'):
            kept = []
            for a in p[1][1:]:
                if is_node(a, 'new-theorem'):
                    continue                    # ym-manuscript.ts
                if is_node(a, 'assign') and a[1] in ('themaintheorem', 'principalname'):
                    continue
                if is_node(a, 'assign') and isinstance(a[1], str) and a[1].startswith('tmrename'):
                    a[1] = a[1][len('tmrename'):]
                if is_node(a, 'assign') and is_node(a[2], 'macro'):
                    body = a[2][-1]
                    # \DeclareMathOperator{\tr}{tr} is imported as <macro|tr>
                    if isinstance(body, str) and re.match(r'^[A-Za-z]+$', body) and \
                            re.search(r'\\DeclareMathOperator\*?\{\\' + re.escape(a[1]) + r'\}',
                                      meta['preamble']):
                        a[2][-1] = ['math-up', body]
                    else:
                        a[2][-1] = pair_brackets(body)
                kept.append(a)
            p[1][1:] = kept or ['']


def tables(x):
    """p{0.24\\textwidth} columns: the importer writes one garbled
    cell-width; set each column's exact width as a fraction of the line"""
    if not isinstance(x, list):
        return
    if x[0] == 'tformat':
        bad = [k for k in x[1:] if is_node(k, 'cwith') and k[5] == 'cell-width' and 'tex-text-width' in k[6]]
        if bad:
            widths = re.findall(r'([0-9.]+)tex-text-width', bad[0][6])
            keep = [k for k in x[1:-1] if not (is_node(k, 'cwith') and k[3] == '1' and k[4] == '1'
                                                and k[5] in ('cell-width', 'cell-hmode', 'cell-hyphen'))]
            new = [['twith', 'table-width', '1par'], ['twith', 'table-hmode', 'exact']]
            for i, w in enumerate(widths, 1):
                c = str(i)
                new += [['cwith', '1', '-1', c, c, 'cell-width', f'{w}par'],
                        ['cwith', '1', '-1', c, c, 'cell-hmode', 'exact'],
                        ['cwith', '1', '-1', c, c, 'cell-hyphen', 't']]
            x[1:-1] = keep + new
    for k in x[1:]:
        tables(k)


def strip_eqnum(x):
    if isinstance(x, list):
        x[1:] = [strip_eqnum(k) for k in x[1:] if k != ['eq-number']]
        if x[0] == 'concat' and len(x) == 2:
            return x[1]
        if x[0] == 'concat' and len(x) == 1:
            return ''
    return x


def has_eqnum(x):
    return isinstance(x, list) and (x == ['eq-number'] or any(has_eqnum(k) for k in x[1:]))


def display_numbers(doc):
    """numbers of the rows of align/multline/... as in the LaTeX source
    (meta['displays'] from tex_prep.py, in document order)"""
    expected = list(meta.get('displays', []))
    found = []

    def walk(x):
        if isinstance(x, list):
            if x[0] in ('align', 'multline', 'gather', 'eqnarray'):
                found.append(x)
            for k in x[1:]:
                walk(k)
    walk(doc)
    if len(found) != len(expected):
        raise SystemExit(f'tex_post: {len(found)} numbered displays in the import, '
                         f'{len(expected)} in the LaTeX source')
    for node, exp in zip(found, expected):
        tables_ = []

        def rows(x):
            if isinstance(x, list):
                if x[0] == 'table':
                    tables_.append(x)
                    return
                for k in x[1:]:
                    rows(k)
        rows(node)
        table = tables_[0]
        rs = [r for r in table[1:] if is_node(r, 'row')]
        if len(rs) != len(exp['numbered']):
            raise SystemExit(f'tex_post: {exp["env"]} with {len(rs)} rows, '
                             f'{len(exp["numbered"])} in the LaTeX source')
        for r, numbered in zip(rs, exp['numbered']):
            if not numbered and has_eqnum(r):
                r[1:] = [strip_eqnum(c) for c in r[1:]]
            elif numbered and not has_eqnum(r):
                last = r[-1]
                body = last[1]
                last[1] = ['concat'] + (body[1:] if is_node(body, 'concat') else [body]) + [['eq-number']]


OPERATOR_MACROS = set()   # user macros that expand to an operator name


def operator_macros(doc):
    for p in doc[1:]:
        if is_node(p, 'hide-preamble'):
            for a in p[1][1:]:
                if is_node(a, 'assign') and is_node(a[2], 'macro'):
                    b = a[2][-1]
                    if is_node(b, 'concat'):
                        b = b[1]
                    if is_node(b, 'math-up'):
                        OPERATOR_MACROS.add(a[1])


def is_op(x):
    return is_node(x, 'math-up') or (is_node(x) and len(x) == 1 and x[0] in OPERATOR_MACROS)


def operator_spacing(x, in_math=False):
    """\\operatorname{Re}\\tr u: LaTeX puts a thin space after an operator
    name followed by another operator or an ordinary symbol; TeXmacs and the
    MathJax export (\\text{Re}\\text{tr}u) do not. Insert <space|0.17em>."""
    if not isinstance(x, list):
        return x
    m = in_math or x[0] in ('math', 'equation', 'equation*', 'align', 'align*', 'gather',
                            'gather*', 'multline', 'multline*', 'eqnarray', 'eqnarray*')
    if x[0] in ('text', 'verbatim', 'label', 'reference', 'hlink', 'slink'):
        return x
    x = [x[0]] + [operator_spacing(k, m) for k in x[1:]]
    if x[0] != 'concat' or not m:
        return x
    kids = x[1:]
    space_after = set()
    for i, k in enumerate(kids):
        if not is_op(k):
            continue
        j = i + 1
        while j < len(kids) and is_node(kids[j], 'rsub', 'rsup'):
            j += 1                      # scripts of the operator
        if j < len(kids):
            nxt = kids[j]
            ordinary = is_op(nxt) or (
                isinstance(nxt, str)
                and re.match(r'^([A-Za-z0-9]|<[a-zA-Z-]+>)', nxt)
                and not re.match(r'^<(less|gtr|leqslant|geqslant|in|nin|to|cdot|ldots|cdots|mapsto|'
                                 r'subset|subseteq|ne|neq|assign|times|circ|equiv|sim|longrightarrow|rightarrow)>', nxt))
            if ordinary:
                space_after.add(j - 1)
    out = []
    for i, k in enumerate(kids):
        out.append(k)
        if i in space_after:
            out.append(['space', '0.17em'])
    return ['concat'] + out


THEOREMS = ('theorem', 'proposition', 'lemma', 'corollary', 'definition', 'remark',
            'maintheorem')


def first_par(env):
    """the first paragraph node of an environment body, and its holder"""
    body = env[1]
    if is_node(body, 'document'):
        return body, 1
    return env, 1


def titles(x):
    """<tmdueto|T> at the start of a theorem -> <dueto|T>; a proof starting
    with <tmproofof|T> -> <render-proof|T|body>"""
    if not isinstance(x, list):
        return x
    x = [x[0]] + [titles(k) for k in x[1:]]
    if x[0] in THEOREMS + ('proof',) and len(x) == 2:
        holder, k = first_par(x)
        par = holder[k]
        head = par[1] if is_node(par, 'concat') else par
        if is_node(head, 'tmdueto', 'tmproofof'):
            items = list(par[2:]) if is_node(par, 'concat') else []
            if items and isinstance(items[0], str):
                items[0] = items[0].lstrip()
                if not items[0]:
                    items = items[1:]
            if head[0] == 'tmdueto':
                holder[k] = ['concat', ['dueto', head[1]]] + items
            else:
                holder[k] = items[0] if len(items) == 1 else (['concat'] + items if items else '')
                if holder[k] == '' and is_node(holder, 'document') and len(holder) > 2:
                    del holder[k]               # the title was the whole first line
                return ['render-proof', head[1], x[1]]
    return x


def rewrite(x):
    """markers, renamed macros, bibliography, <le> etc."""
    if isinstance(x, list) and x[0].startswith('tmrename'):
        x = [x[0][len('tmrename'):]] + x[1:]
    if isinstance(x, str):
        return SYM_RE.sub(lambda m: SYMS[m.group(0)], x)
    if len(x) == 1 and x[0] in MARKERS:
        return [MARKERS[x[0]]]
    if x[0] == 'bibliography' and len(x) >= 4:
        style = x[2] if isinstance(x[2], str) else ''
        x = list(x)
        if style not in BIBSTYLES and not style.startswith('tm-'):
            raise SystemExit(f'tex_post: no TeXmacs bibliography style for \\bibliographystyle{{{style}}}; '
                             'add it to BIBSTYLES')
        x[2] = BIBSTYLES.get(style, style)
    if x[0] in ('verbatim', 'label', 'reference', 'eqref', 'hlink', 'slink', 'cite'):
        return x
    return [x[0]] + [rewrite(k) for k in x[1:]]


def main():
    t = stree.load(RAW)
    body = [k for k in t[1:] if is_node(k, 'body')][0]
    doc = body[1]
    preamble(doc)
    kids = []
    for p in doc[1:]:
        if is_node(p, 'doc-data'):
            if not any(is_node(k, 'doc-title') for k in p[1:]) and meta.get('title'):
                p.insert(1, ['doc-title', post.cork(meta['title'])])
        if is_node(p, 'abstract-data') and stree.text_of(p).strip() == '':
            continue
        kids.append(p)
    doc[1:] = kids
    doc = rewrite(doc)
    doc = titles(doc)
    operator_macros(doc)
    doc = operator_spacing(doc)
    display_numbers(doc)
    tables(doc)
    doc[1:2] = [doc[1], post.nav_bar(PAGE)] if is_node(doc[1], 'hide-preamble') else [post.nav_bar(PAGE), doc[1]]
    title = meta.get('title') or 'Manuscript'
    tree = ['document', ['TeXmacs', '2.1.5'],
            ['style', ['tuple', 'article', 'number-long-article', 'british', 'ym-outline', 'ym-manuscript']],
            ['body', doc],
            ['initial', ['collection',
                         ['associate', 'html-title',
                          post.cork(title) + ' \x15 Yang\x15Mills informalization']]]]
    stree.dump(tree, OUT)
    for w in warnings:
        print('tex_post: warning:', w)
    print('tex_post: 1 document')


main()

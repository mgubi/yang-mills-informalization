#!/usr/bin/env python3
"""Prepare the LaTeX manuscript for the TeXmacs import.

    tex_prep.py REPO OUTDIR

Reads REPO/manuscript/main.tex and every file it \\inputs (never modifies
them) and writes OUTDIR/main.tex: one flat LaTeX file in which the
constructions the LaTeX importer of TeXmacs does not understand are
replaced, uniformly, by plain LaTeX or by marker commands (\\tmXXX, no
arguments) that tex_post.py turns into native TeXmacs. Also writes
OUTDIR/inputs.txt, the files read (for the incremental build), and
OUTDIR/references.bib if the manuscript has one.

Patches:
  * \\input{f}: inlined (recursively);
  * \\today: the date of the last commit touching manuscript/ (so that the
    output does not change from day to day);
  * Part II numbering (\\setcounter{section}{0}, \\renewcommand{\\thesection}
    {\\Alph{section}}, the \\makeatletter block that resets theorems per
    subsection): markers \\tmsectionsAlph and \\tmtheoremsbysubsection;
  * \\setcounter{maintheorem}{N}: marker \\tmsetmaintheorem{N};
  * \\equationalias{X} after a display: \\label{X} inside it;
  * "[" after whitespace following \\begin{aligned}/{gathered}: \\lbrack
    (text, not the optional position argument);
  * longtable: a table float with a tabular (repeated headers dropped);
    displayed formulas in its cells become inline displays, one per line;
    \\begingroup, \\endgroup, \\setlength, \\raggedright dropped;
  * pagination-only commands (samepage, \\pagebreak, \\nopagebreak,
    \\clearpage, \\newpage, \\needspace, \\displaybreak, ...): dropped;
  * list options ([label=...], [leftmargin=...]): dropped (the importer
    drops the whole list otherwise); \\item[x.] keeps its label;
  * optional titles of theorem-like environments and proofs: markers
    \\tmdueto{...} and \\tmproofof{...} (the importer keeps "[...]" as text);
  * \\textup{...} -> its argument; \\operatorname*{x} -> \\operatorname{x}
    (the importer reads the star as a factor; limits are then set beside);
  * user macros whose name begins with \\path, \\verb, \\url or \\href
    (e.g. \\pathaction, read by the importer as \\path + verbatim): renamed
    \\tmrenameNAME, renamed back by tex_post.py.
Anything left in a \\makeatletter block that is not recognised stops the
build: an unknown change of numbering must not pass silently.
"""
import json, os, re, subprocess, sys

REPO, OUT = sys.argv[1], sys.argv[2]
MS = os.path.join(REPO, 'manuscript')
inputs = []


def read(rel):
    path = os.path.join(MS, rel if rel.endswith('.tex') else rel + '.tex')
    inputs.append(os.path.relpath(path, REPO))
    s = open(path, encoding='utf-8').read()
    # drop comments (but not \%)
    s = re.sub(r'(?<!\\)%.*', '', s)
    return re.sub(r'\\input\{([^}]*)\}', lambda m: read(m.group(1)), s)


def commit_date():
    try:
        out = subprocess.check_output(
            ['git', '-C', REPO, 'log', '-1', '--format=%cd', '--date=format:%B %d, %Y',
             '--', 'manuscript'], text=True).strip()
        if out:
            return re.sub(r' 0(\d),', r' \1,', out)
    except Exception:
        pass
    return 'undated'


def balanced(s, i):
    """s[i] == '{': index after the matching '}'"""
    depth = 0
    for j in range(i, len(s)):
        if s[j] == '{' and s[j - 1] != '\\':
            depth += 1
        elif s[j] == '}' and s[j - 1] != '\\':
            depth -= 1
            if depth == 0:
                return j + 1
    raise SystemExit('tex_prep: unbalanced braces')


def strip_command(s, name):
    """\\name{x} -> x"""
    out, i = [], 0
    pat = re.compile(r'\\' + name + r'\s*\{')
    while True:
        m = pat.search(s, i)
        if not m:
            out.append(s[i:])
            return ''.join(out)
        j = balanced(s, m.end() - 1)
        out.append(s[i:m.start()])
        out.append(s[m.end():j - 1])
        i = j


def equation_alias(s):
    """\\equationalias{X} right after a display: X is one more label of the
    display's (last) number, i.e. a \\label{X} inside it. Anywhere else it
    stops the build."""
    s = re.sub(r'\\end\{(equation|align|gather|multline|eqnarray)(\*?)\}(\s*)\\equationalias\{([^{}]*)\}',
               lambda m: '\\label{%s}\\end{%s%s}%s' % (m.group(4), m.group(1), m.group(2), m.group(3)), s)
    rest = re.findall(r'\\equationalias\{[^{}]*\}', s)
    if rest:
        raise SystemExit('tex_prep: \\equationalias not right after a display: ' + ', '.join(rest))
    return s


def numbering(s):
    """Part II: lettered sections, theorems numbered per subsection"""
    def block(m):
        body = m.group(1)
        known = [r'\\@addtoreset\{theorem\}\{subsection\}',
                 r'\\renewcommand\{\\thetheorem\}\{\\ifnum\\value\{subsection\}=0 ?\\thesection\\else\\thesubsection\\fi\.\\arabic\{theorem\}\}',
                 r'\\renewcommand\{\\theH[a-z]+\}\{[^\n]*\}',
                 # \equationalias (handled by equation_alias)
                 r'\\providecommand\{\\equationalias\}\[1\]\{\\protected@write\\@auxout\{\}\{\\string\\newlabel\{#1\}[^\n]*\}']
        rest = body
        for k in known:
            rest = re.sub(k, '', rest)
        if rest.strip():
            raise SystemExit('tex_prep: unknown \\makeatletter block in main.tex:\n' + rest.strip())
        return r'\tmtheoremsbysubsection' if re.search(known[0], body) else ''
    s = re.sub(r'\\makeatletter(.*?)\\makeatother', block, s, flags=re.S)
    s = s.replace(r'\renewcommand{\thesection}{\Alph{section}}', r'\tmsectionsAlph')
    # \setcounter{maintheorem}{N} (Theorem B stated before Theorem A):
    # marker \tmsetmaintheorem{N}, an assignment of maintheorem-nr
    s = re.sub(r'\\setcounter\{maintheorem\}\{(\d+)\}', r'\\tmsetmaintheorem{\1}', s)
    check_numbering(s)
    return s


# The numbering ym-manuscript.ts implements. Anything else that changes
# numbers stops the build: wrong numbers must not be published silently.
THEOREMS = {                     # \newtheorem{env}[shared]{Name}[within]
    'maintheorem': ('', 'Theorem', ''), 'theorem': ('', 'Theorem', 'section'),
    'proposition': ('theorem', 'Proposition', ''), 'lemma': ('theorem', 'Lemma', ''),
    'corollary': ('theorem', 'Corollary', ''), 'definition': ('theorem', 'Definition', ''),
    'remark': ('theorem', 'Remark', ''), 'principal*': ('', r'\principalname', ''),
}
ALLOWED = [r'\\numberwithin\{equation\}\{section\}', r'\\setcounter\{tocdepth\}\{\d\}',
           r'\\setcounter\{section\}\{0\}',
           r'\\renewcommand\{\\themaintheorem\}\{\\Alph\{maintheorem\}\}']
NUMBERING = re.compile(r'\\(?:renewcommand\*?\{\\the[A-Za-z]+\}|setcounter|addtocounter|stepcounter|'
                       r'numberwithin|counterwithin\*?|counterwithout\*?|@addtoreset|appendix\b|'
                       r'newtheorem\*?|newcounter|swapnumbers)[^\n]*')


def check_numbering(s):
    errors = []
    for m in re.finditer(r'\\newtheorem(\*?)\{([^}]*)\}(?:\[([^\]]*)\])?\{((?:[^{}]|\{[^{}]*\})*)\}(?:\[([^\]]*)\])?', s):
        star, env, shared, name, within = m.groups()
        if THEOREMS.get(env + star) != (shared or '', name, within or ''):
            errors.append(m.group(0))
    for m in NUMBERING.finditer(s):
        line = m.group(0)
        if line.startswith('\\newtheorem') or any(re.match(a, line) for a in ALLOWED):
            continue
        errors.append(line)
    if errors:
        raise SystemExit('tex_prep: numbering of main.tex not recognised (adapt ym-manuscript.ts '
                         'and tex_prep.py):\n  ' + '\n  '.join(errors))


# Pagination only (an HTML page has no page breaks). The importer keeps
# \begin{samepage} as an undefined block, whose whole content (statements,
# labels) the HTML export then drops.
PAGINATION = [r'\\begin\{samepage\}', r'\\end\{samepage\}',
              r'\\(?:no)?pagebreak(?:\[[0-4]\])?', r'\\(?:no)?linebreak(?:\[[0-4]\])?',
              r'\\clearpage\b', r'\\cleardoublepage\b', r'\\newpage\b',
              r'\\[Nn]eedspace\*?\{[^{}]*\}', r'\\enlargethispage\*?\{[^{}]*\}',
              r'\\allowdisplaybreaks(?:\[[0-4]\])?', r'\\displaybreak(?:\[[0-4]\])?',
              r'\\(?:small|med|big)break\b', r'\\filbreak\b', r'\\goodbreak\b',
              # multiple columns (an HTML page has one; multicols itself
              # is treated as a group in pagination())
              r'\\raggedcolumns\b', r'\\columnbreak\b', r'\\interlinepenalty\s*=?\s*-?\d+']


def groups(s):
    r"""multicols is treated as a group. The importer ignores
    \begingroup/\endgroup, so a font size set inside one would run to the end
    of the document (and swallow the bibliography): sizes and paragraph
    spacing inside a group are dropped with the group (an HTML page keeps its
    own sizes)."""
    body_start = s.find(r'\begin{document}')
    pre, body = (s[:body_start], s[body_start:]) if body_start >= 0 else ('', s)
    body = re.sub(r'\\begin\{multicols\*?\}\{\d+\}', r'\\begingroup ', body)
    body = re.sub(r'\\end\{multicols\*?\}', r'\\endgroup ', body)
    def group(m):
        g = re.sub(r'\\(?:tiny|scriptsize|footnotesize|small|normalsize|large|Large)\b\s*', '', m.group(1))
        g = re.sub(r'\\setlength\{?\\(?:parindent|parskip|itemsep|columnsep)\}?\{[^{}]*\}\s*', '', g)
        return g
    body = re.sub(r'\\begingroup\b(.*?)\\endgroup\b', group, body, flags=re.S)
    if re.search(r'\\(?:begingroup|endgroup)\b', body):
        raise SystemExit('tex_prep: nested or unbalanced \\begingroup/\\endgroup')
    return pre + body


def pagination(s):
    body_start = s.find(r'\begin{document}')
    pre, body = (s[:body_start], s[body_start:]) if body_start >= 0 else ('', s)
    for p in PAGINATION:
        body = re.sub(p, '', body)
    return pre + body


def labels(s):
    """every \\label of the document body, in order"""
    body = s[s.find(r'\begin{document}'):]
    return re.findall(r'\\(?:label|tmitemlabel)\{([^{}]*)\}', body)


def longtables(s):
    def table(m):
        spec, body = m.group(1), m.group(2)
        spec = spec.replace('@{}', '')
        cap = ''
        c = re.search(r'\\caption\{', body)
        if c:
            j = balanced(body, c.end() - 1)
            cap = body[c.start():j]
            lab = re.match(r'\s*\\label\{[^}]*\}', body[j:])
            if lab:
                cap += lab.group(0).strip()
                j += lab.end()
            body = body[:c.start()] + body[j:]
            body = re.sub(r'^\s*\\\\', '', body)
        if r'\endfirsthead' in body:
            head, rest = body.split(r'\endfirsthead', 1)
            rest = rest.split(r'\endfoot', 1)[1] if r'\endfoot' in rest else rest.split(r'\endhead', 1)[-1]
            body = head + rest
        body = re.sub(r'\\\\\[[^\]]*\]', r'\\\\', body)
        # displays inside p{} cells break the importer (the cell is split
        # and the formula leaves math mode): one inline display per row
        def inline(d):
            rows = [r.strip() for r in re.split(r'\\\\(?:\[[^\]]*\])?', d.group(2)) if r.strip()]
            return ''.join(r'\newline $\displaystyle ' + r.replace('&', '') + '$' for r in rows) + r'\newline '
        body = re.sub(r'\\begin\{(gather\*|align\*|equation\*|multline\*)\}(.*?)\\end\{\1\}', inline, body, flags=re.S)
        return ('\\begin{table}[h]\n' + cap + '\n\\begin{tabular}{' + spec + '}' + body +
                '\\end{tabular}\n\\end{table}')
    s = re.sub(r'\\begin\{longtable\}\{((?:[^{}]|\{[^{}]*\{[^{}]*\}[^{}]*\}|\{[^{}]*\})*)\}(.*?)\\end\{longtable\}',
               table, s, flags=re.S)
    for cmd in (r'\begingroup', r'\endgroup', r'\raggedright'):
        s = s.replace(cmd, '')
    s = re.sub(r'\\setlength\{\\tabcolsep\}\{[^}]*\}', '', s)
    return s


# LaTeX commands the importer treats specially when they begin a longer
# control word (\pathaction is read as \path + verbatim argument)
PREFIXES = ('path', 'verb', 'url', 'href')


def rename_macros(s):
    """user macros that begin with such a command get the prefix tmrename,
    removed again by tex_post.py"""
    names = set(re.findall(r'\\(?:newcommand|renewcommand|DeclareMathOperator\*?)\{\\([A-Za-z]+)\}', s))
    for n in sorted(names):
        if n.startswith(PREFIXES) and n not in PREFIXES:
            s = re.sub(r'\\' + n + r'(?![A-Za-z])', lambda m: '\\tmrename' + n, s)
    return s


def display_rows(s):
    """for every numbered multi-line display (align, multline, gather,
    eqnarray; starred forms excepted), in order: which rows carry a number.
    The importer numbers every row of an align, \\notag rows included, and
    every row of a multline; tex_post.py corrects that."""
    out = []
    for m in re.finditer(r'\\begin\{(align|multline|gather|eqnarray)\}(.*?)\\end\{\1\}', s, re.S):
        env, body = m.group(1), m.group(2)
        # split rows at \\ outside braces and inner environments
        rows, depth, env_depth, cur, i = [], 0, 0, [], 0
        while i < len(body):
            if body.startswith('\\begin{', i):
                env_depth += 1
            elif body.startswith('\\end{', i):
                env_depth -= 1
            c = body[i]
            if c == '{':
                depth += 1
            elif c == '}':
                depth -= 1
            if body.startswith('\\\\', i) and depth == 0 and env_depth == 0:
                rows.append(''.join(cur)); cur = []; i += 2
                continue
            cur.append(c); i += 1
        if ''.join(cur).strip():
            rows.append(''.join(cur))
        if env == 'multline':
            nums = [False] * (len(rows) - 1) + [True]
        else:
            nums = [not re.search(r'\\(notag|nonumber)\b', r) for r in rows]
        out.append({'env': env, 'numbered': nums})
    return out


ENVS = ('theorem', 'proposition', 'lemma', 'corollary', 'definition', 'remark',
        'maintheorem', 'principal', 'proof')


def titles(s):
    """\\begin{lemma}[Title] -> \\begin{lemma}\\tmdueto{Title} (the importer
    keeps "[Title]" as text); \\begin{proof}[Title] -> \\tmproofof{Title}"""
    out, i = [], 0
    pat = re.compile(r'\\begin\{(' + '|'.join(ENVS) + r')\}\s*\[')
    while True:
        m = pat.search(s, i)
        if not m:
            out.append(s[i:])
            return ''.join(out)
        j, depth = m.end(), 0
        while True:                      # the matching ] outside braces
            c = s[j]
            if c == '{':
                depth += 1
            elif c == '}':
                depth -= 1
            elif c == ']' and depth == 0:
                break
            j += 1
        marker = 'tmproofof' if m.group(1) == 'proof' else 'tmdueto'
        out.append(s[i:m.start()] + '\\begin{' + m.group(1) + '}\\' + marker + '{' + s[m.end():j] + '}')
        i = j + 1


def latex_text(t):
    t = re.sub(r'\\[a-zA-Z]+\s*', '', t).replace('{', '').replace('}', '')
    return t.replace('---', '\u2014').replace('--', '\u2013').replace('~', ' ').strip()



# TikZ pictures: rendered to SVG by figures.py (standalone LaTeX + dvisvgm),
# included as images. The importer cannot read them (latex_preview).
FIG_PACKAGES = r"""\documentclass[11pt,dvisvgm]{standalone}
\usepackage{amsmath,amssymb,mathtools}
\usepackage{xcolor}
\usepackage{tikz}
"""


def definitions(pre):
    r"""macro definitions of the preamble (\newcommand, \DeclareMathOperator,
    ... with balanced braces), \usetikzlibrary and \definecolor: what a
    figure may use. Counter formats (\renewcommand{\the...}) are left out."""
    out = []
    for m in re.finditer(r'\\(?:(?:re|provide)?newcommand\*?|DeclareMathOperator\*?|usetikzlibrary|definecolor|tikzset)(?![A-Za-z])', pre):
        i = m.end()
        # arguments: {..} and [..] groups, balanced
        while True:
            while i < len(pre) and pre[i] in ' \t':
                i += 1
            if i < len(pre) and pre[i] == '{':
                i = balanced(pre, i)
            elif i < len(pre) and pre[i] == '[':
                i = pre.index(']', i) + 1
            else:
                break
        d = pre[m.start():i]
        if not re.match(r'\\renewcommand\*?\{\\the', d):
            out.append(d)
    return '\n'.join(out)


def figures(s, pre):
    r"""\begin{tikzpicture}...\end{tikzpicture} -> \tmfigure{N}; the sources
    (standalone documents, \ref still unresolved) go to meta.json. A picture
    alone in a displayed formula becomes a centred block (an image cannot be
    part of a MathJax formula); one inside other mathematics stops the build."""
    head = FIG_PACKAGES + definitions(pre) + '\n\\begin{document}\n'
    figs = []

    def rep(m):
        figs.append(head + m.group(0) + '\n\\end{document}\n')
        return r'\tmfigure{%d}' % len(figs)
    s = re.sub(r'\\begin\{tikzpicture\}.*?\\end\{tikzpicture\}', rep, s, flags=re.S)
    s = re.sub(r'\\begin\{(equation\*?|displaymath)\}\s*(\\tmfigure\{\d+\})\s*\\end\{\1\}',
               r'\\begin{center}\2\\end{center}', s)
    s = re.sub(r'\\\[\s*(\\tmfigure\{\d+\})\s*\\\]', r'\\begin{center}\1\\end{center}', s)
    for m in re.finditer(r'\\tmfigure\{\d+\}', s):
        if in_math(s, m.start()):
            raise SystemExit('tex_prep: a TikZ picture inside a formula: ' + s[max(0, m.start() - 80):m.end()])
    return s, figs


def in_math(s, pos):
    r"""is pos inside $...$ or a display environment (rough: enough for the
    check of figures)"""
    before = s[:pos]
    if len(re.findall(r'(?<!\\)\$', before)) % 2:
        return True
    opens = [m for m in re.finditer(r'\\(begin|end)\{(equation|align|gather|multline|eqnarray|displaymath)\*?\}', before)]
    return bool(opens) and opens[-1].group(1) == 'begin'


def gathered(s):
    r"""\begin{equation}\label{X}\begin{gathered} rows \end{gathered}\end{equation}
    -> gather with the number (and the label) on the last row; same numbers
    as LaTeX, number beside the last row instead of centred. Any other use
    of gathered stops the build (the importer does not know it)."""
    def rep(m):
        env, star, label, body = m.group(1), m.group(2), m.group(3) or '', m.group(4)
        rows = re.split(r'\\\\', body.strip())
        rows = [r for r in rows if r.strip()]
        if star:
            return '\\begin{gather*}' + '\\\\'.join(rows) + '\\end{gather*}'
        return ('\\begin{gather}' + '\\\\'.join(r + '\\notag' for r in rows[:-1])
                + ('\\\\' if len(rows) > 1 else '') + rows[-1] + label + '\\end{gather}')
    s = re.sub(r'\\begin\{(equation)(\*?)\}\s*(\\label\{[^{}]*\})?\s*\\begin\{gathered\}(.*?)\\end\{gathered\}\s*\\end\{equation\2\}',
               rep, s, flags=re.S)
    if r'\begin{gathered}' in s:
        i = s.index(r'\begin{gathered}')
        raise SystemExit('tex_prep: gathered not alone in an equation: ' + s[max(0, i - 120):i + 40])
    return s


def contents_lines(s):
    r"""\section*{X}\addcontentsline{toc}{section}{X}: TeXmacs adds unnumbered
    sections to the table of contents by itself, drop the line; any other
    \addcontentsline stops the build"""
    s = re.sub(r'(\\(?:sub)*section\*\{[^{}]*\}(?:\s*\\label\{[^{}]*\})?)\s*\\addcontentsline\{toc\}\{(?:sub)*section\}\{[^{}]*\}',
               r'\1', s)
    m = re.search(r'\\addcontentsline\{[^\n]*', s)
    if m:
        raise SystemExit('tex_prep: \\addcontentsline not after a starred section: ' + m.group(0))
    return s


def bibliography_group(s):
    r"""{\small \bibliography{...}}: the importer attaches \bibliographystyle
    only to a bibliography outside a group"""
    return re.sub(r'\{\s*\\(?:small|footnotesize|scriptsize|normalsize)\s*(\\bibliography\{[^{}]*\})\s*\}', r'\1', s)



def roman(n, upper=False):
    out = ''
    for v, r in ((1000, 'm'), (900, 'cm'), (500, 'd'), (400, 'cd'), (100, 'c'), (90, 'xc'),
                 (50, 'l'), (40, 'xl'), (10, 'x'), (9, 'ix'), (5, 'v'), (4, 'iv'), (1, 'i')):
        while n >= v:
            out += r; n -= v
    return out.upper() if upper else out


def counter_text(fmt, n):
    """an enumitem template (\roman*, \arabic*, ...) for item n"""
    reps = {r'\roman*': roman(n), r'\Roman*': roman(n, True), r'\arabic*': str(n),
            r'\alph*': chr(96 + n) if 0 < n < 27 else str(n), r'\Alph*': chr(64 + n) if 0 < n < 27 else str(n)}
    for k, v in reps.items():
        fmt = fmt.replace(k, v)
    return fmt


def split_options(o):
    out, depth, cur = [], 0, ''
    for c in o:
        if c == '{':
            depth += 1
        elif c == '}':
            depth -= 1
        if c == ',' and depth == 0:
            out.append(cur); cur = ''
        else:
            cur += c
    return out + [cur]


def list_labels(s):
    r"""enumerate[label=..., ref=..., start=...] (enumitem): the importer
    drops the options, so the items would be numbered 1., 2., ... and refer
    to 1, 2, ...: every item gets its LaTeX label (\item[(ii)]), and a
    \label in the item text (not inside an inner environment) the LaTeX
    reference text, as \tmitemlabel{key}{text} (tex_post.py). Innermost
    lists first."""
    pat = re.compile(r'\\begin\{enumerate\}\[([^\[\]]*(?:\[[^\[\]]*\][^\[\]]*)*)\]')
    while True:
        # an enumerate with options that contains no other enumerate with options
        m = None
        for c in pat.finditer(s):
            end = s.find(r'\end{enumerate}', c.end())
            inner = s[c.end():end]
            if r'\begin{enumerate}' not in inner:
                m = c
                break
        if m is None:
            # an enumerate with options around plain ones: take the outermost
            m = pat.search(s)
            if m is None:
                return s
        opts = {}
        for o in split_options(m.group(1)):
            k, _, v = o.partition('=')
            opts[k.strip()] = v.strip()
        # the body: up to the matching \end{enumerate}
        depth, i = 1, m.end()
        for e in re.finditer(r'\\(begin|end)\{enumerate\}', s[m.end():]):
            depth += 1 if e.group(1) == 'begin' else -1
            if depth == 0:
                j = m.end() + e.start()
                break
        else:
            raise SystemExit('tex_prep: unbalanced enumerate')
        body = s[m.end():j]
        label = opts.get('label')
        if not label:
            s = s[:m.start()] + r'\begin{enumerate}' + body + s[j:]
            continue
        label = re.sub(r'\\textup\{((?:[^{}]|\{[^{}]*\})*)\}', r'\1', label)
        ref = re.sub(r'\\textup\{((?:[^{}]|\{[^{}]*\})*)\}', r'\1', opts.get('ref', label))
        n = int(opts.get('start', '1') or 1) - 1
        # items of this list: \item at depth 0 (inner environments skipped)
        out, k, depth = [], 0, 0
        toks = list(re.finditer(r'\\begin\{[^}]*\}|\\end\{[^}]*\}|\\item\b(\[[^\]]*\])?|\\label\{([^{}]*)\}', body))
        cur_ref = None
        for t in toks:
            out.append(body[k:t.start()]); k = t.end()
            x = t.group(0)
            if x.startswith(r'\begin'):
                depth += 1; out.append(x)
            elif x.startswith(r'\end'):
                depth -= 1; out.append(x)
            elif x.startswith(r'\item') and depth == 0:
                n += 1
                if t.group(1):
                    cur_ref = None
                    out.append(x)
                else:
                    cur_ref = counter_text(ref, n)
                    out.append(r'\item[' + counter_text(label, n) + ']')
            elif x.startswith(r'\label') and depth == 0 and cur_ref is not None:
                out.append(r'\tmitemlabel{' + t.group(2) + '}{' + cur_ref + '}')
            else:
                out.append(x)
        out.append(body[k:])
        s = s[:m.start()] + r'\begin{enumerate}' + ''.join(out) + s[j:]


def notag_labels(s):
    r"""a \label in a \notag row of a numbered align/gather/eqnarray (or in
    any but the last row of a multline) refers,
    in LaTeX, to the next numbered row: move it there (TeXmacs would bind it
    to the number before the display)"""
    def rep(m):
        env, body = m.group(1), m.group(2)
        rows, seps, depth, env_depth, cur, i = [], [], 0, 0, [], 0
        while i < len(body):
            if body.startswith('\\begin{', i):
                env_depth += 1
            elif body.startswith('\\end{', i):
                env_depth -= 1
            c = body[i]
            if c == '{':
                depth += 1
            elif c == '}':
                depth -= 1
            if body.startswith('\\\\', i) and depth == 0 and env_depth == 0:
                sep = re.match(r'\\\\(\[[^\]]*\])?', body[i:]).group(0)
                rows.append(''.join(cur)); seps.append(sep); cur = []; i += len(sep)
                continue
            cur.append(c); i += 1
        rows.append(''.join(cur))
        if env == 'multline':   # only the last row carries the number
            numbered = [False] * (len(rows) - 1) + [True]
        else:
            numbered = [not re.search(r'\\(notag|nonumber)\b', r) and r.strip() != '' for r in rows]
        pending = []
        for r in range(len(rows)):
            if not numbered[r]:
                labs = re.findall(r'\\label\{[^{}]*\}', rows[r])
                if labs:
                    pending += labs
                    rows[r] = re.sub(r'\\label\{[^{}]*\}', '', rows[r])
            elif pending:
                rows[r] = rows[r] + ''.join(pending); pending = []
        if pending:
            nums = [r for r in range(len(rows)) if numbered[r]]
            if not nums:
                raise SystemExit('tex_prep: \\label in an unnumbered display: ' + ''.join(pending))
            rows[nums[-1]] += ''.join(pending)
        out = rows[0]
        for sep, r in zip(seps, rows[1:]):
            out += sep + r
        return '\\begin{%s}%s\\end{%s}' % (env, out, env)
    return re.sub(r'\\begin\{(align|gather|eqnarray|multline)\}(.*?)\\end\{\1\}', rep, s, flags=re.S)


def tags(s):
    r"""\tag{T} in an equation -> marker \tmtag{T} (math, without $):
    tex_post.py gives the equation the number T without counting it.
    \tag anywhere else stops the build."""
    def rep(m):
        body = m.group(1)
        t = re.search(r'\\tag\{((?:[^{}]|\{[^{}]*\})*)\}', body)
        if not t:
            return m.group(0)
        tag = t.group(1).strip()
        if tag.startswith('$') and tag.endswith('$'):
            tag = tag[1:-1]
        return '\\begin{equation}' + body[:t.start()] + body[t.end():] + '\\tmtag{' + tag + '}\\end{equation}'
    s = re.sub(r'\\begin\{equation\}(.*?)\\end\{equation\}', rep, s, flags=re.S)
    m = re.search(r'\\tag\*?\{', s)
    if m:
        raise SystemExit('tex_prep: \\tag outside an equation: ' + s[max(0, m.start() - 80):m.start() + 40])
    return s



def paragraph_labels(s):
    r"""\paragraph{T}\label{L}: paragraphs are not numbered, so in LaTeX L
    refers to the enclosing (sub(sub))section; TeXmacs would give the
    paragraph's own counter. L gets that number (\tmitemlabel{L}{n}),
    counted here: sections through the document (parts do not reset them),
    subsections within sections, subsubsections within subsections; the
    starred forms count nothing. (Other numbering is refused by
    check_numbering.)"""
    sec = sub = subsub = 0
    out, k = [], 0
    for m in re.finditer(r'\\(section|subsection|subsubsection)(\*?)\{|\\paragraph\*?\{((?:[^{}]|\{[^{}]*\})*)\}(\s*)\\label\{([^{}]*)\}', s):
        if m.group(1) and not m.group(2):
            if m.group(1) == 'section':
                sec, sub, subsub = sec + 1, 0, 0
            elif m.group(1) == 'subsection':
                sub, subsub = sub + 1, 0
            else:
                subsub += 1
        elif m.group(5) is not None:
            num = '.'.join(str(n) for n in (sec, sub, subsub)[:3 if subsub else 2 if sub else 1])
            out.append(s[k:m.start()])
            out.append(m.group(0)[:m.group(0).rindex('\\label')] + r'\tmitemlabel{' + m.group(5) + '}{' + num + '}')
            k = m.end()
    out.append(s[k:])
    return ''.join(out)


def main():
    s = read('main.tex')
    if r'\begin{principal}' in s:
        print('tex_prep: warning: the principal environment is used; check its name in the output')
    pre = s.split(r'\begin{document}')[0]
    title = re.search(r'\\title\{((?:[^{}]|\{[^{}]*\})*)\}', pre)
    meta = {'title': latex_text(title.group(1)) if title else None, 'preamble': pre}
    s, figs = figures(s, pre)
    meta['figures'] = figs
    s = rename_macros(s)
    s = s.replace(r'\today', commit_date())
    s = numbering(s)
    s = equation_alias(s)
    s = gathered(s)
    s = notag_labels(s)
    s = tags(s)
    s = list_labels(s)
    s = paragraph_labels(s)
    s = contents_lines(s)
    s = bibliography_group(s)
    s = groups(s)
    s = longtables(s)
    # \begin{aligned} followed by whitespace and "[": amsmath reads an
    # optional position argument only right after the \begin, so "[...]"
    # there is text (e.g. a coefficient [z_1z_2]H); the importer skips the
    # whitespace and takes it as the argument, a malformed aligned that
    # stops the HTML export (also with {} in between, and {[} is taken as
    # the argument too). \\lbrack keeps the LaTeX meaning.
    s = re.sub(r'(\\begin\{(?:aligned|gathered)\})(\s+)\[', r'\1\2\\lbrack ', s)
    s = pagination(s)
    s = re.sub(r'(\\begin\{(?:enumerate|itemize|description)\})\[[^\]]*\]', r'\1', s)
    s = titles(s)
    s = strip_command(s, 'textup')
    # \operatorname*{argmin}: the importer reads the star as a factor
    s = s.replace(r'\operatorname*{', r'\operatorname{')
    os.makedirs(OUT, exist_ok=True)
    open(os.path.join(OUT, 'main.tex'), 'w', encoding='utf-8').write(s)
    meta['displays'] = display_rows(s)
    meta['labels'] = labels(s)
    dup = sorted({l for l in meta['labels'] if meta['labels'].count(l) > 1})
    if dup:
        raise SystemExit('tex_prep: labels defined twice: ' + ', '.join(dup))
    json.dump(meta, open(os.path.join(OUT, 'meta.json'), 'w', encoding='utf-8'), ensure_ascii=False)
    bib = os.path.join(MS, 'references.bib')
    if os.path.exists(bib):
        inputs.append('manuscript/references.bib')
        open(os.path.join(OUT, 'references.bib'), 'w', encoding='utf-8').write(
            open(bib, encoding='utf-8').read())
    open(os.path.join(OUT, 'inputs.txt'), 'w').write(''.join(f + '\n' for f in sorted(set(inputs))))
    print(f'tex_prep: {len(set(inputs))} files')


main()

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


def numbering(s):
    """Part II: lettered sections, theorems numbered per subsection"""
    def block(m):
        body = m.group(1)
        known = [r'\\@addtoreset\{theorem\}\{subsection\}',
                 r'\\renewcommand\{\\thetheorem\}\{\\ifnum\\value\{subsection\}=0 ?\\thesection\\else\\thesubsection\\fi\.\\arabic\{theorem\}\}',
                 r'\\renewcommand\{\\theH[a-z]+\}\{[^\n]*\}']
        rest = body
        for k in known:
            rest = re.sub(k, '', rest)
        if rest.strip():
            raise SystemExit('tex_prep: unknown \\makeatletter block in main.tex:\n' + rest.strip())
        return r'\tmtheoremsbysubsection' if re.search(known[0], body) else ''
    s = re.sub(r'\\makeatletter(.*?)\\makeatother', block, s, flags=re.S)
    s = s.replace(r'\renewcommand{\thesection}{\Alph{section}}', r'\tmsectionsAlph')
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
              r'\\(?:small|med|big)break\b', r'\\filbreak\b', r'\\goodbreak\b']


def pagination(s):
    body_start = s.find(r'\begin{document}')
    pre, body = (s[:body_start], s[body_start:]) if body_start >= 0 else ('', s)
    for p in PAGINATION:
        body = re.sub(p, '', body)
    return pre + body


def labels(s):
    """every \\label of the document body, in order"""
    body = s[s.find(r'\begin{document}'):]
    return re.findall(r'\\label\{([^{}]*)\}', body)


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


def main():
    s = read('main.tex')
    if r'\begin{principal}' in s:
        print('tex_prep: warning: the principal environment is used; check its name in the output')
    pre = s.split(r'\begin{document}')[0]
    title = re.search(r'\\title\{((?:[^{}]|\{[^{}]*\})*)\}', pre)
    meta = {'title': latex_text(title.group(1)) if title else None, 'preamble': pre}
    s = rename_macros(s)
    s = s.replace(r'\today', commit_date())
    s = numbering(s)
    s = longtables(s)
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

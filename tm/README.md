# TeXmacs version of the outline

This folder holds a GNU TeXmacs version of the Markdown pages of the
repository, and an HTML site exported from it. The pages are found
automatically: every `*.md` tracked in git (or untracked and not ignored),
except under `tm/`. A new page is picked up by the next build without any
change here. The LaTeX manuscript (`manuscript/main.tex` and its `\input`
files) becomes one more document, `manuscript/main.tm` (see "The
manuscript" below). The Markdown and LaTeX files are the source: everything
here except the scripts, the styles and this file is generated, and the
build only reads the sources.

## Regenerate

```sh
tm/build.sh            # Markdown -> .tm -> HTML, only what changed
tm/build.sh --no-html  # Markdown -> .tm only
tm/build.sh --html     # HTML only, from the .tm files in tm/
tm/build.sh --full     # rebuild everything (combines with the two above)
```

Then open `tm/html/index.html`. A full build takes about 4 minutes, a
build after editing one page about 10 seconds, and a build with nothing to
do a fraction of a second. Builds are reproducible: a second full build
gives identical files, and an incremental build gives the same files as a
full build of the same sources.

### Incremental builds

After every successful build, `scripts/plan.py` writes
`tm/.build-state.json` (git-ignored). It records, for every page, a
fingerprint of what its `.tm` is made from and the hashes of the installed
`.tm` and `.html`, together with a hash of the tools, the list of pages, the
git commit (for information only) and the broken links of the site. The next
build compares:

- **Full rebuild** (the reason is printed) when there is no record, with
  `--full`, when the set of pages changed (a page added, deleted or renamed),
  or when the tools changed: anything in `tm/scripts/`, `tm/resources/`,
  `tm/ym-outline.ts`, `tm/build.sh`, the `max-html` plugin or the TeXmacs
  binary.
- **Otherwise only the pages that need it** (each listed with the reason):
  - converted and exported again when the fingerprint changed;
  - converted again when its `.tm` is missing or was edited by hand;
  - exported again when its `.html` is missing, was edited, or is older than
    its `.tm` (e.g. after `--no-html`).
- **Nothing** when everything matches: the build stops after `prep.py`.

The fingerprint of a page is the hash of the page *as patched by
`prep.py`* plus the navigation data it uses. The patched page already
contains every link resolved against the other pages (`.md` → `.tm`,
anchors that moved to the companion page, `data/` → `data/index.tm`). So a
page that links to an edited page is rebuilt exactly when the edit changes
how its links resolve. Unit and notes pages also depend on `data/units.tsv`
(order and titles of the units) and on the part headings of
`outline/units.md`; when these change, all of them are rebuilt. Content
hashes, not `git diff`, decide: they also see uncommitted and untracked
edits, files restored to an older state, and hand edits of the outputs.
Untracked `*.md` files that git does not ignore are pages too.

After an incremental build the links of the whole site are checked
(`scripts/linkcheck.py`). If a link is broken that the last build did not
have, for instance an anchor removed from a page that other pages link to,
the build starts again with `--full`. Broken links that a full build also
gives come from the Markdown; they are printed as a warning.

Requirements:
- TeXmacs Upsilon, Qt port (`TeXmacs Upsilon Qt.app`, looked for in
  `/Applications`, `~/Applications` and `~/Downloads`; or set `TEXMACS_BIN`).
  The Markdown importer exists only in Upsilon, and the documents use its
  `lean-code`/`shell-code` blocks.
- The `max-html` plugin (default `~/.TeXmacs/plugins/max-html`, or set
  `MAX_HTML_DIR`); its stylesheet and script are copied next to the pages.
- Python 3.

TeXmacs runs headless with a private home folder (fonts and `max-html`
linked in), in a temporary folder that is deleted afterwards (keep it with
`YM_BUILD_DIR=dir`). The generated files are installed only if every step
succeeds.

## Layout

| path | what |
|---|---|
| `build.sh` | the driver |
| `ym-outline.ts` | the style package (navigation bars, page title, HTML renderings, MathJax configuration); uses `max-html` |
| `ym-manuscript.ts` | the manuscript's package, after `ym-outline`: numbering as in `main.tex`, Theorem A/B, Part II letters, MathJax `\hyperref` |
| `resources/ym-outline.css` | additions to `max-html.css` for the site |
| `scripts/prep.py` | step 1: patched copy of the Markdown (links, anchors) |
| `scripts/tmio.scm` | TeXmacs side: import, writing the `.tm`, tag check, typesetting and HTML export |
| `scripts/post.py`, `scripts/stree.py` | step 3: rewrite of the imported trees into native TeXmacs |
| `scripts/tex_prep.py`, `scripts/tex_post.py` | the manuscript: LaTeX patches before the import, native rewrite after it |
| `scripts/normalize_ids.py` | step 6: reproducible link ids in the saved documents |
| `scripts/plan.py` | incremental builds: what to rebuild, and the record `.build-state.json` |
| `scripts/linkcheck.py` | step 7: links and anchors of the whole site |
| `.build-state.json` | generated: the record of the last build (git-ignored) |
| `index.tm`, `statement.tm`, `faq.tm`, `provenance.tm`, `CHANGELOG.tm`, …, `data/index.tm`, `outline/units/*.tm`, `outline/notes/*.tm`, `manuscript/index.tm` | generated documents (every `README.md` becomes `index.tm`) |
| `manuscript/main.tm` | generated: the LaTeX manuscript |
| `*/ym-outline.ts`, `*/ym-manuscript.ts` | generated copies of the styles in every subfolder (see below) |
| `html/` | generated site |

## Navigation

Every page starts with a bar of links to the main pages (Home, The theorem,
The proof in one reading, Architecture, Units, Manuscript, Glossary, FAQ,
Work items, Data, Method, Provenance, Changes); a page missing from the repository is
left out. Unit outlines (`outline/units/X`) and detailed notes
(`outline/notes/X`) have, at the top and at the bottom, the previous and
next page of the same kind in the order of `data/units.tsv`, a link to the
part in the table of units, and a link to the companion page (Detailed notes
/ Unit outline).

## Pipeline

1. `prep.py`: lists the pages with `git ls-files --cached --others
   --exclude-standard '*.md'`, copies each to a
   scratch folder (`README.md` → `index.md`, also `data/README.md` →
   `data/index.md`), rewrites links to pages as links to `.tm` documents
   (the HTML export turns them into `.html`; a link to `data/` goes to
   `data/index.tm`, a link to `manuscript/` to `manuscript/index.tm`), links
   to other repository files (`data/*.tsv`, `LICENSE`, `manuscript/main.pdf`
   and the `.tex` files, `pdf/`, `CITATION.cff`) into GitHub links, and
   adds to every heading the
   anchor GitHub gives it, so that links such as `summary.md#the-strategy`
   still work. It also collects the titles and the unit order of
   `data/units.tsv` for the navigation.

   `tex_prep.py` prepares the manuscript (see below). Then `plan.py` decides what to rebuild (see above); steps 2–5 run only
   for those pages.
2. TeXmacs imports the Markdown and writes the document trees.
3. `post.py` rewrites them (see the table below), adds the navigation and a
   table of contents to pages with four sections or more.
4. TeXmacs writes the `.tm` files; a check lists tags without a definition.
5. TeXmacs typesets each document twice (table of contents), saves it and
   exports it to HTML with MathJax.
6. Install into `tm/` (link ids made reproducible by `normalize_ids.py`).
7. Check the links of the whole site, write `.build-state.json`.

## The manuscript

`manuscript/main.tex` becomes **one** TeXmacs document,
`manuscript/main.tm` (HTML: `html/manuscript/main.html`). One document keeps
the numbering, every `\ref`/`\eqref`, the table of contents (the side panel
of the HTML page) and a bibliography native and correct; the manuscript is
about 35 pages, and its HTML page about 300 kB (1,000 formulas), which loads
and renders without trouble. If it grows much larger it can be split per
part with `hlink`s between the parts.

- `tex_prep.py` writes one flat LaTeX file (all `\input`s inlined) and
  patches, uniformly, what the LaTeX importer of TeXmacs does not
  understand (list in the script): the Part II numbering block becomes
  marker commands, optional titles (`\begin{lemma}[Title]`, kept by the
  importer as "[Title]" text) markers that become `<dueto|Title>` (and
  `render-proof` for a proof), `longtable` a table with a `tabular` (displays in its
  cells become inline displays), list options are dropped, `\textup` and
  `\operatorname*` simplified, user macros whose name begins with `\path`
  (`\pathaction`) renamed for the import and back afterwards, and
  `\today` replaced by the date of the last commit touching `manuscript/`
  (so the output does not change with the day of the build). An unknown
  `\makeatletter` block stops the build.
- TeXmacs Upsilon imports it (`ym-import-latex-all` in `tmio.scm`).
- `tex_post.py` makes it native: the macros of `macros.tex` stay **macros**
  in the preamble of the document (`\DeclareMathOperator` names upright,
  bare brackets in their bodies made into `around`); the theorem
  declarations of `main.tex` are replaced by `ym-manuscript.ts`; the markers
  become `<ym-letter-sections>` and `<ym-theorems-by-subsection>`; the
  title (lost by the importer) is restored and the empty abstract dropped;
  `align`/`multline` rows are numbered as in LaTeX (the importer numbers
  `\notag` rows and every row of a `multline`); `p{…}` column widths are
  set; a thin space follows operator names as in LaTeX
  (`\operatorname{Re}\tr u`); a `\bibliography` gets a TeXmacs style
  (`plain` → `tm-plain`, …), so no BibTeX program is needed; `<le>`,
  `<ge>` become `<leqslant>`, `<geqslant>`.
- Numbering (`ym-manuscript.ts`): theorem-like environments share one
  counter within sections and equations are numbered within sections
  (`number-long-article`), tables through the document; Theorem A, B
  (`maintheorem`) have their own lettered counter; in Part II sections are
  lettered and theorems numbered within subsections (E.1.3), or within the
  section before its first subsection (A.1), equations within sections
  (A.1). Checked against `main.pdf`: the 145 numbered statements, the 23
  equation numbers, the section letters and the references agree.
- `manuscript/README.md` is a page too (`manuscript/index`), with a link to
  the manuscript; links to `manuscript/` and `manuscript/README.md`
  resolve to it, links to `main.pdf` and the `.tex` files go to GitHub.
- The bibliography: `main.tex` cites nothing at present and has no
  `\bibliography`, so there is none (as in `main.pdf`). The path was tested
  on a copy with two `\cite`s and `\bibliography{references}`: the
  citations and the list (from `references.bib`, with `tm-plain`) appear in
  the HTML, without a BibTeX program.
- Incremental builds: the manuscript is rebuilt when the output of
  `tex_prep.py` changes, i.e. when `main.tex`, `macros.tex`, any `\input`
  file or `references.bib` changes (or the date of the last commit to
  `manuscript/`); it has no navigation that depends on other pages.

## Conversion problems and their fixes

All fixes are made by the scripts, uniformly; nothing is edited by hand.

| problem | fix |
|---|---|
| Links to `.md` pages | `prep.py`: rewritten to `.tm` (HTML: `.html`); `README.md` → `index` |
| Links to headings (`#the-strategy`): the importer makes no anchors | `prep.py`: `<a id="slug">` after each heading (GitHub slugs), moved out of the title by `post.py` |
| Links to `data/*.tsv`, `LICENSE`, `manuscript/`, `pdf/` | `prep.py`: links to the repository on GitHub (`YM_REPO_URL`, `YM_REPO_BRANCH`); `data/` and `data/README.md` go to `data/index.tm` |
| Links to a section that moved between a unit page and its detailed notes (e.g. `summary.md` → `units/III-12.md#45-convergence-in-the-mesh`) | `prep.py`: sent to the companion page that has the anchor (reported by the build) |
| `<details><summary>…</summary> … </details>` (raw HTML) imported as a loose paragraph and an empty marker | `post.py`: the paragraphs in between grouped into `ym-details` (a collapsible `<details>` in HTML, open in TeXmacs) |
| Code fences with a language (```` ```sql ````, ```` ```text ````) wrapped in an undefined `md-fence` | `post.py`: the code block is kept, the language dropped |
| In `aligned` blocks, `d^*H` read as `d^{}` times `H` and `H'` as `H*'` (exported as `\ensuremath{}`/`\prime`) | `post.py`: `<rsup|<ast>>` and `<rprime|'>` restored |
| The importer keeps the Markdown source next to the parsed text (`md-source`, `md-block-source`, `md-loose`) | `post.py`: unwrapped; HTML comments (`<!-- toc -->`) dropped |
| Formulas split into math and text (`$n!$`, `${\rm cap}\cdot t$`, `$\texttt{x}_d$`, `$x=\text{pole}$`, `$_{\rm ray}$`) | `post.py`: joined into one formula |
| `\mathrm{Re\,tr}`, `\mathrm{work item}`: exported as `\textrm{\operatorname…}`, an error in MathJax | `post.py`: `math-up` for one word, `text` otherwise |
| `aligned` displays imported outside math mode | `post.py`: put into `equation*` |
| In `aligned` blocks, products such as `mU`, `QW` read as one identifier | `post.py`: split into `m*U` (function names kept) |
| `\iint`, `\lt`, `\gt` imported as unknown tags | `post.py`: `<big|iint>`, `<`, `>` |
| `aligned` exported to MathJax as `equationsbase` (mgubi/texmacs#611; the fix of `max-html` does not take effect under Upsilon) | `ym-outline.ts`: MathJax defines `equationsbase` as `aligned` |
| `\le`, `\ge` give `<le>`, `<ge>` | `post.py`: `<leqslant>`, `<geqslant>` (house convention) |
| `·` in text has no glyph in TeXmacs text fonts | `post.py`: `ym-middot` (a math dot; `·` in HTML) |
| Tables with an empty header row; header not set off | `post.py`: empty rows removed, rule under the first row |
| Headings: `#` would be a numbered section | `#` → page title (`ym-title`, h1), `##` → section (h2), … ; no automatic numbers |
| Code fences exported line by line, indentation lost | `ym-outline.ts`: `lean-code`, `shell-code` exported as `<pre>` |
| A link inside a heading is copied into the table of contents with an id made from memory addresses, so builds differed | `normalize_ids.py`: ids renumbered in order of appearance before install |
| The style cannot be found by a relative path (`../../ym-outline` is not resolved) | `build.sh` copies `ym-outline.ts` into every subfolder with documents (`data/`, `outline/`, `outline/units/`, `outline/notes/`); edit only `tm/ym-outline.ts` |

## Known residual issues

- Manuscript: table captions come below the table (LaTeX: above);
  `\operatorname*{argmin}` gets its subscript beside, not below; the long
  table is one float, which TeXmacs cannot break across pages in a PDF (the
  HTML is complete); differentials stay `d` (as in the LaTeX source).

- An undefined command in a formula of the Markdown (as `$\Completed$` was
  in V.3 before the update) is set upright, with a warning from `post.py`.
- A link to an anchor that exists on no page is reported by `prep.py`
  ("unresolved link") and left as it is; none at present.
- Brackets mismatched across commands, e.g. `[\sum_p(\cdot)+…]` in the
  detailed notes of III.1,
  are paired wrongly by the importer (`around` from `[` to `(`). The output
  looks right, but the bracket structure is not semantic.
- The house conventions for differentials (`\<mathd\>`) and non-breaking
  spaces before references are not applied: the Markdown writes `dx`, and
  references are plain text.
- `\text{Re tr}` loses the thin space of `\mathrm{Re\,tr}`.
- Some text in the Markdown is written as pseudo-LaTeX outside math (e.g.
  `1/D_N` in `statement.md`) and stays as it is.
- The documents need TeXmacs Upsilon (`lean-code`, `shell-code`). In
  TeXmacs, the navigation links between documents work; to open them the
  `max-html` plugin should be installed (it is used by the style).
- MathJax is loaded from jsdelivr: the site needs a network connection for
  the formulas.

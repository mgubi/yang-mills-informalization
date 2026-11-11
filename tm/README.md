# TeXmacs version of the outline

This folder holds a GNU TeXmacs version of the Markdown pages of the
repository, and an HTML site exported from it. The pages are found
automatically: every `*.md` tracked in git (or untracked and not ignored), except under `manuscript/` (the
LaTeX manuscript) and `tm/`. A new page is picked up by the next build
without any change here. The Markdown files are the
source: everything here except the scripts, the style and this file is
generated, and the build only reads the Markdown.

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
| `resources/ym-outline.css` | additions to `max-html.css` for the site |
| `scripts/prep.py` | step 1: patched copy of the Markdown (links, anchors) |
| `scripts/tmio.scm` | TeXmacs side: import, writing the `.tm`, tag check, typesetting and HTML export |
| `scripts/post.py`, `scripts/stree.py` | step 3: rewrite of the imported trees into native TeXmacs |
| `scripts/normalize_ids.py` | step 6: reproducible link ids in the saved documents |
| `scripts/plan.py` | incremental builds: what to rebuild, and the record `.build-state.json` |
| `scripts/linkcheck.py` | step 7: links and anchors of the whole site |
| `.build-state.json` | generated: the record of the last build (git-ignored) |
| `index.tm`, `statement.tm`, `faq.tm`, `provenance.tm`, `CHANGELOG.tm`, …, `data/index.tm`, `outline/units/*.tm`, `outline/notes/*.tm` | generated documents (every `README.md` becomes `index.tm`) |
| `*/ym-outline.ts` | generated copies of the style in every subfolder (see below) |
| `html/` | generated site |

## Navigation

Every page starts with a bar of links to the main pages (Home, The theorem,
The proof in one reading, Architecture, Units, Glossary, FAQ, Work items,
Data, Method, Provenance, Changes); a page missing from the repository is
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
   `data/index.tm`), links to other repository files (`data/*.tsv`,
   `LICENSE`, `manuscript/`, `pdf/`, `CITATION.cff`) into GitHub links, and
   adds to every heading the
   anchor GitHub gives it, so that links such as `summary.md#the-strategy`
   still work. It also collects the titles and the unit order of
   `data/units.tsv` for the navigation.

   `manuscript/README.md` is not converted: it describes the LaTeX
   manuscript and its relative links point to LaTeX and PDF files, so links
   to it go to GitHub like the rest of `manuscript/`.
   Then `plan.py` decides what to rebuild (see above); steps 2–5 run only
   for those pages.
2. TeXmacs imports the Markdown and writes the document trees.
3. `post.py` rewrites them (see the table below), adds the navigation and a
   table of contents to pages with four sections or more.
4. TeXmacs writes the `.tm` files; a check lists tags without a definition.
5. TeXmacs typesets each document twice (table of contents), saves it and
   exports it to HTML with MathJax.
6. Install into `tm/` (link ids made reproducible by `normalize_ids.py`).
7. Check the links of the whole site, write `.build-state.json`.

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

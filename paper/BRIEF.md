# Brief: our manuscript on the construction of four-dimensional Yang–Mills theory

Three agents work here: **dalmatian**, **greyhound** and **weimaraner**. Read this whole file before doing anything.
The person directing the work is Amélie Loher; she and Claude (her coordinator) read your reports.

## Goal

Write our own complete, beautiful, publication-quality mathematical paper (LaTeX) giving the proof of the result
formalized in OpenAI's Lean construction of four-dimensional quantum Yang–Mills theory. It is a fresh version,
*inspired by* the existing material below. It is not a copy of it. The reader is a mathematician working in constructive
field theory or probability. The two qualities that matter most:

1. **Fidelity.** Claim nothing the Lean does not prove. Every theorem, proposition and lemma must agree with the Lean
   (hypotheses, quantifiers, order of choices, order of limits). Never strengthen a statement for elegance. If a
   step cannot be confirmed from the sources, do not paper over it: write a visible `\gap{...}` marker
   (defined in `macros.tex`) saying what is missing and where to look.
2. **Readability.** Economical statements, definitions where they are first used, stable notation, one idea per
   paragraph, proofs whose structure is visible. No code nicknames (`Treasury`, `Jewel`, ...) in the text; translate
   them with `glossary.md`. Lean names may appear only in a correspondence table or footnotes, never in the prose.

## Writing skills (mandatory)

Before writing any LaTeX, read in full:
- `/root/.codex/skills/latex-math-writing/SKILL.md` and the files under its `references/` folder;
- dalmatian also reads `/root/.codex/skills/orchestrate-latex-paper/SKILL.md` and its references.

Follow them. They define the standard this paper is held to.

## Sources (all read-only)

In this repository, `/root/code/yang-mills-informalization` (Scott Armstrong's informalization):
- `statement.md`: the exact main theorem, nonclaims, comparison with Wightman/OS/Jaffe–Witten. The theorem in our
  paper must match it.
- `summary.md`: the whole proof in one reading. `outline/README.md`: the eight parts and their interfaces.
- `outline/units/*.md`: condensed outline of each of the 32 units (3–10 pages each), with Lean links.
  `outline/notes/*.md`: the detailed notes for each unit. `outline/work-items.md`, `glossary.md`, `provenance.md`
  (where the ideas come from: Balaban, OpenAI's sigma-model papers, standard results, what is new), `faq.md`.
- `manuscript/`: Scott's manuscript, being written right now by his agents (Part I nearly done; Part II mostly
  missing). It changes during the day; run `git -C /root/code/yang-mills-informalization pull --ff-only` before
  re-reading it. Read it critically: note what works and what does not. Do not copy passages from it.
- The Lean source at the pinned commit is checked out at `/root/code/OpenAI-YM-20261028` (source only, not built).
  Use `grep`/`rg` and read the files to confirm statements and proofs. The links in the outlines point to exact
  lines of this commit (`3456e5e`).

Do **not** edit anything outside `paper/`. Do **not** modify `manuscript/`, the outlines or the Lean checkout.
Do **not** `git commit`, `git push`, or change git configuration. Amélie decides what is committed.

## Our folder: `paper/`

```
paper/BRIEF.md            this file (do not edit)
paper/PLAN.md             the plan of the paper; owned by dalmatian
paper/main.tex, macros.tex, references.bib   owned by dalmatian
paper/notation.md         the notation table; owned by dalmatian, others propose additions in their notes
paper/part1/*.tex         Part I; owned by dalmatian
paper/part2/uv/*.tex      Part II, ultraviolet construction; owned by greyhound
paper/part2/limit/*.tex   Part II, limit theory and identification; owned by weimaraner
paper/notes/<name>.md     each agent's working notes and requests to the others (one file per agent)
paper/reports/<name>-<n>.md   reports to Amélie
```

Edit only files you own. To ask another agent for something (a macro, a notation change, a statement you need
from their part), append a dated line to *their* section in your own `paper/notes/<name>.md` under the heading
"Requests"; each agent reads the other two notes files whenever it starts a new section.

## Roles

- **dalmatian, lead and editor.** Owns the architecture, Part I and the shared files.
  Part I: introduction, setting and notation, the main theorem (stated exactly as in `statement.md`), the principal
  propositions with the idea of each proof, and the deduction of the main theorem from them; the choice of constants.
- **greyhound, ultraviolet construction.** Part II for units I.1–III.16 of the outline: the lattice theory, labels and
  insertions, polymer activities, the block-spin step and background field, Gaussian integration and the cluster
  expansion, one nonlinear RG step, the marginal flow, bounds uniform in the volume, convergence at fixed volume.
- **weimaraner, limit theory and identification.** Part II for units IV.1–VIII.1: infinite volume, phases and
  Osterwalder–Schrader reconstruction, Ward identities and the stress tensor, comparison with free Maxwell fields,
  the trace law and non-freeness, the OPE and contact extensions, assembly.

## How to proceed

**Phase 1 (everyone): read and plan.**
1. Read `statement.md`, `summary.md`, `outline/README.md`, `provenance.md`, and Scott's `manuscript/` as it stands.
2. greyhound and weimaraner: read the unit outlines of your part (and the detailed notes where needed). Write
   `paper/notes/<name>.md` with: the sections you propose for your part, the precise statements each section proves,
   what each needs from the other parts, and the weak points (the "open points for the writer" in the unit pages and
   `summary.md` §"Steps whose informal account is incomplete") with how you will resolve them from the Lean.
3. dalmatian: write `paper/PLAN.md`: the table of contents with page targets, the list of principal propositions with
   their exact statements and which section proves each, the interfaces between Part I and the two halves of Part II,
   notation and house style, and section ownership. Read the other two notes files and incorporate them. Set up
   `main.tex`, `macros.tex` (including `\gap`), `references.bib` and empty `\input` files so that
   `latexmk -pdf main.tex` builds in `paper/`. When the plan is ready, put the line `STATUS: READY` as the first
   line of `PLAN.md`.
4. greyhound and weimaraner: once your notes file is written, wait for `STATUS: READY` (check every few minutes with
   `head -1 paper/PLAN.md`; `sleep 180` between checks), then read `PLAN.md` and follow it. If you disagree with it,
   say so under "Requests" in your notes and follow it anyway until dalmatian changes it.

**Phase 2: first section, then stop.** Each agent writes **one** section of its part, completely and to the final
standard (dalmatian: the main theorem and the principal propositions; the others: the first section of their part in
the plan), checks every statement in it against the Lean, makes sure the paper builds, and rereads the rendered PDF.
Then write `paper/reports/<name>-1.md` and **stop and wait** for instructions. The report, at most one page:
what you wrote, what you checked against the Lean (and how), every `\gap` you left, where you departed from Scott's
manuscript and why, and what you need decided.

Amélie will read the first sections before the rest is written.

## Standing rules

- Build with `latexmk -pdf -interaction=nonstopmode main.tex` inside `paper/`. Never leave the build broken; if a
  file you own breaks it, fix it before anything else.
- Keep the `.tex` source readable: one sentence per line is fine; do not reflow others' files.
- If you read or touch Lean: never use `set_option maxHeartbeats` (or any heartbeat override), and no Lean file may
  exceed 1500 lines. (You are not expected to write Lean.)
- Do not launch subagents or background loops other than the `sleep` wait above.

# Feedback, round 1 (from Amélie, after reading checkpoint 1)

All three agents read this whole file. It overrides `PLAN.md` where they conflict; dalmatian updates `PLAN.md`
to match. The general points apply to everyone; then each agent has its own section.

## General points (everyone)

1. **The reader is a human who wants to understand.** No jargon, no unexplained terms, no mysterious gaps.
   Every term is either standard in the literature (and then used exactly as the literature uses it) or defined,
   and explained, before its first use. Examples of words that failed this test in the pilot: "token", "stencil",
   "$p$-admissible", "marginal curvature-square coefficient". If a word is standard (e.g. plaquette), still give a
   short, pedagogical explanation when it first appears.
2. **Use the notation of the related literature** (constructive QFT, lattice gauge theory, Osterwalder–Schrader and
   Wightman axioms, Balaban), not notation invented for this paper, wherever such notation exists.
3. **Statements are clean mathematics.** Explain in words *before* a proposition what it says and why it matters;
   then state the proposition itself in mathematical language, short and precise. No long wordy statements with
   lists of qualities in prose. Example of what not to do: `prop:iv-smooth` in the infinite-volume pilot (too
   long, too wordy).
4. **Write `\frac{a}{b}` instead of `a/b`** in displayed and inline mathematics.
5. **Links everywhere.** Every labelled item that is referred to must be a hyperlink:
   - the properties R1–R15, P1–P4, W0–W3, O1–O2, T1–T4, Reg1–Reg4 and similar tags: each item gets a `\label`
     and every mention is a `\ref` (for instance with `enumitem`: `label=(R\arabic*), ref=R\arabic*`), so that
     "R1–R15" in the text links to R1 and R15;
   - every definition that a statement uses directly is referred to by a link to it.
6. **Part II refers to the definitions of Part I** by links (`\ref`/`\eqref`) wherever it uses them, so the reader
   can always look them up. Do not redefine in Part II what Part I defines.
7. **Ideas of proofs, especially in Part I, are intuitive.** Explain what is going on and why, not the
   technicalities.

## Structure (dalmatian implements, everyone follows)

- Keep the two parts. **Part I is titled "The main theorem". Part II is titled "The construction".**
  Do not use "The theorem and its proof" or similar.
- **The first section of Part I is titled "The result".** The sections of Part II keep their names
  ("Lattice fields", "Infinite volume", …).
- **All definitions in one place.** The definitions are very important. They are organised in one section (in
  Part I) so that they are easy to look up. There must be no redundant definitions. They are assembled carefully
  and pedagogically, building up step by step, and leading naturally to the statement of the theorem.

## dalmatian (Part I, shared files)

1. **The opening.** The current opening paragraph ("The construction starts from probability measures on finite
   periodic lattices. Removing the lattice spacing …") is too dense and jargony; nobody reads past it. Rewrite the
   opening so a mathematician who is not a specialist wants to keep reading: what the problem is, what is
   constructed, what the result says, in plain words.
2. **The outline paragraph.** Replace "We first define the objects and the exact conclusions of the theorem. The
   five propositions …" with a paragraph that explains the outline and structure of the whole work: sensible,
   readable, not rigid or technical.
3. **The definitions** (see Structure above). In particular:
   - `def:family` is long, messy, unclear and unintuitive, and uses jargon. Rebuild it: introduce its pieces one at a
     time, with intuition, and with standard names.
   - Define or replace "token", "stencil", "$p$-admissible" (if "$p$-admissible" is used, it must be defined
     where the reader can find it).
   - Explain plaquettes pedagogically.
   - The W0–W3 enumeration in the Wightman definition is good; keep it. Instead of "it has properties R1--R15",
     link R1 and R15 to their statements (general point 5).
4. **The theorem.** "with the main properties along $p\circ q$" is not acceptable. The theorem is the most
   important statement of the paper: it must say explicitly what holds, with links to every definition it uses
   directly. No undefined phrase like "the main properties".
5. **The non-claims paragraph** ("The theorem does not assert uniqueness …") is good. Keep it, and make P1–P4
   links.
6. **A strategy section before the five propositions.** Explain what is going on: how the work is split into five
   partial results, what each means, why each is needed, and how they are stitched together. The reader should
   come away with a mind map of the proof (a diagram may help). The current paragraph "The following propositions
   assert one joint choice of objects …" is a good try but must become pedagogical and explain how the
   propositions lead to the main theorem.
7. **Ideas of proofs.** The "Idea of the proof" after each of the five propositions must be much more intuitive and
   understandable (example of what fails: "An exactly normalized, gauge-covariant block kernel preserves the
   partition integral … marginal curvature-square coefficient …"). Ideas, not technicalities. Apply this to all
   five.
8. **The deduction** ("Deduction of Theorem from the principal propositions") is great, and its place, at the end
   of the five propositions, is right. Keep it.

## greyhound (Part II, "Lattice fields")

- Apply the general points, especially 1, 3, 4, 6.
- Definitions that belong to the theorem (the lattice, plaquettes, the Wilson measure, the family, insertions) now
  live in the definitions section of Part I. Coordinate with dalmatian through the Requests mechanism: send any
  definition of yours that the theorem needs to dalmatian, and refer to it by link from your section; keep in
  your section only what is specific to the construction.
- Rewrite statements as: words first, then a short mathematical statement.

## weimaraner (Part II, "Infinite volume")

- Apply the general points, especially 1, 3, 4, 6.
- Rewrite `prop:iv-smooth` (and every proposition in the section in the same spirit): first explain in words what
  it says, then state it in clean mathematics: short, with the properties as formulas or a short labelled list,
  not prose.
- Replace every definition that duplicates Part I by a link to Part I.

## This round

Revise your pilot section (dalmatian: Part I as restructured above, including the strategy section and the
definitions section; greyhound and weimaraner: your pilot sections). Do not write new Part II sections yet.
Coordinate definitions through the Requests mechanism of `BRIEF.md`; dalmatian has the final say on the definitions
section. Make sure the paper builds, reread the rendered PDF as a reader seeing it for the first time, then write
`paper/reports/<name>-2.md` (at most one page: what changed, what remains open, what you need decided) and **stop
and wait**. All other rules of `BRIEF.md` still hold.

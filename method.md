# How the map was made

This page explains how the dependency graph, the units and the key statements were obtained, and how far each can be trusted. All steps read the Lean source at commit [`3456e5e`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464).

## 1. The dependency graph

- **Files.** The import line at the top of every `.lean` file gives the graph of files: 9,477 files and 22,454 imports. The only external imports are Mathlib and Lean core.
- **Declarations.** We parse every declaration in the source: theorems, lemmas, definitions, structures and their fields, instances. We record its statement, its documentation, and every reference it makes to another declaration of the project. A reference counts as resolved when it names a declaration that its file can see; the namespace and `open` context are taken into account. Uses in a declaration's statement are distinguished from uses in its proof.
- **The extractor.** It was first tested on OpenAI's earlier formalization of finite-time blow-up for Navier–Stokes, against that project's compiled dependency graph:
  - it finds 99% of the references that appear in the source text, with 99% precision;
  - it misses the dependencies that Lean adds silently (instances, simplification lemmas, automation). These are rarely mathematically essential.
- **Checking which declarations are used.** The Yang–Mills release ships OpenAI's compiled record of which project declarations the seventeen headline theorems reach: 100,151 of 250,319 (`verification/declaration-usage.tsv`).
  - From source text alone, our graph found 92% of these. The code reuses short names heavily, so many references are ambiguous.
  - Using the compiled record we removed references to unused declarations, kept the ambiguous references whose target is used, and added the record's own dependency links.
  - After this correction, the set of declarations our graph reaches from the main theorem agrees with the compiled record to **99.95%** (precision 98%).
- **Reading check.** As a separate check, an AI reader listed by hand the references in 60 sampled declarations. It found the extractor's references with 88–100% recall depending on the kind of declaration. Its precision estimate (66–84%) is a lower bound, because the reader also missed many references that the compiled record proves are real.
- **Building the source.** The dependency graph was obtained without compiling the Lean. We are building the source locally to confirm that it compiles.

## 2. Coarse-graining

The graph of the 77,000 declarations the main theorem uses is far too large to read. It is reduced in four steps.

1. **Ownership.** A lemma that is reached from the main theorem only through one result is part of that result's proof. These lemmas are folded into it. This uses the dominator tree of the graph.
2. **A ladder of scales.** A result is kept at scale M if its proof, including the lemmas folded into it, has at least M lines. Scales from 100 to 3,200 lines give nested, increasingly coarse versions of the proof.
3. **Shared machinery.** About half of the proof consists of material used by many results, mostly the estimates of the renormalization group. It is grouped by the authors' work packages (the second-level folders of the source) and by similarity of use.
4. **Units.** The pieces are first grouped by an algorithm into blocks of comparable size that respect the dependency order. These blocks are then cut and merged by hand into thirty-two units along the mathematics: one unit per coherent piece of the argument (for example the block-spin step, the cluster expansion, the marginal flow, the extraction of the infinite-volume limit). Each unit consists of work packages and of chains of large results with their proofs. The assignment of every declaration to a unit is in [`data/declaration-units.tsv`](data/declaration-units.tsv).

## 3. Key statements

- **Grouping and ranking.** Declarations are grouped into mathematical statements: a result together with its single-use helpers, variants and restatements. Results are then ranked by proof size, documentation and reuse.
- **Readers.** Two independent AI readers (Claude Sonnet) read the 2,424 candidate statements in 106 packets, each packet one coherent part of the proof. For each statement a reader:
  - judged its role: main result, key result, technical lemma or bookkeeping;
  - wrote a one-sentence summary in plain mathematics.
  
  The two readers agreed well: Cohen's κ = 0.72 on "main or key" against the rest.
- **Selection.** The 989 key statements listed in the unit pages are those ranked as numbered results, together with those the readers marked as main or key.
- **Accuracy.** On the Navier–Stokes test, the readers' choices matched the statements of the human-written paper about twice as well as the graph's ranking alone. Their plain-language sentences were accurate in 14 of 15 spot checks.

## 4. Titles, parts, glossary and work items

- **Unit summaries.** Until the outline of a unit is written, its page shows an automatic summary from the Lean statements and documentation, written by an AI reader.
- **Parts.** Assigned section by section, then checked by reading the interfaces between them; see the [overview](outline/README.md).
- **Glossary.** Written by reading the definitions, their fields and their uses.
- **Work items.** Catalogued from their files.

## What to trust

| | |
|---|---|
| **Reliable** | Which declarations the main theorem uses, and the structure computed from the graph. |
| **Good, but to be checked** | The interfaces between the parts and the role of each unit. |
| **Drafts** | Plain-language summaries, glossary entries. They were written by machines from the Lean and should be read against the linked source. |

## The tools

The programs that produced these results (extraction, coarse-graining, modularity, statement selection, readers, assembly) were validated on the Navier–Stokes formalization before being applied here. They will be published in this repository.

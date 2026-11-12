# The construction of four-dimensional quantum Yang–Mills theory

> 📄 **Second draft (12 November 2026), 265 pages.** Revised after expert and independent reviews; every section has been through its review cycle. Sections may still change until they are marked *checked*. Do not cite it as a finished proof.

A manuscript, written in public, giving a complete mathematical proof of the result formalized in OpenAI's Lean proof
of the construction of four-dimensional quantum Yang–Mills theory
([source](https://github.com/yang-mills-group/OpenAI-YM-20261028), commit
[`3456e5e`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464)).
The reader we write for is a mathematician working in constructive field theory or probability. It is written in collaboration with Martin Hairer's
[humanise-yang-mills](https://github.com/hairer/humanise-yang-mills) project, a crowd-sourced effort to turn the Lean
formalization into a human-readable monograph.

- **Part I. The theorem and the architecture of its proof** (about 40 pages, with the main theorem on p. 14; Sections 8 and 9 give the exact formal statement and the constants): the setting and notation, the main
  theorem, the principal statements on which the proof rests, each stated exactly with the idea of its
  proof, and the complete deduction of the main theorem from them.
- **Part II. Proofs** (about 220 pages, Sections 10–19): the proofs of the principal propositions, with every estimate specific to the
  construction written out and standard results cited.

The PDF is [`main.pdf`](main.pdf). It is updated as sections are written; until a section is marked *checked* below, it
is a draft.

The process by which it is written and checked is described in [How this manuscript is written](PROCESS.md).

## Status

*Updated 12 November 2026. Second draft (265 pages): revised after two expert human reviews, six reviewer reports and an independent referee review; Part I rebuilt around the main theorem and the strategy of the proof; every change checked against the Lean.*

| | section | pages | status |
|---|---|---|---|
| Part I | 1. The result | 3 | reviewed; revised |
|  | 2. Definitions | 7 | reviewed; revised |
|  | 3. The main theorem | 1 | reviewed; revised |
|  | 4. Strategy of the proof | 6 | reviewed; revised |
|  | 5. The renormalization group | 8 | reviewed; revised |
|  | 6. The continuum limit, stress, phases, trace and products | 8 | reviewed; revised |
|  | 7. Deduction of the main theorem | 2 | reviewed; revised |
|  | 8. Correspondence with the formal statement | 2 | reviewed; revised |
|  | 9. Constants and order of choice | 3 | reviewed; revised |
|  | Index of notation | 1 | reviewed; revised |
| Part II | 10. Local polynomial fields | 10 | reviewed; revised |
|  | 11. Gauges and block integration | 34 | reviewed; revised |
|  | 12. Path actions and the one-loop coupling | 11 | reviewed; revised |
|  | 13. Activities and the inductive step | 38 | reviewed; revised |
|  | 14. Trajectories, marked fields and ultraviolet convergence | 43 | reviewed; revised |
|  | 15. Infinite volume and field calculus | 7 | reviewed; revised |
|  | 16. Free fields, Ward identities and rotations | 26 | reviewed; revised |
|  | 17. Phases and reconstruction | 10 | reviewed; revised |
|  | 18. The trace law and non-free comparisons | 17 | reviewed; revised |
|  | 19. Products and contact subtractions | 25 | reviewed; revised |

The correspondence between the numbered statements and the Lean declarations is in [`correspondence.tsv`](correspondence.tsv): 3,232 rows, each Lean name checked to be a declaration the main theorem uses (a few rows record statements with no formal content).

"Reviewed" means the full cycle of the [process](PROCESS.md) has run: owner, fresh-reader and truth reviews, re-check and
delivery review. A section is marked *checked* only after the project lead's reading and any changes it leads to.

## How it is written

The manuscript is written with AI models under human direction, by the process described in
**[How this manuscript is written](PROCESS.md)**. In short: the paper claims nothing the Lean does not prove; statements
are fixed first and kept short; writers propose, one editor integrates; and every statement is reviewed against the Lean
by a separate reviewer. The correspondence between the numbered statements and the Lean declarations will be published
with the manuscript.

For shorter routes into the proof, see the [rest of this repository](../README.md), which presents it at several levels
of detail, from the theorem in one page to outlines of its thirty-two units linked to the Lean; this manuscript is the most
detailed level. Corrections are
welcome as issues.

## Building

`latexmk -pdf main.tex`

## License

[Apache License 2.0](../LICENSE), as for the rest of this repository.

# The construction of four-dimensional quantum Yang–Mills theory

> 🚧 **Under construction.** This manuscript is being written. Most sections do not exist yet, and those that do may change substantially until they are marked *checked* in the [status table](#status). Do not cite it as a finished proof.

A manuscript, written in public, giving a complete mathematical proof of the result formalized in OpenAI's Lean proof
of the construction of four-dimensional quantum Yang–Mills theory
([source](https://github.com/yang-mills-group/OpenAI-YM-20261028), commit
[`3456e5e`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464)).
The reader we write for is a mathematician working in constructive field theory or probability. It is written in collaboration with Martin Hairer's
[humanise-yang-mills](https://github.com/hairer/humanise-yang-mills) project, a crowd-sourced effort to turn the Lean
formalization into a human-readable monograph.

- **Part I. The theorem and the architecture of its proof** (about 30 pages): the setting and notation, the main
  theorem, the principal statements on which the proof rests, each stated exactly with the idea of its
  proof, and the complete deduction of the main theorem from them.
- **Part II. Proofs** (about 120 pages, Sections 10–19): the proofs of the principal propositions, with every estimate specific to the
  construction written out and standard results cited.

The PDF is [`main.pdf`](main.pdf). It is updated as sections are written; until a section is marked *checked* below, it
is a draft.

The process by which it is written and checked is described in [How this manuscript is written](PROCESS.md).

## Status

| | section | status |
|---|---|---|
| Part I | 1. Introduction | to be written last |
| | 2. Wilson theory | reviewed; with the project lead for reading |
| | 3. Renormalization | reviewed; with the project lead for reading |
| | 4. The continuum limit | reviewed; with the project lead for reading |
| | 5. Stress and rotations | reviewed; with the project lead for reading |
| | 6. Phases and reconstruction | reviewed; with the project lead for reading |
| | 7. Trace and products | reviewed; with the project lead for reading |
| | 8. Main theorems | reviewed; with the project lead for reading |
| | 9. Constants and order of choice | reviewed; with the project lead for reading |
| Part II | 12. Path actions and the coupling reset | reviewed; with the project lead for reading |
| | 15. Infinite volume and field calculus | reviewed; with the project lead for reading |
| | 10, 11, 13, 14, 16–19 | statements listed (including the inputs that Sections 12 and 15 use), proofs not yet written |

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

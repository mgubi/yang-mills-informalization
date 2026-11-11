# The construction of four-dimensional quantum Yang–Mills theory

> 🚧 **Under construction.** This manuscript is being written. Most sections do not exist yet, and those that do may change substantially until they are marked *checked* in the [status table](#status). Do not cite it as a finished proof.

A manuscript, written in public, giving a complete mathematical proof of the result formalized in OpenAI's Lean proof
of the construction of four-dimensional quantum Yang–Mills theory
([source](https://github.com/yang-mills-group/OpenAI-YM-20261028), commit
[`3456e5e`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464)).
The reader we write for is a mathematician working in constructive field theory or probability.

- **Part I. The theorem and the architecture of its proof** (about 40 pages): the setting and notation, the main
  theorem, the thirteen principal propositions on which the proof rests, each stated exactly with the idea of its
  proof, and the complete deduction of the main theorem from them.
- **Part II. Proofs** (about 150 pages): the proofs of the principal propositions, with every estimate specific to the
  construction written out and standard results cited.

The PDF is [`main.pdf`](main.pdf). It is updated as sections are written; until a section is marked *checked* below, it
is a draft.

## Status

| | section | status |
|---|---|---|
| Part I | 1. Introduction | not yet written |
| | 2. Setting | checked |
| | 3. The main theorem | checked |
| | 4. The principal propositions | checked |
| | 5. Proof of Theorems A and B | checked |
| | 6. The constants and the order of their choice | checked |
| Part II | C. Effective actions: the marginal flow | checked (first part) |
| | F. Infinite volume | checked |
| | A, B, D, E, G–J and the appendix | not yet written |

## How it is written

The manuscript is written with AI models under human direction. Every statement is checked against the formal proof:
the paper claims nothing the Lean does not prove. Each section is drafted by one model, checked against the Lean by
another, and edited before it is marked *checked*. The correspondence between the numbered statements and the Lean
declarations will be published with the manuscript.

For a shorter route into the proof, see the companion repository
[**yang-mills-informalization**](https://github.com/scottnarmstrong/yang-mills-informalization), which presents it at five
levels of detail, from the theorem in one page to outlines of its thirty-two units linked to the Lean. Corrections are
welcome as issues.

## Building

`latexmk -pdf main.tex`

## License

[Apache License 2.0](LICENSE), as for the companion repository.

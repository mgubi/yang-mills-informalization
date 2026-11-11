# Yang–Mills informalization

**A map of OpenAI's Lean proof of the construction of four-dimensional Yang–Mills theory, and a natural-language outline built from it.**

In October 2026 OpenAI announced a proof, formalized in Lean 4, that four-dimensional quantum Yang–Mills theory can be constructed as a scaling limit of Wilson lattice gauge theory. On 11 November 2026 the [Yang–Mills group](https://github.com/yang-mills-group) released the Lean source ([`OpenAI-YM-20261028`](https://github.com/yang-mills-group/OpenAI-YM-20261028)) together with its [assessment](https://github.com/yang-mills-group/YM/blob/main/docs/assessment-1.pdf).

The source is about one million lines of Lean in 9,477 files. No informal proof accompanies it. The code uses arbitrary nicknames for its objects (`Treasury`, `Jewel`, `Sheet`, `sails`…), and its folders record the history of its development rather than its mathematical structure.

This repository is an attempt to make that proof readable. Using AI agents, we:

1. **map** the proof: we compute its dependency graph from the main theorem down, and divide it into eight parts and thirty-two units;
2. **outline** it in natural language, at several levels of detail, from a short account of the whole proof down to an outline of each unit with every statement linked to the Lean;
3. later, **write** a natural-language account of the proof on that skeleton.

The outline is a rough draft written by machines. Its purpose is to be checked, corrected and rewritten by people.

## The proof at five levels of detail

The repository presents the same proof at five levels of detail. Each level links down to the next, and everything from level 3 down is linked to the exact lines of the Lean source. Start at the top and go down as far as you need.

| level | | what you get |
|---|---|---|
| **1** | [**The main theorem**](statement.md) | What is proved: the Lean statement verbatim, a commentary in words, and the full statement in ordinary mathematics, with what is and is not claimed. |
| **2** | [**The proof in one reading**](summary.md) *(first draft; being edited)* | A high-level account of the whole proof: the strategy, the key mechanism of each part, what is new, where the difficulty lies. |
| **3** | [**The architecture**](outline/README.md) | The eight parts of the proof, from the lattice setting through the renormalization group to the identification as Yang–Mills; what each part hands to the next; the interface between the ultraviolet construction and the infinite-volume limit. |
| **4** | [**The units**](outline/units.md) | The proof divided into thirty-two units, mathematically coherent pieces grouped by part. Each unit has its own page with its **outline**: the propositions it proves and what it uses, the strategy, the steps as lemmas with proof sketches, where the difficulty lies, and open points. Outlines are published as they pass review; the table of units shows which are ready. |
| **5** | **The Lean, linked** | On each unit's page, below the outline: its Lean source (work packages and chains of large results) and its key statements in plain language, each linked to its exact lines. In all, 989 key statements cover the 413,000 lines the main theorem uses. |

**Reference material**, used at every level:

| | |
|---|---|
| [**Glossary**](glossary.md) | The code's nicknames (`Treasury`, `Jewel`, `Sheet`, …) translated into mathematics. |
| [**The work items**](outline/work-items.md) | The code's own decomposition of the limit theory into about one hundred stated obligations, each with what it proves. |
| [**How this was made**](method.md) | Method, checks against OpenAI's compiled record, the review rounds, and how far each level can be trusted. |
| [**Data**](data/) | Tables of the units, the unit of every declaration, and the key statements, with links. |

**How the levels were produced.**
- *Levels 1 and 3:* written by AI agents from the Lean and checked against it clause by clause.
- *Level 4, the unit outlines:* each drafted by one model (Claude Sonnet), then checked against the Lean and rewritten by a second (Claude Opus), then edited by a third (GPT).
- *Level 2:* written from the unit outlines by one model and edited by another.
- *Level 5:* the dependency graph is computed from the source and checked against OpenAI's own compiled record.

All links to Lean point to the fixed commit [`3456e5e`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464) of the released source.

## In collaboration with *Humanise Yang–Mills*

This project is carried out in collaboration with Martin Hairer's [**humanise-yang-mills**](https://github.com/hairer/humanise-yang-mills), a crowd-sourced effort to turn the Lean formalization into a human-readable monograph whose statements and arguments can be traced to a fixed version of the code.

The map, the units, the glossary and the links collected here are meant as input to that effort: a first pass at its "start at the final theorem and work backwards to a graph of mathematical results".

## The theorem, in brief

For every compact matrix group G whose Lie algebra is simple and nonabelian (for instance SU(N), N ≥ 2), the Lean proof constructs the following.

- **A family of lattice theories.** A family of Wilson lattice gauge theories on four-dimensional tori, with lattice spacings a → 0 and couplings β with β / log(1/a) converging to a positive constant. The public statement leaves the constant unspecified. The construction gives the asymptotic-freedom value 11 C_G / (24π²), where C_G is the Casimir constant.
- **Local observables.** Renormalized lattice versions of all gauge-invariant local polynomials in the curvature and its covariant derivatives.
- **Limits.** Their correlation functions converge: first as the lattice spacing tends to zero at fixed volume, along the whole sequence of spacings; then as the volume tends to infinity, along a subsequence that may be extracted from any given sequence of volumes.
- **A quantum field theory on ℝ⁴.** The limits are smooth Euclidean correlation functions on ℝ⁴ away from coincident points. They decompose into *phases*. A selected phase (in the detailed theorem, every phase) reconstructs to a relativistic quantum field theory in Minkowski space satisfying Wightman-type axioms: unique vacuum, positive energy, Poincaré covariance, locality.
- **Short-distance structure.** The theory has an operator product expansion with error bounds. The trace of its stress tensor has the short-distance law 3 dim(g)/(π⁴ r⁸ log²(1/r)), the *trace anomaly*. This shows the theory is not free: no finite combination of free-field profiles reproduces it.

**Not claimed:** uniqueness or subsequence-independence of the infinite-volume limit, clustering of the full limit, a mass gap, or agreement with perturbation theory to all orders.

## The proof at a glance

Restricted to what the main theorem actually uses, the proof is about 413,000 lines of Lean (77,000 declarations). It falls into eight parts:

| part | | what it does | share |
|---|---|---|---|
| I | Setting | Lattice tori, compact gauge groups, the Wilson measure and its lattice symmetries. | <1% |
| II | Data of the construction | Field labels and their lattice representatives; polymer activities and their norms; the Wilson *family* of spacings, volumes and couplings; reflection-positive cells. | 4% |
| III | **Ultraviolet construction** | A Balaban-type renormalization group at fixed volume: block-spin steps with a gauge fixing compatible with the lattice symmetries, Gaussian integration and determinants, cluster expansions, a background field matched to the Wilson action, the flow of the coupling, bounds on irrelevant terms, and the order in which all constants are chosen. It proves bounds uniform in the volume and convergence as the lattice spacing tends to zero. | **70%** |
| IV | Infinite volume | Extraction of a subsequence of volumes along which all correlations converge, from the uniform bounds and reflection positivity; the Euclidean axioms of the limit. | 2% |
| V | Phases and reconstruction | Decomposition of the limit into phases; Osterwalder–Schrader reconstruction of a Wightman theory for each phase. | 4% |
| VI | Symmetry | Ward identities, a conserved stress tensor, the rotation and boost actions. | 5% |
| VII | Identification as Yang–Mills | Comparison with free Maxwell fields at short distance; the trace anomaly and non-freeness; the running coupling; the operator product expansion and contact extensions. | 11% |
| VIII | Assembly | The main theorem. | 3% |

**The ultraviolet and infinite-volume parts meet in a short, clean interface.** For a fine enough lattice:
- every renormalized observable satisfies a chessboard (reflection-positivity) bound uniform in the volume;
- correlation kernels at separated points are bounded uniformly in the volume;
- at each fixed volume the kernels converge as the spacing tends to zero.

Everything after that uses only these bounds and reflection positivity. Parts IV–VI are organised in the code itself as about seventy numbered *work items*, each stating one obligation and proving it in its own file. They are a ready-made skeleton for an exposition.

## How the map was made

The dependency graph is computed from the source text. Every declaration and every reference between declarations is extracted.

We checked it against the record of which declarations the main theorem uses, compiled by OpenAI and shipped with the release (`verification/declaration-usage.tsv`). After that correction the set of declarations our graph says the proof uses agrees with the compiled record to 99.95%.

The graph is then coarse-grained in stages:
- lemmas used in only one proof are folded into it;
- results are ranked by the size of their proofs, and the shared machinery is grouped;
- the result is divided into units: mathematically coherent pieces, cut so that the dependency order is respected wherever the mathematics allows.

Two independent AI readers read every candidate statement and judged its importance (main result, key result, technical lemma, bookkeeping). They wrote a one-sentence plain-language summary of each and agreed with each other well (Cohen's κ = 0.72). Before being applied here, each step was tested on an earlier OpenAI formalization (finite-time blow-up for Navier–Stokes) whose human-written structure is known. Details and caveats are in [`method.md`](method.md).

## Status

| | |
|---|---|
| Dependency structure | Reliable: checked against OpenAI's compiled record. |
| Units | Computed from the dependency graph, then cut along the mathematics. |
| Plain-language summaries and glossary | AI-written; marked *certain*, *probable* or *tentative*. |
| Precise statement of the main theorem | In preparation. |

Corrections are welcome.

## License

This repository is licensed under the [Apache License 2.0](LICENSE). The Lean source it describes is © OpenAI, also released under the Apache License 2.0; see the [source repository](https://github.com/yang-mills-group/OpenAI-YM-20261028).

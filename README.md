# Yang–Mills informalization

**A map of OpenAI's Lean proof of the construction of four-dimensional Yang–Mills theory, and a natural-language outline built from it.**

This repository is maintained by Scott Armstrong (CNRS and Sorbonne Université; Courant Institute, New York University), in collaboration with Martin Hairer's [**humanise-yang-mills**](https://github.com/hairer/humanise-yang-mills) project ([details below](#in-collaboration-with-humanise-yangmills)). Source: [github.com/scottnarmstrong/yang-mills-informalization](https://github.com/scottnarmstrong/yang-mills-informalization). For reading on screen, an HTML version generated automatically from this repository by Massimiliano Gubinelli is at [mgubi.github.io/yang-mills-informalization](https://mgubi.github.io/yang-mills-informalization/).

In October 2026 OpenAI announced a proof, formalized in Lean 4, that four-dimensional quantum Yang–Mills theory can be constructed as a scaling limit of Wilson lattice gauge theory. On 11 November 2026 the Lean source ([`OpenAI-YM-20261028`](https://github.com/yang-mills-group/OpenAI-YM-20261028)) was released.

The source is about one million lines of Lean in 9,477 files. No informal proof accompanies it. The code uses arbitrary nicknames for its objects (`Treasury`, `Jewel`, `Sheet`, `sails`…), and its folders record the history of its development rather than its mathematical structure.

This repository is an attempt to make that proof readable. Using AI agents, we:

1. **map** the proof: we compute its dependency graph from the main theorem down, and divide it into eight parts and thirty-two units;
2. **outline** it in natural language, at several levels of detail, from a short account of the whole proof down to an outline of each unit with every statement linked to the Lean;
3. **write** a complete natural-language account of the proof on that skeleton: a [manuscript](manuscript/), written in public. **A second draft is now available** ([PDF](manuscript/main.pdf), 278 pages, draft of 13 November 2026); it is still being revised.

The outline is a rough draft written by machines. Its purpose is to be checked, corrected and rewritten by people.

> ### [Where do the ideas come from?](provenance.md)
> A component-by-component analysis of which parts of the proof follow Balaban's programme for lattice gauge theories, which follow OpenAI's 2026 papers on two-dimensional sigma models, which come from other constructive work (Gawędzki–Kupiainen, Brydges–Yau, Magnen–Rivasseau–Sénéor), which are standard, and which appear new, with the evidence on both sides. **[Read the analysis →](provenance.md)**

> ### [The manuscript: second draft](manuscript/) · [how it is written](manuscript/PROCESS.md)
> **A second draft of the full proof is now available** ([PDF](manuscript/main.pdf), 278 pages): Part I states the theorem and the architecture of its proof, Part II gives the proofs. It was written entirely by AI agents from the Lean code, and is still being revised. Statements are fixed first and kept short. Every statement is reviewed against the Lean by a separate reviewer, a fresh reader and a sentence-by-sentence truth check, and every finding is recorded with its decision. **[The process, what it has caught so far, and what it does not establish →](manuscript/PROCESS.md)**

## The proof at five levels of detail

The repository presents the same proof at five levels of detail. Each level links down to the next, and everything from level 3 down is linked to the exact lines of the Lean source. Start at the top and go down as far as you need.

| level | | what you get |
|---|---|---|
| **1** | [**The main theorem**](statement.md) | What is proved: the Lean statement verbatim, a commentary in words, and the full statement in ordinary mathematics, with what is and is not claimed. |
| **2** | [**The proof in one reading**](summary.md) | A high-level account of the whole proof: the strategy, the key mechanism of each part, what is new, where the difficulty lies. |
| **3** | [**The architecture**](outline/README.md) | The eight parts of the proof, from the lattice setting through the renormalization group to the identification as Yang–Mills; what each part hands to the next; the interface between the ultraviolet construction and the infinite-volume limit. |
| **4** | [**The units**](outline/units.md) | The proof divided into thirty-two units, mathematically coherent pieces grouped by part. Each unit has its own page with its **outline** (about three to ten pages: the propositions it proves, what it uses, the strategy, the main steps), a link to its **detailed notes** (the full account, with a proof sketch for every step), and its **Lean map**: the source and the key statements in plain language, each linked to its exact lines. In all, 989 key statements cover the 413,000 lines of source attributed to the units. |
| **5** | [**The full proof**](manuscript/) *(second draft)* | A complete manuscript ([PDF](manuscript/main.pdf), draft of 13 November 2026): Part I, the theorem and the architecture of its proof (about 45 pages, main theorem on p. 15), and Part II, the proofs (about 230 pages), written for a mathematician in constructive field theory or probability. Every section has been through its review cycle; revisions continue, by the process described in [how the manuscript is written](manuscript/PROCESS.md). |

**All in one PDF.** Levels 2–4 — the proof in one reading, the architecture and the thirty-two unit outlines — as a single [PDF](pdf/yang-mills-outline.pdf) (164 pages; [LaTeX source](pdf/yang-mills-outline.tex)). The detailed notes of all units are a separate [PDF](pdf/yang-mills-detailed-notes.pdf) (595 pages). Links to the Lean point to the exact lines, as on the web pages.

**Reference material**, used at every level:

| | |
|---|---|
| [**Where the ideas come from**](provenance.md) | Which parts of the proof follow Balaban's programme, which follow OpenAI's 2026 papers on two-dimensional sigma models, which are standard, and which appear new; component by component, with the evidence on both sides. |
| [**Glossary**](glossary.md) | The code's nicknames (`Treasury`, `Jewel`, `Sheet`, …) translated into mathematics. |
| [**The work items**](outline/work-items.md) | The code's own decomposition of the limit theory into about one hundred stated obligations, each with what it proves. |
| [**How this was made**](method.md) | Method, checks against OpenAI's compiled record, the review rounds, and how far each level can be trusted. |
| [**FAQ and evidence guide**](faq.md) | Questions about the result, its limits and what each check establishes. |
| [**Changes**](CHANGELOG.md) | Publications, corrections and changes to the mathematical account. |
| [**Data**](data/) | Tables of the units, the unit of every declaration, and the key statements, with links. |

The exact statement and the unit outlines have different review scopes. Each unit displays its current status and remaining limitations. See [how the map was made and what was checked](method.md).

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
- **Short-distance structure.** The theory has an operator product expansion with error bounds. In the selected phase, the two-point correlation of the centered stress-tensor trace, at separation $r$ along the time axis, is asymptotic to $3\dim(\mathfrak g)/(\pi^4 r^8\log^2(1/r))$. This excludes the finite Wick-type free-field profiles specified in the [exact statement](statement.md).

**Not claimed:** uniqueness or subsequence-independence of the infinite-volume limit, clustering of the full limit, a mass gap, or agreement with perturbation theory to all orders.

## The proof at a glance

The map divides the source into eight parts. The [data](data/) record the declaration assignments and size estimates; these counts should be distinguished from the declarations reached by the [seventeen verification results](method.md#1-the-dependency-graph).

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

These bounds and reflection positivity support the infinite-volume extraction. Reconstruction and identification also use thin-slab bounds, Ward identities, rotation and boost constructions, and comparison with free Maxwell fields. Parts IV–VI are organised in the code itself as about seventy numbered *work items*, each stating one obligation and proving it in its own file. They are a ready-made skeleton for an exposition.

## How the map was made

The dependency graph is computed from the compiled Lean: for every declaration, every declaration its elaborated statement and proof use, including the dependencies Lean inserts silently (2.26 million references).

We compared the declarations reached from the release's seventeen named verification results with OpenAI's compiled record: the two sets differ by 50 of about 74,000 declarations after auxiliary constants are attributed to their owners. This comparison does not check every edge or the English explanations; see [the exact scope](method.md#1-the-dependency-graph).

The graph is then reduced in steps:
- lemmas used in only one proof are folded into it;
- results are ranked by the size of their proofs, and the shared machinery is grouped;
- the result is divided into units: mathematically coherent pieces, cut so that the dependency order is respected wherever the mathematics allows.

Two independent AI readers read every candidate statement and judged its importance (main result, key result, technical lemma, bookkeeping). They wrote a one-sentence plain-language summary of each. Their importance labels had Cohen's κ = 0.72; this measures agreement on those labels, not mathematical correctness. Before being applied here, each step was tested on an earlier OpenAI formalization (finite-time blow-up for Navier–Stokes) whose human-written structure is known. Details and caveats are in [`method.md`](method.md).

## Status

| | |
|---|---|
| Dependency structure | Computed from the compiled Lean; reachable sets for seventeen named results compared with OpenAI's record ([scope and limits](method.md#1-the-dependency-graph)). |
| Units | Computed from the dependency graph, then cut along the mathematics. |
| Plain-language summaries and glossary | AI-written. Glossary readings are marked *certain*, *probable* or *tentative*; these labels do not apply to every summary and are separate from unit review status. |
| Precise statement of the main theorem | [Published](statement.md): the public theorem compared definition by definition with the Lean. Some additional construction clauses remain summarized; see [review scope](method.md#statement-and-explanation-checks). |
| Unit outlines | All 32 are published; each is marked *draft*, *checked* or *edited*. See the [status meanings](method.md#unit-outline-status) and each unit's limitations. |

[Report a correction](https://github.com/scottnarmstrong/yang-mills-informalization/issues): include the page and heading, quote the sentence, and give a proposed correction or a Lean source link.

## Compiled Lean files

To load the pinned Lean source with precompiled project files, download the [compiled build of commit `3456e5e`](https://github.com/scottnarmstrong/yang-mills-informalization/releases/tag/lean-build-3456e5e). The commands below check the download checksum and reuse the compiled files; they do not rebuild the proof from source:

```sh
git clone https://github.com/yang-mills-group/OpenAI-YM-20261028 && cd OpenAI-YM-20261028
git checkout 3456e5e75cf8d4cd558955a5c7638fba2d68f464
lake exe cache get                                   # Mathlib, from the official cache
gh release download lean-build-3456e5e -R scottnarmstrong/yang-mills-informalization -p 'ym-build-*' -p SHA256SUMS
cat ym-build-3456e5e.tgz.part0 ym-build-3456e5e.tgz.part1 > ym-build-3456e5e.tgz && sha256sum -c SHA256SUMS
lake unpack ym-build-3456e5e.tgz
lake build WilsonReference WilsonConstruction        # all targets up to date: nothing is recompiled
```

The archive is 2.2 GB, in two parts, and unpacks to 8.8 GB. The [release notes](https://github.com/scottnarmstrong/yang-mills-informalization/releases/tag/lean-build-3456e5e) also give a download with `curl`.

## How to cite

Use the metadata in [CITATION.cff](CITATION.cff). Include the revision of this repository you consulted, the unit and result identifiers when relevant, and the fixed Lean source commit [`3456e5e75cf8d4cd558955a5c7638fba2d68f464`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464). The citation describes this map and outline; cite the Lean source separately when referring to the formal proof.

## License

This repository is licensed under the [Apache License 2.0](LICENSE). The Lean source it describes is © OpenAI, also released under the Apache License 2.0; see the [source repository](https://github.com/yang-mills-group/OpenAI-YM-20261028).

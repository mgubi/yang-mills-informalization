# Questions about the result and the evidence

The [exact statement](statement.md) distinguishes the public theorem from additional properties of its construction. The [method page](method.md) describes the checks and their limits.

## Does this prove a mass gap?

No mass gap is proved. The public theorem gives a spectrum condition and a unique invariant vacuum in a selected phase, but neither supplies a positive lower bound on nonzero excitation energies. The detailed construction's low-energy and heat bounds are polynomial; they do not establish either a gap or gaplessness. See [what is not claimed](statement.md#4-what-is-not-claimed) and [the reconstruction account](summary.md#part-v-phases-and-relativistic-reconstruction).

## Is this a solution of the Clay Millennium problem?

It does not establish the full Yang–Mills existence and mass-gap claim discussed in the Jaffe–Witten formulation: the mass gap is absent from its conclusions. It constructs theories with the properties specified on the [statement page](statement.md#public-theorem), subject to the qualifications there. The [comparison with Jaffe–Witten](statement.md#53-the-jaffewitten-formulation-jw) explains the differences; this repository does not certify a prize claim.

## What makes the constructed theory Yang–Mills?

Its mixed Euclidean correlations come from Wilson lattice gauge theories for the specified compact matrix group, with local gauge-invariant insertions and logarithmically growing bare inverse coupling. The construction identifies local fields with quotients of curvature-polynomial labels, constructs a normalized stress tensor and proves short-distance comparison with free Maxwell fields. Some of these identifications belong to the construction rather than the public theorem itself. See [the objects and their interpretation](statement.md#1-the-objects) and [the additional conclusions](statement.md#detailed-theorem).

## What is new here?

The mathematical result presented here is the construction with the precise limits, reconstruction, OPE and trace properties in the [statement](statement.md). The [summary's discussion of earlier work](summary.md#relation-to-earlier-work-and-where-the-difficulty-lies) describes features of this argument, including the common family of observables, fixed-volume convergence and recovery of continuous symmetry. These descriptions are not a systematic literature comparison or a claim of priority for each ingredient. This repository's contribution is an explanatory map of the released formal proof; the [full manuscript](manuscript/) is under construction. For a component-by-component account of which parts of the proof follow Balaban's programme, which follow OpenAI's 2026 papers on two-dimensional sigma models, which are standard and which appear new, see [Where the ideas come from](provenance.md).

## Why is there only a subsequence of volumes?

The infinite-volume argument uses compactness to extract a convergent subsequence from any prescribed increasing sequence of volume indices. It does not show that different extractions give the same limit. By contrast, at each admissible fixed volume the ultraviolet limit uses the whole construction-chosen sequence of spacings. See [ordered convergence](statement.md#ordered-convergence), [IV.1](outline/units/IV-1.md) and [the summary](summary.md#part-iv-infinite-volume).

## Why are there phases, and how is the selected phase chosen?

The lattice limit is a mixed correlation hierarchy, represented as an average over a compact space of phases with a probability measure of full support. In the construction the selected phase is chosen only to have a one-dimensional ground-state space; no trace condition is imposed in that choice. The public theorem reconstructs that selected phase, while the detailed theorem reconstructs every phase. Neither equality of the phases nor uniqueness of the infinite-volume construction follows from the unique vacuum in each reconstructed theory. See [phase selection](statement.md#continuum-hierarchy), [V.1](outline/units/V-1.md) and [V.3](outline/units/V-3.md).

## What exactly does “not free” mean?

The selected two-point function of a centered degree-4 field on the time axis has a positive $r^{-8}\log^{-2}(1/r)$ leading law. No finite sum of the products of mass-shell kernels specified in [Definition 1.15](statement.md#wick-profiles) agrees with that function throughout any interval next to zero. This does not exclude continuous-mass generalized free fields, infinite sums or every composite of Gaussian fields. The detailed construction supplies additional Wick and Maxwell tests with their own hypotheses; see [the trace test](statement.md#trace-test) and [D9](statement.md#detailed-theorem).

## Why correlations rather than a measure on connections?

The constructed continuum objects are correlation functions away from coincident points, their phase decomposition and reconstructed relativistic fields. The detailed theorem also supplies distributional extensions across coincident points, without asserting uniqueness of those extensions. It does not construct a continuum probability measure on connections; this is a limit of what was proved, not a claim that such a measure cannot exist. See [the nonclaims](statement.md#4-what-is-not-claimed) and [OPE and contact extensions](summary.md#operator-product-expansion-and-contact-extensions).

## Does the OPE agree with perturbation theory to all orders?

No such agreement is proved. For every finite truncation the theorem gives coefficient and remainder bounds on separated configurations, with one coefficient system for the mixed state and every phase and for all spectators. The small-radius threshold can depend on the spectator labels and separation parameters. Coefficient uniqueness and convergence of the infinite expansion are not asserted; see [the exact OPE](statement.md#operator-product-expansion) and [VII.4](outline/units/VII-4.md).

## What was checked by Lean, and what by people or AI?

Lean's kernel checks formal proof terms against formal types; the released verification log records type, axiom and kernel-replay checks for [seventeen named results](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/verification/joint-headlines.txt). The statement page, summaries, glossary and outlines are AI-assisted interpretations and explanations, with the review scopes described in [method.md](method.md#statement-and-explanation-checks). The Yang–Mills group's [assessment](https://github.com/yang-mills-group/YM/blob/55ba9fc36293b3f4d52c6b1f813169a0be76ee98/docs/assessment-1.pdf) is a separate account of its validation. Collaboration on this repository does not mean that every outline has received an independent human proof review.

## Is the English statement faithful to the Lean?

The public theorem on [statement.md](statement.md) was transcribed and compared definition by definition with the pinned Lean, including quantifiers, field spaces and the order of choices. This is a documented interpretation check, and the page exposes both the formal text and its [source correspondence](statement.md#correspondence-with-the-lean-source) for inspection. The additional construction clauses D1–D16 have a narrower review scope: D3 and D5–D15 were not all unfolded to the last definition. A Lean check of the proof does not itself verify any English transcription.

## How much should I trust an edited outline?

“Edited” records a third round of AI review of the exposition after drafting and source checking. It does not mean every subsidiary analytic estimate was independently read or that the outline is a complete informal proof. Each unit's “What remains unexplained” section states local limits, and a draft outline does not imply its formal theorem is unproved. See [status meanings](method.md#unit-outline-status), the [unit index](outline/units.md) and the [summary's incomplete steps](summary.md#steps-whose-informal-account-is-incomplete).

## Does the dependency graph verify the explanations?

No: it records declaration references in elaborated types and proof terms. Agreement with OpenAI's record tests the reachable sets for the seventeen named results, not every edge, the mathematical role of each reference or an English proof sketch. Cohen's κ = 0.72 concerns agreement between readers' importance labels; it is not a correctness score. See [graph scope](method.md#1-the-dependency-graph) and [statement selection](method.md#3-key-statements).

## How can I check the result myself?

For a mathematical clause, the [clause-to-explanation guide](statement.md#clause-to-explanation-guide) connects its exact definition to outline results, the summary and pinned Lean references. For formal verification, [method.md](method.md#source-compilation-and-kernel-checking) gives a fresh-checkout build and the released type, axiom and replay checks. The [compiled release](README.md#compiled-lean-files) helps load and explore the source, but reusing those files is not an independent compilation. Reading an outline and rebuilding a formal proof answer different questions, as the table below explains.

## How do I report a mismatch or cite what I read?

[Open an issue](https://github.com/scottnarmstrong/yang-mills-informalization/issues) with the page and heading, the sentence in question, and a proposed correction or pinned Lean link. Include the repository revision and unit or result identifier so that the wording can be recovered after later edits. Use [CITATION.cff](CITATION.cff) and the [citation guidance](README.md#how-to-cite); [change notes](CHANGELOG.md) record reader-facing corrections.

## What each check establishes

| Check | What it establishes | What it does not establish |
|---|---|---|
| [Lean kernel check of the source](method.md#source-compilation-and-kernel-checking) | The released log records that the reachable proof terms for seventeen named results passed replay and used only the reported standard axioms. | That their formal definitions capture every intended physical requirement, or that English descriptions are correct. |
| [Statement page compared with Lean](method.md#statement-and-explanation-checks) | A definition-by-definition interpretation of the public theorem, with explicit quantifiers and nonclaims. | An infallible translation or an equally detailed unfolding of every extra construction clause. |
| [Outlines compared with Lean](method.md#unit-outline-status) | The review described by each unit's status, with source references and local limitations. | A complete independent human proof review or a finished informal proof of every estimate. |
| [Dependency graph compared with OpenAI's record](method.md#1-the-dependency-graph) | A comparison of reached declaration sets for the same seventeen roots, after the stated attribution of auxiliaries. | Verification of every edge, every unit allocation or any natural-language explanation. |
| [Compiled build](README.md#compiled-lean-files) | Precompiled project files for loading the pinned source; the checksum tests the download against the published digest. | An independent source rebuild merely by loading the files or finding build targets up to date. |

[Repository](README.md) · [Exact statement](statement.md) · [Method](method.md)

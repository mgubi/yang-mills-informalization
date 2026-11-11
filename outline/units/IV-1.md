# IV.1. Infinite volume: extraction of a subsequence and the Euclidean axioms of the limit

*Part IV — Infinite volume.* 7,444 lines of Lean in 1,049 declarations used by the main theorem.

*The outline of this unit is in preparation.*

**Builds on:** [I.1](I-1.md), [II.1](II-1.md), [III.16](III-16.md), [III.10](III-10.md), [III.1](III-1.md).

**Used by:** [VIII.1](VIII-1.md), [VI.2](VI-2.md), [VI.1](VI-1.md), [VII.4](VII-4.md), [III.11](III-11.md), [V.1](V-1.md), [VII.2](VII-2.md), [III.13](III-13.md), [III.10](III-10.md), [III.6](III-6.md), [V.2](V-2.md), [V.3](V-3.md), [III.12](III-12.md), [VII.6](VII-6.md), [II.1](II-1.md), [VII.1](VII-1.md), [VII.3](VII-3.md), [III.8](III-8.md), [III.4](III-4.md), [VII.5](VII-5.md), [III.2](III-2.md), [III.3](III-3.md), [III.15](III-15.md), [III.7](III-7.md), [III.14](III-14.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| work package [`YM/Extraction/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction), with [`YM/Slice/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice), [`YM/Cells/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells) | 4,642 |
| work package [`YM/Euclid/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid) | 1,079 |
| work package [`YM/Dash/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash) | 530 |
| work package [`YM/Next/EXTRACTION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION) | 249 |
| work package [`YM/Lane/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lane) | 101 |
| work package [`YM/Further/DENSE_MIXED_KERNELS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/DENSE_MIXED_KERNELS) | 12 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **IV.1.1** [`Interior`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L109-L113) *(numbered result)* — A structure packaging a measurable local assignment on a set of sites with a uniform bound independent of the continuum limit.
- **IV.1.2** [`enumerate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L74-L99) — The copy map for a cell sends the base chamber into the chamber of that cell.
- **IV.1.3** [`existence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Flood.lean#L110-L128) *(numbered result)* — For a fold-closed predicate satisfied by some assignment, some constant assignment also satisfies it.
- **IV.1.4** [`Hierarchy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L141-L148) *(key result)* — A bundle of Euclidean-covariance-type properties (axioms) of a Schwinger-function table, required before establishing continuous rotation invariance.
- **IV.1.5** [`awake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Slew.lean#L26-L58) *(key result)* — Given a live, suitably regular family of distributions with enough derivatives, there is a smooth table matching it on the regular part.
- **IV.1.6** [`pathway`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Slide.lean#L89-L101) *(numbered result)* — If a function along a sequence of translates has bounded root-test at both endpoints and all are interior, then it is bounded at all intermediate offsets.
- **IV.1.7** [`fold_both`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Polar.lean#L94-L102) *(key result)* — Cauchy–Schwarz-type fold estimate: the square of the root power of a mixed assignment is bounded by the product of the two homogeneous ones.
- **IV.1.8** [`tiles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Chess.lean#L80-L105) *(main result)* — Chessboard estimate: the root power of a product of cell-localized functions is bounded by the product of single-function root tests.
- **IV.1.9** [`physical`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D03.lean#L117-L138) *(numbered result)* — For large period and small mesh, evaluating a shifted test function at lattice cells after a one-slot jump equals evaluating at the translated point, with no wrapping.
- **IV.1.10** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D03.lean#L244-L249) *(key result)* — Forward differences in a single slot are controlled in the ordered extraction.
- **IV.1.11** [`step_positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Positive.lean#L81-L91) *(key result)* — For nonnegative β, the temporal heat-kernel transfer step of the Wilson lattice is a nonnegative (positive-type) kernel.
- **IV.1.12** [`enough`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Present.lean#L76-L111) *(key result)* — For a reflection-symmetric brick tiling, the p-th root-power of the norm of the column moment is bounded by the common root-test bound A of the function and its reflection.
- **IV.1.13** [`reflected_positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Reflection.lean#L98-L114) *(key result)* — The Wilson lattice measure is reflection positive across a seam for nonnegative β.
- **IV.1.14** [`laws`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L21-L24) *(key result)* — For nonnegative coupling, the cell reflection-positivity seam property holds for all sizes.
- **IV.1.15** [`seamless`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L81-L84) *(key result)* — For a family satisfying the makes condition, the torus tiling at every side and coupling scale has the seam property.
- **IV.1.16** [`assembles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Harvest.lean#L62-L65) *(main result)* — An ordered extraction with point limits, smooth and capped, yields a full Euclidean-positive hierarchy of limiting correlation functions.
- **IV.1.17** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean#L160-L180) *(key result)* — The D05 requirement holds: the extraction order's evaluation, with tie handling and cofinal sequences, is established for the construction.
- **IV.1.18** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D04.lean#L212-L240) *(key result)* — Transfer from match rents to the all-shot monitor holds, discharging a required hypothesis for the extraction.
- **IV.1.19** [`uniqueLift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Union.lean#L62-L83) *(key result)* — Compatible finite-degree linear maps lift uniquely to a linear map on the union (colimit) space.
- **IV.1.20** [`powering`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Calendar.lean#L72-L102) *(key result)* — Shifting a length l of time between two bricks changes the moment by at most the product of column bounds times l/r.
- **IV.1.21** [`organized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Ordered.lean#L68-L115) *(numbered result)* — For well-separated time points, cyclic gap arithmetic reorganizes the product of column moments with a bound in terms of the K_i.
- **IV.1.22** [`primitive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Difference.lean#L90-L145) *(key result)* — Lattice correlation functions have a Lipschitz bound for a single-point shift in one axis, with constant given by a product of root-test bounds divided by the separation scale r.
- **IV.1.23** [`completed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L181-L214) *(key result)* — Centered bounds on lattice data give Lipschitz equicontinuity of the transfer from the exact cell estimates.
- **IV.1.24** [`crops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Held.lean#L136-L137) *(key result)* — From centered bounds on the projected data one can extract a subsequence with raw continuum limits.
- **IV.1.25** [`compat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D06.lean#L98-L135) *(key result)* — For a smooth symmetric table with real spin and a differential plan with derivatives and inclusions, the plan is compatible with orientation.
- **IV.1.26** [`Valid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L98-L118) *(numbered result)* — A validity predicate bundling conditions on a common aligned series of coefficients for detecting sets at each weight.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

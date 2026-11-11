# III.1. The block-spin step and the symmetric gauge fixing

*Part III — Ultraviolet construction (renormalization group).* 4,219 lines of Lean in 693 declarations used by the main theorem.

**What this unit contains** (automatic summary from the Lean statements and documentation; the outline of its proof is in preparation).

One coarse-graining step (`RG.StepData`, `RG.Patch`); axial gauge exists with few non-identity edges (`Axial.existence`); unique minimizing frame (`RG.frame_unique`); patch transitions glue up to one global left multiple (`Branch.align`); a kernel with prescribed penalty has uniform branch thresholds (`Axial.viable`).

Synchronizing a patch with a single gauge element, gauge choices on a cover with edge/chord sums bounded by the port cost (`Pressure.synchronized`, `Pressure.planting`), and the predicted-versus-actual plaquette deviation bound `Pressure.qdc` of order 1/L^2.

**Builds on:** [I.1](I-1.md), [III.16](III-16.md), [III.2](III-2.md).

**Used by:** [III.10](III-10.md), [III.4](III-4.md), [III.11](III-11.md), [III.13](III-13.md), [III.12](III-12.md), [III.2](III-2.md), [III.7](III-7.md), [III.5](III-5.md), [III.6](III-6.md), [III.9](III-9.md), [VII.2](VII-2.md), [III.14](III-14.md), [II.1](II-1.md), [III.15](III-15.md), [VII.6](VII-6.md), [III.3](III-3.md), [VIII.1](VIII-1.md), [VII.4](VII-4.md), [III.8](III-8.md), [VII.1](VII-1.md), [V.2](V-2.md), [IV.1](IV-1.md), [II.2](II-2.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| work package [`YM/Pressure/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure), with [`YM/PREC/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC), [`YM/PCalc/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc) | 1,551 |
| work package [`YM/RG/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG) | 1,142 |
| work package [`YM/Branch/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch) | 968 |
| work package [`YM/Exterior/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Exterior) | 283 |
| work package [`YM/Tree/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree) | 178 |
| work package [`YM/Push/CORRECTED_COLUMNS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/CORRECTED_COLUMNS) | 36 |
| work package [`YM/Planned/CALIBRATED_MIXED_HISTORY/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/CALIBRATED_MIXED_HISTORY) | 20 |
| work package [`YM/UVNext/ANNULUS_COMPARISON/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/ANNULUS_COMPARISON) | 18 |
| work package [`YM/FullVolume/Train/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Train) | 13 |
| work package [`YM/SectorTools/ACTUAL_SCALAR_LEDGER/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/ACTUAL_SCALAR_LEDGER) | 8 |
| work package [`YM/RG17/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17) | 2 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **III.1.1** [`BudgetPoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L125-L136) *(numbered result)* — A record of budget parameters used for masks and payloads.
- **III.1.2** [`KernelChoices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L37-L45) *(numbered result)* — A fixed collection of kernel choices made once, with no measurability assumed.
- **III.1.3** [`Clip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139-L146) *(numbered result)* — A record of clipping parameters per stage.
- **III.1.4** [`Stage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L45-L61) *(numbered result)* — A record of stage-indexed parameter choices including a source cone cap.
- **III.1.5** [`Patch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L29-L34) *(numbered result)* — A structure recording a kernel frame and finite tags on a patch.
- **III.1.6** [`StepData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L22-L25) *(numbered result)* — Data describing one coarse-graining renormalization step from a fine lattice to a coarse lattice.
- **III.1.7** [`Calendar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L64-L73) *(numbered result)* — A record of fixed numerical scales and hatted coupling forming a schedule.
- **III.1.8** [`Moves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L87-L96) *(numbered result)* — A record describing transports of whole labels in the signed convention.
- **III.1.9** [`Branches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185) *(numbered result)* — A bundle of hypotheses that kernel and frame choices must satisfy on a patch.
- **III.1.10** [`existence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L80-L105) *(key result)* — For any configuration there is a point in a slab whose axial-gauge transport leaves at most 4·(number of axes)·(layers)·(faces) nonidentity edges.
- **III.1.11** [`Directions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L115) *(numbered result)* — Defines the space of link-increment directions (colors per oriented edge) on a finite lattice of side n.
- **III.1.12** [`Rep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L165-L171) *(numbered result)* — A denotational representation of histories with support data.
- **III.1.13** [`Regular`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L154-L161) *(numbered result)* — A predicate that a function on configurations is cylindrical, Borel and gauge-invariant with a consistent germ.
- **III.1.14** [`Fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L97-L118) *(numbered result)* — A predicate saying a realized trajectory satisfies the numerical constraints required at each stage of the schedule.
- **III.1.15** [`Bounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L173-L185) *(numbered result)* — A predicate collecting weight and summability bounds on path data in terms of clip, sigma, C, Lambda.
- **III.1.16** [`align`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L232-L272) *(key result)* — There is a gauge-dependent cutoff d such that, if transition data are within d of the identity, any two solutions of the patch-gluing system differ by a single global left multiple.
- **III.1.17** [`frame_unique`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Uniform.lean#L18-L56) *(key result)* — For small enough frame cutoff there is a unique minimizing group element for any patch and configuration using the minimizer.
- **III.1.18** [`viable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L137-L142) *(key result)* — For any gauge and positive penalty there is a kernel choice with that penalty such that every patch satisfies the branch conditions with thresholds independent of P, L, J.
- **III.1.19** [`frames_channel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Transport.lean#L77-L94) — Frame mass and frame of a pulled-back configuration equal those of the original with reoriented tag and offset composition.
- **III.1.20** [`History`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L204-L206) *(numbered result)* — The structure of all represented renormalization histories under one blocking schedule.
- **III.1.21** [`Selected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L234-L240) *(numbered result)* — A bundle of endpoint history cuts for the renormalization-group scheme.
- **III.1.22** [`Teller`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L89-L96) *(numbered result)* — A record of prices and inputs supplied in a single call, with prices fixed before L.
- **III.1.23** [`Tube`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L94-L99) *(numbered result)* — A record of tube parameters attached to a step datum.
- **III.1.24** [`PostCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L81-L89) *(numbered result)* — A record bundling the post-L cost quantities produced for a given supply.
- **III.1.25** [`Funds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L101-L109) *(numbered result)* — A predicate collecting estimate fields for a tube around a single oriented sector step.
- **III.1.26** [`LocalRatio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L28-L38) *(numbered result)* — A predicate collecting local ratio bounds for the chart-based ratio of block integrals.
- **III.1.27** [`synchronized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Gauge.lean#L135-L162) *(key result)* — On any patch there is a single group element such that the frame is uniformly close to any given gauge H, with error bounded by edge and face energies.
- **III.1.28** [`planting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L72-L122) *(key result)* — For any usable configuration there are gauge choices on a cover with edge and chord sums bounded by constants times the port cost, uniformly in the sizes.
- **III.1.29** [`Directed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L26-L36) *(numbered result)* — An adapter structure passing dependent estimates through to the actual transfer stack, with common constants.
- **III.1.30** [`qdc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L210-L252) *(key result)* — For usable block-spin predictions, there is a uniform constant bounding predicted and actual plaquette chord deviations by fuel plus a port-energy term scaled by 1/L^2.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

# III.3. Free lattice kernels and covariances

*Part III — Ultraviolet construction (renormalization group).* 8,998 lines of Lean in 1,377 declarations used by the main theorem.

**What this unit contains** (automatic summary from the Lean statements and documentation; the outline of its proof is in preparation).

Line and box filters, scaled Laplacian denominator, decay of free (Gaussian) kernels on cubes, and uniform constants fixed before the length parameter (`Next.Free.*`). Inputs for the Gaussian part of the RG step.

**Builds on:** [I.1](I-1.md), [III.16](III-16.md), [III.1](III-1.md), [III.6](III-6.md), [II.1](II-1.md), [III.10](III-10.md), [IV.1](IV-1.md), [III.2](III-2.md).

**Used by:** [III.2](III-2.md), [III.13](III-13.md), [III.6](III-6.md), [III.11](III-11.md), [III.10](III-10.md), [III.4](III-4.md), [III.14](III-14.md), [VII.2](VII-2.md), [III.9](III-9.md), [VII.1](VII-1.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| work package [`YM/Next/FREE_KERNELS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS) | 5,450 |
| work package [`YM/MultiNext/SIGNED_SOURCE_CONTINUATION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION) | 1,674 |
| work package [`YM/Further/FREE_COVARIANCE_KP/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP) | 924 |
| work package [`YM/UVNext/PRICED_KERNELS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS) | 533 |
| work package [`YM/Further/CORRECTED_LIFT_COEFFICIENTS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/CORRECTED_LIFT_COEFFICIENTS) | 248 |
| work package [`YM/Push/CUTOFF_PROJECTORS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/CUTOFF_PROJECTORS) | 139 |
| work package [`YM/ProofPorts/GRID_RENEWED_RESERVES/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProofPorts/GRID_RENEWED_RESERVES) | 30 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **III.3.1** [`Flight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signal.lean#L22-L29) *(numbered result)* — A structure packaging one orientation of a hop with two stage indices.
- **III.3.2** [`capital`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/TownHall.lean#L31-L90) *(numbered result)* — Under a drift hypothesis, the first k binomial pieces and the tail are bounded with powers of inverse L, polynomial in size.
- **III.3.3** [`cancel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Weighted.lean#L120-L147) *(numbered result)* — For a weighted-graded function, mixed derivatives at the origin vanish when total order is within the degree and each input has lower weight than its grade requires.
- **III.3.4** [`principal_plank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L162-L196) *(numbered result)* — A lower bound on the norm of a plank factor at real argument, of exponential form in the ratio M/L.
- **III.3.5** [`strings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Safeguard.lean#L148-L177) *(numbered result)* — If a radial endpoint configuration with small increments is healthy at threshold τ, then all rescaled configurations along the ray are healthy.
- **III.3.6** [`locale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Averaging.lean#L84-L114) *(numbered result)* — A positive-degree homogeneous family splits into a Taylor radial jet plus a gradient of a homogeneous function.
- **III.3.7** [`pilot_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Docked.lean#L103-L110) *(numbered result)* — A per-alias decay bound for the pilot kernels on the cube.
- **III.3.8** [`frontier`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L99-L140) *(numbered result)* — There exist constants such that for large scale ratio the strip estimate holds and, when mass is small relative to L squared, the funds condition holds with uniform constants.
- **III.3.9** [`wiped`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/PMOM.lean#L43-L61) *(key result)* — For a local gauge-invariant function vanishing on test jets to order b, mixed derivatives at the identity of total order up to b with screened direction constraints vanish.
- **III.3.10** [`retained_support`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L134-L145) *(main result)* — For any kernel choice there exist uniform catalog constants such that for every sheet and compatible levels, a horizon with the rack, retention, sufficiency and sworn properties exists, with prices fixed before the length.
- **III.3.11** [`complete_roll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Tori.lean#L109-L157) *(key result)* — If a horizon suffices for the map prices, then the all-period output holds at every scale step from c to f along the block structure.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

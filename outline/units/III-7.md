# III.7. Matching the Wilson energy to fourth order

*Part III — Ultraviolet construction (renormalization group).* 19,945 lines of Lean in 3,533 declarations used by the main theorem.

**What this unit contains** (automatic summary from the Lean statements and documentation; the outline of its proof is in preparation).

Path datum whose main term agrees with the Wilson energy to fourth jet order, uniformly in volume (`Stationary.launch`), cycle-to-coboundary lifts (`Stationary.wall_lift`), coercivity certificate of the force-kernel operator, uniform bound of the joint inverse (`WilsonBulk.uniform_backing`). This is the marginal (leading-term) part of the RG map.

**Builds on:** [III.1](III-1.md), [I.1](I-1.md), [III.16](III-16.md), [III.6](III-6.md), [III.10](III-10.md), [V.2](V-2.md), [VI.1](VI-1.md), [III.2](III-2.md), [V.1](V-1.md), [IV.1](IV-1.md).

**Used by:** [VII.2](VII-2.md), [III.2](III-2.md), [III.13](III-13.md), [III.4](III-4.md), [III.14](III-14.md), [VII.1](VII-1.md), [III.12](III-12.md), [VII.4](VII-4.md), [III.11](III-11.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| work package [`YM/Next/STATIONARY/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY) | 19,391 |
| work package [`YM/UVExtension/Projection/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Projection) | 286 |
| work package [`YM/WilsonBulk/Spectral/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral) | 215 |
| work package [`YM/UVExtension/Reward/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward) | 30 |
| work package [`YM/UVExtension/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension) | 23 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **III.7.1** [`gathered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/LocalOracle.lean#L312-L348) *(key result)* — A summable family of local analytic functionals with weighted bounds sums to an analytic function with uniformly controlled jet bounds, dimension-free.
- **III.7.2** [`vanish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L611-L625) *(key result)* — For simple gauge group and distinct axes with vanishing leap-tip coefficient, the relevant data function vanishes to order four along the axes.
- **III.7.3** [`withdrew`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Ward.lean#L647-L697) *(key result)* — Uniform lift conditions transfer along a sequence of analytic forces tending to zero, except for ray vanishing orders.
- **III.7.4** [`frame`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Chart.lean#L421-L435) *(numbered result)* — The Army property is preserved on composing with frame evaluation components.
- **III.7.5** [`wedlock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Vertex.lean#L371-L379) *(key result)* — There exists a family of kernels with exponentially decaying bounds and analytic rays that realizes the prescribed generating data.
- **III.7.6** [`wall_lift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Koszul.lean#L571-L587) *(key result)* — A cycle-valued leg with cost and jet bounds is a coboundary of a leg one degree higher with controlled cost, preserving vanishing on the wall.
- **III.7.7** [`carry_plan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L255-L278) *(key result)* — Under convergence hypotheses, the limiting row-scape of a sequence of kernels coincides with the carried row from the limit object at real momenta.
- **III.7.8** [`allleg`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/ManyLegs.lean#L533-L549) *(key result)* — For arity at least three, a contractible family of cost-bounded functions is the curl of a family of cost-bounded potentials, with cost loss by a constant factor.
- **III.7.9** [`strokes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Pathways.lean#L193-L201) *(numbered result)* — A cost-bounded picture admits a real, color-invariant Laurent representation with controlled cost at fixed arity.
- **III.7.10** [`colors_align`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Ward.lean#L192-L216) *(key result)* — For an analytic function with controlled recorded data and a shaded picture and skin, the series expansion matches the function to the stated aperture order.
- **III.7.11** [`scene_gate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L58-L61) *(key result)* — For a given roll and price data there exists a budget gap parameter, from the stationary scene.
- **III.7.12** [`tribute`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L177-L202) *(key result)* — Near zero, the completed Hessian determinant is positive and the Haar-to-counting Jacobian ratio is controlled inside the exponential patches.
- **III.7.13** [`stadium`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/RealGap.lean#L647-L664) *(key result)* — For self-adjoint-symmetric tactics with bounded serial norms, the carried matrix of the force operator is stable with a uniform constant on real momenta.
- **III.7.14** [`filing_ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L231-L234) *(numbered result)* — The filing data are firm with controlled bounds and vanish to order four along axes, and are recorded against the loop series at order zero.
- **III.7.15** [`launch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L270-L305) *(key result)* — Given input bed data, there is a path datum whose main term agrees to fourth jet order with the Wilson energy and satisfies bounds, uniformly for large volumes.
- **III.7.16** [`assembly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L561-L595) *(key result)* — Real-analytic extensions with jet control can be matched, up to order-five error, by classical emitted data built from atoms with wall bounds, uniformly along large volumes.
- **III.7.17** [`extra_curves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/SoftTransfers.lean#L59-L103) *(key result)* — For atom families with wall bounds, classical curvature terms from cubic and quartic vertices are realized by pictures with uniform bounds enabling the induction.
- **III.7.18** [`quoting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L67-L96) *(key result)* — A grant bound yields footprint bounds for bounded plane-density performances, used for flux, transition and ceiling caps.
- **III.7.19** [`drift_tip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L789-L818) *(key result)* — For a simple gauge group and screened data, the alpha payment of the profitable cue vanishes for each color index.
- **III.7.20** [`post_cert`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/ComplexGap.lean#L330-L353) *(key result)* — Under weighted two-end budget conditions, the force-kernel operator built from the tactics satisfies a freezing (coercivity) certificate with constants independent of the patch.
- **III.7.21** [`uniform_backing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Backing.lean#L54-L66) *(key result)* — For beds with strip metric and floors, the joint inverse is uniformly bounded in the strip norm with constants depending only on the level, and inverts the completed matrix.
- **III.7.22** [`pouring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L17-L52) *(key result)* — For every simple gauge group, the fluent (annulus) certificate holds.
- **III.7.23** [`honored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L25-L68) *(key result)* — Given inputs, one can choose convergence widths and constants independent of later kinetic data so that the grant-type bounds hold for all patches and path data along sequences of sides tending to infinity.
- **III.7.24** [`setWest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/VertexWeights.lean#L357-L382) *(key result)* — For bounded loop data, there are constants such that for all small patches and admissible families, one can construct order-3 and order-4 weighted texts bounding the stationary expansion with explicit constants.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

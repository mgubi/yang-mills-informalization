# III.9. The marginal flow: the running coupling and its reset

*Part III — Ultraviolet construction (renormalization group).* 7,215 lines of Lean in 1,261 declarations used by the main theorem.

**What this unit contains** (automatic summary from the Lean statements and documentation; the outline of its proof is in preparation).

One-face Wilson matching residual bounded by threshold^5 (`WilsonStartup.residual_price`), clipped-action separation (`UVNext.CouplingReset.sensor`), reset of the coupling at each level and monotone start-up conditions (`Further.StrongStartup.prices`).

**Builds on:** [III.1](III-1.md), [I.1](I-1.md), [III.2](III-2.md), [III.15](III-15.md), [III.16](III-16.md), [III.6](III-6.md), [II.1](II-1.md), [II.2](II-2.md), [III.10](III-10.md), [III.3](III-3.md), [VI.1](VI-1.md), [III.5](III-5.md).

**Used by:** [III.13](III-13.md), [III.10](III-10.md), [III.12](III-12.md), [III.2](III-2.md), [III.11](III-11.md), [VII.2](VII-2.md), [III.4](III-4.md), [VIII.1](VIII-1.md), [III.15](III-15.md), [III.14](III-14.md), [VII.4](VII-4.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| work package [`YM/AnalyticBridge/VERIFIED_RESET_STEP/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP) | 2,659 |
| work package [`YM/Extra/WILSON_STARTUP/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP) | 2,422 |
| work package [`YM/Push/BETA_TRANSPORT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/BETA_TRANSPORT) | 652 |
| work package [`YM/UVNext/COUPLING_RESET/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET) | 592 |
| work package [`YM/Extra/MULTISOURCE_BOUNDS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS) | 344 |
| work package [`YM/Further/STRONG_STARTUP_CREDIT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT) | 213 |
| work package [`YM/Push/PRICE_COMPILER/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER) | 139 |
| work package [`YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH) | 65 |
| work package [`YM/Planned/RECIPE_STARTUP_PORT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/RECIPE_STARTUP_PORT) | 60 |
| work package [`YM/R2I/Wind/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Wind) | 34 |
| work package [`YM/Further/THRESHOLD_SOURCE_RESTART/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/THRESHOLD_SOURCE_RESTART) | 24 |
| work package [`YM/PhysicalNext/SERVICE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/SERVICE) | 11 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **III.9.1** [`root_hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Root.lean#L161-L199) *(key result)* — If each positive source has an anchored name in its support and rooted costs are bounded, the multi-marker connected-cover budget holds with an explicit site-factor constant.
- **III.9.2** [`DelayLe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Post.lean#L34-L38) *(numbered result)* — A componentwise order relation on delay data.
- **III.9.3** [`sensor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Probe.lean#L96-L142) *(key result)* — For a nontrivial gauge group and a clipped action there is a uniform η making two tests separate with the true clipped action.
- **III.9.4** [`cash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Currency.lean#L75-L126) *(numbered result)* — For a forecast and nonnegative shifts, a family of numerical inequalities holds eventually as x tends to infinity.
- **III.9.5** [`open_shop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Opening.lean#L62-L65) *(numbered result)* — A delay assignment can be boosted so that all further boosts are opened for the given costs and scouts.
- **III.9.6** [`pricing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Schedule.lean#L98-L111) *(key result)* — For a simple gauge, there is a floor beyond which delay records can be raised to satisfy ringing with large values and make every paid level prepared for the given scope.
- **III.9.7** [`continuous_push`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/BETA_TRANSPORT/Curve.lean#L122-L131) *(key result)* — For a continuous curve of representations, the push is jointly continuous in the parameter and the fine configuration.
- **III.9.8** [`advance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L175-L189) *(key result)* — Under additional remainder hypotheses, a priced reset step can be advanced to the next stage with continuous representatives.
- **III.9.9** [`deliver`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Transform.lean#L86-L91) *(key result)* — For rows with exponential-decay strip bounds, the inverse of r plus the transpose-product exists as a row with uniform strip bounds, with constants depending only on r, eta, A.
- **III.9.10** [`evaluates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Gas.lean#L96-L103) *(key result)* — At startup, the cake built from the payload and dictionary evaluates exactly to the bare Wilson weight at coupling β.
- **III.9.11** [`residual_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L76-L101) *(key result)* — The one-face Wilson matching residual is bounded by C times threshold to the fifth power in the budgeted sup norms, for small threshold.
- **III.9.12** [`card`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/RECIPE_STARTUP_PORT/Layout.lean#L52-L71) *(numbered result)* — If the allowance conditions hold and the level is at top, the stamped recipe satisfies the required menu of estimates with the actual pot and kettle.
- **III.9.13** [`prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT/Pricing.lean#L87-L107) *(key result)* — After enlarging the floor sequence, startup price conditions hold monotonically and any supplied delays can be raised to ones ensuring the prepared hypotheses for the scope.
- **III.9.14** [`developer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Dome.lean#L105-L138) *(key result)* — One can modify a schedule sheet to satisfy stationary purchase, order, and suitability conditions while preserving the kernel and floor.
- **III.9.15** [`beforeWait`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inherited.lean#L75-L89) *(key result)* — There exist thresholds beyond which the raw prices, openings, inherited conditions and cubic gates all hold, so that reset prices are paid.
- **III.9.16** [`engine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Engine.lean#L62-L82) *(key result)* — A planned kin can be modified in its boundary condition, giving a new planned kin with revised path and unchanged stationary data away from the end.
- **III.9.17** [`top_step`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/TopStep.lean#L160-L180) *(key result)* — Replacing top input paths in a Wilson-loop step preserves the critical, guessed, price-gap, classical-match and finite-bound properties.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

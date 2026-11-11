# III.12. Bounds uniform in the volume and convergence as the spacing tends to zero

*Part III — Ultraviolet construction (renormalization group).* 18,973 lines of Lean in 3,138 declarations used by the main theorem.

**What this unit contains** (automatic summary from the Lean statements and documentation; the outline of its proof is in preparation).

Family of lattice quantities with a full-volume bound and vanishing mesh has canonical differences with the same bound (`FullVolume.improved`); numeric sequences are Cauchy so limits exist (30.12); average-detector bounds on funded trials (`FullVolume.invites`). Passage from UV convergence to bounds uniform in volume. [guess]

**Builds on:** [III.10](III-10.md), [III.1](III-1.md), [II.1](II-1.md), [I.1](I-1.md), [III.11](III-11.md), [III.9](III-9.md), [II.2](II-2.md), [VIII.1](VIII-1.md), [III.16](III-16.md), [III.5](III-5.md), [III.2](III-2.md), [IV.1](IV-1.md), [III.15](III-15.md), [III.7](III-7.md), [III.6](III-6.md), [V.2](V-2.md), [III.4](III-4.md).

**Used by:** [VIII.1](VIII-1.md), [III.2](III-2.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| proof of [`pricedB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/BarsP.lean#L79-L96) and the results it chains to | 3,547 |
| work package [`YM/FullVolume/Panel/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Panel), with [`YM/FullVolume/Umbra/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Umbra), [`YM/FullVolume/Rank/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rank) | 1,761 |
| work package [`YM/FullVolume/E6/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/E6) | 1,564 |
| work package [`YM/FullVolume/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume) | 1,519 |
| work package [`YM/FullVolume/Spiral/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral) | 1,049 |
| work package [`YM/FullVolume/Mark/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Mark) | 948 |
| work package [`YM/FullVolume/Florid/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Florid) | 919 |
| work package [`YM/FullVolume/Luna/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Luna) | 766 |
| work package [`YM/FullVolume/Sector/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sector) | 743 |
| work package [`YM/FullVolume/Sym/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sym) | 676 |
| work package [`YM/FullVolume/Fields/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields) | 648 |
| work package [`YM/FullVolume/Amp/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Amp) | 640 |
| work package [`YM/FullVolume/Ray/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Ray) | 554 |
| work package [`YM/FullVolume/Glitz/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glitz) | 535 |
| work package [`YM/FullVolume/Table/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Table) | 371 |
| work package [`YM/FullVolume/Shroud/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Shroud) | 369 |
| work package [`YM/FullVolume/Poesy/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Poesy) | 351 |
| work package [`YM/FullVolume/Gain/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gain) | 280 |
| work package [`YM/FullVolume/Orbit/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Orbit) | 263 |
| work package [`YM/FullVolume/C/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/C) | 259 |
| work package [`YM/FullVolume/Renew/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Renew) | 188 |
| work package [`YM/FullVolume/Canvas/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas) | 144 |
| work package [`YM/FullVolume/Gables/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables) | 140 |
| work package [`YM/FullVolume/Auvi/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Auvi) | 117 |
| work package [`YM/FullVolume/Relay/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay) | 110 |
| work package [`YM/FullVolume/Artes/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Artes) | 97 |
| work package [`YM/FullVolume/Rise/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rise) | 96 |
| work package [`YM/FullVolume/Roll/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll) | 76 |
| work package [`YM/FullVolume/Tess/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess) | 52 |
| work package [`YM/FullVolume/Nectar/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Nectar) | 51 |
| work package [`YM/FullVolume/Regent/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Regent) | 42 |
| work package [`YM/FullVolume/Dusk/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Dusk) | 29 |
| work package [`YM/FullVolume/Fares/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares) | 28 |
| work package [`YM/FullVolume/Reel/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Reel) | 16 |
| work package [`YM/FullVolume/Stage/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stage) | 11 |
| work package [`YM/FullVolume/Antenna/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Antenna) | 9 |
| work package [`YM/FullVolume/Phases/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Phases) | 5 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **III.12.1** [`stage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Amp/Blank.lean#L42-L43) — A function analytic along a dense isometric leg has a multilinear power-series expansion with geometric norm bounds converging on a ball.
- **III.12.2** [`stays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Master.lean#L50-L53) *(numbered result)* — For m at least r, a certain defined sequence stays within the authorized class.
- **III.12.3** [`pricedB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/BarsP.lean#L79-L96) *(key result)* — For any list of motions, swell beams are paid-for with polynomial bound in the interval clock, eventually in j, uniformly on compact tags.
- **III.12.4** [`financed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Scrap.lean#L40-L51) *(numbered result)* — ∃ b m:ℕ, ∃ (B c:ℝ)(hb:c∈Ray.sun),0 < c ∧ 0≤ B ∧ ∀ j N:ℕ,∀ (h:m ≤ j)(ht:j<N),∀ (a:ℝ)(hp:a∈Ray.sun) (F:Ray.sun→ Face T W), (∀ s:Ray.sun, evalV T W (F s) p N= Muse.Contest.ask (P) (slash a hp s).val) → …
- **III.12.5** [`polynomial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Income.lean#L67-L72) *(numbered result)* — PaidBeam (fun s:Ray.sun=> scoreItem T W N p F B d x ℓ o k (Muse.slash c hb s)) ((denomination R T p m (Fintype.card I))* intervalClock R (j+1)^ (debt b k.val.card))
- **III.12.6** [`storms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Summary.lean#L72-L74) *(numbered result)* — PaidBeam (fun s:Ray.sun=> scoreItem T W N p F B d x ℓ o k (Muse.slash b hb s)) ((2* (FullVolume.Retreat.till L! m p)⁻¹)* (outCharge R T p m (Fintype.card I) v₀/Poly.toll w k))
- **III.12.7** [`cruise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Vault.lean#L83-L98) *(numbered result)* — ∃ ν, Furl T W N p m F Θ (hp.trans_lt hj) B d x ℓ o w (u m) ν ∧ ∀ i,PaidBeam (fun s:Ray.sun=>ν s i) (quoteUnit T j (d i) ‖x i‖)
- **III.12.8** [`lobby`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Pavilion.lean#L185-L202) *(numbered result)* — Primary probe evaluations are uniformly approximated locally near grid points at all periods, including period zero.
- **III.12.9** [`design`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Mark/Slate.lean#L29-L104) *(numbered result)* — Applying the coupon to packed addresses before shrinking yields a bound for the plate with unit amplitude untouched.
- **III.12.10** [`arrives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L73-L103) *(key result)* — For k ≤ r, the pilot quantities along the sequence of families form a Cauchy sequence.
- **III.12.11** [`dashF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Luna/Table.lean#L180-L191) *(numbered result)* — A local property of table entries holds for each index under entry hypotheses.
- **III.12.12** [`cinema`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Seat.lean#L37-L45) *(key result)* — The numeric values of the family sequence at the given data form a Cauchy sequence, so the limit exists.
- **III.12.13** [`stencilH`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Luna/YardP.lean#L153-L172) *(numbered result)* — Under an entry hypothesis, an Epics estimate holds at the next level.
- **III.12.14** [`invites`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L104-L139) *(key result)* — For small b, the average detector is bounded on funded trials and tends to zero on owed trials with vanishing cutoff.
- **III.12.15** [`tiers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Pole.lean#L50-L59) *(key result)* — The matrix T' m hr has the Ritzy property.
- **III.12.16** [`cams`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rank/Tracks.lean#L79) *(numbered result)* — Differences of income and spends between two sequences of data tend to zero.
- **III.12.17** [`linters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rank/Stitch.lean#L104-L130) *(numbered result)* — For each index, two sequences of shot coordinates built from coin uses satisfy a Hue relation relative to holonomy data.
- **III.12.18** [`grow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L55-L56) *(key result)* — Level-d coefficients and associated coins along the sequence are Cauchy, with coins compatible with the capture of data.
- **III.12.19** [`Run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48) *(numbered result)* — A data structure recording one fixed campaign of the multi-scale scheme with retained startup and support data.
- **III.12.20** [`program`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Nectar/Laid.lean#L85-L102) *(key result)* — There exist data E and K satisfying the pulse hypothesis for the given parameters, an existence statement for the construction.
- **III.12.21** [`many`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Pulse.lean#L101-L104) *(key result)* — Combining many ships indexed by sites, under token and attic hypotheses, yields a single consistent extraction of kernel data.
- **III.12.22** [`improved`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L69-L78) *(main result)* — If a family of lattice quantities satisfies a full-volume bound and a vanishing-mesh condition, then the family of its canonical differences also satisfies the full-volume bound.
- **III.12.23** [`destination`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Brace.lean#L61-L78) *(key result)* — Coefficient maps are paid-beam bounded with linear constant, and the beam bound propagates from level m to m+1 with a multiplicative factor.
- **III.12.24** [`projects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Florid/Gild.lean#L57-L101) *(key result)* — For rate at most -7/16, for large side lengths, a budget-point estimate (Jam) holds eventually in x for every tuned configuration on tubes over a branching patch.
- **III.12.25** [`linked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Dais.lean#L64-L80) *(key result)* — Assuming beam bounds at the next level, beam bounds hold at level m and propagate to level m+1 with the block-size factor.
- **III.12.26** [`primaryJG`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glitz/RockG.lean#L81-L129) *(key result)* — A primary-step estimate for the multiscale induction, given suitable scale conditions and acceptance.
- **III.12.27** [`trained`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L51-L91) *(key result)* — For large k and small b, step sizes are uniformly bounded by a constant times the probe norm over the mesh, giving uniform rank detection.
- **III.12.28** [`composeT`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Mark/Vega.lean#L47-L78) *(key result)* — Single-step constructions satisfying cost and affordability conditions at each scale from k' to N can be composed into a full history ending at a given top configuration.
- **III.12.29** [`motor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Mark/Wheels.lean#L38-L247) *(key result)* — A single step of the shared linear column-family construction produces, from a tool with a capacity bound, a new tool with controlled bounds at the next scale.
- **III.12.30** [`composing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Major.lean#L53-L63) *(key result)* — There exists transfer data based on the holonomy structure that satisfies the required composed property.
- **III.12.31** [`earned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Shroud/Plateau.lean#L53-L67) *(key result)* — A small perturbation of a representation by a parameter keeps it lawful with slightly weakened constants while leaving its evaluation unchanged, uniformly for small perturbation size.
- **III.12.32** [`laven`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Ivy.lean#L37-L39) *(key result)* — If a quantity is bounded below eventually and functions are measurable, the sequence of mid-values is Cauchy.
- **III.12.33** [`probesUp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L57-L78) *(key result)* — For small b and fine mesh, the probe at boosted inputs is within epsilon of the monitor of the upper extension.
- **III.12.34** [`attic_close`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Attic.lean#L50-L88) *(key result)* — Under weighted analytic budget hypotheses on multisource arrays, the Attic weighted analytic bound closes with the stated constants.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

# III.15. Cost accounting for observables and the remainder comparison

*Part III — Ultraviolet construction (renormalization group).* 7,382 lines of Lean in 1,053 declarations used by the main theorem.

**What this unit contains** (automatic summary from the Lean statements and documentation; the outline of its proof is in preparation).

Derivative bounds for local slot observables with explicit cost on healthy regions (`Next.Scheduling.Wages.slotPays`) and exponentially small pair-step rates. [guess: bookkeeping inside the RG error estimates]

Pre-stage launch data and quay conditions when 3/8 + rate < 0 (`RemainderComparison.Chron.sails`, `Cadenza.buoys`), financed extensions, Jacobian pricing. Seems to prepare remainder estimates for perturbative comparison; role not fixed.

**Builds on:** [III.10](III-10.md), [III.1](III-1.md), [I.1](I-1.md), [II.2](II-2.md), [III.5](III-5.md), [III.6](III-6.md), [III.11](III-11.md), [II.1](II-1.md), [III.2](III-2.md), [III.9](III-9.md), [III.16](III-16.md), [VIII.1](VIII-1.md), [IV.1](IV-1.md), [III.4](III-4.md).

**Used by:** [III.2](III-2.md), [III.13](III-13.md), [III.9](III-9.md), [III.10](III-10.md), [III.12](III-12.md), [III.11](III-11.md), [III.14](III-14.md), [III.4](III-4.md), [VIII.1](VIII-1.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| proof of [`sails`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L98-L111) and the results it chains to | 4,201 |
| work package [`YM/Progress/DIRECTED_RECIPE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE) | 1,251 |
| work package [`YM/Next/SCHEDULE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE) | 933 |
| work package [`YM/RemainderComparison/Cadenza/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza) | 186 |
| work package [`YM/RG05Readout/Test/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG05Readout/Test) | 62 |
| work package [`YM/RemainderComparison/Auxiliary/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Auxiliary) | 61 |
| work package [`YM/RemainderComparison/Funk/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Funk) | 61 |
| work package [`YM/RG05Readout/Offsets/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG05Readout/Offsets) | 49 |
| work package [`YM/RemainderComparison/Access/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Access) | 47 |
| work package [`YM/RemainderComparison/Herbal/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Herbal) | 42 |
| work package [`YM/RemainderComparison/Gaussian/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Gaussian) | 41 |
| work package [`YM/RemainderComparison/Chron/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron) | 40 |
| work package [`YM/RemainderComparison/Muse/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Muse) | 38 |
| work package [`YM/RemainderComparison/Portal/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Portal) | 38 |
| work package [`YM/RG05Readout/Grants/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG05Readout/Grants) | 36 |
| work package [`YM/RemainderComparison/Lyric/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric) | 36 |
| work package [`YM/R2I/Campaign/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign) | 34 |
| work package [`YM/RG05Readout/Address/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG05Readout/Address) | 26 |
| work package [`YM/Integration/RG05Preconstruction/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction) | 25 |
| work package [`YM/RG12/Shadows/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows) | 25 |
| work package [`YM/RG12/Spins/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Spins) | 18 |
| work package [`YM/R2I/Buckram/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Buckram) | 17 |
| work package [`YM/RemainderComparison/Arc/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Arc) | 16 |
| work package [`YM/RemainderComparison/Cascade/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cascade) | 14 |
| work package [`YM/RemainderComparison/Sleet/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Sleet) | 13 |
| work package [`YM/Integration/ChronPreconstruction/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ChronPreconstruction) | 12 |
| work package [`YM/RemainderComparison/Halo/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo) | 10 |
| work package [`YM/OPE/Therm/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Therm) | 9 |
| work package [`YM/RemainderComparison/Flues/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Flues) | 9 |
| work package [`YM/RemainderComparison/Exchange/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Exchange) | 8 |
| work package [`YM/RemainderComparison/Solo/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Solo) | 5 |
| work package [`YM/RG12/Burst/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst) | 4 |
| work package [`YM/RemainderComparison/Passion/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Passion) | 4 |
| work package [`YM/RemainderComparison/Gear/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Gear) | 4 |
| work package [`YM/RemainderComparison/Ethereal/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Ethereal) | 3 |
| work package [`YM/RemainderComparison/WickReps/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/WickReps) | 2 |
| work package [`YM/RemainderComparison/Apo/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Apo) | 1 |
| work package [`YM/RemainderComparison/Breeze/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Breeze) | 1 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **III.15.1** [`currency`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean#L76-L139) *(numbered result)* — Eventually in y, uniformly over beta in band, pair-step rates hold with the exponentially small strong and mild costs.
- **III.15.2** [`tender`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L124-L133) *(numbered result)* — Separate hard and soft transfer costs with a rate relation suffice to obtain the combined Ingredients bound.
- **III.15.3** [`slotPays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L108-L159) *(key result)* — A local slot observable satisfies a derivative bound with explicit slot cost on a healthy region of a finite site set.
- **III.15.4** [`sails`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L98-L111) *(key result)* — For a simple gauge group, if all rates satisfy 3/8+rate<0, there exist data meeting the pre-stage launch (pledge) conditions for the all-order asymptotic proof.
- **III.15.5** [`buoys`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L47-L58) *(key result)* — For a simple group and rate with 3/8+rate<0 the quay condition holds for all sufficiently large side lengths.
- **III.15.6** [`rollBefore`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L64-L80) *(key result)* — Beyond a size threshold, any financed poster extends to a financed quarry satisfying the instruction conditions eventually in x.
- **III.15.7** [`quorum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Metro.lean#L29-L51) *(key result)* — For positive μ and a suitable heart condition there is a positive-parameter financed budget that is paid for all large x.
- **III.15.8** [`compile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Herbal/Orbit.lean#L41-L56) *(key result)* — Given admissible weights and index bounds, there exist four admissible functions such that the airstrip comparison estimate holds eventually in t.
- **III.15.9** [`run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Salary.lean#L82-L100) *(numbered result)* — A weighted sum over revealed semantic supports satisfies a quantitative retention bound, giving a uniform hit estimate under a veto condition.
- **III.15.10** [`atlas`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Solo/Barque.lean#L21-L61) *(key result)* — For large L and every recorded setup there are rates and constants so that a captain structure exists and scale-data inquiries are paid.
- **III.15.11** [`seeds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Nexus.lean#L12-L57) *(key result)* — For large side L there exist rates and constants such that eventually in x every setup admits a captain structure with the heavy, heroes and quarry properties.
- **III.15.12** [`generation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Muse/Baton.lean#L80-L96) *(key result)* — Under 3/8+rate<0, for large L every certified test is paid, with pad structure and role bounds with negative-rate errors.
- **III.15.13** [`ramp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Tome.lean#L33-L65) *(key result)* — With inherited recurrence budgets, a captain structure exists and, for any scale data, yields horizon-type bounds with a negative exponent.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

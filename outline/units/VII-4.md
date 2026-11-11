# VII.4. Operator product expansion and contact extensions

*Part VII — Identification as Yang–Mills.* 10,243 lines of Lean in 2,035 declarations used by the main theorem.

**What this unit contains** (automatic summary from the Lean statements and documentation; the outline of its proof is in preparation).

Bounds A^#main B^#exterior on correlators in separated cells (`Next.Phase.point_bound`), train Gram pairing independent of q, exponential rates for collapsing scales, the OPE column estimates (`OPE.Columns`), multiple-contact extension and tomography (`MultipleContact`, `Contacts`). Source of OPE and contact statements in the main theorem.

**Builds on:** [III.11](III-11.md), [IV.1](IV-1.md), [I.1](I-1.md), [III.1](III-1.md), [II.1](II-1.md), [II.2](II-2.md), [VIII.1](VIII-1.md), [III.10](III-10.md), [V.1](V-1.md), [III.16](III-16.md), [III.4](III-4.md), [III.9](III-9.md), [III.7](III-7.md), [III.2](III-2.md), [III.6](III-6.md).

**Used by:** [VIII.1](VIII-1.md), [III.2](III-2.md), [III.13](III-13.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| work package [`YM/OPE/Grouping/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Grouping), with [`YM/OPE/Replicas/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Replicas), [`YM/OPE/Columns/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Columns), [`YM/OPE/Trees/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Trees), [`YM/OPE/Sweep/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Sweep) … | 4,584 |
| work package [`YM/Next/PHASE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE) | 838 |
| work package [`YM/Contacts/Harvest/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Harvest) | 687 |
| work package [`YM/Contacts/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts) | 676 |
| work package [`YM/Contacts/Normal/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Normal) | 658 |
| work package [`YM/OPE/Orbits/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits) | 579 |
| work package [`YM/Contacts/Score/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Score) | 568 |
| work package [`YM/Contacts/Layers/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Layers) | 459 |
| work package [`YM/Contacts/Solstice/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice) | 356 |
| work package [`YM/OPE/Cards/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards) | 274 |
| proof of [`outletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L120-L124) | 145 |
| work package [`YM/MultipleContact/Panel/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultipleContact/Panel) | 138 |
| work package [`YM/MultipleContact/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultipleContact) | 109 |
| work package [`YM/SharpGram/Prices/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Prices) | 103 |
| work package [`YM/MultipleContact/Multi/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultipleContact/Multi) | 38 |
| work package [`YM/Contacts/Transport/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Transport) | 31 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **VII.4.1** [`compact_deviation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Normal/ShellTest.lean#L43-L72) *(numbered result)* — Uniform jet bound for the projection deviation of a rescaled test function on a compact set in terms of the original jet budget.
- **VII.4.2** [`nextRows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Needle.lean#L57-L92) *(numbered result)* — Any prescription signed off at level n extends to one signed off at level n+1 by adding a ring of tests.
- **VII.4.3** [`cutoff_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Roots.lean#L125-L179) *(key result)* — On coextensive coarse and fine link tilings, the lattice moment of products of main and exterior factors in separated cells is bounded by A^{#main} B^{#exterior}.
- **VII.4.4** [`point_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Passage.lean#L187-L229) *(key result)* — For gapped configurations, the continuum correlation of a point word is bounded by A to the number of main insertions times B to the number of exterior insertions.
- **VII.4.5** [`travel_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Trains.lean#L273-L304) *(key result)* — The Gram pairing of a reflected train of a main word repeated 4q times with an exterior word is bounded by B^{2|v|} A^{4q|w|}, independent of q in exterior cost.
- **VII.4.6** [`hitB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Grouping/Shift.lean#L54-L93) *(numbered result)* — Hit-budget bounds persist under replacing contents by enlarged sets, at a multiplied cost factor.
- **VII.4.7** [`outletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L120-L124) *(major result)* — A functional killing the sector derivatives to the given order releases estimates for outputs of weight at most three.
- **VII.4.8** [`seats`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Seats.lean#L154-L160) *(key result)* — The quantum read estimate holds on covered positive sub-widths chosen before the exterior, establishing the Seats property.
- **VII.4.9** [`funding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Prices/Circuit.lean#L64-L87) *(numbered result)* — At ordered heights there exist rate functions such that the subpower price estimate holds eventually.
- **VII.4.10** [`joins`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Sweep/Camp.lean#L54-L94) *(numbered result)* — Under suitable smallness and spacing hypotheses, a product of several observables at scales on a multiscale path has a label at which the combined configuration function lies in the interior of the chamber.
- **VII.4.11** [`Ballet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Sweep/Ballet.lean#L35-L76) *(key result)* — Across a compact window of scales, there is a coefficient with format and remainder bounds serving the product of replicated pieces, giving the main estimate.
- **VII.4.12** [`for_plot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Extract.lean#L25-L32) *(numbered result)* — At suitable heights and separated grid points, there exist rates and labels such that survival of a configuration holds eventually with controlled exponential decay.
- **VII.4.13** [`early_rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Corridor.lean#L68-L74) *(numbered result)* — The difference between the actual observable and its truncated expansion to order N has a rate bound given by a linear exponent in N.
- **VII.4.14** [`provided`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L65-L69) *(key result)* — If the rotation matches the sector turns and services hold, the multiple-collision light (distributional) property holds.
- **VII.4.15** [`carrying`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards/Pressure.lean#L98-L104) *(numbered result)* — If the deck norms are bounded by c^{2m} for all m eventually, then the cluster norm is at most c.
- **VII.4.16** [`everything`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Subpower.lean#L47-L48) *(key result)* — Services together with a coherent prescription imply all fixed-horizon shape demands.
- **VII.4.17** [`ranch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Replicas/Antique.lean#L33-L46) *(key result)* — Under many hypotheses on slots and cells, an arc structure holds for the pushed-forward system with replicated slots.
- **VII.4.18** [`inductionLive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Sweep/Induct.lean#L93-L117) *(key result)* — Across intermediate scales one can regroup indices so a live structure persists with compensated progress bounded by the product of weights.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

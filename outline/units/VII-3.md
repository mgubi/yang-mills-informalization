# VII.3. The theory is not free: Gram positivity and exclusion of free-field profiles

*Part VII — Identification as Yang–Mills.* 3,325 lines of Lean in 678 declarations used by the main theorem.

**What this unit contains** (automatic summary from the Lean statements and documentation; the outline of its proof is in preparation).

Reflected two-point pairing of a Wick polynomial with itself is positive iff the polynomial is nonzero (`Extra.FD.reflected_positive`), Wick recurrence, real spin of the free detector table, Kelvin contraction, frozen four-horizon perturbative data (`Pert.Rigid.frozen_four`).

**Builds on:** [III.16](III-16.md), [I.1](I-1.md), [IV.1](IV-1.md), [VI.2](VI-2.md), [VI.1](VI-1.md).

**Used by:** [VII.1](VII-1.md), [VIII.1](VIII-1.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| work package [`YM/Extra/FREE_DETECTOR_ALGEBRA/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA) | 2,135 |
| work package [`YM/Pert/Lattice/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice) | 599 |
| work package [`YM/Pert/Position/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position), with [`YM/Pert/Rigid/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid) | 541 |
| work package [`YM/Push/LOOP_COEFFICIENT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOOP_COEFFICIENT) | 50 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **VII.3.1** [`shell_green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Harmonic.lean#L122-L152) *(numbered result)* — Away from the origin, a harmonic directional tensor applied to the 4D Green function equals a scalar multiple of the field with radial power factor (Kelvin contraction).
- **VII.3.2** [`from_large`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L51-L68) *(numbered result)* — Every Wick polynomial is encoded by a polynomial in any basis of probe towers of sufficiently high order.
- **VII.3.3** [`towerB_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L150-L154) *(key result)* — The simultaneous reflected Gram form on jet towers at separation x is positive definite: positive exactly on nonzero towers.
- **VII.3.4** [`reflected_positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L47-L53) *(main result)* — For distinct points x,y, the reflected two-point pairing of any Wick polynomial with itself is positive iff the polynomial is nonzero.
- **VII.3.5** [`remove`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Removal.lean#L91-L108) *(key result)* — Wick removal/annihilator recurrence: replacing a polynomial times a variable at one point equals a sum over other points of replacements with extracted variable.
- **VII.3.6** [`duplex_script`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L100-L116) *(key result)* — On an orthogonal script, the two-point pairing of encoded polynomials is a sum of coefficient products times factorial weights.
- **VII.3.7** [`table_spin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LabelTurn.lean#L80-L91) *(key result)* — The free detector table carries a real spin (rotation covariance) derived from actual O-covariance of the Wick-polynomial data.
- **VII.3.8** [`frozen_four`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L107-L113) *(key result)* — For simple gauge group, the four-horizon perturbative data are frozen (rigid).

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

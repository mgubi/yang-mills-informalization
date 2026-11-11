# VI.1. Ward identities, the rotation action and the conserved stress tensor

*Part VI — Symmetry: stress tensor and Ward identities.* 7,704 lines of Lean in 1,014 declarations used by the main theorem.

*The outline of this unit is in preparation.*

**Builds on:** [I.1](I-1.md), [IV.1](IV-1.md), [III.16](III-16.md), [V.2](V-2.md), [V.1](V-1.md), [VIII.1](VIII-1.md), [III.10](III-10.md).

**Used by:** [VIII.1](VIII-1.md), [VII.2](VII-2.md), [VI.2](VI-2.md), [V.2](V-2.md), [III.6](III-6.md), [V.3](V-3.md), [III.10](III-10.md), [III.11](III-11.md), [V.1](V-1.md), [VII.5](VII-5.md), [III.9](III-9.md), [III.7](III-7.md), [VII.1](VII-1.md), [III.13](III-13.md), [VII.3](VII-3.md), [III.4](III-4.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| work package [`YM/Work/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work) (in part, 24%) | 11,420 |
| work package [`YM/Ward/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward) | 1,127 |
| work package [`YM/Push/STRESS_FLUX/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX) | 1,063 |
| work package [`YM/Spin/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin), with [`YM/Climb/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb) | 667 |
| work package [`YM/Shift/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift) | 618 |
| work package [`YM/Work/A01/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01) | 436 |
| work package [`YM/Work/A05/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A05) | 384 |
| work package [`YM/Work/A15/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15) | 317 |
| work package [`YM/Next/BOUNDARY/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY) | 272 |
| work package [`YM/Axis/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Axis) | 93 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **VI.1.1** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A13.lean#L191-L200) *(key result)* — The orthogonal group's action is generated algebraically by the relevant elementary motions, giving the actual orthogonal-group structure.
- **VI.1.2** [`blossoms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Ket.lean#L76-L96) *(key result)* — A smooth Hilbert-valued function whose inner-product kernel is a function of the difference with analytic Taylor series at 0 is real-analytic everywhere.
- **VI.1.3** [`onto`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Close.lean#L42-L70) *(numbered result)* — An idempotent limit lying in a closed subring can be approximated by idempotents in the subring commuting with the given sequences and annihilated by them.
- **VI.1.4** [`laws_of_oriented`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L403-L415) *(numbered result)* — An oriented rotation satisfying the spin port compatibility obeys the rotation laws for the hierarchy.
- **VI.1.5** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A02.lean#L272-L307) *(key result)* — The bid A02 holds: the center can be moved inside a fixed cutoff.
- **VI.1.6** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L417-L420) *(key result)* — The rotation laws are derived from the configuration-space Ward identity.
- **VI.1.7** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L232-L247) *(key result)* — Actual Lie brackets are recovered after Ward propagation.
- **VI.1.8** [`rotate_flux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15/Transfer.lean#L124-L168) *(numbered result)* — Rotating a stress by an orthogonal element preserves the D and Lie flux laws.
- **VI.1.9** [`fires`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Genuine.lean#L72-L81) *(key result)* — If a two-point function's Taylor series at zero matches an analytic germ, the singleton-singleton row is real-analytic in the offset along a transverse direction.
- **VI.1.10** [`pure`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Circles.lean#L179-L209) *(key result)* — Along transverse axes, the spot function of a point moved in direction b is real-analytic.
- **VI.1.11** [`along`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L79-L84) *(key result)* — If the Ward value condition holds at the endpoint of a walk, it holds at the starting point.
- **VI.1.12** [`global`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L130-L139) *(main result)* — Under the hierarchy, differential-plan, derivative, commutation and collinearity hypotheses, the full Ward values hold at every configuration of distinct points.
- **VI.1.13** [`cutoff_zero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01/Conserve.lean#L154-L181) *(numbered result)* — For a conserved current and a Killing vector, integrating the current against the gradient of a compactly supported cutoff away from the word's points gives zero.
- **VI.1.14** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01.lean#L115-L117) *(key result)* — The compatibility properties of both raw shell maps hold.
- **VI.1.15** [`stressLaws_average`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L156-L183) *(key result)* — Averaging a stress tensor over rotations preserves the flux laws.
- **VI.1.16** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L187-L192) *(key result)* — The unnormalized stress can be averaged and renormalized to a conserved, tensorial stress satisfying the flux laws.
- **VI.1.17** [`descends`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L90-L98) *(numbered result)* — Given weak comparator matrices satisfying the crystal condition, a descent consumer produces rotation-compatible data from the hypothesised tilt.
- **VI.1.18** [`Scaling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31) *(numbered result)* — A bundled data structure packaging scaling maps compatible with a table of data.
- **VI.1.19** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A12.lean#L323-L336) *(key result)* — The A12 statement: existence of the limiting Casimir selection polynomial for the relevant family.
- **VI.1.20** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A07.lean#L287-L289) *(key result)* — The bid A07 statement, obtained by applying the transfer lemma.
- **VI.1.21** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A06.lean#L236-L256) *(key result)* — The finite collinear Ward test matrix transport statement (bid A06) holds.
- **VI.1.22** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A03.lean#L197-L202) *(key result)* — All positional jets of transverse-component vector Ward tests are as required.
- **VI.1.23** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A11.lean#L199-L206) *(key result)* — The reality and signed-subgroup properties of the wave polynomial (bid A11) hold.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

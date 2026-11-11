# III.16. Analytic toolkit

*Part III — Ultraviolet construction (renormalization group).* 4,013 lines of Lean in 564 declarations used by the main theorem.

**What this unit contains** (automatic summary from the Lean statements and documentation; the outline of its proof is in preparation).

Polydisc analyticity and smooth jets, exterior algebra and Bianchi identity for Maxwell data, Laurent/Fourier machinery, and trace inequalities for products of nonnegative kernels (`Holder.finite_lip`, `TimeKernel.passage`: moving a gap center by m steps changes the trace by at most cost*m/r). Serves both the RG estimates and the transfer-operator estimates.

**Builds on:** [I.1](I-1.md).

**Used by:** [III.7](III-7.md), [VI.2](VI-2.md), [III.3](III-3.md), [II.1](II-1.md), [VII.2](VII-2.md), [III.11](III-11.md), [VII.1](VII-1.md), [III.6](III-6.md), [VII.3](VII-3.md), [III.2](III-2.md), [III.13](III-13.md), [III.4](III-4.md), [III.12](III-12.md), [III.14](III-14.md), [VI.1](VI-1.md), [III.10](III-10.md), [III.9](III-9.md), [VIII.1](VIII-1.md), [IV.1](IV-1.md), [VII.4](VII-4.md), [III.8](III-8.md), [III.15](III-15.md), [III.5](III-5.md), [III.1](III-1.md), [VII.6](VII-6.md), [V.2](V-2.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| work package [`YM/Maxwell/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell) | 1,007 |
| work package [`YM/Analysis/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis) | 901 |
| work package [`YM/Labels/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels) | 587 |
| work package [`YM/Complex/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex) | 464 |
| work package [`YM/Laurent/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent) | 374 |
| work package [`YM/CellFourier/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier) | 268 |
| work package [`YM/Work/F07/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07) | 263 |
| work package [`YM/TimeKernel/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel) | 149 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **III.16.1** [`accumulate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Projected.lean#L44-L70) *(numbered result)* — Integrating a nonnegative-type kernel over independent random labels on each side yields a nonnegative-type kernel again.
- **III.16.2** [`even_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Columns.lean#L183-L214) *(numbered result)* — Even Schatten powers at real parameters are bounded by a cost along a strip path of trace interpolation.
- **III.16.3** [`finite_lip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L170-L229) *(key result)* — Moving two gap centers by m lattice steps changes the trace of the product by at most cost times m over r.
- **III.16.4** [`passage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L76-L106) *(key result)* — For nonnegative kernels with column bounds, the cyclic integrals of products differing by one center motion differ by at most R·∏K·m/r.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

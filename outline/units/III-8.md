# III.8. Connected activities and backward dependence cones

*Part III — Ultraviolet construction (renormalization group).* 4,147 lines of Lean in 871 declarations used by the main theorem.

**What this unit contains** (automatic summary from the Lean statements and documentation; the outline of its proof is in preparation).

Formal connected heat-propagation map bounded polynomially in width, uniformly in cell count, scale and stage (`RG08.*`, 18.1-18.2); binary PDE glue for connected vertices.

Pullback of products of observables on disjoint regions factors, and pullback of a window-supported observable is supported in an enlarged fine window (`Push.GridApprox.back_factors`, `back_cylinder`). Locality of renormalized observables. [guess for stage: could be]

**Builds on:** [I.1](I-1.md), [III.1](III-1.md), [IV.1](IV-1.md), [III.16](III-16.md), [II.2](II-2.md), [III.6](III-6.md), [II.1](II-1.md).

**Used by:** [III.14](III-14.md), [VII.2](VII-2.md), [III.13](III-13.md), [III.4](III-4.md), [III.11](III-11.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| work package [`YM/Push/GRID_APPROXIMATION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION) | 1,093 |
| work package [`YM/RG08/Carrel/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Carrel) | 488 |
| work package [`YM/RG08/Forms/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms) | 412 |
| work package [`YM/RG08/Skiff/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff) | 306 |
| work package [`YM/AnalyticNext/QUARTIC_MATCH/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/QUARTIC_MATCH) | 302 |
| work package [`YM/Pert/Bulk/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk) | 289 |
| work package [`YM/RG08/Jetty/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty) | 227 |
| work package [`YM/RG08/Camera/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Camera) | 194 |
| work package [`YM/RG08/Room/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room) | 152 |
| work package [`YM/RG08/Steam/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam) | 138 |
| work package [`YM/RG08/Rudder/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rudder) | 136 |
| work package [`YM/RG08/Packets/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets) | 94 |
| work package [`YM/WilsonBulk/Web/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Web) | 78 |
| work package [`YM/RG08/Isles/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Isles) | 68 |
| work package [`YM/RG08/Glyph/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Glyph) | 66 |
| work package [`YM/RG08/Anchor/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Anchor) | 43 |
| work package [`YM/ProofPorts/GRID_REAL_MODELS_ESTIMATES_20261012/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProofPorts/GRID_REAL_MODELS_ESTIMATES_20261012) | 34 |
| work package [`YM/RG08/Cloud/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Cloud) | 27 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **III.8.1** [`navigation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L34-L83) *(key result)* — For fixed orders, the formal connected heat-propagation map is bounded in weighted-norm (Cot) estimates by a polynomial in the input width W, uniformly in the cell count, scale and stage, for both absolute values and differences.
- **III.8.2** [`journey`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L92-L127) *(key result)* — There is a polynomial such that differences in the inputs of the skate recursion are controlled by a polynomially larger difference in outputs, uniformly in geometry.
- **III.8.3** [`back_factors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L141-L150) *(numbered result)* — The back-transformation of a product of locally supported observables on disjoint regions factors into the product of back-transformations.
- **III.8.4** [`back_cylinder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L156-L169) *(numbered result)* — Under gauge covariance, pulling back a local observable supported in a window yields one supported in an enlarged fine window.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

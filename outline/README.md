# Overview of the proof

This page describes how OpenAI's Lean proof of the construction of four-dimensional Yang–Mills theory is organised: its eight parts, what each part hands to the next, and where to find each part among the [forty chapters](chapters.md).

It is read from the Lean statements and documentation and from the dependency graph. The mathematical framing follows the Yang–Mills group's [assessment](https://github.com/yang-mills-group/YM/blob/main/docs/assessment-1.pdf). Lean names link to the fixed source commit [`3456e5e`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464).

## The order of limits

Everything is built on a single family of Wilson lattice gauge theories: tori of side L_p, lattice spacings a_N and couplings β_{N,p}, with β_{N,p}/log(1/a_N) → 11C_G/(24π²).

Correlations of renormalized local observables are first taken to the limit **N → ∞ at fixed volume**, along the whole sequence of spacings. They are then taken to the limit **p → ∞**, along a subsequence that may be extracted from any prescribed sequence of volumes. The public form of this statement is [`WilsonFamily.Converges`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L85-L90).

The renormalization group is used only for the first limit. The second is obtained by compactness.

## The eight parts

| part | name | lines | where |
|---|---|---|---|
| I | Setting | 3.7k | chapters [1](chapters/01.md)–[4](chapters/04.md) |
| II | Data of the construction | 10.8k | chapter [13](chapters/13.md), parts of [5](chapters/05.md) and [10](chapters/10.md) |
| III | Ultraviolet construction | 291k | chapters 5–9, 12, 14–22, 24, 27, 30, 32, 33, 35–39, and part of 10 |
| IV | Infinite volume | 7k | part of chapter [10](chapters/10.md) (folders `Extraction`, `Cells`, `Euclid`, `Slice`, `Dash`) |
| V | Phases and reconstruction | 22k | chapters [10](chapters/10.md), [34](chapters/34.md) |
| VI | Symmetry | 21k | chapters [10](chapters/10.md), [11](chapters/11.md) |
| VII | Identification as Yang–Mills | 52k | chapters [23](chapters/23.md), [25](chapters/25.md), [26](chapters/26.md), [28](chapters/28.md), [29](chapters/29.md), [31](chapters/31.md) |
| VIII | Assembly | 1.4k | chapters [34](chapters/34.md), [40](chapters/40.md) |

Chapter 10 is the core of the limit theory. It contains material from five parts and is best read through the [work items](work-items.md).

## What each part hands to the next

### Ultraviolet → infinite volume

Let G be a compact matrix group with simple nonabelian Lie algebra, and b > 0, a parameter of the block-spin kernel. The ultraviolet construction provides a Wilson family with the following properties.
1. **Specification.** The family satisfies its normalization, covariance and budget conditions, and its couplings obey the asymptotic-freedom law above.
2. **Chessboard bound, uniform in the volume.** For each degree d and ε > 0, every renormalized local observable at block scale m satisfies a chessboard bound of order a_m^{−d−ε}, uniformly in the volume, once the lattice is fine enough. A chessboard bound is a bound on the root of a product of reflected copies.
3. **Differences.** The same holds for finite-difference quotients, so correlation kernels at r-separated points are bounded uniformly in the volume.
4. **Fixed volume.** At each fixed volume the correlation kernels converge along the whole sequence of spacings, to smooth limits.
5. **Corrected fields.** The same estimates hold for the corrected fields.

The infinite-volume part uses only 1–3 and 5, together with the reflection-positivity inequality on cells, which holds for every β ≥ 0. Its conclusion: for every increasing sequence of volumes there is a subsequence along which all smeared correlations converge to kernels that are smooth away from coincident points. These are Theorems 4.1 and 5.1 of the group's assessment, split along their natural line.

A caution about the code. About three quarters of the code filed under "full volume" (folder [`YM/FullVolume`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume)) belongs to the ultraviolet construction: it proves the volume-uniform bounds. The genuinely infinite-volume argument is short, about 7,000 lines.

### Infinite volume → phases, reconstruction and symmetry

The limit satisfies a Euclidean *hierarchy*:
- translation homogeneity;
- reflection positivity, including for smeared joint test functions;
- smoothness on separated configurations, with controlled derivatives;
- a compatible calculus of derivatives.

Reconstruction also needs a uniform bound on products of fields in thin time slabs.

### Reconstruction → identification

For every phase, a completed Wightman theory: unique vacuum, a light-cone bound, heat-kernel decay, and a trivial commutant.

### Symmetry → identification

A conserved stress tensor and its Ward identities. Both are compared, along sequences of scales tending to zero, with the corresponding objects for free Maxwell fields.

### Into the assembly

A single Wilson family serves every part, from extraction to the trace test. The construction run exists for every G and every b > 0.

## The work items of the limit theory

Parts IV–VI are written in the code as about seventy numbered work items. Each states one obligation, a "proof request" in the code's vocabulary, and proves it in its own file.

| family | items | part | content |
|---|---|---|---|
| D | 6 | IV | the limit passes to derivatives of the correlation kernels; the Euclidean hierarchy |
| B | 18 | V | time-slab operators, decomposition into phases, reflection positivity and smoothness for each phase |
| C | 29 | V | Osterwalder–Schrader → Wightman: continuation in time, boost covariance, gluing of tubes, locality |
| A | 17 | VI | so(4) brackets, integration to the rotation action, the averaged conserved stress tensor, boosts, comparison with free Maxwell fields |

They build on each other in the order D, B, C, A.

The same mechanism appears in the ultraviolet construction: families E–I cover the energy chain of one renormalization step, its stationary point and Hessian, label polynomials, and support bookkeeping.

See [work-items.md](work-items.md) for the complete list.

## What does not follow the order of the parts

The Lean is not written in this order everywhere. A few definitions are used before the part in which they are proved:
- the reflection-positive cells and chessboard roots;
- the record of the whole construction run;
- the basic types of the renormalization group and of the labels.

Some sections are filed far from their mathematical home. Two examples:
- the rotation-invariance estimate, in folder `Next/ROTATIONS`;
- some renormalization-group pieces filed with the trace-anomaly code.

None of this involves new mathematics. A written account should simply state these definitions early.

## How reliable is this

- The dependency structure behind these statements has been checked against OpenAI's compiled record of what the main theorem uses ([method](../method.md)).
- The plain-language formulations of the interfaces were written by AI readers from the Lean statements and documentation. They have not yet been checked line by line against the proofs.
- Corrections are welcome.

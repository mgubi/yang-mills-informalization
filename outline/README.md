# Overview of the proof

This page describes how OpenAI's Lean proof of the construction of four-dimensional Yang–Mills theory is organised: its eight parts, what each part hands to the next, and the units that make up each part ([detailed map](units.md)).

It is read from the Lean statements and documentation and from the dependency graph. The mathematical framing follows the Yang–Mills group's [assessment](https://github.com/yang-mills-group/YM/blob/main/docs/assessment-1.pdf). Lean names link to the fixed source commit [`3456e5e`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464).

## The order of limits

The construction uses Wilson lattice theories on tori of side $L_p$, with lattice spacings $a_N$ and couplings $\beta_{N,p}$ satisfying $\beta_{N,p}/\log(1/a_N)\to 11C_G/(24\pi^2)$. The public theorem leaves the positive limiting constant unspecified; see the [exact statement](../statement.md).

Correlations of renormalized local observables are first taken to the limit **$N\to\infty$ at fixed volume**, along the whole sequence of spacings. They are then taken to the limit **$p\to\infty$**, along a subsequence that may be extracted from any prescribed sequence of volumes. The public form of this statement is [`WilsonFamily.Converges`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L85-L90).

The renormalization group is used only for the first limit. The second is obtained by compactness.

## The eight parts

| part | name | units |
|---|---|---|
| I | Setting | [I.1](units/I-1.md) |
| II | Data of the construction | [II.1](units/II-1.md), [II.2](units/II-2.md) |
| III | Ultraviolet construction | [III.1–III.16](#ultraviolet-units) |
| IV | Infinite volume | [IV.1](units/IV-1.md) |
| V | Phases and reconstruction | [V.1](units/V-1.md), [V.2](units/V-2.md), [V.3](units/V-3.md) |
| VI | Symmetry | [VI.1](units/VI-1.md), [VI.2](units/VI-2.md) |
| VII | Identification as Yang–Mills | [VII.1](units/VII-1.md), [VII.2](units/VII-2.md), [VII.3](units/VII-3.md), [VII.4](units/VII-4.md), [VII.5](units/VII-5.md), [VII.6](units/VII-6.md) |
| VIII | Assembly | [VIII.1](units/VIII-1.md) |

### Ultraviolet units

- Blocking, constants and Gaussian estimates: [III.1](units/III-1.md), [III.2](units/III-2.md), [III.3](units/III-3.md), [III.4](units/III-4.md).
- Cluster expansion, stationary field, matching and dependence: [III.5](units/III-5.md), [III.6](units/III-6.md), [III.7](units/III-7.md), [III.8](units/III-8.md).
- Coupling reset, nonlinear step and observable limits: [III.9](units/III-9.md), [III.10](units/III-10.md), [III.11](units/III-11.md), [III.12](units/III-12.md).
- Alternative coordinated family, construction data and analytic tools: [III.13](units/III-13.md), [III.14](units/III-14.md), [III.15](units/III-15.md), [III.16](units/III-16.md).

The limit theory (Parts IV–VI) is written in the code around numbered [work items](work-items.md); the units of those parts follow them.

## What each part hands to the next

### Ultraviolet → infinite volume

Let $G$ be a compact matrix group with simple nonabelian Lie algebra, and $b>0$ a parameter of the block-spin kernel. The ultraviolet construction provides a Wilson family with the following properties.

1. **Specification.** The family satisfies its normalization, covariance and budget conditions, and its couplings obey the asymptotic-freedom law above.
2. **Chessboard bound, uniform in the volume.** For each degree $d$ and $\varepsilon>0$, every renormalized local observable at block scale $m$ satisfies a chessboard bound of order $a_m^{-d-\varepsilon}$, uniformly in the volume, once the lattice is fine enough. A chessboard bound is a bound on the root of a product of reflected copies.
3. **Differences.** The same holds for finite-difference quotients, so correlation kernels at $r$-separated points are bounded uniformly in the volume.
4. **Fixed volume.** At each fixed volume the correlation kernels converge along the whole sequence of spacings, to smooth limits.
5. **Corrected fields.** The same estimates hold for the corrected fields.

For the subsequential extraction, the infinite-volume part uses 1–3 and 5, together with the reflection-positivity inequality on cells, which holds for every $\beta\ge0$. Its conclusion: for every increasing sequence of volumes there is a subsequence along which all smeared correlations converge to kernels that are smooth away from coincident points. The fixed-volume convergence in item 4 then removes the spacing refinement; see [IV.1](units/IV-1.md). These two limits correspond to Theorems 4.1 and 5.1 of the group's assessment.

A caution about the code. About three quarters of the code filed under "full volume" (folder [`YM/FullVolume`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume)) belongs to the ultraviolet construction: it proves the volume-uniform bounds. The genuinely infinite-volume argument is short, about 7,000 lines.

### Infinite volume → phases, reconstruction and symmetry

The limit satisfies a Euclidean *hierarchy*:

- translation homogeneity;
- reflection positivity, including for smeared joint test functions;
- smoothness on separated configurations, with controlled derivatives;
- a compatible calculus of derivatives.

Reconstruction also needs a uniform bound on products of fields in thin time slabs.

### Reconstruction → identification

For every phase, a completed Wightman theory: unique vacuum, a light-cone bound, heat-kernel decay, and a trivial weak commutant. The heat bound is polynomial; no mass gap follows.

### Symmetry → identification

A conserved stress tensor and its Ward identities. Both are compared, along sequences of scales tending to zero, with the corresponding objects for free Maxwell fields.

### Into the assembly

A single Wilson family serves every part of the public theorem, from extraction to the trace test; [VIII.1](units/VIII-1.md) describes the assembly. The construction run exists for every allowed $G$ and every $b>0$. [III.13](units/III-13.md) describes an alternative coordinated family; its properties require a separate identification before they can be used for this family.

## The work items of the limit theory

Parts IV–VI are written in the code as about seventy numbered work items. Each states one obligation, a "proof request" in the code's vocabulary, and proves it in its own file.

| family | items | part | content |
|---|---|---|---|
| D | 6 | IV | the limit passes to derivatives of the correlation kernels; the Euclidean hierarchy |
| B | 18 | V | time-slab operators, decomposition into phases, reflection positivity and smoothness for each phase |
| C | 29 | V | Osterwalder–Schrader → Wightman: continuation in time, boost covariance, gluing of tubes, locality |
| A | 17 | VI | so(4) brackets, integration to the rotation action, the averaged conserved stress tensor, boosts, comparison with free Maxwell fields |

These families interleave. D supplies the limit hierarchy; B begins with its OS spaces and slab operators. A uses those spaces and the free Maxwell comparison to obtain rotations and Ward identities. Those symmetry results enter both the phase decomposition in B and the boost and covariance arguments in C. The part numbers organize the subjects; they do not give a linear dependency order. See [the strategy](../summary.md#the-strategy) and the [work-item introductions](work-items.md).

The same mechanism appears in the ultraviolet construction: families E–I cover the energy chain of one renormalization step, its stationary point and Hessian, label polynomials, and support bookkeeping.

See [work-items.md](work-items.md) for the complete list.

## What does not follow the order of the parts

The Lean is not written in this order everywhere. Some definitions are needed before the part that explains their properties:

- the reflection-positive cells and chessboard roots;
- the record of the whole construction run;
- the basic types of the renormalization group and of the labels.

Some sections are filed far from their mathematical home. Two examples:

- the rotation-invariance estimate, in folder `Next/ROTATIONS`;
- some renormalization-group pieces filed with the trace-anomaly code.

None of this involves new mathematics. A written account should simply state these definitions early.

## How reliable is this

- Reachable declaration sets for seventeen named results were compared with OpenAI's compiled record. This comparison does not verify every edge or the mathematical interpretation of the interfaces ([method](../method.md#1-the-dependency-graph)).
- The plain-language interfaces summarize statements and documentation. The [unit index](units.md) gives each outline's review status; its local limitations describe which arguments remain at statement level. The [exact statement](../statement.md) distinguishes the public theorem from additional construction conclusions.
- [Report a correction](https://github.com/scottnarmstrong/yang-mills-informalization/issues) with the page, heading and source reference.

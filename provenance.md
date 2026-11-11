# Where the ideas come from

> An analysis written by an AI model (GPT-6 Astra), from the Lean source and the literature listed at the end.
> It asks which parts of the proof follow Balaban's programme, which follow OpenAI's 2026 sigma-model papers, which are standard and which appear new.
> It identifies the closest antecedents among the sources read, not borrowing or priority.
> It has not been reviewed by the authors of the works it discusses.

**Contents**

- [Main conclusions](#1-main-conclusions)
- [The source toolkits](#2-the-source-toolkits)
- [Component-by-component provenance](#3-component-by-component-provenance)
- [Cross-cutting comparisons](#4-cross-cutting-comparisons)
- [What appears new, and what is routine](#5-what-appears-new-and-what-is-routine)
- [Open questions and limits](#6-open-questions-limits-and-priorities-for-expert-checking)
- [Bibliography and source access](#7-bibliography-and-source-access)

**Source keys.** Full publication details and reading limits are in [§7](#7-bibliography-and-source-access). NLSM means nonlinear sigma model; RG means renormalization group; UV means ultraviolet.

| Key | Source |
|---|---|
| N1 | OpenAI, *Exponential decay in two-dimensional classical O(n) models* (2026) |
| N2 | OpenAI, *Sharp mass bounds for the two-dimensional O(4) model* (2026) |
| N3 | OpenAI, *The canonical massive continuum limit of the two-dimensional O(3) model* (2026) |
| N4 | OpenAI, *An Isolated Particle Pole for the Two-Dimensional O(3) Spin Field* (2026) |
| N5 | OpenAI, *Exact mass asymptotics for the two-dimensional O(4) lattice model* (2026) |
| N6 | OpenAI, *The Critical Spin Field of the Planar XY Model* (2026) |
| B-Green; B-Prop-I, B-Prop-II | Bałaban, lattice Green's functions and gauge propagators (1983–1984) |
| B-RG-I, B-RG-II | Bałaban, *Renormalization Group Approach to Lattice Gauge Field Theories* (1987–1988) |
| B-Conv; B-Large-I, B-Large-II | Bałaban, convergent gauge expansions and large-field renormalization (1988–1989) |
| B-Higgs | Bałaban, finite-volume Higgs lower bound (1982) |
| B-N-I, B-N-II, B-N-III; B-N-Var; B-N-Loc-I, B-N-Loc-II; B-N-Large; B-Spin | Bałaban, N-vector RG, variational, localization and large-field works (1995–1998) |
| B-N-Corr; B-Corr | Bałaban and O'Carroll, N-vector correlations (1999) and effective-action correlation methods (1997) |
| D-I, D-II, D-III | Dimock, *The Renormalization Group According to Balaban* (2013–2014) |
| Bry; Cam | Brydges, cluster expansions (1986); Cammarota, polymer convergence and decay (1982) |
| Abbott82; GW73; P73 | Abbott, background-field method (1982); Gross–Wilczek and Politzer, asymptotic freedom (1973) |
| FILS78; OSe78 | Fröhlich–Israel–Lieb–Simon, reflection positivity; Osterwalder–Seiler, lattice gauge theory (1978) |
| BBS19; BY90 | Bauerschmidt–Brydges–Slade, RG method (2019); Brydges–Yau, gradient perturbations (1990) |
| Fed87; MRS93 | Federbush, lattice–continuum duality (1987); Magnen–Rivasseau–Sénéor, YM4 with an infrared cutoff (1993) |
| OS73, OS75 | Osterwalder–Schrader, Euclidean reconstruction (1973, 1975) |
| CDJ77 | Collins–Duncan–Joglekar, trace and dilatation anomalies (1977) |
| W69; Z73; BF00 | Wilson, operator products (1969); Zimmermann, short-distance expansion (1973); Brunetti–Fredenhagen, distribution extension (2000) |
| Wilson74; Seiler82; Glimm–Jaffe87 | Background references: lattice gauge theory, constructive gauge theory and functional-integral QFT |

## 1. Main conclusions

Are the ideas closer to Balaban's programme or to OpenAI's recent papers on two-dimensional sigma models?

**The detailed ultraviolet engine is closest to the sigma-model papers; the proof as a whole has mixed antecedents.**
The closest inspected formulation of that engine is *Sharp mass bounds for the two-dimensional O(4) model* (N2), with developments in the canonical O(3) paper (N3).
The evidence is a conjunction of specific constructions, not the generic presence of renormalization, Gaussian integration or polymers.
The converse claim—“essentially Balaban, with the remainder just formalization”—also fails against the inspected sources.
Balaban supplies much of the programme and several gauge-specific mechanisms, but neither the particular retained-density implementation nor the complete stated continuum endpoint is contained in his cited gauge series.

Four observations support this conclusion.

1. **The exact density format is unusually close to N2.**
   The clipped kinetic term, masked square, regular errors with subtraction conditions, compulsory covering inventories, fixed reference thresholds, window inverse columns and exact reset occur together in N2 §5, pp.38–55.
   The corresponding objects occur in [`YM/RG/PathActions.lean:210–242`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L210-L242), [`YM/RG/Activities.lean:42–129`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L42-L129), [`YM/RG/History.lean:63–85`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L63-L85), [`YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean:65–74`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L65-L74) and [`YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean:71–95`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean#L71-L95).
   This is evidence of the **same specific devices**, substantially adapted to gauge variables.
2. **Several tempting NLSM attributions are actually older.**
   Balaban already has symmetric nonlinear group averages and normalized gauge kernels, B-RG-I pp.252–254, Eqs.(0.4)–(0.15), as well as marginal Maxwell extraction, pp.258,292–297.
   The relevant Lean counterparts are [`YM/RG/Patch.lean:102–179`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L102-L179) and [`YM/RG/Activities.lean:70–75`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L70-L75).
   Gaussian square completion, cluster bounds and safe ordering of constants have still broader antecedents.
3. **The gauge comparison and continuum identification require separate treatment.**
   The determinant budget at [`YM/Next/RANK/Determinant.lean:240–274`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L240-L274) cancels gauge-dependent volume powers; it is not N3 §7's rough-region filling argument.
   The Ward/Maxwell/phase/trace route in [`YM/Next/ROTATIONS/Route.lean:114–123`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L114-L123), [`YM/Phase/Mixture.lean:65–86`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L65-L86) and [`YM/TraceExtension/Verse/Cape.lean:53–88`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L53-L88) differs from N3 §§10–11,15.
   Much of reconstruction is standard; several combinations and uniform estimates are plausible new contributions.
4. **The endpoints differ on both sides.**
   B-Large-II, Theorem 1, p.355, expressly assumes small effective couplings and leaves physical observables for further work, p.356.
   N3 Theorems 1.1–1.2, pp.5–7, assert a canonical massive limit.
   [`ChallengeSpec.lean:177–188`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L177-L188) instead permits a volume subsequence and does **not** assert a positive mass gap.
   Unique vacuum in each phase is not a mass-gap statement: compare [`PublicTheory.lean:270–278`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L270-L278) with [`YM/EveryPhase/Decay.lean:173–192`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decay.lean#L173-L192).

A defensible size comparison is possible, but **not a measurement of intellectual ownership**.
The size comparison counts the union of source spans of declarations used by the main theorem within each of the 32 units.
The total within the units is **410,299 lines**; the global union, including declarations outside those units, is **410,820**.
A declaration's span includes statements, proof code and internal comments, so this is an implementation weight.
It is neither the physical repository line count nor a count of mathematical ideas.

| Closest organizational comparison | Units | Declaration-span lines | Share of lines within the units | Share of 32 units |
|---|---:|---:|---:|---:|
| NLSM-nearest exact UV format and iteration | 7 | 135,357 | 33.0% | 21.9% |
| Balaban-nearest gauge background/free/marginal engine | 3 | 48,591 | 11.8% | 9.4% |
| Mixed gauge comparison, all-label extension and observable bounds | 4 | 90,943 | 22.2% | 12.5% |
| Common lattice, algebra and RG tools | 5 | 31,375 | 7.6% | 15.6% |
| Continuum, identification and final assembly | 13 | 104,033 | 25.4% | 40.6% |

These are disjoint **groups of units**, not exclusive provenance shares.
The first group contains considerable Balaban and standard mathematics; the second contains standard Gaussian and perturbative mathematics.
Neither the mixed gauge-comparison group nor the continuum group can be attributed wholesale to either author group.
The unit membership is recorded in §1.2, and the evidence for each comparison follows in §3.
Under a stricter definition, retaining only [III.4](outline/units/III-4.md), [III.8](outline/units/III-8.md), [III.9](outline/units/III-9.md) and [III.10](outline/units/III-10.md) as NLSM-nearest gives **24.1%** of the implementation.
Thus the conclusion survives excluding the more debatable block-observation, schedule and iteration comparisons.
It does not justify saying that a majority of all mathematical ideas originated in the NLSM papers.

These conclusions concern **closest mathematical antecedents among the sources read**.
They do not establish causal borrowing, author intentions, access histories, or priority over literature not read here.
The September–October preprint dates precede the October Lean source version, but that chronology alone proves no dependence.

### 1.1 Scope and vocabulary

Claims about the proof's mechanisms rest on the Lean definitions and proofs cited below. The [statement.md](statement.md), [summary.md](summary.md) and unit outlines provide orientation; their assertions about the literature are not evidence for these comparisons. The counts concern declarations used by the main theorem, as identified by the existing dependency information. This is a comparison of mathematical mechanisms, not a certification of the Lean theorem or of the six preprints.

“Same idea/device” means a fairly specific construction with the same role and structural constraints.
“Same general method” means an established technique compatible with many implementations.
“Superficial resemblance” means common terminology or a common goal without a matched mechanism.
Those distinctions matter particularly for the words *sector*, *Gaussian*, *annulus*, *locality*, *nonfree* and *continuum*.

The classifications used below are:

- **STANDARD:** widely established mathematics or textbook physics, including routine functional analysis.
- **ADAPTED-BALABAN:** a specific gauge/RG mechanism closely matching the inspected Balaban programme.
- **ADAPTED-NLSM:** a specific mechanism most closely matching one of N1–N6 in the sources read.
- **ADAPTED-OTHER:** an identified older method outside those two groups.
- **candidate-NEW:** a specific combination, estimate or extension for which no matching construction was found; this is a bounded novelty claim, not established priority across the literature.

A mixture's proportions describe rough mechanism weight within that component, rounded to broad increments.
They are judgement calls, not fractions of proved originality; changing them by 15–20 percentage points is often reasonable.
For a split component, the reported size is its **parent unit's** allocation unless an actual file size is stated.
Repeated parent sizes must not be added.
Confidence refers to the correspondence; confidence in universal novelty is lower throughout.

Lean links identify exact passages at commit `3456e5e75cf8d4cd558955a5c7638fba2d68f464`.
N1–N6 refer to the six OpenAI preprints; their printed and PDF page numbers agree.
Balaban citations use printed journal pages. Dimock citations use the preprint pagination of the dated versions specified in §7, which differs from journal pagination.
The bibliography distinguishes full-text access with selective reading, partial extracts, abstracts and references cited only for established background.

### 1.2 Complete unit accounting

The units locate material; they do not imply that a declaration belongs mathematically to only one component.
Within each unit, overlapping declaration spans count once.
Of the declarations used by the main theorem, 425 fall outside the units: 98 have usable source intervals and 327 do not.
The intervals outside the units add 521 lines to the union.
The older outline total, 413,085, is not the denominator for these percentages.

| Unit | Lines | Mechanism/group of units |
|---|---:|---|
| [I.1](outline/units/I-1.md) | 3,367 | Lattice/Haar/Wilson setup; common |
| [II.1](outline/units/II-1.md) | 10,793 | Labels and jets; common |
| [II.2](outline/units/II-2.md) | 3,613 | Marker and polymer algebra; common |
| [III.1](outline/units/III-1.md) | 4,133 | Block observation and gauges; NLSM-nearest format, mixed ancestry |
| [III.2](outline/units/III-2.md) | 18,129 | Schedules and shooting; NLSM-nearest organization |
| [III.3](outline/units/III-3.md) | 8,966 | Free covariances; Balaban-nearest gauge task |
| [III.4](outline/units/III-4.md) | 37,825 | Sector Gaussian integration; NLSM-nearest implementation |
| [III.5](outline/units/III-5.md) | 9,671 | Absolute cluster sums; common |
| [III.6](outline/units/III-6.md) | 19,698 | Stationary background; Balaban-nearest gauge task |
| [III.7](outline/units/III-7.md) | 19,927 | Wilson matching and marginal flow; Balaban-nearest gauge task |
| [III.8](outline/units/III-8.md) | 4,103 | Connected activities and supports; NLSM-nearest format |
| [III.9](outline/units/III-9.md) | 7,162 | Exact coupling reset; NLSM-nearest format |
| [III.10](outline/units/III-10.md) | 49,766 | Nonlinear step; NLSM-nearest format |
| [III.11](outline/units/III-11.md) | 42,556 | Gaussian/interacting comparison and rank; mixed |
| [III.12](outline/units/III-12.md) | 18,944 | Chessboard and fixed-volume convergence; mixed |
| [III.13](outline/units/III-13.md) | 22,077 | All labels and growing orders; mixed |
| [III.14](outline/units/III-14.md) | 14,239 | One construction and iteration; NLSM-nearest organization |
| [III.15](outline/units/III-15.md) | 7,366 | Observable cost and propagation; mixed |
| [III.16](outline/units/III-16.md) | 3,931 | Analytic trace estimates; common |
| [IV.1](outline/units/IV-1.md) | 7,336 | Infinite-volume extraction; continuum |
| [V.1](outline/units/V-1.md) | 5,718 | Phase decomposition; continuum |
| [V.2](outline/units/V-2.md) | 6,419 | Reconstruction; continuum |
| [V.3](outline/units/V-3.md) | 4,063 | Every-phase reconstruction; continuum |
| [VI.1](outline/units/VI-1.md) | 7,689 | Ward identities and rotations; continuum |
| [VI.2](outline/units/VI-2.md) | 14,170 | Maxwell comparison and stress; continuum |
| [VII.1](outline/units/VII-1.md) | 8,004 | Short-distance fields; continuum |
| [VII.2](outline/units/VII-2.md) | 20,645 | Trace anomaly; continuum |
| [VII.3](outline/units/VII-3.md) | 3,303 | Nonfree witness/free detection; continuum |
| [VII.4](outline/units/VII-4.md) | 10,193 | OPE and contacts; continuum |
| [VII.5](outline/units/VII-5.md) | 232 | Leading-log asymptotic; continuum |
| [VII.6](outline/units/VII-6.md) | 4,205 | Flexible scales; continuum |
| [VIII.1](outline/units/VIII-1.md) | 12,056 | Common-witness assembly |

The word “continuum” in this table includes identification and assembly, not a single antecedent class.
[III.11](outline/units/III-11.md) and [III.12](outline/units/III-12.md) also contain continuum-facing arguments.
Conversely some exterior-flux dependencies are included in upstream units, so line shares cannot locate all conceptual boundaries perfectly.

## 2. The source toolkits

### 2.1 OpenAI's six papers

The papers are distinct and must not be treated as a single “NLSM method”.
The following descriptions concern their stated results and actual constructions; these descriptions do not certify those results.

#### N1: exponential decay, not an exact ultraviolet RG construction

Theorem 1.1, p.1, bounds the spin two-point function on every finite free-boundary subgraph of the square lattice, uniformly when ferromagnetic bond strengths are weakened or deleted.
The result does not assert a full transfer gap; p.2 explicitly separates spin correlations from invariant observable sectors.
Its distinctive analytic input is a fourth variation in two noncommuting rotation directions, **Proposition 2.2**, pp.5–8, Eq.(2.8).
The finite-graph Ward identities permit arbitrary prescribed boundary spins.
The commutator calculation is explicit: Eq.(2.10) is a change of variables, Eq.(2.11) gives the quadratic commutator field, and Eq.(2.12) cancels the fourth-order mixed coefficient for generator pattern $(a,b,a,b)$.
The summed fourth derivative has a nonnegative-square contribution; it is not a perturbative effective-action calculation.
Section 3, pp.9–12, uses signed frequency families on annuli: the commutator response gains $(\log N)^2$, whereas the error has size $\log N$.
The boundary twist partition-function ratio tends to one, uniformly under deleting bonds and vertices.
Section 4 converts this into rare embedded-Ising sign-cluster crossings.
Simultaneous boundary pinning allows disjoint annuli to be compared independently; a coarse-path count then gives exponential decay.
The final reduction from n components to three conditions the remaining coordinates and uses uniformity under weaker bonds.
**Provenance implication:** attributing the YM ultraviolet machinery to N1 on the basis of “non-Abelian fluctuations” would be a superficial resemblance.
The N2/N3 retained-density constructions are the relevant comparators for that machinery.

#### N2: the principal direct comparator for the ultraviolet engine

The result, Theorem 1.1, p.3, is a full lattice transfer-gap bound of order $\sqrt{\beta}\,e^{-\pi\beta}$.
It is a lattice theorem; §11, p.81, separately discusses assumptions needed for a continuum spectral interpretation.
Section 2, pp.9–11, turns a small rectangular partition-function defect into a full transfer-gap estimate by positivity and time/space doubling.
Section 3, pp.12–33, proves preliminary all-observable mixing using quaternion current identities, stiffness reduction, disagreement propagation, and conditional Ising/rotator comparisons.
This preliminary infrared input is logically separate from exact weak-coupling blocking.
Section 4, pp.34–38, constructs scalar block precisions, conditional means and covariances, and a positive edge-stack identity.
Section 5, pp.38–55, gives the exact nonlinear map, including rough configurations, and its comparison estimates.
Section 6, pp.56–61, fixes the kinetic drift through finite-volume coefficient comparisons.
Section 7, pp.61–65, admits trajectories and shoots to a fixed terminal kinetic coupling.
Section 8, pp.65–77, compares complete positive densities with signed mandatory covering expansions.
Section 9, pp.77–79, transfers a preliminary finite-box gap test from a fixed reference cutoff to all finer cutoffs.
Section 10, pp.79–81, obtains an upper mass bound from correlated block observables.
Appendices A–D supply the uniform free estimates, a fixed coefficient norm, complete supports of local sector factors, and joint Gaussian product majorants.

The most useful distinctive devices for comparison are these:

1. **Tagged normalized observation**, Eq.(5.2), p.39: use the normalized weighted spin mean on its good branch and a weighted constituent spin on its fallback branch; normalize the output noise exactly.
2. **Clipped-plus-masked-square kinetic energy**, Eq.(5.3), p.39: a quadratic direct term below threshold, a linear direct term above it, and a masked localized quadratic term.
3. **Fixed reference thresholds**, Eq.(5.1), p.38: all geometry uses $H_j$, while the actual running coupling varies in a band around it.
4. **Complete read supports**, pp.39–41 and Appendix C: record masks, eligibility tests, negative queries, windows, and lifted winding paths, not merely visible field arguments.
5. **Two activity classes**, Eqs.(5.7)–(5.10), pp.40–41: differentiable regular errors with zero affine Hessian; merely measurable signed large-gradient weights with nonempty inventories.
6. **Mandatory exact cover**, Eq.(5.9), p.40: disjoint supports must cover precisely the bad-edge set. This is not an ordinary optional polymer gas.
7. **One Gaussian for a fixed sector**, Eqs.(5.18)–(5.21), p.44: window inverse columns, symmetrized finite-range covariance, explicit density-ratio and determinant residuals.
8. **Core reserves and protector supports**, Lemma 5.2, pp.43–44; Appendix C: energy per primary seed pays entropy, bad-region normalization, and derivatives through hard inputs.
9. **Joint products before expansion**, Lemma 5.3, pp.47–48; Appendix D: overlapping factors use the same Gaussian; endpoint quadratic loads are controlled collectively.
10. **Inventory-preserving connected reassembly**, §5.4, p.49: logarithm only for empty-inventory components; forbidden background polymers are opened and attached to seeded components.
11. **Exact kinetic reset**, Eqs.(5.40)–(5.42), pp.54–55: remove constant/affine Hessian pieces and put mask-complement corrections into the compulsory gas.
12. **Cutoff matching before comparison**, §7: the running marginal coordinate must agree before contracting all other endpoint data.

#### N3: extends the engine to continuum fields and stronger comparisons

N3 directly states the inherited scalar and density ingredients in §§3–4; §3.3, pp.23–28, explicitly defines the adapted retained-density class.
Its target is $S^2$, not the quaternion group $S^3$; this changes the rotation algebra, physical tangent dimension, Jacobian, and drift.
Theorem 1.1, pp.5–6, uses susceptibility and second-moment length to normalize the full continuum limit along all diverging real bare couplings.
Theorem 1.2, pp.6–7, first constructs the theory along a terminal-coupling trajectory.
Section 2, pp.9–21, proves preliminary mixing with a strict saving in $e^{(4\pi-\eta)\beta}$.
Section 4, pp.29–39, includes ordinary and inclined first observations, their free kernels, and common history estimates.
Section 5, pp.39–55, strengthens the regular contraction towards $L^{-2}$ using inversion/tangent-reflection cancellations.
Its **ambient completion**, Lemma 5.2, pp.42–43, adjoins a normalized scalar Gaussian to the two-dimensional tangent field, producing an $\mathbb R^3$-valued common Gaussian without adding a physical degree of freedom.
The scalar normalization cancels one color in the determinant, p.44.
Sections 6–7, pp.55–69, shoot the terminal coupling and establish an **integrated comparison** against one positive reference law.
Proposition 7.1, p.61, allows the comparison activities to be signed or complex; only the base density is required to be positive and reflection positive.
Lemmas 7.3–7.4, pp.62–65, combine chessboard exponential moments, local Lipschitz fillings of rough regions, cap entropy, and retained energy gain.
The covering identities keep the original region geometry fixed during replacements, §7.4, p.65.
Section 8, pp.69–74, transfers a fixed-box estimate to a physical mass gap uniform in cutoff.
Section 9, pp.74–82, carries independent local complex spin sources; normalizing their aligned linear response gives the product of source-normalization factors.
Sections 10–11 construct Schwinger distributions, restore Euclidean rotations, reconstruct, and prove a separated nonzero fourth cumulant.
Sections 12–15 remove the bounded bare-offset ambiguity.
The key additional ingredients are summable sensitivity of the kinetic error (Lemma 12.2, pp.97–98) and two incommensurable offset periods arising from ordinary and inclined blockings (§15.2, pp.118–119).
**Not transferable without argument:** these last uniqueness, mass-gap, and rotation mechanisms do not appear merely from recognizing the common ultraviolet density class.

#### N4: isolated mass from a massive continuum input

Theorem 1.1, p.2, asserts a positive isolated lowest atom of the spin-field Källén–Lehmann measure.
The paper takes the constructed O3 field and its cutoff-uniform physical gap and factorial moments as inputs; Proposition 2.1, pp.4–5, records them.
Section 3, pp.6–9, derives cylinder traces and torus-to-plane comparisons.
Section 4, pp.9–14, bounds covariance of even spin polynomials quadratically in spin two-point correlations, separating even and odd transfer sectors.
Section 5, pp.14–19, attaches quantitatively visible spin weight to low-energy states through embedded sign clusters and circuits.
Section 6, pp.19–21, obtains a linear-in-circumference state count below the two-excitation threshold using trace doubling and positive polynomial energy cutoffs.
Section 7, pp.21–25, combines momentum windows with the state count to prove that only finitely many masses lie near the bottom of spectral support.
The proof does not obtain a particle pole from exponential decay alone.
**Provenance implication:** its use of positive spectral measures is standard shared machinery; its two-dimensional cluster/circuit/state-count mechanism is not established as a YM antecedent by the inspected Lean.

#### N5: an exact mass via a second regulator

Theorem 1.1, p.3, states the exact prefactor $32e^{\pi/4-1/2}$ for the full O4 transfer gap in original lattice time units.
Sections 2–3, pp.6–16, compare the spin-visible mass with the full spectrum and a rectangular partition-function rate.
Sections 4–6, pp.16–55, introduce a Brownian U(2) regulator, a particle expansion, a commuting contact Hamiltonian, integral equations, finite-circle Bethe states and a spectral maximization over particle parities.
These are distinctive integrability and regulator-specific steps; no basis was found for importing them into the YM comparison.
Sections 7–9, pp.55–97, adapt the retained-density engine to four kinetic coefficients: spatial and temporal stiffnesses for each of the quaternion and circle fields, a real circle lift, complex weights, and integer curvature.
The observation in §7.4, p.61, uses normalized mean/fallback noise on flat blocks and a medoid with randomized symmetric ties when curvature is present.
Section 7.7, pp.65–68, retains the same window Gaussian, determinant residuals and joint-factor logic.
Section 9.2, pp.87–88, shoots four parameters rather than a single coupling.
Sections 9.3–9.6 compare the possibly complex Brownian expression by integration against the positive flat reference measure, including growing rectangular aspect ratios.
Section 10, pp.98–104, determines a finite coupling shift by a helicity response, separately from the partition-error estimate.
Section 11, pp.104–107, extracts odd/even traces, removes the additional circle field, and transfers the auxiliary mass.
**Provenance implication:** the generalized exact-density engine is relevant; Bethe states, U(2) loops, winding-sector parity and exact mass extraction are not evidenced as ingredients of this Lean construction.

#### N6: XY uses a different mechanism

Theorem statements in §1, pp.2–4, concern the critical spin field as an imaginary exponential of a Dirichlet GFF, normalized by exact center magnetization and a diagonal Green factor.
Section 2, pp.6–12, imports critical height and pin limits and relates spins to magnetic height sectors.
Section 3, pp.12–20, proves fixed-positive-radius-hole sector comparisons by Gaussian variational estimates.
Section 4, pp.20–24, controls flat pins on long annuli.
Section 5, pp.24–28, glues conditional interface kernels while summing the integer constant mode.
Lemma 5.4, p.27, is a useful specific device: kernels in $(0,1]$ with small average loss contract centered densities, so an arbitrarily poor but positive initial core eventually produces a last marginal bounded by two.
Section 6, pp.28–35, cancels identical microscopic annular normalizations against the center observable and obtains separated correlations.
Section 7, pp.35–43, uses Lee–Yang moments, integrable two-point bounds, collision removal and local Sobolev tightness.
**Provenance implication:** this is not the retained-action/kinetic-reset construction of N2–N3. Calling any annulus or Gaussian comparison in YM an XY adaptation would be superficial without further evidence.

### 2.2 Balaban's gauge toolkit

Balaban's programme starts with compact-group link variables and preserves a complete effective density while integrating short scales.
Its main analytic tasks are gauge fixing, regular localized propagators, nonlinear background fields, marginal extraction, and control of large-field regions through many iterations.
The pertinent sources span 1983–1989; they are not a single theorem that can be invoked as an unconditional four-dimensional construction.

**Block averaging and gauge fixing.**
B-Prop-I §A, pp.18–20, Eqs.(1.8)–(1.17), gives contour averages and their linear versions after axial fixing.
B-RG-I pp.252–254, Eqs.(0.4)–(0.15), uses route symmetrization, analytic nonlinear group means and gauge-invariant kernels.
The mean respects inversion, permutation, left/right multiplication and linearization.
Thus neither symmetry averaging nor a soft normalized kernel is a distinctive innovation of N2.
B-Prop-I §C, pp.20–26, changes to a divergence-gauge formulation with projection operators to obtain regular propagators.
The Lean comparison is [`YM/RG/Patch.lean:102–179`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L102-L179), [`YM/RG/Block.lean:49–72`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L49-L72), and [`YM/PCalc/Chart.lean:52–67`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L52-L67); the formulas and division of gauge roles differ.

**Variational problem and backgrounds.**
The nonlinear stationary background is built from a linear lift plus corrections satisfying local analytic equations.
B-RG-II §1, pp.2–3, Eqs.(1.2)–(1.5), recalls those equations and localizes their propagators.
The original gauge variational paper is cited there but missing from the 24 works listed in §7.3.
B-N-Var is a directly available related spin-model source, not a substitute for reading that gauge paper.
[`YM/PCalc/Chart.lean:78–100`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L78-L100) and [`YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean:24–43`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L24-L43), [`YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean:80–92`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L80-L92) implement the corresponding task for the actual soft-block tree chart.

**Propagators and random walks.**
B-Green §2, pp.574–585, patches local inverses by generalized random-walk expansions.
B-Prop-I §F, pp.35–40, applies regularity/locality estimates to gauge propagators.
B-Prop-II handles irregular domains and restrictions at several scales; see p.229 and Eq.(2.86), p.238.
The traced Lean free rows instead arise from analytic symbols, Laurent coefficients and finite-period Fourier identities, [`YM/Work/F07.lean:34–81`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07.lean#L34-L81), [`YM/Work/F07.lean:109–112`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07.lean#L109-L112).
This is a difference of implementation and required geometry: Balaban himself uses Fourier and Laurent formulas elsewhere.

**Small/large fields and localization.**
B-Conv §2, pp.254–262, represents complete densities by nested region histories with coupling-dependent cutoffs.
B-Large-I pp.175–177 explains why one rare-region penalty cannot simply be carried unchanged through arbitrarily many four-dimensional steps.
Its R operation replaces exhausted large-field densities by normalized local ones, with quotient corrections preserving the integral, Eqs.(0.2)–(0.6).
B-Large-II §1 localizes and bounds these corrections.
Lean's inspected interfaces retain forced inventories and explicit seed reserves, [`YM/RG/Activities.lean:42–55`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L42-L55), [`YM/RG/Activities.lean:113–129`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L113-L129) and [`YM/Pressure/Seeds.lean:34–68`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L34-L68).
The exact aged-region R replacement has not been identified as a separate step in that route.
This is a bounded negative finding, not proof that no analogous local replacement occurs anywhere in the repository.

**Localization, polymers and marginal flow.**
B-RG-II §§1–2, pp.2–22, makes nonlinear background dependence local and exponentiates connected corrections.
B-RG-I p.258, Eqs.(0.28)–(0.30), subtracts the gauge-action marginal direction.
Its §4 differentiates gauge Ward identities through fourth order; §5, pp.292–297, identifies the transverse Maxwell quadratic coefficient and higher-derivative remainder.
The same gauge tasks appear at [`YM/PCalc/Chart.lean:104–109`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L104-L109), [`YM/RG/Activities.lean:70–75`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L70-L75) and [`YM/Next/STATIONARY/Level/Transition.lean:86–93`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L86-L93).
The particular compulsory-inventory gas and masked reset in Lean more closely match N2's later retained format.

**The precise ultraviolet endpoint.**
B-Large-II Theorem 1, p.355, assumes all effective couplings lie in a sufficiently small interval.
The next paragraph explicitly says that the argument removing the condition had not yet been published, so the theorem retains the assumption.
Equation (0.1), pp.355–356, provides upper and small-field lower density bounds uniform in scale, torus and configuration.
The same page leaves physical-observable analysis, including loops, for further work.
B-RG-I Theorem 2, p.259, states the tuned SU(2) running objective while postponing its proof.
These scope limits are explicit in the sources; they are not inferred from the absence of a later reconstruction chapter.
The Lean has its own coefficient calculation and transition proof, [`YM/Next/STATIONARY/FullPlanned.lean:17–52`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L17-L52), followed by observable and reconstruction work.
None of this source comparison certifies that the latter work is mathematically correct.

**What the comparison does not identify as literally used.**
The traced Lean route does not invoke Balaban's stability theorem as a black box.
Its global nonlinear observation is a tagged soft kernel, not the hard block delta constraint of the initial linear Propagators formulation.
Its free-row construction is not the same irregular multiscale-domain inverse construction.
Its seed/activity interface is not demonstrably the same separate R replacement.
Its stage schedule allows increasing orders and factors rather than simply fixing all such data once.
The source pairs establishing these differences are given in components 04–08 and 16–17.
They are departures from particular formulas, not evidence that localized integration, gauge symmetry or large-field control is new.

### 2.3 Balaban's N-vector work, Dimock and common constructive tools

A Balaban-versus-NLSM opposition is historically misleading if “Balaban” means only his gauge papers.
B-RG-I p.260 already says the method also applies to two-dimensional group-valued chiral models.
His later N-vector programme develops nonlinear backgrounds, RG equations, localization, fluctuation integration and large-field renormalization in a spin setting.
B-N-II p.676 insists that localized outputs depend only on localized inputs and avoids artificial torus dependence by formulating the flow globally.
B-N-Loc-I §§2–4 treats backgrounds, covariances and nested nonlinear compositions.
B-N-Large §4 treats a last-step generating functional.
B-N-Corr p.493 and its main results concern spontaneous magnetization and transverse Goldstone behavior in dimensions at least three.
These are not the two-dimensional massive O(3)/O(4) conclusions of N2–N3, but they refute the idea that Balaban's interests stopped at vacuum partition functions.

B-Corr pp.1–2 presents a general effective-action method for correlations, with massive Gross–Neveu as its worked example.
It is neither a pure-gauge observable construction nor one of the classical N-vector papers despite its inclusion in the same bibliography.
The bibliography also includes a Higgs lower-bound paper and Cammarota's polymer paper; neither should be misidentified as a Balaban pure-gauge article.

Dimock I–III explain the Balaban-style small-field, large-field and convergence architecture for scalar $\varphi^4$ in three dimensions.
They are excellent sources for Gaussian normalization, domains and quantifier order, but cannot supply missing non-Abelian identities.
D-I PDF p.10, Eqs.(74),(78), exhibits determinant normalization; D-II PDF p.29 states a hierarchy of choices.
D-III PDF p.33, Theorem 2 and Corollary 1, establishes partition-function stability and remarks that correlations require further work.

Bry §§3–4, pp.138–148, supplies older tree bounds and interpolation formulas common to both programmes.
B-RG-I pp.250–251 explicitly credits Gawędzki–Kupiainen's analytic effective-action viewpoint.
That attribution was read in Balaban; the underlying Gawędzki–Kupiainen papers were not independently reread here.
The distinction is therefore between that historical pointer and the directly matched formulas in B-RG-I and N2.

## 3. Component-by-component provenance

There are 39 components below, covering all 32 units.
Large units are split by mechanism; several mechanisms cross unit boundaries.

### 01. Lattice, Haar measure and Wilson starting law — [I.1](outline/units/I-1.md)

**Function and size.** 3,367 lines.
This establishes periodic links, compact-group integration, plaquette energy, partition function and normalized lattice expectations.
It is the exact finite-dimensional starting probability model.

**Evidence.** [`YM/Wilson/Law.lean:29`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L29-L29), [`YM/Wilson/Law.lean:55–99`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L55-L99) defines energy, prior, bare density, partition and law.
B-RG-I p.252, Eq.(0.2), starts with the same Wilson action and attributes it to Wilson.
Wilson 1974, *Confinement of quarks*, is the original lattice-gauge reference; its broad role is cited from established knowledge, not a fresh full-paper reading.

**Classification.** STANDARD, high confidence; effectively 100% at the level of ideas assessed here.
The abstract compact matrix group and formal symmetry bookkeeping are implementation generality.
Sharing the starting model discriminates neither Balaban nor NLSM provenance.

### 02. Gauge-invariant local fields, jets and engineering degree — [II.1](outline/units/II-1.md)

**Function and size.** 10,793 lines.
Finite jets of radial-gauge potentials provide a common algebra of local composite labels.
A weighted degree makes each bounded-degree space finite dimensional and supports later quotient and detector arguments.

**Evidence.** [`YM/Labels/Jet.lean:19–39`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L19-L39) gives derivative weight and radial constraints.
[`YM/Labels/Polynomial.lean:60–112`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L60-L112) gives degree, finite dimensionality, invariant space and labels.
The closest broad precedent is the local composite-operator framework of Wilson 1969 and Zimmermann 1973, discussed under §7 with abstract-only access.
N3 §9.1, p.75, instead introduces complex sources for a particular spin field, not this gauge-jet algebra.
B-RG-I §4, pp.281–291, uses gauge Taylor identities but does not supply the all-label construction shown here.

**Classification.** Roughly STANDARD/ADAPTED-OTHER 75%, candidate-NEW organization 25%; medium confidence.
The polynomial algebra is standard; the chosen common finite-dimensional system and its later compatibility requirements are specific to this construction.
There is no evidence for an exclusive NLSM origin of the local-field concept.

### 03. Nilpotent markers and polymer/source algebra — [II.2](outline/units/II-2.md)

**Function and size.** 3,613 lines.
Truncated commuting source variables retain finitely many insertions and allow coefficient bounds for products and exponentials.
This supplies bookkeeping shared by vacuum and observable expansions.

**Evidence.** [`YM/Marker/Truncated.lean:10–58`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L10-L58) constructs nilpotence, finite exponential passage and coefficient budgets.
N3 §9.1, p.75, likewise carries independent local complex sources through regular and covering lists.
Bry §§3–4, pp.138–148, provides the older connected/polymer expansion setting; source differentiation is a standard extension of generating functions.

**Classification.** STANDARD 80%, ADAPTED-NLSM organizational affinity 20%; high confidence for the standard part, medium for the immediate comparison.
The Lean's finite algebra is not identical to an analytic complex-source neighborhood.
Its value is exact coefficient tracking, not a new physical source principle.

### 04. Globally defined normalized block observation — [III.1](outline/units/III-1.md) (a)

**Function and size.** Within [III.1](outline/units/III-1.md)'s 4,133 lines.
Gauge-covariant fine-link data produce coarse observations in every configuration, including rough ones.
Tags choose frames and fallback predictors; compact-group noise is normalized exactly.

**Evidence.** [`YM/RG/Block.lean:39–79`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L39-L79), [`YM/RG/Block.lean:146–163`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L146-L163) defines connector, likelihood, noise, density and kernel normalization.
[`YM/RG/Patch.lean:159–179`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L159-L179) implements the mean/fallback predictor.
N2 §5.1, p.39, Eq.(5.2), has the normalized mean on the good branch and a weighted constituent-spin fallback on the bad branch.
B-RG-I pp.252–254, Eqs.(0.4)–(0.15), already has symmetric routes, nonlinear group means and gauge-invariant kernels.
Fed87, pp.18–20, also describes near-identity group averaging; its result is classical compatibility, not a quantum measure construction.

**Classification.** Approximately ADAPTED-NLSM 45%, ADAPTED-BALABAN 40%, STANDARD 15%; medium-high confidence.
The **specific total tagged construction** is the close N2 match; normalized kernels or nonlinear means alone are not.
Link transport between independently chosen frames is the substantive gauge adaptation missing from the spin formula.

### 05. Symmetric frame selection and integration gauges — [III.1](outline/units/III-1.md) (b)

**Function and size.** Also within [III.1](outline/units/III-1.md).
A symmetric frame selector belongs to the observation, whereas bounded-height tree slices supply coordinates for integration.
Keeping these roles distinct matters: a minimizing observation frame is not automatically the Gaussian integration gauge.

**Evidence.** [`YM/RG/Patch.lean:109–155`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L109-L155) defines the minimizing regime, eligible frames and their masses.
[`YM/Tree/Pines.lean:7–12`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L7-L12), [`YM/Tree/Pines.lean:24–29`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L24-L29) explicitly separates the minimizing frame and arbitrary rooted forests.
[`YM/PCalc/Chart.lean:52–67`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L52-L67) uses Lie-algebra coordinates on non-tree links.
B-RG-I pp.253–254, Eqs.(0.11),(0.14), symmetrizes axial fixing and uses exponential gauge factors.
B-Prop-I §C, pp.20–26, Eqs.(1.22)–(1.47), performs a different divergence-gauge change with projections.

**Classification.** ADAPTED-BALABAN 60%, STANDARD 20%, candidate-NEW synchronization 20%; medium confidence.
The gauge purpose and symmetry requirements are old; the minimizing/fallback construction and separate tree geometry differ.
No literal use of Balaban's full axial-to-divergence-gauge sequence was established in this traced route.

### 06. Reference schedule, constant order and terminal shooting — [III.2](outline/units/III-2.md)

**Function and size.** 18,129 lines.
A reference inverse coupling determines thresholds and localization radii while the actual coupling is varied.
Successive finite stages accommodate increasing derivative orders and choose a trajectory reaching a prescribed terminal band.

**Evidence.** [`YM/RG/History.lean:43–118`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L43-L118) separates stage choices, hatted reference couplings, geometry and schedule conditions.
[`YM/Shoot/Reach.lean:18–49`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L18-L49), [`YM/Shoot/Reach.lean:112–140`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L112-L140) uses surviving intervals and continuity to shoot the trajectory.
N2 Eq.(5.1), p.38, and §7, pp.61–65, have the same fixed-reference geometry and terminal matching purpose.
BBS19 §8.3, preprint pp.122–123, Proposition 8.3.1, provides an older surviving-interval construction of critical trajectories.
D-II Theorem 3.1, preprint p.29, makes an older constructive order of choices explicit.

**Classification.** ADAPTED-NLSM 40%, STANDARD/ADAPTED-OTHER 40%, candidate-NEW growing-order organization 20%; medium-high confidence.
N2 fixes a block factor and finite order; Lean lets factors/orders grow under one common run.
The threshold monitor is $e^{(\log\log\beta)^2}$, not N2's fixed power of $\log H$.
Neither shooting by continuity nor ordering constants is itself new.

### 07. Free quadratic action, covariances and localized rows — [III.3](outline/units/III-3.md)

**Function and size.** 8,966 lines.
This constructs the free gauge reference, stationary lifts, square-root rows and exponential locality uniformly in finite period.
These are the linear estimates needed before the nonlinear background can be controlled.

**Evidence.** [`YM/PREC/TreeMatch.lean:76–103`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L76-L103) gives the coarse quadratic square-completion identity.
[`YM/Work/F07.lean:34–81`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07.lean#L34-L81), [`YM/Work/F07.lean:109–112`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07.lean#L109-L112) constructs analytic-collar roots and all-period Fourier identities.
[`YM/Next/FREE_KERNELS/Ground.lean:54–59`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Ground.lean#L54-L59), [`YM/Next/FREE_KERNELS/Ground.lean:69–120`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Ground.lean#L69-L120) identifies the concrete rows and uniform bounds.
B-Prop-I §D–F, pp.26–40, especially Eq.(1.64)–(1.67), has the stationary Gaussian lift and comparison to Maxwell energy.
B-Green §2, pp.574–585, and B-Prop-II §B, p.229, use generalized random walks to patch local inverses on irregular multiscale domains.
N2 §4, pp.34–38, gives scalar block precisions and covariances, a useful but less gauge-specific comparator.

**Classification.** ADAPTED-BALABAN 45%, STANDARD spectral/Gaussian tools 40%, later adaptation 15%; high confidence in the mechanism distinction.
The Lean's translation-invariant row construction is Fourier/Laurent based, with sector restrictions handled later.
Balaban also uses Fourier and Laurent methods; the difference is the construction's organization and domains, not possession of Fourier analysis.

### 08. Sector change and localized Gaussian covariance — [III.4](outline/units/III-4.md) (a)

**Function and size.** Within [III.4](outline/units/III-4.md)'s 37,825 lines.
The exact integral is rewritten in tree-chart coordinates, shifted around a background and expressed against a localized Gaussian.
Masks, tags, inactive variables and residual quadratic terms remain in the equality.

**Evidence.** [`YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean:63–71`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L63-L71), [`YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean:95–103`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L95-L103), [`YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean:125–135`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L125-L135) records the actual retained factors and integral identity.
[`YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean:65–74`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L65-L74) builds inverse columns on separate windows, then symmetrizes them.
N2 p.44, Eqs.(5.18)–(5.21), uses exactly this window-column/symmetrization arrangement and retains the inverse defect in the density ratio.
B-RG-II p.12, Eq.(2.5), is an older Gaussian-conditioning/localization predecessor, but less close to this exact finite-range covariance formula.

**Classification.** ADAPTED-NLSM 55%, STANDARD Gaussian identities 25%, ADAPTED-BALABAN 20%; high confidence.
The symmetrized matrix is **not** asserted to be the true principal inverse; the residual is essential.
Gauge null directions, active non-tree links and regions held fixed require new model-specific estimates.
N3's ambient normal scalar completion, pp.42–44, differs from the inactive-coordinate padding in [`YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Completion.lean:34–45`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Completion.lean#L34-L45), [`YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Completion.lean:149–180`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Completion.lean#L149-L180).

### 09. Local determinant ratios, Jacobians and joint Gaussian bounds — [III.4](outline/units/III-4.md) (b)

**Function and size.** Also within [III.4](outline/units/III-4.md).
Log determinants and inverse defects are decomposed into localized chains; several factors are bounded under one Gaussian before regrouping.
The Haar chart contributes an even, quadratic-order Jacobian correction.

**Evidence.** [`YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Sector.lean:54–71`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Sector.lean#L54-L71) retains both local determinant data and residuals.
[`YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Arc.lean:121–166`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Arc.lean#L121-L166), [`YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Arc.lean:176–201`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Arc.lean#L176-L201) combines quadratic loads, polynomial insertions and rarity under a common law.
[`YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Ratio.lean:96–105`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Ratio.lean#L96-L105), [`YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Ratio.lean:125–145`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Ratio.lean#L125-L145) establishes the quadratic Jacobian error.
N2 p.44, Eqs.(5.19)–(5.21), Lemma 5.3, pp.47–48, and Appendix D provide the closest combined formulation.
B-Large-II pp.356–358, Eqs.(1.2),(1.10), already retains determinant normalization; D-I PDF p.10, Eqs.(74),(78), displays the familiar determinant factor.

**Classification.** ADAPTED-NLSM 45%, STANDARD 40%, ADAPTED-BALABAN 15%; medium-high confidence.
The same-Gaussian treatment of overlapping factors is the specific affinity; ordinary determinant calculus and Haar inversion symmetry are standard.
Treating overlapping factors as independent would lose the actual content of the comparison.

### 10. Absolute polymer sums and connected logarithms — [III.5](outline/units/III-5.md)

**Function and size.** 9,671 lines.
Connected graph sums are bounded by trees, summed with support weights, and exponentiated back to the gas.
Absolute convergence supplies marked-site and tail estimates usable in later source constructions.

**Evidence.** [`YM/Push/ABSOLUTE_SUMS/Graph.lean:113–148`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Graph.lean#L113-L148) controls graph sums by a rooted-tree organization.
[`YM/Push/ABSOLUTE_SUMS/Log.lean:114–149`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Log.lean#L114-L149) proves the logarithm/exponential identity.
[`YM/Push/ABSOLUTE_SUMS/Clusters.lean:224–243`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L224-L243) supplies the geometric connected-cluster tail.
Bry §3, pp.138–143, Theorem 3.1 and Corollary 3.2, is the direct older tree-control reference; Cam §3, pp.525–528, covers polymer convergence.
B-RG-II §2, pp.11–22, and N2 §5.4, p.49, both use this general constructive machinery.

**Classification.** STANDARD/ADAPTED-OTHER about 85%, application-specific support format 15%; high confidence.
Counting the whole unit as exclusively Balaban or exclusively NLSM would confuse use of a method with its origin.
The special exact inventory algebra belongs to the surrounding representation, not to the tree inequality itself.

### 11. Stationary nonlinear background with a uniform radius — [III.6](outline/units/III-6.md)

**Function and size.** 19,698 lines.
A critical branch for the actual classical action is constructed in gauge-fixed coordinates.
The subsequent estimates make its analytic radius and inverse-Hessian control usable uniformly in volume.

**Evidence.** [`YM/PCalc/Chart.lean:78–100`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L78-L100) defines the tested action, critical branch and Hessian condition.
[`YM/Work/F04.lean:62–86`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L62-L86) constructs the local branch by an implicit-function argument.
[`YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean:24–43`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L24-L43), [`YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean:80–92`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L80-L92) bounds an inverse without a spurious volume factor from changing norms.
B-RG-II §1, pp.2–3, Eqs.(1.2)–(1.5), recalls the nonlinear background equations and their propagator dependence.
B-N-Var, pp.607–642, supplies a related N-vector variational construction; the original gauge variational paper is unavailable.
N2 §5.2, pp.42–44, uses a localized affine Gaussian shift with an explicit residual; this is a related but weaker role than solving nonlinear stationarity.

**Classification.** ADAPTED-BALABAN 55%, STANDARD analytic tools 25%, specialized adaptation 20%; high confidence on role, medium on full genealogy.
The branch is for a soft penalty on tree-chart variables, not literally Balaban's constrained minimizer on nested irregular domains.
The implicit-function theorem alone is routine; uniformity in the appropriate norms is the substantive work.

### 12. Matching the Wilson energy through fourth order — [III.7](outline/units/III-7.md) (a)

**Function and size.** Within [III.7](outline/units/III-7.md)'s 19,927 lines.
The chosen coarse action reproduces the relevant low Taylor coefficients and separates the marginal curvature-square direction from irrelevant terms.
This is where gauge symmetry and the explicit cubic/quartic structures matter.

**Evidence.** [`YM/PCalc/Chart.lean:104–109`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L104-L109) defines [`SameJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L104-L109) and [`ClassicalMatch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L104-L109) through order four.
[`YM/RG/PathActions.lean:236–242`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L236-L242) retains principal, cubic, quartic and loop terms.
[`YM/Next/STATIONARY/Level/Transition.lean:86–93`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L86-L93) packages matching with the quantitative transition.
B-RG-I §4, pp.281–291, differentiates gauge invariance through fourth order; §5, pp.292–297, extracts the marginal transverse Maxwell form.
N2 Eq.(5.7), p.40, and Eq.(5.40), p.54, impose the later activity-class affine-Hessian subtraction.

**Classification.** ADAPTED-BALABAN 55%, STANDARD gauge power counting 25%, ADAPTED-NLSM format 20%; high confidence.
Zero affine Hessian is not a distinctive NLSM invention: the gauge-specific subtraction has a direct Balaban antecedent.
The exact path-based retained format still requires a separate preservation proof in Lean.

### 13. Numerical one-loop slope and constructive matching — [III.7](outline/units/III-7.md) (b)

**Function and size.** Also within [III.7](outline/units/III-7.md).
A vector/ghost calculation identifies the universal logarithmic coefficient, and a bounded-error comparison attaches it to the actual blocked action.
These are different obligations: computing a continuum loop integral does not by itself identify the exact RG update.

**Evidence.** [`YM/Next/STATIONARY/OneLoop/Bubbles.lean:14–26`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L14-L26), [`YM/Next/STATIONARY/OneLoop/Bubbles.lean:48–61`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L48-L61), [`YM/Next/STATIONARY/OneLoop/Bubbles.lean:125–141`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L125-L141) derives color traces and the vector/ghost integrand.
[`YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean:326–338`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L326-L338), [`YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean:346–408`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L346-L408) integrates the pole and controls the remaining terms.
[`YM/Next/STATIONARY/FullPlanned.lean:34–52`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L34-L52) connects the action data to the auxiliary logarithmic estimate.
[`YM/Next/STATIONARY/Level/Transition.lean:153–178`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L153-L178) then uses [`pole_reduced`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L153-L178) to transfer that estimate to the stationary coefficient; this is a separate comparison.
B-RG-I p.297, Eqs.(5.37)–(5.42), extracts the marginal coefficient, but Theorem 2, p.259, postpones the promised running-coupling proof; B-Large-II p.355 retains the assumption.
Abbott82 §3.3, p.48, Eqs.(3.3.1)–(3.3.5), directly displays the older vector/ghost coefficient; Gross–Wilczek and Politzer 1973 supply its historical asymptotic-freedom setting.
N2's different spin coefficients in §6, pp.56–61, are not the numerical input for Yang–Mills.

**Classification.** STANDARD/ADAPTED-OTHER perturbation theory 45%, ADAPTED-BALABAN extraction 30%, candidate-NEW controlled matching 25%; medium-high confidence.
The usual beta-function coefficient $b_0=11C_A/(48\pi^2)$ is not new physics.
Lean's $\kappa_G=2b_0=11C_A/(24\pi^2)$ is the corresponding slope for the inverse-square coupling; these conventions must not be confused.
Completing its uniform linkage to this particular exact transformation is a substantial constructive obligation; a complete mathematical verification of that linkage remains outside the scope of this comparison.

### 14. Connected activities, compulsory inventories and complete supports — [III.8](outline/units/III-8.md)

**Function and size.** 4,103 lines.
Only empty-inventory connected components may be exponentiated into regular errors.
Seeded components retain mandatory coverage, and dependence supports include negative status queries and all geometric choices.

**Evidence.** [`YM/RG/Activities.lean:42–55`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L42-L55), [`YM/RG/Activities.lean:77–96`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L77-L96), [`YM/RG/Activities.lean:113–135`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L113-L135) records inventory, eligibility, whole-label transport and exact coverage.
[`YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean:213–240`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L213-L240) gives the unforced catalog and the exact deleted-support gas correction by omitted logarithmic pieces, supplying the reassembly evidence beyond those definitions.
N2 Eqs.(5.7)–(5.10), pp.40–41, §5.4, p.49, and Appendix C have the closest full representation and reassembly discipline.
B-RG-II pp.2–4, Eqs.(1.2)–(1.8), and B-N-Loc-I §§2–4 already localize nonlinear background dependence.
B-N-II p.676 explicitly demands that local outputs depend only on local inputs.

**Classification.** ADAPTED-NLSM 50%, ADAPTED-BALABAN 25%, STANDARD support logic 25%; high confidence in the format, medium in precise allocation.
Mandatory equality of covered inventories is stronger evidence than the word “polymer”.
Complete read supports are an exact independence requirement, not a new principle of locality.
Gauge routes, frames and windows enlarge those supports beyond spin-field arguments.

### 15. Exact coupling reset and restoration of the activity class — [III.9](outline/units/III-9.md)

**Function and size.** 7,162 lines.
The marginal and vacuum pieces are absorbed into new scalar parameters, and all remaining corrections are redistributed into the admissible regular/forced classes.
Exact density equality is stronger than matching two test values.

**Evidence.** [`YM/UVNext/COUPLING_RESET/Advance.lean:47–51`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L47-L51), [`YM/UVNext/COUPLING_RESET/Advance.lean:78–103`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L78-L103) separates scalar parameter matching from [`ShapeControl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L78-L103).
[`YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean:17–29`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean#L17-L29), [`YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean:71–95`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean#L71-L95) proves equality of reset and pre-reset densities.
N2 pp.54–55, Eqs.(5.40)–(5.42), removes constant/affine terms and sends mask-complement corrections into the compulsory gas.
B-RG-I pp.258–259, Eqs.(0.28)–(0.30), and B-N-II §§4–5, pp.698–718, supply older marginal extraction and renormalization conditions.

**Classification.** ADAPTED-NLSM 50%, ADAPTED-BALABAN 30%, STANDARD scalar normalization 20%; high confidence.
The NLSM affinity is the exact retained-format reset, not the invention of a running coupling.
[`YM/RG/History.lean:25–33`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L25-L33) explicitly treats this as an action-representation coordinate rather than an independently defined observable coupling.

### 16. Energy per seed and protection of rough sectors — [III.10](outline/units/III-10.md) (a)

**Function and size.** Within [III.10](outline/units/III-10.md)'s 49,766 lines.
Energy reserved for primary rough seeds pays entropy, normalization and derivative costs without repeatedly spending the same reserve.
Protecting complete neighborhoods prevents local expansions from erasing the predicates that selected the sector.

**Evidence.** [`YM/Pressure/Seeds.lean:22–58`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22-L58), [`YM/Pressure/Seeds.lean:124–131`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L124-L131) records three inventories and the energy lower bound per share.
[`YM/Next/FLUCTUATIONS/Grants.lean:24–36`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L24-L36) supplies those bounds and controls their costs in the stage order.
N2 Lemma 5.2, pp.43–44, p.45 and Appendix C use primary cores, protector supports and energy reserves in the same retained-density context.
B-Conv §2, pp.254–262, and B-Large-I pp.175–177 give the older need to keep and repeatedly control large-field regions.

**Classification.** ADAPTED-NLSM 45%, ADAPTED-BALABAN 30%, specialized adaptation 25%; medium-high confidence.
YM seeds include bad plaquettes and incompatible coarse bonds, not just large spin gradients.
The super-polylogarithmic monitor and gauge chart costs change the quantitative balance.
Balaban's separate aged-region R replacement was not identified as a literal transformation in these interfaces.

### 17. Nonlinear contraction and bounds on irrelevant terms — [III.10](outline/units/III-10.md) (b)

**Function and size.** Also within [III.10](outline/units/III-10.md).
The exact step is reorganized so that regular errors contract and forced terms remain rare while all derivative/support costs fit their budgets.
This closes the retained density class beyond a formal perturbation series.

**Evidence.** [`YM/RG08/Steam/Routing.lean:14–37`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L14-L37), [`YM/RG08/Steam/Routing.lean:85–91`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L85-L91) makes the correction order triangular in coupling degree and field rank.
[`YM/RG/Activities.lean:98–111`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L98-L111) states the regular/forced bounds that closure must preserve.
N2 Theorem 5.1, pp.41–42, §§5.3–5.6 and Eq.(5.43), p.55, gives the closest exact-step closure architecture.
N3 §5, pp.39–55, strengthens contractions with reflection/inversion cancellations.
B-RG-I p.258, Eqs.(0.28)–(0.30), and B-RG-II §2 provide older summable irrelevant remainders and localization/exponentiation.

**Classification.** ADAPTED-NLSM 45%, ADAPTED-BALABAN 25%, STANDARD estimates 15%, candidate-NEW uniform extension 15%; medium confidence.
The same representation does not make the gauge estimates automatic: cubic vertices, gauge degeneracy, color and four-dimensional marginality must be handled.
The inspected interfaces support architectural attribution; they do not constitute a line-by-line proof of every closure inequality.

### 18. Volume-uniform normalization and cancellation of gauge powers — [III.11](outline/units/III-11.md) (a)

**Function and size.** Within [III.11](outline/units/III-11.md)'s 42,556 lines.
A Haar-shell lower bound and triangular plaquette upper bound control normalized insertions uniformly in torus size.
The key normalization cancels extensive powers of the small coupling before a chessboard root is taken.
The unrooted estimate still has an exponential volume cost; the uniform statement is the resulting per-cell/root price.

**Evidence.** [`YM/Next/RANK/Determinant.lean:76–111`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L76-L111), [`YM/Next/RANK/Determinant.lean:189–217`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L189-L217), [`YM/Next/RANK/Determinant.lean:240–274`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L240-L274) uses exponents $3V+1$ and $3V-3$, leaving a global $g^{-4\dim G}$ factor.
[`YM/Next/RANK/StationMeter.lean:8–14`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L8-L14), [`YM/Next/RANK/StationMeter.lean:28–44`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L28-L44) states the per-cell price without an extensive logarithmic loss.
[`YM/Next/RANK/Stamp.lean:131–167`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Stamp.lean#L131-L167) converts the ratio to the root bound.
B-Large-II pp.356–359, Eqs.(1.1)–(1.10), has determinant-sensitive local normalization ratios, an older general task.
N3 Proposition 7.1 and Lemmas 7.3–7.4, pp.61–65, instead compare through rough-region fillings against a positive reference law.

**Classification.** STANDARD integration/normalization 45%, ADAPTED-BALABAN general strategy 20%, candidate-NEW gauge estimate 35%; medium confidence.
**No specific NLSM adaptation is established for this cancellation proof.**
These different mechanisms rule out attributing all of [III.11](outline/units/III-11.md) to N3 merely because both contain integrated comparison estimates.

### 19. Interacting/free rank and finite detector comparison — [III.11](outline/units/III-11.md) (b)

**Function and size.** Also within [III.11](outline/units/III-11.md).
Finite test systems compare interacting composite labels with the free Maxwell quotient, control equation terms and stabilize the field-space rank.
Good-scale estimates permit corrected trial systems and coherent choices of coordinates.

**Evidence.** [`YM/MergeProof/Powder.lean:19–71`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L19-L71) combines equation-count savings with Maxwell rank data.
[`YM/SharpGram/Weak/Compatible.lean:140–159`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159) gives compatible changes of coordinates across degrees.
N3 §9, pp.74–82, normalizes spin sources, and §11.3, pp.93–94, compares a specific spin cumulant; neither is the all-composite Maxwell rank argument.
B-RG-I §4, pp.281–291, controls gauge Taylor constraints, without the continuum label-identification endpoint displayed here.

**Classification.** STANDARD finite-dimensional stability 45%, ADAPTED-OTHER comparison strategy 15%, candidate-NEW simultaneous detector/rank construction 40%; medium confidence.
The potentially new content is the set of uniform inputs and their coherent use, not the elementary fact that invertibility survives small perturbations.
A deeper comparison with constructive composite-operator literature is a priority before claiming originality across the literature.

### 20. Reflection positivity, chessboard roots and derivative budgets — [III.12](outline/units/III-12.md) (a)

**Function and size.** Within [III.12](outline/units/III-12.md)'s 18,944 lines.
Reflection positivity yields a seminorm controlling disseminated observables.
Gauge-invariant local fields and their finite differences receive volume-uniform bounds suitable for continuum extraction.

**Evidence.** [`YM/Cells/Certificate.lean:14–24`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L14-L24) packages reflected positivity, product dissemination and the root triangle inequality.
[`YM/Extraction/Center.lean:21–23`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L21-L23), [`YM/Extraction/Center.lean:38–40`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L38-L40) states the centered observable budget.
FILS78 §4, preprint pp.33–36, Theorems 4.1–4.3, is the direct older source for abstract and torus chessboard estimates.
N3 Lemma 7.3, p.62, uses chessboard exponential moments for kinetic rows; N2 §§2,9 uses reflection positivity for a distinct partition-doubling mass-gap argument.

**Classification.** STANDARD/ADAPTED-OTHER 65%, ADAPTED-NLSM source-estimate affinity 15%, candidate-NEW all-label derivative application 20%; high confidence in the base inequality, medium in the adaptation.
The same positivity principle has different downstream uses.
Here a root bound and derivative control must not be relabelled a full transfer-gap estimate.

### 21. Fixed-volume convergence and analytic tuning — [III.12](outline/units/III-12.md) (b)

**Function and size.** Also within [III.12](outline/units/III-12.md).
Fixed-level transfer data give Cauchy correlations at a fixed physical period, first on convenient probes and then generally.
Analytic coupling families and a common successful recursion constrain tuning without asserting uniqueness of all possible continuum theories.

**Evidence.** [`YM/FullVolume/Gables/Vendee.lean:44–61`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Vendee.lean#L44-L61) gives the run and coefficient convergence.
[`YM/FullVolume/Fields/Capital.lean:55–61`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L55-L61) states the Cauchy/confluence step.
[`YM/FullVolume/Tuned.lean:58–72`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L58-L72) passes from dense probes and equicontinuity to the general limit.
[`YM/FullVolume/Finale/Program.lean:60–77`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L60-L77), [`YM/FullVolume/Finale/Program.lean:133–158`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L133-L158) records the successful-recursion and analytic-family scope.
N3 Proposition 10.2, pp.84–86, likewise obtains fixed-torus source convergence from coarse-level comparisons.
N3 §§12–15, pp.95–120, goes further by removing bare-offset ambiguity with additional comparisons.

**Classification.** STANDARD limit/analytic arguments 45%, ADAPTED-NLSM construction affinity 30%, specialized extension 25%; medium confidence.
Lean's fixed-volume full-mesh convergence does not imply a unique infinite-volume limit.
The N3 inclined-block and incommensurable-period mechanism has not been identified as the tuning mechanism here.

### 22. Extension to all labels and all finite orders — [III.13](outline/units/III-13.md)

**Function and size.** 22,077 lines.
One family must serve every finite degree and requested derivative order, with compatible labels, budgets and comparisons.
The construction is selected once rather than separately for each later observable.

**Evidence.** [`YM/SharpGram/Assembly/Flowers.lean:75–130`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130), [`uv_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130), constructs the common family while stages increase their orders.
[`YM/Source/Construction.lean:24–62`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L24-L62) makes the degree factory, stages and normalized construction explicit.
N3 §9.1–9.2, pp.75–80, already extends the density flow to local spin sources and proves fixed-layer convergence.
B-N-Large §4 and B-N-Corr p.493 establish that generating functionals and correlations are part of Balaban's broader programme.
Neither cited source supplies this exact common gauge-composite hierarchy with the later OPE/stress requirements.

**Classification.** STANDARD compatibility/diagonal organization 35%, ADAPTED-NLSM source machinery 25%, candidate-NEW all-label extension 40%; medium confidence.
The enlarged gauge-composite spaces, growing derivative/degree requirements and simultaneous OPE/stress comparisons are substantive.
The order “choose one trajectory, then all spin moments” already occurs in N3 Theorem 1.2, p.6, and §9.1, pp.75–76; that quantifier order alone is not new.
This is a leading location for new constructive work whose detailed priority still needs a wider literature comparison.

### 23. Iteration and selection of one construction with uniform bounds — [III.14](outline/units/III-14.md)

**Function and size.** 14,239 lines.
Local estimates, terminal shooting and increasing stages are assembled into a single sequence of lattice laws.
That sequence is fixed before the later extraction order and comparison requests.

**Evidence.** [`YM/Independent/ConstructionRun.lean:14–31`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L31) fixes the run and its uniform bounds before observable demands.
[`YM/Source/Construction.lean:65–72`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L65-L72) preserves the normalization and translations without retuning.
N2 §7, pp.61–65, and N3 §6, pp.55–60, provide the closest terminal-coupling trajectory organization.
B-RG-I Theorem 2, p.259, expresses the older tuned-coupling objective; B-N-II Theorem 1, p.680, provides a complete iterative framework in a different model.

**Classification.** ADAPTED-NLSM 35%, ADAPTED-BALABAN 20%, STANDARD assembly 35%, specialized extension 10%; medium confidence.
A long formal iteration proof is not a corresponding quantity of new physical ideas.
Serving all spin moments with one trajectory is already present in N3; the added obligations here are the larger gauge-composite and derivative comparison systems.

### 24. Activity costs, local observable derivatives and analytic trace estimates — [III.15](outline/units/III-15.md)–[III.16](outline/units/III-16.md)

**Function and size.** [III.15](outline/units/III-15.md): 7,366 lines; [III.16](outline/units/III-16.md): 3,931 lines.
Activity-fusion estimates bound hard and soft contributions; local observable estimates control derivatives of individual insertions.
Analytic trace-product estimates supply bounds needed later in the continuum construction.
These are cost and derivative tools; the density-fusion theorem alone is not an external-source propagation theorem.

**Evidence.** [`YM/Progress/DIRECTED_RECIPE/Tender.lean:32–62`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L32-L62), [`YM/Progress/DIRECTED_RECIPE/Tender.lean:124–133`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L124-L133) distinguishes hard/soft costs and restores the regular/forced activity budget.
[`YM/Next/SCHEDULE/SlotPay.lean:108–159`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L108-L159) bounds a transported local slot; [`YM/Next/SCHEDULE/TensorCost.lean:52–74`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L52-L74), [`YM/Next/SCHEDULE/TensorCost.lean:85–89`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L85-L89) gives the derivative bound for a k-leg atom, including its threshold power.
[`YM/Complex/Gaps.lean:170–176`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L170-L176), [`YM/Complex/Gaps.lean:206–210`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L206-L210) bounds trace products using analytic interpolation and a Cauchy estimate in the gap.
N2 §5.4, p.49, supplies a close hard/soft reassembly setting; its Lemma 5.3, pp.47–48, bounds inserted factors.
N3 Proposition 11.3, pp.90–91, likewise needs analytic growth bounds for reconstruction, without this exact trace estimate.
Actual source transfer is a separate interface, [`YM/Source/Insertion.lean:26–68`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L26-L68), [`YM/Source/Insertion.lean:89–110`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L89-L110), discussed in §4.3.

**Classification.** [III.15](outline/units/III-15.md): STANDARD derivative/fusion estimates 60%, ADAPTED-NLSM reassembly affinity 20%, specialized gauge cost bounds 20%.
[III.16](outline/units/III-16.md): STANDARD analytic tools about 90%, specialized packaging 10%; medium-high confidence.
Cauchy's inequality, product derivative bounds and positive-operator trace estimates should not be credited as new NLSM or Yang–Mills ideas.
The construction-specific work is obtaining the correct dimension- and volume-uniform hypotheses for those tools.

### 25. [IV.1](outline/units/IV-1.md) — Infinite-volume extraction and Euclidean hierarchy

**Size:** 7,336 lines in spans of declarations used by the main theorem.

**What it does.** It turns volume-uniform observable bounds into a common limit table, retains fixed-volume mesh limits, extracts volumes, and passes separated smeared correlations to that table.
The distinction between generic point limits and integrated limits is represented explicitly.

**Lean evidence.** [`YM/Extraction/Lipschitz.lean:156–160`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L156-L160) defines [`RawLimits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L156-L160) with continuity, mesh, volume and integrated clauses.
[`YM/Extraction/Held.lean:135–137`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Held.lean#L135-L137), [`crops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Held.lean#L135-L137), obtains a common extraction from the projected chessboard estimates.
[`YM/Extraction/Limits.lean:57–66`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L57-L66) distinguishes uniform fixed-period mesh convergence from volume convergence on compact generic configurations.
[`YM/Extraction/Integrate.lean:115–153`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L115-L153), [`ordinary`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L115-L153), applies dominated convergence after a common compact-support bound.
The proof explicitly invokes dominated convergence at [`YM/Extraction/Integrate.lean:152`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L152-L152).

**Closest antecedents.** N3 Proposition 10.2, pp.84–86, first establishes fixed-torus source convergence, then approximates continuous tests and exchanges the cutoff and volume limits using equation (10.8).
The abstract compactness, diagonal extraction and dominated-convergence steps are STANDARD.
The upstream use of exact renormalized local sources to obtain a common limiting hierarchy is the same general method as N3 §§9–10.
The exact infinite-volume mechanism differs: N3 uses uniform exponentially small finite-volume errors from a transfer-gap construction; the Yang–Mills public target permits subsequences.

**Classification:** STANDARD + ADAPTED-NLSM at the observable-construction interface; medium confidence on immediate lineage, high on the difference in conclusions.
A claim that infinite volume itself is a direct transplant of N3 would be too strong.

**Rough mechanism split:** STANDARD 75%, NLSM source-construction affinity 15%, specialized extension 10%.

### 26. [V.1](outline/units/V-1.md) — Phase decomposition

**Size:** 5,718 lines in spans of declarations used by the main theorem.

**What it does.** Reflection positivity gives a Hilbert space and positive-time contraction semigroup.
Compressed whole-word observables on its zero-energy space generate an algebra; proving that algebra commutative permits a compact character-space mixture of phases.

**Lean evidence.** [`YM/OS/Dynamics.lean:63–107`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L63-L107) constructs the semigroup and transverse unitary action on the reflection Hilbert space.
[`YM/Ground/Permute.lean:73–93`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Permute.lean#L73-L93), [`exchanges`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Permute.lean#L73-L93), interchanges the middle two entries in a four-entry train by using two coordinate directions and a signed rotation.
[`YM/Ground/Permute.lean:95–136`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Permute.lean#L95-L136), [`gens`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Permute.lean#L95-L136), turns that identity into commutation of the compressed operators.
[`YM/Ground/Permute.lean:149–161`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Permute.lean#L149-L161), [`adjunction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Permute.lean#L149-L161), extends commutation to their closed star algebra.
[`YM/Phase/Mixture.lean:65–86`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L65-L86) specifies the compact character space, probability measure, full support and representation of the ground-state functional.
[`YM/Phase/Mixture.lean:113–117`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L113-L117), [`barycenter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L113-L117), gives the correlation mixture identity.

**Closest antecedents.** The first step is OS73 §4(a–b), p.90: positive form, quotient/completion, self-adjoint contraction semigroup.
Gelfand representation and a positive functional represented by a measure are STANDARD functional analysis; they are not distinctively Balaban or NLSM.
The inspected N3 proof does not make this phase decomposition: §11.2, p.91, obtains vacuum uniqueness from already-established exponential clustering.
Its target has a single canonical periodic state and a positive gap (Theorems 1.1–1.2).

**Classification:** STANDARD core with candidate-NEW implementation of the train/axis exchange and phase-uniform machinery; medium confidence for novelty relative to these sources, low for priority across the literature.
There is no evidence here that the phase-algebra argument is inherited from N3.
Before a strong novelty claim, compare the extremal-state and asymptotic-abelian constructions in the older Euclidean/algebraic-QFT literature.

**Rough mechanism split:** STANDARD 70%, candidate-NEW phase-uniform organization 30%.

### 27. [V.2](outline/units/V-2.md) — Reconstruction

**Size:** 6,419 lines in spans of declarations used by the main theorem.

**What it does.** It builds analytic continuations and boundary distributions from Euclidean data, then realizes fields on a Hilbert space with locality, spectrum and covariance properties.
The reconstruction theorems have explicit hypotheses; the assembly discharges them for the chosen hierarchy.

**Lean evidence.** [`YM/Hilbert/Kolmogorov.lean:67–92`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Hilbert/Kolmogorov.lean#L67-L92), [`host`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Hilbert/Kolmogorov.lean#L67-L92), completes a positive kernel and proves density of the generating vectors.
[`YM/Work/C01.lean:99–117`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C01.lean#L99-L117) derives a common controlled field-vector family from slab bounds.
[`YM/Integrated.lean:182–212`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L182-L212), [`reconstructionArcs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L182-L212), assembles A16 and C01–C29.
[`ChallengeSpec.lean:135–143`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L135-L143) makes analytic continuation, its Euclidean root, and distributional boundary convergence explicit.
[`PublicTheory.lean:270–319`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L270-L319) lists the resulting spectrum, unique-vacuum, domain, covariance and locality clauses.

**Closest antecedents.** OS73 §4, pp.90ff., and the corrected OS75 §IV.1, pp.287–288, are the primary conceptual sources.
N3 Proposition 11.3, pp.90–91, applies the corrected theorem, checking a factorial/linear growth estimate.
That NLSM application is not the origin of reconstruction: it is another use of the same older theorem.

**Classification:** predominantly STANDARD/ADAPTED-OTHER (Osterwalder–Schrader), high confidence.
The technical adaptation is to a graded gauge-invariant field algebra with all finite-degree labels and to phase-dependent tables, rather than a three-component scalar spin field.
No line-by-line equivalence of growth hypotheses to OS75 is claimed here; that would require a separate comparison of the hypotheses and conclusions and full original-paper access.

**Rough mechanism split:** STANDARD/ADAPTED-OTHER 95%, specialized implementation 5%.

### 28. [V.3](outline/units/V-3.md) — Reconstruction for every phase

**Size:** 4,063 lines in spans of declarations used by the main theorem.

**What it does.** The same field labels, stress data and rotation action are carried into each character phase.
Uniform estimates establish the zero-energy projection and decay after subtracting it, so vacuum uniqueness is obtained phase by phase without asserting a mass gap.

**Lean evidence.** [`YM/EveryPhase/Pack.lean:117–132`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L117-L132) defines an [`Almanac`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L117-L132) containing every chamber, field theory, label identification and attachment to the common data.
[`YM/EveryPhase/Extension.lean:75–80`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L75-L80), [`all_characters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L75-L80), assembles the completed family.
[`YM/EveryPhase/Vacuum.lean:115–144`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L115-L144), [`all_plant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L115-L144), identifies the zero-energy spectral projection with the vacuum rank-one operator on a dense family and extends it by continuity.
[`YM/EveryPhase/Decay.lean:173–192`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decay.lean#L173-L192), [`inverse_square`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decay.lean#L173-L192), bounds the residual semigroup matrix element by $Ms^{-2}$, uniformly in phase.
The proof uses a low-energy spectral-mass bound $\nu((0,x]) \le D x^2$ at [`YM/EveryPhase/Decay.lean:182–186`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decay.lean#L182-L186).
That input is stated explicitly as [`YM/EveryPhase/Light.lean:221–232`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L221-L232), [`light_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L221-L232); its proof uses locality at large spatial separation and the spectral annulus estimate.

**Closest antecedents.** N3 Proposition 11.4, pp.91–93, also uses positive spectral measures and a dense set of field-generated vectors.
But there the semigroup matrix elements are exponentially bounded and hence a whole interval of low energies is excluded.
Here the low-energy mass estimate implies polynomial decay after subtraction of the full zero-energy projection, and does not exclude arbitrarily small positive energies.

**Classification:** STANDARD spectral reasoning + candidate-NEW/ADAPTED-OTHER phase-uniform organization; medium confidence.
This is a comparison at the level of a general method with N3, with a materially different estimate and endpoint.
It supplies counterevidence to the idea that the Yang–Mills continuum construction is simply the NLSM mass-gap proof with another target manifold.

**Rough mechanism split:** STANDARD spectral tools 65%, candidate-NEW phase-uniform organization 35%.

### 29. [VI.1](outline/units/VI-1.md) (a) — Ward identities and full rotation covariance

**Size:** within [VI.1](outline/units/VI-1.md)'s 7,689 lines in spans of declarations used by the main theorem.

**What it does.** Local stress-shell identities produce translations and rotation generators on finite-degree fields.
The proof upgrades collinear identities to all separated configurations and supplies a genuine compact rotation action compatible with the field filtration.

**Lean evidence.** [`YM/Euclid/Stress.lean:88–97`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L88-L97) defines stress laws on separated configurations; it explicitly says contact terms are not tested.
[`YM/Next/ROTATIONS/Route.lean:114–123`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L114-L123) proves the collinear angular sum and a line-sum identity.
[`YM/Ward/Walk.lean:15–26`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L15-L26), [`YM/Ward/Walk.lean:60–84`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L60-L84) supplies analytic continuation along segments and walks.
[`YM/Ward/Axis.lean:86–107`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L86-L107), [`YM/Ward/Axis.lean:130–139`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L130-L139) connects arranged configurations to collinear ones and then completes the argument by density and continuity.
[`YM/SharpGram/Weak/Compatible.lean:140–159`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159), [`tune_grades`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159), constructs changes of coordinates compatible across all degrees up to a fixed horizon and preserves units/reality/signed symmetries.

**Closest antecedents.** Local current insertions generating infinitesimal symmetry are STANDARD Ward/Noether reasoning.
N3 §§10.2–10.3, pp.84–87, are an especially useful *negative* comparator: rotations there follow from comparing tilted regulators and a dense cyclic subgroup, not from constructing a local spacetime stress tensor.
A direct NLSM attribution for the Lean rotation argument is unsupported by this source pair.

**Classification:** STANDARD Ward principle + candidate-NEW implementation beyond the inspected NLSM and Balaban UV outputs; medium confidence.
Claiming originality across the literature of the analytic-vector and finite-dimensional representation steps would be unjustified; those are established tools.

**Rough mechanism split:** STANDARD Ward/representation tools 45%, candidate-NEW constructive implementation 55%.

### 30. [VI.1](outline/units/VI-1.md) (b) — Exterior flux at infinity

**Size:** crosses units; the exterior-flux proof occupies [`YM/Next/ROTATIONS/Yard.lean:1–115`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L1-L115) (115 lines) and [`YM/Next/ROTATIONS/Route.lean:1–124`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L1-L124) (124 lines), with upstream estimates for coordinate directions.

**What it does.** It proves that the exterior terms left by large rotation cutoffs vanish, allowing a local shell identity to become a global infinitesimal rotation identity without an assumed exponential clustering estimate.

**Lean evidence.** [`YM/Next/ROTATIONS/Yard.lean:49–77`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L49-L77), [`pick_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L49-L77), constructs reflection Hilbert chambers in every coordinate direction, splits signs, uses [`exterior_size`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L67-L70), and obtains a decay bound with exponent $-1$ for the actual stress integrand.
The realizations in all coordinate directions and the upstream spectral estimate appear at [`YM/Next/ROTATIONS/Yard.lean:54`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L54-L54), [`YM/Next/ROTATIONS/Yard.lean:67–70`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L67-L70).
The input [`S.Hierarchy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L140-L148) in [`YM/Euclid/Words.lean:140–148`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L140-L148) contains positivity, translation invariance, smoothness and bounds, with no clustering or mass-gap clause.
At [`YM/Next/ROTATIONS/Yard.lean:73–77`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L73-L77), a factor with budget 100 combines with budget −101 to leave budget −1.
[`YM/Next/ROTATIONS/Yard.lean:105–114`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L105-L114), [`blows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L105-L114), transfers this to the concrete correlation function for collinear insertions.
[`YM/Next/ROTATIONS/Route.lean:49–67`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L49-L67), [`drained`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L49-L67) and [`axisTurn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L49-L67), sum the exterior terms and conclude that a constant with a decaying budget is zero.

**Closest antecedent.** N3 §11.1–11.2, pp.89–93, uses exponential clustering and positive-energy spectral reconstruction, but does not contain this all-axis exterior-flux device.
General reflection positivity and spectral Cauchy–Schwarz are standard; the particular cutoff/sign construction is a candidate distinct contribution.

**Classification:** candidate-NEW, medium confidence within these sources, low on exhaustive priority.
The source reading covers the proof through its use of the exterior spectral estimate, but not every upstream moment lemma for coordinate directions.
This supports the mechanism comparison, not a complete verification of the flux estimate.

**Rough mechanism split:** STANDARD spectral inequalities 35%, candidate-NEW exterior-flux organization 65%.

### 31. [VI.2](outline/units/VI-2.md) — Maxwell reference theory and stress normalization

**Size:** 14,170 lines in spans of declarations used by the main theorem.

**What it does.** It supplies a free Maxwell hierarchy on the same graded label format, its conserved stress tensor and its shell Ward action.
The free reference fixes the interacting stress and rotation structures through short-distance comparison.

**Lean evidence.** [`YM/Next/MAXWELL/System.lean:106–114`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L106-L114) proves the hierarchy; [`YM/Next/MAXWELL/System.lean:153–170`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L153-L170) defines the rotation action; [`YM/Next/MAXWELL/System.lean:172–179`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L172-L179) defines and proves conservation of the free stress.
[`YM/Next/MAXWELL/Current.lean:184–187`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L184-L187) defines the shell flux as the integral against the cutoff gradient.
[`YM/Next/MAXWELL/Force.lean:131–186`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Force.lean#L131-L186), [`jet_force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Force.lean#L131-L186), extends the point-source flux identity to arbitrary jet probes by linearity and differentiation.
[`YM/SharpGram/Weak/Compatible.lean:140–159`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159) is a direct anchor for the coherent interacting/free label comparison used downstream.

**Closest antecedents.** Wick contractions and the Maxwell stress/Noether identity are textbook free-field calculations.
N3 §11.3, pp.93–94, compares renormalized sources to a terminal spin law; it does not construct this Maxwell jet algebra or use it to fix spacetime stress.
The two share the general tactic of identifying limiting operators by a controlled comparison model, not the same reference theory or normalization mechanism.

**Classification:** mostly STANDARD free-field mathematics, with candidate-NEW assembly/normalization in this nonperturbative construction; high confidence for the standard part, medium for the adaptation.
The number of Lean lines devoted to Wick jets should not be interpreted as a comparable number of new physics ideas.

**Rough mechanism split:** STANDARD Maxwell mathematics 80%, specialized normalization 20%.

### 32. [VII.1](outline/units/VII-1.md) — Short-distance freeness and finite detector systems

**Size:** 8,004 lines in spans of declarations used by the main theorem.

**What it does.** It identifies the leading short-distance correlations with Maxwell Wick correlations and chooses compatible finite-degree coordinates for the interacting field spaces.
Gaussian convergence is used to distinguish labels and fix their symmetries, not merely to approximate the partition function.

**Lean evidence.** [`YM/Pert/Rig/Linked.lean:59–69`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L59-L69), [`zerothProfile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L59-L69), identifies the zeroth perturbative coefficient with the smeared free Wick moment.
[`YM/Pert/Warp/Approach.lean:19–32`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Approach.lean#L19-L32) proves the moment limit by recursively pairing contractions.
[`YM/Pert/Warp/Horizons.lean:65–68`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L65-L68) passes to polynomial rows.
[`YM/SharpGram/Weak/Compatible.lean:140–159`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159) gives coherent degree-wise changes of basis.

**Closest antecedents.** N3 §5.3, pp.42–45, uses ambient Gaussian completion for an exact RG step; its §11.3 compares source moments to a terminal spin law.
Those are related Gaussian/comparison methods, but neither cited passage establishes the Maxwell composite-field short-distance statement.
Asymptotic freedom and Gaussian leading short-distance behavior are older perturbative expectations: Gross–Wilczek 1973 and Politzer 1973, specified below.

**Classification:** STANDARD Wick/perturbative principle + ADAPTED-OTHER constructive implementation and candidate-NEW coherent detector use; medium confidence.
A comparison of [`zerothProfile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L59-L69) alone is insufficient to certify the full interacting asymptotic statement; the remainder estimates enter from the ultraviolet units.

**Rough mechanism split:** STANDARD/ADAPTED-OTHER 60%, candidate-NEW coherent detector use 40%.

### 33. [VII.2](outline/units/VII-2.md) — Trace anomaly and the all-radii asymptotic

**Size:** 20,645 lines in spans of declarations used by the main theorem, including some nonfree exclusions.

**What it does.** The centered trace is tied to the physical stress tensor and its short-distance two-point behavior is normalized.
An asymptotic first obtained along admissible scaling systems is promoted to every small positive radius.

**Lean evidence.** [`YM/TraceExtension/WilsonTrace.lean:48–49`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L48-L49) defines the centered trace in the selected phase.
[`YM/Nonperturbative/HeadlineSpec.lean:84–95`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L84-L95) explicitly identifies its field operator with stress trace minus its vacuum expectation and states the short-distance law.
[`YM/TraceExtension/Verse/Day.lean:41`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L41-L41) defines the intermediate amplitude $12(d_2^2/b_0^2)\dim\mathfrak g/\pi^4$.
[`YM/TraceExtension/Verse/Cape.lean:53–76`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L53-L76), [`border`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L53-L76), uses monotonicity of the positive spectral Laplace transform to compare nearby radii.
[`YM/TraceExtension/Verse/Cape.lean:77–88`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L77-L88), [`outside`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L77-L88), argues by a bad sequence of radii and the ability to fit a subsequence to a scaling system.
The public numerical conclusion is [`ChallengeSpec.lean:172–174`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L172-L174): $3\dim\mathfrak g/\pi^4$ after multiplication by $r^8\log^2(1/r)$.

**Closest antecedents.** CDJ77, p.438 abstract, gives the older perturbative trace/dilatation anomaly in non-Abelian gauge theory.
The anomaly's existence and relation to running are therefore ADAPTED-OTHER/STANDARD physics, not new principles.
N3 §§11.3 and 15.2–15.3 concern a fourth cumulant and canonical normalization, not a four-dimensional stress-trace ultraviolet law.
Promoting controlled subsequences to a full limit is a standard logical argument; the hard construction-specific input is the uniformity allowing all prescribed radius sequences.

**Classification:** old trace-anomaly principle + candidate-NEW constructive realization and all-radii control; medium confidence.
The one-loop coefficient and its matching to the full gauge-fixed determinant have not been independently verified here.
Nor should the cancellation in the final amplitude be treated as a numerical cross-check of that coefficient.

**Rough mechanism split:** STANDARD/ADAPTED-OTHER anomaly and limit principles 40%, candidate-NEW constructive realization 60%.

### 34. [VII.3](outline/units/VII-3.md) — Nonfreeness

**Size:** 3,303 lines in spans of declarations used by the main theorem for free detection/positivity; the terminal exclusion proof is largely included in [VII.2](outline/units/VII-2.md).

**What it does.** The free reference has a nondegenerate reflected Gram form, and the trace singularity rules out finite combinations of ordinary free mass-shell Wick contractions.
The public claim concerns a specified class of comparison profiles.

**Lean evidence.** [`ChallengeSpec.lean:151–166`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L151-L166) defines the mass-shell mode and finite Wick-profile class.
[`YM/TraceExtension/Wick/Log.lean:96–108`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Log.lean#L96-L108), [`no_powerlog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Log.lean#L96-L108), proves that a profile with the specified finite power/log expansion cannot have the positive inverse-log asymptotic.
[`YM/TraceExtension/Wick/Refute.lean:75–80`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L75-L80) applies this to the Euclidean trace.
[`YM/TraceExtension/Wick/Refute.lean:86–105`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105) transfers the exclusion to smeared polynomial-field descriptions.
The module's precise limitation is at [`YM/TraceExtension/Wick/Refute.lean:4–8`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L4-L8): it makes no claim against a continuous-mass generalized free field.

**Closest antecedent and difference.** N3 Proposition 11.5, pp.93–94, proves non-Gaussian behavior by a nonzero separated connected four-point function.
It computes the leading cumulant from the uniform sphere moments $\mathbb E[(U^1)^2]=1/3$, $\mathbb E[(U^1)^4]=1/5$.
That is a different witness from the trace inverse logarithm; “nontriviality from a controlled nonfree observable” is only the shared general method.

**Classification:** candidate-NEW choice and rigorous realization of a nonfree witness; STANDARD asymptotic algebra once the trace law is known.
High confidence on difference from N3; medium/low confidence on broad novelty because no exhaustive search for older trace-based nontriviality arguments was made.

**Rough mechanism split:** STANDARD asymptotic exclusion 50%, candidate-NEW constructive witness 50%.

### 35. [VII.4](outline/units/VII-4.md) (a) — Separated OPE

**Size:** part of 10,193 lines in spans of declarations used by the main theorem.

**What it does.** The product of clustered insertions is expanded in finite-degree local fields with a remainder bounded by its next degree, with arbitrary small power slack.
One coefficient system works for the mixture and every character phase, independently of the spectator word and truncation horizon.
For each fixed spectator word the bounds are uniform in phase and allowed spectator positions; the eventual radius threshold may depend on that word, as quantified in [`ChallengeSpec.lean:74–76`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L74-L76).

**Lean evidence.** [`YM/OPE/Orbits/Kernel.lean:4–25`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L4-L25) states the intended exact scope and excludes convergence as the horizon tends to infinity.
[`YM/OPE/Orbits/Kernel.lean:62–64`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L62-L64) gives the coefficient and algebra-error bounds.
[`YM/OPE/Orbits/Kernel.lean:52–58`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L52-L58) passes the same estimates to probability mixtures.
[`YM/OPE/Orbits/Kernel.lean:73–77`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L73-L77) constructs one reader before demands by selecting a prescription once.
[`ChallengeSpec.lean:70–80`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L70-L80) gives the public coefficient/remainder inequalities, with the quantifiers for spectators and states visible.

**Closest antecedents.** Wilson, *Non-Lagrangian Models of Current Algebra* (1969), p.1499 abstract, proposes short-distance operator products as local fields times singular coefficient functions.
Zimmermann, *Normal products and the short distance expansion in the perturbation theory of renormalizable interactions* (1973), pp.570–601, publisher abstract, proves Wilson's expansion in perturbation theory for two scalar fields.
Those provide the concept; they do not supply this nonperturbative Yang–Mills construction, the phase-uniform bounds, or this detector prescription.
The inspected N3 §§9–11 renormalize the spin sources and their moments, with no corresponding all-composite, all-phase OPE statement in those sections or its main theorem.

**Classification:** ADAPTED-OTHER for the OPE principle; candidate-NEW for the constructive implementation and simultaneous state/spectator control; medium confidence.
Do not call the existence of an OPE itself a new idea.
Do not claim perturbative coefficient matching, convergence in truncation order, or uniqueness of the prescription.

**Rough mechanism split:** ADAPTED-OTHER OPE principle and standard expansion tools 60%, candidate-NEW uniform implementation 40%.

### 36. [VII.4](outline/units/VII-4.md) (b) — Contact extensions

**Size:** within [VII.4](outline/units/VII-4.md); about 3,400 lines for contact extensions and about 290 for multiple-contact extensions.

**What it does.** The separated correlation functions are extended to distributions on collision diagonals using normal Taylor subtractions and sums over collapse scales and forests.
The resulting extension agrees with the original hierarchy away from coincidences.

**Lean evidence.** [`YM/Contacts/Normal/Subtractions.lean:54–75`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Normal/Subtractions.lean#L54-L75) defines the normal Taylor polynomial, cutoff, and $1-T$ remainder on test functions.
[`YM/Contacts/Normal/Subtractions.lean:76–83`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Normal/Subtractions.lean#L76-L83) proves commutation of subtractions in orthogonal normal directions.
[`YM/Contacts/Solstice/Result.lean:23–31`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L23-L31) records the shell-sum identities and summability over admissible forests.
[`ContactSpec.lean:10–14`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactSpec.lean#L10-L14) is exactly an extension-and-agreement statement for distributions on the full configuration space.
[`YM/Contacts/Solstice/Result.lean:3–6`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L3-L6) explicitly distinguishes this from reflection positivity on overlapping supports, contact Ward identities, and real-time time-ordered products.

**Closest antecedent.** BF00 §5.2, Theorems 5.2–5.3, preprint pp.23–25, gives the same core distribution-extension device.
Equation (36) sums dyadic shells; equation (38) projects a test onto its Taylor-vanishing part; equation (39) defines an extension after subtraction.
BF00 §6 then treats submanifolds and transverse scaling, making the normal-variable comparison more than a superficial resemblance.

**Classification:** ADAPTED-OTHER/STANDARD for extension by Taylor subtraction, high confidence; candidate-NEW input bounds and organization for this hierarchy, medium confidence.
This is not persuasive evidence of NLSM ancestry: the pertinent older distribution-renormalization literature is a closer match.
Existence of an extension is weaker than identification of a unique physical product at coincidence.

**Rough mechanism split:** STANDARD/ADAPTED-OTHER extension mechanism 80%, specialized input/organization 20%.

### 37. [VII.5](outline/units/VII-5.md) — Leading-log coupling asymptotics

**Size:** 232 lines in spans of declarations used by the main theorem, only a small fraction of which is the coupling theorem itself.

**What it does.** It converts previously established running-coupling control into the asymptotic for the inverse square root of the action coefficient.
It does not recompute the one-loop constant in this unit.

**Lean evidence.** [`YM/Pert/Asymptotics/RawAxis.lean:13–16`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L13-L16) defines $b_0=11C_A/(48\pi^2)$ and states the ratio estimate.
The proof at [`YM/Pert/Asymptotics/RawAxis.lean:17–30`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L17-L30) reads the [`Makes.wilson.running`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L17-L30) estimate and removes the fixed additive offset.
At [`YM/Pert/Asymptotics/RawAxis.lean:35–48`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L35-L48) it takes inverse square roots to get the leading-log limit.
The module says at [`YM/Pert/Asymptotics/RawAxis.lean:3–4`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L3-L4) that this proxy is not identified with a physical X-scheme coupling beyond the proved comparison.

**Closest antecedents.** Gross–Wilczek, PRL 30 (1973), 1343–1346, and Politzer, PRL 30 (1973), 1346–1349, are the older asymptotic-freedom source.
N3 equation (1.4), p.6, and §12.1, p.95, likewise encode a linear inverse-coupling trajectory with a model-specific coefficient.
The same general marginal-flow mechanism is present, but $11C_A$ is Yang–Mills data, not the sigma-model $1/(2\pi)$ coefficient.

**Classification:** STANDARD consequence of an earlier nonstandard construction, high confidence.
The provenance of the coefficient calculation belongs to the actual one-loop/matching units, not to this short endpoint theorem.

**Rough mechanism split:** STANDARD endpoint implication about 100%; the upstream coefficient and flow estimates are counted in [III.7](outline/units/III-7.md).

### 38. [VII.6](outline/units/VII-6.md) — Flexible scaling and arbitrary radius sequences

**Size:** 4,205 lines in spans of declarations used by the main theorem.

**What it does.** It produces valid scaling stations along subsequences of an arbitrary given sequence of radii tending to zero.
These stations retain the finite-degree observable controls needed to derive a full real-radius trace asymptotic.

**Lean evidence.** [`YM/TraceExtension/Prom/Zoom/Boats.lean:49–62`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L49-L62), [`boatsSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L49-L62), fits a sufficiently small prescribed radius to a valid station.
[`YM/TraceExtension/Prom/Zoom/Boats.lean:75–87`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L75-L87), [`wakesSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L75-L87), recursively obtains a strictly monotone subsequence and stations of increasing degree.
[`YM/TraceExtension/Verse/Cape.lean:77–88`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L77-L88) uses that flexibility to obtain the all-radii conclusion.

**Closest antecedent.** N3 §15.2–15.3, pp.118–120, removes subsequence ambiguity by comparing bounded-offset trajectories and canonically normalizing them.
The common logical purpose is to upgrade control of selected scales to an unrestricted limit, but the mechanisms differ: coupling-offset matching versus fitting arbitrary radii to stopping stations.

**Classification:** STANDARD subsequence logic + candidate-NEW technical extension of the construction estimates; medium confidence.
This should not be counted as an independent new RG principle merely because its formal implementation duplicates many estimates.

**Rough mechanism split:** STANDARD subsequence/limit reasoning 70%, specialized uniform-scale estimates 30%.

### 39. [VIII.1](outline/units/VIII-1.md) — Common-witness assembly

**Size:** 12,056 lines in spans of declarations used by the main theorem.

**What it does.** It selects the construction before extraction demands, then places the limit, reconstructed phases, OPE, contact extension and trace statements on one common hierarchy.

**Lean evidence.** [`Construction.lean:15–31`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L31) quantifies the family first, the extraction order next, and the reader/contact/scaling witnesses afterward.
[`Construction.lean:32–40`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L32-L40) assembles the internal theorem into public properties.
[`Solution.lean:4–10`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean#L4-L10) specializes the fixed penalty and extracts the public volume refinement.
[`ChallengeSpec.lean:3–4`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L3-L4) emphasizes that all correlation terms are evaluations of one hierarchy.

**Closest antecedent.** N3 completion of Theorem 1.2, pp.94–95, explicitly requires the same field normalizations for construction, gap, and non-Gaussian correlations.
Requiring one object to satisfy all conclusions is STANDARD mathematical logic and constructive-QFT discipline.
The Lean implementation makes an unusually large quantity of compatibility and choice-order bookkeeping explicit.

**Classification:** STANDARD assembly/formal infrastructure, high confidence; it should not inflate the share attributed to mathematical novelty.

**Rough mechanism split:** STANDARD assembly/formal compatibility 95%, specialized organization 5%.

## 4. Cross-cutting comparisons

### 4.1 Where the ultraviolet construction ends

Balaban's cited pure-gauge sequence ends in uniform effective-density stability under the small-running-coupling assumption, B-Large-II pp.355–356.
The later correlation analysis is not present there.
That is a limitation of this particular gauge endpoint, not a statement about all his work.
B-N-Corr and B-Corr explicitly study correlations in other models.

N2 joins exact weak-coupling blocking to preliminary mixing and a rectangular partition-function defect, §§2–3,8–9.
The terminal finite-box input is transported to fine cutoffs, and repeated positivity/doubling gives a full gap.
N3 builds the spin field on top of this massive route, §§8–11, then removes the bounded-offset ambiguity, §§12–15.
Its continuum endpoint is canonical for the specified normalization and state.

The Lean instead proceeds from a common all-label construction, [`YM/SharpGram/Assembly/Flowers.lean:75–130`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130), to fixed-volume full-mesh convergence and volume extraction.
It then builds phases, reconstructs each phase internally and identifies stress/rotation/OPE data on the common hierarchy.
The internal [`Construction.lean:15–31`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L31) result includes contacts and reconstruction of every phase; [`Solution.lean:4–10`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean#L4-L10) exports a selected reconstructed theory and the common phase table through [`ChallengeSpec.lean:24–42`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L24-L42), [`ChallengeSpec.lean:117–143`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L117-L143).
The full internal package should not be confused with the exact list of conclusions literally exported by [`JointExistence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L186-L188).
[`Construction.lean:15–31`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L31) makes this order visible in the quantifiers.
[`YM/EveryPhase/Decay.lean:173–192`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decay.lean#L173-L192) provides polynomial residual decay, not a positive spectral threshold.
Thus **the NLSM resemblance is strongest before the infrared endpoint, and weakens where the two theories are identified**.
The absence of a gap assertion is not a proof of gaplessness.

A further older comparator is Magnen–Rivasseau–Sénéor, *Construction of YM4 with an infrared cutoff* (1993), pp.325–383.
The publisher abstract describes SU(2) Schwinger functions in a fixed infrared setting and trivial topological sector, using regularized axial gauge, local background-dependent gauges and symmetry-restoring counterterms.
This is relevant prior constructive Yang–Mills work beyond a vacuum stability estimate.
Only the abstract was accessible, so no detailed Lean mechanism is attributed to that paper.
Its fixed infrared cutoff differs from the phase/volume-extraction target in [`ChallengeSpec.lean:177–188`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L177-L188).
It is a priority check that should be completed before claiming that any broad “construction of Yang–Mills correlations” idea is new.

### 4.2 Reflection positivity and chessboard estimates

FILS78 §4, preprint pp.33–36, already proves abstract and torus chessboard inequalities.
Osterwalder–Seiler's 1978 abstract establishes the lattice-gauge reflection/transfer setting; its strong-coupling construction is not a continuum weak-coupling theorem.
The Lean's basic dissemination and seminorm statement, [`YM/Cells/Certificate.lean:14–24`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L14-L24), belongs to that older tradition.
Its gauge-law proof is consumed directly from [`Slice.reflected_positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Reflection.lean#L98-L114).

N2 uses positivity for rectangular doubling and a spectral-gap conclusion, §§2,9.
N3 uses both kinetic-row exponential moments, Lemma 7.3, p.62, and later massive reconstruction.
The Lean uses chessboard roots to control composite observables and finite differences, [`YM/Extraction/Center.lean:21–40`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L21-L40), and spectral positivity to manage phases and exterior flux.
The principle is shared; the required estimates and endpoint are different.
The word “reflection positivity” alone provides no evidence that the mass-gap argument was transplanted.

### 4.3 Composite insertions and observables

B-RG-I's gauge identities control Taylor coefficients of effective actions, §§4–5.
B-Corr and B-N-Corr show that correlation analysis belongs to the wider Balaban programme.
It would be wrong to infer an NLSM origin merely because the Lean has observables.

N3 §9.1–9.2, pp.75–80, carries independent spin sources and normalizes their linear response through the flow.
The Lean shares exact source passage and retained supports: [`YM/Source/Insertion.lean:26–68`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L26-L68) defines the inserted coefficient and [`YM/Source/Insertion.lean:89–110`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L89-L110) requires its exact push along the same unmarked history.
These are finite-degree/nilpotent coefficient constructions, not literally N3's analytic multivariate spin-source neighborhood; their realization is part of the common-family construction in [`YM/SharpGram/Assembly/Flowers.lean:75–130`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130).
Its observable target is wider: all finite-degree gauge-invariant composite labels, equation quotients, derivatives, stress and OPE channels.
[`YM/Labels/Polynomial.lean:60–112`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L60-L112), [`YM/MergeProof/Powder.lean:19–71`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L19-L71) and [`YM/OPE/Orbits/Kernel.lean:62–77`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L62-L77) show these added obligations.
The source-propagation strategy is shared; the common all-label closure and identification are not supplied by the cited spin-source sections.

An OPE is an older organizing idea, Wilson 1969 and Zimmermann 1973.
The potential contribution is a nonperturbative finite-order remainder with common coefficients for all spectator words and bounds uniform in phase and allowed positions for each fixed word.
The eventual radius threshold can depend on the spectator word; this is not one bound uniform over all such words.
Likewise collision extension uses old Taylor-subtraction mathematics, BF00 §5.2, Eqs.(36)–(39).
It does not automatically add contact Ward identities or physical time-ordered products; [`YM/Contacts/Solstice/Result.lean:3–6`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L3-L6) explicitly limits the claim.

### 4.4 Running coupling, tuning and normalization

Balaban isolates the gauge-action marginal direction by symmetry and Taylor analysis, B-RG-I p.258 and §5.
N2 preserves a fixed-reference geometric partition while shooting the actual coupling, Eq.(5.1), p.38, and §7.
The Lean combines these two features, [`YM/RG/History.lean:63–85`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L63-L85) and [`YM/RG/Activities.lean:70–75`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L70-L75).
Its exact reset must restore the whole density class, [`YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean:71–95`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean#L71-L95).
That restoration is more closely formulated in N2 Eqs.(5.40)–(5.42) than in the broad phrase “renormalize the coupling”.

The physical universal coefficient comes from gauge vector/ghost algebra, not the sigma-model beta function.
Abbott82 §3.3, p.48, Eqs.(3.3.1)–(3.3.5), supplies a directly read older calculation of the coefficient.
The Lean's momentum-shell calculation and bounded matching are at [`YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean:326–408`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L326-L408) and [`YM/Next/STATIONARY/Level/Transition.lean:153–178`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L153-L178).
The latter explicitly transfers the auxiliary coefficient to the stationary one; the matrices must not be conflated.

Finally, the internal coefficient is a coordinate in the action representation.
[`YM/RG/History.lean:25–33`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L25-L33) and [`YM/Pert/Asymptotics/RawAxis.lean:3–4`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L3-L4) explicitly withhold identification with an independently defined physical coupling scheme beyond the proved comparison.
N3's canonical normalization by susceptibility/second-moment length, Theorem 1.1, pp.5–6, is a different statement.
The Lean's successful-recursion tuning uniqueness is not a claim that every possible regulator gives the same continuum theory.

### 4.5 Order of constants and schedule growth

A correct order of choices is common constructive analysis: D-II Theorem 3.1, PDF p.29, and B-N-II Theorem 1, p.680, are explicit examples.
N2 p.55, Eq.(5.43), chooses leading uniform constants before block size, later coefficient caps and logarithmic powers, then a large coupling threshold.
The Lean similarly distinguishes pre-block choices from later waits, [`YM/RG/History.lean:43–61`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L43-L61) and [`YM/Next/FLUCTUATIONS/Grants.lean:32–36`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L32-L36).

What changes is the demand for one sequence serving unboundedly many finite orders.
[`YM/SharpGram/Assembly/Flowers.lean:77–130`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L77-L130) increases order requests and selects the family once.
[`YM/FullVolume/Sluggish.lean:13–19`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L13-L19), [`YM/FullVolume/Sluggish.lean:37–38`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L37-L38) distinguishes eventual mesh statements uniform in all periods from a merely fixed-period bound.
This quantified extension is meaningful.
The existence of many parameters, however, is not evidence for many new ideas, nor proof that the dependency order has been verified throughout.

### 4.6 Correlations, full mesh limits and volume limits

N3 Proposition 10.2, pp.84–86, uses its massive estimates to compare tori and pass tests to the limit.
Its §15.3, pp.119–120, removes the real bare-coupling ambiguity.
The Lean has a full mesh limit at each suitable fixed physical volume, [`PublicWilson.lean:83–90`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L83-L90), followed by a subsequential volume limit, [`ChallengeSpec.lean:184–188`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L184-L188).
These quantifiers must remain distinct.
The theorem does not thereby supply arbitrary simultaneous mesh/volume limits or uniqueness across all bare-coupling trajectories.

Dominated convergence and diagonal compactness are standard.
[`YM/Extraction/Integrate.lean:115–153`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L115-L153) explicitly uses a dominated-convergence theorem.
The substantial constructive input is uniform control of the renormalized observables before that theorem is applied.
A large number of Lean lines devoted to passing limits is not evidence that the limiting procedure itself originated in 2026.

### 4.7 Rotation restoration, phases and nonfreeness

N3 §§10.2–10.3, pp.84–87, compares inclined blockings and generates a dense rotation subgroup.
Lean uses local stress identities, exterior flux, analytic continuation and finite-dimensional label comparison.
[`YM/Ward/Walk.lean:15–26`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L15-L26), [`YM/Ward/Walk.lean:60–84`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L60-L84) supplies the analytic continuation along segments/walks; [`YM/Ward/Axis.lean:86–107`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L86-L107), [`YM/Ward/Axis.lean:130–139`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L130-L139) reaches collinear configurations and completes the density argument.
The common goal of Euclidean covariance does not make these the same idea.

N3 §11.2 obtains its unique vacuum through exponential clustering.
Lean decomposes the zero-energy algebra into characters, [`YM/Phase/Mixture.lean:65–86`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L65-L86), then reconstructs each phase.
The character space need not contain more than one inequivalent phase.
The same mathematical object satisfying all later conclusions is a standard requirement, made explicit by the final assembly.

N3 §11.3, pp.93–94, detects non-Gaussianity by a nonzero fourth spin cumulant.
Lean's trace inverse logarithm rules out the specified finite mass-shell Wick profiles, [`YM/TraceExtension/Wick/Refute.lean:75–105`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L75-L105).
Those are different witnesses, and neither should be described as a complete classification of all conceivable generalized free models.
The continuous-mass generalized-free case is expressly outside the exclusion at [`YM/TraceExtension/Wick/Refute.lean:4–8`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L4-L8).

## 5. What appears new, and what is routine

### 5.1 Ranked candidates for substantive new work

This is a ranking of **well-located contributions needing further priority checking**, not a certification that no predecessor exists.
A result can be new even though its organizing idea is old.
Conversely a larger theorem endpoint does not make every lemma used to reach it new.

1. **The constructive integration of a gauge RG with one all-composite hierarchy and its identifications.**
   [`YM/SharpGram/Assembly/Flowers.lean:75–130`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130), [`YM/MergeProof/Powder.lean:19–71`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L19-L71) and [`Construction.lean:15–31`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L31) serve one family with all finite labels, free comparison, stress, phases and OPE.
   B-Large-II pp.355–356 stops before this observable construction; N3 §§9–11 concerns the spin field and a different massive endpoint.
   The strongest candidate is this simultaneous constructive realization, not the abstract wish to construct a QFT.
   Confidence: medium for novelty relative to the sources read; low for priority across the literature without MRS and composite-field literature read in full.
2. **Volume-uniform gauge normalization and detector/rank estimates supporting that hierarchy.**
   [`YM/Next/RANK/Determinant.lean:240–274`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L240-L274) cancels extensive powers using a torus plaquette sweep and Haar-shell lower bound.
   [`YM/MergeProof/Powder.lean:48–71`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L48-L71) then participates in interacting/free rank control.
   N3 §§7,9 uses different rough-region and spin-source estimates; B-Large-II §1 has related normalization problems without the exact displayed count.
   Confidence: medium-low for historical novelty; Seiler's lattice-gauge estimates are a particularly important unchecked comparator.
3. **Closing the exact N2-style density engine for four-dimensional gauge variables with controlled marginal matching.**
   The explicit blocks and activity format are at [`YM/RG/Block.lean:39–79`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L39-L79), [`YM/RG/Activities.lean:42–129`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L42-L129); the controlled slope reaches the transition at [`YM/Next/STATIONARY/Level/Transition.lean:153–178`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L153-L178).
   N2 §5 supplies a close scalar/spin implementation; B-RG-I §§4–5 supplies the gauge marginal programme; Abbott82 §3.3 supplies the standard coefficient.
   What may be new is the completed combination of estimates for this exact transformation, not any of those constituent ideas.
   Confidence: medium within the sources read; the full determinant-comparison proof still needs separate technical verification.
4. **Stress-driven restoration of rotations with an exterior-flux argument without an assumed gap.**
   [`YM/Next/ROTATIONS/Yard.lean:49–77`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L49-L77), [`YM/Next/ROTATIONS/Yard.lean:105–114`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L105-L114), [`YM/Next/ROTATIONS/Route.lean:49–67`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L49-L67) and [`YM/Ward/Walk.lean:60–84`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L60-L84) give the concrete route.
   N3 §§10–11 instead relies on inclined regulators and massive estimates; B-Large-II's stated endpoint has no such continuum rotation construction.
   Confidence: medium relative to those sources, low for priority over the wider Euclidean/algebraic-QFT literature.
5. **A controlled all-radii trace law used as a nonfree witness.**
   [`YM/TraceExtension/Verse/Cape.lean:53–88`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L53-L88) and [`YM/TraceExtension/Wick/Refute.lean:75–105`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L75-L105) turn scaling information into the public inverse-log trace asymptotic and exclusion.
   CDJ77 establishes the older anomaly principle; N3 §11.3 uses a different cumulant witness.
   Confidence: medium for the specific constructive realization, low for first use of trace anomalies to diagnose interaction.
6. **One finite-order OPE system with common coefficients across phases and spectator words.**
   [`YM/OPE/Orbits/Kernel.lean:52–77`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L52-L77) chooses a common prescription and supplies finite-horizon estimates, uniform in phase and allowed positions for each fixed spectator word.
   Wilson 1969 and Zimmermann 1973 are older OPE antecedents; N3's cited source chapters do not give this all-composite statement.
   Confidence: medium for the extension relative to these sources, low for an exhaustive priority claim.
   This does not assert convergence in OPE order, a unique prescription, or identified perturbative coefficients.

No item in this list is established as a new **physical principle**.
The best-supported potential novelty is rigorous control and compatibility of difficult existing structures in a new setting.
Formalization itself supplies explicit dependency and quantifier management, but a line of formal code is not automatically a new mathematical idea.

### 5.2 Routine or established ingredients that should receive ordinary credit

| Ingredient | Lean example | Established antecedent and access |
|---|---|---|
| Wilson lattice law and Haar invariance | [`YM/Wilson/Law.lean:55–99`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L55-L99) | B-RG-I p.252 Eq.(0.2), directly read; Wilson 1974 historical reference |
| Gaussian conditioning and Schur complements | [`YM/PREC/TreeMatch.lean:76–103`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L76-L103) | B-Prop-I pp.26–29, directly read |
| Log determinants and inverse expansions | [`YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Sector.lean:54–71`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Sector.lean#L54-L71) | B-Large-II pp.356–358 and N2 p.44; ordinary finite-dimensional identities |
| Connected graph/tree and cluster bounds | [`YM/Push/ABSOLUTE_SUMS/Clusters.lean:224–243`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L224-L243) | Bry §3, pp.138–143; Cam §3, pp.525–528 |
| Marginal subtraction by symmetry | [`YM/RG/Activities.lean:70–75`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L70-L75) | B-RG-I §5, pp.292–297; BBS19 §5.2, preprint p.72, for a different model's localization operator |
| Gauge one-loop coefficient | [`YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean:326–338`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L326-L338) | Abbott82 §3.3 p.48, Eqs.(3.3.1)–(3.3.5), directly read |
| Chessboard dissemination | [`YM/Cells/Certificate.lean:14–24`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L14-L24) | FILS78 §4, preprint pp.33–36, directly read |
| Reflection-positive Hilbert reconstruction | [`YM/OS/Dynamics.lean:63–107`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L63-L107) | OS73 §4 p.90, indexed primary extract; OS75 corrected theorem, partial access |
| Wick reference calculations | [`YM/Next/MAXWELL/System.lean:106–179`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L106-L179) | Standard free-field theory; not attributed to a particular recent paper |
| Dominated convergence | [`YM/Extraction/Integrate.lean:115–153`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L115-L153) | Standard integration theory; theorem explicitly invoked in Lean |
| Taylor subtraction at diagonals | [`YM/Contacts/Normal/Subtractions.lean:54–83`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Normal/Subtractions.lean#L54-L83) | BF00 §5.2, Eqs.(36)–(39), and §6.4, directly read |
| Stability of finite-dimensional rank | [`YM/Next/RANK/Matrices.lean:63–86`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Matrices.lean#L63-L86) | Standard linear algebra; the comparison estimates, not this implication, carry the constructive content |

## 6. Open questions, limits and priorities for expert checking

### 6.1 Coverage and source reliability

The source reading is selective: it does not cover every line of Lean or every proof in the literature. The counts of declarations used by the main theorem rest on existing dependency information and source intervals, and do not independently establish the theorem’s correctness. At the principal citations, definitions and proof bodies support the comparisons; comments alone are not treated as theorems. The comparisons refer to the pinned Lean source and dated primary papers; they do not depend on revisions to secondary expositions.

Full texts of all six OpenAI preprints and the 24 works in §7.3 were available. The reading covered introductions, theorem statements, overall structure and the technical passages cited here, with particular attention to N2 §5 and N3's comparison and continuum sections. This is selective full-text reading, not a claim that every paper or proof was read in full. Human rewrites and assessments are not evidence for the provenance claims, and the papers' own claims of originality are not treated as established historical facts.

The other sources were read in the parts specified in §7.4, or only as abstracts or primary indexed extracts. The background references in §7.5 were not directly read. None of these access levels amounts to independent human endorsement of the comparisons.

### 6.2 Missing or incompletely accessed literature

Five foundational Balaban gauge papers are unavailable: averaging operations, background-field propagators, regular configuration spaces/gauge fixing, the gauge variational problem, and three-dimensional ultraviolet stability.
Their exact citations are listed in §7 from B-RG-I's bibliography.
Descriptions through B-RG-II are checked accounts within the series, not replacements for reading those originals.
This particularly limits novelty claims about gauge synchronization, local stationary branches and background regularity.

OS73/OS75 were available only through primary indexed extracts and the discussion in N3; their complete texts were unavailable.
CDJ77, Wilson's OPE paper and Zimmermann's short-distance paper were abstract-only.
MRS93 and BY90 were abstract-only for this comparison.
Their statements of scope can be used, but their inaccessible proof mechanisms cannot be credited or excluded in detail.
The bibliography distinguishes these limits of access.

The wider comparison remains incomplete for Gawędzki–Kupiainen, Brydges–Dimock–Hurd, Feldman–Magnen–Rivasseau–Sénéor, Seiler's detailed gauge estimates and older algebraic-QFT phase decompositions.
Balaban's references identify some historical debts, but those are not independent readings of the cited papers.
Polyakov, Hasenfratz, Zinn-Justin and Lüscher are useful literature leads, not evidence of transfer to this Lean source in the absence of a matched result.
No attribution to their methods is made merely from expert familiarity with their subject matter.
The precise missing comparisons are more valuable than a list of famous names attached to generic similarities.

### 6.3 Highest-value unresolved technical comparisons

1. **The stationary determinant bridge.**
   Follow every premise from the blocked joint Hessian through [`pole_reduced`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L153-L178) to the auxiliary vector/ghost calculation, [`YM/Next/STATIONARY/Level/Transition.lean:153–178`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L153-L178).
   The interfaces and the coefficient calculation support the comparison, but not every estimate supplying that bridge has been examined.
2. **The complete nonlinear large-field step.**
   Compare Balaban's aged-region R ratios, B-Large-I Eqs.(0.2)–(0.6), against every actual Lean seed reorganization, not only the final activity interface.
   A related replacement hidden upstream would narrow the stated organizational difference.
3. **Gauge normalization priority.**
   Search Seiler and finite-volume gauge-construction literature for the specific torus $3V+1$ versus $3V-3$ cancellation in [`YM/Next/RANK/Determinant.lean:240–274`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L240-L274).
   Its absence from N3 is established; novelty across the literature is not.
4. **All-label uniformity and quantifier order.**
   Check that the intended estimates survive the growing orders in [`YM/SharpGram/Assembly/Flowers.lean:75–130`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130) and the pre-block order of constants.
   Source similarity does not settle that mathematical obligation.
5. **Exterior flux and phase theory.**
   Read all upstream spectral estimates used by [`YM/Next/ROTATIONS/Yard.lean:49–77`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L49-L77), and compare the train-commutation phase argument with older Euclidean extremal-state methods.
6. **Reconstruction and contacts.**
   Compare exact Lean domains/growth hypotheses with the full corrected OS theorem, and keep the separate contact extension within its stated scope.
7. **Trace normalization and physical interpretation.**
   Check the stress normalization and anomaly normalization beyond CDJ77's abstract, including the relation between the internal running coordinate and any physical renormalization scheme.
8. **Causal provenance.**
   Draft histories, author testimony and generation records would be needed to decide which sources actually influenced the authors.
   Mathematical matching alone cannot answer that historical question.

These limits do not erase the strongest positive comparisons: the matched retained-density formulas remain direct evidence.
They do prevent upgrading “closest inspected antecedent” to a proved history of invention or copying.

## 7. Bibliography and source access

### 7.1 Lean source and orientation

The mathematical comparisons use the [released Lean source at commit `3456e5e75cf8d4cd558955a5c7638fba2d68f464`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464). The line links throughout this page identify the relevant definitions and proofs. The comparisons and size counts concern the source text and do not independently establish the theorem’s correctness.

For orientation, see [statement.md](statement.md), [summary.md](summary.md), the [architecture](outline/README.md) and the [units](outline/units.md). These expositions are not primary evidence for mathematical antecedents.

### 7.2 Six OpenAI preprints

All six are preprints credited to OpenAI, not journal articles. Their full texts were available and read selectively for their structure and the mechanisms cited above. Links point to their dated folders in [OpenAI's math preprints](https://github.com/openai/math/tree/main/preprints); the content comparisons rest on the dated texts, not on subsequent changes to that collection.

- **N1**: OpenAI, *Exponential decay in two-dimensional classical O(n) models*, September 23, 2026, 20 printed pages. [Preprint](https://github.com/openai/math/tree/main/preprints/Exponential-decay-in-two-dimensional-classical-On-models-September-23-2026).
- **N2**: OpenAI, *Sharp mass bounds for the two-dimensional O(4) model*, September 23, 2026, 102 printed pages. [Preprint](https://github.com/openai/math/tree/main/preprints/Sharp-mass-bounds-for-the-two-dimensional-O4-model-September-23-2026).
- **N3**: OpenAI, *The canonical massive continuum limit of the two-dimensional O(3) model*, October 4, 2026, 122 printed pages. [Preprint](https://github.com/openai/math/tree/main/preprints/The-canonical-massive-continuum-limit-of-the-two-dimensional-O3-model-October-4-2026).
- **N4**: OpenAI, *An Isolated Particle Pole for the Two-Dimensional O(3) Spin Field*, October 4, 2026, 26 printed pages. [Preprint](https://github.com/openai/math/tree/main/preprints/An-Isolated-Particle-Pole-for-the-Two-Dimensional-O3-Spin-Field-October-4-2026).
- **N5**: OpenAI, *Exact mass asymptotics for the two-dimensional O(4) lattice model*, October 5, 2026, 109 printed pages. [Preprint](https://github.com/openai/math/tree/main/preprints/Exact-mass-asymptotics-for-the-two-dimensional-O4-lattice-model-October-5-2026).
- **N6**: OpenAI, *The Critical Spin Field of the Planar XY Model*, October 5, 2026, 43 printed pages. [Preprint](https://github.com/openai/math/tree/main/preprints/The-Critical-Spin-Field-of-the-Planar-XY-Model-October-5-2026).

### 7.3 Balaban and related works: 24 sources

Full texts of these 24 works were available; introductions, theorem statements and selected relevant technical sections were read. This is not a claim of complete proof-by-proof reading. The descriptions identify each work's subject so that gauge, spin and scalar results remain distinct.

1. **B-Green.** Tadeusz Bałaban, “Regularity and Decay of Lattice Green's Functions,”
   *Communications in Mathematical Physics* **89** (1983), 571–597.
   Gauge-covariant difference operators; §2 generalized random walks.
2. **B-Prop-I.** T. Bałaban, “Propagators and Renormalization Transformations for Lattice Gauge Theories. I,”
   *Communications in Mathematical Physics* **95** (1984), 17–40.
   Gaussian vector gauge theory, block averages and gauge change.
3. **B-Prop-II.** T. Bałaban, “Propagators and Renormalization Transformations for Lattice Gauge Theories. II,”
   *Communications in Mathematical Physics* **96** (1984), 223–250.
   Restrictions on several scales and irregular domains.
4. **B-RG-I.** Tadeusz Bałaban, “Renormalization Group Approach to Lattice Gauge Field Theories.
   I. Generation of Effective Actions in a Small Field Approximation and a Coupling Constant Renormalization in Four Dimensions,”
   *Communications in Mathematical Physics* **109** (1987), 249–301.
   Small-field effective actions, Ward identities, marginal extraction.
5. **B-RG-II.** Tadeusz Bałaban, “Renormalization Group Approach to Lattice Gauge Field Theories. II. Cluster Expansions,”
   *Communications in Mathematical Physics* **116** (1988), 1–22.
   Localization and exponentiated connected expansion.
6. **B-Conv.** T. Bałaban, “Convergent Renormalization Expansions for Lattice Gauge Theories,”
   *Communications in Mathematical Physics* **119** (1988), 243–285.
   Full density with large-field domains; superrenormalizable closure.
7. **B-Large-I.** Tadeusz Bałaban, “Large Field Renormalization. I. The Basic Step of the R Operation,”
   *Communications in Mathematical Physics* **122** (1989), 175–202.
   Repeated renormalization of large-field densities.
8. **B-Large-II.** Tadeusz Bałaban, “Large Field Renormalization. II. Localization, Exponentiation, and Bounds for the R Operation,”
   *Communications in Mathematical Physics* **122** (1989), 355–392.
   Conditional four-dimensional ultraviolet stability.
9. **B-Higgs.** Tadeusz Bałaban, “(Higgs)₂,₃ Quantum Fields in a Finite Volume. I. A Lower Bound,”
   *Communications in Mathematical Physics* **85** (1982), **603–626**.
   Scalar/vector model in dimensions two and three, not pure four-dimensional YM.
   The original first-page header itself says 603–636; the 24-page PDF ends at 626.
   The [publisher record](https://link.springer.com/article/10.1007/BF01403506) confirms 603–626.
10. **B-N-I.** Tadeusz Bałaban, “A Low Temperature Expansion for Classical N-Vector Models. I. A Renormalization Group Flow,”
    *Communications in Mathematical Physics* **167** (1995), 103–154.
    Low-temperature spin-wave programme in $d\ge3$.
11. **B-N-Var.** Tadeusz Bałaban, “The Variational Problems for Classical N-Vector Models,”
    *Communications in Mathematical Physics* **175** (1996), 607–642.
    Background minimizers, analyticity and regularity.
12. **B-N-Loc-I.** Tadeusz Bałaban, “Localization Expansions. I. Functions of the ‘Background’ Configurations,”
    *Communications in Mathematical Physics* **182** (1996), 33–82.
    Localization of nonlocal minimizers and covariance functions.
13. **B-N-II.** Tadeusz Bałaban, “A Low Temperature Expansion for Classical N-Vector Models. II. Renormalization Group Equations,”
    *Communications in Mathematical Physics* **182** (1996), 675–721.
    N-vector RG equations, not a general gauge survey.
14. **B-N-III.** Tadeusz Bałaban, “A Low Temperature Expansion for Classical N-Vector Models III.
    A Complete Inductive Description, Fluctuation Integrals,”
    *Communications in Mathematical Physics* **196** (1998), 485–521.

15. **B-N-Loc-II.** Tadeusz Bałaban, “Renormalization and Localization Expansions. II. Expectation Values of the ‘Fluctuation’ Measures,”
    *Communications in Mathematical Physics* **198** (1998), 1–45.

16. **B-N-Large.** Tadeusz Bałaban, “The Large Field Renormalization Operation for Classical N-Vector Models,”
    *Communications in Mathematical Physics* **198** (1998), 493–534.

17. **B-N-Corr.** Tadeusz Bałaban and Michael O'Carroll, “Low Temperature Properties for Correlation Functions in Classical N-Vector Spin Models,”
    *Communications in Mathematical Physics* **199** (1999), 493–520.
    Magnetization and Goldstone asymptotics in $d\ge3$.
18. **B-Corr.** Tadeusz Bałaban and Michael O'Carroll, “A Simple Method for Correlation Functions via the Effective Actions in the Renormalization Group Framework,”
    *Annals of Physics* **260** (1997), 1–8.

    The worked model is the massive two-dimensional Gross–Neveu model, not NLSM or YM.
19. **B-Spin.** Tadeusz Bałaban, “A Low Temperature Expansion and ‘Spin Wave Picture’ for Classical N-Vector Models,”
    in V. Rivasseau (ed.), *Constructive Physics: Results in Field Theory, Statistical Mechanics and Condensed Matter Physics*,
    Lecture Notes in Physics **446** (Springer, 1995), 201–218.

    [Publisher metadata](https://link.springer.com/chapter/10.1007/3-540-59190-7_30) distinguishes the 1995 volume from 2005 online posting.
20. **D-I.** J. Dimock, “The Renormalization Group According to Balaban. I. Small Fields,”
    *Reviews in Mathematical Physics* **25** (2013), 1330010; [arXiv:1108.1335](https://arxiv.org/abs/1108.1335).
    Cited preprint version: October 28, 2018, 52 pages.
21. **D-II.** J. Dimock, “The Renormalization Group According to Balaban. II. Large Fields,”
    *Journal of Mathematical Physics* **54** (2013), 092301; [arXiv:1212.5562](https://arxiv.org/abs/1212.5562).
    Cited preprint version: August 25, 2018, 94 pages.
22. **D-III.** J. Dimock, “The Renormalization Group According to Balaban. III. Convergence,”
    *Annales Henri Poincaré* **15** (2014), 2133–2175; [arXiv:1304.0705](https://arxiv.org/abs/1304.0705).
    Cited preprint version: March 29, 2018, 37 pages.
    [Publisher record](https://link.springer.com/article/10.1007/s00023-013-0303-3) gives issue 2014, online 2013.
    All three Dimock papers treat scalar $\varphi^4$ in dimension three; they do not supply non-Abelian gauge arguments.
23. **Bry.** David C. Brydges, “A Short Course on Cluster Expansions,” in K. Osterwalder and R. Stora (eds.),
    *Critical Phenomena, Random Systems, Gauge Theories*, Les Houches Session XLIII (1984), Part I,
    North-Holland/Elsevier (1986), 129–183.
    Published in 1986 from the 1984 lectures.
24. **Cam.** Camillo Cammarota, “Decay of Correlations for Infinite Range Interactions in Unbounded Spin Systems,”
    *Communications in Mathematical Physics* **85** (1982), 517–528.
    Polymer convergence and decay; not authored by Bałaban.

### 7.4 Other literature actually used

- **Abbott82.** L. F. Abbott, “Introduction to the Background Field Method,” *Acta Physica Polonica B* **13** (1982), 33–50.
  [Publisher PDF](https://www.actaphys.uj.edu.pl/R/13/1/33/pdf).
  **Directly read:** §3.2 pp.46–47 and §3.3 p.48, Eqs.(3.3.1)–(3.3.5), background gauge renormalization and vector/ghost coefficient.
- **FILS78.** Jürg Fröhlich, Robert Israel, Elliott H. Lieb and Barry Simon, “Phase Transitions and Reflection Positivity. I. General Theory and Long Range Lattice Models,” *Communications in Mathematical Physics* **62** (1978), 1–34.
  [Primary IHES preprint](https://repo-archives.ihes.fr/FONDS_IHES/I_Prepublications/FROHLICH/1978-1980/P_78_224/P_78_224.pdf).
  **Directly read:** preprint §4 pp.33–36, Theorems 4.1–4.3, abstract/torus chessboard inequalities; this pagination is not journal pagination.
- **BBS19.** Roland Bauerschmidt, David C. Brydges and Gordon Slade, *Introduction to a Renormalisation Group Method*, Lecture Notes in Mathematics **2242**, Springer, 2019.
  [Primary preprint](https://arxiv.org/abs/1907.05474), [book DOI](https://doi.org/10.1007/978-981-32-9593-3).
  **Directly read:** §5.2, preprint p.72, Definition 5.2.2 and Eq.(5.2.10), polynomial localization; §8.3 pp.122–123, Proposition 8.3.1, surviving-interval critical trajectory. This is general constructive RG, not a gauge theorem.
- **Fed87.** Paul Federbush, “A phase cell approach to Yang–Mills theory. VI. Non-Abelian lattice-continuum duality,” *Annales de l'Institut Henri Poincaré, Physique théorique* **47** (1987), 17–23.
  [Primary Numdam PDF](https://www.numdam.org/article/AIHPA_1987__47_1_17_0.pdf).
  **Directly read:** pp.18–20, group averaging and Theorems 1–2 on compatible smooth potentials/action convergence; this is classical, not a quantum existence theorem.
- **MRS93.** Jacques Magnen, Vincent Rivasseau and Roland Sénéor, “Construction of YM4 with an infrared cutoff,” *Communications in Mathematical Physics* **155** (1993), 325–383.
  [Publisher record and abstract](https://link.springer.com/article/10.1007/BF02097397).
  **Abstract only:** SU(2), infrared cutoff, trivial topological sector, regularized axial gauge and symmetry identities; no detailed proof-method attribution made.
- **BY90.** David C. Brydges and Horng-Tzer Yau, “Grad phi perturbations of massless Gaussian fields,” *Communications in Mathematical Physics* **129** (1990), 351–392.
  [Publisher record and abstract](https://link.springer.com/article/10.1007/BF02096987).
  **Abstract only:** analytic RG for weak approximately local perturbations and dipole-gas pressure.
  This is a relevant older analytic/polymer comparator, not a verified source of a particular Lean lemma.
- **OSe78.** Konrad Osterwalder and Erhard Seiler, “Gauge Field Theories on a Lattice,” *Annals of Physics* **110** (1978), 440–471.
  [Publisher DOI](https://doi.org/10.1016/0003-4916(78)90039-8).
  **Abstract only:** positivity/transfer structure and strong-coupling results; not used as evidence for a weak-coupling continuum construction.
- **OS73.** Konrad Osterwalder and Robert Schrader, “Axioms for Euclidean Green's Functions,” *Communications in Mathematical Physics* **31** (1973), 83–112.
  [DOI](https://doi.org/10.1007/BF01645738).
  **Primary indexed extract:** §4 p.90, reflection Hilbert space, semigroup and analytic continuation; the complete text was unavailable.
- **OS75.** Konrad Osterwalder and Robert Schrader, with an appendix by Stephen Summers, “Axioms for Euclidean Green's Functions II,” *Communications in Mathematical Physics* **42** (1975), 281–305.
  [Primary PDF endpoint](https://projecteuclid.org/journals/communications-in-mathematical-physics/volume-42/issue-3/Axioms-for-Euclidean-Greens-functions-II-with-an-Appendix-by/cmp/1103899050.pdf), [DOI](https://doi.org/10.1007/BF01608978).
  **Primary indexed contents/introduction:** corrected reconstruction §IV.1 pp.287–288; the complete text was unavailable. N3 p.91 was directly read for its application and growth check.
- **CDJ77.** John C. Collins, Anthony Duncan and Satish D. Joglekar, “Trace and dilatation anomalies in gauge theories,” *Physical Review D* **16** (1977), 438–449.
  [Primary publisher abstract](https://journals.aps.org/prd/abstract/10.1103/PhysRevD.16.438).
  **Abstract only, p.438:** non-Abelian trace anomaly; detailed convention-dependent normalization was not verified here.
- **GW73.** David J. Gross and Frank Wilczek, “Ultraviolet Behavior of Non-Abelian Gauge Theories,” *Physical Review Letters* **30** (1973), 1343–1346.
  [Primary paper](https://journals.aps.org/prl/pdf/10.1103/PhysRevLett.30.1343).
  **Partial primary text:** opening pp.1343–1344, Eqs.(1)–(3), UV running; Abbott82 supplies the directly checked numerical coefficient comparison.
- **P73.** H. David Politzer, “Reliable Perturbative Results for Strong Interactions?”, *Physical Review Letters* **30** (1973), 1346–1349.
  [Primary paper](https://journals.aps.org/prl/pdf/10.1103/PhysRevLett.30.1346).
  **Directly read:** pp.1346–1348, especially p.1347 Eqs.(4),(6) and p.1348 leading flow; the numerical fractions were not independently verified; Abbott82 is the source for the coefficient comparison.
- **W69.** Kenneth G. Wilson, “Non-Lagrangian Models of Current Algebra,” *Physical Review* **179** (1969), 1499–1512.
  [Primary publisher abstract](https://journals.aps.org/pr/abstract/10.1103/PhysRev.179.1499).
  **Abstract only, p.1499:** short-distance products expanded in local fields with singular coefficients; no detailed remainder theorem inferred from the abstract.
- **Z73.** Wolfhart Zimmermann, “Normal products and the short distance expansion in the perturbation theory of renormalizable interactions,” *Annals of Physics* **77** (1973), 570–601.
  [Publisher abstract](https://www.sciencedirect.com/science/article/abs/pii/0003491673904302).
  **Abstract only:** perturbative scalar normal products and a two-field Wilson expansion.
  This is distinct from his other composite-operator paper on pp.536–569 in the same volume.
- **BF00.** Romeo Brunetti and Klaus Fredenhagen, “Microlocal Analysis and Interacting Quantum Field Theories: Renormalization on Physical Backgrounds,” *Communications in Mathematical Physics* **208** (2000), 623–661.
  [Primary preprint](https://arxiv.org/abs/math-ph/9903028), [journal DOI](https://doi.org/10.1007/s002200050004).
  **Directly read:** §5.2, preprint pp.23–25, Theorems 5.2–5.3 and Eqs.(36)–(39); §6.4, Theorem 6.9, normal-direction extension. The matched device is distribution extension, not the entire causal/microlocal construction.

### 7.5 Background references and unread originals

- **Wilson74 — established background; not directly read.** Kenneth G. Wilson, “Confinement of quarks,” *Physical Review D* **10** (1974), 2445–2459.
  The gauge-link/plaquette lattice formulation is the background result cited; no unverified equation number is supplied.
  The directly read evidence for its use in this tradition is B-RG-I p.252, Eq.(0.2), which credits Wilson.
- **Seiler82 — unread literature lead.** Erhard Seiler, *Gauge Theories as a Problem of Constructive Quantum Field Theory and Statistical Mechanics*, Lecture Notes in Physics **159**, Springer, 1982.
  No particular section was read or used to assign a Lean mechanism; its lattice-gauge normalization estimates should be checked before strengthening component 18's novelty claim.
- **Glimm–Jaffe87 — established background; not directly read.** James Glimm and Arthur Jaffe, *Quantum Physics: A Functional Integral Point of View*, second edition, Springer, 1987.
  Standard free-field/constructive-QFT background; no specific unread theorem or chapter is offered as evidence for a distinctive correspondence.

The following five exact references were read in B-RG-I's bibliography, p.299, but their full texts were absent from the sources available and not obtained:

1. Tadeusz Bałaban, “Averaging Operations for Lattice Gauge Theories,” *Communications in Mathematical Physics* **98** (1985), 17–51.
2. Tadeusz Bałaban, “Propagators for Lattice Gauge Theories in a Background Field,” *Communications in Mathematical Physics* **99** (1985), 389–434.
3. Tadeusz Bałaban, “Spaces of Regular Gauge Field Configurations on a Lattice and Gauge Fixing Conditions,” *Communications in Mathematical Physics* **99** (1985), 75–102.
4. Tadeusz Bałaban, “The Variational Problem and Background Fields in Renormalization Group Method for Lattice Gauge Theories,” *Communications in Mathematical Physics* **102** (1985), 277–309.
5. Tadeusz Bałaban, “Ultraviolet Stability of Three-Dimensional Lattice Pure Gauge Field Theories,” *Communications in Mathematical Physics* **102** (1985), 255–275.

The authors named in §6 as subjects for further comparison are not additional sources for the claims above. Directly read passages, partial extracts, abstracts and background knowledge provide different levels of support.

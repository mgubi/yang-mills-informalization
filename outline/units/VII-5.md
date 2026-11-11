# VII.5. Asymptotic freedom of the running coupling

*Part VII — Identification as Yang–Mills.* 232 lines of Lean in 43 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is a **first draft**, written from the Lean by one model; it has not yet been checked. It is updated as it improves.


**Part:** VII, identification as Yang–Mills. **Lean:** [`YM/Pert/Asymptotics`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics) (the mathematical content of the unit), together with two work packages whose declarations the unit page assigns here but which are not about the coupling: [`YM/Extra/WEAK_SCALING_ACTLAW`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW) and [`YM/TraceExtension/Foundation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation) (plus one definition in [`YM/TraceExtension/Soot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Soot)). **Size:** 232 lines in 43 declarations (162 + 37 + 18 + 1, plus 14 for the proof of the main statement). The assigned part of `YM/Pert/Asymptotics` is under 50 lines.

## 1. What this unit proves

The unit is small. One result is about asymptotic freedom (Proposition VII.5.1). The other declarations assigned to the unit are auxiliary linear-algebra and limit lemmas from two work packages (VII.5.2–VII.5.3 below). I say so in §5.

Throughout, $G$ is a simple compact gauge group with Casimir constant $c_G$ (the code's `Gauge.casimir`). $C$ is a Wilson family that satisfies its construction conditions (II.2). It has spacings $a_i\downarrow0$ and bare couplings $\beta_{N,p,m}$ at lattice level $N$, volume index $p$ and RG stage $m$. Write
$$b_0:=\frac{11\,c_G}{48\pi^2},\qquad \text{so } 2b_0=\kappa_G ,$$
where $\kappa_G$ is the slope constant that appears in the RG schedule (III.2, III.9). The *regulator coupling* at stage $m$ is $g_{N,p}(m):=\beta_{N,p,m}^{-1/2}$.

**Proposition VII.5.1 (leading-log asymptotics of the running coupling).** Assume $C$ satisfies its construction conditions and $G$ is simple. Let $N_i,k_i$ be sequences of lattice and volume indices with $i\le N_i$ eventually. Then
$$\lim_{i\to\infty}\; g_{N_i,k_i}(i)\,\sqrt{\log (1/a_i)}\;=\;\frac1{\sqrt{2b_0}} .$$
Equivalently, $g^2\sim\bigl(2b_0\log(1/a)\bigr)^{-1}$: the coupling tends to $0$ logarithmically as the cutoff is removed, with the one-loop coefficient $b_0=\frac{11}{3}\cdot\frac{c_G}{16\pi^2}$ (for $SU(N)$, $c_G=N$, this is the usual $\frac{11N}{48\pi^2}$).
*Status:* theorem. The hypothesis is the "running" clause of the construction conditions, which is proved in the RG units (III.9, III.14) and enters here as an input.
*Lean:* [`Pert.Asymptotics.comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L36-L48), with the definitions [`regulatorRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L35) and [`b0`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L13).

**Proposition VII.5.1′ (uniform linear growth of the bare coupling).** Under the same hypotheses, for every $\varepsilon>0$ and all sufficiently large $m$, for all $N\ge m$ and all $p$,
$$\Bigl|\frac{\beta_{N,p,m}}{\mathrm{scale}(m)}-2b_0\Bigr|<\varepsilon ,$$
where $\mathrm{scale}(m)\to\infty$ is the schedule's logarithmic scale of stage $m$. Also $2b_0=\kappa_G$ exactly.
*Status:* theorem (an intermediate step; it is also what the downstream code uses).
*Lean:* [`zeroUp_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L15-L30), [`b0_normalizes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L14).

**Proposition VII.5.2 (weak-scaling orientation: sign and size of the stress-tensor normalisation).** Let $S$ be a limit table (IV.1), $V$ a differential plan, $J$ a non-zero centered conserved stress tensor on $S$ with the flux data $(p,Y)$ of the weak-scaling criterion, and suppose the degree-4 part of $p$ equals $c$ times the degree-4 part of the derivative map of $V$. Let $(W.T,\kappa)$ be the free Maxwell comparison data with normalisation $\kappa\ne0$. Then along every weak-scaling sequence with scales $\xi_i$ the ratios $c/\xi_i$ converge to $\kappa$, and $c\,\kappa>0$.
*Status:* theorem, conditional on the "Pre" (flux-presentation) hypothesis and on the weak-curve existence statements of the work items A04, A05 (§2).
*Lean:* [`tracks_ratio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L43-L54), [`kappa_sign`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L56-L70) (the latter is not assigned to this unit by the declaration table; I cite it because it is the consequence), [`scale_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L28-L39).

**Proposition VII.5.3 (exact comparison maps by fixed finite-dimensional adjustment).** Given a free Maxwell label space and the Wilson table $S$ with differential plans $W,V$, real-spin hierarchies, and a "near-identity" family of comparison maps $A'_k$ up to degree $D$: there are fixed (point-independent) retractions $P_d$ of the free rise maps, equivariant under signed permutations and conjugation. Adjusting by them gives maps $X_d$ that commute *exactly* with the rise maps, mirrors, conjugation and units, and are bijective for $k$ large.
*Status:* theorem (algebraic lemma).
*Lean:* [`retraction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L35-L55), [`adjusted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L61-L66), [`Exact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L72-L76), [`adjusted_exact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L80-L102), [`Near`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L110-L111), [`perturb_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L113-L129), [`eventually_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L131-L135), [`relative`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L144-L148), [`Graded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L171-L172).

**Proposition VII.5.4 (algebra of the raw stress tensor and its trace).** For the free Maxwell label algebra:
(a) the "raw" stress tensor built from the Weyl weights $(1,-\tfrac14,1)$ is traceless, $\sum_a \mathrm{raw}_{aa}=0$, because for weights $(0,w)$ one has $\sum_a T_{aa}=4(w_0+4w_1)\,\mathrm{square}_4$ with $\mathrm{square}_4=\tfrac14\sum_{i,j}F_{ij}F_{ij}$;
(b) the three divergence letters are coordinates of the space of "raw one-forms" (the map `bareVector` is bijective for simple $G$);
(c) a scalar functional $\rho$ vanishes on the equation-of-motion ideal and reads $-4(w_0+4w_1)$, i.e. minus the trace up to the square unit.
*Status:* theorem (finite algebra).
*Lean:* [`bareVector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L33), [`square4`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L66), [`raw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L70) (with `mechanical_trace`, `conformal`, `bareCoordinates`, `rho` in the same file), [`momentum1`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L16), [`momentum2`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L14), [`basisV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L63-L66), [`shell_affine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L43-L50).

## 2. What it uses

**Inputs from other units.**
- *Construction conditions of the family* (II.2; proved in III.9, III.12–III.14): the field "running", i.e. for every $\varepsilon>0$ and $m$ large, $|\beta_{N,p,m}-\widehat\beta_m|\le\varepsilon\,\mathrm{scale}(m)$ for all $N\ge m$ and all $p$, where $\widehat\beta_m=\bar\beta+\kappa_G\,\mathrm{scale}(m)$ is the reference linear coupling of the RG schedule (III.2). Lean: `Family.Makes` ([`Source/Construction.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62)); the `Running` predicate is in [`YM/RG/History.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L229-L230).
- *Positivity of the slope constant* $\kappa_G>0$ for simple $G$ (`Gauge.slopeConstant_pos`, used but not re-proved here; the group-theoretic facts about the Casimir are in I.1).
- *The divergence of the schedule's scale* ($\mathrm{scale}(m)\to\infty$) and the identification of the scale with $\log(1/a_m)$ (III.2).
- For VII.5.2: the weak-scaling statements A04, A05 (existence of weak curves with degree-4 tests; Lean `Work.A04.answer`, `Work.A05.answer`), the limit table and its differential plan (IV.1, VI.1), and the free Maxwell comparison data (VI.2, VII.1).
- For VII.5.4: the free Maxwell label algebra (VI.2, `StressFlux`, `Labels`, `Maxwell`).

**Standard mathematics.** One-loop asymptotic freedom, Gross–Wilczek and Politzer (1973); the one-loop coefficient $b_0=\frac{11 N}{48\pi^2}$ for $SU(N)$ in the convention $\beta=1/g^2$. For the bare lattice coupling see Creutz, *Quarks, gluons and lattices*. Elementary real analysis (limits of ratios and square roots).

**Imported constants and assumptions.** The value $\kappa_G=\frac{11c_G}{24\pi^2}$ enters from the RG schedule (III.2, III.7, III.9). It is the coefficient of the one-loop beta function of the effective coupling. Its derivation is not in this unit, and the code defines $b_0$ so that $2b_0=\kappa_G$ is a definitional unfolding. The lattice reference coupling $\widehat\beta_m$ and the running estimate are proved in III.9 and III.14.

## 3. Strategy

The Lean in `Pert/Asymptotics` extracts the leading-log behaviour of the *same* running bare coupling that the construction produced, "including the finite-cutoff bare coupling endpoint". It does not reconstruct the coupling from perturbation theory. The RG part of the proof (III) shows that, at every stage $m$, the tuned bare coupling $\beta_{N,p,m}$ stays within $\varepsilon\,\mathrm{scale}(m)$ of the straight line $\bar\beta+\kappa_G\,\mathrm{scale}(m)$ with $\mathrm{scale}(m)\to\infty$ (the logarithm of inverse lattice spacing, in the units of the block schedule). Dividing by the scale and taking square roots gives the leading-log law of the coupling, with no new analytic input.

Hence VII.5.1 is a corollary of the construction. The docstring warns that the extracted proxy is not claimed to equal the physical coupling in any scheme ("no statement that this proxy equals the physical X-scheme coupling beyond the extracted comparison"), and that its existence does not implement the tangent-one test of the trace-anomaly part. The result is used downstream (VII.2) to calibrate the regulator in the comparison of the continuum stress tensor trace with the Wilson one.

VII.5.2–VII.5.4 belong mathematically to the stress-tensor identification of Part VI–VII (VI.1, VI.2, VII.2). They compare the limit table with the free Maxwell table at the common weak scale and give the algebra of the trace.

## 4. Steps

### 4.1 Asymptotic freedom

**Lemma VII.5.a (normalisation).** $2b_0=\kappa_G$, with $b_0=11c_G/(48\pi^2)$.
*Proof.* Unfold the two definitions; ring identity. *Lean:* [`b0_normalizes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L14).

**Lemma VII.5.b (uniform linear growth, VII.5.1′).** For $\varepsilon>0$, eventually in $m$ and uniformly in $N\ge m$ and $p$: $|\beta_{N,p,m}/\mathrm{scale}(m)-2b_0|<\varepsilon$.
*Proof sketch.* The "running" hypothesis with $\varepsilon/4$ gives $|\beta-(\bar\beta+\kappa_G\,\mathrm{scale}(m))|\le\frac\varepsilon4\mathrm{scale}(m)$, where $\bar\beta$ is the constant offset $a$ of the clock. Since $\mathrm{scale}(m)\to\infty$, for $m$ large $|a|<\frac\varepsilon4\mathrm{scale}(m)$ (using $\mathrm{scale}(m)\ge(|a|+1)/(\varepsilon/4)$). The triangle inequality gives $|\beta-\kappa_G\,\mathrm{scale}(m)|<\varepsilon\,\mathrm{scale}(m)$, and dividing by $\mathrm{scale}(m)>0$ gives the claim. *Lean:* [`zeroUp_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L15-L30).

**Lemma VII.5.c (leading log of the coupling, VII.5.1).** Along $i\le N_i$, $\beta_{N_i,k_i,i}/\mathrm{scale}(i)\to2b_0$, hence $\sqrt{\beta/\mathrm{scale}}\to\sqrt{2b_0}>0$ and its inverse converges to $1/\sqrt{2b_0}$. For $\mathrm{scale}(i)>0$ one has $\bigl(\beta^{-1/2}\bigr)\sqrt{\mathrm{scale}(i)}=\bigl(\sqrt{\beta/\mathrm{scale}(i)}\bigr)^{-1}$.
*Proof sketch.* Compose the convergence of VII.5.b with the continuity of $\sqrt{\cdot}$ at $2b_0>0$ (positivity from $\kappa_G>0$, which needs $G$ simple), take inverses, and rewrite $\beta^{-1/2}\sqrt{\mathrm{scale}}$ as the inverse square root of the ratio. The last line of the Lean proof closes the goal by `rfl` after this rewriting, so the factor $\sqrt{\log(1/a_i)}$ in the statement is *definitionally* $\sqrt{\mathrm{scale}(i)}$, i.e. the schedule's scale is $\log(1/a_i)$ by definition (probable; the definition of `scale` in the schedule has not been checked). *Lean:* [`comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L36-L48).

### 4.2 Weak-scaling orientation (VII.5.2)

**Lemma VII.5.d (a ratio of scales converges).** If $X_i\to x\ne0$ in a finite-dimensional real space and $f_iX_i\to cx$, then $f_i\to c$.
*Proof sketch.* Choose a linear functional $Y$ with $Y(x)\ne0$ and divide $Y(f_iX_i)$ by $Y(X_i)$. *Lean:* [`scale_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L28-L39).

**Lemma VII.5.e (the stress flux tracks the derivative normalisation).** Under the hypotheses of VII.5.2, $c/\xi_i\to\kappa$ along every weak curve.
*Proof sketch.* The work items A04 and A05 give, at the common weak scale, one convergence for the derivative tests of degree 4 and one for the flux tests of degree 4. Take the second, substitute $\mathrm{leaves}\,p=c\,\mathrm{leaves}\,V.\mathrm{deriv}$ and $\mathrm{leaves}(\kappa W.\mathrm{deriv})=\kappa\,\mathrm{leaves}\,W.\mathrm{deriv}$, and apply VII.5.d to the non-zero limit of the first. *Lean:* [`tracks_ratio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L43-L54).

**Lemma VII.5.f (sign).** If, in addition, the stress law holds (so weak curves exist), then $c\kappa>0$. *Proof sketch.* $c\ne0$ since the limit $\kappa\ne0$; the sign of $c/\xi_i$ is that of $c$ (the $\xi_i$ have a sign $X.\mathrm{sign}$) and passes to the limit. *Lean:* [`kappa_sign`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L56-L70).

### 4.3 Exact comparison maps (VII.5.3)

**Lemma VII.5.g (equivariant retraction).** Each free rise map $W.\mathrm{rise}:\mathcal F_d\to\mathcal F_{d+1}$ has a left inverse $P$ that commutes with signed permutations and with conjugation.
*Proof sketch.* Take any linear left inverse (rise is injective), average over the finite group of signed permutations, then average with its conjugate. *Lean:* [`retraction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L35-L55).

**Lemma VII.5.h (adjustment).** Given comparison maps $A_d$, define $X_0=A_0$ and $X_{d+1}=V.\mathrm{rise}\circ X_d\circ P_d+A_{d+1}\circ(1-W.\mathrm{rise}\circ P_d)$. If the $A_d$ are equivariant and the inclusions and orientations hold, then the $X_d$ satisfy $X_e\circ W.\mathrm{rise}=V.\mathrm{rise}\circ X_d$ exactly, and are equivariant and unit-preserving.
*Proof sketch.* Induction on $d$, using $P_d\circ W.\mathrm{rise}=1$. *Lean:* [`adjusted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L61-L66), [`adjusted_exact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L80-L102). *(statement and first lines of the proof read; rest tentative)*

**Lemma VII.5.i (near-identity gives bijectivity).** If the adjustments $A'_k$ tend to the identity in the weak coordinates up to degree $D$, then $\mathrm{adjusted}(A'_k)\to\mathrm{id}$ degree by degree, and is bijective for $k$ large (a finite-dimensional perturbation of the identity). *Lean:* [`perturb_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L113-L129), [`eventually_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L131-L135), [`relative`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L144-L148).

### 4.4 Algebra of the trace (VII.5.4)

**Lemma VII.5.j (the Weyl-weighted stress is traceless).** $\sum_a T^{(w)}_{aa}=4(w_0+4w_1)\,\mathrm{square}_4$, so $T^{(1,-1/4,1)}$ has zero trace; $\mathrm{square}_4=\frac14\sum_{i,j}F_{ij}F_{ij}$ (ordered axes, adjoint colour contraction).
*Proof sketch.* Expand the stress letters and sum over the diagonal; linear algebra in the module of labels. *Lean:* `mechanical_trace`, `conformal` in [`Dilate.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean) ([`square4`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L66), [`raw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L70)).

**Lemma VII.5.k (coordinates for the divergences).** The three divergence letters ("diagonal-mountain", "diagonal-total", "shear") give a bijection $\mathbb R^3\to\text{raw one-forms}$ for simple $G$, with $\mathrm{bareVector}(w)_b=w_0(\text{two copies of }\partial_b\sum F_{bi}^2/2)+w_1(\ldots)+w_2(\ldots)$ (the "Euler" identity), and the $\rho$ functional kills the equation-of-motion ideal. The proof uses the Bianchi identity for the derivative pairings. *Lean:* [`bareVector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L33) (`euler`, `bareCoordinates`, `rho_eom`).

**Lemma VII.5.l (affine shells and signed-permutation covariance).** Every affine Taylor jet is the gauge jet of a Maxwell shell; the momenta $\mathrm{momentum}_1,\mathrm{momentum}_2$ transform under signed permutations $t$ by $\mathrm{sign}_t(a)\,\mathrm{momentum}_2(t\cdot a)$. *Lean:* [`shell_affine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L43-L50), [`momentum2_turn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L21-L24).

## 5. Where the difficulty lies

*Routine.* VII.5.1 is a short real-analysis argument (about 35 lines). Its content is entirely in the hypothesis "running", which comes from the RG (III.9). Everything else in the unit is finite-dimensional algebra or limits of scalar ratios.

*What is stronger or weaker than one might expect.*
1. The theorem is about the *bare regulator coupling* $\beta_{N,p,m}^{-1/2}$ at the cutoff stage, not about a physical (scheme-defined) running coupling. The leading-log coefficient $1/\sqrt{2b_0}$ is the *one-loop* value only. Nothing is said about two-loop terms, the $\log\log/\log$ correction, or $\Lambda_{\mathrm{lattice}}$. The statement is therefore "asymptotic freedom" only in the weak sense $g^2\sim(2b_0\log(1/a))^{-1}$. The docstring says explicitly that no identification with the physical coupling is made.
2. The result is uniform in $N\ge m$ and $p$ (VII.5.1′), but the final statement is along sequences $N_i,k_i$ with $i\le N_i$, with no assumption on the volume index $k_i$.
3. The clean statement $2b_0=\kappa_G$ hides where the number $11/3$ comes from: $\kappa_G$ is part of the construction's schedule and its identification with the one-loop coefficient is done in the RG units (III.7, III.9).
4. The unit is the odd one out in the list: of its 43 declarations only 5 concern the coupling. The other 38 (from `WEAK_SCALING_ACTLAW` and `TraceExtension`) are helper lemmas that were assigned here by the line-count attribution of the declaration table (shared helpers whose only user is the Part VII chain ending in VII.2). A written proof should give them to VII.2 or VI.1.

## 6. Notation

| object | code name | proposed notation |
|---|---|---|
| one-loop coefficient | [`b0`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L13) | $b_0=\frac{11c_G}{48\pi^2}$ |
| slope constant of the RG | `Gauge.slopeConstant` | $\kappa_G=2b_0$ |
| bare coupling at stage $m$ | `C.path.β N p m` | $\beta_{N,p,m}$ |
| logarithmic scale of stage $m$ | `C.S.scale m` | $\mathrm{scale}(m)=\log(1/a_m)$ (probable) |
| reference linear coupling | `hatBeta` | $\widehat\beta_m=\bar\beta+\kappa_G\,\mathrm{scale}(m)$ |
| regulator coupling | [`regulatorRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L35) | $g_{N,p}(m)=\beta_{N,p,m}^{-1/2}$ |
| the "running" clause | `Running` | (R) $\beta_{N,p,m}=\widehat\beta_m+o(\mathrm{scale}(m))$ uniformly in $N\ge m$, $p$ |
| free Maxwell family | [`Free C`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Station.lean#L28) | $\mathrm{Max}$ |
| fixed retraction of the free rise | [`retraction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L35-L55) | $P_d$ |
| adjusted comparison map | [`adjusted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L61-L66) | $X_d$ |
| Weyl-weighted stress tensor | [`raw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L70) | $T^{\mathrm{raw}}_{ab}$ |
| square of the field strength | [`square4`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L66) | $\tfrac14\sum_{ij}F_{ij}F_{ij}$ |
| divergence-letter coordinates | [`bareVector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L33) | $w\mapsto\partial\!\cdot\!T(w)$ |
| a read-out inequality in the cost accounting | [`SharpRead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Soot/Skein.lean#L26) | see §7 |

## 7. What remains unexplained
1. **Scope of the unit.** The Lean code alone does not explain why the `WEAK_SCALING_ACTLAW` and `TraceExtension/Foundation` declarations sit in this unit. Their mathematical home is VI.1/VI.2/VII.2 (weak scaling of the stress tensor, trace). The declaration table should be checked to decide where they belong. (probable)
2. **Meaning of "scale".** The conclusion of `comparison` is phrased with $\sqrt{\log(1/a_i)}$ while the hypothesis uses the schedule's `scale i`; the proof closes by `rfl`, so they agree by definition. The definitions of `C.S.scale` and `C.S.a` (III.2) have not been checked. (probable)
3. **Where the one-loop coefficient is proved.** The value $\kappa_G=11c_G/(24\pi^2)$ must be established in the matching/flow units (III.7, III.9). The declaration that fixes it has not been identified, and the definition of `Gauge.casimir` has not been checked (it appears as a normalised sum of squares of adjoint generators, so $c_G=N$ for $SU(N)$ is the expected value, but the normalisation of the inner product on the colour algebra must be checked). (tentative)
4. **The reference coupling.** The statement assumes the "running" field of `Family.Makes`. The predicate (`Running`) has been read, but its proof has not been checked. III.9 or III.14 should record that it holds uniformly in $N\ge m$ and in $p$. This uniformity is what makes VII.5.1 independent of the volume sequence $k_i$.
5. **Use downstream.** `regulatorRun` appears in `RemainderComparison` (Beacon, Hymnal, Musicology) as the variable `gStep u.beta`. How `comparison` is consumed there, and in `HierarchyBridge` (which uses `zeroUp_bound`), has not been traced. The statement that VII.2 calibrates the trace anomaly by this result is taken from the unit page ("Used by VII.2") and has not been independently checked. (tentative)
6. **Proofs not checked.** `adjusted_exact`, `perturb_limit`, `eventually_unit`, `relative`, `retraction`'s companions, `flux_nontrivial`, `momentum2_turn`, `shell_affine`, and `SharpRead`. For `SharpRead` only the definition (a bound $u\cdot\mathrm{coeffSize}\le4(1+\text{columns})\,w$ on the "voice" of a duet with zero atoms and non-negative weight $w$) and the lemma it is used in have been examined; it belongs to the cost accounting of III.15, not to this unit's mathematics.
7. **Possible extension.** If the written proof is meant to state asymptotic freedom in the usual sense (with two-loop terms or in a physical scheme), this unit does not contain it; the docstring says so explicitly.

**Builds on:** [IV.1](IV-1.md), [I.1](I-1.md), [III.16](III-16.md), [VI.1](VI-1.md), [II.1](II-1.md).

**Used by:** [VII.2](VII-2.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| work package [`YM/Extra/WEAK_SCALING_ACTLAW/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW) | 162 |
| work package [`YM/TraceExtension/Foundation/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation) | 37 |
| work package [`YM/Pert/Asymptotics/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics) | 18 |
| proof of [`comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L36-L48) | 14 |
| work package [`YM/TraceExtension/Soot/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Soot) | 1 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **VII.5.1** [`comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L36-L48) *(key result)* — The running regulator coefficient times the square root of log inverse lattice spacing tends to 1/sqrt(2 b0), giving the leading-log asymptotics of the running coupling.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

# VII.5. Asymptotic freedom of the running coupling

*Part VII — Identification as Yang–Mills.* 232 lines of Lean in 43 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is **checked** against the Lean and rewritten by a second model; a final editing round is in progress. It is updated as it improves.


**Part:** VII, identification as Yang–Mills. **Lean:** [`YM/Pert/Asymptotics`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics) (the running coupling). The unit also contains auxiliary declarations from [`YM/Extra/WEAK_SCALING_ACTLAW`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW) (files `Orientation`, `Criteria`, `Adjust`, `Analysis`, `Station`), from [`YM/TraceExtension/Foundation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation) (files `Caps`, `Dilate`), and one definition from [`YM/TraceExtension/Soot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Soot). **Size:** 232 lines in 43 declarations: 32 lines in `Pert/Asymptotics` (5 declarations, 14 lines of them the proof of the asymptotic-freedom law), 162 in `WEAK_SCALING_ACTLAW` (24), 37 in `TraceExtension/Foundation` (13), 1 in `TraceExtension/Soot` (1).

## 1. What this unit proves

The unit has two parts.

**(A) The running coupling (5 declarations).** The running coupling of the constructed renormalization-group trajectory grows logarithmically, uniformly in the lattice level and the volume (VII.5.1). This gives the regularity clause (Reg1) of the main theorem with slope $b_*=2b_0$ (VII.5.2). It also gives the law $g^2\log(1/a)\to1/(2b_0)$ (VII.5.3).

**(B) Auxiliary results filed here but used elsewhere (38 declarations).**
- VII.5.4: the normalisation of the stress tensor along free-field scaling sequences (used by VI.2).
- VII.5.5: exactly compatible frames, built from approximately compatible ones (used by VII.1).
- VII.5.6: two elementary convergence lemmas (used by III.12).
- VII.5.7–VII.5.8: the definitions of the classical stress-tensor algebra and a read-out predicate (used by VI.1, VII.2, VIII.1).

**Setting for (A).**
- *Gauge group.* $G\subset U(m)$ is a compact matrix group with Lie algebra $\mathfrak g$ and inner product $\langle X,Y\rangle_{\mathfrak g}=-\frac1m\mathrm{Re}\,\mathrm{tr}(XY)$. The Casimir constant $C_{\mathfrak g}$ is defined by: the Killing form equals $-C_{\mathfrak g}\langle\cdot,\cdot\rangle_{\mathfrak g}$. For $SU(N)\subset U(N)$ this gives $C_{\mathfrak g}=2N^2$. Put
$$\kappa_G:=\frac{11\,C_{\mathfrak g}}{24\pi^2},\qquad b_0:=\frac{11\,C_{\mathfrak g}}{48\pi^2}=\tfrac12\kappa_G .$$
- *Schedule.* The block factors $b_k\ge3$ are odd. Set $D_m=\prod_{k<m}b_k$, $a_m=1/D_m$ and
$$s_m:=\log(1/a_m)=\sum_{k<m}\log b_k .$$
Then $s_m\to\infty$.
- *Trajectory.* For a lattice level $N$, a volume index $p$ and a stage $m\le N$, $\beta_{N,p,m}$ is the coupling of the effective action at spacing $a_m$. It is obtained from the Wilson measure $\mu_{N,p}$ by $N-m$ block-spin steps.
  - $\beta_{N,p}:=\beta_{N,p,N}$ is the bare coupling of the main theorem.
  - $\beta_{N,p,0}=\bar\beta>0$ for every $N,p$. This is the renormalization condition at unit scale.
  - The reference line is $\widehat\beta_m:=\bar\beta+\kappa_G s_m$. One has $\beta_{N,p,m}\in[\widehat\beta_m/2,\,2\widehat\beta_m]$.
  - The running coupling is $g_{N,p,m}:=\beta_{N,p,m}^{-1/2}$.

The **running clause** (R) of the construction conditions reads: for every $\varepsilon>0$ there is $m_0$ such that
$$|\beta_{N,p,m}-\widehat\beta_m|\le\varepsilon\,s_m\quad\text{for all } m\ge m_0,\ N\ge m,\ p\in\mathbb N .$$

**Proposition VII.5.1 (uniform logarithmic growth of the running coupling).** Let the family satisfy its construction conditions (II.2). For every $\varepsilon>0$ there is $m_0$ such that
$$\Bigl|\frac{\beta_{N,p,m}}{s_m}-2b_0\Bigr|<\varepsilon\qquad\text{for all } m\ge m_0,\ N\ge m,\ p\in\mathbb N .$$
*Status:* theorem. Of the construction conditions only (R) is used. Simplicity of $\mathfrak g$ is not needed.
*Lean:* [`YM.Pert.Asymptotics.zeroUp_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L15-L30), with [`b0`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L13) and [`b0_normalizes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L14).

**Corollary VII.5.2 ((Reg1) for the constructed family).** Let $\mathfrak g$ be simple and let the family satisfy its construction conditions. Then its Wilson family satisfies (Reg1) with slope $b_*=2b_0=11C_{\mathfrak g}/(24\pi^2)>0$: for every $\varepsilon>0$ there is $N_0$ with
$$\Bigl|\frac{\beta_{N,p}}{\log(1/a_N)}-b_*\Bigr|<\varepsilon\quad\text{for all } N\ge N_0 \text{ and all } p.$$
*Status:* theorem, proved in VIII.1 as the first clause of the regularity of the constructed family. It is VII.5.1 at $m=N$, together with $C_{\mathfrak g}>0$ (I.1). This is how the main theorem uses part (A). The main theorem itself asserts only that some positive slope exists. The value $2b_0$ is not one of its conclusions.
*Lean:* [`YangMills.regular`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L16-L25) (running clause of [`YangMills.WilsonRegularity`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L12-L22)), via [`zeroUp_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L15-L30).

**Proposition VII.5.3 (asymptotic freedom of the running coupling).** Let $\mathfrak g$ be simple and let the family satisfy its construction conditions. Let $(N_i)$ and $(k_i)$ be sequences of lattice levels and volume indices with $i\le N_i$ for all large $i$. Then
$$\lim_{i\to\infty}g_{N_i,k_i,i}\,\sqrt{\log(1/a_i)}=\frac1{\sqrt{2b_0}},\qquad\text{equivalently}\qquad g_{N_i,k_i,i}^2\,\log(1/a_i)\longrightarrow\frac1{2b_0}.$$
- For $N_i=i$ this is the law of the bare coupling, $g_0(a)^2\sim\bigl(2b_0\log(1/a)\bigr)^{-1}$.
- For $N_i\ge i$ it is the law of the effective coupling at spacing $a_i$ of any finer lattice. No condition is placed on the volumes $k_i$.

*Status:* theorem. No other declaration cites it.
*Lean:* [`YM.Pert.Asymptotics.comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L36-L48), [`regulatorRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L35).

**Setting for (B).**
- *Spaces and maps.*
  - $\mathcal F_d$ is the label space of degree $d$ of the limit table $S$, which carries a Euclidean hierarchy (IV.1).
  - $\mathcal F^\circ_d$ is the corresponding space of the free Maxwell comparison table built on the same labels (VI.1).
  - A *derivative plan* (IV.1) on either table consists of inclusions $\iota_{d\to e}$ ($d\le e$) and partial derivatives $\partial_{d,a}:\mathcal F_d\to\mathcal F_{d+1}$, $a=1,\dots,4$.
  - The inclusion axioms say that the $\iota$ are injective, $\iota_{d\to d}=1$, $\iota_{d\to e}$ composes transitively, and $\iota$ fixes the unit.
  - The orientation axiom says that $\iota$ commutes with the action of the hyperoctahedral group $\Gamma_4$ of signed permutations of the axes ($2^4\cdot4!=384$ elements) and with complex conjugation of labels.
- *Stress data.* A *stress tensor* is a symmetric family $J=(J_{ab})$ in $\mathcal F_4$. Its *local Ward identities* (IV.1, VI.1) involve a translation part $p=(p_{d,a}:\mathcal F_d\to\mathcal F_{d+1})$ and a rotation part $Y$.
- *Free Maxwell data* (VI.2, VIII.1): a derivative plan $W$ on the free table, a free stress tensor $J^\circ$ and a constant $\kappa\ne0$, such that $J^\circ$ satisfies the Ward identities with translation part $\kappa\,\partial^W$, and $\partial^W_4\neq0$.
- *Scaling sequences.* A *scaling sequence* (VI.1) consists of frames $U_k(d):\mathcal F^\circ_d\to\mathcal F_d$ (linear isomorphisms), scales $r_k\downarrow0$ and stress normalisations $\xi_k>0$.
- *Tracking.* A scaling sequence *tracks* $(V,W,J)$ at level $(n,d,j,R)$ (VI.1) if three conditions hold:
  - the frames are exactly compatible with inclusions, signed permutations, conjugation and units up to degree $\max(d,4)$;
  - the correlations of at most $n$ fields of degree at most $d$, rescaled by $r_k$, converge with $j$ derivatives to the free ones on windows of size $R$;
  - $\xi_k^{-1}r_k^4\,U_k(4)^{-1}J_{ab}\to J^\circ_{ab}$.

**Proposition VII.5.4 (normalisation of the stress tensor along free-field scaling sequences).** Let $V$ be a derivative plan on $S$ satisfying the inclusion and derivative axioms. Let $J$ be conserved and symmetric, real, and covariant under $\Gamma_4$, and let $(J,p,Y)$ satisfy the local Ward identities.
(a) Suppose $p_{4,a}=c\,\partial^V_{4,a}$ for $a=1,\dots,4$ and some $c\in\mathbb R$. Then there are $D,N,M\in\mathbb N$ and $R_0\ge1$ such that $c/\xi_k\to\kappa$ for every scaling sequence that tracks $(V,W,J)$ at a level $(n,d,j,R)$ with $n\ge N$, $d\ge D$, $j\ge M$ and $R\ge R_0$.
(b) If $p\neq0$, then $J\neq0$.
*Status:* theorems. Part (a) uses the work items A04 and A05 (VI.1, proved).
*Lean:* [`YM.Extra.WeakScaling.tracks_ratio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L43-L54), [`scale_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L28-L39), [`flux_nontrivial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Criteria.lean#L64-L70). Used in VI.2 by [`YM.Pert.ratio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L62-L66) and [`YM.Pert.centered_line`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L82-L116).

**Proposition VII.5.5 (exactly compatible frames).** Let $V$ on $S$ and $W$ on the free table satisfy the inclusion and orientation axioms.
(a) For every $d$ there is a $\mathbb C$-linear map $P_d:\mathcal F^\circ_{d+1}\to\mathcal F^\circ_d$ with $P_d\,\iota^W_{d\to d+1}=1$ that commutes with $\Gamma_4$ and with conjugation.
(b) Let the $P_d$ be as in (a) and let $A_d:\mathcal F^\circ_d\to\mathcal F_d$ be linear. Define recursively
$$X_0:=A_0,\qquad X_{d+1}:=\iota^V_{d\to d+1}\,X_d\,P_d+A_{d+1}\bigl(1-\iota^W_{d\to d+1}P_d\bigr).$$
Suppose that for every $d\le D$ the map $A_d$ commutes with $\Gamma_4$ and conjugation and maps unit to unit. Then:
- $X_e\,\iota^W_{d\to e}=\iota^V_{d\to e}\,X_d$ for all $d\le e\le D$;
- for $d\le D$, each $X_d$ commutes with $\Gamma_4$ and conjugation and maps unit to unit.

(c) Let $A^{(k)}_d$ be linear isomorphisms such that, for every $d<D$ and every $v$,
$$(A^{(k)}_{d+1})^{-1}\,\iota^V_{d\to d+1}\,A^{(k)}_d\,v\longrightarrow\iota^W_{d\to d+1}v\qquad(k\to\infty).$$
Let $X^{(k)}$ be built from $A^{(k)}$ as in (b). Then for every $d\le D$:
- $(A^{(k)}_d)^{-1}X^{(k)}_d\to1$;
- $X^{(k)}_d$ is bijective for all large $k$;
- the isomorphisms $\widetilde X^{(k)}_d$ (equal to $X^{(k)}_d$ when it is bijective and to $A^{(k)}_d$ otherwise) satisfy $(A^{(k)}_d)^{-1}\widetilde X^{(k)}_dv\to v$.

*Status:* theorem (finite-dimensional algebra and analysis).
*Lean:* [`retraction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L35-L55), [`adjusted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L61-L66), [`Exact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L72-L76), [`adjusted_exact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L80-L102), [`Near`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L110-L111), [`perturb_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L113-L129), [`eventually_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L131-L135), [`rotateChart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L137-L140), [`relative`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L144-L148), [`Graded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L171-L172). Used in VII.1 by [`YM.SharpGram.Weak.Portfolio.tune_grades`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159). The notion of exact compatibility is also used in III.13 and VIII.1.

**Proposition VII.5.6 (finite-dimensional convergence).**
(a) Let $f:E\to X$ be an injective linear map between finite-dimensional real normed spaces. If $f(a_y)\to f(e)$ along a filter, then $a_y\to e$.
(b) A family of continuous $\mathbb R$-linear functionals on $(\mathbb R^4)^n$ converges in norm as soon as it converges on the $4n$ coordinate vectors.
*Status:* theorem.
*Lean:* [`norm_fit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L44-L51), [`norm_fit_deriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L63-L70), [`components`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L55-L60). Used in III.12 by [`YM.FullVolume.stretching`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Region.lean#L28-L30).

**Definition VII.5.7 (the classical stress-tensor algebra).** Labels of weight $d$ are gauge-invariant polynomials in the curvature $F$ and its derivatives at the base point. The curvature has weight 2 and each derivative adds 1 (II.1). $\langle\cdot,\cdot\rangle$ denotes the invariant inner product on $\mathfrak g$.
- *Weight 4.* The square is $\mathfrak s:=\frac14\sum_{i,j}\langle F_{ij},F_{ij}\rangle$, summed over ordered pairs. The candidate stress tensors of VI.1 form the family
$$T^{(t)}_{ab}=\delta_{ab}\Bigl(t_0\mathbf 1+t_1\sum_i\langle F_{ai},F_{ai}\rangle+t_2\sum_{i,j}\langle F_{ij},F_{ij}\rangle\Bigr)+(1-\delta_{ab})\,t_3\sum_i\langle F_{ai},F_{bi}\rangle .$$
The *canonical* tensor is $T^{\mathrm{can}}:=T^{(0,1,-1/4,1)}$, that is, $T^{\mathrm{can}}_{ab}=\sum_i\langle F_{ai},F_{bi}\rangle-\delta_{ab}\,\mathfrak s$.
- *Weight 5.* Define the vectors
$$\mu^1_b:=\sum_i\langle F_{bi},\partial_bF_{bi}\rangle=\tfrac12\partial_b\sum_i|F_{bi}|^2,\qquad \mu^2_b:=\sum_{i,j}\langle F_{ij},\partial_bF_{ij}\rangle=\tfrac12\partial_b\sum_{i,j}|F_{ij}|^2,$$
and the equation-of-motion vector $E_b:=\sum_{a,i}\langle F_{bi},\partial_aF_{ai}\rangle$ (VI.1). Let $\mathcal R_1$ be the real space of real, $\Gamma_4$-covariant vectors of weight 5 (VI.1). Define $\beta,\delta:\mathbb R^3\to\mathcal R_1$ by
$$\beta(w):=w_0\mu^1+w_1\mu^2+w_2E,\qquad \delta(w):=\beta\bigl(2(w_0-w_2),\ 2w_1+\tfrac12w_2,\ w_2\bigr).$$

Proved in this unit:
- $\mu^1,\mu^2\in\mathcal R_1$;
- every affine (degree-0) jet is the jet of a solution of the free Maxwell equations.

*Status:* definitions and two lemmas.
*Lean:* [`square4`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L66), [`raw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L70), [`momentum1`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L16), [`momentum2`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L14), [`momentum1_mem`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L28-L34), [`momentum2_mem`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L25-L27), [`momentum2_turn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L21-L24), [`basisV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L63-L66), [`bareVector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L33) (with [`mat3`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L32), [`proj3`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L31)), [`shell_affine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L43-L50), [`sumPerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L17-L20). The facts proved about these objects in VI.1 and VII.2 are listed in §4.5.

**Definition VII.5.8 (sharp read-out bound).** Fix a label degree $d$, stages $\ell_d\le k\le N$, a volume index $p$ and $u\in\mathbb R$. The predicate holds when the following is true (tentative). Take any sequence of stage-wise label coefficients from the reference stage $\ell_d$ to stage $k$ that:
- vanishes at $\ell_d$;
- is transported exactly by the renormalization-group push maps, with factor $b_m^{d}$ per step;
- satisfies the remainder bounds of the effective actions with cost weight $w\ge0$;
- has all insertion points at the origin.

Then $u\,\|c_k\|\le4(1+n_k)\,w$, where $c_k$ is the coefficient at stage $k$ and $n_k$ the column number of stage $k$.
*Status:* definition. It is a field of a structure of the trace analysis (VII.2), supplied by the preconstruction of III.2 (probable).
*Lean:* [`YM.MergeProof.Accent.SharpRead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Soot/Skein.lean#L26). Consumers: [`YM.Trace.Terrace.Sceptre`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Knell.lean#L62-L66) and the cost lemmas of VII.2.

## 2. What it uses

**Inputs from other units.**
- *I.1 (gauge group, schedule).*
  - $C_{\mathfrak g}$ ([`YM.Gauge.casimir`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182)) and $\kappa_G$, which is *defined* as $11C_{\mathfrak g}/(24\pi^2)$ ([`slopeConstant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184)).
  - Positivity $C_{\mathfrak g}>0$ and $\kappa_G>0$ for simple $\mathfrak g$ ([`casimir_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L160-L172), [`slopeConstant_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176)).
  - $a_m=1/D_m$ ([`Schedule.a`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L99)); $s_m$ is *defined* as $\log(1/a_m)$ ([`Schedule.scale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L115)); and $s_m\to\infty$ ([`Schedule.divergent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L117-L120)).
- *II.2 (construction conditions)* [`YM.Family.Makes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62). Its first field says that the trajectory is a selected history (III.1). The bare coupling is [`Family.beta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L38), that is, $\beta_{N,p,N}$.
- *III.1 (selected history)* [`YM.RG.History.Selected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L234-L240). It contains:
  - $\beta_{N,p,0}=\bar\beta$;
  - the per-step relation $|\beta_{N,p,m+1}-\beta_{N,p,m}-\kappa_G\log b_m|\le\delta_{m+1}$ ([`Transfer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L223-L227));
  - the band $[\widehat\beta_m/2,2\widehat\beta_m]$ ([`Conv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L213-L218));
  - the running clause (R) ([`Running`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L229-L230)), with $\widehat\beta_m$ given by [`hatBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79).
- *III.2 (choice of constants, shooting).*
  - (R) is derived in [`YM.RG.Shoot.trajectory`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L23-L53). The inputs are $\beta_{N,p,0}=\bar\beta$, the per-step relation, and $\delta_{m+1}/\log b_m\le J(m+1)^{-2}$, where $J(m)\to\infty$ is the stage index of the schedule (Lemma VII.5.b).
  - The history with $\beta_{N,p,0}=\bar\beta$ is produced by shooting ([`Recipe.races`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L67-L82), [`successful`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L156-L159)).
  - The per-step relation, with the coefficient $\kappa_G$, is the marginal-flow estimate of one renormalization step (III.9) (probable).
- *VIII.1:* the consumer of VII.5.2.
- *For VII.5.4.*
  - The work items A04 ([`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A04.lean#L163-L183)) and A05 ([`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A05.lean#L95-L121)), both proved in VI.1. Along tracking scaling sequences, they give: $r_k\,\partial^V_d$ conjugated by the frames converges to $\partial^W_d$; and $(r_k/\xi_k)\,p_d$ conjugated by the frames converges to $\kappa\,\partial^W_d$.
  - The tracking notion ([`Track`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L44-L48)) and the hypotheses on $J$ ([`Pre`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L66-L69)), from VI.1.
  - The Ward identities ([`StressLaws`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L90-L97)) and derivative plans ([`DiffPlan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L20-L22)), from IV.1.
  - The free Maxwell data ([`MaxwellData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170), [`Lighthouse.Goes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L34-L42)).
- *For VII.5.5:* the inclusion and orientation axioms of derivative plans (IV.1), and the free comparison table ([`Spin.comparator`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L38), VI.1).
- *For VII.5.7:*
  - the label polynomials $\langle F_{ab},F_{cd}\rangle$ ([`pair`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L50-L51)) and $\langle F_{ab},\partial_iF_{cd}\rangle$ ([`pairDeriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L57-L58));
  - $E$ ([`eom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L105)), the family $T^{(t)}$ ([`stress`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L177-L181), [`weyl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L187)) and $\mathcal R_1$ ([`RawOne`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Counts.lean#L53)), all from VI.1;
  - the ideal of labels vanishing on free Maxwell solutions ([`Maxwell.equationIdeal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72)), from III.16.

**Standard mathematics.**
- *Asymptotic freedom.* Gross–Wilczek and Politzer (Phys. Rev. Lett. 30, 1973). In the conventional normalisation for $SU(N)$, with $\beta=2N/g^2$, the one-loop law is $1/g^2\sim2b_0^{\mathrm{conv}}\log(1/a)$ with $b_0^{\mathrm{conv}}=11N/(48\pi^2)$.
  - Here $\beta=1/g_0^2$ in the normalisation $\langle X,Y\rangle_{\mathfrak g}=-\frac1m\mathrm{Re}\,\mathrm{tr}(XY)$, and $C_{\mathfrak g}=2N^2$. So $b_*=2b_0=11N^2/(12\pi^2)=2N\cdot2b_0^{\mathrm{conv}}$, which agrees with the conventional law.
  - For $SU(2)$, $b_*=11/(3\pi^2)$.
  - For the relation between the bare coupling and the lattice spacing see Creutz, *Quarks, Gluons and Lattices* (1983).
- *Block-spin RG for lattice gauge fields.* In Balaban's renormalization group (Comm. Math. Phys. 109 (1987), 116 (1988), and related papers) the effective couplings obey $g_{k+1}^{-2}=g_k^{-2}+\beta_0\log L+O(g_k^2)$. The per-step relation of III.9 is the analogue, and (R) is its summed form.
- *Exactly compatible frames.* Averaging over a finite group gives equivariant projections (Maschke). In finite dimension, injective linear maps form an open set, and linear maps are continuous.
- *Classical stress tensor.* The symmetric gauge-field stress tensor $T^{\mathrm{can}}$ is conserved on the equations of motion and is traceless in four dimensions (classical scale invariance; Callan–Coleman–Jackiw, Ann. Phys. 59, 1970). The breaking of tracelessness in the quantum theory is the trace anomaly (Adler–Collins–Duncan 1977; Collins–Duncan–Joglekar 1977), treated in VII.2.

**Imported constants and assumptions.**
- The value $\kappa_G=11C_{\mathfrak g}/(24\pi^2)$ is a definition (I.1), and $b_0:=\kappa_G/2$, so $\kappa_G=2b_0$ holds by unfolding. That $\kappa_G$ is the actual slope of the trajectory is the content of the per-step relation, proved in Part III.
- $\bar\beta>0$ is a constant of the schedule (III.2); the results do not depend on it.
- No assumption enters (A) beyond the construction conditions. The hypotheses of (B) are stated in VII.5.4–VII.5.5.

## 3. Strategy

**Part (A).** Part (A) is the last step of a three-step argument; the first two steps are in Part III.
1. *Marginal flow (III.9, probable).* One block-spin step with factor $b_m$ changes the effective coupling by $\kappa_G\log b_m$, up to an error $\delta_{m+1}$ with $\delta_{m+1}/\log b_m\le J(m+1)^{-2}\to0$. This is the one-loop relation of Balaban's renormalization group.
2. *Shooting and summation.* For each $N,p$ the bare coupling $\beta_{N,p,N}$ is chosen so that the flow reaches $\beta_{N,p,0}=\bar\beta$; this is the renormalization condition at unit scale. Summing the per-step relation from scale 0 to scale $m$ gives
$$|\beta_{N,p,m}-\widehat\beta_m|\le\sum_{i<m}\delta_{i+1}.$$
Since $\delta_{i+1}=o(\log b_i)$ and $s_m=\sum_{i<m}\log b_i\to\infty$, the right side is $o(s_m)$ by a Cesàro argument. The bound is uniform in $N\ge m$ and in $p$, because the per-step bounds are.
3. *Division by $s_m$ (this unit).* Since $\bar\beta/s_m\to0$, one gets $\beta_{N,p,m}/s_m\to\kappa_G=2b_0$, uniformly. Taking $m=N$ gives (Reg1); taking square roots gives the coupling law.

No perturbation theory is done in this unit. The file documentation states this explicitly: the leading logarithm is extracted "of the same running inverse action coefficient (including the finite-cutoff bare coupling endpoint)", not of the reference line. It also states that no statement identifies this coupling with a coupling defined in a physical scheme.

**Part (B).** The results of part (B) are finite-dimensional.
- *VII.5.4* compares two convergent sequences in a finite-dimensional space. Along a free-field scaling sequence, the rescaled derivative $r_k\partial^V_4$ tends to $\partial^W_4\neq0$. The rescaled flux $(r_k/\xi_k)p_4=(c/\xi_k)\,r_k\partial^V_4$ tends to $\kappa\,\partial^W_4$. Hence the scalar $c/\xi_k$ tends to $\kappa$.
- *VII.5.5* is an "average and correct" construction in three steps:
  1. an equivariant retraction of each inclusion, obtained by averaging over $\Gamma_4$ and conjugation;
  2. a recursive correction, degree by degree, that turns approximately compatible frames into exactly compatible ones;
  3. a perturbation argument showing the correction stays invertible and asymptotically equal to the original frames.
- *VII.5.7* is the algebra of stress tensors quadratic in $F$ under the hyperoctahedral group. On the lattice only $\Gamma_4$ acts, so there are four candidate tensors and three candidate divergences. Their algebra singles out the canonical tensor and shows that it is traceless.

## 4. Steps

### 4.1 The running coupling

**Lemma VII.5.a (normalisation).** $2b_0=\kappa_G$.
*Proof.* Unfold both definitions. *Lean:* [`b0_normalizes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L14).

**Lemma VII.5.b (the running clause; input from III.2).** Suppose:
- $\beta_{N,p,0}=\bar\beta$ for all $N,p$;
- $|\beta_{N,p,m+1}-\beta_{N,p,m}-\kappa_G\log b_m|\le\delta_{m+1}$ for $m<N$;
- $\delta_{m+1}/\log b_m\le J(m+1)^{-2}$ with $J\to\infty$.

Then (R) holds.
*Proof sketch.*
1. Since $s_{m+1}=s_m+\log b_m$, induction on $m$ gives $|\beta_{N,p,m}-\widehat\beta_m|\le\Delta_m:=\sum_{i<m}\delta_{i+1}$ for $m\le N$.
2. Given $\varepsilon$, choose $j$ with $J(i+1)^{-2}\le\varepsilon/2$ for $i\ge j$. Then $\Delta_m\le\Delta_j+\frac\varepsilon2(s_m-s_j)$ for $m\ge j$.
3. For $m$ large, $\Delta_j\le\frac\varepsilon2 s_m$, hence $\Delta_m\le\varepsilon s_m$.

The bounds do not involve $N$ or $p$. *Lean:* [`YM.RG.Shoot.trajectory`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L23-L53) (III.2).

**Lemma VII.5.c (= Proposition VII.5.1).**
*Proof sketch.*
1. Apply (R) with $\varepsilon/4$. Because $s_m\to\infty$, one may also require $s_m\ge4(|\bar\beta|+1)/\varepsilon$.
2. Then $s_m>0$ and $|\bar\beta|<\frac\varepsilon4s_m$.
3. With $\kappa_G=2b_0$, the triangle inequality gives
$$|\beta_{N,p,m}-2b_0s_m|\le|\beta_{N,p,m}-\widehat\beta_m|+|\bar\beta|<\varepsilon s_m .$$
4. Divide by $s_m$.

*Lean:* [`zeroUp_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L15-L30).

**Lemma VII.5.d (= Corollary VII.5.2).**
*Proof sketch.* The slope is $2b_0$, which is positive because $C_{\mathfrak g}>0$ for simple $\mathfrak g$. Given $\varepsilon$, take $N_0:=m_0$ from VII.5.1 and specialise to $m=N$. The bare coupling of the public family is $\beta_{N,p,N}$, and its $\log(1/a_N)$ is $s_N$ by definition. *Lean:* [`YangMills.regular`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L16-L25) (VIII.1).

**Lemma VII.5.e (= Proposition VII.5.3).**
*Proof sketch.*
1. For each $\varepsilon$, eventually both $i\ge m_0(\varepsilon)$ and $i\le N_i$. So VII.5.1 gives $\beta_{N_i,k_i,i}/s_i\to2b_0$.
2. Since $\kappa_G>0$ for simple $\mathfrak g$, $2b_0>0$. Then $x\mapsto\sqrt x$ is continuous at $2b_0$ and $y\mapsto y^{-1}$ is continuous at $\sqrt{2b_0}\ne0$. Hence $(\beta_{N_i,k_i,i}/s_i)^{-1/2}\to(2b_0)^{-1/2}$.
3. For $s_i>0$ one has $\beta^{-1/2}s_i^{1/2}=(\beta/s_i)^{-1/2}$, and $s_i=\log(1/a_i)$ by definition.

*Lean:* [`comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L36-L48).

### 4.2 Normalisation of the stress tensor (VII.5.4)

**Lemma VII.5.f (ratio lemma).** Let $Z$ be a finite-dimensional real normed space. If $X_k\to x\neq0$ in $Z$ and $f_kX_k\to c\,x$ with $f_k\in\mathbb R$, then $f_k\to c$.
*Proof sketch.* Choose a linear functional $\ell$ with $\ell(x)\neq0$. Then $\ell(X_k)\ne0$ eventually, and $f_k=\ell(f_kX_k)/\ell(X_k)\to c$. *Lean:* [`scale_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L28-L39).

**Lemma VII.5.g (= VII.5.4(a)).**
*Proof sketch.*
1. A04 at degree 4 gives thresholds beyond which $X_k:=r_k\,U_k(5)^{-1}\partial^V_4U_k(4)\to x:=\partial^W_4$.
2. A05 at degree 4, applied to $(J,p,Y)$, gives thresholds beyond which $(r_k/\xi_k)\,U_k(5)^{-1}p_4U_k(4)\to\kappa\,\partial^W_4$.
3. Take the larger of the two sets of thresholds.
4. Substituting $p_4=c\,\partial^V_4$ in step 2 gives $(c/\xi_k)X_k\to\kappa x$, where $x\ne0$ is part of the free data. Lemma VII.5.f gives $c/\xi_k\to\kappa$.

*Lean:* [`tracks_ratio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L43-L54).

**Lemma VII.5.h (= VII.5.4(b)).**
*Proof sketch.* Suppose $J=0$. The translation Ward identity writes every correlation with an insertion of $p_{d,a}v$ as a flux of $J$ through a shell, which is then $0$. Correlations separate the elements of $\mathcal F_{d+1}$, so $p=0$. *Lean:* [`flux_nontrivial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Criteria.lean#L64-L70).

*Remark (sign of $c\kappa$).* Suppose in addition that tracking sequences exist at every level. Then $c\kappa>0$: since $\xi_k>0$, $c/\xi_k$ has the sign of $c$, and its limit is $\kappa\ne0$. This is [`kappa_sign`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L56-L70). It is not assigned to this unit and is not used by the main theorem. VI.2 uses only (a), and obtains $c\neq0$ from $\kappa\ne0$.

### 4.3 Exactly compatible frames (VII.5.5)

**Lemma VII.5.i (equivariant retraction, = VII.5.5(a)).**
*Proof sketch.*
1. $\iota^W$ is injective, so it has a linear left inverse $R$.
2. Average over $\Gamma_4$: $Q:=|\Gamma_4|^{-1}\sum_{s\in\Gamma_4}s^{-1}Rs$. Since $\iota^W$ commutes with $\Gamma_4$, $Q$ is again a left inverse, and $Q$ is $\Gamma_4$-equivariant.
3. Let $\theta$ be the conjugation, an antilinear involution. Put $P:=\frac12(Q+\theta Q\theta)$. Then $P$ is $\mathbb C$-linear. It is a left inverse, since $\iota^W$ commutes with $\theta$. It commutes with $\theta$. It stays $\Gamma_4$-equivariant, since $\theta$ commutes with $\Gamma_4$.

*Lean:* [`retraction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L35-L55), [`averaged_cov`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L27-L32).

**Lemma VII.5.j (exactness of the correction, = VII.5.5(b)).**
*Proof sketch.*
1. *One step.* $X_{d+1}\iota^Wv=\iota^VX_dP_d\iota^Wv+A_{d+1}(\iota^Wv-\iota^WP_d\iota^Wv)=\iota^VX_dv$.
2. *Intertwining for $d\le e$.* Induction on $e$, using $\iota_{d\to e+1}=\iota_{e\to e+1}\iota_{d\to e}$ and $\iota_{d\to d}=1$.
3. *Symmetries.* Induction on $d$. Let $g$ be a signed permutation or the conjugation. Then $g$ commutes with $P_d$, $\iota^W$, $\iota^V$, $A_{d+1}$ and, by induction, with $X_d$. Hence it commutes with both terms of $X_{d+1}$.
4. *Units.* $\mathbf 1_{d+1}=\iota^W\mathbf 1_d$, so $X_{d+1}\mathbf 1_{d+1}=\iota^VX_d\mathbf 1_d=\iota^V\mathbf 1_d=\mathbf 1_{d+1}$.

*Lean:* [`adjusted_succ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L78-L79), [`adjusted_exact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L80-L102).

**Lemma VII.5.k (asymptotic identity).** For $d\le D$, $\Pi^{(k)}_d:=(A^{(k)}_d)^{-1}X^{(k)}_d\to1$.
*Proof sketch.*
1. Put $\Phi^{(k)}_d:=(A^{(k)}_{d+1})^{-1}\iota^VA^{(k)}_d$. Then
$$\Pi^{(k)}_{d+1}v=\Phi^{(k)}_d\,\Pi^{(k)}_d P_dv+(v-\iota^WP_dv),\qquad \Pi^{(k)}_0=1 .$$
2. $\Phi^{(k)}_d\to\iota^W$ pointwise by hypothesis, hence in norm (finite dimension).
3. By induction, $\Pi^{(k)}_dP_dv\to P_dv$.
4. Therefore $\Pi^{(k)}_{d+1}v\to\iota^WP_dv+v-\iota^WP_dv=v$.

*Lean:* [`perturb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L106-L108), [`perturb_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L113-L129).

**Lemma VII.5.l (bijectivity and the new frames).**
*Proof sketch.*
1. $\Pi^{(k)}_d\to1$ in norm, and injective operators form an open set. So $\Pi^{(k)}_d$, and hence $X^{(k)}_d$, is injective for large $k$.
2. $\dim\mathcal F^\circ_d=\dim\mathcal F_d$ (by $A^{(k)}_d$), so $X^{(k)}_d$ is bijective.
3. Hence $\widetilde X^{(k)}_d=X^{(k)}_d$ eventually, and $(A^{(k)}_d)^{-1}\widetilde X^{(k)}_dv\to v$.

*Lean:* [`eventually_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L131-L135), [`rotate_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L142-L143), [`relative`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L144-L148).

*Use.* In VII.1 the frames of the free-field scaling sequence intertwine the inclusions only asymptotically. VII.5.5 replaces them by frames that are exactly graded for all large $k$ and asymptotically equal to the original ones, as tracking requires ([`tune_grades`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159)).

### 4.4 Finite-dimensional convergence (VII.5.6)

**Lemma VII.5.m.**
*Proof sketch.*
- (a) A linear left inverse $g$ of $f$ is continuous in finite dimension, so $a_y=gf(a_y)\to gf(e)=e$.
- (b) Every point of $(\mathbb R^4)^n$ is $\sum_{i,a}v_{i,a}e_{i,a}$. Hence evaluation at the $4n$ coordinate vectors is injective on functionals, and (a) applies.

*Lean:* [`norm_fit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L44-L51), [`components`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L55-L60), [`norm_fit_deriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L63-L70).

### 4.5 The classical stress-tensor algebra (VII.5.7)

**Lemma VII.5.n (covariance of $\mu^1,\mu^2$).** For a signed permutation $t$ with signs $\varepsilon_t(\cdot)$:
$$t\cdot\mu^2_a=\varepsilon_t(a)\,\mu^2_{t(a)},\qquad t\cdot\mu^1_a=\varepsilon_t(a)\,\mu^1_{t(a)} .$$
Both are real.
*Proof sketch.* $t$ multiplies $\langle F_{ij},\partial_bF_{ij}\rangle$ by $\varepsilon(i)\varepsilon(j)\,\varepsilon(b)\varepsilon(i)\varepsilon(j)=\varepsilon(b)$ and relabels the indices. The double sum over $(i,j)$ is invariant under reindexing by $t$. *Lean:* [`momentum2_turn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L21-L24), [`momentum1_mem`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L28-L34), [`momentum2_mem`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L25-L27), [`sumPerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L17-L20).

**Lemma VII.5.o (affine shells).** Every degree-0 jet is the jet of a degree-0 solution of the free Maxwell equations.
*Proof sketch.* The associated potential has constant curvature, so $\sum_a\partial_aF_{ab}=0$. *Lean:* [`shell_affine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L43-L50). VII.2 uses this, with its degree-1 analogue [`shell_quadratic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L52-L61), to build test jets on Maxwell solutions.

**What VI.1 and VII.2 prove about these objects.** These facts explain why the definitions are made; the proofs are not in this unit.
1. *Trace (VI.1).* $\sum_aT^{(0,w)}_{aa}=4(w_0+4w_1)\,\mathfrak s$. In particular $T^{\mathrm{can}}$ is traceless ([`mechanical_trace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L67-L69), [`conformal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L71-L72)).
2. *Divergence (VII.2).* $\delta(w)_b=\sum_a\partial_aT^{(0,w)}_{ab}$ ([`euler`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L38-L52)). The key identity is the Bianchi consequence
$$\sum_{a,i}\langle F_{ai},\partial_aF_{bi}\rangle=\tfrac12\mu^2_b .$$
With it, the shear part $\sum_{a\ne b}\partial_a\sum_i\langle F_{ai},F_{bi}\rangle$ equals $E_b+\frac12\mu^2_b-2\mu^1_b$.
3. *Coordinates (VII.2).* For simple $\mathfrak g$, $\beta$ and $\delta$ are bijections $\mathbb R^3\to\mathcal R_1$ ([`coordinates1`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L112-L124), [`bareCoordinates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L54-L63)). Moreover, $\beta(w)$ vanishes on free Maxwell solutions iff $w_0=w_1=0$ ([`through_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L96-L110)).
4. *Conservation of the canonical tensor (VII.2).* $\delta(1,-\tfrac14,1)=E$: $T^{\mathrm{can}}$ is conserved on the equations of motion ([`eom_vector_raw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L73-L74)).
5. *The functional $\rho$ (VII.2).* $\rho:=-4(w_0+4w_1)\circ\delta^{-1}:\mathcal R_1\to\mathbb R$ satisfies $\sum_aT^{(0,w)}_{aa}=-\rho(\delta(w))\,\mathfrak s$. It vanishes on divergences that vanish on Maxwell solutions ([`rho`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L78-L80), [`rho_eom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L85-L88)).

Together these say: among the $\Gamma_4$-covariant tensors quadratic in $F$, the tensor conserved on Maxwell solutions is, up to scale, the canonical one, and it is traceless. VII.2 reads the trace of a candidate stress tensor off its divergence through $\rho$ (probable).

## 5. Where the difficulty lies

*Routine.* Everything in the unit is routine:
- Part (A) is about 35 lines of real analysis.
- Part (B) is finite-dimensional linear algebra and limits of scalar ratios.

The substance of asymptotic freedom lies upstream: the per-step marginal-flow estimate with coefficient $\kappa_G$ (III.9, probable), and the shooting and summation (III.2).

*Weaker than one might expect.*
1. *Only the leading logarithm, and only for the lattice couplings.* VII.5.1–VII.5.3 concern the coefficients $\beta_{N,p,m}$ of the lattice effective actions of the constructed trajectory. They contain no two-loop term, no $\log\log(1/a)/\log(1/a)$ correction and no $\Lambda$-parameter. The file documentation disclaims any identification with a coupling defined in a physical scheme.
2. *What the main theorem keeps.* The main theorem keeps only (Reg1), with an unspecified positive slope (statement, Definition 1.6 and §4 item 9).
3. *The value of the slope.* That the value $11C_{\mathfrak g}/(24\pi^2)$ is the one-loop coefficient is not established here. $\kappa_G$ is defined with that value in I.1, and the per-step estimate of Part III shows that the trajectory follows it.

*Stronger than one might expect.* VII.5.1 is uniform in the volume index $p$ and also in $N\ge m$: the coupling at stage $m$ of every finer lattice obeys the same law. This uniformity is what VII.5.3 uses (no condition on $k_i$). Any coupling defined from the $\beta_{N,p,m}$ by limits in $N$ and $p$ at fixed $m$ inherits the bound $|\beta/s_m-2b_0|\le\varepsilon$ for $m\ge m_0(\varepsilon)$. This is the mechanism behind the effective-coupling law of the group's assessment (§7.4, Theorem 7.2); the passage to the limit is not in this unit (probable).

*Unusual.*
- **Most of the unit belongs elsewhere.** 38 of the 43 declarations have nothing to do with the coupling. The declaration table assigns them here; their consumers are in other units:
  - the frame-correction lemmas (VII.5.5): VII.1, also III.13 and VIII.1;
  - the ratio lemma and the flux-nontriviality lemma (VII.5.4): VI.2;
  - the convergence lemmas (VII.5.6): III.12;
  - the stress-tensor definitions (VII.5.7): VII.2 and VI.1, where all the lemmas about them are;
  - the read-out predicate (VII.5.8): VII.2.
  
  A written proof should place them there.
- **The asymptotic-freedom statement has no downstream use.** Proposition VII.5.3 is not cited by any other declaration. The coupling enters the main theorem only through VII.5.1, via (Reg1).

## 6. Notation

| object | code name | proposed notation |
|---|---|---|
| Casimir constant | [`YM.Gauge.casimir`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182) | $C_{\mathfrak g}$ ($=2N^2$ for $SU(N)$) |
| slope constant | [`YM.Gauge.slopeConstant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184) | $\kappa_G=11C_{\mathfrak g}/(24\pi^2)$ |
| one-loop coefficient | [`b0`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L13) | $b_0=\kappa_G/2$; slope $b_*=2b_0$ |
| lattice spacing at stage $m$ | [`Schedule.a`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L99) | $a_m=1/D_m$ |
| logarithmic scale | [`Schedule.scale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L115) | $s_m=\log(1/a_m)$ |
| coupling at stage $m$ | `C.path.β N p m` | $\beta_{N,p,m}$; bare coupling $\beta_{N,p}=\beta_{N,p,N}$ |
| reference line | [`hatBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79) | $\widehat\beta_m=\bar\beta+\kappa_Gs_m$ |
| running clause | [`Running`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L229-L230) | (R) |
| running coupling | [`regulatorRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L35) | $g_{N,p,m}=\beta_{N,p,m}^{-1/2}$ |
| free comparison table | [`Free`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Station.lean#L28) | $\mathcal F^\circ_d$ |
| equivariant retraction | [`retraction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L35-L55) | $P_d$ |
| corrected frames | [`adjusted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L61-L66), [`rotateChart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L137-L140) | $X_d$, $\widetilde X^{(k)}_d$ |
| exact compatibility up to degree $D$ | [`Exact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L72-L76), [`Graded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L171-L172) | "exactly graded" |
| asymptotic intertwining | [`Near`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L110-L111) | hypothesis of VII.5.5(c) |
| square of the curvature | [`square4`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L66) | $\mathfrak s=\frac14\sum_{i,j}\langle F_{ij},F_{ij}\rangle$ |
| canonical stress tensor | [`raw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L70) | $T^{\mathrm{can}}$ |
| weight-5 vectors | [`momentum1`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L16), [`momentum2`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L14) | $\mu^1$, $\mu^2$ |
| coordinates on $\mathcal R_1$ | [`basisV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L63-L66) | $\beta(w)$ |
| divergence of $T^{(0,w)}$ | [`bareVector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L33) | $\delta(w)$ |
| sharp read-out bound | [`SharpRead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Soot/Skein.lean#L26) | Definition VII.5.8 |

## 7. What remains unexplained
1. **Where the one-loop coefficient is verified.** The per-step relation $|\beta_{N,p,m+1}-\beta_{N,p,m}-\kappa_G\log b_m|\le\delta_{m+1}$ comes from the one-step output of the shooting recipe (III.2). The analytic proof of that step bound, where $11C_{\mathfrak g}/(24\pi^2)$ actually arises, is attributed to the marginal flow (III.9) but has not been traced to a declaration. (probable)
2. **The effective coupling after the limits.** The assessment's Theorem 7.2 concerns a coupling $g_W(r)$ defined after $N\to\infty$ and the infinite-volume limit. The comparison with a coupling read from continuum correlations is also not traced. Files that use the running coupling at stage $m+1$ (`YM/RemainderComparison`: Beacon, Hymnal, Musicology) lie outside the dependency closure of the main theorem. Whether, and where, Theorem 7.2 is proved has not been settled. (tentative)
3. **Definition VII.5.8.** The reading of the read-out predicate is (tentative). Its role belongs in VII.2's cost accounting.
4. **The functional $\rho$.** How VII.2 uses $\rho$ to read the trace of a stress tensor off its divergence is stated here as (probable) and should be checked in VII.2.
5. **Placement.** §5 gives the target units for the 38 auxiliary declarations. Moving them would leave this unit with VII.5.1–VII.5.3 only.

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

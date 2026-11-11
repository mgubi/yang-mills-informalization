# VII.5. Asymptotic freedom of the running coupling — detailed notes

> The full account of unit VII.5: every proposition with its proof sketch, checked against the Lean in two rounds and edited. The condensed outline and the map of the Lean are on the [unit page](../units/VII-5.md).

[Unit page](../units/VII-5.md) · [All units](../units.md) · [Overview](../README.md)

**Part:** VII, identification as Yang–Mills. **Lean:** [`YM/Pert/Asymptotics`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics) (the running coupling). Auxiliary declarations are in [`YM/Extra/WEAK_SCALING_ACTLAW`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW) (files `Orientation`, `Criteria`, `Adjust`, `Analysis`, `Station`), from [`YM/TraceExtension/Foundation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation) (files `Caps`, `Dilate`), and one definition from [`YM/TraceExtension/Soot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Soot). **Size:** 232 lines in 43 declarations: 32 lines in `Pert/Asymptotics` (5 declarations), 162 in `WEAK_SCALING_ACTLAW` (24), 37 in `TraceExtension/Foundation` (13), 1 in `TraceExtension/Soot` (1).

## 1. What this unit proves

**(A) The running coupling (5 declarations).** The inverse squared coupling of the constructed renormalization-group trajectory grows logarithmically, uniformly in the lattice level and the volume (VII.5.1). This gives the regularity clause (Reg1) of the main theorem with slope $b_*=2b_0$ (VII.5.2). It also gives the law $g^2\log(1/a)\to1/(2b_0)$ (VII.5.3).

**(B) Auxiliary results (38 declarations).**

- VII.5.4: the normalisation of the stress tensor along free-field scaling sequences (used by VI.2).
- VII.5.5: exactly compatible frames, built from approximately compatible ones (used by VII.1).
- VII.5.6: two elementary convergence lemmas (used by III.12).
- VII.5.7–VII.5.8: the definitions of the classical stress-tensor algebra and a read-out predicate (used by VI.1, VII.2, VIII.1).

**Setting for (A).**

- *Gauge group.* $G\subset U(q)$, $q\ge1$, is a compact matrix group with Lie algebra $\mathfrak g$ and inner product $\langle X,Y\rangle_{\mathfrak g}=-\frac1q\mathrm{Re}\,\mathrm{tr}(XY)$. For an orthonormal basis $(e_i)$, define $C_{\mathfrak g}:=-(\dim\mathfrak g)^{-1}\sum_i\mathrm{tr}_{\mathfrak g}((\mathrm{ad}\,e_i)^2)$, with value $0$ when $\mathfrak g=0$. Here and below, simple means real simple and nonabelian. If $\mathfrak g$ is simple, its Killing form equals $-C_{\mathfrak g}\langle\cdot,\cdot\rangle_{\mathfrak g}$. For $SU(q)\subset U(q)$ with $q\ge2$, this gives $C_{\mathfrak g}=2q^2$. Put

  $$\kappa_G:=\frac{11\,C_{\mathfrak g}}{24\pi^2},\qquad b_0:=\frac{11\,C_{\mathfrak g}}{48\pi^2}=\tfrac12\kappa_G .$$

- *Scales.* The block factors $b_k\ge3$ are odd. Set $D_m=\prod_{k<m}b_k$, $a_m=1/D_m$ and

  $$s_m:=\log(1/a_m)=\sum_{k<m}\log b_k .$$

  Then $s_m\to\infty$.
- *Trajectory.* For a lattice level $N$, a volume index $p$ and a stage $m\le N$, $\beta_{N,p,m}$ is the coefficient of the normalised kinetic term in the effective action at spacing $a_m$. The represented density is obtained from the Wilson weight by $N-m$ block-spin steps.
  - $\beta_{N,p}:=\beta_{N,p,N}$ is the bare coupling of the main theorem.
  - $\beta_{N,p,0}=\bar\beta>0$ for every $N,p$. This is the renormalization condition at unit scale.
  - The reference line is $\widehat\beta_m:=\bar\beta+\kappa_G s_m$. One has $\beta_{N,p,m}\in[\widehat\beta_m/2,\,2\widehat\beta_m]$.
  - The running coupling is $g_{N,p,m}:=\beta_{N,p,m}^{-1/2}$.

The **running clause** (R) of the construction conditions reads: for every $\varepsilon>0$ there is $m_0$ such that

$$|\beta_{N,p,m}-\widehat\beta_m|\le\varepsilon\,s_m\quad\text{for all } m\ge m_0,\ N\ge m,\ p\in\mathbb N .$$

**Proposition VII.5.1 (uniform logarithmic growth of the inverse squared coupling).** Let the family satisfy its construction conditions (II.2). For every $\varepsilon>0$ there is $m_0\ge1$ such that

$$\Bigl|\frac{\beta_{N,p,m}}{s_m}-2b_0\Bigr|<\varepsilon\qquad\text{for all } m\ge m_0,\ N\ge m,\ p\in\mathbb N .$$

*Status:* theorem. Of the construction conditions only (R) is used. Simplicity of $\mathfrak g$ is not needed.
*Lean:* [`YM.Pert.Asymptotics.zeroUp_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L15-L30), with [`b0`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L13) and [`b0_normalizes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L14).

**Corollary VII.5.2 ((Reg1) for the constructed family).** Let $\mathfrak g$ be simple and let the family satisfy its construction conditions. Then its Wilson family satisfies (Reg1) with slope $b_*=2b_0=11C_{\mathfrak g}/(24\pi^2)>0$: for every $\varepsilon>0$ there is $N_0\ge1$ with

$$\Bigl|\frac{\beta_{N,p}}{\log(1/a_N)}-b_*\Bigr|<\varepsilon\quad\text{for all } N\ge N_0 \text{ and all } p.$$

*Status:* theorem, proved in VIII.1 as the first clause of the regularity of the constructed family. It is VII.5.1 at $m=N$, together with $C_{\mathfrak g}>0$ (I.1). This is how the main theorem uses part (A). The main theorem asserts the existence of a positive slope without specifying its value.
*Lean:* [`YangMills.regular`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L16-L25) (running clause of [`YangMills.WilsonRegularity`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L12-L22)), via [`zeroUp_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L15-L30).

**Proposition VII.5.3 (asymptotic freedom of the running coupling).** Let $\mathfrak g$ be simple and let the family satisfy its construction conditions. Let $(N_i)$ and $(k_i)$ be sequences of lattice levels and volume indices with $i\le N_i$ for all large $i$. Then

$$\lim_{i\to\infty}g_{N_i,k_i,i}\,\sqrt{\log(1/a_i)}=\frac1{\sqrt{2b_0}},\qquad\text{equivalently}\qquad g_{N_i,k_i,i}^2\,\log(1/a_i)\longrightarrow\frac1{2b_0}.$$

- For $N_i=i$ this is the law of the bare coupling, $g_0(a)^2\sim\bigl(2b_0\log(1/a)\bigr)^{-1}$.
- For $N_i\ge i$ it is the law of the effective coupling at spacing $a_i$ of any finer lattice. No condition is placed on the volumes $k_i$.

*Status:* theorem; its square gives the second limit. No other declaration cites it.
*Lean:* [`YM.Pert.Asymptotics.comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L36-L48), [`regulatorRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L35).

**Setting for (B).**

- *Spaces and maps.*
  - $\mathcal F_d$ is the finite-dimensional complex space of labels of degree at most $d$ in a correlation table $S$ carrying a Euclidean hierarchy $H$ (IV.1).
  - $\mathcal F^\circ_d$ is the corresponding space of the free Maxwell comparison table, with its hierarchy $H^\circ$, built on the same reference labels (VI.1).
  - A *derivative plan* (IV.1) on either table consists of complex-linear inclusions $\iota_{d\to e}$ ($d\le e$) and complex-linear partial derivatives $\partial_{d,a}:\mathcal F_d\to\mathcal F_{d+1}$, $a=1,\dots,4$.
  - The inclusion axiom says that inserting $\iota_{d\to e}v$ in a separated correlation gives the same value as inserting $v$. It implies injectivity, $\iota_{d\to d}=1$, transitivity and preservation of the unit. The derivative axiom identifies insertion of $\partial_{d,a}v$ with differentiation of the correlation in that insertion point.
  - The orientation axioms say that inclusions commute with the hyperoctahedral group $\Gamma_4$ of signed permutations ($384$ elements) and with conjugation. Derivatives commute with conjugation and transform as vectors under $\Gamma_4$.
- *Stress data.* A *candidate stress tensor* is a family $J=(J_{ab})$ in $\mathcal F_4$. Its *local Ward identities* (IV.1, VI.1) involve a translation part $p=(p_{d,a}:\mathcal F_d\to\mathcal F_{d+1})$ and a rotation part $Y$.
- *Free Maxwell data* (VI.2, VIII.1): the comparison data specified in §2, including a derivative plan $W$, a rotation action, a tensor $J^\circ$ and $\kappa\ne0$. The plan satisfies the inclusion, derivative and orientation axioms; $J^\circ$ satisfies the local Ward identities with translation part $\kappa\,\partial^W$ and rotation part $\kappa$ times the infinitesimal rotation action; and the family $\partial^W_4=(\partial^W_{4,a})_a$ is nonzero.
- *Scaling sequences.* A *scaling sequence* (VI.1) consists of frames $U_k(d):\mathcal F^\circ_d\to\mathcal F_d$ (complex-linear isomorphisms), positive, strictly decreasing scales $r_k\to0$ and stress normalisations $\xi_k>0$.
- *Tracking.* A scaling sequence *tracks* $(V,W,J)$ at level $(n,d,j,R)$ (VI.1) if three conditions hold:
  - the frames are exactly compatible with inclusions, signed permutations, conjugation and units up to degree $\max(d,4)$;
  - for each fixed list of at most $n$ fields of degrees at most $d$, the correlations transported by $U_k$ and evaluated at $r_kx$ converge, with all Fréchet derivatives of orders $0,\ldots,j$, uniformly on the window $\{x:\|x\|\le R,\ \|x_a-x_b\|_\infty\ge R^{-1}\ \text{for all }a\ne b\}$, to the free correlations;
  - $\xi_k^{-1}r_k^4\,U_k(4)^{-1}J_{ab}\to J^\circ_{ab}$.

**Proposition VII.5.4 (normalisation of the stress tensor along free-field scaling sequences).** Fix the two hierarchies and the free Maxwell comparison data above. Let $V$ be a derivative plan on $S$ satisfying the inclusion and derivative axioms. Let $J$ be symmetric, real and $\Gamma_4$-covariant, with $\sum_a\partial^V_{4,a}J_{ab}=0$ for every $b$, and let $(J,p,Y)$ satisfy the local Ward identities.

(a) Suppose $p_{4,a}=c\,\partial^V_{4,a}$ for $a=1,\dots,4$ and some $c\in\mathbb R$. Then there are $D,N,M\in\mathbb N$ and $R_0\ge1$ such that $c/\xi_k\to\kappa$ for every scaling sequence that tracks $(V,W,J)$ at a level $(n,d,j,R)$ with $n\ge N$, $d\ge D$, $j\ge M$ and $R\ge R_0$.

(b) If $p\neq0$, then $J\neq0$.

*Status:* theorems. Part (a) uses A04 and A05 (VI.1); part (b) requires only the hierarchy and local Ward identities.
*Lean:* [`YM.Extra.WeakScaling.tracks_ratio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L43-L54), [`scale_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L28-L39), [`flux_nontrivial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Criteria.lean#L64-L70). Used in VI.2 by [`YM.Pert.ratio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L62-L66) and [`YM.Pert.centered_line`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L82-L116).

**Proposition VII.5.5 (exactly compatible frames).** Suppose $S$ and its free comparison table carry Euclidean hierarchies. Let $V$ and $W$ be derivative plans on these tables satisfying the inclusion and orientation axioms.

(a) For every $d$ there is a $\mathbb C$-linear map $P_d:\mathcal F^\circ_{d+1}\to\mathcal F^\circ_d$ with $P_d\,\iota^W_{d\to d+1}=1$ that commutes with $\Gamma_4$ and with conjugation.

(b) Let the $P_d$ be as in (a), fix $D\in\mathbb N$, and let $A_d:\mathcal F^\circ_d\to\mathcal F_d$ be complex-linear isomorphisms for every $d$. Define recursively

$$X_0:=A_0,\qquad X_{d+1}:=\iota^V_{d\to d+1}\,X_d\,P_d+A_{d+1}\bigl(1-\iota^W_{d\to d+1}P_d\bigr).$$

Suppose that for every $d\le D$ the map $A_d$ commutes with $\Gamma_4$ and conjugation and maps unit to unit. Then:

- $X_e\,\iota^W_{d\to e}=\iota^V_{d\to e}\,X_d$ for all $d\le e\le D$;
- for $d\le D$, each $X_d$ commutes with $\Gamma_4$ and conjugation and maps unit to unit.

(c) Let $A^{(k)}_d$ be complex-linear isomorphisms such that, for every $d<D$ and every $v$,

$$(A^{(k)}_{d+1})^{-1}\,\iota^V_{d\to d+1}\,A^{(k)}_d\,v\longrightarrow\iota^W_{d\to d+1}v\qquad(k\to\infty).$$

Let $X^{(k)}$ be built from $A^{(k)}$ as in (b). Then for every $d\le D$:

- $(A^{(k)}_d)^{-1}X^{(k)}_d\to1$ in operator norm;
- $X^{(k)}_d$ is bijective for all large $k$;
- the isomorphisms $\widetilde X^{(k)}_d$ (equal to $X^{(k)}_d$ when it is bijective and to $A^{(k)}_d$ otherwise) satisfy $(A^{(k)}_d)^{-1}\widetilde X^{(k)}_dv\to v$ for every $v$.

If the $A^{(k)}_d$ also preserve the symmetries and units in (b), then, for all sufficiently large $k$, the frames $\widetilde X^{(k)}_d$ are exactly compatible simultaneously in all degrees $d\le D$.

*Status:* theorem (finite-dimensional algebra and analysis).
*Lean:* [`retraction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L35-L55), [`adjusted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L61-L66), [`Exact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L72-L76), [`adjusted_exact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L80-L102), [`Near`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L110-L111), [`perturb_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L113-L129), [`eventually_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L131-L135), [`rotateChart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L137-L140), [`relative`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L144-L148), [`Graded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L171-L172). Used in VII.1 by [`YM.SharpGram.Weak.Portfolio.tune_grades`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159). Exact compatibility is also used in III.13 and VIII.1.

**Proposition VII.5.6 (finite-dimensional convergence).**

(a) Let $f:E\to X$ be an injective linear map between finite-dimensional real normed spaces. If $f(a_y)\to f(e)$ along a filter, then $a_y\to e$.

(b) Let $f_y,g:(\mathbb R^4)^n\to\mathbb C$ be continuous real-linear maps, and fix a filter on the index set of $y$. If $f_y(e_{i,a})\to g(e_{i,a})$ at each of the $4n$ coordinate vectors, then $f_y\to g$ in operator norm along that filter.

*Status:* theorem.
*Lean:* [`norm_fit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L44-L51), [`norm_fit_deriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L63-L70), [`components`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L55-L60). Used in III.12 by [`YM.FullVolume.stretching`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Region.lean#L28-L30).

**Definition VII.5.7 (the classical stress-tensor algebra).** Labels of degree $d$ are gauge-invariant polynomials of weight at most $d$ in radial Taylor coefficients at the base point. In the formulas below, $F$ and $\partial F$ denote the linear curls of the degree-0 and degree-1 Taylor coefficients used in the free Maxwell comparison. The curvature has weight 2 and each derivative adds 1 (II.1). $\langle\cdot,\cdot\rangle$ denotes the invariant inner product on $\mathfrak g$. These are polynomial identities, before passing to the quotient by null fields; they do not multiply limiting fields at coincident points.

- *Weight 4.* The square is $\mathfrak s:=\frac14\sum_{i,j}\langle F_{ij},F_{ij}\rangle$, summed over ordered pairs. The candidate stress tensors of VI.1 form the family

  $$T^{(t)}_{ab}=\delta_{ab}\Bigl(t_0\mathbf 1+t_1\sum_i\langle F_{ai},F_{ai}\rangle+t_2\sum_{i,j}\langle F_{ij},F_{ij}\rangle\Bigr)+(1-\delta_{ab})\,t_3\sum_i\langle F_{ai},F_{bi}\rangle .$$

  The *canonical* tensor is $T^{\mathrm{can}}:=T^{(0,1,-1/4,1)}$, that is, $T^{\mathrm{can}}_{ab}=\sum_i\langle F_{ai},F_{bi}\rangle-\delta_{ab}\,\mathfrak s$.
- *Weight 5.* Define the vectors

  $$\mu^1_b:=\sum_i\langle F_{bi},\partial_bF_{bi}\rangle=\tfrac12\partial_b\sum_i|F_{bi}|^2,\qquad \mu^2_b:=\sum_{i,j}\langle F_{ij},\partial_bF_{ij}\rangle=\tfrac12\partial_b\sum_{i,j}|F_{ij}|^2,$$

  and the equation-of-motion vector $E_b:=\sum_{a,i}\langle F_{bi},\partial_aF_{ai}\rangle$ (VI.1). Let $\mathcal R_1$ be the real space of real, $\Gamma_4$-covariant vectors of degree at most 5 (VI.1). Define $\beta,\delta:\mathbb R^3\to\mathcal R_1$ by

  $$\beta(w):=w_0\mu^1+w_1\mu^2+w_2E,\qquad \delta(w):=\beta\bigl(2(w_0-w_2),\ 2w_1+\tfrac12w_2,\ w_2\bigr).$$

The definitions have two accompanying lemmas:

- $\mu^1,\mu^2\in\mathcal R_1$;
- every degree-0 radial jet is realised by a constant-curvature free Maxwell field, with an affine potential.

*Status:* definitions and two lemmas.
*Lean:* [`square4`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L66), [`raw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L70), [`momentum1`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L16), [`momentum2`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L14), [`momentum1_mem`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L28-L34), [`momentum2_mem`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L25-L27), [`momentum2_turn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L21-L24), [`basisV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L63-L66), [`bareVector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L33) (with [`mat3`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L32), [`proj3`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L31)), [`shell_affine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L43-L50), [`sumPerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L17-L20). The facts proved about these objects in VI.1 and VII.2 are listed in §4.5.

**Definition VII.5.8 (sharp read-out bound).** Fix the family, a nondecreasing control function $K:\mathbb N\to\mathbb R$ with $K(j)\ge1$ for every $j$, a degree $d$, stages $\ell_d\le k\le N$, a volume index $p$ and $u\in\mathbb R$. Write $\|c\|_1:=\sum_\alpha|c_\alpha|$ for the coefficient norm, and let $P$ remove the unit coordinate. Here $\ell_d$ is the reference stage fixed by the family. The predicate quantifies over every $w\ge0$ and all insertion presentations $A_i$ with coefficient vectors $c_i$, remainder costs $q_i$, inserted densities $\mathcal D_i$ and insertion points at the origin. They must satisfy:

- At each $\ell_d\le i\le k$, $A_i$ has the admissible regular and forced remainders of III.12, with total remainder cost at most $q_i$, using the square root of the stage-$i$ forced allowance.
- $c_{\ell_d}=0$. Only this coefficient vector must vanish at the reference stage.
- The full inserted densities obey $\mathcal D_i=b_i^d\,\mathcal T^{(i)}_{\beta_{N,p,i+1}}\mathcal D_{i+1}$ for $\ell_d\le i<k$.
- Put $(S_i c)_\alpha:=b_i^{d-d_\alpha}c_\alpha$, where $d_\alpha$ is the weight of the basis label, and $K_i:=K(J(i+1))$. For each $\ell_d\le i<k$, $q_i,q_{i+1}\ge0$ and there is a complex-linear automorphism $B_i$ commuting with $P$ such that $\|B_i c\|_1,\|B_i^{-1}c\|_1\le K_i\|c\|_1$ for every $c$, and

  $$\|c_i-B_iS_ic_{i+1}\|_1\le b_i^{-3/8}(\|Pc_{i+1}\|_1+q_{i+1}),\qquad q_i\le K_i\|PS_ic_{i+1}\|_1+b_i^{-3/8}q_{i+1}.$$

- The terminal cost satisfies $q_k\le w+n_k(w+\|c_k\|_1)$, where $w\ge0$ and $n_k$ is the stage-$k$ column number.

The sharp read-out predicate is the assertion that every such chain satisfies

$$u\,\|c_k\|_1\le4(1+n_k)w.$$

*Status:* definition. The admissibility and remainder conditions are those of [`Format`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L52-L61), [`remBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L63-L68); the complete chain conditions are [`Duet.Woke`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L115-L127) and [`direction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L65-L69).
*Lean:* [`YM.MergeProof.Accent.SharpRead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Soot/Skein.lean#L26). Used by: [`YM.Trace.Terrace.Sceptre`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Knell.lean#L62-L66) and the cost lemmas of VII.2.

## 2. What it uses

**Inputs from other units.**

- *I.1 (gauge group and scales).*
  - $C_{\mathfrak g}$ ([`YM.Gauge.casimir`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182)) and $\kappa_G$, which is *defined* as $11C_{\mathfrak g}/(24\pi^2)$ ([`slopeConstant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184)).
  - For simple $\mathfrak g$, the Killing-form identity in §1 is [`trace_adjoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L140-L158).
  - Positivity $C_{\mathfrak g}>0$ and $\kappa_G>0$ for simple $\mathfrak g$ ([`casimir_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L160-L172), [`slopeConstant_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176)).
  - $a_m=1/D_m$ ([`Schedule.a`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L99)); $s_m$ is *defined* as $\log(1/a_m)$ ([`Schedule.scale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L115)); and $s_m\to\infty$ ([`Schedule.divergent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L117-L120)).
- *II.2 (construction conditions)* [`YM.Family.Makes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62). Its first field says that the trajectory is a selected history (III.1). The bare coupling is [`Family.beta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L38), that is, $\beta_{N,p,N}$.
- *III.1 (selected history)* [`YM.RG.History.Selected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L234-L240). It contains:
  - $\beta_{N,p,0}=\bar\beta$;
  - the per-step relation $|\beta_{N,p,m+1}-\beta_{N,p,m}-\kappa_G\log b_m|\le\delta_{m+1}$ ([`Transfer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L223-L227));
  - the band $[\widehat\beta_m/2,2\widehat\beta_m]$ ([`Conv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L213-L218));
  - the running clause (R) ([`Running`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L229-L230)), with $\widehat\beta_m$ given by [`hatBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79).
- *III.2 (choice of constants, shooting).*
  - (R) is derived in [`YM.RG.Shoot.trajectory`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L23-L53). The inputs are $\beta_{N,p,0}=\bar\beta$, the per-step relation, and $\delta_{m+1}/\log b_m\le J(m+1)^{-2}$, where $J(m)\to\infty$ is the stage index of the scale sequence (Lemma VII.5.b).
  - The history with $\beta_{N,p,0}=\bar\beta$ is produced by shooting ([`Recipe.races`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L67-L82), [`successful`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L156-L159)).
  - The per-step relation follows from the coupling reset (III.9). If the one-loop shift $\alpha_{N,m}$ satisfies $|\alpha_{N,m}+\kappa_G\log b_m|+1\le\delta_{m+1}$ and the reset changes $\beta$ by $\alpha_{N,m}$ with error at most $1$, the triangle inequality gives the transfer bound. This is [`Directed.links`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L57-L63), using [`Kin.Planned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L93-L115).
- *VIII.1:* uses VII.5.2 in the assembly of the main theorem.
- *For VII.5.4.*
  - The work items A04 ([`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A04.lean#L163-L183)) and A05 ([`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A05.lean#L95-L121)), both proved in VI.1. Along tracking scaling sequences of sufficient arity, degree, derivative order and window size, they give: $r_k\,\partial^V_d$ conjugated by the frames converges to $\partial^W_d$; and $(r_k/\xi_k)\,p_d$ conjugated by the frames converges to $\kappa\,\partial^W_d$.
  - The tracking notion ([`Track`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L44-L48)) and the hypotheses on $J$ ([`Pre`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L66-L69)), from VI.1.
  - The Ward identities ([`StressLaws`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L90-L97)) and derivative plans ([`DiffPlan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L20-L22)), from IV.1.
  - The free Maxwell data ([`MaxwellData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170), [`Lighthouse.Goes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L34-L42)). Besides the data in §1, the full package includes finite separating tests and the boundary, polynomial and internal-rotation conditions of VI.2. The ratio argument uses the free hierarchy, derivative and Ward identities, and the nonzero degree-4 derivative.
- *For VII.5.5:* the inclusion and orientation axioms of derivative plans (IV.1), and the free comparison table ([`Spin.comparator`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L38), VI.1).
- *For VII.5.7:*
  - the label polynomials $\langle F_{ab},F_{cd}\rangle$ ([`pair`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L50-L51)) and $\langle F_{ab},\partial_iF_{cd}\rangle$ ([`pairDeriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L57-L58));
  - $E$ ([`eom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L105)), the family $T^{(t)}$ ([`stress`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L177-L181), [`weyl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L187)) and $\mathcal R_1$ ([`RawOne`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Counts.lean#L53)), all from VI.1;
  - the ideal of labels vanishing on free Maxwell solutions ([`Maxwell.equationIdeal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72)), from III.16.

- *For VII.5.8:* the comparison-chain definitions of III.2 and the insertion estimates of III.12. For the constructed family, [`attain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Earn.lean#L22-L52) (III.2) supplies the read-out field of the trace-analysis assumptions under its scale and one-step hypotheses.

**Standard mathematics.**

- *Asymptotic freedom.* Gross–Wilczek and Politzer (Phys. Rev. Lett. 30, 1973). In the conventional normalisation for $SU(q)$, with $\beta=2q/g^2$, the one-loop law is $1/g^2\sim2b_0^{\mathrm{conv}}\log(1/a)$ with $b_0^{\mathrm{conv}}=11q/(48\pi^2)$.
  - Here $\beta=1/g_0^2$ in the normalisation $\langle X,Y\rangle_{\mathfrak g}=-\frac1q\mathrm{Re}\,\mathrm{tr}(XY)$, and $C_{\mathfrak g}=2q^2$. So $b_*=2b_0=11q^2/(12\pi^2)=2q\cdot2b_0^{\mathrm{conv}}$, which agrees with the conventional law.
  - For $SU(2)$, $b_*=11/(3\pi^2)$.
  - For the relation between the bare coupling and the lattice spacing see Creutz, *Quarks, Gluons and Lattices* (1983).
- *Block-spin RG for lattice gauge fields.* Balaban's renormalization group (Comm. Math. Phys. 109 (1987), 116 (1988), and related papers) provides the background for the marginal-flow estimate. The specific input here is the per-step bound of III.9; (R) follows by summation.
- *Exactly compatible frames.* Averaging over a finite group gives equivariant projections (Maschke). In finite dimension, injective linear maps form an open set, and linear maps are continuous.
- *Classical stress tensor.* The symmetric gauge-field stress tensor $T^{\mathrm{can}}$ is conserved on the equations of motion and is traceless in four dimensions (classical scale invariance; Callan–Coleman–Jackiw, Ann. Phys. 59, 1970). The breaking of tracelessness in the quantum theory is the trace anomaly (Adler–Collins–Duncan 1977; Collins–Duncan–Joglekar 1977), treated in VII.2.

**Imported constants and assumptions.**

- The value $\kappa_G=11C_{\mathfrak g}/(24\pi^2)$ is a definition (I.1), and $b_0:=\kappa_G/2$, so $\kappa_G=2b_0$ holds by unfolding. That $\kappa_G$ is the actual slope of the trajectory is the content of the per-step relation, proved in Part III.
- $\bar\beta>0$ is the fixed reference coupling (III.2). The limiting slope is independent of $\bar\beta$; the convergence thresholds may depend on it.
- VII.5.1 assumes the construction conditions. VII.5.2–VII.5.3 additionally assume simplicity. The auxiliary hypotheses are stated in §1.

## 3. Strategy

**Part (A).** The coupling law follows from the one-step bound by summation and division by the logarithmic scale.

1. *Marginal flow (III.9).* Blocking from stage $m+1$ to stage $m$ gives $\beta_{N,p,m}=\beta_{N,p,m+1}-\kappa_G\log b_m+e_{N,p,m}$, with $|e_{N,p,m}|\le\delta_{m+1}$ and $\delta_{m+1}/\log b_m\le J(m+1)^{-2}\to0$. The reset uses the one-loop estimate of III.7.
2. *Shooting and summation (III.2).* For each $N,p$ the bare coupling $\beta_{N,p,N}$ is chosen so that the flow reaches $\beta_{N,p,0}=\bar\beta$; this is the renormalization condition at unit scale. Summing the per-step relation from step 0 to step $m$ gives

   $$|\beta_{N,p,m}-\widehat\beta_m|\le\sum_{i<m}\delta_{i+1}.$$

   Since $\delta_{i+1}=o(\log b_i)$ and $s_m=\sum_{i<m}\log b_i\to\infty$, the right side is $o(s_m)$ by a Cesàro argument. The bound is uniform in $N\ge m$ and in $p$, because the per-step bounds are.
3. *Division by $s_m$ (this unit).* Since $\bar\beta/s_m\to0$, one gets $\beta_{N,p,m}/s_m\to\kappa_G=2b_0$, uniformly. Taking $m=N$ gives (Reg1); taking square roots gives the coupling law.

The result concerns the actual inverse coupling of the trajectory, including its bare endpoint. It does not identify this quantity with a coupling defined from continuum correlations.

**Part (B).** The auxiliary arguments use finite-dimensional limits and equivariant linear algebra.

- *VII.5.4* compares two convergent sequences in a finite-dimensional space. Along a free-field scaling sequence, the rescaled derivative $r_k\partial^V_4$ tends to $\partial^W_4\neq0$. The rescaled flux $(r_k/\xi_k)p_4=(c/\xi_k)\,r_k\partial^V_4$ tends to $\kappa\,\partial^W_4$. Hence the scalar $c/\xi_k$ tends to $\kappa$.
- *VII.5.5* uses equivariant averaging and a recursive correction:
  1. an equivariant retraction of each inclusion, obtained by averaging over $\Gamma_4$ and conjugation;
  2. a recursive correction, degree by degree, that turns approximately compatible frames into exactly compatible ones;
  3. a perturbation argument showing the correction is eventually invertible and asymptotically equal to the original frames.
- *VII.5.7* is the algebra of stress tensors quadratic in $F$ under the hyperoctahedral group. On the lattice only $\Gamma_4$ acts, so the candidate family has four parameters and its divergences have three coordinates. For simple $\mathfrak g$, conservation on free Maxwell fields singles out the canonical tensor up to scale and addition of a constant multiple of $\delta_{ab}\mathbf1$. The canonical tensor is traceless.

## 4. Steps

### 4.1 The running coupling

**Lemma VII.5.a (normalisation).** $2b_0=\kappa_G$.
*Proof.* Unfold both definitions. *Lean:* [`b0_normalizes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L14).

**Lemma VII.5.b (the running clause; input from III.2).** Let $\delta:\mathbb N\to[0,\infty)$ and $J:\mathbb N\to\mathbb N$ satisfy $J(m)\ge1$ and $J(m)\to\infty$. With the scales and reference line of §1, suppose:

- $\beta_{N,p,0}=\bar\beta$ for all $N,p$;
- $|\beta_{N,p,m+1}-\beta_{N,p,m}-\kappa_G\log b_m|\le\delta_{m+1}$ for $m<N$;
- $\delta_{m+1}/\log b_m\le J(m+1)^{-2}$ for every $m$.

Then (R) holds.

*Proof sketch.*

1. Since $s_{m+1}=s_m+\log b_m$, induction on $m$ gives $|\beta_{N,p,m}-\widehat\beta_m|\le\Delta_m:=\sum_{i<m}\delta_{i+1}$ for $m\le N$.
2. Given $\varepsilon$, choose $j$ with $J(i+1)^{-2}\le\varepsilon/2$ for $i\ge j$. Then $\Delta_m\le\Delta_j+\frac\varepsilon2(s_m-s_j)$ for $m\ge j$.
3. For $m$ large, $\Delta_j\le\frac\varepsilon2 s_m$, hence $\Delta_m\le\varepsilon s_m$.

The constants and thresholds do not involve $N$ or $p$. *Lean:* [`YM.RG.Shoot.trajectory`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L23-L53) (III.2).

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
3. For all sufficiently large $i$, both $s_i$ and $\beta_{N_i,k_i,i}$ are positive, so $\beta_{N_i,k_i,i}^{-1/2}s_i^{1/2}=(\beta_{N_i,k_i,i}/s_i)^{-1/2}$, and $s_i=\log(1/a_i)$ by definition.

*Lean:* [`comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L36-L48).

### 4.2 Normalisation of the stress tensor (VII.5.4)

**Lemma VII.5.f (ratio lemma).** Let $Z$ be a finite-dimensional real normed space. If $X_k\to x\neq0$ in $Z$ and $f_kX_k\to c\,x$ with $f_k\in\mathbb R$, then $f_k\to c$.
*Proof sketch.* Choose a linear functional $\ell$ with $\ell(x)\neq0$. Then $\ell(X_k)\ne0$ eventually, and $f_k=\ell(f_kX_k)/\ell(X_k)\to c$. *Lean:* [`scale_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L28-L39).

**Lemma VII.5.g (= VII.5.4(a)).**
*Proof sketch.*

1. A04 at degree 4 gives thresholds beyond which $X_k:=r_k\,U_k(5)^{-1}\partial^V_4U_k(4)\to x:=\partial^W_4$.
2. A05 at degree 4, applied to $(J,p,Y)$, gives thresholds beyond which $(r_k/\xi_k)\,U_k(5)^{-1}p_4U_k(4)\to\kappa\,\partial^W_4$.
3. Take the componentwise maximum of the two sets of thresholds.
4. Substituting $p_4=c\,\partial^V_4$ in step 2 gives $(c/\xi_k)X_k\to\kappa x$, where $x\ne0$ is part of the free data. Lemma VII.5.f gives $c/\xi_k\to\kappa$.

The transport is $U_k(d+1)^{-1}(\,\cdot\,)U_k(d)$, as defined by [`carry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Tests.lean#L44-L45) and [`aisle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Tests.lean#L49-L57).

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

**Lemma VII.5.k (asymptotic identity).** Under the hypotheses of VII.5.5(c), for $d\le D$, $\Pi^{(k)}_d:=(A^{(k)}_d)^{-1}X^{(k)}_d\to1$ in operator norm.
*Proof sketch.*

1. Put $\Phi^{(k)}_d:=(A^{(k)}_{d+1})^{-1}\iota^VA^{(k)}_d$. Then

   $$\Pi^{(k)}_{d+1}v=\Phi^{(k)}_d\,\Pi^{(k)}_d P_dv+(v-\iota^WP_dv),\qquad \Pi^{(k)}_0=1 .$$

2. $\Phi^{(k)}_d\to\iota^W$ pointwise by hypothesis, hence in norm (finite dimension).
3. By induction, $\Pi^{(k)}_dP_dv\to P_dv$.
4. Therefore $\Pi^{(k)}_{d+1}v\to\iota^WP_dv+v-\iota^WP_dv=v$. Finite dimensionality converts pointwise convergence to operator-norm convergence.

*Lean:* [`perturb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L106-L108), [`perturb_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L113-L129).

**Lemma VII.5.l (bijectivity and the new frames, VII.5.5(c)).**
*Proof sketch.*

1. $\Pi^{(k)}_d\to1$ in norm, and injective operators form an open set. So $\Pi^{(k)}_d$, and hence $X^{(k)}_d$, is injective for large $k$.
2. $\dim\mathcal F^\circ_d=\dim\mathcal F_d$ (by $A^{(k)}_d$), so $X^{(k)}_d$ is bijective.
3. Hence $\widetilde X^{(k)}_d=X^{(k)}_d$ eventually, and $(A^{(k)}_d)^{-1}\widetilde X^{(k)}_dv\to v$ for every $v$.
4. Intersect the eventual sets for $d=0,\ldots,D$. If the original frames satisfy the symmetry and unit conditions of (b), all corrected frames then agree with the exactly compatible maps $X^{(k)}_d$ on this degree range.

*Lean:* [`eventually_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L131-L135), [`rotate_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L142-L143), [`relative`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L144-L148).

*Use.* In VII.1 the frames of the free-field scaling sequence intertwine the inclusions only asymptotically. VII.5.5 replaces them by frames that are exactly graded for all large $k$ and asymptotically equal to the original ones, as tracking requires ([`tune_grades`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159)).

### 4.4 Finite-dimensional convergence (VII.5.6)

**Lemma VII.5.m (= Proposition VII.5.6).**
*Proof sketch.*

- (a) A linear left inverse $g$ of $f$ is continuous in finite dimension, so $a_y=gf(a_y)\to gf(e)=e$.
- (b) Every point of $(\mathbb R^4)^n$ is $\sum_{i,a}v_{i,a}e_{i,a}$. Hence evaluation at the $4n$ coordinate vectors is an injective real-linear map from the space of complex-valued real-linear maps to $\mathbb C^{4n}$, and (a) applies.

*Lean:* [`norm_fit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L44-L51), [`components`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L55-L60), [`norm_fit_deriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L63-L70).

### 4.5 The classical stress-tensor algebra (VII.5.7)

**Lemma VII.5.n (covariance of $\mu^1,\mu^2$).** For a signed permutation $t$ with signs $\varepsilon_t(\cdot)$:

$$t\cdot\mu^2_a=\varepsilon_t(a)\,\mu^2_{t(a)},\qquad t\cdot\mu^1_a=\varepsilon_t(a)\,\mu^1_{t(a)} .$$

Both are real.
*Proof sketch.* $t$ multiplies $\langle F_{ij},\partial_bF_{ij}\rangle$ by $\varepsilon(i)\varepsilon(j)\,\varepsilon(b)\varepsilon(i)\varepsilon(j)=\varepsilon(b)$ and relabels the indices. The double sum over $(i,j)$ is invariant under reindexing by $t$. For $\mu^1_b$, the sign is $\varepsilon(b)^3\varepsilon(i)^2=\varepsilon(b)$, and the remaining index is reindexed in the same way. Reality follows from the real inner products. *Lean:* [`momentum2_turn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L21-L24), [`momentum1_mem`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L28-L34), [`momentum2_mem`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L25-L27), [`sumPerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L17-L20).

**Lemma VII.5.o (affine shells).** Every degree-0 radial jet is realised by a free Maxwell field with constant curvature and an affine potential.
*Proof sketch.* The associated potential has constant curvature, so $\sum_a\partial_aF_{ab}=0$. *Lean:* [`shell_affine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L43-L50). VII.2 uses this, with its degree-1 analogue [`shell_quadratic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L52-L61), to build test jets on Maxwell solutions.

**Consequences in VI.1 and VII.2.** Write $T^{(0,w)}:=T^{(0,w_0,w_1,w_2)}$ for $w\in\mathbb R^3$.

1. *Trace (VI.1).* $\sum_aT^{(0,w)}_{aa}=4(w_0+4w_1)\,\mathfrak s$. In particular $T^{\mathrm{can}}$ is traceless ([`mechanical_trace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L67-L69), [`conformal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L71-L72)).
2. *Divergence (VII.2).* $\delta(w)_b=\sum_a\partial_aT^{(0,w)}_{ab}$ ([`euler`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L38-L52)). The key identity is the Bianchi consequence

   $$\sum_{a,i}\langle F_{ai},\partial_aF_{bi}\rangle=\tfrac12\mu^2_b .$$

   With it, the shear part $\sum_{a\ne b}\partial_a\sum_i\langle F_{ai},F_{bi}\rangle$ equals $E_b+\frac12\mu^2_b-2\mu^1_b$.
3. *Coordinates (VII.2).* For simple $\mathfrak g$, $\beta$ and $\delta$ are bijections $\mathbb R^3\to\mathcal R_1$ ([`coordinates1`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L112-L124), [`bareCoordinates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L54-L63)). Under the same simplicity hypothesis, $\beta(w)$ vanishes on free Maxwell solutions if and only if $w_0=w_1=0$ ([`through_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L96-L110)).
4. *Conservation of the canonical tensor (VII.2).* $\delta(1,-\tfrac14,1)=E$: $T^{\mathrm{can}}$ is conserved on the equations of motion ([`eom_vector_raw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L73-L74)).
5. *The functional $\rho$ (VII.2).* For simple $\mathfrak g$, define $\rho:\mathcal R_1\to\mathbb R$ by $\rho(\delta(w)):=-4(w_0+4w_1)$. Then $\sum_aT^{(0,w)}_{aa}=-\rho(\delta(w))\,\mathfrak s$. The functional $\rho$ vanishes on vectors whose components vanish on free Maxwell solutions ([`rho`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L78-L80), [`rho_eom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L85-L88)).

For simple $\mathfrak g$, a tensor in this four-parameter family is conserved on free Maxwell fields precisely when it is a multiple of $T^{\mathrm{can}}$ plus a constant multiple of $\delta_{ab}\mathbf1$. With the unit term removed, its trace is determined by its divergence through $\rho$. VII.2 uses this functional in [`Lease`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Lease.lean#L22) and its limiting comparison [`mere`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Token.lean#L75-L88).

## 5. Where the difficulty lies

The logarithmic coupling law uses only the uniform running clause and elementary real analysis. The analytic work lies in the upstream one-loop estimate, the coupling reset and the construction of a trajectory reaching $\bar\beta$ at unit scale. The auxiliary results use finite-dimensional linear algebra, equivariant averaging and scalar-ratio limits.

The result is uniform both in the volume index $p$ and in the finer lattice level $N\ge m$. Thus VII.5.3 allows arbitrary volume sequences. If inverse couplings converge as $N,p\to\infty$ at fixed $m$, their limits inherit the non-strict bound $|\beta/s_m-2b_0|\le\varepsilon$ for $m\ge m_0(\varepsilon)$. Existence of those limits and comparison with a coupling defined by continuum correlations require separate results.

Only the leading logarithm is established here, for the coefficients of the lattice effective actions. No two-loop correction or $\Lambda$-parameter is asserted. The main theorem uses VII.5.1 through (Reg1), retaining only the existence of a positive slope. Proposition VII.5.3 is not used in the assembly.

The 38 auxiliary declarations serve other parts of the proof: stress normalisation in VI.2, frame correction in VII.1, convergence in III.12, and classical stress algebra and read-out estimates in VI.1 and VII.2.

## 6. Notation

| object | code name | proposed notation |
|---|---|---|
| Casimir constant | [`YM.Gauge.casimir`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182) | $C_{\mathfrak g}$ ($=2q^2$ for $SU(q)$) |
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
1. **The upstream one-loop calculation.** The transfer bound is traced through the coupling reset and the one-loop shift bound in §2. The evaluation of the momentum integral giving $11C_{\mathfrak g}/(24\pi^2)$ belongs to III.7; its analytic proof is not verified here. The coupling results in this unit take the construction conditions as hypotheses.
2. **The coupling after the limits.** The assessment's Theorem 7.2 concerns $g_W(r)$ after removal of the initial cutoff and a subsequential infinite-volume limit, together with comparison to a coupling read from continuum correlations. VII.5.3 proves the lattice-stage law. A declaration establishing the additional limits and comparison has not been identified here (tentative). The files `Beacon`, `Hymnal` and `Musicology` in `YM/RemainderComparison` are possible starting points.
3. **Existence of the comparison inputs.** VII.5.4 assumes the free Maxwell data of VI.2 and a Euclidean hierarchy on $S$; it gives a conclusion for every tracking sequence meeting its finite thresholds. It does not construct such sequences. Their existence belongs to VI.1 and VII.1. Likewise, the supply of the read-out bound in III.2 uses the hypotheses of the theorem linked in §2; the underlying one-step estimates are outside this unit.

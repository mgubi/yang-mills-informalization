# III.9. The marginal flow: the running coupling and its reset

*Part III — Ultraviolet construction (renormalization group).* 7,215 lines of Lean in 1,261 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is **checked** against the Lean and **edited** in three rounds by three models. It is updated as it improves.


**Part:** III, Ultraviolet construction (renormalization group). **Lean:** chapter 21: [`YM/UVNext/COUPLING_RESET/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET), [`YM/AnalyticBridge/VERIFIED_RESET_STEP/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP), [`YM/Extra/WILSON_STARTUP/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP), [`YM/Push/BETA_TRANSPORT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/BETA_TRANSPORT), [`YM/Further/STRONG_STARTUP_CREDIT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT), [`YM/Push/PRICE_COMPILER/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER), [`YM/Extra/MULTISOURCE_BOUNDS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS). It also includes five small packages: [`PhysicalNext/UNMASKED_THROUGH_LAUNCH`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH), [`Planned/RECIPE_STARTUP_PORT`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/RECIPE_STARTUP_PORT), [`R2I/Wind`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Wind), [`Further/THRESHOLD_SOURCE_RESTART`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/THRESHOLD_SOURCE_RESTART) and [`PhysicalNext/SERVICE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/SERVICE). The interfaces this unit fills are in [`YM/RG/History.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean) and [`YM/PCalc/Band.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean), both in unit III.1. **Size:** 7,215 lines in the main-theorem closure:

| package | lines |
|---|---|
| verified reset step | 2,659 |
| Wilson start-up | 2,422 |
| transport of the coupling | 652 |
| coupling reset | 592 |
| multi-source bounds | 344 |
| each remaining package | at most 213 |

**Conventions.**

- **Levels.** Levels $m=0,1,\dots,N$ run from the coarsest to the finest:
  - $m=0$ is the torus of side $L_p$ at unit spacing; the sides $L_p$ are multiples of $4$ and strictly increase with $p$;
  - $m=N$ is the Wilson lattice.
- **Blocking.** The step $m+1\to m$ blocks by an odd factor $L_m\ge3$. The spacing at level $m$ is $a_m=(L_0\cdots L_{m-1})^{-1}$, and the scale is $s_m:=\log(1/a_m)=\sum_{i<m}\log L_i$. We write $\Lambda_m$ for the level-$m$ torus (at volume index $p$) and $|\Lambda_m|$ for its number of sites.
- **Gauge group.** $G\subset U(n)$ is closed, and its Lie algebra $\mathfrak g$ carries the inner product $\langle X,Y\rangle=-\mathrm{Re}\mathrm{tr}(XY)/n$.
- **Plaquettes.** $s(u)=1-\mathrm{Re}\mathrm{tr}u/n$ is the plaquette function. $F_p(U)\in\mathfrak g$ is the orthogonal projection of $\tfrac12(U_p-U_p^{-1})$, and $S_W=\sum_p s(U_p)$ is the Wilson action. Since $s(e^X)=|X|^2/2+O(|X|^4)$, the inverse coupling $\beta$ equals $1/g_0^2$ in this normalization.

**Effective actions.** An effective action at level $m$ is a *representation* $\rho=(P,c,E,K,b,\beta,v)$. It evaluates to
$$\rho(U)=\exp\big(v|\Lambda_m|-\beta\,\mathcal K_P(U)-\mathcal L_P(U)-\mathcal E(U)\big)\,\mathcal G(U).$$

- **The kinetic functional $\mathcal K_P$.** This is the $\beta$-coefficient of the leading terms of the path data $P$:
  - a clipped plaquette term;
  - smeared curvature-squared terms;
  - cubic and quartic local polynomials in curvatures along lattice paths.

  These are averaged over the point group of the lattice, i.e. signed permutations of the axes.
- **The other factors.** $\mathcal L_P$ is the $\beta$-independent loop functional. $\mathcal E$ is the sum of the regular activities multiplied by their small-field indicators. Their weighted norms are summed at each anchor. $\mathcal G$ is the gas of forced activities, whose weighted uniform bounds are summed over supports containing each site. $b=(k,q,a,B,t)$ records the derivative order $k\ge6$, spatial power $q\ge2$, support exponent $a>0$, cover radius $B\ge1$ and threshold $0<t\le1$ of the polymer norms.
- **Normalization.** The zero-momentum quadratic symbol of the $\beta$-term is the identity on plaquette orientations. The loop kernel has vanishing zeroth and first moments. These conditions fix the normalization of $\beta$ within the representation.

**The block-spin step.** $T^{(m)}_{\beta'}$ denotes one step from level $m+1$ to level $m$ at inverse coupling $\beta'$:
$$(T^{(m)}_{\beta'}\rho')(V)=\int k_{\beta'}(V,U)\,\rho'(U)\,dU.$$
The kernel $k_{\beta'}$ is a probability kernel (unit III.1). Densities are taken relative to product Haar probability measure and are not normalized.

## 1. What this unit proves

This unit tracks the scalar coefficient $\beta$ of the normalized curvature-squared term through the blocking history. Its three results are:

- **(a) Start-up.** With the start-up bounds, Wilson top path data and recipe acceptance, the Wilson weight at the finest level is admissible for every $\beta$ in the band.
- **(b) One step.** Given the early presentation, local bounds, numerical conditions and recipe acceptance stated below, one block-spin step followed by a *reset* of $\beta$ maps a continuous admissible family at level $m+1$ to one at level $m$. The coupling moves by $\alpha_{N,m}+d$, where $\alpha_{N,m}$ is the one-loop coefficient of the step and $|d|\le r_m\le1$.
- **(c) Thresholds.** The delay-dependent numerical conditions hold beyond entry thresholds, provided the earlier constants satisfy the compatibility inequalities of III.9.7. These choices respect the order of constants in III.2.

Combined with the shooting argument of III.2 and the constructions of III.10 and III.13, this yields the selected history of III.9.3 and the law $\beta_{N,p}/\log(1/a_N)\to\kappa$ of the main theorem.

**Proposition III.9.1 (the slope constant).** Let $\mathfrak g$ be simple and nonabelian, and let $(b_i)$ be an orthonormal basis of $(\mathfrak g,\langle\cdot,\cdot\rangle)$. Put
$$C_G=-\frac1{\dim\mathfrak g}\sum_i\mathrm{tr}_{\mathfrak g}\big((\mathrm{ad}b_i)^2\big),\qquad \kappa=\frac{11\,C_G}{24\pi^2}.$$
Then $\kappa>0$.

Here $C_G$ is the adjoint Casimir in the chosen inner product, and $\kappa=2b_0$ in the conventional one-loop notation $b_0=11C_G/(48\pi^2)$. For $SU(N)$ in the defining representation, this normalization gives $C_G=2N^2$ and $\kappa=11N^2/(12\pi^2)$.

The invariant form $-\mathrm{tr}(\mathrm{ad}X\,\mathrm{ad}Y)$ is $C_G\langle X,Y\rangle$. Its value at $(X,X)$ is $\sum_i|[X,b_i]|^2$, and nonabelianness makes this positive for some $X$. Thus $C_G>0$.

*Status:* definition; positivity is a theorem and uses simplicity. Inside this unit only two things are used: $\kappa>0$, and the identity $\hat\beta_{m+1}=\hat\beta_m+\kappa\log L_m$. The fact that the one-loop coefficient of the actual blocked action is $-\kappa\log L+O(1)$ is proved in III.7, where $11/(24\pi^2)$ is the value of an explicit momentum integral (§2).

*Lean:* [`YM.Gauge.slopeConstant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184), [`YM.Gauge.casimir`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182), [`YM.Gauge.slopeConstant_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176), [`YM.Gauge.trace_color`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L71-L75).

**Proposition III.9.2 (reference coupling and scale functions).** Fix $\kappa>0$, $\bar\beta>1$ and an infinite sequence of odd block factors $L_m\ge3$. Define
$$\hat\beta_m=\bar\beta+\kappa s_m,\quad M_m=e^{(\log\log\hat\beta_m)^2},\quad t_m=\hat\beta_m^{-1/2}M_m,\quad \varepsilon_m=\hat\beta_m^{-11/10},\quad \tilde\varepsilon_m=e^{-M_m^{1/5}},$$
and set $B_m=\lceil(\log\hat\beta_m)^2\rceil$ and $\mathfrak B_m=[\hat\beta_m/2,\,2\hat\beta_m]$. These are, in order: the reference coupling, the threshold multiplier, the small-field threshold, the regular and forced allowances, the cover size and the band.

Then $\hat\beta_{m+1}=\hat\beta_m+\kappa\log L_m$, $\hat\beta$ is nondecreasing, and $s_m\ge m\log3$, so $\hat\beta_m\to\infty$.

The scale conditions are *hypotheses* on the scale sequence, not consequences of the definitions. They are:

- **Size conditions.** $\hat\beta_m>1$ and $t_m\le1$. For every volume index $p$, the level-$m$ side is at least $100(B_m+1)$, and the level-$(m+1)$ side is at least $100(R_m+1)$, where $R_m$ is the block-patch radius.
- **Stage index.** The stage index satisfies $J_m\ge4$, is nondecreasing, $J_{m+1}\le J_m+1$, and $J_m\to\infty$. The derivative orders, spatial powers and support exponents are nondecreasing along the levels. There are nondecreasing stage block factors $\ell_j$ with $L_m=\ell_{J_{m+1}}$.
- **Smallness exponent.** $0<\theta_{J_m}\le1/J_m$, and $\theta$ is antitone.
- **Gentle scales.** $\log L_m/s_m\to0$.
- **Drift and logarithmic costs.** With $\omega_j$ the drift allowance of stage $j$,
  $$\frac{\omega_{J_{m+1}}}{\log L_m}\le J_{m+1}^{-2},\qquad \frac{\log(1+\text{paths}+\text{width}^{-1}+\text{columns}+\text{relaxation}+\text{support exponent})_{J_{m+1}}}{\log L_m}\le J_{m+1}^{-2}.$$

*Status:* definitions (III.1) and elementary theorems. The scale conditions are part of the scale sequence produced in III.2.

*Lean:* [`Calendar.hatBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79), [`threshold`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L83), [`allowance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L84), [`forcedAllowance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L85), [`coverSize`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L82), [`Calendar.Fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L97-L118), [`Shoot.band`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L63), [`Deployment.hat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Levels.lean#L43-L45), [`Timing.hat_mono`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Fast.lean#L40-L42), [`Schedule.divergent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L117-L120).

**Proposition III.9.3 (selected histories).** A *history* assigns to all $N,p$ and $m\le N$ a level-$m$ representation $\rho_{N,p,m}$ with coupling $\beta_{N,p,m}$. It is *selected* if the following hold.

1. **Common path data.** The path data $P_{N,m}$ of $\rho_{N,p,m}$ do not depend on $p$.
2. **Shape.** $\rho_{N,p,m}$ carries the level-$m$ norm parameters and clip. It is lawful at level $m$:
   - its path data obey the stage bounds, with loop cap $2M_m^{\theta_{J_m}}$;
   - its regular activities are local, gauge invariant, vanish at the flat field, and have zero Hessian on affine link directions whenever their supports do not wrap; their norm bound is $\varepsilon_m$;
   - its forced activities satisfy the locality, eligibility and symmetry conditions of II.2, with norm bound $\tilde\varepsilon_m$.

   The whole activity family transforms under translations and signed permutations of the axes.

   Moreover $\beta_{N,p,m}\in\mathfrak B_m$.
3. **Start.** $v_{N,p,N}=0$ and $\rho_{N,p,N}(U)=e^{-\beta_{N,p,N}S_W(U)}$ for all $U$.
4. **Transfer.** For $m<N$, $\rho_{N,p,m}=T^{(m)}_{\beta_{N,p,m+1}}\rho_{N,p,m+1}$ at every configuration, and
   $$|\beta_{N,p,m+1}-\beta_{N,p,m}-\kappa\log L_m|\le\omega_{J_{m+1}}.$$
5. **End point.** $\beta_{N,p,0}=\bar\beta$.
6. **Running.** For every $\varepsilon>0$ there is $m_0$ with $|\beta_{N,p,m}-\hat\beta_m|\le\varepsilon s_m$ for all $m\ge m_0$, $N\ge m$ and all $p$.

*Consequences:*

- **Partition function.** For all $m\le N$, $\int\rho_{N,p,m}\,d\mathrm{Haar}=Z_W(\Lambda_{N,p};\beta_{N,p,N})$, the Wilson partition function.
- **Running law.** $\beta_{N,p,m}/s_m\to\kappa$ uniformly in $N\ge m$ and $p$, because $s_m\to\infty$.
- **Bare coupling.** The bare coupling of the Wilson family, $\beta_{N,p}:=\beta_{N,p,N}$, satisfies $\sup_p|\beta_{N,p}/\log(1/a_N)-\kappa|\to0$. This is (Reg1) of the main theorem with $b_*=\kappa=2b_0$. The continuum running-coupling comparison belongs to VII.5.

*Status:* (1)–(6) are a specification (III.1). It is proved for the history of the main theorem in III.13 ([`Spire.Uses.exists_bolt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Spark.lean#L78-L85)), using the reset steps of III.9.5, the step program from III.10, and the finite-cutoff construction of Lemma 4.22. The interval shooting of Lemma 4.20 also gives a selected history from the step program. In both constructions, Lemma 4.21 derives (6) from (4) and (5).

The partition identity follows by induction from probability-kernel normalization and integrability of lawful representations. The calibration condition of VIII.1 requires one datum (scales, kinetic data and recipe) and one family of trails realizing this history, with every step a reset step for all $N,p$ and $m<N$.

*Lean:* [`History.Selected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L234-L240), [`Conv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L213-L218), [`Transfer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L223-L227), [`Running`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L229-L230), [`History.partition_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L242-L249), [`Spec.Calibrated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L58-L61).

**Proposition III.9.4 (one reset step along a curve).** Fix a datum $\mathfrak D$ consisting of three things:

- levels satisfying the scale and kernel conditions of III.9.2 and §2, and meeting the entry thresholds of the fixed numerical choices;
- a compatible horizon, a local Haar chart, positive post-block constants, and kinetic data $(\alpha_{N,m},P_{N,m})$ satisfying the planned one-loop conditions (§2);
- a recipe, with initial, retention and continuation tests.

Fix $N,p$ and $m<N$, let $I=[l,u]$ with $l\le u$, and let $x\mapsto\rho'_x$ ($x\in I$) be a continuous curve of admissible level-$(m+1)$ representations.

- *Admissible* means: path data $P_{N,m+1}$, the level-$(m+1)$ norm parameters and clip, lawful with the level-$(m+1)$ constants, and accepted by the recipe.
- *Continuous* means: $\beta$ and $v$ are continuous; the regular and forced addresses, including supports, inventories and eligibility tests, are fixed; and the coefficients vary continuously in the weighted sum of regular sup-jet norms and forced uniform norms. Regular jets are measured only where their supports are small-field, at the prescribed derivative order and spatial power.

Write $\beta'_x=\beta(\rho'_x)$ and $H_x=T^{(m)}_{\beta'_x}\rho'_x$. Let $(c_m,r_m)$ be the reset constants of the stage pair $(J_{m+1},J_m)$, with $c_m>0$ and $0<r_m\le1$. Let $g=g_{J_{m+1}}>0$ be the prescribed fine-stage forced-decay constant. Assume:

- **(P) Priced.** $\eta=\eta_{J_m}$ is a sensor constant (Lemma 4.7), and $2(c_m+1)\varepsilon_m\le\eta\,t_m^2\,r_m$.
- **(V) Probe.** $V$ is a small-field configuration with $\mathcal K_{P_{N,m}}(V)\ge|\Lambda_m|\eta t_m^2$. Such a $V$ exists by (P).
- **(I) Income.** There is a family $F(x,d)$, $x\in I$, $|d|\le r_m$, of level-$m$ activities with fixed addresses, valid with $(\varepsilon_m,\tilde\varepsilon_m)$. Assume the catalogue conditions: each coefficient is continuous in its regular sup-jet norm or forced uniform norm, and every convergent parameter sequence admits a subsequence with common summable majorants in those weighted norms. Moreover $H_x(1),H_x(V)>0$, and
  $$\Big|(\beta'_x+\alpha_{N,m})\mathcal K(V)+\mathcal L(V)-\log\frac{H_x(1)}{H_x(V)}\Big|\le|\Lambda_m|c_m\varepsilon_m,$$
  $$|\mathcal E_{F(x,b)}(V)-\mathcal E_{F(x,a)}(V)|\le|\Lambda_m|c_m\varepsilon_m|b-a|.$$
- **(R) Remainder.** Put
  $$\mathrm{shape}_{x,d}(U)=e^{-(\beta'_x+\alpha_{N,m}+d)\mathcal K(U)-\mathcal L(U)-\mathcal E_{F(x,d)}(U)}\,\mathcal G_{F(x,d)}(U).$$
  Require:
  - *Shape control:* $|\mathrm{shape}_{x,a}(U)-H_x(U)/H_x(1)|\le C_{x,U}\,|f(x,a)|$ for all $U$ and $|a|\le r_m$, where $f$ is the scalar residual of Lemma 4.9 and, for each $x,U$, a finite $C_{x,U}\ge0$ works for every $|a|\le r_m$;
  - *Forced bound:* the forced activities are bounded by $e^{-g\,M_{m+1}^2}$;
  - *Recipe:* the recipe accepts every exact trial.

Conclusion. There is a continuous $d:I\to[-r_m,r_m]$ with the following properties. Let $\rho_x$ have path data $P_{N,m}$, activities $F(x,d(x))$, coupling $\beta'_x+\alpha_{N,m}+d(x)$ and $v_x=|\Lambda_m|^{-1}\log H_x(1)$. Then:

- $x\mapsto\rho_x$ is a continuous curve;
- $\rho_x=H_x$ at every configuration;
- $\rho_x$ is admissible, its forced activities are bounded by $e^{-gM_{m+1}^2}$, and $|\beta(\rho_x)-\beta'_x-\alpha_{N,m}|=|d(x)|\le r_m\le1$.

Exact density transfer, recipe continuation, admissibility, the stronger forced bound and the error bound $|\beta-\beta'-\alpha_{N,m}|\le1$ define a *reset step*. Without (R), the same $d$ is the unique zero in $[-r_m,r_m]$ of the scalar residual. In that case $\rho_x(1)=H_x(1)$ and $\rho_x(V)=H_x(V)$.

*Status:* theorem.

*Lean:* [`CouplingReset.advance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L175-L189), [`correct`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L157-L173), [`Income`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L78-L85), [`Remainder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L97-L103), [`PricedReset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L66-L69), [`Usable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L55-L58), [`Directed.Move`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L49-L55).

**Proposition III.9.5 (explicit reset and step program).**

(a) *Explicit correction.* Fix the datum, input curve and reset constants of III.9.4, and assume $G$ is simple and the input couplings lie in $\mathfrak B_{m+1}$. Suppose that, for every $x\in I$, the blocked density has the early presentation
$$H_x(U)=\exp\Big(\tau_x|\Lambda_m|-\beta'_x\mathcal K(U)-\mathcal L(U)-\sum_i\chi_{X_i}(U)E_{x,i}(U)\Big)\,\mathcal G_x(U)\,e^{-\alpha_{N,m}\mathcal S(U)},$$
where $\chi_X$ indicates that $X$ is small-field and $\mathcal S$ is the masked quadratic receipt of the coarse path data. Assume:

- The early regular functions are local, gauge invariant and smooth through the required derivative order. Their sup-jet bounds $h_{x,i}\ge0$ satisfy, at every anchor $o$,
  $$\sum_{i:o_i=o}e^{(a+3)\,\mathrm{cover}_{B_m}(X_i)}h_{x,i}\le H_x^{E},$$
  where $a$ is the level-$m$ support exponent. The early forced functions satisfy the forced-family conditions and a site-pinned bound $w_x$ at support exponent $a+1$. The full family transforms under translations and the point group.
- The addresses are fixed along $I$, and the early functions satisfy the coefficient-continuity and summable-tail conditions used in III.9.4(I).
- The reset is priced; the clip is compatible with the coarse norm parameters; and the width and cubic conditions hold. There are numerical output bounds $e_x,k_x$ such that $H_x^E\le c_m\varepsilon_m/4$, the regular and forced reorganization estimates fit within $e_x,k_x$, and these bounds imply both validity with $(\varepsilon_m,\tilde\varepsilon_m)$ and the forced bound $e^{-gM_{m+1}^2}$. These are the fee and closure conditions of Lemma 4.17.
- The recipe accepts the reorganized representation and its continuation from $\rho'_x$.

Then the reset correction is the isotropic Hessian coefficient $\delta_x$ of the early regular functions (Lemma 4.12):
$$d(x)=\delta_x,\qquad \beta(\rho_x)=\beta'_x+\alpha_{N,m}+\delta_x,\qquad t_m^2|\delta_x|\le H_x^E\le c_m\varepsilon_m/4,\qquad v_x=\tau_x-|\Lambda_m|^{-1}\sum_iE_{x,i}(1).$$
The output is continuous and has all the properties of III.9.4. The Gaussian-sector formulation additionally requires its integration licenses and the identity between that integral and the push; a direct early presentation of the push supplies the equality used in the reset.

(b) *Program.* Assume $G$ is simple. Suppose the numerical conditions above hold at every level, the early presentation and its local bounds and continuity are available along every continuous admissible input curve with couplings in $\mathfrak B_{m+1}$, and the recipe accepts these outputs. Suppose also that the start-up curves below exist and pass the recipe's initial and retention tests. Then:

- For all $N,p$, there is a continuous admissible curve $\beta\mapsto F(\beta)$ on $\mathfrak B_N$ with coupling $\beta$, vacuum constant $0$ and density $e^{-\beta S_W}$, passing the initial tests.
- For all $N,p,m<N$, every continuous admissible input curve on a closed interval has, when its couplings lie in $\mathfrak B_{m+1}$, a continuous output curve related to it pointwise by reset steps. The finer bound $|\beta-\beta'-\alpha_{N,m}|\le r_m$ also holds.

The output coupling may lie outside $\mathfrak B_m$; shooting restricts the parameter interval to restore the band (Lemma 4.20).

*Status:* conditional theorems. III.10 supplies the physical inputs, including the Gaussian-sector identity and the early presentation. Its [Roost.Factor.worksNow](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Roost/Foundry.lean#L59) concludes the step program from these results.

*Lean:* [`Return.reset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Advance.lean#L64-L90), [`Return.result`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Payment.lean#L56-L57), [`Collection.earlyValue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean#L26-L27), [`Use.supplier`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L85-L88), [`CouplingReset.program`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Stability.lean#L67-L70), [`Supplier.ports`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Stability.lean#L54-L65), [`Directed.Program`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L65-L72), [`Return.Prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Payment.lean#L28-L35), [`Collection.Fees`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Investor.lean#L49-L51), [`Collection.Compared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Comparison.lean#L72-L74).

**Proposition III.9.6 (Wilson start-up).** Let $c$ be a clip and $b$ a set of norm parameters with $0<t\le1$. They are *compatible* if $c_{\rm dir}\le1$, $B\ge2$, and $t\,e^{(B-2)/c_{\rm rel}}\ge2$.

1. **Exact start.** For every $\beta\in\mathbb R$ and every configuration $U$, $\rho^{\rm start}_\beta(U)=e^{-\beta S_W(U)}$. Here $\rho^{\rm start}_\beta$ has:
   - the *Wilson top* path data $P^{\rm top}_c$ (Lemma 4.2);
   - $v=0$;
   - regular activities $\beta(1-c_{\rm dir})\times$ (the one-plaquette residuals of small-field plaquettes), averaged over the point group;
   - forced activities $e^{-\beta\,\mathrm{charge}(D,U)}$, one for each connected component $D$ of the large-field region for the padded adjacency relation.
2. **Residual bound.** For every gauge group $G$ and all orders $k$ and spatial powers $q$ there are $C>0$ and $\delta\in(0,1]$ with the following property. For every set of norm parameters with order $k$, power $q$ and threshold $t\le\delta$, every torus, every plaquette $p$ and every site $o$ of $p$, the residual $R_p$ has weighted sup-jet norm at most $Ct^5$ at $o$.
3. **Eventual bounds and continuity.** For each fixed stage with $c_{\rm dir}\le1$, there is $\beta^*$ such that, for every realized choice of levels and every $N$ at that stage with $\hat\beta_N\ge\beta^*$, the start-up conditions hold: compatibility, small threshold, and the regular and forced norm bounds $\varepsilon_N,\tilde\varepsilon_N$. The start-up curve is continuous on $\mathfrak B_N$. It is admissible for a given recipe if its prescribed top paths are $P^{\rm top}$, these paths satisfy the stage bounds, and its initial and retention tests accept the displayed curve.
4. **Installation.** Suppose the old kinetic data satisfy the planned conditions, the Wilson top paths satisfy the stage bounds, and a revised horizon is supplied whose top quadratic datum is the Wilson one, whose lower data agree with the old horizon, and whose initial stationary guesses agree. Then the kinetic data can be replaced by data for that horizon with $P_{N,N}=P^{\rm top}$, the same $\alpha$, and every planned condition preserved.

*Status:* theorem.

*Lean:* [`WilsonStartup.Start.evaluates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Gas.lean#L96-L103), [`residual_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L76-L101), [`Start.Allows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Cake.lean#L43-L48), [`Timing.enough`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Clock.lean#L113-L139), [`Planned.Port.card`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/RECIPE_STARTUP_PORT/Layout.lean#L52-L71), [`Change.engine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Engine.lean#L62-L82), [`WilsonStartup.Decent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Ownership.lean#L20-L23), [`Design.Suitable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Match.lean#L52-L54), [`Change.Overlay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Engine.lean#L22-L25).

**Proposition III.9.7 (entry thresholds).** Fix a pre-block stage profile and assume $G$ is simple. There are sensor constants $\eta_j>0$, chosen before the block sizes, with the following property. Fix the block factors $\ell_j$, exponents $0<\theta_j\le1$, reset constants, forced-decay forecasts and post-block costs. For each allowed stage transition $i\le j\le i+1$, let $f_{ji}$ be the inherited coefficient and assume
$$8f_{ji}\le q_i\ell_j^{\min},\qquad u_{ji}(x)\longrightarrow0\quad(x\to\infty),$$
where $q_i=1/[64(1+A_i)]>0$, $A_i\ge0$ is the coefficient of the early size in the regular reorganization bound (Lemma 4.17), and $\ell_j^{\min}$ is the preassigned block-size floor.

Every entry-threshold record $V$ has a componentwise increase $U$ such that every further increase $W\ge U$ satisfies the following conditions beyond its thresholds:

- the reset pricing inequality;
- the cubic inequality of Lemma 4.10;
- clip compatibility when $c_{\rm dir}\le1$, the width condition and the regular and forced reorganization inequalities;
- the inherited inequality of Lemma 4.17.

For a realized choice of levels, these conclusions require the same stage profile, block factors and exponents, and payment of the thresholds: $W^{\rm entry}_{J_{m+1}}\le\hat\beta_m$ for every $m$. To obtain III.9.5's physical bounds, also assume $4q_i\le c_{ji}$ and $4g_j\le\mathrm{rate}_{ji}$; raising thresholds does not supply these inequalities or the early presentation. Start-up bounds admit the same monotone choice of thresholds when $c_{\rm dir}\le1$ at every used stage.

*Status:* theorem about numerical conditions, conditional on the compatibility inequalities stated above.

*Lean:* [`Time.beforeWait`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inherited.lean#L75-L89), [`StrongStartup.prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT/Pricing.lean#L87-L107), [`Timing.choose`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Fast.lean#L27-L38), [`Time.credit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Tables.lean#L36).

**Proposition III.9.8 (marker-rooted to site-pinned polymer sums).** Fix $M,\mu\in\mathbb N$, $a\in\mathbb R$ and $c\ge0$. Let $(X_i)$ be polymers on a four-dimensional torus with weights $f_i\ge0$, indexed by an arbitrary set. Fix a finite set of marker names; each polymer carries a subset of these names, the markers sitting at sites $o(v)$, with at most $\mu$ markers per site. Suppose that every polymer with $f_i>0$ contains the site of one of its markers, and that for every marker $v$
$$\sum_{i:\,v\text{ is a marker of }i}e^{(a+1)\,\mathrm{cover}_M(X_i)}f_i\le c .$$
All sums of nonnegative terms here are required to be summable, including when the index set is uncountable.
Then for every site $x$
$$\sum_{i:\,x\in X_i}e^{a\,\mathrm{cover}_M(X_i)}f_i\le\mu\,e\,(2(16M+9))^4\,c ,$$
uniformly in the size of the torus.

*Status:* theorem. It is used for observable insertions in III.12 and III.15, not for the coupling flow.

*Lean:* [`Extra.Multi.root_hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Root.lean#L161-L199).

**What the rest of the construction uses.**

- The shape, band and transfer clauses of III.9.3.
- The reference coupling $\hat\beta$ used in the later estimates.
- The step program III.9.5(b), the input of the shooting.
- The finer accuracy $|\beta_{N,p,m}-\beta_{N,p,m+1}-\alpha_{N,m}|\le r_m$.
- III.9.8.

## 2. What it uses

- **III.1 (block-spin step and interfaces).** This unit uses:
  - the step $T^{(m)}_\beta$ with its symmetry, gauge covariance and probability normalization ([`Calendar.op`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L88-L91), [`BlockControl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L120-L128), [`StepData.push_integral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Push.lean#L37-L43));
  - the interface records for histories and selection, the datum $\mathfrak D$ ([`Directed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L26-L36)), and reset step / program;
  - the conversion of a reset step into the transfer inequality ([`Directed.links`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L57-L63)). This uses $|\beta-\beta'-\alpha|\le1$ and $|\alpha+\kappa\log L|+1\le\omega$.
- **II.2 (polymer activities).** Representations, activities, their bounds and the large-field masks: [`Rep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L165-L171), [`Activities.Valid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L106-L111), [`EBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L98-L100), [`KBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L102-L104), [`PathData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L150-L154), [`PathData.Bounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L173-L185).
- **III.2 (order of constants and shooting).** This unit uses:
  - the constants chosen before the block size, and the block sizes ([`Supply.Sheet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35), [`Supply.Large`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L39-L48)). At each used stage, the block factor $\ell_j$ satisfies $\omega_j/\log\ell_j\le\kappa/4$ and $\omega_j/\log\ell_j\le j^{-2}$.
  - the record of the scale sequence having met every entry threshold ([`Supply.Paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162));
  - the shooting construction and the running estimate (Lemmas 4.20–4.21).
- **III.7 (one-loop coefficient).** The kinetic data satisfy the planned conditions ([`Kin.Planned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L93-L115)). Among them:
  - $|\alpha_{N,m}+\kappa\log L_m|+1\le\omega_{J_{m+1}}$;
  - the Hessian of the fluctuation term (fine loop functional plus $\tfrac12\log\det$ of the fluctuation Hessian minus the log Haar Jacobian) agrees with that of $\alpha_{N,m}$ times the coarse quadratic action plus the coarse loop functional, with an error bounded by $|\Lambda_m|\Gamma\Lambda e^{-c\,\mathrm{side}(\Lambda_m)}$ on every pair of bounded plane-wave directions ([`FiniteBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L62-L71));
  - $P_{N,N}$ matches the Wilson energy to fourth order.

  The bound on $\alpha$ comes from [`Stationary.pouring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L17-L52), which, for fixed admissible analytic input parameters, constructs one-loop coefficients and constants $D\ge0,L_{\min}$ with $|\alpha+\kappa\log L|\le D$ for every odd $L\ge L_{\min}$ ([`HorizCalc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L20-L23)). The constant is produced by two steps:
  - the scalar-minus-half-vector bubble equals $2\,\mathrm{pole}(p)$, where $\mathrm{pole}(p)=4C_G\big(p_1^2|p|^{-6}-4p_1^2p_0^2|p|^{-8}-|p|^{-4}\big)$ ([`haloRate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L127-L141), [`poleVec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L125));
  - $(2\pi)^{-4}\int_{\mu\le|p|\le1}\mathrm{pole}=-\kappa\log\mu^{-1}$ ([`poleSpin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L326-L338)), with the remaining errors bounded ([`absoluteGeode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L346-L408)).

  The angular average of $\mathrm{pole}$ is $-\tfrac{11}{3}C_G|p|^{-4}$, the classical split $\tfrac13-4$ into orbital and spin parts.
- **III.13 (kinetic data and history).** Finite-cutoff kinetic data are built by downward recursion in $m$. The limiting one-step relation used to compare such data contracts with factor $\tfrac12$ ([`Reward.fieldArray`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Tides.lean#L15-L46), [`Reward.step_contracted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/AtLimit.lean#L46-L66), [`Reward.ties`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Tides.lean#L49-L62)). The selected history of the main theorem is also built there.
- **III.10 and III.4 (the nonlinear step).** These provide the hypotheses of III.9.5:
  - the identification of the blocked density with a Gaussian-sector integral ([`Return.earnings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inputs.lean#L56-L61));
  - its early presentation ([`Return.atlas`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inputs.lean#L70-L71));
  - the local activity bounds ([`Collection.Local`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Trays.lean#L35-L40)), continuity and recipe acceptance.

  These are delivered by [`Rain.glazing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Rain/Glazing.lean#L97-L104) and [`Roost.Factor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Roost/Foundry.lean#L26-L50).
- **I.1 and III.16 (analytic toolkit).** Lie-group facts and Taylor jets of the plaquette function.

**Standard mathematics.**

- Intermediate value theorem, and continuity of the inverse of a uniformly increasing family.
- Taylor's formula with uniform constants on compact sets.
- Schur's lemma: an $\mathrm{Ad}$-invariant bilinear form on a simple $\mathfrak g$ is a multiple of the inner product.
- The representation theory of the hyperoctahedral group on plaquette orientations, used through explicit reflections and permutations.
- Fourier analysis on tori, analytic matrix inversion and exponential decay of Fourier coefficients.

References:

- One-loop $\beta$-function: Gross–Wilczek, *Phys. Rev. Lett.* 30 (1973) 1343; Politzer, *Phys. Rev. Lett.* 30 (1973) 1346.
- The orbital/spin split $\tfrac13-4$: Nielsen, *Am. J. Phys.* 49 (1981) 1171; Hughes, *Nucl. Phys. B* 186 (1981) 376.
- Lattice gauge theory: Wilson, *Phys. Rev. D* 10 (1974) 2445; Seiler, *Lecture Notes in Physics* 159 (1982).
- Block-spin renormalization of lattice gauge fields with coupling-constant renormalization in four dimensions: Bałaban, *Commun. Math. Phys.* 109 (1987) 249; 116 (1988) 1; 119 (1988) 243; 122 (1989) 175 and 355.
- Exposition of Bałaban's method: Dimock, "The renormalization group according to Balaban" I–III (*Rev. Math. Phys.* 25 (2013); *J. Math. Phys.* 54 (2013); *Ann. Henri Poincaré* 15 (2014)).
- Tracking a marginal coupling and choosing the bare parameters so that the flow ends at a prescribed value: Bauerschmidt–Brydges–Slade, *Introduction to a Renormalisation Group Method*, LNM 2242 (2019).

**Imported constants and assumptions.**

- **The drift allowances $\omega_j$.** These are constants fixed before the block size, with $\omega_j\ge1+D$. The one-loop error $D$ is fixed in III.7 and III.13, and $\omega$ is then made small relative to $\log L$ by choosing $L$ large (III.2).
- **The exponents.** The exponents $-1/2$, $-11/10$, $(\log\log)^2$ and $1/5$ in III.9.2 are part of the definitions.
- **The hypotheses of III.9.5(a).** These are carried here as assumptions and discharged in III.10.

## 3. Strategy

The nonlinear step gives an early presentation of the blocked density. Its marginal coefficient has three contributions: the input coupling $\beta'$, the one-loop shift $\alpha_{N,m}$, and the isotropic Hessian coefficient $\delta$ of the early regular functions. The reset sets $\beta=\beta'+\alpha_{N,m}+\delta$. Subtracting flat values and quadratic projections, adding compensating path terms, and absorbing mask discrepancies into the forced gas preserves the full density. The output activity bounds and $|\delta|\le r_m\le1$, together with $|\alpha_{N,m}+\kappa\log L_m|+1\le\omega$, give the transfer inequality.

Two configurations identify the reset: the flat field and a small-field stripe $V$ with $\mathcal K(V)\ge|\Lambda|\eta t^2$. Matching at the flat field fixes $v=|\Lambda|^{-1}\log H(1)$. Matching the log-ratio at $V$ gives a scalar equation $f(x,d)=0$. The pricing and activity-motion bounds make $f$ increasing with slope at least $\mathcal K(V)/2$, and give $|f(x,0)|\le\mathcal K(V)r/2$. Its unique root lies in $[-r,r]$ and depends continuously on $x$. Shape control gives equality at every configuration. For the reorganized activities, $f(x,d)=(d-\delta_x)\mathcal K(V)$, so the correction is explicit.

The interval shooting chains these steps from the Wilson lattice down to level $0$. At each level, the transfer inequality forces the two endpoint couplings to lie on opposite sides of $[\bar\beta+\kappa s_m/2,\bar\beta+2\kappa s_m]$. Continuity selects a subinterval whose couplings stay within that window and attain its endpoints. At level $0$, a surviving bare parameter gives $\beta_0=\bar\beta$. Summing the transfer errors gives the running law, uniformly in cutoff and volume. III.13 uses compatible finite-cutoff fixed points to obtain the centered history and its analytic continuations.

## 4. Steps

### 4.1 Reference scales

**Lemma 4.1 (recursion of the reference coupling).** $s_{m+1}=s_m+\log L_m$, so $\hat\beta_{m+1}=\hat\beta_m+\kappa\log L_m$. $\hat\beta$ is nondecreasing if $\kappa\ge0$. Since $L_i\ge3$, $s_m\ge m\log3\to\infty$, and $\hat\beta_m\to\infty$ when $\kappa>0$.

*Sketch:* $a_m=(L_0\cdots L_{m-1})^{-1}$ and the definitions.

*Lean:* [`Schedule.scale_succ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L124-L127), [`Deployment.hat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Levels.lean#L43-L45), [`Timing.hat_mono`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Fast.lean#L40-L42), [`Schedule.divergent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L117-L120).

### 4.2 The Wilson start-up

**Lemma 4.2 (splitting the plaquette action).** Write $s(u)=|F(u)|^2/2+Q_4(F(u))+R(u)$. Near the identity, curvature gives local coordinates on $G$. Here $Q_4$ is the diagonal fourth Taylor coefficient of the plaquette function in those coordinates. The odd coefficients vanish by inversion symmetry. The residual $R$, defined by the displayed identity for every $u\in G$, has vanishing derivatives of orders $0,\ldots,4$ at the identity.

For $c_{\rm dir}\le1$, the top path data $P^{\rm top}_c$ consist of:

- the clipped plaquette term, which equals $c_{\rm dir}\,s(U_p)$ in the small-field region;
- the row term $\sqrt{1-c_{\rm dir}}\,F_p$, contributing $(1-c_{\rm dir})|F_p|^2/2$;
- the quartic atoms $(1-c_{\rm dir})Q_4(F_p)$;
- no cubic and no loop terms.

They satisfy the zero-momentum normalization ($c_{\rm dir}+(1-c_{\rm dir})=1$). On the small-field region, $\beta S_W=\beta\,\mathcal K_{P^{\rm top}}+\beta(1-c_{\rm dir})\sum_pR_p$.

*Sketch:* The derivative of the curvature map at the identity is the identity, so the analytic inverse function theorem gives curvature coordinates. Inversion sends $F$ to $-F$ and preserves $s$. Taylor expansion through order $4$ gives the quadratic and quartic terms and the residual. The identity $s=\tfrac12\mathrm{chord}^2$ fixes the normalization.

*Lean:* [`convert_taylor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Curvature.lean#L156-L164), [`surplus`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Curvature.lean#L166), [`surplus_jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Curvature.lean#L168-L179), [`Design.top`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Design.lean#L34-L38), [`Design.principal_top`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Design.lean#L156-L162).

**Lemma 4.3 (exact start).** For a compatible pair $(c,b)$, every $\beta$ and every $U$: the path-data channels of $P^{\rm top}$ at $\beta$, plus the regular activities (residuals of small-field plaquettes), plus the large-field remainders, add up to $\beta S_W(U)$, the sum being averaged over the point group. Moreover the gas equals $\exp(-\beta\cdot\text{(large-field remainder)})$. Hence $\rho^{\rm start}_\beta=e^{-\beta S_W}$, which is III.9.6(1).

*Sketch:* Fix $U$. The only nonzero gas term is the family of connected components of the large-field region for the padded adjacency relation (cover size $B\ge2$ and the compatibility condition separate the padded components). So the gas collapses to a single product $\prod_De^{-\beta\,\mathrm{charge}(D,U)}$. The charges sum to the large-field remainder, and the channel identity accounts for the rest.

*Lean:* [`channel_split`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Channels.lean#L72-L87), [`Start.gas_raw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Gas.lean#L81-L94), [`Start.issues`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Gas.lean#L70-L75), [`Start.evaluates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Gas.lean#L96-L103).

**Lemma 4.4 (one-plaquette residual).** This is III.9.6(2).

*Sketch:* $R_p$ is a real-analytic function of the four link matrices of $p$. On a small-field plaquette (chord $\le t$) its derivatives of order $l\le k$ along directions of size $\le t(1+4)^q$ are bounded by $C_lt^5$. This is Taylor's formula with the flatness of Lemma 4.2 and compactness of $G$; the factor $(1+4)^q$ is the spatial weight of sites within distance $4$. Take $C=1+\sum_lC_l$ and the smallest $\delta$.

*Lean:* [`residual_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L76-L101), [`residual_jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L62-L68), [`healthy_chord`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L70-L74), [`Quad.small_jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Residual.lean#L161-L183).

**Lemma 4.5 (eventual start-up bounds).** Under the hypotheses of III.9.6(3), the start-up bounds hold beyond a stage-dependent threshold, uniformly in $N,p$ and $\beta\in\mathfrak B_N$. With the top-path bounds and recipe approval specified there, the start-up curve is admissible.

*Sketch:* Put $x=\hat\beta_N$ and $M=e^{(\log\log x)^2}$. The regular bound is a stage-dependent constant times $2xt_N^5=2x^{-3/2}M^5=o(x^{-11/10})$. For the forced terms, the proof uses a decay exponent $M$ and an additional polymer-counting factor $e^\gamma-1$, with $\gamma=e^{-M/2}$. The connected-polymer estimate bounds the forced norm by $e^{-M+1}\le e^{-M^{1/5}}$ for large $x$. Compatibility follows from $B_N\asymp(\log x)^2$ and $t_N=x^{-1/2}M$. These estimates give the displayed continuous start-up family; admissibility also uses its path bounds and the recipe tests.

*Lean:* [`Timing.enough`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Clock.lean#L113-L139), [`Start.ink`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Ink.lean#L104-L122), [`Start.Loan.kernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Funds.lean#L130-L143), [`Planned.Port.card`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/RECIPE_STARTUP_PORT/Layout.lean#L52-L71).

**Lemma 4.6 (installing the Wilson top).** Assume the old fine paths satisfy the stationary, positive-Hessian, initial-guess, classical-matching and finite-period one-loop conditions for a step. Let the new fine paths have the same main-action jets through order $4$, and suppose both fine loop kernels vanish. With the same local Haar chart and block branches, there are new stationary data satisfying those same conditions, with the same coarse paths and one-loop coefficient. With the revised horizon and top-path bounds of III.9.6(4), this replacement gives planned kinetic data at every cutoff, preserving the stationary data for $m+1<N$.

*Sketch:* Equality of fourth jets gives equality of the fluctuation Hessians at the flat field and of their determinant jets through order $2$. The analytic implicit function theorem constructs the new stationary branch; finite-order agreement transfers the initial guess, classical match and one-loop bound. The old and Wilson top actions both match the Wilson energy through order $4$. Only the step $N\to N-1$ changes.

*Lean:* [`Change.top_step`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/TopStep.lean#L160-L180), [`Change.engine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Engine.lean#L62-L82).

### 4.3 The scalar response

**Lemma 4.7 (sensor).** Assume $\mathfrak g\ne\{0\}$, fix a clip with $A=c_{\rm dir}>0$, and let $C\ge0$. Then there is $\eta>0$, depending only on these data, with the following property. For every even torus side, every path datum satisfying the path bounds with cap $C$, and every set of norm parameters with $0<t\le1$, there is a configuration $V$ that is small-field everywhere and satisfies $\mathcal K(V)\ge|\Lambda|\,\eta\,t^2$.

*Sketch:*

- Choose $u\in G$ with chord $h=\tau t$, where $\tau=\min(\varepsilon_G,\tfrac14,A/(512(1+C)))$; such $u$ exists by the intermediate value theorem along a one-parameter subgroup.
- Put $u$ on the axis-$0$ links at sites whose coordinate $1$ is even, and $1$ elsewhere. Every $(0,1)$-plaquette has chord $h$, and every plaquette has chord $\le4h\le t$.
- The quadratic term contributes $\ge|\Lambda|Ah^2/2$. The cubic and quartic atoms contribute at least $-|\Lambda|(C(4h)^3+C(4h)^4)\ge-|\Lambda|Ah^2/4$.
- The point-group average permutes plaquettes and preserves these bounds. Hence $\eta=A\tau^2/4$.

*Lean:* [`CouplingReset.sensor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Probe.lean#L96-L142), [`reachable_chord`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Probe.lean#L40-L54).

**Lemma 4.8 (monotone response, continuous root).** Let $I=[l,u]$ with $l\le u$, let $r\ge0$, and let $f:I\times[-r,r]\to\mathbb R$ satisfy:

- there is $\mu>0$ such that $f(x,b)-f(x,a)\ge\mu(b-a)$ for every $x\in I$ and $-r\le a\le b\le r$;
- $f(x,\cdot)$ is continuous for every $x\in I$, and $f(\cdot,a)$ is continuous for every $a\in[-r,r]$;
- $|f(x,0)|\le\mu r$ for every $x\in I$.

Then there is a unique $d(x)\in[-r,r]$ with $f(x,d(x))=0$. The function $d$ is continuous, and $|d(x)-a|\le|f(x,a)|/\mu$ for every $x\in I$ and $a\in[-r,r]$.

*Sketch:* $f(x,-r)\le0\le f(x,r)$, so the intermediate value theorem gives a zero, unique by strict monotonicity. Moreover $|d(y)-d(x)|\le|f(y,d(x))-f(x,d(x))|/\mu\to0$.

*Lean:* [`Response`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Root.lean#L27-L31), [`Response.balance_solve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Root.lean#L80-L83), [`Response.continuous`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Root.lean#L54-L58), [`solve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Root.lean#L60-L70).

**Lemma 4.9 (two-point readout).** Fix path data, a clip, norm parameters and activities $F(x,d)$ whose regular functions vanish at the flat configuration. Let $V$ be small-field everywhere and suppose $H_x(1),H_x(V)>0$. Define
$$f(x,d)=(\beta'_x+\alpha+d)\,\mathcal K(V)+\mathcal L(V)+\mathcal E_{F(x,d)}(V)-\log\frac{H_x(1)}{H_x(V)} .$$
Install the trial with coupling $\beta'_x+\alpha+d(x)$ and vacuum constant $v_x=|\Lambda|^{-1}\log H_x(1)$. If $f(x,d(x))=0$, the trial equals $H_x$ at $1$ and at $V$. If moreover the template satisfies shape control (III.9.4(R)), it equals $H_x$ at every configuration.

*Sketch:* At $U=1$ the kinetic, loop and activity terms vanish and the gas is $1$. At small-field $V$ the gas is $1$. Shape control at a zero of $f$ gives $\mathrm{shape}=H_x/H_x(1)$.

*Lean:* [`Template.residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Reset.lean#L64-L65), [`Template.passes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Reset.lean#L99-L105), [`Template.realizes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Reset.lean#L119-L125), [`Template.response`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Reset.lean#L131-L140).

**Lemma 4.10 (surplus from a pre-reset presentation).** Suppose that on $V=1$ and on every small-field $V$
$$H_x(V)=\exp\big(u_x|\Lambda_m|-\beta'_x\,\mathcal M(V)-\alpha_{N,m}\,\mathcal S(V)-\mathcal L(V)-\mathcal E_x(V)\big),$$
where $\mathcal M$ is the unmasked main term (quadratic, cubic and quartic), $\mathcal S$ its quadratic part, and $\mathcal E_x$ has size $\le c_m\varepsilon_m/4$. Assume the coarse path bounds with cap $C$ and the cubic condition $|\alpha_{N,m}|\,2Ct_m^3\le c_m\varepsilon_m/2$. Then the surplus inequality of III.9.4(I) holds. If, in addition, the output activities satisfy the catalogue and slow-variation assumptions of III.9.4(I), then all of (I) holds.

*Sketch:*

- On small-field $V$, $\mathcal K(V)=\mathcal M(V)$ and the loop functional is unmasked.
- $|\mathcal K(V)-\mathcal S(V)|\le2C|\Lambda|t^3$, since the cubic and quartic atoms are $O(t^3)$ per site.
- The regular activities at $1$ and at $V$ cost $2\cdot|\Lambda|c\varepsilon/4$.
- The cubic condition absorbs $|\alpha|\,|\mathcal K-\mathcal S|$. It holds eventually because $|\alpha|\le\omega+\kappa\log L$ and $t^3\ll\hat\beta^{-11/10}$.

*Lean:* [`Prereset.income`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Regular.lean#L91-L96), [`Prereset.value_income`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Regular.lean#L73-L87), [`pays_surplus`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Precision.lean#L124-L143), [`higher_estimate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Precision.lean#L52-L69), [`CubicGate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Precision.lean#L96-L98), [`within_alpha`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Precision.lean#L89-L94).

### 4.4 The reset step

**Lemma 4.11 (one step).** This is III.9.4.

*Sketch:*

- (P) and (V) give $|\Lambda_m|(c_m+1)\varepsilon_m\le\tfrac12\mathcal K(V)r_m$.
- Slow motion in $d$ gives slope $\ge\mu:=\tfrac12\mathcal K(V)$.
- The surplus inequality and $|\mathcal E(V)|\le|\Lambda|\varepsilon_m$ give $|f(x,0)|\le\mu r_m$.
- $f$ is continuous in $x$ by Lemma 4.15.
- Lemma 4.8 gives $d$; Lemma 4.9 installs the trial; (R) gives the identity at all configurations, the forced bound and recipe acceptance.
- $|\beta-\beta'-\alpha|=|d|\le r_m\le1$.

*Lean:* [`correct`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L157-L173), [`advance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L175-L189), [`Income.paidResponse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L121-L137), [`Income.balance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L139-L152).

**Lemma 4.12 (the marginal coefficient of the activities).** Let $f$ be a local, gauge-invariant regular function anchored at $o$, smooth through the prescribed derivative order, and let $\mathfrak g$ be simple. The second derivative of $f$ at the trivial configuration, along the canonical affine link test fields centered at $o$, with curls $X$ in orientation $b$ and $Y$ in orientation $b'$, equals $\mathrm{coeff}_f(b,b')\langle X,Y\rangle$ (Schur). For the projection used below, retain this Hessian coefficient when the support enlarged by the radius-$2$ halo of $o$ does not wrap around the torus, and set the projected coefficient to $0$ otherwise.

For a family $A$ of such functions with an anchored regular norm bound, whose addresses and values transform under translations and the point group, assume the torus side is at least $4$ and put
$$\delta(A)=\sum_{f\text{ anchored at }0}q_f(01,01).$$
Here $q_f$ denotes the projected coefficient just defined. Then:

- for every site $o$, $\sum_{f\text{ anchored at }o}q_f(b,b')=\delta(A)\,\mathbf 1_{b=b'}$;
- the sum of the projected Hessian forms at $o$ is $\delta(A)\sum_b|w_b|^2$. Its quadratic energy is $\tfrac12\delta(A)\sum_b|w_b|^2$;
- if $A$ has regular size $c$, then $t^2|\delta(A)|\le c$.

*Sketch:* Gauge invariance makes each color bilinear form invariant under the adjoint action, hence scalar by simplicity. For each pair of distinct plaquette orientations, reflecting an axis belonging to exactly one of them reverses the corresponding off-diagonal coefficient; its sum therefore vanishes. Signed permutations carry each diagonal coefficient to $(01,01)$. The bound follows from the second derivative in a direction of size $t$.

*Lean:* [`Averaging.delta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Isotropy.lean#L75), [`Averaging.isotropic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Isotropy.lean#L77-L98), [`Averaging.identity`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Isotropy.lean#L100-L102), [`Averaging.delta_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Isotropy.lean#L103-L112), [`label_color`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Projection.lean#L34-L40), [`projection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Projection.lean#L89-L90).

**Lemma 4.13 (exact reorganization).** Assume the early presentation, local bounds, compatible clip, width, reorganization inequalities and recipe acceptance of III.9.5(a). Let $\delta_x$ be the coefficient of Lemma 4.12. The reorganized representation has the same paths, coupling $\beta'_x+\alpha_{N,m}+\delta_x$, and vacuum constant $\tau_x-|\Lambda_m|^{-1}\sum_iE_{x,i}(1)$. Its density equals $H_x$ at every configuration, and it obeys the level-$m$ allowances and the forced bound $e^{-gM_{m+1}^2}$.

*Sketch:* For an early regular function $E_i$ with support $X_i$ and anchor $o_i$, put $Y_i=X_i\cup\mathrm{halo}_2\{o_i\}$. Let $Q_i$ be one half of its projected Hessian applied to the local clover curvatures, and set $E_i^0=E_i-E_i(1)-Q_i$. Define $D_i$ to vanish when $Y_i$ is small-field, and otherwise by
$$D_i=E_i(1)+\chi_{\{o_i\}}Q_i-\chi_{X_i}E_i.$$
Then, at every configuration,
$$\chi_{X_i}E_i=E_i(1)+\chi_{\{o_i\}}Q_i-D_i+\chi_{Y_i}E_i^0.$$
The projected terms sum to $\delta_x/2$ times the small-field clover-curvature square. The regular terms also acquire $\delta_x$ times the difference between each quadratic clover proxy and its original quadratic path term, and $-(\alpha_{N,m}+\delta_x)$ times each masked cubic or quartic path term. The remaining mask discrepancies become logarithmic factors in the forced gas.

More precisely, let $\mathcal E^{\rm new}_x$ denote the resulting regular sum and $\ell_x$ the sum of these logarithmic factors before they are absorbed into the gas. The activity and path splitting identities give
$$(\alpha_{N,m}+\delta_x)\mathcal K+\mathcal E^{\rm new}_x-\ell_x
=\alpha_{N,m}\mathcal S+\mathcal E^{\rm early}_x-\sum_iE_{x,i}(1).$$
Absorbing $e^{\ell_x}$ into the original forced gas proves equality of the full densities, including at configurations where masks fail. The reorganization estimates bound the regular terms and the added forced factors; the numerical closure conditions give the claimed allowances. Recipe acceptance is a separate hypothesis.

The trial activities are independent of the correction parameter $d$. Thus exact equality at $d=\delta_x$ gives $f(x,d)=(d-\delta_x)\mathcal K(V)$ and shape control on $[-r_m,r_m]$. The unique root of Lemma 4.11 is therefore $\delta_x$.

*Lean:* [`Collection.Local.actual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean#L92-L95), [`Local.exponent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean#L70-L82), [`Return.settled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Payment.lean#L77-L84), [`Return.grants`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inputs.lean#L74-L94), [`Return.earns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Advance.lean#L37-L42), [`Return.remainders`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Advance.lean#L44-L61), [`Return.physical_shape`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Advance.lean#L30-L36), [`Return.reset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Advance.lean#L64-L90), [`Residual.splits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Residual.lean#L114-L120), [`Local.first_split`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Rewrites.lean#L54-L59), [`Collection.path_split`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Rewrites.lean#L77-L93). *(proof read, including the reorganized activities in [`Local.renew`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Investor.lean#L112-L128))*

**Lemma 4.14 (from per-step inputs to the program).** This is III.9.5(b). The numerical conditions ([`Use.Machine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L41-L49)), the existence of early presentations along every admissible input curve ([`Use.Offering`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L77-L81)) and the start-up curves ([`Use.Origins`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L83-L84)) together give the step program, assuming $G$ is simple and the machine uses the compatible recipe and physical bounds of III.9.5.

*Sketch:* For each input curve, Lemma 4.7 provides a probe. Lemma 4.13 provides (I) and (R). Lemma 4.11 then gives the output curve and the bound $|\beta-\beta'-\alpha|\le r_m$.

*Lean:* [`Use.supplier`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L85-L88), [`Machine.packet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L71-L74), [`Supplier`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Stability.lean#L41-L47), [`program`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Stability.lean#L67-L70).

### 4.5 Continuity of the transport

**Lemma 4.15 (joint continuity of the blocked density).** Let $x\mapsto\rho'_x$ be a continuous curve of lawful representations with fixed path data, clip and norm parameters, and assume the block kernel satisfies the branch conditions of III.1. Then $(x,V)\mapsto(T^{(m)}_{\beta'_x}\rho'_x)(V)$ is jointly continuous, and $x\mapsto\rho'_x(U)$ is continuous for every $U$.

*Sketch:* Continuity of the activities in the polymer norm gives uniform convergence of the additive part and of the gas in $U$. This yields a local uniform bound on $\rho'_y$, and dominated convergence applies under the kernel. The kernel itself is continuous in $\beta$ and in the coarse configuration.

*Lean:* [`FixedRepData.continuous_push`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/BETA_TRANSPORT/Curve.lean#L122-L131), [`FixedRepData.continuous_eval`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/BETA_TRANSPORT/Curve.lean#L93-L97), [`Catalog.stable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Catalog.lean#L39-L45).

### 4.6 Entry thresholds

**Lemma 4.16 (monotone thresholds).** Let $T_j(x)$ be properties, one for each stage $j$, each holding for all large $x$. Then any record $u_j$ can be raised to a nondecreasing record $m_j\ge u_j$ such that $T_j(x)$ holds for all $x\ge m_j$. For each fine stage $j$, combine the two possible coarse targets $i=j$ and $i=\max(j-1,0)$ first.

*Sketch:* Take $m_j$ to be the prefix maximum of $\max(\text{threshold}_i,u_i)$ over $i\le j$.

*Lean:* [`collect_upper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Basic.lean#L111-L118), [`eventually_transitions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Basic.lean#L126-L131), [`StepStages`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Basic.lean#L27), [`DelayLe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Post.lean#L34-L38).

**Lemma 4.17 (eventual reset inequalities).** Fix an allowed transition from fine stage $j$ to coarse stage $i$, its block factor $L$, and all the constants in III.9.7. Write $x=\hat\beta_m$, $y=x+\kappa\log L$, $M=e^{(\log\log x)^2}$ and $q_i$ for the early-activity fraction. The conclusions are uniform for $|\alpha|\le\omega_j+\kappa\log L$ and $\beta\in[y/2,2y]$. Then all the delay-dependent reset conditions hold for sufficiently large $x$.

*Sketch:* The sufficient pricing condition $2(c+1)\le\eta rM^2$ holds because $M\to\infty$. Multiplication by $x^{-1}$ gives $2(c+1)x^{-1}\le\eta rt^2$; since $\varepsilon=x^{-11/10}\le x^{-1}$ for $x\ge1$, this implies the required pricing inequality. The cubic condition follows from $t^3/\varepsilon=x^{-2/5}M^3\to0$.

For the local reorganization, its regular bound has the form $A_iH+B_i|\alpha|t^3$, with $A_i,B_i$ fixed before $L$. The choice $H=q_i\varepsilon$, with $A_iq_i\le1/64$, leaves room for an output bound $\varepsilon/32$. The forced estimate controls both the early forced terms and the added logarithmic factors, at support exponent $a+1$, where $a$ is the coarse support exponent. The width condition is $4(a+1)\le\sigma B$, where $\sigma$ is the path-decay width. It holds since $B\to\infty$, as does clip compatibility. The corresponding forced output bound is $e^{-R_{ji}(y,\beta)}$. If $4g_j\le\mathrm{rate}_{ji}$ and $\beta\in[y/2,2y]$, its definition gives $R_{ji}(y,\beta)\ge g_jM(y)^2$; for large $x$ it also gives the ordinary forced allowance at $x$.

The inherited condition is
$$\big(f_{ji}/L+u_{ji}(x)\big)\varepsilon(y)+\mathcal R_{ji}(x,y,\beta)\le q_i\varepsilon(x),\qquad \beta\in[y/2,2y].$$
Here $\mathcal R_{ji}$ is the fixed step-estimator residual at exponent $\theta_j$; it is $o(\varepsilon(x))$ uniformly in this band when $\theta_j\le1$, and $u_{ji}(x)\to0$. The pre-block inequality gives $f_{ji}/L\le q_i/8$. Together with $\varepsilon(y)/\varepsilon(x)\to1$, these bounds prove the inequality. Lemma 4.16 combines the conditions in the order: inherited estimates, local reorganization, cubic estimate, reset pricing; the sensors were fixed before $L$.

*Lean:* [`can_delay_reset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L56-L62), [`buys_reset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L71-L89), [`sensors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L46-L49), [`delay_cubic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Precision.lean#L100-L106), [`Time.cash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Currency.lean#L75-L126), [`Time.late`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Opening.lean#L48-L59), [`Time.open_shop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Opening.lean#L62-L65), [`Time.now`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Opening.lean#L84-L119), [`Time.rawGate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inherited.lean#L30-L56), [`Time.beforeWait`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inherited.lean#L75-L89).

**Lemma 4.18 (joint start-up thresholds).** Assume $G$ is simple and $c_{\rm dir}\le1$ at every used stage. Fix the observable sections, marker bounds and nonnegative additional start-up requests. Before choosing block sizes, enlarge the path and column bounds so that the Wilson top paths satisfy the stage bounds and the column bound is at least the factorial of the derivative order. Then the block-size floors and the coupling and scale thresholds can be enlarged so that every realized choice of levels meeting them has the start-up bounds of Lemma 4.5 and the following additional bounds. Write $x=\hat\beta_N$, $t=t_N$, $M=M_N$, $B=B_N$ and $a$ for the support exponent at stage $j=J_N$.

- For every prescribed observable section of degree $d\le j$, its stencil diameter is at most $B$, and
  $$\tilde\varepsilon_N C_d t^{-s_d}\le\sqrt{\tilde\varepsilon_N},$$
  where $s_d$ is the total slot order of its section family and $C_d\ge1$ bounds its evaluation on every configuration by $C_d$ times the coefficient $\ell^1$ norm.
- For $\beta\in[x/4,2x]$, the start-up regular bound remains $\varepsilon_N$ after increasing the support exponent by any preassigned $\delta_j\ge0$. The connected-polymer estimate retains a forced-decay factor $e^{-\nu M^2}$, where $\nu=(128h_4)^{-1}>0$ and $h_4=2^4\,4!$ is the order of the lattice point group; its final forced bound is at most $\tilde\varepsilon_N$.
- The mixture estimates have $B\ge8$, $x^{-1/2}(k+1)e^{a5^4}\le1$, and a connected-polymer bound at most $1/2$ with support exponent increased by $8$.
- For each preassigned integer observation radius $r_j$, the first-step numerical bound is
  $$(4B+1)^4(2r_jB+1)^4\,8\left[\frac{b_K}{2}+D_G\log\big(4(1+2x)\big)\right]
  \le \frac{x\,t^2}{64h_4},$$
  where $b_K>0$ is the kernel penalty and $D_G=\dim_{\mathbb R}M_n(\mathbb C)$.

These conclusions persist when the thresholds are increased.

*Sketch:* At a fixed stage only finitely many observable degrees are requested. At fixed stage, the stencil and cylinder constants are fixed, while $B\to\infty$ and $e^{-M^{1/5}}$ absorbs every fixed power of $t^{-1}$. The additional support weights and the first-step cost grow polynomially in $\log x$, whereas $xt^2=M^2$ grows faster than every such polynomial. Take common thresholds and enlarge the block-size floors for the cross-level support estimates. The joint pricing theorem also increases the scale thresholds, while preserving the prescribed volume and growth data. This establishes numerical preparation; subsequent nonlinear steps still require their own activity estimates.

*Lean:* [`StrongStartup.prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT/Pricing.lean#L87-L107), [`StrongStartup.before`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT/Pricing.lean#L47-L64), [`Extra.Multi.pricing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Schedule.lean#L98-L111), [`Timing.receive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Fast.lean#L44-L51), [`ThroughLaunch.developer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Dome.lean#L105-L138), [`Mark.Ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Author.lean#L34-L36), [`StrongStartup.Escrow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT/Reserve.lean#L69-L76), [`StrongStartup.BondFuel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT/Sleeves.lean#L51-L52), [`Mixture.Extras`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/MixRoom.lean#L75-L78).

### 4.7 Assembly and the running law

**Lemma 4.19 (bounds at the edges of the shooting window).** Assume $\kappa>0$ and $\bar\beta>0$. Put $\phi_m=\bar\beta+\tfrac\kappa2s_m$ and $\psi_m=\bar\beta+2\kappa s_m$. Then $[\phi_m,\psi_m]\subset\mathfrak B_m$, and $\phi_0=\psi_0=\bar\beta$. Assume $\omega_{J_{m+1}}\le\tfrac\kappa4\log L_m$ (guaranteed by the choice of block sizes). If a step satisfies the transfer inequality, then:

- input coupling $\phi_{m+1}$ forces output coupling $<\phi_m$;
- input coupling $\psi_{m+1}$ forces output coupling $>\psi_m$.

*Sketch:* $\beta_m\le\phi_{m+1}-\kappa\log L_m+\omega\le\phi_m-\tfrac\kappa4\log L_m$, and symmetrically for $\psi$.

*Lean:* [`Shoot.gates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L81-L90), [`Shoot.limits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L60-L68), [`Shoot.Drifting.pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L73-L79).

**Lemma 4.20 (shooting in the bare coupling).** Suppose the step program holds and $G$ is simple. Then for all $N,p$ there is a trail $(\rho_{N,p,m})_{m\le N}$ with the following properties:

- it starts with a Wilson start-up $e^{-\beta S_W}$;
- each level is admissible, with coupling in $[\phi_m,\psi_m]$;
- consecutive levels satisfy the transfer clause;
- $\beta_{N,p,0}=\bar\beta$.

Choosing these trails for all $N,p$ gives a history satisfying (1)–(5) of III.9.3. The common-path clause follows because every trail uses the same prescribed $P_{N,m}$.

*Sketch:* Decreasing induction on $m$ carries an interval $[l,u]$ of bare couplings and a continuous curve of trails.

- At $m=N$, restrict the start-up curve to $[\phi_N,\psi_N]$.
- At each step, apply the step program, giving an output curve over the same interval. By Lemma 4.19 its couplings at $l$ and $u$ lie below $\phi_m$ and above $\psi_m$. A compactness and intermediate-value argument gives $[l',u']\subset[l,u]$ whose image is $[\phi_m,\psi_m]$, with $\phi_m,\psi_m$ attained at the ends.
- At $m=0$ the left end gives $\beta_0=\bar\beta$.

*Lean:* [`Shoot.steps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L112-L154), [`Shoot.narrow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L18-L49), [`Shoot.successful`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L156-L159), [`Recipe.races`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L67-L82), [`Graces.winnow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Graces/Eagles.lean#L33-L50).

**Lemma 4.21 (running).** For a history on levels satisfying the drift-smallness and stage-divergence conditions of III.9.2, clauses (4) and (5) of III.9.3 imply clause (6).

*Sketch:*

- By induction from $\beta_{N,p,0}=\bar\beta=\hat\beta_0$: $|\beta_{N,p,i}-\hat\beta_i|\le\sum_{k=1}^{i}\omega_{J_k}$.
- Given $\varepsilon$, pick $j$ with $J_{k+1}^{-2}\le\varepsilon/2$ for $k\ge j$, using $J\to\infty$.
- The drift condition gives $\sum_{k\le i}\omega_{J_k}\le\sum_{k\le j}\omega_{J_k}+\tfrac\varepsilon2(s_i-s_j)$.
- This is $\le\varepsilon s_i$ for $i$ large, since $s_i\to\infty$. The bound is uniform in $N\ge i$ and $p$.

*Lean:* [`Shoot.trajectory`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L23-L53), [`Orchard.traject`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Orchard/First.lean#L55-L88). The second version replaces (5) by the band at level $0$.

**Lemma 4.22 (the history of the main theorem).** Fix the compatible data of III.13, including its analytic continuation bounds and finite-cutoff solutions. For every $N,p$ and every real $b$ with $|b|<r_*$, there is a trail in that construction with level-$0$ coupling $\bar\beta+b$. Its bare coupling is unique within the specified class of finite-cutoff solutions. The coupling and activity arrays admit analytic continuation to the complex disc $|b|<r_*$, with $r_*>0$ independent of $N,p$. At $b=0$, these trails form a selected history, and every step is a reset step.

*Sketch:* III.13 solves a coupled finite-cutoff fixed-point problem for all the level couplings. For real offsets its fixed point gives real trails and the stated endpoint; the comparison theorem gives uniqueness in this class. At $b=0$, their admissibility gives the common paths and level-wise bounds; their reset steps give exact transfer. Lemma 4.21 supplies running. This is the history used in the Wilson family. The calibration condition records its realized trails and reset steps; it does not assert uniqueness among all representations of the same density.

*Lean:* [`Spire.Uses.exists_bolt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Spark.lean#L78-L85), [`Spire.Uses.hits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Spark.lean#L68), [`Upland.Arc.exists_trial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland/Plinth.lean#L71-L75), [`Mast.calibrated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Forest/Glue.lean#L35-L36), [`Upland.Arc.finiteCut`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland/Plinth.lean#L55-L58), [`Spire.Fitted.acts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Orbs.lean#L41-L42), [`Spire.Fitted.unions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Alpine.lean#L64-L70). *(proof read for the displayed assembly and finite-cutoff uniqueness theorem; inputs from III.13)*

### 4.8 Auxiliary results

**Lemma 4.23 (marker-rooted sums).** This is III.9.8.

*Sketch:*

- If $x\in X_i$ and a marker $v$ of $X_i$ sits in $X_i$, then $\mathrm{dist}(o(v),x)\le\mathrm{cover}_M(X_i)(4M+2)+2M$. So $e^{a\,\mathrm{cover}}\le e^{(a+1)\mathrm{cover}}\,e^{1-\mathrm{dist}/(4M+2)}$.
- Summing over $i$ marker by marker gives at most $c$ per marker.
- Summing over markers gives $\le\mu\sum_ye^{1-\mathrm{dist}(y,x)/(4M+2)}\le\mu e(2(16M+9))^4$, uniformly in the torus.

*Lean:* [`Extra.Multi.root_hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Root.lean#L161-L199), [`torus_kernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Root.lean#L136-L156).

**Lemma 4.24 (decay of a shifted Gram inverse).** Fix a finite channel set $I$, $r,\eta>0$ and $A\ge0$. There are $C\ge0$ and $\tau>0$, depending only on $I,r,\eta,A$, such that every real convolution kernel $P$ on $\mathbb Z^4$ with
$$\sum_{z\in\mathbb Z^4}e^{\eta|z|_1}|P_{ab}(z)|\le A\qquad(a,b\in I)$$
has a real convolution kernel $S$ with the corresponding bound $C$ at exponent $\tau$, and, on every torus,
$$S_n\big(rI+P_n^{\mathsf T}P_n\big)=I.$$
Here $P_n,S_n$ are periodizations. Thus $S_n=(rI+P_n^{\mathsf T}P_n)^{-1}$, uniformly in the torus side.

*Sketch:* On real momentum, $rI+\hat P(k)^*\hat P(k)$ is positive definite. Compactness in the fixed finite channel space and the weighted kernel bound give invertibility and a uniform inverse bound in a narrower complex strip. Fourier coefficient estimates give an exponentially summable inverse kernel. The discrete Fourier transform identifies its periodization with the inverse matrix on every torus.

*Lean:* [`Polar.deliver`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Transform.lean#L86-L91), [`Polar.invert_tori`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Transform.lean#L48-L84), [`Polar.writes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Polar.lean#L142-L163).

## 5. Where the difficulty lies

The early presentation with local bounds comes from III.10, the one-loop coefficient from III.7, and the compatible kinetic data from III.13. Given those inputs, the reset must preserve the full masked density, including failed-mask discrepancies and the forced gas. Two-point matching alone does not prove that identity. Lemma 4.13 supplies it and proves the output activity bounds.

The marginal coefficient is isolated by gauge symmetry, simplicity and lattice isotropy. It is a Hessian coefficient, so its quadratic energy carries a factor $1/2$. The Wilson start-up has a uniform $O(t^5)$ residual even when individual links are far from the identity. Continuity in the bare parameter must hold in the activity norms despite the hard configuration masks; shooting depends on this continuity.

The block factors grow. The planned one-loop condition implies $\omega_{J_{m+1}}\ge1$, while the drift condition gives $\log L_m\ge J_{m+1}^2\to\infty$. The gentle-scale condition requires $\log L_m=o(s_m)$. The reset correction is small:
$$|\delta_x|\le\frac{c_m}{4}\hat\beta_m^{-1/10}e^{-2(\log\log\hat\beta_m)^2}.$$
The constants $c_m$ depend on the stage pair, so this is a fixed-stage estimate. The separate one-loop error is bounded independently of $L$ once its earlier parameters are fixed; no decay of that error in $L$ is required. The argument gives $\beta_m=\bar\beta+\kappa s_m+o(s_m)$ uniformly in the cutoff and volume. It does not give a bounded remainder or a two-loop expansion.

The coarsest coupling is prescribed exactly. Shooting chooses the bare coupling separately for each cutoff and volume and restricts the surviving parameter intervals to keep every level in its band. The uniqueness theorem in III.13 applies to its specified continuation class.

## 6. Notation

| Written proof | Lean (glossary) | Meaning |
|---|---|---|
| $\kappa=\frac{11C_G}{24\pi^2}=2b_0$ | [`Gauge.slopeConstant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184), [`Gauge.casimir`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182) | slope of $\beta$ against $\log(1/a)$ |
| $s_m$, $a_m$, $L_m$ | [`Schedule.scale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L115), [`Schedule.a`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L99), `block` | scale $\log(1/a_m)$, spacing, block factor (odd, $\ge3$) |
| $\bar\beta$ | `Calendar.bar` ("barrier") | coupling at the coarsest level |
| $\hat\beta_m$, $\mathfrak B_m$ | [`Calendar.hatBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79), [`band`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L63) | reference coupling, band $[\hat\beta/2,2\hat\beta]$ |
| $t_m$, $M_m$, $B_m$ | [`threshold`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L83), [`monitor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L81), [`coverSize`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L82) | small-field threshold, its multiplier, cover size |
| $\varepsilon_m$, $\tilde\varepsilon_m$ | [`allowance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L84), [`forcedAllowance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L85) | sizes of regular and forced activities |
| $J_m$, $\omega_j$, $\theta_j$ | `Calendar.J`, [`Stage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L45-L61) (`drift`), `theta` | stage index, drift allowance, smallness exponent |
| $\rho=(P,c,E,K,b,\beta,v)$ | [`Rep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L165-L171) | effective action ("representation") |
| $\mathcal K_P$ | [`BetaTransport.kinetic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/BETA_TRANSPORT/Curve.lean#L22-L25) | $\beta$-coefficient of the leading terms |
| $T^{(m)}_\beta$ | [`StepData.push`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L77-L79) | one block-spin step |
| $\beta_{N,p,m}$, $\rho_{N,p,m}$ | `History.β`, `History.rep` | selected history |
| $\alpha_{N,m}$, $P_{N,m}$ | [`Kin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L74-L77) (`alpha`, `path`) | one-loop shift of the step, path data |
| $\mathfrak D$ | [`Directed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L26-L36) | scale sequence, kinetic data and recipe |
| reset step | [`Directed.Move`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L49-L55) | one step with exact transfer and $\lvert\beta-\beta'-\alpha\rvert\le1$ |
| step program | [`Directed.Program`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L65-L72) | start-up curves and reset along all admissible curves |
| $(c_m,r_m)$ | [`ResetPrices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L38-L43) (`cost`, `radius`) | income multiplier, reset window ($\le1$) |
| $\eta_j$, probe $V$ | [`Sensor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Probe.lean#L92-L94), [`Usable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L55-L58) | lower bound $\mathcal K(V)\ge\lvert\Lambda\rvert\eta t^2$ |
| $f(x,d)$, $d$ | [`Template.residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Reset.lean#L64-L65) | scalar residual, coupling correction |
| $\chi_X$, $Q_i$, $E_i^0$, $D_i$ | [`Residual.splits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Residual.lean#L114-L120) | small-field indicator, local quadratic projection, subtracted regular function, mask discrepancy |
| $\delta(A)$ | [`Averaging.delta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Isotropy.lean#L75) | isotropic curvature-squared coefficient of activities |
| early presentation | [`Collection.earlyValue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean#L26-L27), [`Return.atlas`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inputs.lean#L70-L71) | blocked density before the reset |
| $P^{\rm top}$, $R_p$, $Q_4$ | [`Design.top`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Design.lean#L34-L38), [`residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L58), [`fourth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Curvature.lean#L154) | Wilson top path data, one-plaquette residual, quartic coefficient |
| $\rho^{\rm start}_\beta$ | [`Bid.Cake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L27-L28) with `payload`, `dictionary` | Wilson start-up representation |
| compatible $(c,b)$ | `WilsonStartup.Decent` | $c_{\rm dir}\le1$, $B\ge2$, $te^{(B-2)/c_{\rm rel}}\ge2$ |
| $\phi_m,\psi_m$ | [`floorBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L57), [`ceilBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L58) | shooting window |
| numerical bounds and entry thresholds | glossary item 1 | constants in the polymer norm estimates and lower bounds on $\hat\beta$ |

## 7. Open points for the writer

1. **Nonlinear inputs.** The reset is conditional on the early presentation, stronger local activity bounds and continuity. Their supply is the conclusion of [Rain.glazing](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Rain/Glazing.lean#L97-L104) and [Roost.Factor.offering](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Roost/Foundry.lean#L56). Their assembly proofs identify the required inputs; the underlying nonlinear and Gaussian-sector estimates belong to III.10 and III.4 and are not independently verified here.
2. **Activity reorganization.** The explicit splitting and the proof of [Local.renew](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Investor.lean#L112-L128) give Lemma 4.13. A full written proof should expand the local reorganization constants and the connected-polymer estimate that absorbs the logarithmic factors. Their detailed norm estimates are inputs from II.2 and III.10.
3. **Finite-cutoff uniqueness.** The uniqueness in Lemma 4.22 concerns the class of solutions specified in III.13, with its fixed data and continuation bounds. This construction solves coupled fixed-point equations rather than choosing a subinterval by Lemma 4.20. The displayed assembly and uniqueness theorem have been checked; the analytic existence and comparison estimates underneath them remain for III.13. Real offsets satisfy $|b|<r_*$; complex offsets parametrize analytic continuations, not real positive densities.
4. **Relaxed histories.** The intermediate history predicate with no endpoint restriction is distinct from the selected-history specification. Its running estimate uses the band at level $0$. The final centered history satisfies the exact endpoint clause.
5. **Numerical and bibliographic scope.** Lemma 4.18 gives the start-up numerical bounds; their use for source polynomials and first-step observations requires the norm definitions in III.12 and III.15. The cited numerical preparation does not itself construct those observables or their nonlinear continuations. The literature citations in §2 are background references; their exact bibliographic details and comparison with this construction remain unchecked here.
6. **Verification scope.** The correspondence checks use the supplied Lean source and link table. No Lean build or independent axiom-closure check was performed. The package sizes and main-theorem dependency counts are retained from the unit map (tentative).

**Builds on:** [III.1](III-1.md), [I.1](I-1.md), [III.2](III-2.md), [III.15](III-15.md), [III.16](III-16.md), [III.6](III-6.md), [II.1](II-1.md), [II.2](II-2.md), [III.10](III-10.md), [III.3](III-3.md), [VI.1](VI-1.md), [III.5](III-5.md).

**Used by:** [III.13](III-13.md), [III.10](III-10.md), [III.12](III-12.md), [III.2](III-2.md), [III.11](III-11.md), [VII.2](VII-2.md), [III.4](III-4.md), [VIII.1](VIII-1.md), [III.15](III-15.md), [III.14](III-14.md), [VII.4](VII-4.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| work package [`YM/AnalyticBridge/VERIFIED_RESET_STEP/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP) | 2,659 |
| work package [`YM/Extra/WILSON_STARTUP/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP) | 2,422 |
| work package [`YM/Push/BETA_TRANSPORT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/BETA_TRANSPORT) | 652 |
| work package [`YM/UVNext/COUPLING_RESET/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET) | 592 |
| work package [`YM/Extra/MULTISOURCE_BOUNDS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS) | 344 |
| work package [`YM/Further/STRONG_STARTUP_CREDIT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT) | 213 |
| work package [`YM/Push/PRICE_COMPILER/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER) | 139 |
| work package [`YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH) | 65 |
| work package [`YM/Planned/RECIPE_STARTUP_PORT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/RECIPE_STARTUP_PORT) | 60 |
| work package [`YM/R2I/Wind/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Wind) | 34 |
| work package [`YM/Further/THRESHOLD_SOURCE_RESTART/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/THRESHOLD_SOURCE_RESTART) | 24 |
| work package [`YM/PhysicalNext/SERVICE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/SERVICE) | 11 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **III.9.1** [`root_hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Root.lean#L161-L199) *(key result)* — If each positive source has an anchored name in its support and rooted costs are bounded, the multi-marker connected-cover budget holds with an explicit site-factor constant.
- **III.9.2** [`DelayLe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Post.lean#L34-L38) *(numbered result)* — A componentwise order relation on delay data.
- **III.9.3** [`sensor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Probe.lean#L96-L142) *(key result)* — For a nontrivial gauge group and a clipped action there is a uniform η making two tests separate with the true clipped action.
- **III.9.4** [`cash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Currency.lean#L75-L126) *(numbered result)* — For a forecast and nonnegative shifts, a family of numerical inequalities holds eventually as x tends to infinity.
- **III.9.5** [`open_shop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Opening.lean#L62-L65) *(numbered result)* — A delay assignment can be boosted so that all further boosts are opened for the given costs and scouts.
- **III.9.6** [`pricing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Schedule.lean#L98-L111) *(key result)* — For a simple gauge, there is a floor beyond which delay records can be raised to satisfy ringing with large values and make every paid level prepared for the given scope.
- **III.9.7** [`continuous_push`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/BETA_TRANSPORT/Curve.lean#L122-L131) *(key result)* — For a continuous curve of representations, the push is jointly continuous in the parameter and the fine configuration.
- **III.9.8** [`advance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L175-L189) *(key result)* — Under additional remainder hypotheses, a priced reset step can be advanced to the next stage with continuous representatives.
- **III.9.9** [`deliver`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Transform.lean#L86-L91) *(key result)* — For rows with exponential-decay strip bounds, the inverse of r plus the transpose-product exists as a row with uniform strip bounds, with constants depending only on r, eta, A.
- **III.9.10** [`evaluates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Gas.lean#L96-L103) *(key result)* — At startup, the cake built from the payload and dictionary evaluates exactly to the bare Wilson weight at coupling β.
- **III.9.11** [`residual_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L76-L101) *(key result)* — The one-face Wilson matching residual is bounded by C times threshold to the fifth power in the budgeted sup norms, for small threshold.
- **III.9.12** [`card`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/RECIPE_STARTUP_PORT/Layout.lean#L52-L71) *(numbered result)* — If the allowance conditions hold and the level is at top, the stamped recipe satisfies the required menu of estimates with the actual pot and kettle.
- **III.9.13** [`prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT/Pricing.lean#L87-L107) *(key result)* — After enlarging the floor sequence, startup price conditions hold monotonically and any supplied delays can be raised to ones ensuring the prepared hypotheses for the scope.
- **III.9.14** [`developer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Dome.lean#L105-L138) *(key result)* — One can modify a schedule sheet to satisfy stationary purchase, order, and suitability conditions while preserving the kernel and floor.
- **III.9.15** [`beforeWait`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inherited.lean#L75-L89) *(key result)* — There exist thresholds beyond which the raw prices, openings, inherited conditions and cubic gates all hold, so that reset prices are paid.
- **III.9.16** [`engine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Engine.lean#L62-L82) *(key result)* — A planned kin can be modified in its boundary condition, giving a new planned kin with revised path and unchanged stationary data away from the end.
- **III.9.17** [`top_step`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/TopStep.lean#L160-L180) *(key result)* — Replacing top input paths in a Wilson-loop step preserves the critical, guessed, price-gap, classical-match and finite-bound properties.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

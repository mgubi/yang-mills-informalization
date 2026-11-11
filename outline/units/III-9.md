# III.9. The marginal flow: the running coupling and its reset

*Part III — Ultraviolet construction (renormalization group).* 7,215 lines of Lean in 1,261 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is **checked** against the Lean and rewritten by a second model; a final editing round is in progress. It is updated as it improves.


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
  - $m=0$ is the torus of side $L_p$ at unit spacing;
  - $m=N$ is the Wilson lattice.
- **Blocking.** The step $m+1\to m$ blocks by an odd factor $L_m\ge3$. The spacing at level $m$ is $a_m=(L_0\cdots L_{m-1})^{-1}$, and the scale is $s_m:=\log(1/a_m)=\sum_{i<m}\log L_i$. We write $\Lambda_m$ for the level-$m$ torus (at volume index $p$) and $|\Lambda_m|$ for its number of sites.
- **Gauge group.** $G\subset U(n)$, and its Lie algebra $\mathfrak g$ carries the inner product $\langle X,Y\rangle=-\mathrm{Re}\mathrm{tr}(XY)/n$.
- **Plaquettes.** $s(u)=1-\mathrm{Re}\mathrm{tr}u/n$ is the plaquette function. $F_p(U)\in\mathfrak g$ is the orthogonal projection of $\tfrac12(U_p-U_p^{-1})$, and $S_W=\sum_p s(U_p)$ is the Wilson action. Since $s(e^X)=|X|^2/2+O(|X|^4)$, the inverse coupling $\beta$ equals $1/g_0^2$ in this normalization.

**Effective actions.** An effective action at level $m$ is a *representation* $\rho=(P,c,E,K,b,\beta,v)$. It evaluates to
$$\rho(U)=\exp\big(v|\Lambda_m|-\beta\,\mathcal K_P(U)-\mathcal L_P(U)-\mathcal E(U)\big)\,\mathcal G(U).$$

- **The kinetic functional $\mathcal K_P$.** This is the $\beta$-coefficient of the leading terms of the path data $P$:
  - a clipped plaquette term;
  - smeared curvature-squared terms;
  - cubic and quartic local polynomials in curvatures along lattice paths.

  These are averaged over the point group of the lattice, i.e. signed permutations of the axes.
- **The other factors.** $\mathcal L_P$ are the $\beta$-independent loop terms. $\mathcal E$ is the sum of the regular (small-field) activities $E$. $\mathcal G$ is the polymer gas of the forced (large-field) activities $K$. $b$ is the budget point: orders, powers, cover size $B$ and threshold $t$ of the polymer norms.
- **Normalization.** The path data are normalized so that two things hold. At zero momentum, the $\beta$-quadratic form is $\sum_p|F_p|^2/2$. The loop kernel has vanishing zeroth and first moments. This is what makes $\beta$ *the* coefficient of the curvature-squared term.

**The block-spin step.** $T^{(m)}_{\beta'}$ denotes one step from level $m+1$ to level $m$ at inverse coupling $\beta'$:
$$(T^{(m)}_{\beta'}\rho')(V)=\int k_{\beta'}(V,U)\,\rho'(U)\,dU.$$
The kernel $k_{\beta'}$ is a probability kernel (unit III.1). Densities are taken relative to product Haar probability measure and are not normalized.

## 1. What this unit proves

The marginal direction of the renormalization group of four-dimensional Yang–Mills theory is one-dimensional: it is the coefficient $\beta$ of the curvature-squared term. The unit shows that this coefficient can be tracked exactly through the blocking history. It proves three things.

- **(a) Start-up.** The Wilson weight at the finest level is an admissible effective action for every $\beta$ in the band.
- **(b) One step.** One block-spin step followed by a *reset* of $\beta$ maps a continuous family of admissible actions at level $m+1$ to a continuous family at level $m$. The coupling moves by $\alpha_{N,m}+d$, where $\alpha_{N,m}$ is the one-loop coefficient of the step and $|d|\le r_m\le1$.
- **(c) Thresholds.** Every numerical condition used in (a) and (b) holds once the reference coupling exceeds entry thresholds, and these can be chosen in the order of constants of III.2.

Combined with the shooting argument of III.2 and the constructions of III.10 and III.13, this yields the selected history of III.9.3 and the law $\beta_{N,p}/\log(1/a_N)\to\kappa$ of the main theorem.

**Proposition III.9.1 (the slope constant).** Let $\mathfrak g$ be simple and nonabelian, and let $(b_i)$ be an orthonormal basis of $(\mathfrak g,\langle\cdot,\cdot\rangle)$. Put
$$C_G=-\frac1{\dim\mathfrak g}\sum_i\mathrm{tr}_{\mathfrak g}\big((\mathrm{ad}b_i)^2\big),\qquad \kappa=\frac{11\,C_G}{24\pi^2}.$$
Then $\kappa>0$.

In this normalization $C_G$ is the adjoint Casimir, and $\kappa=2b_0$ with $b_0=11C_G/(48\pi^2)$ the one-loop coefficient ($\mu\,dg/d\mu=-b_0g^3$). For $SU(N)$ in the defining representation, $C_G=2N^2$ and $\kappa=11N^2/(12\pi^2)$. This is the familiar asymptotic slope of the Wilson coupling, written $2N/g^2$ in the usual normalization of $g$.

*Status:* definition; positivity is a theorem and uses simplicity. Inside this unit only two things are used: $\kappa>0$, and the identity $\hat\beta_{m+1}=\hat\beta_m+\kappa\log L_m$. The fact that the one-loop coefficient of the actual blocked action is $-\kappa\log L+O(1)$ is proved in III.7, where $11/24\pi^2$ is the value of an explicit momentum integral (§2).
*Lean:* [`YM.Gauge.slopeConstant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184), [`YM.Gauge.casimir`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182), [`YM.Gauge.slopeConstant_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176), [`YM.Gauge.trace_color`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L71-L75).

**Proposition III.9.2 (reference coupling and scale functions).** Given the barrier $\bar\beta>0$ and the schedule, define
$$\hat\beta_m=\bar\beta+\kappa s_m,\quad M_m=e^{(\log\log\hat\beta_m)^2},\quad t_m=\hat\beta_m^{-1/2}M_m,\quad \varepsilon_m=\hat\beta_m^{-11/10},\quad \tilde\varepsilon_m=e^{-M_m^{1/5}},$$
and set $B_m=\lceil(\log\hat\beta_m)^2\rceil$ and $\mathfrak B_m=[\hat\beta_m/2,\,2\hat\beta_m]$. These are, in order: the reference coupling, the threshold multiplier, the small-field threshold, the regular and forced allowances, the cover size and the band.

Then $\hat\beta_{m+1}=\hat\beta_m+\kappa\log L_m$, $\hat\beta$ is nondecreasing, and $s_m\ge m\log3$, so $\hat\beta_m\to\infty$.

The calendar conditions are *hypotheses* on the schedule, not consequences of the definitions. They are:

- **Size conditions.** $\hat\beta_m>1$ and $t_m\le1$. The torus sides are at least $100(B_m+1)$, and at least $100$ times the block-patch radius plus one.
- **Stage index.** The stage index $J_m$ is nondecreasing, $J_{m+1}\le J_m+1$, and $J_m\to\infty$. The stage constants (orders, powers, support exponents) are monotone in the stage.
- **Smallness exponent.** $0<\theta_{J_m}\le1/J_m$, and $\theta$ is antitone.
- **Gentle schedule.** $\log L_m/s_m\to0$.
- **Drift and logarithmic costs.** With $\omega_j$ the drift allowance of stage $j$,
  $$\frac{\omega_{J_{m+1}}}{\log L_m}\le J_{m+1}^{-2},\qquad \frac{\log(1+\text{paths}+\text{width}^{-1}+\text{columns}+\text{relaxation}+\text{support exponent})_{J_{m+1}}}{\log L_m}\le J_{m+1}^{-2}.$$

*Status:* definitions (III.1) and elementary theorems. The calendar conditions are part of the schedule produced in III.2.
*Lean:* [`Calendar.hatBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79), [`threshold`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L83), [`allowance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L84), [`forcedAllowance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L85), [`coverSize`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L82), [`Calendar.Fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L97-L118), [`Shoot.band`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L63), [`Deployment.hat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Levels.lean#L43-L45), [`Timing.hat_mono`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Fast.lean#L40-L42), [`Schedule.divergent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L117-L120).

**Proposition III.9.3 (the selected history: the output consumed downstream).** A *history* assigns to all $N,p$ and $m\le N$ a level-$m$ representation $\rho_{N,p,m}$ with coupling $\beta_{N,p,m}$. It is *selected* if the following hold.

1. **Common path data.** The path data $P_{N,m}$ of $\rho_{N,p,m}$ do not depend on $p$.
2. **Shape.** $\rho_{N,p,m}$ carries the level-$m$ budget point and clip. It is lawful at level $m$:
   - its path data obey the stage bounds, with loop cap $2M_m^{\theta_{J_m}}$;
   - its regular activities are bounded with allowance $\varepsilon_m$;
   - its forced activities are bounded with allowance $\tilde\varepsilon_m$.

   Moreover $\beta_{N,p,m}\in\mathfrak B_m$.
3. **Start.** $v_{N,p,N}=0$ and $\rho_{N,p,N}(U)=e^{-\beta_{N,p,N}S_W(U)}$ for all $U$.
4. **Transfer.** For $m<N$, $\rho_{N,p,m}=T^{(m)}_{\beta_{N,p,m+1}}\rho_{N,p,m+1}$ at every configuration, and
   $$|\beta_{N,p,m+1}-\beta_{N,p,m}-\kappa\log L_m|\le\omega_{J_{m+1}}.$$
5. **End point.** $\beta_{N,p,0}=\bar\beta$.
6. **Running.** For every $\varepsilon>0$ there is $m_0$ with $|\beta_{N,p,m}-\hat\beta_m|\le\varepsilon s_m$ for all $m\ge m_0$, $N\ge m$ and all $p$.

*Consequences:*

- **Partition function.** For all $m\le N$, $\int\rho_{N,p,m}\,d\mathrm{Haar}=Z_W(\Lambda_{N,p};\beta_{N,p,N})$, the Wilson partition function.
- **Running law.** $\beta_{N,p,m}/s_m\to\kappa$ uniformly in $N\ge m$ and $p$, because $s_m\to\infty$.
- **Bare coupling.** The bare coupling of the Wilson family, $\beta_{N,p}:=\beta_{N,p,N}$, satisfies $\sup_p|\beta_{N,p}/\log(1/a_N)-\kappa|\to0$. This is (Reg1) of the main theorem with $b_*=\kappa=2b_0$. It is also the lattice form of the assessment's Theorem 7.2 (§7.4); the continuum statement itself belongs to VII.5.

*Status:* (1)–(6) is a specification (III.1). It is proved for the history of the main theorem in III.13 ([`Spire.Uses.exists_bolt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Spark.lean#L78-L85)), in four pieces:

- the steps are reset steps (III.9.5);
- the step program is concluded in III.10;
- the end point is reached by a backward shooting in the bare coupling (Lemma 4.20);
- clause (6) is derived from (4) and (5) (Lemma 4.21).

The partition identity is a theorem. The main theorem consumes the history through the calibration condition of VIII.1: there is one datum (schedule, kinetic data, recipe) for which every step, for every $N$, every $m<N$ and every $p$, is a reset step.
*Lean:* [`History.Selected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L234-L240), [`Conv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L213-L218), [`Transfer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L223-L227), [`Running`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L229-L230), [`History.partition_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L242-L249), [`Spec.Calibrated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L58-L61).

**Proposition III.9.4 (one reset step along a curve).** Fix a datum $\mathfrak D$ consisting of three things:

- a schedule;
- kinetic data $(\alpha_{N,m},P_{N,m})$ satisfying the planned one-loop conditions (§2);
- a recipe, i.e. retention and continuation tests.

Let $m<N$, let $I=[l,u]$, and let $x\mapsto\rho'_x$ ($x\in I$) be a continuous curve of admissible level-$(m+1)$ representations.

- *Admissible* means: path data $P_{N,m+1}$, the level-$(m+1)$ budget point and clip, lawful with the level-$(m+1)$ constants, and accepted by the recipe.
- *Continuous* means: $\beta$ and $v$ are continuous, the activities are indexed by fixed sets, and they depend continuously on $x$ in the polymer norm.

Write $\beta'_x=\beta(\rho'_x)$ and $H_x=T^{(m)}_{\beta'_x}\rho'_x$. Let $(c_m,r_m)$ be the reset prices of the stage pair $(J_{m+1},J_m)$, with $c_m>0$ and $0<r_m\le1$. Assume:

- **(P) Priced.** $\eta=\eta_{J_m}$ is a sensor constant (Lemma 4.7), and $2(c_m+1)\varepsilon_m\le\eta\,t_m^2\,r_m$.
- **(V) Probe.** $V$ is a small-field configuration with $\mathcal K_{P_{N,m}}(V)\ge|\Lambda_m|\eta t_m^2$. Such a $V$ exists by (P).
- **(I) Income.** There is a family $F(x,d)$, $x\in I$, $|d|\le r_m$, of level-$m$ activities with fixed index sets, valid with $(\varepsilon_m,\tilde\varepsilon_m)$ and continuous in $(x,d)$. Moreover $H_x(1),H_x(V)>0$, and
  $$\Big|(\beta'_x+\alpha_{N,m})\mathcal K(V)+\mathcal L(V)-\log\frac{H_x(1)}{H_x(V)}\Big|\le|\Lambda_m|c_m\varepsilon_m,$$
  $$|\mathcal E_{F(x,b)}(V)-\mathcal E_{F(x,a)}(V)|\le|\Lambda_m|c_m\varepsilon_m|b-a|.$$
- **(R) Remainder.** Three conditions:
  - *Shape control:* $|\mathrm{shape}_{x,a}(U)-H_x(U)/H_x(1)|\le C_U\,|f(x,a)|$ for all $U$ and $|a|\le r_m$, where $f$ is the scalar residual of Lemma 4.8;
  - *Forced bound:* the forced activities are bounded by $e^{-g\,M_{m+1}^2}$;
  - *Recipe:* the recipe accepts every exact trial.

Conclusion. There is a continuous $d:I\to[-r_m,r_m]$ with the following properties. Let $\rho_x$ have path data $P_{N,m}$, activities $F(x,d(x))$, coupling $\beta'_x+\alpha_{N,m}+d(x)$ and $v_x=|\Lambda_m|^{-1}\log H_x(1)$. Then:

- $x\mapsto\rho_x$ is a continuous curve;
- $\rho_x=H_x$ at every configuration;
- $\rho_x$ is admissible, its forced activities are bounded by $e^{-gM_{m+1}^2}$, and $|\beta(\rho_x)-\beta'_x-\alpha_{N,m}|=|d(x)|\le r_m\le1$.

These four properties together are called a *reset step*. Without (R), the same $d$ is the unique zero in $[-r_m,r_m]$ of the scalar residual. In that case $\rho_x(1)=H_x(1)$ and $\rho_x(V)=H_x(V)$.

*Status:* theorem.
*Lean:* [`CouplingReset.advance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L175-L189), [`correct`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L157-L173), [`Income`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L78-L85), [`Remainder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L97-L103), [`PricedReset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L66-L69), [`Usable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L55-L58), [`Directed.Move`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L49-L55).

**Proposition III.9.5 (the reset of the blocked action, and the step program).**

(a) *Explicit correction.* Suppose that along the curve the blocked density has the *early presentation*
$$H_x(U)=\exp\Big(\tau_x|\Lambda_m|-\beta'_x\mathcal K(U)-\mathcal L(U)-\sum_iE_{x,i}(U)\Big)\,\mathcal G_x(U)\,e^{-\alpha_{N,m}\mathcal S(U)},$$
where $\mathcal S$ is the masked quadratic part of $P_{N,m}$. Suppose also that the early activities obey the local bounds, depend continuously on $x$, and that the numerical gates of III.9.7 hold. Then the output of III.9.4 is defined and its correction is explicit:
$$d(x)=\delta_x,\qquad \beta(\rho_x)=\beta'_x+\alpha_{N,m}+\delta_x,\qquad t_m^2|\delta_x|\le H\le c_m\varepsilon_m/4,\qquad v_x=\tau_x-|\Lambda_m|^{-1}\textstyle\sum_iE_{x,i}(1).$$
Here $\delta_x$ is the isotropic curvature-squared coefficient of the early regular activities (Lemma 4.12), and $H$ is the size of the regular activities.

(b) *Program.* Suppose three things hold:

- the numerical gates hold at every level;
- the early presentation and its bounds exist along every admissible input curve with couplings in $\mathfrak B_{m+1}$;
- start-up curves exist.

Then $\mathfrak D$ satisfies the *step program*:

- **(begins)** For all $N,p$ there is a continuous curve $\beta\mapsto F(\beta)$, $\beta\in\mathfrak B_N$, of admissible level-$N$ representations with $\beta(F(\beta))=\beta$, $v=0$ and $F(\beta)=e^{-\beta S_W}$.
- **(advances)** For every $m<N$ and every continuous admissible input curve at level $m+1$ with couplings in $\mathfrak B_{m+1}$, there is a continuous output curve at level $m$ related to it, point by point, by reset steps. The finer bound $|\beta-\beta'-\alpha_{N,m}|\le r_m$ also holds.

The output coupling is *not* required to lie in $\mathfrak B_m$. The band is restored by the shooting (Lemma 4.20).

*Status:* (a) is a theorem whose hypotheses are inputs from III.10 and III.4: the early presentation, the local bounds, continuity, and the identification of the push with a Gaussian-sector integral. (b) is a theorem. The step program for the actual construction is concluded in III.10, by [`Roost.Factor.worksNow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Roost/Foundry.lean#L59) from this unit's results.
*Lean:* [`Return.reset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Advance.lean#L64-L90), [`Return.result`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Payment.lean#L56-L57), [`Collection.earlyValue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean#L26-L27), [`Use.supplier`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L85-L88), [`CouplingReset.program`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Stability.lean#L67-L70), [`Supplier.ports`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Stability.lean#L54-L65), [`Directed.Program`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L65-L72).

**Proposition III.9.6 (Wilson start-up).** Let $c$ be a clip and $b$ a budget point that are *compatible*: $c_{\rm dir}\le1$, $B\ge2$, and $t\,e^{(B-2)/c_{\rm rel}}\ge2$.

1. **Exact start.** For every $\beta\in\mathbb R$ and every configuration $U$, $\rho^{\rm start}_\beta(U)=e^{-\beta S_W(U)}$. Here $\rho^{\rm start}_\beta$ has:
   - the *Wilson top* path data $P^{\rm top}_c$ (Lemma 4.2);
   - $v=0$;
   - regular activities $\beta(1-c_{\rm dir})\times$ (the one-plaquette residuals of small-field plaquettes), averaged over the point group;
   - forced activities $e^{-\beta\,\mathrm{charge}(D,U)}$, one for each connected component $D$ of the large-field region.
2. **Residual bound.** For all orders $k$ and powers $P$ there are $C>0$ and $\delta\in(0,1]$ with the following property. For every budget point with order $k$, power $P$ and threshold $t\le\delta$, every torus, every plaquette $p$ and every site $o$ of $p$, the residual $R_p$ has budgeted sup norm at most $Ct^5$ at $o$.
3. **Eventual admissibility.** For each stage with $c_{\rm dir}\le1$ there is $\beta^*$ such that $\hat\beta_N\ge\beta^*$ implies two things. First, the start-up conditions hold at level $N$: compatibility, small threshold, regular activities bounded by $\varepsilon_N$, and forced ones by $\tilde\varepsilon_N$. Second, $\beta\mapsto\rho^{\rm start}_\beta$, $\beta\in\mathfrak B_N$, is a continuous curve of admissible representations.
4. **Installation.** The kinetic data can be changed at the finest level to $P_{N,N}=P^{\rm top}$ while keeping $\alpha$ and every planned one-loop condition.

*Status:* theorem.
*Lean:* [`WilsonStartup.Start.evaluates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Gas.lean#L96-L103), [`residual_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L76-L101), [`Start.Allows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Cake.lean#L43-L48), [`Timing.enough`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Clock.lean#L113-L139), [`Planned.Port.card`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/RECIPE_STARTUP_PORT/Layout.lean#L52-L71), [`Change.engine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Engine.lean#L62-L82).

**Proposition III.9.7 (entry thresholds).** Let $G$ be simple. Then there are sensor constants $\eta_j>0$ for every stage. Fix all later choices: block sizes, $\theta$, reset prices, forecasts, post-$L$ costs. Then every record of entry thresholds $(\beta^{\rm entry}_j)_j$ can be raised to a record $U$ such that every further raise $W$ of $U$ satisfies the following, for every schedule whose levels meet the thresholds of $W$ (i.e. $\beta^{\rm entry}_{J_{m+1}}\le\hat\beta_m$):

- **(a)** the reset is priced at every level;
- **(b)** the cubic gate (Lemma 4.10) holds;
- **(c)** the opening conditions hold: compatibility, width, the fee conditions of the step estimator, and the decay rate of forced activities;
- **(d)** the inherited gates hold.

The start-up conditions are bought in the same way. Every condition is "eventually in $\hat\beta$", and the thresholds are made monotone in the stage.

*Status:* theorem.
*Lean:* [`Time.beforeWait`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inherited.lean#L75-L89), [`StrongStartup.prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT/Pricing.lean#L87-L107), [`Timing.choose`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Fast.lean#L27-L38).

**Proposition III.9.8 (marker-rooted to site-pinned polymer sums).** Let $(X_i)$ be polymers on a four-dimensional torus with weights $f_i\ge0$. Let each polymer carry a finite set of marker names, the markers sitting at sites $o(v)$, with at most $\mu$ markers per site. Suppose that every polymer with $f_i>0$ contains the site of one of its markers, and that for every marker $v$
$$\sum_{i\ni v}e^{(a+1)\,\mathrm{cover}_M(X_i)}f_i\le c .$$
Then for every site $x$
$$\sum_{i:\,x\in X_i}e^{a\,\mathrm{cover}_M(X_i)}f_i\le\mu\,e\,(2(16M+9))^4\,c ,$$
uniformly in the size of the torus.

*Status:* theorem. It is used for observable insertions in III.12 and III.15, not for the coupling flow.
*Lean:* [`Extra.Multi.root_hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Root.lean#L161-L199).

**What the rest of the construction uses.**

- The specification III.9.3, which all of chapters 22–40 consult through the shape, band and transfer clauses.
- The function $\hat\beta$, in which every later estimate is stated.
- The step program III.9.5(b), the input of the shooting.
- The finer accuracy $|\beta_{N,p,m}-\beta_{N,p,m+1}-\alpha_{N,m}|\le r_m$.
- III.9.8.

## 2. What it uses

- **III.1 (block-spin step and interfaces).** This unit uses:
  - the step $T^{(m)}_\beta$ with its symmetry, gauge covariance and probability normalization ([`Calendar.op`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L88-L91), [`BlockControl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L120-L128), [`StepData.push_integral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Push.lean#L37-L43));
  - the interface records: History, Selected, the datum $\mathfrak D$ ([`Directed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L26-L36)), and reset step / program;
  - the conversion of a reset step into the transfer inequality ([`Directed.links`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L57-L63)). This uses $|\beta-\beta'-\alpha|\le1$ and $|\alpha+\kappa\log L|+1\le\omega$.
- **II.2 (polymer activities).** Representations, activities, their bounds and the large-field masks: [`Rep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L165-L171), [`Activities.Valid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L106-L111), [`EBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L98-L100), [`KBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L102-L104), [`PathData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L150-L154), [`PathData.Bounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L173-L185).
- **III.2 (order of constants and shooting).** This unit uses:
  - the constants chosen before the block size, and the block sizes ([`Supply.Sheet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35), [`Supply.Large`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L39-L48)). The block sizes satisfy $\omega_j/\log L_j\le\kappa/4$ and $\le j^{-2}$.
  - the record of the schedule having met every entry threshold ([`Supply.Paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162));
  - the shooting construction and the running estimate (Lemmas 4.20–4.21).
- **III.7 (one-loop coefficient).** The kinetic data satisfy the planned conditions ([`Kin.Planned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L93-L115)). Among them:
  - $|\alpha_{N,m}+\kappa\log L_m|+1\le\omega_{J_{m+1}}$;
  - $\alpha_{N,m}$ is, to exponential accuracy, the curvature-squared coefficient of $\log$ (determinant of the fluctuation Hessian) ([`FiniteBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L62-L71));
  - $P_{N,N}$ matches the Wilson energy to fourth order.

  The bound on $\alpha$ comes from [`Stationary.pouring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L17-L52), which proves: there exist $D$ and $L_{\min}$ such that $|\alpha+\kappa\log L|\le D$ for all odd $L\ge L_{\min}$ ([`HorizCalc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L20-L23)). The constant is produced by two steps:
  - the vector-minus-half-ghost bubble equals $2\,\mathrm{pole}(p)$, where $\mathrm{pole}(p)=4C_G\big(p_1^2|p|^{-6}-4p_1^2p_0^2|p|^{-8}-|p|^{-4}\big)$ ([`haloRate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L127-L141), [`poleVec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L125));
  - $(2\pi)^{-4}\int_{\mu\le|p|\le1}\mathrm{pole}=-\kappa\log\mu^{-1}$ ([`poleSpin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L326-L338)), with the remaining errors bounded ([`absoluteGeode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L346-L408)).

  The angular average of $\mathrm{pole}$ is $-\tfrac{11}{3}C_G|p|^{-4}$, the classical split $\tfrac13-4$ into orbital and spin parts.
- **III.13 (kinetic data and history).** The kinetic data are built for each $N$ by a downward recursion in $m$ whose step is a contraction with factor $\tfrac12$ ([`Reward.fieldArray`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Tides.lean#L15-L46), [`Reward.step_contracted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/AtLimit.lean#L46-L66), [`Reward.ties`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Tides.lean#L49-L62)). The selected history of the main theorem is also built there.
- **III.10 and III.4 (the nonlinear step).** These provide the hypotheses of III.9.5:
  - the identification of the blocked density with a Gaussian-sector integral ([`Return.earnings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inputs.lean#L56-L61));
  - its early presentation ([`Return.atlas`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inputs.lean#L70-L71));
  - the local activity bounds ([`Collection.Local`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Trays.lean#L35-L40)), continuity and recipe acceptance.

  These are delivered by [`Rain.glazing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Rain/Glazing.lean#L97-L104) and [`Roost.Factor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Roost/Foundry.lean#L26-L50).
- **I.1 and III.16 (analytic toolkit).** Lie-group facts and Taylor jets of the plaquette function.

**Standard mathematics.**

- Intermediate value theorem, and continuity of the inverse of a uniformly increasing family.
- Taylor's formula with uniform constants on compact sets.
- Schur's lemma: an $\mathrm{Ad}$-invariant symmetric form on a simple $\mathfrak g$ is a multiple of the inner product.
- The representation theory of the hyperoctahedral group on plaquette orientations, used through explicit reflections and permutations.
- Fourier analysis on tori with analytic symbols (Combes–Thomas type decay).

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

*The reset as a one-parameter matching problem.* Block one step at input coupling $\beta'$. The nonlinear analysis of III.10 (with III.4 and III.6) writes the blocked density in the early presentation of III.9.5(a). Its curvature-squared coefficient on the coarse lattice is the sum of three pieces:

- $\beta'$, carried over;
- $\alpha_{N,m}$, the one-loop shift from the fluctuation determinant (III.7);
- $\delta$, the curvature-squared part still hidden in the regular activities.

The reset sets $\beta=\beta'+\alpha_{N,m}+\delta$. It moves $\delta\sum|F|^2$, and the difference between $\alpha$ times the masked quadratic term and $\alpha$ times the full kinetic functional, from the activities into the path data. This is an *exact* reorganization of the same function (Lemma 4.13). The new activities obey the allowances of level $m$, and $|\delta|\le r_m$. Combined with $|\alpha_{N,m}+\kappa\log L_m|+1\le\omega$, this is the transfer inequality of III.9.3.

*Certification and continuity.* The same output is certified by a scalar argument that also yields continuity in the bare coupling, which the shooting needs. Compare the trial action and the blocked density at two configurations: the flat one, and a small-field probe $V$ (a stripe of equal links). Matching at the flat configuration fixes the vacuum constant. Matching the log-ratio at $V$ is one scalar equation $f(x,d)=0$.

- $f$ is strictly increasing in $d$, with slope at least $\tfrac12\mathcal K(V)\ge\tfrac12|\Lambda|\eta t^2$, because the activities move slowly in $d$.
- $|f(x,0)|\le\tfrac12\mathcal K(V)\,r$ by the surplus estimate and the pricing $2(c+1)\varepsilon\le\eta t^2 r$.

Hence there is a unique zero $d(x)\in[-r,r]$, depending continuously on $x$. Shape control upgrades the two-point match to equality at all configurations. In the actual construction $f(x,d)=(d-\delta_x)\mathcal K(V)$, so the zero is $\delta_x$ itself.

*Assembly.* The levels are chained backwards, from the Wilson lattice to level $0$, along curves parametrized by the bare coupling. At level $N$ the start-up curve covers $[\bar\beta+\tfrac\kappa2s_N,\ \bar\beta+2\kappa s_N]\subset\mathfrak B_N$. At each step the program yields an output curve. The transfer inequality, with $\omega/\log L\le\kappa/4$, forces the output couplings at the two ends to overshoot $[\bar\beta+\tfrac\kappa2s_m,\ \bar\beta+2\kappa s_m]$ on opposite sides. The intermediate value theorem then selects a subinterval mapped onto it. At $m=0$ this interval is the single point $\bar\beta$. Summing the transfer errors gives the running law.

*Comparison with the literature.* Compared with Bałaban's program, where the bare coupling is given and the block factor fixed, three things differ here:

- the coupling at the coarsest scale is prescribed, and the bare coupling is solved for by shooting, separately for each $(N,p)$;
- the block factors grow (§5);
- the marginal coefficient of the activities is read off by symmetry. Ad-invariance and simplicity reduce the curvature-squared part of each activity to a scalar, and the lattice point group makes it isotropic.

The order of constants of III.2 turns every numerical requirement into "eventually in $\hat\beta$" (III.9.7).

## 4. Steps

### 4.1 Reference schedule

**Lemma 4.1 (recursion of the reference coupling).** $s_{m+1}=s_m+\log L_m$, so $\hat\beta_{m+1}=\hat\beta_m+\kappa\log L_m$. $\hat\beta$ is nondecreasing if $\kappa\ge0$. Since $L_i\ge3$, $s_m\ge m\log3\to\infty$, and $\hat\beta_m\to\infty$ when $\kappa>0$.
*Sketch:* $a_m=(L_0\cdots L_{m-1})^{-1}$ and the definitions.
*Lean:* [`Schedule.scale_succ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L124-L127), [`Deployment.hat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Levels.lean#L43-L45), [`Timing.hat_mono`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Fast.lean#L40-L42), [`Schedule.divergent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L117-L120).

### 4.2 The Wilson start-up

**Lemma 4.2 (splitting the plaquette action).** Write $s(u)=|F(u)|^2/2+Q_4(F(u))+R(u)$. Here $Q_4$ is the fourth Taylor coefficient at $0$ of $s$ as a function of the curvature variable; the odd coefficients vanish because the function is even. $R$ is flat to order $5$ at the identity.

The top path data $P^{\rm top}_c$ consist of:

- the clipped plaquette term, which equals $c_{\rm dir}\,s(U_p)$ in the small-field region;
- the row term $\sqrt{1-c_{\rm dir}}\,F_p$, contributing $(1-c_{\rm dir})|F_p|^2/2$;
- the quartic atoms $(1-c_{\rm dir})Q_4(F_p)$;
- no cubic and no loop terms.

They satisfy the zero-momentum normalization ($c_{\rm dir}+(1-c_{\rm dir})=1$). On the small-field region, $\beta S_W=\beta\,\mathcal K_{P^{\rm top}}+\beta(1-c_{\rm dir})\sum_pR_p$.
*Sketch:* $\tfrac12$chord$^2=s$; Taylor expansion of $s$ in the variable $F$, together with evenness.
*Lean:* [`convert_taylor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Curvature.lean#L156-L164), [`surplus`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Curvature.lean#L166), [`surplus_jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Curvature.lean#L168-L179), [`Design.top`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Design.lean#L34-L38), [`Design.principal_top`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Design.lean#L156-L162).

**Lemma 4.3 (exact start).** For a compatible pair $(c,b)$, every $\beta$ and every $U$: the path-data channels of $P^{\rm top}$ at $\beta$, plus the regular activities (residuals of small-field plaquettes), plus the large-field remainders, add up to $\beta S_W(U)$, the sum being averaged over the point group. Moreover the gas equals $\exp(-\beta\cdot\text{(large-field remainder)})$. Hence $\rho^{\rm start}_\beta=e^{-\beta S_W}$, which is III.9.6(1).
*Sketch:* Fix $U$. The only admissible set of forced polymers is the family of connected components of the large-field region (cover size $B\ge2$ and the compatibility condition separate the padded components). So the gas collapses to a single product $\prod_De^{-\beta\,\mathrm{charge}(D,U)}$. The charges sum to the large-field remainder, and the channel identity accounts for the rest.
*Lean:* [`channel_split`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Channels.lean#L72-L87), [`Start.gas_raw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Gas.lean#L81-L94), [`Start.issues`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Gas.lean#L70-L75), [`Start.evaluates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Gas.lean#L96-L103).

**Lemma 4.4 (one-plaquette residual).** This is III.9.6(2).
*Sketch:* $R_p$ is a real-analytic function of the four link matrices of $p$. On a small-field plaquette (chord $\le t$) its derivatives of order $l\le k$ along directions of size $\le t(1+4)^P$ are bounded by $C_lt^5$. This is Taylor's formula with the flatness of Lemma 4.2 and compactness of $G$; the factor $(1+4)^P$ is the budget weight of sites within distance $4$. Take $C=1+\sum_lC_l$ and the smallest $\delta$.
*Lean:* [`residual_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L76-L101), [`residual_jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L62-L68), [`healthy_chord`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L70-L74), [`Quad.small_jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Residual.lean#L161-L183).

**Lemma 4.5 (start-up is admissible eventually).** For each stage with $c_{\rm dir}\le1$, the start-up conditions at level $N$ hold for all $\hat\beta_N$ beyond a threshold. Consequently the curve $\beta\mapsto\rho^{\rm start}_\beta$ over $\mathfrak B_N$ is admissible and continuous. This is III.9.6(3).
*Sketch:* The regular activities have size $\le|\beta|\,C\,t_N^5\times$(a cover constant) $\le 2\hat\beta_N C t_N^5$. This is $O(\hat\beta_N^{-3/2}e^{5(\log\log\hat\beta_N)^2})\ll\varepsilon_N=\hat\beta_N^{-11/10}$. The large-field charges are $\ge\beta\cdot$const$\cdot t_N^2$ per plaquette, which beats $\tilde\varepsilon_N$.
*Lean:* [`Timing.enough`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Clock.lean#L113-L139), [`Start.ink`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Ink.lean#L104-L122), [`Start.Loan.kernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Funds.lean#L130-L143), [`Planned.Port.card`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/RECIPE_STARTUP_PORT/Layout.lean#L52-L71). *(proof read for `card`; statement only for `enough`)*

**Lemma 4.6 (installing the Wilson top in the kinetic data).** Suppose a new path datum $V$ at the finest level has the same main term as the old one $W$ up to jets of order $4$, and both have vanishing loop coefficients. Then the price gap, criticality of the stationary point, the initial guess, the classical match and the one-loop finite bound for the first step all transfer from $W$ to $V$. Consequently the kinetic data can be revised to $P_{N,N}=P^{\rm top}$, keeping all $\alpha_{N,m}$ and the stationary data of the steps $m+1<N$. This is III.9.6(4).
*Sketch:* The planned condition at the finest level already matches $P_{N,N}$ with the Wilson energy to order $4$, and so does $P^{\rm top}$ (Lemma 4.2). Only the first step $N\to N-1$ sees the change.
*Lean:* [`Change.top_step`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/TopStep.lean#L160-L180), [`Change.engine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Engine.lean#L62-L82). *(proof read for `engine`; statement only for `top_step`)*

### 4.3 The scalar response

**Lemma 4.7 (sensor).** Let $G$ be nontrivial, let $A=c_{\rm dir}>0$ and $C\ge0$. Then there is $\eta>0$ with the following property. For every even side, every path datum whose cubic and quartic atoms have budget $\le C$, and every threshold $t\le1$, there is a configuration $V$ that is small-field everywhere and satisfies $\mathcal K(V)\ge|\Lambda|\,\eta\,t^2$.
*Sketch:*

- Choose $u\in G$ with chord $h=\tau t$, where $\tau=\min(\varepsilon_G,\tfrac14,A/(512(1+C)))$; such $u$ exists by the intermediate value theorem along a one-parameter subgroup.
- Put $u$ on the axis-$0$ links at sites with even first coordinate, and $1$ elsewhere. Every $(0,1)$-plaquette has chord $h$, and every plaquette has chord $\le4h\le t$.
- The quadratic term contributes $\ge|\Lambda|Ah^2/2$. The cubic and quartic atoms contribute at least $-|\Lambda|(C(4h)^3+C(4h)^4)\ge-|\Lambda|Ah^2/4$.
- The point-group average permutes plaquettes and preserves these bounds. Hence $\eta=A\tau^2/4$.

*Lean:* [`CouplingReset.sensor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Probe.lean#L96-L142), [`reachable_chord`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Probe.lean#L40-L54).

**Lemma 4.8 (monotone response, continuous root).** Let $f:I\times[-r,r]\to\mathbb R$ satisfy three conditions:

- $f(x,b)-f(x,a)\ge\mu(b-a)$ for $a\le b$, with $\mu>0$;
- $f(x,\cdot)$ is continuous, and $f(\cdot,a)$ is continuous;
- $|f(x,0)|\le\mu r$.

Then there is a unique $d(x)\in[-r,r]$ with $f(x,d(x))=0$. The function $d$ is continuous, and $|d(x)-a|\le|f(x,a)|/\mu$.
*Sketch:* $f(x,-r)\le0\le f(x,r)$, so the intermediate value theorem gives a zero, unique by strict monotonicity. Moreover $|d(y)-d(x)|\le|f(y,d(x))-f(x,d(x))|/\mu\to0$.
*Lean:* [`Response`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Root.lean#L27-L31), [`Response.balance_solve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Root.lean#L80-L83), [`Response.continuous`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Root.lean#L54-L58), [`solve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Root.lean#L60-L70).

**Lemma 4.9 (two-point readout).** For a trial template — fixed path data, clip, budget point, and activities $F(x,d)$ that vanish at the flat configuration — define the scalar residual
$$f(x,d)=(\beta'_x+\alpha+d)\,\mathcal K(V)+\mathcal L(V)+\mathcal E_{F(x,d)}(V)-\log\frac{H_x(1)}{H_x(V)} .$$
Install the trial with coupling $\beta'_x+\alpha+d(x)$ and vacuum constant $v_x=|\Lambda|^{-1}\log H_x(1)$. If $f(x,d(x))=0$, the trial equals $H_x$ at $1$ and at $V$. If moreover the template satisfies shape control (III.9.4(R)), it equals $H_x$ at every configuration.
*Sketch:* At $U=1$ the kinetic, loop and activity terms vanish and the gas is $1$. At small-field $V$ the gas is $1$. Shape control at a zero of $f$ gives $\mathrm{shape}=H_x/H_x(1)$.
*Lean:* [`Template.residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Reset.lean#L64-L65), [`Template.passes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Reset.lean#L99-L105), [`Template.realizes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Reset.lean#L119-L125), [`Template.response`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Reset.lean#L131-L140).

**Lemma 4.10 (surplus from a pre-reset presentation).** Suppose that on $V=1$ and on every small-field $V$
$$H_x(V)=\exp\big(u_x|\Lambda_m|-\beta'_x\,\mathcal M(V)-\alpha_{N,m}\,\mathcal S(V)-\mathcal L(V)-\mathcal E_x(V)\big),$$
where $\mathcal M$ is the unmasked main term (quadratic, cubic and quartic), $\mathcal S$ its quadratic part, and $\mathcal E_x$ has size $\le c_m\varepsilon_m/4$. Suppose also the cubic gate $|\alpha_{N,m}|\cdot2\,\mathrm{paths}\cdot t_m^3\le c_m\varepsilon_m/2$. Then the surplus inequality of III.9.4(I) holds. If the output activities move slowly in $d$, all of (I) holds.
*Sketch:*

- On small-field $V$, $\mathcal K(V)=\mathcal M(V)$ and the loop functional is unmasked.
- $|\mathcal K(V)-\mathcal S(V)|\le2C|\Lambda|t^3$, since the cubic and quartic atoms are $O(t^3)$ per site.
- The regular activities at $1$ and at $V$ cost $2\cdot|\Lambda|c\varepsilon/4$.
- The cubic gate absorbs $|\alpha|\,|\mathcal K-\mathcal S|$. It holds eventually because $|\alpha|\le\omega+\kappa\log L$ and $t^3\ll\hat\beta^{-11/10}$.

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

**Lemma 4.12 (the marginal coefficient of the activities).** Let $f$ be a regular, Ad-invariant activity anchored at $o$, and let $\mathfrak g$ be simple. The second derivative of $f$ at the trivial configuration, along the fields of constant curvature $X$ in orientation $b$ and $Y$ in orientation $b'$, equals $\mathrm{coeff}_f(b,b')\langle X,Y\rangle$ (Schur). This coefficient is set to $0$ when the enlarged support of $f$ wraps around the torus.

For a family $A$ of such activities that is invariant under translations and the point group, put
$$\delta(A)=\sum_{f\text{ anchored at }0}\mathrm{coeff}_f(01,01).$$
Then:

- for every site $o$, $\sum_{f\text{ anchored at }o}\mathrm{coeff}_f(b,b')=\delta(A)\,\mathbf 1_{b=b'}$;
- the curvature-squared part of $A$ at each site is $\delta(A)\sum_b|w_b|^2$;
- if $A$ has regular size $c$, then $t^2|\delta(A)|\le c$.

*Sketch:* A reflection of one axis reverses the sign of each off-diagonal coefficient, so these vanish. Signed permutations carry each diagonal coefficient to $(01,01)$. The bound follows from the second derivative in a direction of size $t$.
*Lean:* [`Averaging.delta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Isotropy.lean#L75), [`Averaging.isotropic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Isotropy.lean#L77-L98), [`Averaging.identity`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Isotropy.lean#L100-L102), [`Averaging.delta_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Isotropy.lean#L103-L112), [`label_color`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Projection.lean#L34-L40), [`projection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Projection.lean#L89-L90). *(proof read for isotropy and the bound; statement only for the Schur step)*

**Lemma 4.13 (exact reorganization; the physical reset).** Let the early presentation hold with local bounds (III.9.5(a)), and let $\delta_x=\delta(E_x)$. Consider the representation with:

- path data $P_{N,m}$;
- coupling $\beta'_x+\alpha_{N,m}+\delta_x$;
- vacuum constant $\tau_x-|\Lambda|^{-1}\sum_iE_{x,i}(1)$;
- the reorganized activities.

It evaluates exactly to the early value. In the reorganized activities the isotropic curvature-squared part $\delta_x$ and the $\alpha$-difference between masked quadratic and full kinetic terms have been removed from the regular activities, and compensating terms added. The reorganized activities obey the level-$m$ allowances and the forced bound $e^{-gM_{m+1}^2}$.

Consequently, in Lemma 4.11 the residual equals $(d-\delta_x)\mathcal K(V)$. So $d=\delta_x$, and III.9.5(a) holds.
*Sketch:*

- The surplus inequality comes from Lemma 4.10, through the identity "push = Gaussian-sector integral = early value" restricted to small-field $V$.
- Shape control follows from the exact identity at $d=\delta_x$ and the affine dependence of the trial on $d$.
- The forced bound and recipe acceptance are part of the inputs.

*Lean:* [`Collection.Local.actual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean#L92-L95), [`Local.exponent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean#L70-L82), [`Return.settled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Payment.lean#L77-L84), [`Return.grants`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inputs.lean#L74-L94), [`Return.earns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Advance.lean#L37-L42), [`Return.remainders`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Advance.lean#L44-L61), [`Return.physical_shape`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Advance.lean#L30-L36), [`Return.reset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Advance.lean#L64-L90). *(proof read for `reset`, `earns`, `remainders`, `grants`, `settled`; statement only for the reorganized activities, [`Local.renew`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Investor.lean#L112-L128))*

**Lemma 4.14 (from per-step inputs to the program).** This is III.9.5(b). The numerical gates ([`Use.Machine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L41-L49)), the existence of early presentations along every admissible input curve ([`Use.Offering`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L77-L81)) and the start-up curves ([`Use.Origins`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L83-L84)) together give the step program.
*Sketch:* For each input curve, Lemma 4.7 provides a probe. Lemma 4.13 provides (I) and (R). Lemma 4.11 then gives the output curve and the bound $|\beta-\beta'-\alpha|\le r_m$.
*Lean:* [`Use.supplier`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L85-L88), [`Machine.packet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L71-L74), [`Supplier`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Stability.lean#L41-L47), [`program`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Stability.lean#L67-L70).

### 4.5 Continuity of the transport

**Lemma 4.15 (joint continuity of the blocked density).** Let $x\mapsto\rho'_x$ be a continuous curve of lawful representations with fixed path data, clip and budget point. Then $(x,V)\mapsto(T^{(m)}_{\beta'_x}\rho'_x)(V)$ is jointly continuous, and $x\mapsto\rho'_x(U)$ is continuous for every $U$.
*Sketch:* Continuity of the activities in the polymer norm gives uniform convergence of the additive part and of the gas in $U$. This yields a local uniform bound on $\rho'_y$, and dominated convergence applies under the kernel. The kernel itself is continuous in $\beta$ and in the coarse configuration.
*Lean:* [`FixedRepData.continuous_push`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/BETA_TRANSPORT/Curve.lean#L122-L131), [`FixedRepData.continuous_eval`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/BETA_TRANSPORT/Curve.lean#L93-L97), [`Catalog.stable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Catalog.lean#L39-L45).

### 4.6 Entry thresholds

**Lemma 4.16 (monotone thresholds).** Let $T_j(x)$ be properties, one for each stage $j$, each holding for all large $x$. Then any record $u_j$ can be raised to a nondecreasing record $m_j\ge u_j$ such that $T_j(x)$ holds for all $x\ge m_j$. Conditions on the two possible stage transitions into a stage are combined first.
*Sketch:* Take $m_j$ to be the prefix maximum of $\max(\text{threshold}_i,u_i)$ over $i\le j$.
*Lean:* [`collect_upper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Basic.lean#L111-L118), [`eventually_transitions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Basic.lean#L126-L131), [`StepStages`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Basic.lean#L27), [`DelayLe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Post.lean#L34-L38).

**Lemma 4.17 (the reset gates hold eventually).** Every condition in III.9.7 holds for all large $\hat\beta$, at fixed stages and fixed block size. The pricing condition reads $2(c+1)\le\eta\,r\,M^2$, equivalently $2(c+1)\varepsilon\le\eta t^2r$; it holds eventually because $M=e^{(\log\log\hat\beta)^2}\to\infty$. The cubic gate holds because $t^3\ll\hat\beta^{-11/10}$. The opening conditions (fees of the step estimator at $y=\hat\beta+\kappa\log L$, for $|\alpha|\le\omega+\kappa\log L$ and $\beta\in\mathfrak B$) compare powers of $\hat\beta$ with $e^{c(\log\log\hat\beta)^2}$. The forced decay $e^{-\mathrm{rate}}\le e^{-gM^2}$ follows from the rate exceeding $4g$. The inherited gates hold because the pre-$L$ fraction $f/L$ and a vanishing term stay below the credit.
*Sketch:* Each item is a one-line asymptotic comparison. They are collected by Lemma 4.16 in the order: sensors (before $L$), inherited gates, opening, cubic gate, pricing.
*Lean:* [`can_delay_reset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L56-L62), [`buys_reset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L71-L89), [`sensors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L46-L49), [`delay_cubic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Precision.lean#L100-L106), [`Time.cash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Currency.lean#L75-L126), [`Time.late`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Opening.lean#L48-L59), [`Time.open_shop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Opening.lean#L62-L65), [`Time.now`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Opening.lean#L84-L119), [`Time.rawGate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inherited.lean#L30-L56), [`Time.beforeWait`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inherited.lean#L75-L89). *(proof read for `beforeWait`, `buys_reset`, `can_delay_reset`, `delay_cubic`, `late`, `now`; statement and skim for `cash`, `rawGate`)*

**Lemma 4.18 (start-up thresholds).** After the stage profile is adjusted (paths and columns enlarged, block-size floors raised), there are thresholds beyond which the following hold at every level $N$ with $\hat\beta_N$ above them, monotonically in the thresholds:

- the start-up conditions of Lemma 4.5;
- the mixture extras;
- the escrow and bond reserves;
- the multi-source preparations used by observable insertions.

*Lean:* [`StrongStartup.prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT/Pricing.lean#L87-L107), [`StrongStartup.before`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT/Pricing.lean#L47-L64), [`Extra.Multi.pricing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Schedule.lean#L98-L111), [`Timing.receive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Fast.lean#L44-L51), [`ThroughLaunch.developer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Dome.lean#L105-L138). *(proof read for `prices`; statement only for the others)*

### 4.7 Assembly and the running law (in III.2 and III.13; the purpose of this unit)

**Lemma 4.19 (gates at the edges of the shooting window).** Put $\phi_m=\bar\beta+\tfrac\kappa2s_m$ and $\psi_m=\bar\beta+2\kappa s_m$. Then $[\phi_m,\psi_m]\subset\mathfrak B_m$, and $\phi_0=\psi_0=\bar\beta$. Assume $\omega_{J_{m+1}}\le\tfrac\kappa4\log L_m$ (guaranteed by the choice of block sizes). If a step satisfies the transfer inequality, then:

- input coupling $\phi_{m+1}$ forces output coupling $<\phi_m$;
- input coupling $\psi_{m+1}$ forces output coupling $>\psi_m$.

*Sketch:* $\beta_m\le\phi_{m+1}-\kappa\log L_m+\omega\le\phi_m-\tfrac\kappa4\log L_m$, and symmetrically for $\psi$.
*Lean:* [`Shoot.gates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L81-L90), [`Shoot.limits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L60-L68), [`Shoot.Drifting.pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L73-L79).

**Lemma 4.20 (shooting in the bare coupling).** Suppose the step program holds and $G$ is simple. Then for all $N,p$ there is a trail $(\rho_{N,p,m})_{m\le N}$ with the following properties:

- it starts with a Wilson start-up $e^{-\beta S_W}$;
- each level is admissible, with coupling in $[\phi_m,\psi_m]$;
- consecutive levels satisfy the transfer clause;
- $\beta_{N,p,0}=\bar\beta$.

Hence a history satisfying (1)–(5) of III.9.3 exists.
*Sketch:* Decreasing induction on $m$ carries an interval $[l,u]$ of bare couplings and a continuous curve of trails.

- At $m=N$, restrict the start-up curve to $[\phi_N,\psi_N]$.
- At each step, apply the step program, giving an output curve over the same interval. By Lemma 4.19 its couplings at $l$ and $u$ lie below $\phi_m$ and above $\psi_m$. A compactness and intermediate-value argument gives $[l',u']\subset[l,u]$ whose image is $[\phi_m,\psi_m]$, with $\phi_m,\psi_m$ attained at the ends.
- At $m=0$ the left end gives $\beta_0=\bar\beta$.

*Lean:* [`Shoot.steps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L112-L154), [`Shoot.narrow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L18-L49), [`Shoot.successful`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L156-L159), [`Recipe.races`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L67-L82), [`Graces.winnow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Graces/Eagles.lean#L33-L50).

**Lemma 4.21 (running).** If (4) and (5) of III.9.3 hold, then (6) holds.
*Sketch:*

- By induction from $\beta_{N,p,0}=\bar\beta=\hat\beta_0$: $|\beta_{N,p,i}-\hat\beta_i|\le\sum_{k=1}^{i}\omega_{J_k}$.
- Given $\varepsilon$, pick $j$ with $J_{k+1}^{-2}\le\varepsilon/2$ for $k\ge j$, using $J\to\infty$.
- The drift condition gives $\sum_{k\le i}\omega_{J_k}\le\sum_{k\le j}\omega_{J_k}+\tfrac\varepsilon2(s_i-s_j)$.
- This is $\le\varepsilon s_i$ for $i$ large, since $s_i\to\infty$. The bound is uniform in $N\ge i$ and $p$.

*Lean:* [`Shoot.trajectory`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L23-L53), [`Orchard.traject`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Orchard/First.lean#L55-L88). The second version replaces (5) by the band at level $0$.

**Lemma 4.22 (the history of the main theorem).** In III.13, trails with level-$0$ coupling $\bar\beta+b$ are constructed for $b$ in a disc, and their bare coupling is unique. The trail with $b=0$, together with the step program of III.10, is a selected history in which every step is a reset step. It enters the Wilson family through the calibration condition.
*Lean:* [`Spire.Uses.exists_bolt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Spark.lean#L78-L85), [`Spire.Uses.hits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Spark.lean#L68), [`Upland.Arc.exists_trial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland/Plinth.lean#L71-L75), [`Mast.calibrated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Forest/Glue.lean#L35-L36).

### 4.8 Auxiliary results

**Lemma 4.23 (marker-rooted sums).** This is III.9.8.
*Sketch:*

- If $x\in X_i$ and a marker $v$ of $X_i$ sits in $X_i$, then $\mathrm{dist}(o(v),x)\le\mathrm{cover}_M(X_i)(4M+2)+2M$. So $e^{a\,\mathrm{cover}}\le e^{(a+1)\mathrm{cover}}\,e^{1-\mathrm{dist}/(4M+2)}$.
- Summing over $i$ marker by marker gives at most $c$ per marker.
- Summing over markers gives $\le\mu\sum_ye^{1-\mathrm{dist}(y,x)/(4M+2)}\le\mu e(2(16M+9))^4$, uniformly in the torus.

*Lean:* [`Extra.Multi.root_hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Root.lean#L161-L199), [`torus_kernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Root.lean#L136-L156).

**Lemma 4.24 (decay of a shifted Gram inverse).** Let $r>0$, and let $P$ be a translation-invariant matrix kernel whose symbol is analytic and bounded by $A$ in the strip $|\mathrm{Im}k|<\eta$. Then $(r+P^{\top}P)^{-1}$ is, on every torus, a translation-invariant kernel with symbol analytic and bounded by $C$ in a strip of width $\tau$. The constants $C$ and $\tau$ depend only on $r$, $\eta$ and $A$.
*Sketch:* The symbol $r+\hat P^*\hat P$ is invertible on real momenta and stays invertible in a narrower strip (Combes–Thomas). Inversion commutes with the discrete Fourier transform on each torus.
*Lean:* [`Polar.deliver`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Transform.lean#L86-L91), [`Polar.invert_tori`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Transform.lean#L48-L84). *(proof read for `invert_tori`; statement only for `deliver`)*

## 5. Where the difficulty lies

- **The analytic substance is elsewhere.** Three inputs carry it:
  - the early presentation of the blocked density with bounded activities (III.10, with III.4 and III.6);
  - the one-loop coefficient (III.7);
  - the kinetic data (III.13).

  Given these, the reset itself is an exact reorganization (Lemma 4.13). What is genuinely added here is threefold:
  - the symmetry argument that isolates a single marginal scalar (Lemma 4.12);
  - the Wilson start-up as an exact identity with an $O(t^5)$ residual (Lemmas 4.3–4.4);
  - *continuity in the bare coupling* (Lemmas 4.8, 4.15). A single-trajectory renormalization group does not need continuity; the shooting does.
- **The intermediate value theorem is used only in its trivial form.** In the actual construction the residual is affine in $d$, namely $f=(d-\delta)\mathcal K(V)$. So the zero is explicit, and the general monotone-response machinery (Lemmas 4.8–4.9) is stronger than what is needed.
- **The block factors must grow.** The planned one-loop condition gives $\omega_{J_{m+1}}\ge|\alpha+\kappa\log L_m|+1\ge1$. The drift condition and $J\to\infty$ then force $\log L_m\ge J_{m+1}^2\to\infty$, while the gentle condition keeps $\log L_m=o(s_m)$. This is a consequence of the cited hypotheses, not a separate Lean lemma.

  The per-step error is only bounded by a constant: the one-loop error $D$ plus the reset margin. The reset part is actually small, $|\delta|\le C\hat\beta^{-1/10}e^{-2(\log\log\hat\beta)^2}$, but the $+1$ is built into the bookkeeping. With a fixed block factor the argument would determine the slope only up to $\omega/\log L$. Accumulated errors are $o(s_m)$ only because $L_m\to\infty$. This departs from Bałaban (fixed $L$). It is also much weaker than perturbation theory, where the two-loop correction to $\beta_m$ is $O(\log s_m)$. The construction controls no $O(1)$ or $\log\log$ terms. This is enough for (Reg1) and for the assessment's Theorem 7.2.
- **Normalization from the coarse end.** $\beta_{N,p,0}=\bar\beta$ is exact. The bare coupling $\beta_{N,p,N}$ is solved for, separately for each $(N,p)$; it depends on the volume, and in III.13 it is unique. The output of a reset step need not stay in the band; the band is restored by the shooting window $[\phi_m,\psi_m]$.
- **Bookkeeping dominates the code.** Most of the Lean is threshold bookkeeping (III.9.7, Lemmas 4.16–4.18). A written proof can state it once: every inequality used is of the form "a power of $\hat\beta$ beats a power of $e^{(\log\log\hat\beta)^2}$" and holds beyond a threshold depending only on earlier constants.

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
| $\mathfrak D$ | [`Directed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L26-L36) | schedule, kinetic data and recipe |
| reset step | [`Directed.Move`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L49-L55) | one step with exact transfer and $\lvert\beta-\beta'-\alpha\rvert\le1$ |
| step program | [`Directed.Program`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L65-L72) | start-up curves and reset along all admissible curves |
| $(c_m,r_m)$ | [`ResetPrices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L38-L43) (`cost`, `radius`) | income multiplier, reset window ($\le1$) |
| $\eta_j$, probe $V$ | [`Sensor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Probe.lean#L92-L94), [`Usable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L55-L58) | lower bound $\mathcal K(V)\ge\lvert\Lambda\rvert\eta t^2$ |
| $f(x,d)$, $d$ | [`Template.residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Reset.lean#L64-L65) | scalar residual, coupling correction |
| $\delta(A)$ | [`Averaging.delta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Isotropy.lean#L75) | isotropic curvature-squared coefficient of activities |
| early presentation | [`Collection.earlyValue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean#L26-L27), [`Return.atlas`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inputs.lean#L70-L71) | blocked density before the reset |
| $P^{\rm top}$, $R_p$, $Q_4$ | [`Design.top`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Design.lean#L34-L38), [`residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L58), [`fourth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Curvature.lean#L154) | Wilson top path data, one-plaquette residual, quartic coefficient |
| $\rho^{\rm start}_\beta$ | [`Bid.Cake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L27-L28) with `payload`, `dictionary` | Wilson start-up representation |
| compatible $(c,b)$ | `WilsonStartup.Decent` | $c_{\rm dir}\le1$, $B\ge2$, $te^{(B-2)/c_{\rm rel}}\ge2$ |
| $\phi_m,\psi_m$ | [`floorBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L57), [`ceilBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L58) | shooting window |
| price, cost, fee, gate, delay, entry, shop, cash | glossary item 1 | numerical bounds and thresholds in $\hat\beta$; nothing economic |

## 7. Open points for the writer

1. **The early presentation.** The hypotheses of III.9.5(a) are carried here and discharged in III.10 ([`Rain.glazing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Rain/Glazing.lean#L97-L104), [`Roost.Factor.offering`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Roost/Foundry.lean#L56)). They are: the identification of the push with a Gaussian-sector integral, the early presentation, the local bounds and continuity. Their proofs have not been checked in detail.
2. **The reorganized activities.** The proof that the reorganized activities after the reset obey the level-$m$ allowances ([`Local.renew`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Investor.lean#L112-L128)) was read only at the level of statements. Their exact composition was not read either: the removed $\delta\sum|F|^2$ and the $\alpha$-difference terms, and how the reset moves the $\alpha$-difference between masked quadratic and full kinetic terms. A written account must spell this out.
3. **The III.13 construction.** The history of the main theorem is built in III.13. That construction varies the end point $\bar\beta+b$ over a complex disc and proves the bare coupling unique. It was read only at the level of statements. Whether it reuses the shooting of Lemma 4.20 or an independent argument is not settled here (probable: an independent argument with the same specification).
4. **Two versions of the selected history.** Both are in the closure. The one in III.9.3 has the end-point clause. A relaxed copy, used in intermediate constructions of III.13, has a trivial end-point clause and derives running from the band at level $0$. A written account needs only the first.
5. **The one-loop error.** The constant $D$ in $|\alpha+\kappa\log L|\le D$ is not shown to tend to $0$ as $L\to\infty$, and the proof does not need it. Hence the growth of $L_m$ in §5.
6. **Auxiliary results in the folders.** III.9.8, Lemma 4.24, the start-up recipe, schedule adjustment and multi-source pricing are consumed by observable insertions (III.12, III.15); their exposition belongs there.
7. **Code outside the closure.** The following are not used by the main theorem:
   - most of `THRESHOLD_SOURCE_RESTART`, `MULTISOURCE_BOUNDS` and `PRICE_COMPILER`;
   - the files `Compare`, `Normalized`, `Tuning`, `Survival`, `Sectors` and `Prefix` of the coupling reset;
   - the alternative assemblies in `Band.lean` (`holding`, `actually`, `supplies`) and the start-up variant `Start.oust`.

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

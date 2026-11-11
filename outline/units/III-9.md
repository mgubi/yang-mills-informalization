# III.9. The marginal flow: the running coupling and its reset

*Part III — Ultraviolet construction (renormalization group).*

Tracks the running coupling and resets the effective density after each renormalization step.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/III-9.md) · [← Previous: III.8](III-8.md) · [Next: III.10 →](III-10.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** unit III.9: [coupling reset](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET), [verified reset](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP), [Wilson start-up](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP). **Size:** 7,215 lines.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

Let $G\subset U(n)$ be closed, with Lie algebra $\mathfrak g$.

**Proposition III.9.1 (slope).** For simple nonabelian $\mathfrak g$ with orthonormal basis $(b_i)$ in $\langle X,Y\rangle=-\mathrm{Re}\mathrm{tr}(XY)/n$, define $C_G=-(\dim\mathfrak g)^{-1}\sum_i\mathrm{tr}_{\mathfrak g}((\mathrm{ad}b_i)^2)$ and $\kappa=11C_G/(24\pi^2)$. Then $\kappa>0$.
*Status:* definition and positivity theorem. *Lean:* [slopeConstant_pos](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176).

**Proposition III.9.2 (reference scales).** Fix $\kappa>0$, $\bar\beta>1$, an infinite sequence of odd $L_m\ge3$. Set
$$s_m=\sum_{i<m}\log L_i=\log(1/a_m),\quad \hat\beta_m=\bar\beta+\kappa s_m,\quad M_m=e^{(\log\log\hat\beta_m)^2},$$
$$t_m=\hat\beta_m^{-1/2}M_m,\quad\varepsilon_m=\hat\beta_m^{-11/10},\quad\tilde\varepsilon_m=e^{-M_m^{1/5}},\quad B_m=\lceil(\log\hat\beta_m)^2\rceil,\quad\mathfrak B_m=[\hat\beta_m/2,2\hat\beta_m].$$
Then $\hat\beta_{m+1}=\hat\beta_m+\kappa\log L_m$, $\hat\beta$ is nondecreasing and diverges. Additional scale hypotheses are: $t_m\le1$; sides at least $100(B_m+1)$ and $100(R_m+1)$ at levels $m,m+1$, for every volume; $J_m\ge4$ nondecreasing, divergent, increasing by at most one; nondecreasing derivative orders, spatial powers, support exponents and stage factors $\ell_j$, with $L_m=\ell_{J_{m+1}}$; antitone $0<\theta_{J_m}\le1/J_m$; $\log L_m/s_m\to0$; $\omega_{J_{m+1}}/\log L_m\le J_{m+1}^{-2}$ and $\log(1+\text{paths}+\text{width}^{-1}+\text{columns}+\text{relaxation}+\text{support exponent})_{J_{m+1}}/\log L_m\le J_{m+1}^{-2}$.
*Status:* definitions and elementary theorems; scale hypotheses supplied by III.2. *Lean:* [Calendar.Fits](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L97-L118).

**Proposition III.9.3 (selected histories).** A selected history assigns representations $\rho_{N,p,m}$ for all $N,p$ and $m\le N$, with volume-independent paths $P_{N,m}$, level norms and clip, stage path bounds and loop cap $2M_m^{\theta_{J_m}}$, and $\beta_{N,p,m}\in\mathfrak B_m$. Regular activities are local, gauge invariant, vanish at the flat field, with zero affine Hessian on nonwrapping supports and bound $\varepsilon_m$; forced activities obey II.2 with bound $\tilde\varepsilon_m$; the family respects translations and signed permutations. At the top, $v_N=0$, $\rho_N=e^{-\beta_NS_W}$; at the bottom, $\beta_0=\bar\beta$. For every $m<N$,
$$\rho_m=T^{(m)}_{\beta_{m+1}}\rho_{m+1},\qquad |\beta_{m+1}-\beta_m-\kappa\log L_m|\le\omega_{J_{m+1}}.$$
For every $\epsilon>0$, eventually $|\beta_{N,p,m}-\hat\beta_m|\le\epsilon s_m$ uniformly in $N\ge m,p$. Consequently $\beta_{N,p,m}/s_m\to\kappa$ uniformly, including $m=N$, and $\int\rho_{N,p,m}\,d\mathrm{Haar}=Z_W(\Lambda_{N,p};\beta_{N,p,N})$ for every $m\le N$.
*Status:* specification; realized in III.13 using III.9.5 and III.10. *Lean:* [History.Selected](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L234-L240).

**Proposition III.9.4 (reset along a curve).** Fix scales meeting entry thresholds and kernel conditions, compatible horizon, Haar chart, positive post-block constants, planned kinetic data and recipe. For $N,p,m<N$, let $\rho'_x$, $x\in I=[l,u]$, be continuous admissible fine representations, with $l\le u$; write $\beta'_x=\beta(\rho'_x)$. Fix stage-pair reset constants $c>0$, $0<r\le1$, prescribed fine-stage $g>0$, and coarse-stage sensor $\eta>0$. Assume:

- $2(c+1)\varepsilon_m\le\eta t_m^2r$; a small-field probe satisfies $\mathcal K(V)\ge|\Lambda_m|\eta t_m^2$.
- Trial activities $F(x,d)$, $|d|\le r$, have fixed addresses, valid allowances, coefficient continuity, and common summable norm majorants along subsequences of every convergent parameter sequence. For $H_x=T^{(m)}_{\beta'_x}\rho'_x$, $H_x(1),H_x(V)>0$ and
$$| (\beta'_x+\alpha)\mathcal K(V)+\mathcal L(V)-\log(H_x(1)/H_x(V))|\le|\Lambda_m|c\varepsilon_m,$$
$$|\mathcal E_{F(x,b)}(V)-\mathcal E_{F(x,a)}(V)|\le|\Lambda_m|c\varepsilon_m|b-a|.$$
- The trial shape $e^{-(\beta'_x+\alpha+d)\mathcal K-\mathcal L-\mathcal E_{F(x,d)}}\mathcal G_{F(x,d)}$ differs from $H_x(U)/H_x(1)$ by at most $C_{x,U}|f(x,d)|$, with finite $C_{x,U}\ge0$ independent of $d$; forced activities have bound $e^{-gM_{m+1}^2}$; every exact trial passes the recipe.

There is continuous $d:I\to[-r,r]$ giving continuous admissible $\rho_x=H_x$, coupling $\beta'_x+\alpha+d(x)$ and $v_x=|\Lambda_m|^{-1}\log H_x(1)$, retaining the stronger forced bound. Without the last bullet, the unique residual root still matches $1,V$.
*Status:* theorem. *Lean:* [advance](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L175-L189).

**Proposition III.9.5 (explicit reset; program).** Under III.9.4's datum, curve and constants, assume simplicity, $\beta'_x\in\mathfrak B_{m+1}$, and the early presentation
$$H_x=e^{\tau_x|\Lambda_m|-\beta'_x\mathcal K-\mathcal L-\sum_i\chi_{X_i}E_{x,i}}\mathcal G_xe^{-\alpha\mathcal S}.$$
Assume local gauge-invariant smooth regular functions with nonnegative sup-jet bounds $h_{x,i}$ satisfying, at every anchor, $\sum_{i:o_i=o}e^{(a+3)\mathrm{cover}_{B_m}(X_i)}h_{x,i}\le H_x^E$, forced-family conditions and site-pinned bound $w_x$ at exponent $a+1$, translation and point-group symmetry, fixed addresses and III.9.4's continuity/tails. Require priced reset, compatible clip, width and cubic conditions, $H_x^E\le c\varepsilon_m/4$, regular/forced reorganization estimates fitting numerical bounds $e_x,k_x$ that imply both allowances and $e^{-gM_{m+1}^2}$, and recipe acceptance and continuation. Then
$$d(x)=\delta_x,\quad t_m^2|\delta_x|\le H_x^E,\quad v_x=\tau_x-|\Lambda_m|^{-1}\sum_iE_{x,i}(1).$$
All III.9.4 conclusions hold. A Gaussian-sector formulation additionally requires integration licenses and equality of that integral with the push. If these inputs hold at every level along every continuous admissible curve with couplings in $\mathfrak B_{m+1}$, and start-up curves pass initial and retention tests, they give, for every $N,p$, an admissible continuous Wilson curve on $\mathfrak B_N$ with coupling parameter $\beta$ and $v=0$, and reset outputs along every continuous admissible input curve with couplings in $\mathfrak B_{m+1}$ on every closed interval, for all $m<N$. Output couplings need not remain in the coarse band before shooting.
*Status:* conditional theorems; physical inputs supplied by III.10. *Lean:* [Return.reset](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Advance.lean#L64-L90), [program](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Stability.lean#L67-L70).

**Proposition III.9.6 (Wilson start-up).** For compatible clip/norm pairs ($0<t\le1$, $c_{\rm dir}\le1$, $B\ge2$, $te^{(B-2)/c_{\rm rel}}\ge2$), Wilson top paths, point-group-averaged regular activities $\beta(1-c_{\rm dir})R_p$ on small-field plaquettes and forced activities $e^{-\beta\,\mathrm{charge}(D,U)}$ on padded large-field components give $\rho^{\rm start}_\beta(U)=e^{-\beta S_W(U)}$ for every real $\beta$ and configuration $U$, with $v=0$. For every $G,k,q$, some $C>0$, $0<\delta\le1$ give residual sup-jet bound $Ct^5$ for every norm choice of order $k$ and power $q$, every torus, plaquette and site of that plaquette when $t\le\delta$. At each fixed stage with $c_{\rm dir}\le1$, some $\beta^*$ ensures compatibility, small threshold and both norm allowances for every realized choice of levels and every $N$ at that stage with $\hat\beta_N\ge\beta^*$. The band curve is continuous; admissibility additionally requires Wilson top paths, their stage bounds and recipe tests. Given old planned data and a revised horizon with Wilson top quadratic datum, unchanged lower data and initial guesses, bounded Wilson top paths can replace the old top while preserving $\alpha$ and planned conditions.
*Status:* theorem. *Lean:* [Start.evaluates](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Gas.lean#L96-L103).

**Proposition III.9.7 (thresholds).** For a fixed pre-block profile and simple $G$, sensors $\eta_j>0$ precede block sizes. Fix block factors, $0<\theta_j\le1$, reset constants, decay forecasts and post-block costs. Assume, for each $i\le j\le i+1$, $8f_{ji}\le q_i\ell_j^{\min}$ and $u_{ji}(x)\to0$, where $f_{ji}$ is the inherited coefficient, $\ell_j^{\min}$ the preassigned block-size floor, and $q_i=1/[64(1+A_i)]$ for the regular reorganization coefficient $A_i\ge0$. Every threshold record $V$ admits $U\ge V$ such that every $W\ge U$ ensures pricing, cubic, width, reorganization and inherited inequalities beyond thresholds; clip compatibility requires $c_{\rm dir}\le1$. Realized levels must share these data and satisfy $W^{\rm entry}_{J_{m+1}}\le\hat\beta_m$. Physical bounds also require $4q_i\le c_{ji}$ and $4g_j\le\mathrm{rate}_{ji}$. Start-up thresholds are likewise monotone when every used clip has $c_{\rm dir}\le1$.
*Status:* conditional numerical theorem. *Lean:* [Time.beforeWait](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inherited.lean#L75-L89).

**Proposition III.9.8 (marker sums).** Fix $M,\mu\in\mathbb N$, $a\in\mathbb R$, $c\ge0$. On a four-torus let arbitrarily indexed polymers $X_i$ have $f_i\ge0$ and subsets of finitely many marker names, at most $\mu$ markers per site. Every positive-weight polymer contains one of its markers' sites. If every marker-rooted sum $\sum_{i:v\in\mathrm{markers}(i)}e^{(a+1)\mathrm{cover}_M(X_i)}f_i\le c$, then every site-pinned sum $\sum_{i:x\in X_i}e^{a\mathrm{cover}_M(X_i)}f_i\le\mu e(2(16M+9))^4c$, uniformly in volume. All nonnegative sums must be summable.
*Status:* theorem. *Lean:* [root_hit](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Root.lean#L161-L199).

<a id="unit-inputs"></a>

## 2. What it uses

- II.2: polymer norms, masks and gas estimates; III.1: normalized block kernels and representation interfaces.
- III.2: constant order, scales and shooting; III.7: $|\alpha+\kappa\log L|+1\le\omega$.
- III.4, III.10: Gaussian-sector identity, early presentation, local bounds, continuity and recipe acceptance; III.13: compatible kinetic data and selected history.
- Intermediate value theorem, Taylor's formula, Schur's lemma, lattice reflections and permutations, Fourier analysis.

<a id="unit-strategy"></a>

## 3. Strategy

Extract the isotropic quadratic coefficient of the early regular activities into $\beta$. Subtract flat values and quadratic projections, compensate path terms, and absorb failed-mask discrepancies into the forced gas. A scalar equation identifies this exact reorganization with the continuous reset; shooting chooses the bare coupling with endpoint $\bar\beta$.

<a id="unit-steps"></a>

## 4. Steps

Under the corresponding hypotheses in §1:

1. Taylor expansion through order four gives the Wilson residual; connected large-field components give the exact gas. [Start.gas_raw](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Gas.lean#L81-L94).
2. A small-field stripe gives $\mathcal K(V)\ge|\Lambda|\eta t^2$. Pricing and the activity-motion bound make $f(x,d)=(\beta'_x+\alpha+d)\mathcal K(V)+\mathcal L(V)+\mathcal E_{F(x,d)}(V)-\log(H_x(1)/H_x(V))$ increasing with slope at least $\mathcal K(V)/2$, yielding a unique continuous root. [paidResponse](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L121-L137).
3. Simplicity and lattice symmetry make the projected Hessian isotropic; exact masked splitting preserves every density value and gives $d=\delta$. [Local.exponent](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean#L70-L82).
4. Fixed-stage asymptotics make the reset inequalities eventual; prefix maxima combine their thresholds monotonically. [collect_upper](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Basic.lean#L111-L118).
5. Shooting restricts intervals to keep couplings in their bands and reach $\beta_0=\bar\beta$; summing drift errors gives uniform running. [Shoot.trajectory](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L23-L53).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

Two-point matching requires full masked reorganization to imply exact transfer. Activity-norm continuity must survive hard configuration masks. The running estimate gives an $o(s_m)$ remainder, without a bounded remainder or two-loop expansion.

<a id="unit-notation"></a>

## 6. Notation

$N,p,m$: cutoff, volume, level; $|\Lambda_m|$: site count; $\alpha=\alpha_{N,m}$: one-loop shift; $a$: support exponent; $\mathrm{cover}_M$: polymer cover size; $J_m$: stage; $\omega_j$: drift allowance; $R_m$: patch radius. $\mathcal K,\mathcal L,\mathcal E,\mathcal G$: kinetic, loop, regular and forced-gas terms; $\mathcal S$: masked quadratic receipt; $\delta$: isotropic Hessian coefficient; $\chi_X$: small-field indicator. Admissible means prescribed paths/norms/clip, lawfulness and recipe acceptance. Curve continuity means continuous coupling and vacuum constant, fixed supports, inventories and eligibility tests, and continuity in weighted regular sup-jet/forced uniform norms; regular jets are measured on small-field supports at the prescribed order and power.

<a id="unit-limitations"></a>

## 7. What remains unexplained
Expand reorganization constants and connected-polymer estimates. Nonlinear inputs belong to III.4/III.10; analytic existence and uniqueness within the specified continuation class belong to III.13.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/III-9.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md), [III.1](III-1.md), [III.2](III-2.md), [III.15](III-15.md), [III.16](III-16.md), [II.2](II-2.md), [III.6](III-6.md), [II.1](II-1.md), [III.10](III-10.md), [III.3](III-3.md), [III.5](III-5.md), [III.4](III-4.md), [VI.1](VI-1.md).

**Referenced by:** [III.13](III-13.md), [III.10](III-10.md), [III.12](III-12.md), [III.2](III-2.md), [III.11](III-11.md), [VII.2](VII-2.md), [III.4](III-4.md), [VIII.1](VIII-1.md), [III.15](III-15.md), [III.14](III-14.md), [VII.4](VII-4.md).

## Lean source

**Source allocation:** 7,215 attributed lines; 1,261 line-counted declarations; 1,678 assigned declaration names. Of the assigned names, 1,582 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- work package [`YM/AnalyticBridge/VERIFIED_RESET_STEP/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP) — 2,659 lines.
- work package [`YM/Extra/WILSON_STARTUP/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP) — 2,422 lines.
- work package [`YM/Push/BETA_TRANSPORT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/BETA_TRANSPORT) — 652 lines.
- work package [`YM/UVNext/COUPLING_RESET/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET) — 592 lines.
- work package [`YM/Extra/MULTISOURCE_BOUNDS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS) — 344 lines.
- work package [`YM/Further/STRONG_STARTUP_CREDIT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT) — 213 lines.
- work package [`YM/Push/PRICE_COMPILER/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER) — 139 lines.
- work package [`YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH) — 65 lines.
- work package [`YM/Planned/RECIPE_STARTUP_PORT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/RECIPE_STARTUP_PORT) — 60 lines.
- work package [`YM/R2I/Wind/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Wind) — 34 lines.
- work package [`YM/Further/THRESHOLD_SOURCE_RESTART/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/THRESHOLD_SOURCE_RESTART) — 24 lines.
- work package [`YM/PhysicalNext/SERVICE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/SERVICE) — 11 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`Return.physical_shape`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Advance.lean#L30-L36)
- [`Return.earns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Advance.lean#L37-L42)
- [`Return.remainders`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Advance.lean#L44-L61)
- [`Collection.Compared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Comparison.lean#L72-L74)
- [`Use.Machine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L41-L49)
- [`Machine.packet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L71-L74)
- [`Use.Offering`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L77-L81)
- [`Use.Origins`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L83-L84)
- [`Use.supplier`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L85-L88)
- [`Collection.earlyValue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean#L26-L27)
- [`Collection.Local.actual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean#L92-L95)
- [`Time.rawGate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inherited.lean#L30-L56)
- [`Return.earnings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inputs.lean#L56-L61)
- [`Return.atlas`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inputs.lean#L70-L71)
- [`Return.grants`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inputs.lean#L74-L94)
- [`Local.renew`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Investor.lean#L112-L128)
- [`Collection.Fees`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Investor.lean#L49-L51)
- [`Averaging.identity`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Isotropy.lean#L100-L102)
- [`Averaging.delta_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Isotropy.lean#L103-L112)
- [`Averaging.delta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Isotropy.lean#L75)
- [`Averaging.isotropic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Isotropy.lean#L77-L98)
- [`Time.late`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Opening.lean#L48-L59)
- [`Time.now`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Opening.lean#L84-L119)
- [`Return.Prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Payment.lean#L28-L35)
- [`Return.result`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Payment.lean#L56-L57)
- [`Return.settled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Payment.lean#L77-L84)
- [`label_color`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Projection.lean#L34-L40)
- [`projection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Projection.lean#L89-L90)
- [`Residual.splits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Residual.lean#L114-L120)
- [`Local.first_split`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Rewrites.lean#L54-L59)
- [`Collection.path_split`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Rewrites.lean#L77-L93)
- [`Time.credit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Tables.lean#L36)
- [`Collection.Local`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Trays.lean#L35-L40)
- [`Bid.Cake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L27-L28)
- [`torus_kernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Root.lean#L136-L156)
- [`Mark.Ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Author.lean#L34-L36)
- [`Start.Allows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Cake.lean#L43-L48)
- [`channel_split`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Channels.lean#L72-L87)
- [`Timing.enough`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Clock.lean#L113-L139)
- [`fourth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Curvature.lean#L154)
- [`convert_taylor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Curvature.lean#L156-L164)
- [`surplus`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Curvature.lean#L166)
- [`surplus_jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Curvature.lean#L168-L179)
- [`Design.principal_top`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Design.lean#L156-L162)
- [`Design.top`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Design.lean#L34-L38)
- [`Change.Overlay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Engine.lean#L22-L25)
- [`residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L58)
- [`residual_jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L62-L68)
- [`healthy_chord`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L70-L74)
- [`Timing.choose`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Fast.lean#L27-L38)
- [`Timing.hat_mono`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Fast.lean#L40-L42)
- [`Timing.receive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Fast.lean#L44-L51)
- [`Start.Loan.kernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Funds.lean#L130-L143)
- [`Start.issues`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Gas.lean#L70-L75)
- [`Start.ink`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Ink.lean#L104-L122)
- [`Design.Suitable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Match.lean#L52-L54)
- [`Mixture.Extras`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/MixRoom.lean#L75-L78)
- [`WilsonStartup.Decent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Ownership.lean#L20-L23)
- [`Polar.writes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Polar.lean#L142-L163)
- [`Quad.small_jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Residual.lean#L161-L183)
- [`Polar.invert_tori`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Transform.lean#L48-L84)
- [`StrongStartup.before`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT/Pricing.lean#L47-L64)
- [`StrongStartup.Escrow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT/Reserve.lean#L69-L76)
- [`StrongStartup.BondFuel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT/Sleeves.lean#L51-L52)
- [`YM.Gauge.casimir`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182)
- [`YM.Gauge.slopeConstant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184)
- [`YM.Gauge.trace_color`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L71-L75)
- [`Schedule.scale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L115)
- [`Schedule.divergent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L117-L120)
- [`Schedule.scale_succ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L124-L127)
- [`Schedule.a`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L99)
- [`Deployment.hat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Levels.lean#L43-L45)
- [`Stationary.pouring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L17-L52)
- [`HorizCalc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L20-L23)
- [`poleVec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L125)
- [`haloRate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L127-L141)
- [`poleSpin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L326-L338)
- [`absoluteGeode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L346-L408)
- [`YM/PCalc/Band.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean)
- [`Directed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L26-L36)
- [`Directed.Move`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L49-L55)
- [`Directed.links`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L57-L63)
- [`Directed.Program`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L65-L72)
- [`FiniteBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L62-L71)
- [`Kin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L74-L77)
- [`Kin.Planned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L93-L115)
- [`Graces.winnow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Graces/Eagles.lean#L33-L50)
- [`Rain.glazing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Rain/Glazing.lean#L97-L104)
- [`Roost.Factor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Roost/Foundry.lean#L26-L50)
- [Roost.Factor.offering](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Roost/Foundry.lean#L56)
- [Roost.Factor.worksNow](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Roost/Foundry.lean#L59)
- [`Supply.Paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162)
- [`Supply.Sheet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35)
- [`Supply.Large`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L39-L48)
- [`BetaTransport.kinetic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/BETA_TRANSPORT/Curve.lean#L22-L25)
- [`FixedRepData.continuous_eval`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/BETA_TRANSPORT/Curve.lean#L93-L97)
- [`eventually_transitions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Basic.lean#L126-L131)
- [`StepStages`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Basic.lean#L27)
- [`KBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L102-L104)
- [`Activities.Valid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L106-L111)
- [`EBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L98-L100)
- [`StepData.push`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L77-L79)
- [`YM/RG/History.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean)
- [`BlockControl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L120-L128)
- [`Rep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L165-L171)
- [`Conv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L213-L218)
- [`Transfer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L223-L227)
- [`Running`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L229-L230)
- [`History.partition_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L242-L249)
- [`Stage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L45-L61)
- [`Calendar.hatBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79)
- [`monitor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L81)
- [`coverSize`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L82)
- [`threshold`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L83)
- [`allowance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L84)
- [`forcedAllowance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L85)
- [`Calendar.op`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L88-L91)
- [`PathData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L150-L154)
- [`PathData.Bounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L173-L185)
- [`StepData.push_integral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Push.lean#L37-L43)
- [`Shoot.band`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L63)
- [`Recipe.races`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L67-L82)
- [`Shoot.steps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L112-L154)
- [`Shoot.successful`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L156-L159)
- [`Shoot.narrow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L18-L49)
- [`floorBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L57)
- [`ceilBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L58)
- [`Shoot.limits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L60-L68)
- [`Shoot.Drifting.pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L73-L79)
- [`Shoot.gates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L81-L90)
- [`Spec.Calibrated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L58-L61)
- [`Mast.calibrated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Forest/Glue.lean#L35-L36)
- [`Orchard.traject`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Orchard/First.lean#L55-L88)
- [`Reward.step_contracted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/AtLimit.lean#L46-L66)
- [`Reward.fieldArray`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Tides.lean#L15-L46)
- [`Reward.ties`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Tides.lean#L49-L62)
- [`Spire.Fitted.unions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Alpine.lean#L64-L70)
- [`Spire.Fitted.acts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Orbs.lean#L41-L42)
- [`Spire.Uses.hits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Spark.lean#L68)
- [`Spire.Uses.exists_bolt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Spark.lean#L78-L85)
- [`Upland.Arc.finiteCut`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland/Plinth.lean#L55-L58)
- [`Upland.Arc.exists_trial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland/Plinth.lean#L71-L75)
- [`Income.balance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L139-L152)
- [`correct`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L157-L173)
- [`Usable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L55-L58)
- [`Income`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L78-L85)
- [`Remainder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L97-L103)
- [`Catalog.stable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Catalog.lean#L39-L45)
- [`delay_cubic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Precision.lean#L100-L106)
- [`pays_surplus`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Precision.lean#L124-L143)
- [`higher_estimate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Precision.lean#L52-L69)
- [`within_alpha`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Precision.lean#L89-L94)
- [`CubicGate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Precision.lean#L96-L98)
- [`ResetPrices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L38-L43)
- [`sensors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L46-L49)
- [`can_delay_reset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L56-L62)
- [`PricedReset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L66-L69)
- [`buys_reset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L71-L89)
- [`reachable_chord`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Probe.lean#L40-L54)
- [`Sensor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Probe.lean#L92-L94)
- [`Prereset.value_income`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Regular.lean#L73-L87)
- [`Prereset.income`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Regular.lean#L91-L96)
- [`Template.realizes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Reset.lean#L119-L125)
- [`Template.response`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Reset.lean#L131-L140)
- [`Template.residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Reset.lean#L64-L65)
- [`Template.passes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Reset.lean#L99-L105)
- [`Response`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Root.lean#L27-L31)
- [`Response.continuous`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Root.lean#L54-L58)
- [`solve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Root.lean#L60-L70)
- [`Response.balance_solve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Root.lean#L80-L83)
- [`Supplier`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Stability.lean#L41-L47)
- [`Supplier.ports`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Stability.lean#L54-L65)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-iii-9-1"></a>

- **K-III.9.1** [`root_hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Root.lean#L161-L199) *(key result)* — If each positive source has an anchored name in its support and rooted costs are bounded, the multi-marker connected-cover budget holds with an explicit site-factor constant.

<a id="k-iii-9-2"></a>

- **K-III.9.2** [`DelayLe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Post.lean#L34-L38) *(numbered result)* — A componentwise order relation on delay data.

<a id="k-iii-9-3"></a>

- **K-III.9.3** [`sensor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Probe.lean#L96-L142) *(key result)* — For a nontrivial gauge group and a clipped action there is a uniform η making two tests separate with the true clipped action.

<a id="k-iii-9-4"></a>

- **K-III.9.4** [`cash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Currency.lean#L75-L126) *(numbered result)* — For a forecast and nonnegative shifts, a family of numerical inequalities holds eventually as x tends to infinity.

<a id="k-iii-9-5"></a>

- **K-III.9.5** [`open_shop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Opening.lean#L62-L65) *(numbered result)* — A delay assignment can be boosted so that all further boosts are opened for the given costs and scouts.

<a id="k-iii-9-6"></a>

- **K-III.9.6** [`pricing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Schedule.lean#L98-L111) *(key result)* — For a simple gauge, there is a floor beyond which delay records can be raised to satisfy ringing with large values and make every paid level prepared for the given scope.

<a id="k-iii-9-7"></a>

- **K-III.9.7** [`continuous_push`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/BETA_TRANSPORT/Curve.lean#L122-L131) *(key result)* — For a continuous curve of representations, the push is jointly continuous in the parameter and the fine configuration.

<a id="k-iii-9-8"></a>

- **K-III.9.8** [`advance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L175-L189) *(key result)* — Under additional remainder hypotheses, a priced reset step can be advanced to the next stage with continuous representatives.

<a id="k-iii-9-9"></a>

- **K-III.9.9** [`deliver`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Transform.lean#L86-L91) *(key result)* — For rows with exponential-decay strip bounds, the inverse of r plus the transpose-product exists as a row with uniform strip bounds, with constants depending only on r, eta, A.

<a id="k-iii-9-10"></a>

- **K-III.9.10** [`evaluates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Gas.lean#L96-L103) *(key result)* — At startup, the cake built from the payload and dictionary evaluates exactly to the bare Wilson weight at coupling β.

<a id="k-iii-9-11"></a>

- **K-III.9.11** [`residual_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L76-L101) *(key result)* — The one-face Wilson matching residual is bounded by C times threshold to the fifth power in the budgeted sup norms, for small threshold.

<a id="k-iii-9-12"></a>

- **K-III.9.12** [`card`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/RECIPE_STARTUP_PORT/Layout.lean#L52-L71) *(numbered result)* — If the allowance conditions hold and the level is at top, the stamped recipe satisfies the required menu of estimates with the actual pot and kettle.

<a id="k-iii-9-13"></a>

- **K-III.9.13** [`prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT/Pricing.lean#L87-L107) *(key result)* — After enlarging the floor sequence, startup price conditions hold monotonically and any supplied delays can be raised to ones ensuring the prepared hypotheses for the scope.

<a id="k-iii-9-14"></a>

- **K-III.9.14** [`developer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Dome.lean#L105-L138) *(key result)* — One can modify a schedule sheet to satisfy stationary purchase, order, and suitability conditions while preserving the kernel and floor.

<a id="k-iii-9-15"></a>

- **K-III.9.15** [`beforeWait`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inherited.lean#L75-L89) *(key result)* — There exist thresholds beyond which the raw prices, openings, inherited conditions and cubic gates all hold, so that reset prices are paid.

<a id="k-iii-9-16"></a>

- **K-III.9.16** [`engine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Engine.lean#L62-L82) *(key result)* — A planned kin can be modified in its boundary condition, giving a new planned kin with revised path and unchanged stationary data away from the end.

<a id="k-iii-9-17"></a>

- **K-III.9.17** [`top_step`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/TopStep.lean#L160-L180) *(key result)* — Replacing top input paths in a Wilson-loop step preserves the critical, guessed, price-gap, classical-match and finite-bound properties.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

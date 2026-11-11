# III.6. The stationary branch: background field of the effective action

*Part III — Ultraviolet construction (renormalization group).*

Constructs and estimates the stationary background field around which the effective action is expanded.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/III-6.md) · [← Previous: III.5](III-5.md) · [Next: III.7 →](III-7.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** [`YM/Bid/Station.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean), [`YM/Bid/Craft.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean), [`YM/Push/STATIONARY_UNIFORM/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM), [`YM/Planned/STATIONARY_JET_PORT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT), [`YM/Extra/ITERATION_NO_LOSS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS). **Size:** 21,329 lines in the source allocation, including attached packages.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

**Setting.** $G$ is the gauge group and $\mathfrak g$ its Lie algebra. In dimension four, $f=Lc$, with odd $L\ge3$ and patch order $J\ge4$. Sums use counting measure and physical colour coordinates. A step $S$ has kernel choices $K$, penalty $\kappa>0$, tagged predictors $Q_k$, and radius $R_S=(J+7)L$. “Larger” means unique selected minimizing frames and predictors, nonempty fallback axial frames, $100R_S\le f$, and $c>1$. A forest $H$ has one block-centred rooted tree per block, height at most $4L$; $H^{\rm fr}$ denotes free bonds.

Here $x$ is a coarse $\mathfrak g$-valued bond field and $a$ a free-bond field. The axis field is $U^H(x,a)=e^a\mathcal R(e^x)$ on free bonds and $1$ on tree bonds; $\mathcal R$ copies coarse links onto crossing fine bonds. With the symmetrized Wilson, row-square, cubic and quartic main term $\mathcal M_p$,
$$\mathcal T^H_k(x,a)=\mathcal M_p(W;U^H(x,a))+\kappa\sum_b\mathrm{price}\big(e^{x_b}Q_k(U^H(x,a))_b^{-1}\big),\qquad\mathrm{price}(U)=\|U-1\|^2/(2c_G^2).$$
A critical branch has $\rho(0)=0$, is analytic at $0$, and satisfies $D_a\mathcal T^H_k(x,\rho(x))=0$ near $0$ for every tag, with every tested action jointly analytic there. For a local exponential-chart Haar density $J_{\mathscr J}$, its thermal function is
$$\Theta^H_k(x)=\mathrm{loop}_W(U^H(x,\rho(x)))+\tfrac12\log\det\mathrm{Hess}_a\mathcal T^H_k(x,\rho(x))-\sum_{e\in H^{\rm fr}}\log J_{\mathscr J}(\rho(x)_e).$$

**Proposition III.6.1 (tested second jet; F03).** Let $S$ be larger, $H$ a forest, $B$ a bed with floor $(a,A)$ for clip $p$ on $\Lambda_f$, and $W$ have bounds $(p,\sigma,C,\Lambda)$, be attached to $B$, with $B$ sworn. Assume main-term analyticity along analytic families through the identity. For every tag $k$, $\mathcal T^H_k$ is analytic at $0$, its value and gradient vanish, and for all $(x,a),(x',a')$,
$$D^2\mathcal T^H_k(0)[(x,a),(x',a')]=\langle ds,M_Bds'\rangle+\kappa\langle x-Ps,x'-Ps'\rangle,\qquad s=\iota x+a,\quad s'=\iota x'+a'.$$
Free-bond fields are extended by zero on tree bonds. *Status:* theorem. *Lean:* [`Bid.F03`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L78-L81).

**Proposition III.6.2 (main-term analyticity; F02).** If $W$ has bounds $(p,\sigma,C,\Lambda)$, $X$ is a finite-dimensional real normed space, $x_0\in X$, and $A(y)$ is a configuration family with $A(x_0)=1$ and link matrices analytic at $x_0$, then $\mathcal M_p(W;A(y))$ is analytic at $x_0$. *Status:* theorem; supplies III.6.1's analyticity assumption. *Lean:* [`Bid.F02`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L73).

**Proposition III.6.3 (vertical gap; F01).** Assume shell comparison E02. For every $(G,L,J,K,a)$ with $a>0$ there is $\eta>0$ such that, for all sides $c,f$, larger $S$ with these parameters, forests $H$, clips $p$, beds $B$ with floor $(a,A)$ for clip $p$ on $\Lambda_f$ for some $A$, and path data $W$ whose tested actions have the analyticity and jets of III.6.1,
$$D_a^2\mathcal T^H_k(0,0)[v,v]\ge\eta\sum_e|v_e|^2$$
for every tag $k$ and free-bond field $v$. One may take $\eta=\min(a,\kappa)/(1+\beta+\gamma)$, where $\beta=2C_{\rm E02}^2L^4\cdot4\cdot6|X|^2$, $\gamma=2L^4$, and $X=\{-R_S,\ldots,R_S\}^4$. Thus $\eta$ is independent of volume, forest, $B$ beyond its floor, and $W$. *Status:* theorem conditional on E02, proved in III.10. *Lean:* [`Bid.F01`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L68-L71).

**Proposition III.6.4 (branch, tangent and value; F04).** Let $S$ be larger, $H$ a forest, $B,C$ beds, $p$ a clip, $W$ a path datum, and $T$ towers for $(S,B,C)$ satisfying diagonal identities. Assume every tested action has the analyticity and jets of III.6.1, a vertical gap $a>0$, and a floor $(v,u)$ for $C$ on $\Lambda_c$ for some clip $q$ and real $v,u$. There is a critical branch with
$$D\rho(0)=\mathrm{rel}_H,\qquad D^2[\mathcal T^H_k(\cdot,\rho(\cdot))](0)[x,x']=\langle dx,M_Cdx'\rangle.$$
For every tag the stationary value is analytic with zero value and gradient. *Status:* theorem giving a germ. *Lean:* [`Bid.F04`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L86-L90).

**Proposition III.6.5 (forest independence; F05).** Let $S$ be larger, $H,H'$ forests, $W$ have bounds $(p,\sigma,C,\Lambda)$, and $\rho,\rho'$ be critical branches with positive gaps $a,b$, respectively. Given a local chart ratio $\mathscr J$, for every tag and $x$ near $0$ the stationary values and thermal functions agree between forests. *Status:* theorem; thermal equality has additive constant zero. *Lean:* [`Bid.F05`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L94-L99), [`Work.F05.same_thermal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05.lean#L42-L57).

**Proposition III.6.6 (assembled branch).** For every $(G,L,J,K,a)$ with $a>0$ there is $\eta>0$: for every larger $S$ with these parameters, forest $H$, beds $B,C$, clips $p,q$, path datum $W$ and towers $T$, assume diagonal identities for $(S,B,C)$, floors $(a,A)$ for $(B,p)$ on $\Lambda_f$ and $(v,u)$ for $(C,q)$ on $\Lambda_c$ for some real $A,v,u$, bounds $(p,\sigma,C_0,\Lambda)$ for $W$, attachment to $B$, and $B$ sworn. Then III.6.3 holds with $\eta$ and there is a branch satisfying III.6.4. *Status:* theorem with no work-item assumptions. *Lean:* [`Bid.Scene`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L102-L106), [`Integrated.stationary_scene`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L229-L232).

**Proposition III.6.7 (volume-independent ball).** (a) Assign finite horizontal and vertical coordinate sets $\iota,\tau$ to torus sites by $\ell$, with multiplicity at most $K_0$, using sup norms and periodic max-distance. Fix $C_0,a_0,r,m>0$, integer $n\ge3$. Suppose $f:\mathbb R^{\iota\sqcup\tau}\to\mathbb R$ is analytic on $\|z\|_\infty<r$ and, for every such $z$, $1\le k\le n$, coordinate tuple and $1\le j\le k$,
$$|\partial_{q_1}\cdots\partial_{q_k}f(z)|\le C_0e^{-a_0\sum_i\mathrm{dist}(\ell(q_j),\ell(q_i))}.$$
If $\nabla_\tau f(0)=0$ and $D^2_{\tau\tau}f(0)\ge mI$, there are $0<r_{\rm hor}\le r_{\rm zone}\le r_{\rm safe}<r$, depending only on $(K_0,C_0,a_0,r,m)$, and a map $g:\mathbb R^\iota\to\mathbb R^\tau$ with $g(0)=0$ such that for $\|x\|_\infty<r_{\rm hor}$, $g$ is analytic at $x$, has norm at most $r_{\rm zone}/2$, and is the unique vertical critical point in the closed $r_{\rm zone}$-ball.

(b) Fix $G$, real $\mu,C$, order $J$, choices $K$, and integer $n\ge3$. Auxiliary constants can be chosen before $L$ so that (a) applies to every clip $p$, real $\Lambda$, larger $S$ of order $J$ with choices $K$, forest $H$, and $W$ with bounds $(p,\mu,C,\Lambda)$. One branch serves all tags; radii depend on the auxiliary constants, $p,L$, but not $c,f,H,\Lambda$ or $W$ beyond its bounds. Coarse coordinates are located at fine block roots. *Status:* theorem. *Lean:* [`Receipt.throughout`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L179-L215), [`Before.graph`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L253-L294).

**Proposition III.6.8 (localized derivatives).** For every integer $N\ge0$, assume III.6.7(b), choose auxiliary constants at order $N+3$, and take any branch satisfying its analytic, size and uniqueness conclusions. For every tag, on the closed joint $r_{\rm safe}$-ball the vertical Hessian is analytic, $\ge m/2$, with localized coefficient derivatives through $N+1$. Every principal sub-block shifted by $tI$, $t\ge0$, is invertible: its inverse is exponentially localized with constant $O((1+t)^{-1})$, has localized derivatives through $N+1$ and $\ell^2$ norm at most $(m/2+t)^{-1}$; its log determinant is analytic with localized derivatives of orders $1,\ldots,N+1$, bounded proportionally to $(1+t)^{-1}$. On the horizontal ball, $g$ and its graph have localized derivatives of orders $1,\ldots,N+2$, the classical action of orders $1,\ldots,N+3$, and the Hessian along the branch has the same block package. Constants depend only on the corresponding bounds and radii. No volume-independent value bound for the action or log determinant is asserted. *Status:* theorem. *Lean:* [`Counter.service`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L116-L145), [`BlockPack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Pack.lean#L65-L84).

**Proposition III.6.9 (one iteration level).** Assume III.2's pre-$L$ constants, warm-up and paid schedule; a horizon of beds $M_{N,m}$ and towers with prescribed strip/derivative bounds, floors on every torus, diagonal/stack identities and identity diagonal at cutoff ([`Suffices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L132-L139)); sworn beds at the periods used; harmonic towers (zero-momentum two-form coefficient independent of fine block residue); a levelwise gap quote supplied by [`Iteration.post`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Post.lean#L99-L106); a local chart ratio; and the [`fresh-data hypotheses`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Gates.lean#L79-L96). These supply bounded fresh cubic, quartic and loop atoms for every admissible datum and family of branches satisfying (i) below, classical/thermal matchings on chosen forests/tags per period (possibly different choices), and cutoff cubic/quartic atoms.

For every $m<N$ and path datum $T$ funded at $m+1$, there are $R$ funded at $m$, branches $\rho_{p,F}$ for every period and forest, and $\alpha\in\mathbb R$, such that:

- (i) Each branch satisfies III.6.6 with the level-$(m+1)$ gap, tower map and bed $M_{N,m}$.
- (ii) $|\alpha+\kappa_G\log L_m|+1\le\mathrm{drift}_{m+1}$.
- (iii) For every period, forest and tag, the stationary tested action for $T$ with the level-$(m+1)$ clip has the same jets through order four as $\mathcal M_q(R;e^x)$, with level-$m$ clip $q$.
- (iv) Every thermal function is analytic with positive Hessian determinant near zero. For all tags and real parts $w_1,w_2$ of complex plane waves with every axis/colour coefficient of modulus at most one,
$$|D^2\Theta^F_k(0)[w_1,w_2]-D^2(\alpha\mathcal M_q^{(2)}(R)+\mathrm{loop}_R)(0)[w_1,w_2]|\le|\Lambda_c|\Gamma\lambda_{m+1}e^{-\gamma c}.$$

Here $\Gamma,\gamma>0$ are chosen after $L$; $R,\alpha$ serve all periods and forests. $\mathcal M^{(2)}$ is the full symmetrized Wilson-plus-row-square term, including higher-order dependence. There is also a funded datum at cutoff $N$ whose main term has Wilson-energy jets through order four. *Status:* theorem under these hypotheses. *Lean:* [`Iteration.extend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L115-L150), [`Iteration.peak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L35-L48).

<a id="unit-inputs"></a>

## 2. What it uses

- III.1: block-spin data, forest gauges, root-trivial gauge invariance, tower identities and Haar-preserving forest changes ([`Profiles.spending`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Profiles.lean#L57-L77)).
- III.10: E02 shell comparison ([`Work.E02.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E02.lean#L132-L244)); III.3: free kernels; III.2: constant schedule; III.9: one-loop slope $\kappa_G$.
- I.1, II.1–II.2: lattice forms, group geometry, path bounds; III.16: analytic derivatives and jets.
- Analytic implicit/inverse function theorems, Weierstrass normal convergence, change of variables, Banach contraction, Combes–Thomas estimates; Bałaban's background-field method.

<a id="unit-strategy"></a>

## 3. Strategy

Forest gauge removes blockwise gauge directions; curvature and the predictor penalty control the remaining links. The vertical gap gives a stationary germ, with tangent and quadratic value identified by the towers. Under forest changes, the Hessian's squared Jacobian cancels the Haar-density ratio in the thermal function.

Exponential inverse-Hessian decay supplies a volume-independent sup-norm bound for Newton contraction. Differentiated stationarity and resolvent identities control localized derivatives. The iteration joins transported atoms to supplied fresh classical and one-loop data.

<a id="unit-steps"></a>

## 4. Steps

1. **Analyticity and jets.** Exponential summability gives normally convergent holomorphic row/atom series; quadratic limits and the floor identity give III.6.1 after chart composition. [`Work.F02.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02.lean#L141-L143), [`Work.F03.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L159-L175). *(proof read; metric and cubic/quartic limits: statement only)*
2. **Gap.** Linearize E02, square and sum link bounds, then use the floor and penalty to control vertical directions. [`Work.F01.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L266-L311).
3. **Branch and tangent.** Tags agree near identity; apply the analytic implicit function theorem, then differentiate stationarity and use $D^2\mathcal T(0)[(y,b),(x,\mathrm{rel}_Hx)]=\langle dy,M_Cdx\rangle$ to identify the tangent and stationary quadratic value. [`Work.F04.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L149-L159).
4. **Forest comparison.** Transport critical graphs by root-trivial gauge transformations; Haar change of variables cancels the determinant Jacobian. [`Work.F05.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05.lean#L60-L67).
5. **Uniform radius.** Combes–Thomas decay gives summable inverse rows; Newton contraction yields the ball, using a direct shell estimate and Wilson positivity without beds or attachment. [`inverse_sealed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Resolvent.lean#L171-L208), [`Receipt.throughout`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L179-L215), [`Before.graph`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L253-L294). *(proof read; direct shell/action-derivative estimates: statement only)*
6. **Localized jets.** Differentiate $D(M^{-1})=-M^{-1}(DM)M^{-1}$ and $D\log\det M=\mathrm{tr}(M^{-1}DM)$, control the index sums by exponential convolution, and compose with the stationary graph. [`inverse_lines`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Lines.lean#L56-L108), [`Counter.service`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L116-L145). *(proof read for inverse induction and assembly; convolution and composition: statement only)*
7. **Iteration.** Join fresh atoms to inherited atoms, whose cubic and quartic charges carry factors $L^{-2}$ and $L^{-4}$; use the schedule for the drift bound. Match jets on reference forests and transfer the classical and thermal matchings to every forest and tag. [`Iteration.extend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L115-L150). *(proof read for assembly; inherited-atom bounds and matching: statement only)*

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

Curvature alone leaves flat and gauge directions. The gap is uniform in volume; no lower bound uniform in $L$ is asserted. A spectral gap alone gives no uniform sup-norm radius: exponential summability is also needed. The conclusions concern local stationarity and ball uniqueness, without global constrained minimization.

<a id="unit-notation"></a>

## 6. Notation

- $P$: predictor derivative; $\iota$: linearized replica; $d$: lattice exterior derivative.
- A bed $B$ consists of translation-invariant plaquette kernels, with metric $M_B$, roots $R_B$ and diagonal kernel $D_B$ ([`Bed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L35-L40)). A floor $(a,A)$ includes $M_B=c_pI+R_B^\top R_B$, metric/diagonal inverse identities, $\widehat M_B(0)=I$, $M_Bd=D_Bd$, symmetry, and quadratic bounds $aI\le M_B,D_B\le AI$ ([`Floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68)). Attachment identifies row coefficients, summed by offset and plaquette type, with $R_B$; swornness means signed-coordinate-permutation invariance of $\langle dA,M_BdA\rangle$ ([`Attached`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L44-L46), [`Sworn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55)).
- Towers satisfy [`Towers.Diagonal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L82-L86). With $K_B=d^\top M_Bd$ and linearized block average $\bar Q$, their map obeys $K_B\mathcal W=\bar Q^\top K_C$, $\bar Q\mathcal W=1-\kappa^{-1}K_C$; $\mathrm{rel}_H=(\widehat{\mathcal W}_H-\iota)|_{H^{\rm fr}}$, where $\widehat{\mathcal W}_H$ is its forest-gauge transform.
- A clip $p$ carries $c_p>0$. Path data $W$ contain row series of transported plaquette variables and invariant loop, cubic and quartic atoms. Bounds $(p,\sigma,C,\Lambda)$ require exponential-length summability, row/cubic/quartic bounds $C$, loop bound $\Lambda$, row normalization $c_p\delta_{ij}+\sum_k r_{ki}r_{kj}=\delta_{ij}$, and summable vanishing loop zeroth and first offset moments in every offset component, for every pair of plaquette types and colours ([`Bounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L173-L185)). Here $r_{ij}$ sums row-$i$ coefficients of plaquette type $j$. “Funded” further specifies root-kernel rows on fixed coordinate paths, level bounds and weighted cubic/quartic caps ([`Work item`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Gates.lean#L35-L39)).
- A local chart ratio has positive measurable analytic density $J_{\mathscr J}$, $J_{\mathscr J}(0)=1$, on a positive-radius ball where $\exp$ is injective with open image; a positive scale times this density pushes forward to probability Haar measure restricted to that image ([`LocalRatio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L28-L38)). The thermal Hessian uses the orthonormal colour basis.
- Localization means $|\partial_{q_1}\cdots\partial_{q_k}A_{ij}|\le C_ke^{-a_k(\mathrm{dist}(i,j)+\sum_\nu\mathrm{dist}(i,q_\nu))}$ using assigned sites; omit $j$ for maps, and use III.6.7(a) for scalars.

<a id="unit-limitations"></a>

## 7. What remains unexplained
The fresh classical/quantum matching assumptions remain undischarged here: [`IterationRecipe.stocked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/ITERATION_RECIPE_PRODUCER/Crown.lean#L102-L112) retains [`Heating`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/ITERATION_RECIPE_PRODUCER/Crown.lean#L83-L97). Comparison of uniform radii with downstream small-field thresholds, the all-level induction (III.12), and geometric realization of period comparison remain unverified. F06–F09 and primary-integral/atom-regularity supporting packages have statements only; rotation/Ward material belongs to VI.1.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/III-6.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md), [III.1](III-1.md), [III.16](III-16.md), [IV.1](IV-1.md), [II.1](II-1.md), [VI.1](VI-1.md), [III.10](III-10.md), [III.3](III-3.md), [V.2](V-2.md), [V.1](V-1.md), [III.2](III-2.md), [VIII.1](VIII-1.md).

**Referenced by:** [III.10](III-10.md), [III.2](III-2.md), [VII.2](VII-2.md), [III.4](III-4.md), [III.14](III-14.md), [III.3](III-3.md), [III.15](III-15.md), [III.7](III-7.md), [III.9](III-9.md), [III.13](III-13.md), [III.12](III-12.md), [VII.1](VII-1.md), [III.11](III-11.md), [III.8](III-8.md), [III.5](III-5.md), [VIII.1](VIII-1.md).

## Lean source

**Source allocation:** 21,329 attributed lines; 2,681 line-counted declarations; 3,169 assigned declaration names. Of the assigned names, 2,781 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- proof of [`outer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L114-L121) and the results it chains to — 4,431 lines.
- work package [`YM/Planned/PRIMARY_INTEGRAL_295/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295) — 3,662 lines.
- work package [`YM/Push/STATIONARY_UNIFORM/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM) — 3,274 lines.
- work package [`YM/Extra/ITERATION_NO_LOSS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS) — 1,700 lines.
- work package [`YM/Further/PHYSICAL_PERIOD_LIMIT_F933/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933) — 1,262 lines.
- work package [`YM/Planned/STATIONARY_JET_PORT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT) — 1,123 lines.
- work package [`YM/Next/ROTATIONS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS) — 1,080 lines.
- work package [`YM/Work/F05/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05) — 731 lines.
- work package [`YM/Work/F03/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03) — 580 lines.
- work package [`YM/Work/F06/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F06) — 499 lines.
- work package [`YM/Planned/ATOM_REGULAR_ESTIMATE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_REGULAR_ESTIMATE) — 474 lines.
- work package [`YM/Work/F08/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F08) — 416 lines.
- work package [`YM/Next/WARD_BIN/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/WARD_BIN) — 370 lines.
- work package [`YM/Work/F02/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02) — 247 lines.
- work package [`YM/Work/F04/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04) — 166 lines.
- work package [`YM/Analytic/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analytic) — 107 lines.
- work package [`YM/Further/ROOTED_INTERACTING_REMAINDER/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/ROOTED_INTERACTING_REMAINDER) — 4 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`Bid.pinning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L107-L166)
- [`Cops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L44-L47)
- [`Bid.E02`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L49-L52)
- [`Bid.cospons`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L108-L113)
- [`gaugeFiscal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L31-L32)
- [`stretch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L34-L36)
- [`bills`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L38)
- [`crop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L39)
- [`Comptroller`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L42-L45)
- [`Prismatic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L47)
- [`Fires`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L59-L62)
- [`Larger`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L64)
- [`HeatG`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L83-L84)
- [`Calibration.lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Calibration.lean#L66-L94)
- [`all_forests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Determinant.lean#L80-L89)
- [`transplant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Determinant.lean#L91-L103)
- [`OnShell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Gates.lean#L41-L45)
- [`Move`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L26-L33)
- [`select`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L50-L55)
- [`resume`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L70-L112)
- [`Iteration.sweep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Planned.lean#L18-L35)
- [`Luna.uniformZero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Luna/Table.lean#L166-L172)
- [`Fresco.subscribed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/Fresco.lean#L98-L148)
- [`PriceGap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L100-L101)
- [`SameJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L105-L106)
- [`ClassicalMatch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L108-L109)
- [`mainTerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L27-L28)
- [`secondTerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L30)
- [`replica`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L35-L36)
- [`linearCopy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L38-L39)
- [`AxisChart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L56)
- [`lifting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L60-L61)
- [`noiseTaylor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L78-L79)
- [`tested`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L81-L84)
- [`Critical`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L88-L91)
- [`relative`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L93-L95)
- [`Guessed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L97-L98)
- [`ChartRatio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L23-L26)
- [`hessian`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L42-L44)
- [`thermal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L46-L49)
- [`FiniteBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L62-L71)
- [`extracted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L26-L27)
- [`K`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L68-L69)
- [`Inputs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L76-L79)
- [`stationed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L81-L91)
- [`along_block`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L56-L59)
- [`Counter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L75-L88)
- [`Counter.background`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L95-L112)
- [`wallet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/HessCost.lean#L110-L130)
- [`zeroGap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/HessCost.lean#L132-L133)
- [`symbolic_gap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/HessCost.lean#L137-L166)
- [`Receipt.adjusted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L101-L176)
- [`Receipt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L24-L33)
- [`reserveX`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L42-L43)
- [`Receipt.snaps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L62-L76)
- [`Receipt.priced_inverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L80-L92)
- [`Before`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L142-L158)
- [`pre_order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L160-L167)
- [`Before.receipt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L196-L211)
- [`Before.full_pack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L216-L239)
- [`Before.Service`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L245-L251)
- [`tiltedCharge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Resolvent.lean#L157-L168)
- [`Sealed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Resolvent.lean#L41)
- [`Scatter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Scatter.lean#L68-L69)
- [`StepData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L22-L25)
- [`StepData.Choices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L34)
- [`Branches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185)
- [`KernelChoices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L37-L45)
- [`Clip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139-L146)
- [`PathData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L150-L154)
- [`Forest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L24-L29)
- [`sum_ports_sq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L136-L165)
- [`F01.sum_estimate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L174-L206)
- [`curl_floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L218-L230)
- [`chord_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L22-L28)
- [`vertical_hessian`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L233-L250)
- [`F01.hess_lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L252-L262)
- [`mainTerm_contDiffAt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02.lean#L126-L139)
- [`rowExt_series`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02.lean#L30-L41)
- [`atomExt_series`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02.lean#L51-L57)
- [`F02.analytic_series`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02/Series.lean#L57-L74)
- [`inclusion_deriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L121-L149)
- [`F03.from_flat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L151-L156)
- [`inclusion_works`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L67-L80)
- [`F03.live_rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L86-L119)
- [`F03.hessian_of_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Calculus.lean#L102-L117)
- [`hessian_comp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Calculus.lean#L120-L142)
- [`noise_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Flat.lean#L107-L128)
- [`flat_jets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Flat.lean#L168-L188)
- [`quadratic_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Flat.lean#L23-L38)
- [`main_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Flat.lean#L63-L77)
- [`metric_pair`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Metric.lean#L135-L140)
- [`F04.stationary_value`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L128-L147)
- [`F04.invertible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L32-L60)
- [`exists_branch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L62-L86)
- [`F04.tangent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L88-L126)
- [`F04.prediction_germ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04/Choices.lean#L36-L61)
- [`tested_germ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04/Choices.lean#L78-L86)
- [`F04.test_pair`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04/Pairing.lean#L49-L66)
- [`mainTerm_gauge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Actions.lean#L55-L59)
- [`root_noise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Actions.lean#L66-L75)
- [`F05.tested_switch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Actions.lean#L87-L92)
- [`loop_switch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Actions.lean#L94-L98)
- [`station_unique`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Calculus.lean#L112-L150)
- [`F05.graph_switch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Graphs.lean#L37-L67)
- [`hessian_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Graphs.lean#L75-L79)
- [`F05.toll_switch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Jacobian.lean#L129-L142)
- [`move`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Reindex.lean#L84-L85)
- [`switch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Transport.lean#L44-L45)
- [`YM/Work/F01`–`F09`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-iii-6-1"></a>

- **K-III.6.1** [`harmonic_lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F06/Harmonic.lean#L99-L126) *(key result)* — If a block-row operator has spectral margin v and strip bounds, then its zero-mode quadratic form is bounded below by v times the squared norm.

<a id="k-iii-6-2"></a>

- **K-III.6.2** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F06.lean#L64-L128) *(main result)* — The all-phase positivity margin statement F06 holds, repaired via near-harmonic estimates.

<a id="k-iii-6-3"></a>

- **K-III.6.3** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F08.lean#L53-L146) *(key result)* — Stack construction at uniform widths yields actual kernels for every compatible pair of tori with pre-L prices.

<a id="k-iii-6-4"></a>

- **K-III.6.4** [`hessian_ratio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Graphs.lean#L118-L131) *(numbered result)* — Hessian determinants in the two graph spaces differ by the square of the Jacobian determinant of the coordinate change near zero.

<a id="k-iii-6-5"></a>

- **K-III.6.5** [`same_thermal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05.lean#L42-L57) *(key result)* — Thermal (shell) functions computed from two different graphs with critical points agree near zero.

<a id="k-iii-6-6"></a>

- **K-III.6.6** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F09.lean#L41-L150) *(key result)* — The period-by-period algebra of the stack satisfies the F09 specification, giving retained support, price ordering and commitment.

<a id="k-iii-6-7"></a>

- **K-III.6.7** [`link_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L63-L108) *(numbered result)* — Each fine-bond component of a tree-vanishing direction is bounded by a constant times nearby plaquette color differences plus a correction term.

<a id="k-iii-6-8"></a>

- **K-III.6.8** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07.lean#L180-L201) *(key result)* — Positive spectral margin implies existence of root rows with controlled strip bounds, as required by the later stages.

<a id="k-iii-6-9"></a>

- **K-III.6.9** [`estimate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/MomentFD.lean#L105-L148) *(numbered result)* — If the 2k-th derivative of a smooth characteristic function is bounded by C, then the 2k-th moment of the measure is finite and at most C.

<a id="k-iii-6-10"></a>

- **K-III.6.10** [`accrue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Trellis.lean#L157-L170) *(numbered result)* — If all n-fold finite differences are bounded by C on a window, the Newton remainder is bounded by C times size to the n.

<a id="k-iii-6-11"></a>

- **K-III.6.11** [`anchored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_REGULAR_ESTIMATE/Pin.lean#L94-L134) *(numbered result)* — On a healthy configuration there is a gauge from the origin with link chord distance bounded by 4t(1+distance) in a cube.

<a id="k-iii-6-12"></a>

- **K-III.6.12** [`moment_probe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Rays.lean#L108-L111) *(numbered result)* — The n-th derivative at zero of a translated pulse function equals i^n times the n-th directional moment of the weight.

<a id="k-iii-6-13"></a>

- **K-III.6.13** [`throughout`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L179-L215) *(key result)* — The stationary branch is given by a single analytic graph on the whole stationarity corridor, via a uniform sup-radius implicit function theorem for score tensors.

<a id="k-iii-6-14"></a>

- **K-III.6.14** [`tile_detects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Bigrade.lean#L141-L159) *(numbered result)* — A symmetric tensor vanishing on a radial probe tile vanishes on all directions of the corresponding total weight.

<a id="k-iii-6-15"></a>

- **K-III.6.15** [`spinning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/Loom.lean#L65-L104) *(key result)* — Mixed second derivatives of the torus statements for matched systems differ by M times small minus large by at most an exponentially small tail in N.

<a id="k-iii-6-16"></a>

- **K-III.6.16** [`lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Energy.lean#L133-L145) *(numbered result)* — The spectral response kernel is bounded below by a constant times 1/(w+E) times decay factors for all energies.

<a id="k-iii-6-17"></a>

- **K-III.6.17** [`inverse_lines`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Lines.lean#L56-L108) *(key result)* — Jet (derivative) bounds on a matrix and a bound on its base inverse yield localized derivative bounds of all orders for the inverse.

<a id="k-iii-6-18"></a>

- **K-III.6.18** [`establish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Pack.lean#L88-L108) *(key result)* — Under cable bounds at order N+1, a reusable block package giving order- and radius-sensitive log and inverse jet estimates exists.

<a id="k-iii-6-19"></a>

- **K-III.6.19** [`sticker`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Oval.lean#L167-L179) *(key result)* — Chain rule estimate to order k for comparisons of genuine and predicted paths yields uniform bounds independent of e and t in (0,1].

<a id="k-iii-6-20"></a>

- **K-III.6.20** [`generated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/SplitRadial.lean#L153-L169) *(numbered result)* — Every polynomial log-link direction of weight at most a is generated by linear parts of a holonomy variation and site gauge variations.

<a id="k-iii-6-21"></a>

- **K-III.6.21** [`pure_moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Bijets.lean#L99-L111) *(numbered result)* — The moments of powers of a single axis-probe form equal the principal prediction exactly on every row, for low order.

<a id="k-iii-6-22"></a>

- **K-III.6.22** [`pure_alloc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Unload.lean#L230-L278) *(key result)* — For homogeneous symmetric tensors, the outgoing expansion decomposes into graded pieces with norm bounds C‖A‖L^{-(i+1)} and exact top-degree weight L^{n+1} times the original diagonal.

<a id="k-iii-6-23"></a>

- **K-III.6.23** [`deliver`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/RollFilm.lean#L53-L105) *(key result)* — For positive scale, there is a uniform constant C such that for every flight and prism there is a prism related to it by a reel bound with constant C.

<a id="k-iii-6-24"></a>

- **K-III.6.24** [`link_charge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/LCharge.lean#L145-L251) *(key result)* — For any gauge, scale, and kernel choices there exist constants such that the pre-L pricing harness holds for the shell test.

<a id="k-iii-6-25"></a>

- **K-III.6.25** [`cancellation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/FlatCancel.lean#L123-L132) *(key result)* — If directional leading terms along log-link curves vanish below order q, then iterated derivatives of f at 0 vanish on polynomial-space inputs of total weight below q.

<a id="k-iii-6-26"></a>

- **K-III.6.26** [`lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Columns.lean#L115-L120) *(key result)* — The column function's iterated derivative at 0 vanishes on tuples of potentials whose total weight is below the column's grade.

<a id="k-iii-6-27"></a>

- **K-III.6.27** [`upper_end`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/HighTable.lean#L88-L122) *(numbered result)* — Every tensor coefficient entry before removing the diagonal is bounded by a constant times a power of the unit step.

<a id="k-iii-6-28"></a>

- **K-III.6.28** [`billFor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Reaches.lean#L74-L86) *(key result)* — Uniformly in data, the true probe path and the forecast path agree up to a C^n fuzz of size D(1+B)exp(-σχ/2) near the origin.

<a id="k-iii-6-29"></a>

- **K-III.6.29** [`preBill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Ledger.lean#L57-L74) *(key result)* — There is a uniform constant C such that every entry of the receipt matrix is bounded by C times a power of the unit step determined by the grade.

<a id="k-iii-6-30"></a>

- **K-III.6.30** [`toll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/East.lean#L112-L139) *(key result)* — There is a uniform constant C such that the primary transition matrix has a leading (triangular with bounded entries) structure for all flights and parameters in the blend.

<a id="k-iii-6-31"></a>

- **K-III.6.31** [`moments`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Moments.lean#L178-L211) *(key result)* — All transverse spectral moments of the reflection-positive measure are finite with bound polynomial in inverse margin r.

<a id="k-iii-6-32"></a>

- **K-III.6.32** [`pay_moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Moments.lean#L246-L303) *(numbered result)* — Some inverse power weight in the time energy times transverse moments is integrable for the pressed measure.

<a id="k-iii-6-33"></a>

- **K-III.6.33** [`walk`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Walk.lean#L159-L172) *(key result)* — For a mixed cluster of axes with nonpositive weights, the correction cost along an axis is bounded by any positive budget once the scale parameter is large, for suitably small growth rate.

<a id="k-iii-6-34"></a>

- **K-III.6.34** [`cross_le`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Cross.lean#L152-L189) *(numbered result)* — A Cauchy-Schwarz bound: the cross term is at most t times one weighted integral plus the other divided by t.

<a id="k-iii-6-35"></a>

- **K-III.6.35** [`one_mode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Mode.lean#L99-L183) *(numbered result)* — One-variable subtraction on fixed transverse profiles yields a budget for tensor-product tests after raising the time-collision order.

<a id="k-iii-6-36"></a>

- **K-III.6.36** [`line_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Tunnel.lean#L215-L239) *(key result)* — For a collinear mixed word, projected cluster costs on a line obey an explicit budget with missing-axis price.

<a id="k-iii-6-37"></a>

- **K-III.6.37** [`mass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Mass.lean#L115-L180) *(key result)* — The cone-weighted integrals of the conserved stress tensor are integrable and satisfy a decaying budget with exponent gained from the low-energy estimate.

<a id="k-iii-6-38"></a>

- **K-III.6.38** [`exterior_size`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Vanishing.lean#L68-L120) *(main result)* — Exterior packets of the Ward integrand against position tests have integrals of budget -101, i.e. decay faster than any chosen power.

<a id="k-iii-6-39"></a>

- **K-III.6.39** [`blows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L105-L114) *(key result)* — At external distances the actual Ward integrand is eventually integrable and its integrals decay at budget rate -1.

<a id="k-iii-6-40"></a>

- **K-III.6.40** [`flux_value`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/River.lean#L84-L113) *(key result)* — The flux of a stress tensor against a compactly supported smooth field equal to a rotation generator near the points equals minus the local spin turn.

<a id="k-iii-6-41"></a>

- **K-III.6.41** [`outer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L114-L121) *(main result)* — Under the hierarchy and conservation hypotheses, the line-sum property holds and the local turn vanishes on configuration points lying on a line.

<a id="k-iii-6-42"></a>

- **K-III.6.42** [`service`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L116-L145) *(key result)* — The actual stationary branch and Hessian supply the counter interface needed for matching at every funded use, without extra assumptions.

<a id="k-iii-6-43"></a>

- **K-III.6.43** [`extend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L115-L150) *(key result)* — There exist path data, a branch, and a weight forming an admissible move extending a same-estimate propagation from cutoff to level zero.

<a id="k-iii-6-44"></a>

- **K-III.6.44** [`onMeeting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Enclosures.lean#L107-L144) *(key result)* — Given a classical matching of the stationary branch, a fixed-L Taylor remainder estimate with uniform sup bounds holds for the real color-entry configuration.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

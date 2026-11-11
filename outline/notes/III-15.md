# III.15. Cost accounting for observables and the remainder comparison — detailed notes

> The full account of unit III.15: every proposition with its proof sketch, checked against the Lean in two rounds and edited. The condensed outline and the map of the Lean are on the [unit page](../units/III-15.md).

[Unit page](../units/III-15.md) · [All units](../units.md) · [Overview](../README.md)

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** chapter 32: [`YM/RemainderComparison/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison) (packages Chron, Cadenza, Halo, Muse, Solo, Lyric, Herbal, Cascade, Sleet, Access, Portal, Aux and about twenty smaller ones), [`YM/Progress/DIRECTED_RECIPE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE), [`YM/Next/SCHEDULE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE), [`YM/RG05Readout/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG05Readout), [`YM/Integration/ChronPreconstruction/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ChronPreconstruction), [`YM/Integration/RG05Preconstruction/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction), and small parts of `YM/R2I/`, `YM/RG12/`, `YM/OPE/Therm/`. **Size:** 7,382 lines in 1,053 declarations used by the main theorem. About 4,200 of these lines are the launch theorem and its prerequisites.

**Overview.** The unit has three independent parts, plus some record types.

- **(A) Pair-step pricing** (`DIRECTED_RECIPE`). Two numerical facts used by the RG step of III.9 and III.10. A hard family of polymer activities is merged with the Mayer expansion of the exponential of soft local terms. The merged family keeps a weighted polymer bound and carries an explicit Gaussian large-field factor (III.15.1–2).
- **(B) Derivative bounds for local observables** (`SCHEDULE/Wages`). On the small-field region, a transported curvature slot has left derivatives of every order $\le K$ bounded by a constant times $t$. A $k$-leg monomial in slots has them bounded by a constant times $t^k$. Here $t$ is the small-field threshold (III.15.3–4).
- **(C) Launch data for the remainder comparison** (`RemainderComparison`). For connected-activity targets with rates below $-\tfrac38$, a sufficiently large block side permits the numerical conditions of a comparison step. After the auxiliary data are fixed, one chooses the comparison functions and then an entry coupling above which those conditions hold (III.15.5–7).
- **(D) Records and numerical definitions.** These include the construction-run bounds, the additional-expense and readout records, and the RG05 readout prices. Their scope is described in §4.6.

**Status of the parts for the main theorem.**

- (A) and (B) are consumed by III.2, III.9 and III.10.
- (C) supplies additional comparison data in the main-theorem dependency chain:
  - III.2's assembly lemma [`YM.PhysicalNext.Repeat.Legato.R2I.RG05Joint.joinExpensesShipWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L28-L119) calls the launch and delay-enlargement theorems to build the additional conjunct [`YM.PhysicalNext.Repeat.Legato.Stagehands.News`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Rig.lean#L21-L22), which records a family of quarries and their stagewise bounds.
  - That conjunct is passed unchanged up to the selected-run theorem [`YM.PhysicalNext.Repeat.Legato.R2I.RG05Joint.selectRunWithTreasuryPeriod_preselected_quote_orders_postnumeric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L99-L114) of III.14.
  - In the main-theorem dependency chain, [`YM.Independent.constructionRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28) discards it. The retained construction-run conditions form a separate record.
  - Part C imposes additional lower bounds on block sides and entry couplings. Its comparison conclusions are absent from the final construction-run statement.

**Conventions.**

- $x$ denotes the coarse renormalized inverse coupling $\hat\beta$.
- $\beta_F(x,L)=x+b_G\log L$ is the inverse coupling at the next finer scale ([`YM.Pressure.betaF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23)); $b_G$ is the slope constant of $G$, positive when $G$ is simple.

For $\beta>0$ and $x>1$, use the scale functions

$$g(\beta)=\beta^{-1/2},\qquad p(x)=e^{(\log\log x)^2},\qquad t(x)=g(x)\,p(x),\qquad \mathcal B(x)=\lceil(\log x)^2\rceil .$$

- $t$ is the small-field threshold ([`YM.Pressure.temp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L25), equal to [`YM.Next.Scheduling.Instrument.t`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L59) for the plain instrument).
- $\mathcal B$ is the cluster radius ([`YM.Pressure.radiusB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22), the same formula as [`YM.Next.Scheduling.Clock.cover`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L38)).
- The band of $y$ is $[y/4,4y]$ ([`YM.Next.Scheduling.inBand`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L99)). On it, $g(y)/2\le g(\beta)\le 2g(y)$ ([`YM.Next.Scheduling.band_gap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L105-L111)).

Growth classes, at fixed $L$, as $x\to\infty$:

- **Rate** $\le a$ ([`YM.ConnectedActivityE6.Rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Numerics.lean#L22-L23)): for every $v>a$, eventually $|w(x)|\le\beta_F(x,L)^v$.
- **Reserve** ([`YM.RemainderComparison.Reserve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Access/Geometry.lean#L25-L26)): $|w(x)|\le M(x)^k$ eventually for some $k\in\mathbb N$, where $M(x)=p(\beta_F(x,L))$ ([`YM.Push.AbsoluteSums.Delay.fineMonitor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L24)). Every reserve has rate at most $0$.
- **Gear** $a$ ([`YM.RemainderComparison.Gear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Gear/Class.lean#L25)): $\beta_F^{-a}w$ is a reserve, equivalently $|w(x)|\le\beta_F(x,L)^a M(x)^k$ eventually for some $k\in\mathbb N$. This implies rate at most $a$.

Weighted hit bound ([`YM.Ac.Hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13)): for supports $X_i$, weights $f_i\ge0$, scale $M$ and exponent $a$, write $\mathrm{Hit}_M(f;a)\le\gamma$ if

$$\sum_{i:\,z\in X_i} f_i\,e^{a N_M(X_i)}\le\gamma\quad\text{for every site }z,$$
where $N_M(X)$ is the minimal number of $M$-balls with connected union covering $X$.

The quote is $\mathrm{quote}(\kappa,\gamma)=e^{-\kappa}(e^{\gamma}-1)$ ([`YM.Bid.quote`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L18)).

In the code, a price or bill is a numerical bound; “financed” means that the bound satisfies the specified growth conditions.

## 1. What this unit proves

### Part A: pair-step pricing

**Proposition III.15.1 (pair-step rates).** Let $\rho>0$, $C\ge0$, $r>\rho$, $d\in\mathbb N$, $e\in\mathbb R$ and $q>0$. For $y>1$ and $\beta>0$ put

$$s(y,\beta)=\frac{t(y)}{g(\beta)}=p(y)\sqrt{\beta/y},\quad \mathrm{mild}(y)=C(1+\mathcal B(y))^{d}p(y)^{e}g(y)^{q},$$
$$\mathrm{strong}(y,\beta)=C e^{-r s^2},\quad \kappa(y,\beta)=\rho s^2 .$$
For all sufficiently large $y>1$, the following holds for every $\beta\in[y/4,4y]$ and every integer $0\le B\le\mathcal B(y)$. With $a=\mathrm{strong}(y,\beta)$, $b=\mathrm{mild}(y)$ and $\gamma=e^{\kappa}a+2b$:

$$\kappa\ge0,\quad a\ge0,\quad 0\le b\le1,\quad (2B+1)^4\gamma\le1,\quad \mathrm{quote}(\kappa,\gamma)\le e^{-\kappa}.$$
These are the rate conditions with target $w=e^{-\kappa}$. The threshold in $y$ depends only on $(\rho,C,r,d,e,q)$.
*Status:* theorem.
*Lean:* [`YM.Progress.DirectedRecipe.Payments.Pairing.currency`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean#L76-L139); data [`YM.Progress.DirectedRecipe.Payments.Pairing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean#L28-L36); conditions [`YM.Progress.DirectedRecipe.Payments.Rates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L33-L39) and [`YM.Progress.DirectedRecipe.Payments.inflation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L32).
*Used in:*

- III.9, in [`YM.AnalyticBridge.VerifiedReset.Time.cash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Currency.lean#L75-L126), with $d=e=0$, $q=\tfrac12$, $y=x+b_G\log L$ and $B=\mathcal B(x)$.
- III.2, in [`YM.PhysicalNext.Repeat.Jams.reunite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sym/Purse.lean#L72-L85).

**Proposition III.15.2 (merging a hard and a soft family).** Fix a parameter point $P$ with derivative order $K\ge6$, direction power $P_0\ge2$, cluster scale $B_P\ge1$, support exponent $\sigma>0$ and threshold $0<t_P\le1$. Consider a countably indexed regular family $E_i$, a **hard family** of forced activities $F_i$ with supports $X_i$, and a **soft family** of real local exponential corrections $\ell_i$ with nonempty supports $X'_i$. Assume:

1. The regular terms satisfy the regular-family conditions at $P$: regularity on their supports, vanishing at the flat field, and vanishing affine Hessian on nonwrapping supports. The forced terms and their eligibility tests are gauge invariant, measurable and determined by the links and final flags on their supports; a nonzero forced term satisfies its eligibility test. The regular and forced families admit the prescribed translation/reflection permutations, including the support and inventory transformations. Each $\ell_i$ is gauge invariant, measurable and determined by the links and final flags on $X'_i$; it vanishes on configurations small-field on $X'_i$. The soft family is also covariant under translations and reflections.
2. The regular family has bound $\delta$: it admits nonnegative bounds on all left derivatives through order $K$ on its small-field supports, in the directions specified by $P$, whose weighted sum at each anchor is at most $\delta$.
3. For every $i$ and every configuration $U$, $|F_i(U)|\le p_i$ and $|\ell_i(U)|\le q_i$, with $p_i,q_i\ge0$.
4. $\mathrm{Hit}_{B_P}(p;\sigma+1)\le a$ on $(X_i)$ and $\mathrm{Hit}_{B_P}(q;\sigma+1)\le b$ on $(X'_i)$.
5. The rate inequalities of III.15.1 hold with $B=B_P$, with the final inequality replaced by $\mathrm{quote}(\kappa,e^\kappa a+2b)\le w$.

Then the fusion input condition with $(\delta,w)$ holds. Explicitly:

- the original regular and forced families retain bounds $\delta$ and $a$, respectively; the soft corrections admit a summable uniform majorant;
- the merged family $(F_i)\sqcup(e^{\ell_i}-1)$, with weights $e^{\kappa}p_i$ and $2q_i$, satisfies $|F_i|\le e^{-\kappa}\cdot e^{\kappa}p_i$ and $|e^{\ell_i}-1|\le 2q_i$;
- that family has $\mathrm{Hit}_{B_P}(\cdot\,;\sigma+1)\le\gamma:=e^{\kappa}a+2b$, with $(2B_P+1)^4\gamma\le1$;
- $\mathrm{quote}(\kappa,\gamma)\le w$.

*Status:* theorem. The only analytic input is $|e^z-1|\le2|z|$ for $|z|\le1$. Through the fusion lemmas of III.10 (`Work.H01`–`H03`, used in [`YM.Progress.DirectedRecipe.Ingredients.gates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Batch.lean#L63-L68)), the conclusion gives the fused polymer family with norm bound $\le w$. With $w=e^{-\kappa}$ from III.15.1, this is the Gaussian large-field factor $\exp(-\rho\,(\beta/y)\,p(y)^2)$.
*Lean:* [`YM.Progress.DirectedRecipe.Payments.tender`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L124-L133); [`YM.Progress.DirectedRecipe.Payments.hardCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L42-L43), [`YM.Progress.DirectedRecipe.Payments.softCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L45-L46), [`YM.Progress.DirectedRecipe.Payments.rooted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L48-L49), [`YM.Progress.DirectedRecipe.Payments.Fittings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L52-L62), [`YM.Progress.DirectedRecipe.Ingredients`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Batch.lean#L32-L33).
*Used in:* III.9 ([`YM.AnalyticBridge.VerifiedReset.Collection.Local.renew`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Investor.lean#L112-L128)) and III.10 ([`YM.PhysicalNext.Repeat.Marlin.cannon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Marlin/Pylon.lean#L38-L49)).

### Part B: derivative bounds for local observables

A *slot* $s$ is a lattice walk $\omega$ from the origin, followed by a plaquette $\pi$ (two axes) at the endpoint of $\omega$ ([`YM.RG.Slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L38-L40)). Its length is $|s|=|\omega|+4$, and its value at a site $o$ is the transported curvature

$$s(U,o)=\mathrm{Ad}(U_{\omega})\,\mathcal C(U_{\pi})\in\mathfrak g ,$$
where $\mathcal C$ is the colour projection of the anti-Hermitian part.

A *$k$-leg atom* $a$ has slots $s_1,\dots,s_k$ and a real coefficient tensor $c_b$ indexed by colour multi-indices $b\in\{1,\dots,\dim\mathfrak g\}^k$ ([`YM.RG.Atom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L84-L86)). Its value is $a(U,o)=\sum_b c_b\prod_i s_i(U,o)^{b_i}$, its size is $|a|=\sum_b|c_b|$, and its length is $\mathrm{len}(a)=\sum_i|s_i|$.

Fix a parameter point with derivative order $K\ge6$, power $P\ge2$ and threshold $t\in(0,1]$. Directions are colour-valued increments $A$ of the left derivative $\partial_A$. A direction is *admissible at $o$* if

$$\|A_e\|\le t\,(1+\mathrm{dist}(e,o))^{P}\quad\text{for every link }e.$$
Here $\mathrm{dist}(e,o)$ is the periodic maximum distance from the basepoint of $e$ to $o$ ([`YM.RG.BudgetPoint.dirBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L141-L142)).

A configuration is *small-field on $X$* (healthy, [`YM.RG.Healthy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L41)) if every plaquette touching a site of $X$ has chord distance $\le t$ from the identity. Let $\kappa_G>0$ be the colour scale of $G$ and $\|1\|$ the Frobenius norm of the identity matrix.

**Proposition III.15.3 (slot derivative bound).** Let $\ell\in\mathbb N$ and $s$ be a slot with $|s|\le\ell$, let $S$ be a finite set of points of $\mathbb Z^4$ containing the stencil of $s$, and let $o$ be a site. Then $U\mapsto s(U,o)$ is $K$ times left-differentiable. Let $U$ be small-field on $o+S$ (wrapped on the torus), and let $A_1,\dots,A_m$ be admissible directions at $o$ with $m\le K$. Then

$$\big\|\partial_{A_1}\cdots\partial_{A_m}s(U,o)\big\|\le \mathrm{slotCost}(P,K,\ell)\,t,$$
$$\mathrm{slotCost}(P,K,\ell)=\big(1+\kappa_G^{-1}\|1\|\big)\,\mathrm{margin}(P,\ell)^{K},\qquad \mathrm{margin}(P,\ell)=2(\kappa_G+1)\,2^P(\ell+1)^{P+1}.$$
The constant depends on $P,K,\ell,G$ only, not on $t$, $o$ or the volume. At $m=0$ the stronger order-zero bound is $\|s(U,o)\|\le t$.
*Status:* theorem.
*Lean:* [`YM.Next.Scheduling.Wages.slotPays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L108-L159); [`YM.Next.Scheduling.Wages.slotCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L95), [`YM.Next.Scheduling.Wages.margin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L94), [`YM.Work.G07.LeftBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07/Calculus.lean#L124-L129).
*Used in:* III.9 ([`YM.AnalyticBridge.VerifiedReset.Low.plain_bill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Quadratic.lean#L64-L83)) and III.15.4.

**Proposition III.15.4 (bound for $k$-leg atoms).** Let $k\in\mathbb N$, let $a$ be a $k$-leg atom, $o$ a site, and $U$ small-field on the footprint $o+\mathrm{stencil}(a)$. Then $U\mapsto a(U,o)$ is $K$ times left-differentiable, and every left derivative of order $m\le K$ in admissible directions at $o$ is bounded by

$$\mathrm{price}(a)=|a|\,2^K\big(2^K\,\mathrm{slotCost}(P,K,\mathrm{len}(a))\,t\big)^{k}=\mathrm{start}(G,k,P,K)\;t^{k}\;|a|\;(\mathrm{len}(a)+1)^{(P+1)Kk},$$
where $\mathrm{start}(G,k,P,K)=2^K\big(2^K\mathrm{slotCost}(P,K,0)\big)^k$.
*Status:* theorem.
*Lean:* [`YM.Next.Scheduling.Wages.fin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L56-L71), [`YM.Next.Scheduling.Wages.price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L52-L54), [`YM.Next.Scheduling.Wages.scan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L85-L89), [`YM.Next.Scheduling.Wages.startup`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L78).
*Used in:* III.9 ([`YM.AnalyticBridge.VerifiedReset.High.paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Higher.lean#L35-L41)) and III.10.

### Part C: launch data for the remainder comparison

A *connected-activity target* $Q$ ([`YM.ConnectedActivityE6.Target`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/OptionCost.lean#L62-L76), III.10) carries:

- a rate $\rho_Q\in(-\tfrac12,0)$;
- an exponent $\mathrm{e}_Q\ge0$;
- small parameters $\varepsilon_Q,\delta_Q>0$ with $4\varepsilon_Q$ below the top support exponent;
- a halo $h_Q\ge500$;
- a chart table with its local-ratio property. The target also requires $8\varepsilon_Q$ below both input chart widths.

Its relative exponent is $\mathrm{rel}_Q=\mathrm e_Q+2\varepsilon_Q+\delta_Q$.

Stage pairs $(j,i)$ are those with $i\in\{j,j-1\}$ ([`YM.Push.PriceCompiler.StepStages`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Basic.lean#L27)). The stage profile $P_j$ has support exponent $\sigma_j$.

**Proposition III.15.5 (launch data).** Let $G$ be simple. Fix:

- a sheet with stage profiles $P_j$ and a kernel choice;
- a compatible price table and targets $R_{ji}$ with $\tfrac38+\rho_{R_{ji}}<0$ for all $j,i\in\mathbb N$;
- tolerances $h_{ji}>0$;
- libraries $C_{ji}$ (of the order of $P_i$);
- mark numbers $r_{ji}$.

Then there are thresholds $f:\mathbb N\to\mathbb N$ and constants $C'_{ji}\ge1$ such that:

1. For all $j,i$, the *quotation bound* holds for $(C_{ji},\mathrm{power}(P_i),r_{ji})$ with fine exponent $\sigma_j$, coarse exponent $\sigma_i+2$ and constant $C'_{ji}$. More precisely, take an RG step of side $L$, fine and coarse parameter points $B,P$, and supports $X,Y$ such that $Y$ lies in the $r_{ji}\mathcal B(x)$-neighbourhood of the coarse image of $X$. Assume $P$ has the power of $P_i$, $B$ has support exponent $\sigma_j$, $B_P=\mathcal B(x)$, $B_B\le2B_P$, $t_P\le2t_B$, and the acceptance condition in (c) below. For every $u\ge0$ satisfying the local analytic smallness condition for the return fee and every $\tau\ge0$,
   $$e^{(\sigma_i+2)N_{B_P}(Y)}\,\tau\,\mathrm{returnFee}\le C'_{ji}L^{-5}e^{\sigma_jN_{B_B}(X)}\tau.$$
2. For every stage pair $(j,i)$ and every block side $L\ge f_j$:
   - (a) the quay condition (III.15.6) holds for $R_{ji}$ at side $L$;
   - (b) $(\mathrm{rel}_{R_{ji}}+1)\,10\,c_{h+5}/L+2\varepsilon_{R_{ji}}\le\sigma_j$, where $c_{h+5}$ is the pre-cost of halo $h_{R_{ji}}+5$;
   - (c) the acceptance condition $20(\sigma_i+2)\,\mathrm{toll}(r_{ji})\le L\sigma_j$;
   - (d) $C'_{ji}/L\le h_{ji}$.

*Status:* theorem. The construction run calls it with rates $<-\tfrac7{16}$; these are supplied by III.2's company selection, and $-\tfrac7{16}$ implies the hypothesis.
*Lean:* [`YM.RemainderComparison.Chron.sails`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L98-L111), [`YM.RemainderComparison.Chron.Pledge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L94-L95), [`YM.PhysicalNext.JointLoad.Heir.Release.Quotation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Choirs.lean#L23-L27), [`YM.PhysicalNext.JointLoad.Heir.Release.accepts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Fusion.lean#L59), [`YM.RemainderComparison.Lyric.radiusCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Orbit.lean#L35-L36), [`YM.RemainderComparison.Chron.Contemple`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L68-L71) (tolerances).

The *heart condition* on rays for a stage $E'$ and exponent $\mathrm e_Q$ consists of the support inequalities

$$0\le\sigma_*,\quad \sigma_{E'}\le\sigma_*,\quad \sigma_*+1\le a_*,\quad \varepsilon_*>0,\quad a_*+3\varepsilon_*\le\mathrm e_Q,$$
and the order inequalities

$$\mathrm{ord}(E')\le J_*,\quad \mathrm{ord}(E')+(p_*+1)+p_*+2\le n_*,\quad p_*+1\le s_*,\quad k_*+1\le s_*.$$
The starred quantities are the support exponents, slack and requested orders carried by the rays.

**Proposition III.15.6 (the quay for large sides).** Let $G$ be simple, $K$ a kernel choice, and $Q$ a target with $\tfrac38+\rho_Q<0$. There is $n$ such that for every block side $L\ge n$ the following holds. Take any:

- patch $p$ of side $L$ satisfying the branching condition;
- $W,\mu>0$, and order datum at $W$;
- songbook and scrollwork at side $L$, and $\chi$;
- stages $E,E'$, and rays with the heart property for $(E',\mathrm e_Q)$;
- library $C$ of the order of $E'$;
- record with parameter $\varepsilon\le\tfrac14$;
- $j\in\mathbb N$, reserve $f$, and $\eta,\delta>0$.

Then there exist a quarry $D$ (a record of bounding functions of $x$, with $d(D)>0$ and paint supply) and a threshold $P_1$ with:

- $D$ is financed at rate $\rho_Q$;
- for every $x\ge P_1$, the poster comparison and chart conditions and the instructions hold. For every $\beta\in[\beta_F(x,L)/4,4\beta_F(x,L)]$ and every parameter point $Z$ tempered to $E'$ at $x$, the active, resonance and tolerance conditions hold.

Here *tempered* means that $Z$ has cluster radius $\mathcal B(x)$, threshold $t(x)$, the order, power and support exponent of $E'$, and threshold at most $2t(\beta_F(x,L))$. The active conditions comprise the local analytic estimates, readiness of the spatial restrictions, compatibility estimates and the prescribed tail bounds. The block-side threshold $n$ is independent of the auxiliary data; the quarry and $P_1$ may depend on all of them. The quarry is a fixed record of functions of $x$.
*Status:* theorem.
*Lean:* [`YM.RemainderComparison.Cadenza.buoys`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L47-L58), [`YM.RemainderComparison.Cadenza.Quay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L46), [`YM.RemainderComparison.Cadenza.Allot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L42-L44), [`YM.RemainderComparison.Cadenza.Coaxes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L35-L41), [`YM.RemainderComparison.Cadenza.Quarry.Financed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L34-L39).

**Proposition III.15.7 (using the launch data).** Fix a sheet, compatible target and expense tables $R,X$, chosen block sizes $L_j$, a protection, a register and a firmament. The register supplies $W_{ji},\mu_{ji}$ and order data, with positivity for stage pairs. The firmament gives, for each stage pair, finitely many *request slots*; each carries a scrollwork, a songbook, grade and order data, a reserve, positive constants, and an extra condition that holds eventually for every financed quarry. Fix also tolerances, libraries $C_{ji}$, mark numbers $r_{ji}$ and records $u_{ji}$. Assume:

- launch data as in III.15.5 with thresholds $k_j\le L_j$;
- $\varepsilon(u_{ji})\le\tfrac14$ for stage pairs with $i$ at least the first stage;
- $\sigma_i+3<\mathrm e_{R_{ji}}$ for all $j,i$.

Then for every initial delay datum $T_0$ there are a delay datum $W\ge T_0$ and a quarry $V_{jig}$ for every request slot $g$, indexed at all $(j,i)$, with the following properties for every delay datum $U\ge W$:

- (a) launch data with $f_j\le L_j$;
- (b) for every stage pair $(j,i)$ with $j\ge4$, $i$ at least the first stage, and the patch branching, and for every slot $g$: the slot's rays have the heart property; $d(V_{jig})>0$; paint supply holds; the allotment of III.15.6 holds with threshold $\beta^*_j(U)$; and the slot's extra condition holds for $x\ge\beta^*_j(U)$;
- (c) for every stage pair with $i$ at least the first stage, every request slot $g$, every $x\ge\beta^*_j(U)$ and every torus side $c\ge \mathrm{shells}_j(U)\,(1+\mathcal B(x))^{\mathrm{growth}_j(U)}$, the slot's scope is tiled at $(x,c)$. This means $2z_g(x)<c$ and $4\,\mathrm{halo}_g(x)+16\le c$, where $z_g$ and $\mathrm{halo}_g$ belong to its scrollwork.

The order on delay data increases entry couplings, scale-entry functions, shell counts and growth exponents componentwise. The quarries are chosen before $U$.

*Status:* theorem.
*Lean:* [`YM.RemainderComparison.Chron.grows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Corners.lean#L33-L70), [`YM.RemainderComparison.Chron.Pillar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Corners.lean#L23-L28), [`YM.RemainderComparison.Chron.Firmament`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L64-L66), [`YM.RemainderComparison.Chron.Glint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L49-L63).
*Use of III.15.5 and III.15.7:* III.2 ([`YM.PhysicalNext.Repeat.Legato.R2I.RG05Joint.joinExpensesShipWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L28-L119)), whose comparison conjunct reaches the selected-run theorem of III.14 and is discarded by the final construction-run theorem (see the overview). 

## 2. What it uses

**From other units.**

- III.1: the scale functions $t$, $\mathcal B$ and $\beta_F$; slots and atoms.
- II.1: ordered left-derivative calculus; the order-zero slot bound [`YM.Work.G07.slot_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07/Stencil.lean#L165-L176).
- II.2: weighted hit bounds.
- III.5: the logarithmic tail bound of the cluster expansion, used in Lemma 4.15.
- III.10, a large set of inputs:
  - the growth classes, connected-activity targets and step records;
  - the three fusion theorems, which turn the fusion input condition into a fused activity bound;
  - the quotation constants [`YM.PhysicalNext.JointLoad.Heir.Release.quoting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Choirs.lean#L28-L29) (including the factor $L^{-5}$);
  - the per-vertex weight [`YM.PhysicalNext.Repeat.Height.grow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Height/Highway.lean#L25) $=\beta_F^{3/8}$ and the criterion [`YM.PhysicalNext.Repeat.Height.pressureYoung`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Height/Highway.lean#L30-L35);
  - the local derivative and connected-activity estimates, including the rate-$\rho_Q$ bound on the tree sum.
- III.2: the targets $R_{ji}$ with rates $<-\tfrac7{16}$ and $\sigma_i+3<\mathrm e_{R_{ji}}$ (the expense records of the company selection). Also the block-size and delay order into which III.15.5 and III.15.7 are inserted.

**Standard mathematics.**

- Cluster and polymer expansions with weighted per-site bounds (Kotecký–Preiss, Commun. Math. Phys. 103 (1986); Brydges, *A short course on cluster expansions*, Les Houches 1984).
- The small-field/large-field decomposition and Mayer expansion used in the RG step. The $L^{-5}$ estimate is an input from III.10, with its explicit support and analytic hypotheses.
- The Leibniz rule and the chain rule for products of group elements along a path.
- $|e^z-1|\le2|z|$ for $|z|\le1$.
- Elementary asymptotics: $e^{a(\log\log y)^d}$ grows faster than every power of $\log y$ when $a>0$ and $d>1$, and $e^{-c\,p(y)^a}$ decays faster than every inverse power of $y$ when $a,c>0$.

**Imported constants and assumptions.**

- Simplicity of $G$. In Part C it enters through the local single-occurrence estimate used in Lemma 4.16. Parts (A) and (B) do not use it.
- $\tfrac38+\rho<0$ for the targets. The value $\tfrac38$ is the exponent of the per-vertex tree weight $\beta_F^{3/8}$ of III.10. In Lemma 4.17 it is used to make that weight times the activity summable. Since targets have $\rho_Q>-\tfrac12$, the admissible window is $(-\tfrac12,-\tfrac38)$; the run uses $(-\tfrac12,-\tfrac7{16})$.
- The tolerance table $h_{ji}$ and the firmament are inputs. In the run they come from a fixed default ([`YM.Integration.RiderResourceDynamics.defaultDynamics`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RiderResourceDynamics.lean#L24-L25)).

## 3. Strategy

Part A separates the numerical loss from the fusion argument. On the coupling band, the hard bound is $Ce^{-rs^2}$ with $s\ge p(y)/2$. Retaining $e^{-\rho s^2}$ leaves $Ce^{-(r-\rho)s^2}$ to absorb the support-counting factor. The soft bound decays because its negative power of $y$ dominates its powers of $p(y)$ and $\mathcal B(y)$. The Mayer expansion then combines the hard activities with $e^{\ell_i}-1$; their weighted bounds add to $e^\kappa a+2b$. Both families may be supported on large fields. The terminology “hard” and “soft” distinguishes their estimates.

Part B represents a transported curvature slot as the projection of the single group word $\omega\cdot\partial\pi\cdot\omega^{-1}$. Unitarity bounds each differentiated product without an exponential loss in path length. Each derivative contributes one direction norm, at most $t(1+2\ell)^P$, and has at most $2\ell$ possible link occurrences. For positive derivative order, $t^m\le t$; at order zero, the small-field plaquette bound gives the factor $t$. The Leibniz rule gives $t^k$ for a product of $k$ slots, with a polynomial loss in total path length.

Part C first chooses a block-side threshold and then, for each permitted side and each fixed set of auxiliary data, chooses comparison functions and an entry coupling. The connected-activity bounds have rate $\rho_Q$; the extra tree weight $\beta_F^{3/8}$ still leaves negative rate. A marked input family of size $\delta\le\beta_F^{-11/10}$ gives an anchored output bound $(C'/L+o(1))\delta$, subject to the support and local analytic conditions in Lemma 4.16. Clusters with at least one marked occurrence and $m$ further occurrences outside the inserted leaves gain an additional factor $S'(x)^m$ of negative rate. At each fixed expansion order, the tail bounds are small enough to absorb any prescribed power of $g(\beta)$. Finally, finitely many requests at each stage are met by enlarging the entry coupling and spatial-size thresholds.

## 4. Steps

### 4.1 Elementary asymptotics

**Lemma 4.1.** For every $k\in\mathbb N$, as $x\to\infty$:

1. $p(x)^{a}g(x)^{q}\to0$ for all $a\in\mathbb R$ and $q>0$;
2. $(1+\mathcal B(x))^k/p_d(x)^a\to0$ for $d>1$ and $a>0$, where $p_d(x)=e^{(\log\log x)^d}$;
3. $g(x)^{q}e^{-c\,p_d(x)^a}\to0$ for every real $q$, $c,a>0$ and $d>1$.

*Sketch:* substitute $u=\log\log x$, so that $\log x=e^u$; each claim reduces to a polynomial or exponential in $u$ against $e^{u}$ or $e^{u^d}$.
*Lean:* [`Clocks.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean); [`YM.Next.Scheduling.Clock.light`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L100-L106), [`YM.Next.Scheduling.Clock.ceiling_cheaper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L110-L120), [`YM.Next.Scheduling.Clock.burnt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L141-L152).

### 4.2 Pair-step rates

**Lemma 4.2 (III.15.1).** Under the hypotheses of III.15.1, the rate conditions hold eventually, uniformly over the coupling band and $B\le\mathcal B(y)$.

*Proof sketch:*

1. Put $\eta=(r-\rho)/4$. On the band, $g(\beta)\le2g(y)$, so $s\ge p(y)/2$. Hence $e^{\kappa}\,\mathrm{strong}=Ce^{-(r-\rho)s^2}\le h(y):=Ce^{-\eta p(y)^2}$.
2. Put $v=h+2\,\mathrm{mild}$. For every $k$, $(1+\mathcal B)^k v\to0$:
   - for $h$, write $(1+\mathcal B)^k e^{-\eta p^2}=\big[(1+\mathcal B)^k g\big]\cdot\big[g^{-1}e^{-\eta p^2}\big]$ and use Lemma 4.1(1, 2, 3);
   - for $\mathrm{mild}$, write $(1+\mathcal B)^{d+k}p^e g^q=\big[(1+\mathcal B)^{d+k}/p\big]\cdot\big[p^{1+e}g^q\big]$.
3. With $k=4$: $(2B+1)^4\gamma\le2^4(1+\mathcal B)^4v\le1$ eventually.
4. $e^{v}-1\le1$ eventually gives $\mathrm{quote}(\kappa,\gamma)\le e^{-\kappa}$, and $\mathrm{mild}\to0$ gives $\mathrm{mild}\le1$.

All thresholds are independent of $\beta$ and of $B\le\mathcal B(y)$.
*Lean:* [`YM.Progress.DirectedRecipe.Payments.Pairing.currency`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean#L76-L139), the two private asymptotic estimates in [`Economy.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean). The same file also defines the record of these rate conditions along the chosen sequence of scales.

### 4.3 Merging hard and soft families

**Lemma 4.3 (blend).** Let $p,q\ge0$ satisfy $\mathrm{Hit}_{B}(p;\sigma+1)\le a$ on $(X_i)$ and $\mathrm{Hit}_{B}(q;\sigma+1)\le b$ on $(X'_i)$. Then the weights $(e^{\kappa}p_i)\sqcup(2q_i)$ on the disjoint union satisfy $\mathrm{Hit}_B(\cdot\,;\sigma+1)\le e^{\kappa}a+2b$.

*Sketch:* multiply a hit bound by a constant, then add two summable families.
*Lean:* [`YM.Progress.DirectedRecipe.Payments.give`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L78-L86), [`YM.Progress.DirectedRecipe.Payments.blend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L88), [`YM.Progress.DirectedRecipe.Payments.merges`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L98-L105).

**Lemma 4.4 (activity bounds of the merged family).** Under the nonempty-support and positive-exponent conventions of III.15.2, assume $p_i,q_i\ge0$, $|F_i|\le p_i$, $|\ell_i|\le q_i$, the soft hit bound $b$, and $b\le1$. Then $\|F_i\|\le e^{-\kappa}(e^{\kappa}p_i)$ and $|e^{\ell_i}-1|\le2q_i$.

*Sketch:*

1. Dropping one unit of support exponent gives a sum bound for the weights $e^{\sigma N(X'_i)}q_i$.
2. A single term is at most the sum, so $|\ell_i|\le q_i\le e^{\sigma N(X'_i)}q_i\le b\le1$.
3. Then $|e^{z}-1|\le2|z|$ for $|z|\le1$.

*Lean:* [`YM.Progress.DirectedRecipe.Payments.shares`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L107-L117), [`YM.Progress.DirectedRecipe.Payments.drop_reserve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L64-L76).

**Lemma 4.5 (III.15.2).** Under the hypotheses of III.15.2, the fusion input condition holds, with witness $(\kappa,\ e^{\kappa}a+2b,\ a)$.

*Sketch:* the original-family estimate combines the structural assumptions, the regular bound $\delta$, the hard sup bounds and the reduction of the support exponent by one. The merged-family estimate uses $\gamma\ge0$ and $\kappa\ge0$, the capital inequality, Lemma 4.3 and Lemma 4.4. The quote inequality is the last rate condition.
*Lean:* [`YM.Progress.DirectedRecipe.Payments.tender`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L124-L133).

### 4.4 Slots and atoms

**Lemma 4.6 (a slot is one group word).** For every slot $s$, site $o$ and configuration $U$,

$$s(U,o)=\Pi\big(U_{\omega\cdot\partial\pi\cdot\omega^{-1}}\big),\qquad \Pi(A)=\mathcal P_G\big(\tfrac12(A-A^{*})\big),\qquad \|\Pi(A)\|\le\kappa_G^{-1}\|A\|.$$
Here $\mathcal P_G$ is the colour-coordinate projection with the normalization of $G$.

*Sketch:* $\mathcal C(hgh^{-1})=\mathrm{Ad}(h)\,\mathcal C(g)$. The detour has length $2|\omega|+4\le2|s|$.
*Lean:* [`YM.Next.Scheduling.Wages.detour`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L64-L65), [`YM.Next.Scheduling.Wages.projector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L67-L68), [`YM.Next.Scheduling.Wages.hangs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L70-L80), [`YM.Next.Scheduling.Wages.norm_projector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L82-L88).

**Lemma 4.7 (derivatives of a word).** Let $w$ be a product of link variables and inverses with $n$ link uses, and let $T\ge0$. Write $\iota_G$ for the colour-to-matrix map. Suppose the matrix representative of every increment satisfies $\|\iota_G(A_e)\|=\kappa_G\|A_e\|\le T$ on every used link $e$, for every direction in the list $\vec A$. Then

$$\|\partial_{\vec A}U_w\|\le\|1\|\,(Tn)^{|\vec A|}.$$

*Sketch:* the Leibniz rule; each derivative replaces one factor by its left increment.
*Lean:* [`YM.Next.Scheduling.Wages.Path.bill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/GridCost.lean#L184-L197).

**Lemma 4.8 (III.15.3).** Under the hypotheses of III.15.3, the slot derivative bound holds.

*Sketch:*

1. Every used link basepoint of the detour is within distance $2\ell$ of $o$. Admissible directions therefore give $T=\kappa_G t(1+2\ell)^P$, and $T\cdot2\ell\le\mathrm{margin}\cdot t$.
2. Lemma 4.7, then $\Pi$, give $\kappa_G^{-1}\|1\|(\mathrm{margin}\,t)^m$.
3. Since $\mathrm{margin}\ge1$, $t\le1$ and $1\le m\le K$, this is at most $\kappa_G^{-1}\|1\|\,\mathrm{margin}^K t$.
4. For $m=0$, use the order-zero small-field slot bound.

*Lean:* [`YM.Next.Scheduling.Wages.slotPays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L108-L159).

**Lemma 4.9 (III.15.4).** Under the hypotheses of III.15.4, the atom derivative bound and its closed form hold.

*Sketch:*

1. Extract colour components by an orthonormal projection.
2. Apply the Leibniz rule to the product of the $k$ leg components: two derivative bounds $c_1,c_2$ up to order $K$ give $2^Kc_1c_2$.
3. Multiply by $c_b$ and sum over $b$.
4. The closed form follows from $\mathrm{slotCost}(P,K,\ell)=\mathrm{slotCost}(P,K,0)(\ell+1)^{(P+1)K}$.

*Lean:* [`YM.Next.Scheduling.Wages.fin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L56-L71), [`YM.Next.Scheduling.Wages.scan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L85-L89).

### 4.5 The Chron chain (Part C)

The following conventions specify the conditional estimates in this chain. An *admissible step record* consists of step data with the prescribed patch, a stamped tube, an input representation $R$, and its connected-activity hypotheses at $(W,x,\mu,L,Q)$. A *marked input* $(E,w,\delta)$ is a set $E$ of regular input indices with derivative bounds $w_i\ge0$, zero outside $E$, satisfying

$$\sum_{i:\,o_i=z}e^{\sigma_RN_{B_R}(X_i)}w_i\le\delta\qquad\text{for every fine site }z.$$
Here $o_i,X_i$ are the input anchors and supports, and the derivative bounds use the input parameter point. In particular, $\delta\ge0$.

For a finite family of inserted leaves with supports $Z_\alpha$, nonnegative coefficients $l_\alpha$, attached root sets $A_\alpha$ and leaf weights $\omega_\alpha$, the *leaf-scale condition* with parameters $(n,\sigma,Y)$ requires $Y\ge0$, at most $n$ roots over each coarse site, and

$$\sum_{\alpha:\,v\in A_\alpha}e^{\sigma N_{B_R}(Z_\alpha)}\omega_\alpha\le Y\qquad\text{for every root }v.$$
The weights $\omega_\alpha$ include the leaf norm and $l_\alpha$, and each positive weight must have an attached root lying in its leaf support. The *radius condition at $\sigma$* is $(\mathrm{rel}_Q+1)10c_{h_Q+5}/L+2\varepsilon_Q\le\sigma$.

A cluster together with chosen leaf insertions has $N$ *remaining occurrences*: the sum, over its vertices, of the numbers of input occurrences outside those insertions. It is *marked* if at least one remaining occurrence comes from $E$. Thus $N\ge1$ for a marked cluster, but the other remaining occurrences need not be marked. The insertion count is the total number of leaves, counted with multiplicity. These are the two counts used below.

**Lemma 4.10 (quotation and acceptance).** Let $t,u$ be stage profiles, $C$ a library of order $\mathrm{ord}(u)$, $r'\in\mathbb N$ and $h>0$. There are $E\ge1$ and $k$ such that:

- the quotation bound holds with exponents $(\sigma_t,\sigma_u+2)$ and constant $E$ under the support and analytic hypotheses of III.15.5;
- for every $L\ge k$: $20(\sigma_u+2)\mathrm{toll}(r')\le L\sigma_t$ and $E/L\le h$.

*Sketch:* the quotation theorem of III.10 gives an $L$-independent $E$. Then $E/L\to0$ and $L\sigma_t\to\infty$. The return-fee estimate gives the factor $L^{-5}$. Summing over the $L^4$ fine sites of a block leaves $E/L$, by the anchored-sum estimate.
*Lean:* inner step of [`YM.RemainderComparison.Chron.sails`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L98-L111); [`YM.PhysicalNext.JointLoad.Heir.Release.quoting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Choirs.lean#L28-L29).

**Lemma 4.11 (radius cost).** If $b>0$ and $b+2\varepsilon_Q\le v$, then $(\mathrm{rel}_Q+1)10\,c_{h_Q+5}/L+2\varepsilon_Q\le v$ for all large $L$. In III.15.5, take $b=\varepsilon_Q$: the target condition gives $3\varepsilon_Q<4\varepsilon_Q<\sigma_j$.

*Sketch:* multiply the desired inequality by $L>0$ and choose $L$ so large that $(\mathrm{rel}_Q+1)10c_{h_Q+5}\le bL$.
*Lean:* [`YM.RemainderComparison.Lyric.bidLift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Orbit.lean#L37-L42).

**Lemma 4.12 (comparison functions).** Fix a target $Q$, a patch, stages $E,E'$, a kernel choice, an order datum at $W$, a songbook, a scrollwork, $\mu>0$, and rays satisfying the heart condition for $(E',\mathrm e_Q)$. There is a poster $D$ such that $d(D)>0$, its paint-supply condition holds, and its radius, charge and four comparison functions are reserves. Eventually in $x$, it satisfies the conditional comparison statement, the chart-radius estimates and the axis-chart existence statement required by the poster condition.

*Sketch:* obtain the radius and chart estimates from the chart construction, and choose the paint constant. The comparison-function theorem applies when the chart parameter is positive; otherwise the chart hypotheses are inconsistent. It requires positive comparison parameters $a,d$, a subpower bound on the volume function, reserves for the radius, charge and derivative control, paint supply, and orders satisfying $j+(r+1)+r+2\le n$ and $n+N\le k$. The ray heart condition supplies these order inequalities. It produces four reserve functions, uniformly over the subsequent step and chart choices. Its conclusion is conditional on local derivative bounds, the chart estimates and coefficient matching: derivatives through order $j$ of the differences of the expansion coefficients through degree $r$ have the prescribed bound. The proof combines finite-order exponential bounds, analytic expansion estimates and the assumed coefficient match.
*Lean:* [`YM.RemainderComparison.Cadenza.Poster.quorum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Metro.lean#L29-L51), [`YM.RemainderComparison.Herbal.compile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Herbal/Orbit.lean#L41-L56), [`YM.RemainderComparison.Herbal.Airstrip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Herbal/Orbit.lean#L33-L39), [`YM.RemainderComparison.Portal.JMatch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Portal/Wire.lean#L80-L81) *(proof read; proofs of the analytic expansion estimates not expanded)*.

**Lemma 4.13 (connected-activity structures).** Fix an input specification and target $Q$. There is $l$ such that, for every $L\ge l$, branching patch, order $j$, auxiliary choice $\chi$, $W,\mu>0$ and order datum at $W$, one can choose constants and functions before $x$ as follows: $d,v$ have gear $-\tfrac12$; $B,r,T'$ have rate at most $0$; and $p$ is a reserve, with $T',p\ge0$. Eventually in $x$, every admissible step record admits a connected-activity structure with the heavy, derivative and marked-input estimates specified by its three accompanying conditions.

*Sketch:* combine the connected-activity existence theorem with the derivative estimates for its local factors and the marked-input estimate. The growth-class rules keep $d,v$ at gear $-\tfrac12$ and the remaining stated functions at rate at most $0$. The structure is chosen separately for each step record; the bounding functions are common to all those records.
*Lean:* [`YM.RemainderComparison.Halo.seeds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Nexus.lean#L12-L57) *(proof read; analytic inputs from III.10)*.

**Lemma 4.14 (remaining-occurrence bound).** There is a block-side threshold depending only on the input specification and $Q$ such that, for every $L$ above it and every branching patch, the following holds. Fix the remaining data of Lemma 4.13 and $a\ge0$, $\varepsilon>0$ with $a+2\varepsilon\le\mathrm e_Q$. One can choose bounding functions such that, for every fixed pair of orders $I,J$, reserve $Y$ and nonnegative integer-valued function $n$ whose real-valued cast is a reserve, there are a reserve $V$ and a function $S'$ of gear $q<0$ with the following property. Eventually in $x$, every admissible step record admits a connected-activity structure for which the following holds. For every finite leaf family satisfying the leaf-scale condition $(n(x),\sigma,Y(x))$ and the radius condition at $\sigma$, every marked input with $\delta\le\beta_F^{-11/10}$, and every $m\in\mathbb N$, the bills restricted to marked clusters with $N\ge1+m$ remaining occurrences and insertion count at most $I$ satisfy

$$\mathrm{Hit}_{\mathcal B(x)}(\mathrm{bill};a)\le V(x)S'(x)^m\delta.$$
The derivative order is $j$ and the support-polynomial order in the bill is $J$. The bill is formed from the local majorant supplied by the chosen structure.

*Sketch:* increase the weights of the remaining occurrences by a factor whose inverse has negative gear. On the indicated clusters the inflated product contains at least one marked factor and $m$ further factors. Apply the weighted cluster bound and divide by those factors. The leaf-scale and radius conditions control the inserted leaves; the insertion cap $I$ controls the accompanying polynomial losses.
*Lean:* [`YM.RemainderComparison.Halo.ramp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Tome.lean#L33-L65) *(proof read; weighted-cluster estimates used as inputs)*.

**Lemma 4.15 (restriction to a cluster predicate).** Fix an admissible step record, a connected-activity structure, a nonnegative local majorant satisfying its derivative condition, nonnegative leaf coefficients and nonnegative vertex weights $\gamma$. Let $a\ge0$, $e_1,\delta>0$ and $q'<1$. Suppose the polymer majorant has hit bound $e_1$ at exponent $a+2\delta$, and its degree price with slack $\delta$ is at most $q'$. If a cluster predicate $V$ and $v\ge0$ satisfy $1\le v\prod\gamma$ on $V$, then the restricted bills have hit bound at exponent $a$ at most

$$v A_\delta(x;j,m)e_1(1-q')^{-1},\qquad A_\delta(x;j,m)=[4(2\mathcal B(x)+1)]^{mj}(mj)!\,\delta^{-mj}e^\delta.$$
The bill uses derivative order $j$ and support-polynomial order $m$.

*Sketch:* the logarithmic cluster-tail estimate gives the geometric sum $e_1/(1-q')$. Absorb $(1+N)^{mj}$ into $e^{\delta N}$, using $N^{mj}e^{-\delta N}\le(mj)!\delta^{-mj}$ with the corresponding shift by $1$. The spatial factor is $[4(2\mathcal B(x)+1)]^{mj}$. Finally insert $v\prod\gamma\ge1$ on the retained clusters.
*Lean:* [`YM.RemainderComparison.Lyric.gathers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Salary.lean#L49-L76), [`YM.RemainderComparison.Lyric.run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Salary.lean#L82-L100).

**Lemma 4.16 (anchored bound for marked outputs).** There is a block-side threshold depending only on the input specification and $Q$ such that the following holds for every $L$ above it and every branching patch. Fix the remaining data of Lemma 4.13 and $a\ge0$, $\varepsilon>0$ with $a+3\varepsilon\le\mathrm e_Q$. The connected-activity functions can be chosen as follows. Fix orders $J,r,I,n,P_0$ with $2\le n\le j$, assume $G$ simple, and fix an auxiliary choice, a reserve $Y$ and a nonnegative integer-valued function $i$ whose cast is a reserve, a record with parameter at most $\tfrac14$, and a library of order $n$. There are a reserve $V$ and a function $V'$ of some rate $q'<0$ such that, eventually in $x$, every admissible step record has:

- the marked hit bound $V(x)\delta$ at exponent $a+\varepsilon$, for leaf families with scale $(i(x),\sigma,Y(x))$ satisfying the radius condition, marked inputs $\delta\le\beta_F^{-11/10}$, and insertion count at most $I$;
- an anchored output bound $(C_0/L+V'(x))\delta$ at exponent $a$, provided the output parameter point has radius $\mathcal B(x)$, threshold $t(x)$ and power $P_0\le J$, the library's compatibility condition holds, $r\ge h_Q+5$, and the acceptance, quotation and local analytic smallness conditions hold with quotation constant $C_0$.

The anchored bound includes regularity and all left derivatives through the output order on the small-field supports. The proof gives $q'=\max(q,-\tfrac12)$, where $q<0$ is the gear exponent in Lemma 4.14.

*Sketch:* separate clusters with a single remaining occurrence from those with at least two, and separate supports whose covering number exceeds $\mathcal B(x)$. The single-occurrence contribution uses the quotation bound and the sum over $L^4$ sites. Lemma 4.14 bounds the other contributions by $V S'$ and $e^{-\varepsilon\mathcal B}V$. A further local comparison error has rate at most $-\tfrac12$. Their sum defines $V'$.
*Lean:* [`YM.RemainderComparison.Solo.atlas`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Solo/Barque.lean#L21-L61) *(proof read; local singleton estimate used as an input)*.

**Lemma 4.17 (tail bounds).** Fix $L$, $\mu>0$, $a\ge0$, $b>0$ with $a+2b\le\mathrm e_Q$, and $\tfrac38+\rho_Q<0$. Fix orders $j,n,k,s,J$, functions $B,p_0$ of rate at most $0$, and a nonnegative integer-valued function $m$ whose cast has rate at most $0$. Put $G_*(x)=\beta_F(x,L)^{3/8}$ and $\tau(x)=G_*(x)^5$. Let $I(x)$ be the additional root-activity bound formed from $m,p_0$, and let $\Sigma(x)$ be the resulting tree-sum majorant with derivative factor $1+2^jB(x)$. Eventually in $x$:

- the degree prices of $G_*((\text{root activity})+I)$ and of $\Sigma$ are at most $\tfrac12$, with slacks $\delta_Q$ and $b$, respectively;
- $G_*\ge1$, $I$ is below the prescribed root allowance, and $G_*^{5k+2s}\le e^{\mathrm{mark}}$ and $G_*^{5k+2s}\le e^{\varepsilon_Q\lfloor\mathcal B/100000\rfloor}$;
- for every $\beta$ in the band of $\beta_F$,
  $$\tau^kG_*^{-(5k+2s)}A_b(x;j,J)\,2\Sigma(x)\le g(\beta)^s,$$
  $$\tau^k e^{-\mathrm{mark}}\,2\mathrm{pledge}(x)\le e^{-\mathrm{mark}/2}g(\beta)^s;$$
- $e^{-\mathrm{mark}/2}\le e^{-4p(x)^{1/5}}$.

*Sketch:* the additional root term has rate at most $-\tfrac32$. Thus $\Sigma$ has rate at most $\tfrac38+\rho_Q<0$, and the polynomial spatial factors have rate at most $0$. These facts give the two degree-price inequalities. In the first displayed tail bound the factors $\tau^k$ and $G_*^{-5k}$ cancel; $G_*^{-2s}$ supplies $\beta_F^{-3s/4}$, sufficient for $g(\beta)^s$ uniformly on the band. The large marking exponent absorbs the remaining powers in the second bound.
*Lean:* [`YM.RemainderComparison.Lyric.epochs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Forecast.lean#L93-L120), [`YM.RemainderComparison.Lyric.Premium`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Forecast.lean#L80-L89).

**Lemma 4.18 (simultaneous derivative and tail estimates).** Suppose $\tfrac38+\rho_Q<0$. There is $\ell$ such that, for every $L\ge\ell$, branching patch, $W,\mu>0$, order datum, auxiliary choice, orders $j,J,k,s$, and $a\ge0$, $\varepsilon,\Delta>0$ with $a+2\varepsilon\le\mathrm e_Q$, the following holds. Fix a reserve $Y$, a nonnegative integer-valued function $n$ whose cast is a reserve, and a function $p_0$ of any fixed finite rate. There are reserves $A,B,C$ and a function $E$ of rate $q<0$ such that, eventually in $x$, each admissible step record admits three connected-activity structures with these properties:

- the first has the derivative estimates, mass condition and tail bounds of Lemma 4.17, and the required depth bound for $G_*^{5k+2s}$;
- $A(x)\ge1$, and the full bill from the second has hit bound $B(x)$ at exponent $a$ for leaves whose coefficients have been divided by $A(x)$, whenever the original leaf-scale condition $(n(x),\sigma,Y(x))$ and radius condition hold;
- the third gives hit bound $C(x)E(x)^i\delta$ at exponent $a$ for marked clusters with $N\ge1+i$, insertion count at most $k$, and $\delta\le\beta_F^{-11/10}$, under the same leaf-scale and radius conditions;
- writing $\pi_\Delta(x)=e^{-\Delta\lfloor\mathcal B(x)/100000\rfloor}$, the crop inequalities hold:
  $$\pi_\Delta p_0\le\beta_F^{-11/10},\qquad C\pi_\Delta p_0\le g(\beta_H)^s,\qquad \pi_\Delta A^kB\le g(\beta_H)^s.$$

The full and marked majorants also satisfy their local derivative conditions. Here $\beta_H$ is the coupling of the step record; the last bounds are for each fixed $s$.

*Sketch:* use separate connected-activity structures for the mass bound, the full bill and the marked bill. Combine the full-bill estimate, Lemma 4.14, Lemma 4.17 and the decay of $\pi_\Delta$ against every function of finite rate. The three structures need not coincide.
*Lean:* [`YM.RemainderComparison.Muse.generation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Muse/Baton.lean#L80-L96), [`YM.RemainderComparison.Muse.Roles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Muse/Baton.lean#L63-L77) *(proof read; connected-activity and full-bill estimates used as inputs)*.

**Lemma 4.19 (extending the comparison functions).** Suppose $G$ is simple and $\tfrac38+\rho_Q<0$. There is $\ell$ such that, for every branching patch of side at least $\ell$, $W,\mu>0$, order datum, songbook, scrollwork, auxiliary choice, mark number $r$, stage $E'$, rays with the heart property, library of order $\mathrm{ord}(E')$, record with parameter at most $\tfrac14$, and financed poster $D$, there is a quarry $F$ extending $D$, chosen before $x$, such that:

- its new functions $Y$, spin and $e$ are reserves, its connected-activity bound $R_b$ has rate at most $\rho_Q$, and its marked-output correction $h$ has some negative rate;
- eventually in $x$, every parameter point tempered to $E'$ and every compatible admissible step record has the required local analytic bounds and a connected-activity structure with tree-sum bound at most $R_b(x)$;
- its marked-output bound is $(C_0/L+h(x))\delta$, under all the marked-input, compatibility, acceptance, quotation and local analytic hypotheses of Lemma 4.16, with $r\ge h_Q+5$.

*Sketch:* take the new reserve functions and the finite-rate tail function from Lemma 4.18. The tree-sum bound is twice the polynomial spatial factor times the connected-activity majorant, whose rate is at most $\rho_Q$. Take $h=V'$ from Lemma 4.16 and apply that lemma with an empty leaf family. The additional tail function is a field of the quarry but carries no separate growth assertion in its financing condition.
*Lean:* [`YM.RemainderComparison.Cadenza.rollBefore`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L64-L80), [`YM.RemainderComparison.Cadenza.Instructions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L57-L60), [`YM.RemainderComparison.Cadenza.Quarry.Staked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L47-L51), [`YM.RemainderComparison.Cadenza.Quarry.Bequest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L44-L45).

**Lemma 4.20 (III.15.6).** Under the hypotheses of III.15.6, the quay condition holds for all sufficiently large block sides.

*Sketch:* take $n$ from 4.19. For given data, 4.12 gives a poster, and 4.19 extends it to a quarry. The remaining step conditions hold eventually in $x$ by their local analytic estimates and the scrollwork growth condition. Take $P_1$ beyond all of these thresholds.
*Lean:* [`YM.RemainderComparison.Cadenza.buoys`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L47-L58) *(proof read; individual local analytic estimates not expanded)*.

**Lemma 4.21 (III.15.5).** Under the hypotheses of III.15.5, the launch data exist.

*Sketch:* for each $(j,i)$, take $k_{ji}$ (4.10), $g_{ji}$ (4.20) and $n_{ji}$ (4.11). Set

$$f_j=\max_{i\in\{j,j-1\}}g_{ji}+\max_{i\in\{j,j-1\}}k_{ji}+\max_{i\in\{j,j-1\}}n_{ji}$$
and take $C'_{ji}=E_{ji}$ from 4.10.
*Lean:* [`YM.RemainderComparison.Chron.sails`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L98-L111).

**Lemma 4.22 (III.15.7).** Under the hypotheses of III.15.7, the quarries and a common enlargement of the delay data exist.

*Sketch:*

1. For each stage pair and slot, apply the pledge at $L=L_j$ (allowed since $k_j\le L_j$) to the slot's data. The chosen rays have the heart property because $\sigma_i+3<\mathrm e_{R_{ji}}$. This gives a quarry $V_{jig}$ and a threshold. The slot's extra condition holds eventually.
2. Set $\mathrm{shells}_j=\max(\mathrm{shells}_j(T_0),\max_{i\in\{j,j-1\},g}(4\ell_g+50))$ and $\mathrm{growth}_j=\max(\mathrm{growth}_j(T_0),1)$. The inner maximum is $0$ when there are no request slots. Tiling follows from the scrollwork growth conditions.
3. Since there are finitely many slots and two stage pairs per $j$, choose $\beta^*_j$ beyond all thresholds.

*Lean:* [`YM.RemainderComparison.Chron.grows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Corners.lean#L33-L70).

### 4.6 Records and other fragments (Part D)

The construction-run record collects local estimates, growth of the copy count, bounds for the selected representations, and the conditions required for later OPE and comparison arguments. Its fields are established when the run is assembled. The additional-expense records collect the hypotheses needed on the same selected run. The readout record extends three primitive conditions and adds a growth condition, a bound on block sizes by an iterated logarithm of the coupling, and cross-stage comparison inequalities.

The unit also contains numerical definitions and lemmas for the RG05 readout, the scale functions, and the instrument and postage records. These are not all mere projections: some prove asymptotic and transport estimates. The readout formulas and the remaining RG12 and R2I fragments are outside the detailed statements above; see §7.

*Lean:* [`YM.PhysicalNext.Repeat.Legato.R2I.Funded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L60-L73), [`YM.PhysicalNext.Repeat.Legato.R2I.Extras`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Expenses.lean#L35-L45), [`YM.Integration.RG05Preconstruction.PrimitiveExtras`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Resources.lean#L41-L43), [`YM.Integration.RG05Preconstruction.ReadoutPurchase`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Resources.lean#L28-L39).

## 5. Where the difficulty lies

The active outputs III.15.1–4 require uniform estimates in the coupling band and the volume. In III.15.1, the threshold must work for every $\beta$ in the band and every $B\le\mathcal B(y)$. In III.15.3–4, the constants depend on derivative order and path length but not on $t$ or the torus side. The single-word representation and unitarity give that independence.

Part C adds the conditional comparison bounds to the selected run, but those bounds are discarded in the final construction-run theorem. Its main estimates concern an inherited marked family: the anchored bound $(C'/L+o(1))\delta$ and the geometric gain per additional remaining occurrence. Their application requires the leaf-scale, radius, quotation and local analytic conditions. The gain counts all remaining occurrences, with at least one marked occurrence.

The exponent $\tfrac38$ is the tree-weight exponent inherited from III.10. Requiring $\rho_Q<-\tfrac38$ makes the relevant tree-sum majorant decay; the run's choice $\rho_Q<-\tfrac7{16}$ leaves a margin greater than $\tfrac1{16}$. The large-side threshold is independent of the later auxiliary data. The comparison functions and entry-coupling threshold may depend on those data, and the estimates then hold for all larger $x$.

## 6. Notation

| Written proof | Lean (glossary) | Meaning |
|---|---|---|
| $g(\beta)$ | [`YM.Next.Scheduling.Clock.gap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L40), `gStep` | $\beta^{-1/2}$ |
| $p(x)$ | [`YM.Next.Scheduling.Instrument.P`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L55) (plain), [`YM.Next.Scheduling.Clock.watch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L42) $2$ | $e^{(\log\log x)^2}$ |
| $t(x)$ | [`YM.Pressure.temp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L25), [`YM.Next.Scheduling.Instrument.t`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L59) | small-field threshold $g(x)p(x)$ |
| $\mathcal B(x)$ | [`YM.Pressure.radiusB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22), [`YM.Next.Scheduling.Clock.cover`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L38) | cluster radius $\lceil(\log x)^2\rceil$ |
| $\beta_F(x,L)$ | [`YM.Pressure.betaF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23) | $x+b_G\log L$ |
| band of $y$ | [`YM.Next.Scheduling.inBand`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L99) | $[y/4,4y]$ |
| $\mathrm{Rate}_L(a)$ | [`YM.ConnectedActivityE6.Rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Numerics.lean#L22-L23) | $\lvert w\rvert\le\beta_F^{v}$ eventually, for every $v>a$ |
| reserve; $M(x)$ | [`YM.RemainderComparison.Reserve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Access/Geometry.lean#L25-L26), [`YM.Push.AbsoluteSums.Delay.fineMonitor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L24) | $\lvert w\rvert\le M^k$ with $M=p(\beta_F)$ |
| gear $a$ | [`YM.RemainderComparison.Gear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Gear/Class.lean#L25) | $\beta_F^{-a}w$ is a reserve |
| $\mathrm{Hit}_M(f;a)\le\gamma$ | [`YM.Ac.Hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13) | weighted per-site polymer bound |
| $\mathrm{quote}(\kappa,\gamma)$ | [`YM.Bid.quote`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L18) | $e^{-\kappa}(e^\gamma-1)$ |
| rate conditions $(B,w,a,b,\kappa)$ | [`YM.Progress.DirectedRecipe.Payments.Rates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L33-L39) | the five inequalities of III.15.1 |
| mild, strong, $\kappa$ | [`YM.Progress.DirectedRecipe.Payments.Pairing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean#L28-L36) (`mild`, `strong`, `kGoal`) | power-decaying and Gaussian pair-step costs |
| hard and soft family | [`YM.Progress.DirectedRecipe.Payments.hardCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L42-L43), [`YM.Progress.DirectedRecipe.Payments.softCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L45-L46) | forced activities and local exponential corrections |
| Ingredients | [`YM.Progress.DirectedRecipe.Ingredients`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Batch.lean#L32-L33) | input to the fusion of III.10 |
| slot $s$, atom $a$ | `Slot`, `Atom` (III.1) | transported curvature; $k$-leg monomial |
| small-field on $X$ | [`YM.RG.Healthy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L41) | plaquettes touching $X$ within chord $t$ of $1$ |
| admissible direction | [`YM.RG.BudgetPoint.dirBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L141-L142) | $\lVert A_e\rVert\le t(1+\mathrm{dist}(e,o))^P$ |
| $\mathrm{slotCost}$, $\mathrm{margin}$, $\mathrm{price}$ | [`YM.Next.Scheduling.Wages.slotCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L95), [`YM.Next.Scheduling.Wages.margin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L94), [`YM.Next.Scheduling.Wages.price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L52-L54) | derivative constants of III.15.3–4 |
| target $Q$; $\rho_Q$, $\mathrm e_Q$, $\varepsilon_Q$ | [`YM.ConnectedActivityE6.Target`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/OptionCost.lean#L62-L76) | connected-activity target (rate, exponent, …) |
| $\beta_F^{3/8}$ | [`YM.PhysicalNext.Repeat.Height.grow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Height/Highway.lean#L25) | per-vertex tree weight (III.10) |
| pledge | [`YM.RemainderComparison.Chron.Pledge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L94-L95) | launch conditions (1)–(2) of III.15.5 |
| quay | [`YM.RemainderComparison.Cadenza.Quay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L46) | all step conditions available at side $L$ |
| quarry, financed | [`YM.RemainderComparison.Cadenza.Quarry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L21-L27), [`YM.RemainderComparison.Cadenza.Quarry.Financed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L34-L39) | bounding functions of $x$ with reserve/rate bounds |
| Pillar | [`YM.RemainderComparison.Chron.Pillar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Corners.lean#L23-L28) | pledge plus per-slot allotments and tilings |
| radius cost | [`YM.RemainderComparison.Lyric.radiusCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Orbit.lean#L35-L36) | $(\mathrm{rel}_Q+1)10c_{h+5}/L+2\varepsilon_Q\le v$ |
| comparison estimate | [`YM.RemainderComparison.Herbal.Airstrip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Herbal/Orbit.lean#L33-L39), [`YM.RemainderComparison.Portal.JMatch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Portal/Wire.lean#L80-L81) | interacting vs. model, with jets matched to order $r$ |
| heart condition | [`YM.RemainderComparison.Cadenza.Rays.Heart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Cord.lean#L50-L59) | support and order inequalities stated before III.15.6 |
| $B_P,t_P$ | [`YM.RG.BudgetPoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L125-L136) | cluster radius and threshold of a parameter point |
| support enlargement | [`YM.PhysicalNext.JointLoad.Heir.Walled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Depth.lean#L44) | $Y$ lies within distance $r\mathcal B(x)$ of the coarse image of $X$ |
| local analytic smallness | [`YM.PhysicalNext.JointLoad.Heir.Lute.Plented`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Fusion.lean#L25-L26) | numerical hypothesis on the return fee |
| library compatibility | [`YM.PhysicalNext.JointLoad.Heir.Plays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Sonata.lean#L66-L75) | registered local estimates for the library |
| marked input | [`YM.RemainderComparison.Halo.Presents`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Cut.lean#L26-L29) | derivative bounds on an inherited regular subfamily |
| leaf-scale condition | [`YM.RemainderComparison.Lyric.Scale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Flux.lean#L54-L59) | nonnegative weights, attached roots, rooted bound and occupancy |
| $N$; marked cluster | [`YM.RemainderComparison.Halo.gross`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Strike.lean#L39) | remaining occurrences after removing leaf insertions |
| insertion count | [`YM.RemainderComparison.Lyric.notes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Plectrum.lean#L33) | number of inserted leaves, with multiplicity |
| $A_b(x;j,J)$ | [`YM.ConnectedActivityE6.Blaze.March.collars`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Armada.lean#L25) | polynomial spatial factor in Lemma 4.15 |
| $\pi_\Delta(x)$ | [`YM.RemainderComparison.Sleet.pigment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Sleet/Flint.lean#L42) | $e^{-\Delta\lfloor\mathcal B(x)/100000\rfloor}$ |
| tempered point | [`YM.RemainderComparison.Cadenza.Temper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Cord.lean#L63-L69) | agreement of scale, threshold and stage parameters |
| comparison structure | [`YM.RemainderComparison.Portal.Pan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Portal/Lamps.lean#L51-L58) | analytic expansion data and coefficient match |
| $\iota_G$; $\mathcal P_G$ | [`YM.Gauge.colorMat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L64), [`YM.Gauge.projectColor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L96-L97) | colour-to-matrix map; normalized colour projection |
| $I(x)$; $\Sigma(x)$ | [`YM.RemainderComparison.Lyric.ink`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Forecast.lean#L31), [`YM.RemainderComparison.Lyric.salaries`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Store.lean#L62-L63) | additional root term; tree-sum majorant in Lemma 4.17 |
| $\mathrm{pledge}(x)$ | [`YM.PhysicalNext.Repeat.Daisy.pledgeQ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Daisy/Corral.lean#L26) | tail coefficient in Lemma 4.17 |
| marked cluster | [`YM.RemainderComparison.Halo.dyed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Strike.lean#L37) | a remaining occurrence belongs to the inherited family |

## 7. What remains unexplained
1. **Scope of Part C.** The selected-run theorem retains its comparison data as an additional conjunct; the final construction-run theorem discards that conjunct. A written proof using only the final run properties can omit these comparison conclusions. An all-order expansion using them would also have to supply the coefficient-matching hypotheses; existence of the comparison functions alone does not supply that match.
2. **Local analytic conditions.** The quotation bound and Lemmas 4.12, 4.16 and 4.19 retain the source's support-enlargement, library-compatibility and analytic-smallness conditions. Their full numerical definitions, and the local analytic, readiness, compatibility, resonance and tolerance conditions in III.15.6, remain to be written out. In particular, the local analytic condition attached to a funded step has not been translated into an independent mathematical statement.
3. **Provider proofs.** The assembly proofs in §4 have been read. The deeper proofs of the local singleton estimate, weighted-cluster bounds, full-bill estimates and analytic expansion estimates have not all been checked here. The contraction and occurrence-count statements are consequences of the cited conditional estimates, not unconditional bounds for arbitrary local terms.
4. **Historical interpretation.** The estimate $L^{-5}$ per fine site and its conversion to $L^{-1}$ per coarse block are explicit. Identifying it with a particular dimension-five operator is not justified by those inequalities alone. The reason for the choice $\tfrac38$ belongs to III.10's tree estimates.
5. **Other fragments.** The construction-run, additional-expense and readout record statements have been read. The RG05 readout price formulas and their proofs, and the remaining RG12 and R2I fragments, are not covered by the detailed verification. The thermodynamic fragment also includes eventual numerical estimates and a delay-enlargement lemma; it is not solely a collection of definitions.

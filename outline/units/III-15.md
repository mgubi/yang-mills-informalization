# III.15. Cost accounting for observables and the remainder comparison

*Part III — Ultraviolet construction (renormalization group).* 7,382 lines of Lean in 1,053 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is **checked** against the Lean and rewritten by a second model; a final editing round is in progress. It is updated as it improves.


**Part:** III, Ultraviolet construction (renormalization group). **Lean:** chapter 32: [`YM/RemainderComparison/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison) (packages Chron, Cadenza, Halo, Muse, Solo, Lyric, Herbal, Cascade, Sleet, Access, Portal, Aux and about twenty smaller ones), [`YM/Progress/DIRECTED_RECIPE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE), [`YM/Next/SCHEDULE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE), [`YM/RG05Readout/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG05Readout), [`YM/Integration/ChronPreconstruction/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ChronPreconstruction), [`YM/Integration/RG05Preconstruction/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction), and small parts of `YM/R2I/`, `YM/RG12/`, `YM/OPE/Therm/`. **Size:** 7,382 lines in 1,053 declarations used by the main theorem. About 4,200 of these lines are the proof of `Chron.sails` and the results it calls.

**Overview.** The unit has three independent parts, plus some record types.

- **(A) Pair-step pricing** (`DIRECTED_RECIPE`). Two numerical facts used by the RG step of III.9 and III.10. A hard family of polymer activities is merged with the Mayer expansion of the exponential of soft local terms. The merged family keeps a weighted polymer bound and carries an explicit Gaussian large-field factor (III.15.1–2).
- **(B) Derivative bounds for local observables** (`SCHEDULE/Wages`). On the small-field region, a transported curvature slot has left derivatives of every order $\le K$ bounded by a constant times $t$. A $k$-leg monomial in slots has them bounded by a constant times $t^k$. Here $t$ is the small-field threshold (III.15.3–4).
- **(C) Launch data and their consumption** (`RemainderComparison`: Chron, Cadenza and their providers). Fix a table of connected-activity targets with rates below $-\tfrac38$. Then for block sides $L$ above a threshold that depends only on earlier data, every numerical condition of the remainder-comparison step can be met for all large couplings, uniformly in all auxiliary data. The certificate of this is then attached to each stage pair of the run (III.15.5–7).
- **(D) Record types and price formulas.** The output record of the construction run (`R2I.Funded`), the `Extras` records, `ReadoutPurchase` and the RG05 readout price formulas, the clock functions and the `Postage` records. These are definitions; their fields are proved in other units.

**Status of the parts for the main theorem.**
- (A) and (B) are consumed by III.2, III.9 and III.10.
- (C) is fully proved and lies in the dependency closure of the main theorem, but its conclusion is never used:
  - III.2's assembly lemma [`joinExpensesShipWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L28-L119) calls `sails` and `grows` only to build the conjunct "News" (the Pillar certificate, [`Stagehands.News`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Rig.lean#L21-L22)).
  - That conjunct is passed unchanged up to the selected-run theorem [`selectRunWithTreasuryPeriod_preselected_quote_orders_postnumeric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L99-L114) of III.14.
  - Its only consumer, [`constructionRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28), drops it with a wildcard. The `Pillars` it keeps is the unrelated `Campaign.Pillars`.
  - Removing (C) would only lower the thresholds on block sizes and entry couplings.

  This was checked against the dependency graph: the chain of used declarations from `joinExpensesShipWithPrediction` upward is linear and ends at `constructionRun`. It was also checked against the destructuring pattern in `constructionRun`.

**Conventions.**
- $x$ denotes the coarse renormalized inverse coupling $\hat\beta$.
- $\beta_F(x,L)=x+b_G\log L$ is the inverse coupling at the next finer scale ([`betaF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23)); $b_G>0$ is the slope constant of $G$.

Clock functions:
$$g(\beta)=\beta^{-1/2},\qquad p(x)=e^{(\log\log x)^2},\qquad t(x)=g(x)\,p(x),\qquad \mathcal B(x)=\lceil(\log x)^2\rceil .$$
- $t$ is the small-field threshold ([`temp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L25), equal to [`Instrument.t`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L59) for the plain instrument).
- $\mathcal B$ is the cluster radius ([`radiusB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22), the same formula as [`Clock.cover`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L38)).
- The band of $y$ is $[y/4,4y]$ ([`inBand`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L99)). On it, $g(y)/2\le g(\beta)\le 2g(y)$ ([`band_gap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L105-L111)).

Growth classes, at fixed $L$, as $x\to\infty$:
- **Rate** $\le a$ ([`Rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Numerics.lean#L22-L23)): for every $v>a$, eventually $|w(x)|\le\beta_F(x,L)^v$.
- **Reserve** ([`Reserve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Access/Geometry.lean#L25-L26)): $|w(x)|\le M(x)^k$ eventually for some $k$. The monitor is $M(x)=p(\beta_F(x,L))$ ([`fineMonitor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L24)). A reserve is $\beta^{o(1)}$ and has rate $0$.
- **Gear** $a$ ([`Gear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Gear/Class.lean)): $\beta_F^{-a}w$ is a reserve. This is rate exactly $a$ up to a reserve factor.

Weighted hit bound ([`Ac.Hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13)): for supports $X_i$, weights $f_i\ge0$, scale $M$ and exponent $a$, write $\mathrm{Hit}_M(f;a)\le\gamma$ if
$$\sum_{i:\,z\in X_i} f_i\,e^{a N_M(X_i)}\le\gamma\quad\text{for every site }z,$$
where $N_M(X)$ is the minimal number of $M$-balls with connected union covering $X$.

The quote is $\mathrm{quote}(\kappa,\gamma)=e^{-\kappa}(e^{\gamma}-1)$ ([`Bid.quote`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L18)).

Monetary words in the code (cost, price, bill, fee, wages, financed, paid, pledge, quay) denote numerical bounds and their bookkeeping.

## 1. What this unit proves

### Part A: pair-step pricing

**Proposition III.15.1 (pair-step rates).** Let $\rho>0$; this is the rate of a forecast record, of which only the rate is used. Let $C\ge0$, $r>\rho$, $d\in\mathbb N$, $e\in\mathbb R$ and $q>0$. For $y>1$ and $\beta>0$ put
$$s(y,\beta)=\frac{t(y)}{g(\beta)}=p(y)\sqrt{\beta/y},\quad \mathrm{mild}(y)=C(1+\mathcal B(y))^{d}p(y)^{e}g(y)^{q},$$
$$\mathrm{strong}(y,\beta)=C e^{-r s^2},\quad \kappa(y,\beta)=\rho s^2 .$$
Then for all sufficiently large $y$ we have $y>1$, and for every $\beta\in[y/4,4y]$ and every integer $0\le B\le\mathcal B(y)$ the following holds. With $a=\mathrm{strong}(y,\beta)$, $b=\mathrm{mild}(y)$ and $\gamma=e^{\kappa}a+2b$:
$$\kappa\ge0,\quad a\ge0,\quad 0\le b\le1,\quad (2B+1)^4\gamma\le1,\quad \mathrm{quote}(\kappa,\gamma)\le e^{-\kappa}.$$
In words, $(a,b,\kappa)$ satisfies the rate conditions with target $w=e^{-\kappa}$. The threshold in $y$ depends only on $(\rho,C,r,d,e,q)$.
*Status:* theorem.
*Lean:* [`Payments.Pairing.currency`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean#L76-L139); data [`Pairing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean#L28-L36); conditions [`Rates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L33-L39) and [`inflation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L32).
*Consumers:*
- III.9, in [`VerifiedReset.Time.cash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Currency.lean#L75-L126), with $d=e=0$, $q=\tfrac12$, $y=x+b_G\log L$ and $B=\mathcal B(x)$.
- III.2, in [`Jams.reunite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sym/Purse.lean#L72-L85).

**Proposition III.15.2 (merging a hard and a soft family).** Fix a budget point $P$ with cluster scale $B_P$, support exponent $\sigma$ and threshold $t_P$. Consider a step input with:
- a **hard family**: forced activities $F_i$ with supports $X_i$;
- a **soft family**: local terms $\ell_i$ with supports $X'_i$. These are the logarithms of soft cutoff factors (probable).

Assume:
1. *Structural fittings.* The hard family is regular and forced at $P$ and admits the translation/reflection moves. Each $\ell_i$ is gauge invariant and measurable. It depends only on the configuration on $X'_i$ and on the flags there. It vanishes unless the configuration fails to be small-field (threshold $t_P$) on $X'_i$. The family $(\ell_i)$ is covariant under lattice translations and reflections.
2. The input bound $E(\delta)$ of the hard gas.
3. Sup bounds $\|F_i\|\le p_i$ and $|\ell_i|\le q_i$, with $p_i,q_i\ge0$.
4. $\mathrm{Hit}_{B_P}(p;\sigma+1)\le a$ on $(X_i)$ and $\mathrm{Hit}_{B_P}(q;\sigma+1)\le b$ on $(X'_i)$.
5. $(a,b,\kappa)$ satisfies the rate conditions of III.15.1 with cluster size $B_P$ and target $w$.

Then the *Ingredients* condition with $(\delta,w)$ holds. Explicitly:
- the hard gas satisfies the digest bound (input size $\delta$, mass $a$);
- the merged family $(F_i)\sqcup(e^{\ell_i}-1)$, with weights $e^{\kappa}p_i$ and $2q_i$, satisfies $|F_i|\le e^{-\kappa}\cdot e^{\kappa}p_i$ and $|e^{\ell_i}-1|\le 2q_i$;
- that family has $\mathrm{Hit}_{B_P}(\cdot\,;\sigma+1)\le\gamma:=e^{\kappa}a+2b$, with $(2B_P+1)^4\gamma\le1$;
- $\mathrm{quote}(\kappa,\gamma)\le w$.

*Status:* theorem. The only analytic input is $|e^z-1|\le2|z|$ for $|z|\le1$. Through the fusion lemmas of III.10 (`Work.H01`–`H03`, used in [`Ingredients.gates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Batch.lean)), the conclusion gives the fused polymer family with norm bound $\le w$. With $w=e^{-\kappa}$ from III.15.1, this is the Gaussian large-field factor $\exp(-\rho\,(\beta/y)\,p(y)^2)$.
*Lean:* [`Payments.tender`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L124-L133); [`hardCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L42-L43), [`softCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L45-L46), [`rooted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L48-L49), [`Fittings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L52-L62), [`Ingredients`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Batch.lean#L32-L33).
*Consumers:* III.9 ([`Collection.Local.renew`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Investor.lean#L112-L128)) and III.10 ([`Marlin.cannon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Marlin/Pylon.lean#L38-L49)).

### Part B: derivative bounds for local observables

A *slot* $s$ is a lattice walk $\omega$ from the origin, followed by a plaquette $\pi$ (two axes) at the endpoint of $\omega$ ([`Slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L38-L40)). Its length is $|s|=|\omega|+4$, and its value at a site $o$ is the transported curvature
$$s(U,o)=\mathrm{Ad}(U_{\omega})\,\mathcal C(U_{\pi})\in\mathfrak g ,$$
where $\mathcal C$ is the colour projection of the anti-Hermitian part.

A *$k$-leg atom* $a$ has slots $s_1,\dots,s_k$ and a real coefficient tensor $c_b$ indexed by colour multi-indices $b\in\{1,\dots,\dim\mathfrak g\}^k$ ([`Atom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L84-L86)). Its value is $a(U,o)=\sum_b c_b\prod_i s_i(U,o)^{b_i}$, its size is $|a|=\sum_b|c_b|$, and its length is $\mathrm{len}(a)=\sum_i|s_i|$.

Fix a budget point with derivative order $K$, power $P$ and threshold $t\in(0,1]$. Directions are increments $A$ of the left derivative $\partial_A$. A direction is *admissible at $o$* if
$$\|A_e\|\le t\,(1+\mathrm{dist}(e,o))^{P}\quad\text{for every link }e$$
([`dirBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L141-L142)).

A configuration is *small-field on $X$* (healthy, [`Healthy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L41)) if every plaquette touching a site of $X$ has chord distance $\le t$ from the identity. Let $\kappa_G>0$ be the colour scale of $G$ and $\|1\|$ the Frobenius norm of the identity matrix.

**Proposition III.15.3 (slot derivative bound).** Let $s$ be a slot with $|s|\le\ell$, let $S$ be a finite set of points of $\mathbb Z^4$ containing the stencil of $s$, and let $o$ be a site. Then $U\mapsto s(U,o)$ is $K$ times left-differentiable. Let $U$ be small-field on $o+S$ (wrapped on the torus), and let $A_1,\dots,A_m$ be admissible directions at $o$ with $m\le K$. Then
$$\big\|\partial_{A_1}\cdots\partial_{A_m}s(U,o)\big\|\le \mathrm{slotCost}(P,K,\ell)\,t,$$
$$\mathrm{slotCost}(P,K,\ell)=\big(1+\kappa_G^{-1}\|1\|\big)\,\mathrm{margin}(P,\ell)^{K},\qquad \mathrm{margin}(P,\ell)=2(\kappa_G+1)\,2^P(\ell+1)^{P+1}.$$
The constant depends on $P,K,\ell,G$ only, not on $t$, $o$ or the volume. The case $m=0$ is the order-zero bound $\|s(U,o)\|\le t$.
*Status:* theorem.
*Lean:* [`Wages.slotPays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L108-L159); [`slotCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L95), [`margin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L94), [`LeftBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07/Calculus.lean#L124-L129).
*Consumers:* III.9 ([`VerifiedReset.Low.plain_bill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Quadratic.lean#L64-L83)) and III.15.4.

**Proposition III.15.4 (bound for $k$-leg atoms).** Let $a$ be a $k$-leg atom, $o$ a site, and $U$ small-field on the footprint $o+\mathrm{stencil}(a)$. Then $U\mapsto a(U,o)$ is $K$ times left-differentiable, and every left derivative of order $m\le K$ in admissible directions at $o$ is bounded by
$$\mathrm{price}(a)=|a|\,2^K\big(2^K\,\mathrm{slotCost}(P,K,\mathrm{len}(a))\,t\big)^{k}=\mathrm{start}(G,k,P,K)\;t^{k}\;|a|\;(\mathrm{len}(a)+1)^{(P+1)Kk},$$
where $\mathrm{start}(G,k,P,K)=2^K\big(2^K\mathrm{slotCost}(P,K,0)\big)^k$.
*Status:* theorem.
*Lean:* [`Wages.fin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L56-L71), [`Wages.price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L52-L54), [`Wages.scan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L85-L89), [`startup`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L78).
*Consumers:* III.9 ([`VerifiedReset.High.paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Higher.lean#L35-L41)) and III.10 (`Song.pitch_charge`, `Song.sine_pos`).

### Part C: launch data for the remainder comparison (idle for the main theorem)

A *connected-activity target* $Q$ ([`Target`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/OptionCost.lean#L62-L76), III.10) carries:
- a rate $\rho_Q\in(-\tfrac12,0)$;
- an exponent $\mathrm{e}_Q\ge0$;
- small parameters $\varepsilon_Q,\delta_Q>0$ with $4\varepsilon_Q$ below the top support exponent;
- a halo $h_Q\ge500$;
- a chart table.

Its relative exponent is $\mathrm{rel}_Q=\mathrm e_Q+2\varepsilon_Q+\delta_Q$.

Stage pairs $(j,i)$ are those with $i\in\{j,j-1\}$ ([`StepStages`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Basic.lean)). The stage profile $P_j$ has support exponent $\sigma_j$.

**Proposition III.15.5 (launch data, the pledge).** Let $G$ be simple. Fix:
- a sheet (stage profiles $P_j$, kernel choice $K$);
- targets $R_{ji}$ with $\tfrac38+\rho_{R_{ji}}<0$ for all $j,i$;
- tolerances $h_{ji}>0$;
- libraries $C_{ji}$ (of the order of $P_i$);
- mark numbers $r_{ji}$.

Then there are thresholds $f:\mathbb N\to\mathbb N$ and constants $C'_{ji}\ge1$ such that:

1. For all $j,i$, the *quotation bound* holds for $(C_{ji},\mathrm{power}(P_i),r_{ji})$ with fine exponent $\sigma_j$, coarse exponent $\sigma_i+2$ and constant $C'_{ji}$. That is: for every RG step with block side $L$ satisfying the acceptance condition, the return fee of a local term with $r_{ji}$ marks on a fine support $X$, weighted by $e^{(\sigma_i+2)N(Y)}$ on its coarse image $Y$, is at most $C'_{ji}L^{-5}$ times its fine polymer weight $e^{\sigma_j N(X)}$.
2. For every stage pair $(j,i)$ and every block side $L\ge f_j$:
   - (a) the quay condition (III.15.6) holds for $R_{ji}$ at side $L$;
   - (b) $(\mathrm{rel}_{R_{ji}}+1)\,10\,c_{h+5}/L+2\varepsilon_{R_{ji}}\le\sigma_j$, where $c_{h+5}$ is the pre-cost of halo $h_{R_{ji}}+5$;
   - (c) the acceptance condition $20(\sigma_i+2)\,\mathrm{toll}(r_{ji})\le L\sigma_j$;
   - (d) $C'_{ji}/L\le h_{ji}$.

*Status:* theorem. The construction run calls it with rates $<-\tfrac7{16}$; these are supplied by III.2's company selection, and $-\tfrac7{16}$ implies the hypothesis.
*Lean:* [`Chron.sails`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L98-L111), [`Chron.Pledge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L94-L95), [`Release.Quotation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Choirs.lean#L23-L27), [`Release.accepts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Fusion.lean#L59), [`Lyric.radiusCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Orbit.lean#L35-L36), [`Chron.Contemple`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L68-L71) (tolerances).

**Proposition III.15.6 (the quay for large sides).** Let $G$ be simple, $K$ a kernel choice, and $Q$ a target with $\tfrac38+\rho_Q<0$. There is $n$ such that for every block side $L\ge n$ the following holds. Take any:
- patch $p$ of side $L$ satisfying the branching condition;
- $W,\mu>0$, and order datum at $W$;
- songbook and scrollwork at side $L$, and $\chi$;
- stages $E,E'$, and rays with the heart property for $(E',\mathrm e_Q)$;
- library $C$ of the order of $E'$;
- record with $\varepsilon\le\tfrac14$;
- $j\in\mathbb N$, reserve $f$, and $\eta,\delta>0$.

Then there exist a quarry $D$ (a record of budget functions of $x$, with $d(D)>0$ and paint supply) and a threshold $P_1$ with:
- $D$ is financed at rate $\rho_Q$;
- for every $x\ge P_1$, all conditions of one remainder-comparison step hold at $x$ (`Coaxes`): the poster is paid, the instructions hold, and the active, resonance and tolerance bounds hold for every $\beta$ in the band of $\beta_F(x,L)$.

The quarry does not depend on $x$.
*Status:* theorem.
*Lean:* [`Cadenza.buoys`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L47-L58), [`Quay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L46), [`Allot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L42-L44), [`Coaxes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L35-L41), [`Quarry.Financed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L34-L39).

**Proposition III.15.7 (consumption of a pledge).** Fix a sheet with chosen block sizes $L_j$, a protection, a register, and a firmament. The register supplies $\mu_{ji}$ and order data. The firmament gives, for each stage pair, finitely many *slots*; each slot carries a scrollwork, a songbook, grade and order data, a reserve, positive constants, and an extra purchase that holds eventually for every financed quarry. Fix also tolerances, libraries $C_{ji}$, mark numbers $r_{ji}$ and records $u_{ji}$. Assume:
- a pledge (III.15.5) with thresholds $k_j\le L_j$;
- $\varepsilon(u_{ji})\le\tfrac14$ for the relevant stage pairs;
- $\sigma_i+3<\mathrm e_{R_{ji}}$ for all $j,i$.

Then for every initial delay datum $T_0$ (entry couplings $\beta^*_j$, shell counts, growth exponents, …) there are a delay datum $W\ge T_0$ and a quarry $V_{jig}$ for every slot $g$ with the following property. Every delay datum $U\ge W$ carries a **Pillar**:
- (a) a pledge with $f_j\le L_j$;
- (b) for every stage pair $(j,i)$ with $j\ge4$, $i$ at least the first stage, and the patch branching, and for every slot $g$: the slot's rays have the heart property; $d(V_{jig})>0$; paint supply holds; the allotment of III.15.6 holds with threshold $\beta^*_j(U)$; and the slot's extra purchase holds for $x\ge\beta^*_j(U)$;
- (c) for $x\ge\beta^*_j(U)$ and every torus side $c\ge \mathrm{shells}_j(U)\,(1+\mathcal B(x))^{\mathrm{growth}_j(U)}$, the slot's scope is tiled at $(x,c)$.

*Status:* theorem.
*Lean:* [`Chron.grows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Corners.lean#L33-L70), [`Chron.Pillar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Corners.lean#L23-L28), [`Firmament`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L64-L66), [`Glint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L49-L63).
*Consumers of III.15.5 and III.15.7:* III.2 ([`joinExpensesShipWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L28-L119)), whose output reaches III.14 and is discarded there (see the overview). The other callers, `Chron/Rig.lean:posted_continues` and `ChronPreconstruction/Expenses.lean:joinExpensesShip`, are not used by the main theorem.

## 2. What it uses

**From other units.**
- III.1: the clock functions $t$, $\mathcal B$ and $\beta_F$ (`temp`, `radiusB`, `betaF`); slots and atoms (`Slot`, `Atom`).
- II.1: left-derivative calculus (`LeftBound`, `LeftSmooth`, `left_linear`); the order-zero slot bound [`slot_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07/Stencil.lean#L165-L176).
- II.2: weighted hit bounds (`Ac.Hit`, `SumBudget`).
- III.5: the logarithmic tail bound of the cluster expansion (`Ursell.log_hit_tail`), used in Lemma 4.15.
- III.10, a large set of inputs:
  - the growth classes `Rate` and `Target`, and the step records `Cash` and `Captain`;
  - the fusion answers `Work.H01`–`H03`, which turn *Ingredients* into a fused activity bound;
  - the quotation constants [`Release.quoting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Choirs.lean#L28-L29) (from `Release.preprices` and `Lute.issued`, which carry the factor $L^{-5}$);
  - the per-vertex weight [`Height.grow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Height/Highway.lean#L25) $=\beta_F^{3/8}$ and the criterion [`Height.pressureYoung`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Height/Highway.lean#L30-L35);
  - the providers `Utopia.twinkles`, `March.oar`, `March.Armada.ensemble`, `Eider.weave` and `Glass.portal` (tree certificates for the connected activity and its rate-$\rho_Q$ bound).
- III.2: the targets $R_{ji}$ with rates $<-\tfrac7{16}$ and $\sigma_i+3<\mathrm e_{R_{ji}}$ (the expense records of the company selection). Also the block-size and delay order into which III.15.5 and III.15.7 are inserted.

**Standard mathematics.**
- Cluster and polymer expansions with weighted per-site bounds (Kotecký–Preiss, Commun. Math. Phys. 103 (1986); Brydges, *A short course on cluster expansions*, Les Houches 1984).
- Balaban's small-field/large-field decomposition with thresholds $g\,p(g)$, and the Gaussian large-field factor $e^{-c\,p(g)^2}$ (Balaban, Commun. Math. Phys. 109 (1987), 116 (1988); Dimock, *The renormalization group according to Balaban*, Rev. Math. Phys. 2011–2013).
- Power counting of irrelevant terms under block-spin maps: a dimension-5 term gains $L^{-5}$ per site and $L^{-1}$ per block (Balaban, op. cit.; Brydges–Slade, *A renormalisation group method I–V*, J. Stat. Phys. 159 (2015)).
- The Leibniz rule and the chain rule for products of group elements along a path.
- $|e^z-1|\le2|z|$ for $|z|\le1$.
- Elementary asymptotics: $e^{a(\log\log y)^d}$ beats every power of $\log y$ when $d>1$, and $e^{-c\,p(y)^a}$ beats every power of $y$.

**Imported constants and assumptions.**
- Simplicity of $G$. In (C) it enters through `Solo.atlas` (via `Brim.scored`). Parts (A) and (B) do not use it.
- $\tfrac38+\rho<0$ for the targets. The value $\tfrac38$ is the exponent of the per-vertex tree weight $\beta_F^{3/8}$ of III.10 (`Height.grow`). In this unit the hypothesis is used exactly once, in Lemma 4.17 (`Lyric.epochs`), to make that weight times the activity summable. Since targets have $\rho_Q>-\tfrac12$, the admissible window is $(-\tfrac12,-\tfrac38)$; the run uses $(-\tfrac12,-\tfrac7{16})$.
- The tolerance table $h_{ji}$ and the firmament are inputs. In the run they come from a fixed default (`RiderResourceDynamics.defaultDynamics`).

## 3. Strategy

*Part A.* This is the arithmetic of Balaban's large-field/small-field split at one RG step.
- **Large-field (hard) terms.** In the plain instrument, a field is large on a polymer if some plaquette exceeds $t(y)=g(y)p(y)$. The Gaussian integration then yields a factor $\exp(-r\,t(y)^2/g(\beta)^2)=\exp(-r(\beta/y)p(y)^2)$. Since $p(y)^2=e^{2(\log\log y)^2}$ grows faster than every power of $\log y$, this factor beats every polynomial in $\mathcal B(y)\sim(\log y)^2$ and every power of $y$, uniformly over the band.
- **Splitting the factor.** III.15.1 splits it: a part $e^{-\kappa}$ with $\kappa=\rho s^2$ is kept as the target bound of the output ($\rho<r$); the rest pays the combinatorial factor $(2B+1)^4$ of a $B$-ball.
- **Small-field (soft) terms.** These are paid by a polynomial factor $g(y)^q$, which also beats the polylogarithmic factors.
- **Merging.** III.15.2 is the Mayer step. The product $\prod_i e^{\ell_i}=\prod_i(1+(e^{\ell_i}-1))$ is expanded, and the new polymers $e^{\ell_i}-1$ are added to the hard family. The weighted bound of the union is the sum $e^{\kappa}a+2b$ of the two bounds.

*Part B.* A slot is written as one group word, $\omega\cdot\partial\pi\cdot\omega^{-1}$, projected to the Lie algebra; it is not expanded in the Lie algebra. Each left derivative falls on one link occurrence of the word, and costs the norm of the direction. That norm is at most $t$ times a polynomial in the distance to $o$. The word has at most $2\ell$ link occurrences, all within distance $2\ell$ of $o$. So $m\ge1$ derivatives cost $(2\ell\cdot\kappa_G\,t\,(1+2\ell)^P)^m\le\mathrm{margin}^K\,t$. There is no exponential loss from Frobenius norms of long products, and no dependence on $t$ beyond the explicit factor. A $k$-leg atom then costs $t^k$ by the Leibniz rule. This is the power counting of local observables: a $k$-leg curvature monomial is $O(t^k)$ with all its derivatives on the small-field region.

*Part C.* The Chron chain assembles, at each stage pair, the following facts, valid for $L\ge f_j$ (pre-$L$ thresholds) and then for $x$ large (post-$L$ entry couplings), uniformly over all auxiliary data (probable reading):
1. The connected activity of the step admits a tree certificate (captain structure). Its bound $\mathrm{Rb}(x)$ has rate $\rho_Q$. The tree sum converges because the per-vertex weight $\beta_F^{3/8}\cdot\beta_F^{\rho_Q}$ has negative rate.
2. Mark a part of the input of norm $\delta\le\beta_F^{-11/10}$. The output clusters that contain at least one marked input then have total norm at most $(C'/L+\mathrm{herd}(x))\,\delta$, where $\mathrm{herd}$ has negative rate. This is the contraction of the remainder under one step. The factor $C'/L$ is the $L^{-5}$ return fee per fine site, summed over the $L^4$ sites of a block. Clause (d) of the pledge, $C'/L\le h_{ji}$, makes the contraction at least as strong as the prescribed tolerance.
3. Every additional marked occurrence in a cluster gains a factor $S'(x)$ of negative rate.
4. For any prescribed order $s$, the costs left after expanding to that order are $\le g(\beta)^s$ (the "all-order" feature in the module headers).

The Lean proofs only assemble III.10's estimates with elementary asymptotics. The quantifier pattern ($\forall L\ge f_j\ \exists D\ \forall^\infty x$) is the content: the budget record $D$ is chosen after $L$ and before $x$.

## 4. Steps

### 4.1 Asymptotic toolkit

**Lemma 4.1.** As $x\to\infty$:
1. $p(x)^{a}g(x)^{q}\to0$ for all $a$ and all $q>0$ (`light`);
2. $(1+\mathcal B(x))^k/p_d(x)^a\to0$ for $d>1$ and $a>0$, where $p_d(x)=e^{(\log\log x)^d}$ (`ceiling_cheaper`);
3. $g(x)^{q}e^{-c\,p_d(x)^a}\to0$ for every real $q$, $c,a>0$ and $d>1$ (`burnt`).

*Sketch:* substitute $u=\log\log x$, so that $\log x=e^u$; each claim reduces to a polynomial or exponential in $u$ against $e^{u}$ or $e^{u^d}$.
*Lean:* [`Clocks.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean) *(statements read)*.

### 4.2 Pair-step rates

**Lemma 4.2 (III.15.1).**
*Proof sketch:*
1. Put $\eta=(r-\rho)/4$. On the band, $g(\beta)\le2g(y)$, so $s\ge p(y)/2$. Hence $e^{\kappa}\,\mathrm{strong}=Ce^{-(r-\rho)s^2}\le h(y):=Ce^{-\eta p(y)^2}$.
2. Put $v=h+2\,\mathrm{mild}$. For every $k$, $(1+\mathcal B)^k v\to0$:
   - for $h$, write $(1+\mathcal B)^k e^{-\eta p^2}=\big[(1+\mathcal B)^k g\big]\cdot\big[g^{-1}e^{-\eta p^2}\big]$ and use Lemma 4.1(1, 2, 3);
   - for $\mathrm{mild}$, write $(1+\mathcal B)^{d+k}p^e g^q=\big[(1+\mathcal B)^{d+k}/p\big]\cdot\big[p^{1+e}g^q\big]$.
3. With $k=4$: $(2B+1)^4\gamma\le2^4(1+\mathcal B)^4v\le1$ eventually.
4. $e^{v}-1\le1$ eventually gives $\mathrm{quote}(\kappa,\gamma)\le e^{-\kappa}$, and $\mathrm{mild}\to0$ gives $\mathrm{mild}\le1$.

All thresholds are independent of $\beta$ and of $B\le\mathcal B(y)$.
*Lean:* [`currency`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean#L76-L139), private lemmas `charged`, `priced` in [`Economy.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean). The section `charging` of the same file defines a record `Treats` (the rate conditions at every $x\ge\beta^*_i$ along the schedule) and proves nothing.

### 4.3 Merging hard and soft families

**Lemma 4.3 (blend).** Let $p,q\ge0$ satisfy $\mathrm{Hit}_{B}(p;\sigma+1)\le a$ on $(X_i)$ and $\mathrm{Hit}_{B}(q;\sigma+1)\le b$ on $(X'_i)$. Then the weights $(e^{\kappa}p_i)\sqcup(2q_i)$ on the disjoint union satisfy $\mathrm{Hit}_B(\cdot\,;\sigma+1)\le e^{\kappa}a+2b$.
*Sketch:* multiply a hit bound by a constant, then add two summable families.
*Lean:* [`give`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L78-L86), [`blend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L88), [`merges`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L98-L105).

**Lemma 4.4 (activity bounds of the merged family).** Assume $\|F_i\|\le p_i$, $|\ell_i|\le q_i$, the soft hit bound $b$, and $b\le1$. Then $\|F_i\|\le e^{-\kappa}(e^{\kappa}p_i)$ and $|e^{\ell_i}-1|\le2q_i$.
*Sketch:*
1. Dropping one unit of support exponent gives a sum bound for the weights $e^{\sigma N(X'_i)}q_i$ (`drop_reserve`).
2. A single term is at most the sum, so $|\ell_i|\le q_i\le e^{\sigma N(X'_i)}q_i\le b\le1$.
3. Then $|e^{z}-1|\le2|z|$ for $|z|\le1$.

*Lean:* [`shares`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L107-L117), [`drop_reserve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L64-L76).

**Lemma 4.5 (III.15.2).** The *Ingredients* condition holds, with witness $(\kappa,\ e^{\kappa}a+2b,\ a)$.
*Sketch:* the digest part combines the structural fittings, the $E(\delta)$ bound, the hard sup bounds and `drop_reserve`. The "buys" part takes $\gamma\ge0$ and $\kappa\ge0$, the capital inequality, Lemma 4.3 and Lemma 4.4. The quote inequality is the last rate condition.
*Lean:* [`tender`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L124-L133).

### 4.4 Slots and atoms

**Lemma 4.6 (a slot is one group word).**
$$s(U,o)=\Pi\big(U_{\omega\cdot\partial\pi\cdot\omega^{-1}}\big),\qquad \Pi(A)=\mathrm{proj}_{\mathfrak g}\tfrac12(A-A^{*}),\qquad \|\Pi(A)\|\le\kappa_G^{-1}\|A\|.$$
*Sketch:* $\mathcal C(hgh^{-1})=\mathrm{Ad}(h)\,\mathcal C(g)$. The detour has length $2|\omega|+4\le2|s|$.
*Lean:* [`detour`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L64-L65), [`projector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L67-L68), [`hangs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L70-L80), [`norm_projector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L82-L88).

**Lemma 4.7 (derivatives of a word).** Let $w$ be a product of link variables and inverses with $n$ link uses. Suppose $\|\kappa_G A_e\|\le T$ on every used link $e$, for every direction in the list $\vec A$. Then
$$\|\partial_{\vec A}U_w\|\le\|1\|\,(Tn)^{|\vec A|}.$$
*Sketch:* the Leibniz rule; each derivative replaces one factor by its left increment.
*Lean:* [`Path.bill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/GridCost.lean#L184-L197).

**Lemma 4.8 (III.15.3).**
*Sketch:*
1. Every link use of the detour is within distance $2\ell$ of $o$. Admissible directions therefore give $T=\kappa_G t(1+2\ell)^P$, and $T\cdot2\ell\le\mathrm{margin}\cdot t$.
2. Lemma 4.7, then $\Pi$, give $\kappa_G^{-1}\|1\|(\mathrm{margin}\,t)^m$.
3. Since $\mathrm{margin}\ge1$, $t\le1$ and $1\le m\le K$, this is at most $\kappa_G^{-1}\|1\|\,\mathrm{margin}^K t$.
4. For $m=0$, use `slot_bound`.

*Lean:* [`slotPays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L108-L159).

**Lemma 4.9 (III.15.4).**
*Sketch:*
1. Extract colour components by an orthonormal projection (`extracts`).
2. Apply the Leibniz rule to the product of the $k$ leg components: two derivative bounds $c_1,c_2$ up to order $K$ give $2^Kc_1c_2$ (`LeftBound.mul`, `pairs`).
3. Multiply by $c_b$ and sum over $b$.
4. The closed form follows from $\mathrm{slotCost}(P,K,\ell)=\mathrm{slotCost}(P,K,0)(\ell+1)^{(P+1)K}$.

*Lean:* [`fin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L56-L71), [`scan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L85-L89).

### 4.5 The Chron chain (Part C)

**Lemma 4.10 (quotation and acceptance).** Let $t,u$ be stage profiles, $C$ a library of order $\mathrm{ord}(u)$, $r'\in\mathbb N$ and $h>0$. There are $E\ge1$ and $k$ such that:
- the quotation bound holds with exponents $(\sigma_t,\sigma_u+2)$ and constant $E$;
- for every $L\ge k$: $20(\sigma_u+2)\mathrm{toll}(r')\le L\sigma_t$ and $E/L\le h$.

*Sketch:* `Release.quoting` (III.10) gives an $L$-independent $E$. Then $E/L\to0$ and $L\sigma_t\to\infty$. The quotation bound carries $L^{-5}$ through `Lute.issued`. Summed over the $L^4$ fine sites of a block (`Release.spread`), this leaves $E/L$ (probable).
*Lean:* inner step of [`sails`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L98-L111); [`Release.quoting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Choirs.lean#L28-L29).

**Lemma 4.11 (radius cost).** If $b>0$ and $b+2\varepsilon_Q\le v$, then $(\mathrm{rel}_Q+1)10\,c_{h_Q+5}/L+2\varepsilon_Q\le v$ for all large $L$. In `sails`, $b=\varepsilon_Q$, and $3\varepsilon_Q<4\varepsilon_Q<\sigma_j$ by the target's grant condition.
*Lean:* [`bidLift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Orbit.lean#L37-L42).

**Lemma 4.12 (a financed poster; the comparison estimate).** For $\mu>0$ and rays with the heart property, there is a poster $D$ with the following properties:
- $d(D)>0$ and paint supply hold;
- all its functions (radius $R$, charge, and the four comparison constants) are reserves;
- eventually in $x$, $D$ is paid: the comparison estimate (`Airstrip`) holds, together with the chart stimulus and the existence of axis charts with the required local bounds.

The comparison estimate is provided by `Herbal.compile`: there are four reserves $C,D,B,A$ such that, eventually, whenever an interacting functional and its model have expansions in $g$ whose coefficients agree to order $r$ up to a $C^j$ error (`JMatch`), the comparison structure `Pan` holds with these constants. The derivative bound for $\exp$ on $[-1,1]$ (`Brush.compact`) supplies the Taylor remainder (tentative reading).
*Lean:* [`Poster.quorum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Metro.lean#L29-L51), [`Herbal.compile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Herbal/Orbit.lean#L41-L56), [`Airstrip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Herbal/Orbit.lean#L33-L39), [`JMatch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Portal/Wire.lean#L80-L81) *(assembly read; `Aux.horizon`, `symphonic`, `fellows` and `Pan` statement only)*.

**Lemma 4.13 (captain structures).** There is $l$ such that the following holds for every $L\ge l$, every branching patch, $j$, $\chi$, $W,\mu>0$ and order datum. There are constants and functions $d,v$ (gear $-\tfrac12$), $B,r,T'$ (rate $0$) and $p$ (reserve) such that, eventually in $x$, every step record carries a captain structure (a tree certificate for the connected activity) with the heavy, heroes and quarry properties.
*Lean:* [`Halo.seeds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Nexus.lean#L12-L57) *(assembly read: `Utopia.twinkles`, `March.oar`, `Eider.weave`, `Glass.portal` from III.10, plus `stripped`, `scoreP`, `walkersP`, `canopyG`)*.

**Lemma 4.14 (horizon bound).** In the setting of 4.13, with $a\ge0$, $\varepsilon>0$, $a+2\varepsilon\le\mathrm e_Q$ and reserves $Y,n$: there are a reserve $V$ and a function $S'$ of gear $q<0$ with the following property. Eventually in $x$, for every marked input $(E,w,\delta)$ with $\delta\le\beta_F^{-11/10}$ and every $m$, the bills of clusters with at least $1+m$ marked occurrences satisfy
$$\mathrm{Hit}\le V(x)\,S'(x)^m\,\delta .$$
*Lean:* [`Halo.ramp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Tome.lean#L33-L65) *(assembly read; `gear_writ`, `lumens`, `wishes`, `halos` statement only)*.

**Lemma 4.15 (retention under a veto).** Suppose the cluster weights satisfy the convergence condition `Ready` (exponent $a+\delta$, sum $e_1$, ratio $q'<1$), and $V$ is a predicate with $1\le v\prod\gamma$ on $V$. Then the bills restricted to $V$ have hit bound
$$v\cdot\mathrm{collars}(\delta,x,j,m)\cdot e_1(1-q')^{-1}.$$
*Sketch:* `gathers` applies `log_hit_tail` (III.5). The polynomial factor $(S(1+N))^{mj}$ is absorbed into $e^{\delta N}$ at the cost $\mathrm{collars}$. `run` then inserts the weight $v\prod\gamma\ge1$.
*Lean:* [`Lyric.gathers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Salary.lean#L49-L76), [`Lyric.run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Salary.lean#L82-L100).

**Lemma 4.16 (contraction of marked inputs).** In the setting of 4.14 with $a+3\varepsilon\le\mathrm e_Q$, $G$ simple and records with $\varepsilon\le\tfrac14$: there is a function $V'$ of rate $\max(q,-\tfrac12)<0$ with the following property. Eventually in $x$, for every budget point with cluster scale $\mathcal B(x)$ and threshold $t(x)$, every accepted $L$ and every quotation constant $C_0$, a marked input of norm $\delta$ produces marked output clusters ("supply") of total norm
$$\le\big(C_0/L+V'(x)\big)\,\delta .$$
*Lean:* [`Solo.atlas`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Solo/Barque.lean#L21-L61) *(assembly read; `Brim.scored`, `solo` statement only)*.

**Lemma 4.17 (the premium; where $\tfrac38$ is used).** Let $\tfrac38+\rho_Q<0$. Eventually in $x$:
- the per-vertex salary $\beta_F^{3/8}\cdot(\text{root activity}+\text{ink})\cdot(\text{tree factors})$ has rate $\tfrac38+\rho_Q<0$, so its degree price (the Kotecký–Preiss ratio) is $\le\tfrac12$;
- for each order $s$ and number $k$ of marks, the $k$-fold surplus costs divided by $\beta_F^{3(5k+2s)/8}$ are $\le g(\beta)^s$ for all $\beta$ in the band;
- the mark factor $e^{-\mathrm{mark}/2}$ is $\le e^{-4p^{1/5}}$.

*Lean:* [`Lyric.epochs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Forecast.lean#L93-L120), [`Premium`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Forecast.lean#L80-L89).

**Lemma 4.18 (certified tests).** Let $\tfrac38+\rho_Q<0$. There is $\ell$ such that, for $L\ge\ell$ and all auxiliary data, there are reserves $A,B,C$ and a function $E$ of rate $q<0$ with the following property. Eventually in $x$, every step record carries a pad with the roles:
- hero structure and mass condition;
- the premium of 4.17;
- a growth condition;
- the full bill has hit bound $B(x)$;
- for every marked input of norm $\delta\le\beta_F^{-11/10}$, clusters with $\ge1+i$ marked surplus occurrences have hit bound $C(x)E(x)^i\delta$;
- the crop inequalities: residual costs $\le g(\beta_H)^s$.

*Lean:* [`Muse.generation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Muse/Baton.lean#L80-L96), [`Roles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Muse/Baton.lean#L63-L77) *(assembly read; `Utopia.crinkles`, `Halo.carousel`, `triumphedFor`, `gustLine` statement only)*.

**Lemma 4.19 (financed extension).** Let $\tfrac38+\rho_Q<0$ and $G$ simple. There is $\ell$ such that for every branching patch of side $\ge\ell$ and every financed poster $D$, there is a quarry $F$ extending $D$ with:
- $F$ financed at rate $\rho_Q$: the new functions $Y$, spin and $e$ are reserves, $\mathrm{Rb}$ has rate $\rho_Q$, and $\mathrm{herd}$ has negative rate;
- eventually in $x$, the instructions hold. For every tempered budget point and every step record $H$: $H$ is funded; $H$ is staked (threshold $t(x)$, cluster scale $\mathcal B(x)$, and a captain structure whose cluster-sum bound is $\le\mathrm{Rb}(x)$); and the bequest holds (Lemma 4.16 with $C_0/L+\mathrm{herd}(x)$).

*Sketch:* take $Y$, spin, $e$, boom from 4.18; $\mathrm{Rb}=2\,\mathrm{collars}\cdot\mathrm{salary}$ from `Armada.ensemble` (III.10); $\mathrm{herd}=V'$ from 4.16. The bequest is 4.16 applied with an empty family of leaves.
*Lean:* [`rollBefore`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L64-L80), [`Instructions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L57-L60), [`Staked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L47-L51), [`Bequest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L44-L45).

**Lemma 4.20 (III.15.6).**
*Sketch:* take $n$ from 4.19. For given data, 4.12 gives a poster, and 4.19 extends it to a quarry. The remaining step conditions hold eventually in $x$ (`Expenditure.swings`, `expedites`, `Access.wide`, `Sleet.gustLine`, `Tuba.financed`, `Tuba.Tempo.grace`, the scrollwork growth). Take $P_1$ beyond all of these thresholds.
*Lean:* [`buoys`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L47-L58) *(proof read; the eventual providers statement only)*.

**Lemma 4.21 (III.15.5).**
*Sketch:* for each $(j,i)$, take $k_{ji}$ (4.10), $g_{ji}$ (4.20) and $n_{ji}$ (4.11). Set
$$f_j=\max_{i\in\{j,j-1\}}g_{ji}+\max_{i}k_{ji}+\max_{i}n_{ji}$$
(`fromMax`), and take $C'_{ji}=E_{ji}$ from 4.10.
*Lean:* [`sails`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L98-L111).

**Lemma 4.22 (III.15.7).**
*Sketch:*
1. For each stage pair and slot, apply the pledge at $L=L_j$ (allowed since $k_j\le L_j$) to the slot's data. The slot's rays have the heart property because $\sigma_i+3<\mathrm e_{R_{ji}}$ (`Glint.song`). This gives a quarry $V_{jig}$ and a threshold. The slot's extra purchase holds eventually.
2. Set $\mathrm{shells}_j=\max(T_0\text{'s shells},\max_{i,g}(4\ell_g+50))$ and $\mathrm{growth}_j=\max(T_0\text{'s growth},1)$. Tiling then follows from the scrollwork growth conditions.
3. Since there are finitely many slots and two stage pairs per $j$, choose $\beta^*_j$ beyond all thresholds (`collect_upper`).

*Lean:* [`grows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Corners.lean#L33-L70).

### 4.6 Record types (Part D)

The unit also contains the following definitions:
- the output record of the construction run, `R2I.Funded`, returned by `constructionRun`;
- the `Extras` and `PrimitiveExtras` records of III.2/III.14;
- `ReadoutPurchase` (fields `steam`, `preMesh`, `crossed`);
- the RG05 readout price formulas (`RG05Readout.Address`, `Copper`, `Native`);
- the clock functions, `Instrument`, `Postage`, `BandGate` and `twins`/`Alike` (`Dues.lean`).

These carry no proofs beyond trivial projections *(statements read)*.

## 5. Where the difficulty lies

- **What the main theorem uses is elementary.** The live outputs are III.15.1–4. III.15.1 is three limits of the type "a Gaussian in $p(y)$ beats polylogarithmic volume factors". III.15.2 is the bound $|e^z-1|\le2|z|$ plus summing two hit bounds. III.15.3–4 are the Leibniz rule for a single group word. Two points matter for a written proof:
  - In III.15.3 the constant is independent of $t$ and of the volume. This comes from the single-word representation of the slot, since admissible directions already carry the factor $t$.
  - In III.15.1 the thresholds are uniform over the band and over $B\le\mathcal B(y)$.
- **Part C is idle.** Its conclusion reaches the run and is discarded (see the overview). A written proof of the main theorem can omit III.15.5–7 and Lemmas 4.10–4.22. That is about 4,200 of the unit's 7,382 lines.
- **What Part C would contain if needed.** Lemmas 4.14, 4.16 and 4.17 are the substance: the contraction $(C'/L+o(1))\delta$ of marked inputs, the gain $S'(x)^m$ per surplus marked occurrence, and the convergence of tree sums with weight $\beta_F^{3/8}$ per vertex. The analytic work is in III.10's providers; the Lean proofs here only assemble them.
- **The hypothesis $\tfrac38+\rho<0$.** It is not a free parameter of this unit; it is III.10's per-vertex weight $\beta_F^{3/8}$. The run's $-\tfrac7{16}$ leaves the margin $\tfrac1{16}$.
- **Unusual features.**
  - In III.15.2 the soft terms vanish on small-field configurations of their support, so the "soft" population lives on large fields. The code names do not match the usual "small field = soft" reading.
  - III.15.6 quantifies over all auxiliary data ($W,\mu$, songbooks, rays, libraries, records, reserves, $\eta,\delta$) after $L$ and before $x$. The budget record is therefore uniform in all of them except through the explicit dependence of the quarry on the data.

## 6. Notation

| Written proof | Lean (glossary) | Meaning |
|---|---|---|
| $g(\beta)$ | [`Clock.gap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L40), `gStep` | $\beta^{-1/2}$ |
| $p(x)$ | [`Instrument.P`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L55) (plain), [`Clock.watch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L42) $2$ | $e^{(\log\log x)^2}$ |
| $t(x)$ | [`temp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L25), [`Instrument.t`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L59) | small-field threshold $g(x)p(x)$ |
| $\mathcal B(x)$ | [`radiusB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22), [`Clock.cover`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L38) | cluster radius $\lceil(\log x)^2\rceil$ |
| $\beta_F(x,L)$ | [`betaF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23) | $x+b_G\log L$ |
| band of $y$ | [`inBand`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L99) | $[y/4,4y]$ |
| $\mathrm{Rate}_L(a)$ | [`Rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Numerics.lean#L22-L23) | $\lvert w\rvert\le\beta_F^{v}$ eventually, for every $v>a$ |
| reserve; $M(x)$ | [`Reserve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Access/Geometry.lean#L25-L26), [`fineMonitor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L24) | $\lvert w\rvert\le M^k$ with $M=p(\beta_F)$ |
| gear $a$ | [`Gear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Gear/Class.lean) | $\beta_F^{-a}w$ is a reserve |
| $\mathrm{Hit}_M(f;a)\le\gamma$ | [`Ac.Hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13) | weighted per-site polymer bound |
| $\mathrm{quote}(\kappa,\gamma)$ | [`Bid.quote`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L18) | $e^{-\kappa}(e^\gamma-1)$ |
| rate conditions $(B,w,a,b,\kappa)$ | [`Payments.Rates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L33-L39) | the five inequalities of III.15.1 |
| mild, strong, $\kappa$ | [`Pairing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean#L28-L36) (`mild`, `strong`, `kGoal`) | small-field and large-field pair-step costs |
| hard and soft family | [`hardCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L42-L43), [`softCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L45-L46) | forced activities and logarithms of soft cutoffs |
| Ingredients | [`Ingredients`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Batch.lean#L32-L33) | input to the fusion of III.10 |
| slot $s$, atom $a$ | `Slot`, `Atom` (III.1) | transported curvature; $k$-leg monomial |
| small-field on $X$ | [`Healthy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L41) | plaquettes touching $X$ within chord $t$ of $1$ |
| admissible direction | [`dirBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L141-L142) | $\lVert A_e\rVert\le t(1+\mathrm{dist}(e,o))^P$ |
| $\mathrm{slotCost}$, $\mathrm{margin}$, $\mathrm{price}$ | [`slotCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L95), [`margin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L94), [`Wages.price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L52-L54) | derivative constants of III.15.3–4 |
| target $Q$; $\rho_Q$, $\mathrm e_Q$, $\varepsilon_Q$ | [`Target`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/OptionCost.lean#L62-L76) | connected-activity target (rate, exponent, …) |
| $\beta_F^{3/8}$ | [`Height.grow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Height/Highway.lean#L25) | per-vertex tree weight (III.10) |
| pledge | [`Chron.Pledge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L94-L95) | launch conditions (i)–(ii) of III.15.5 |
| quay | [`Cadenza.Quay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L46) | all step conditions available at side $L$ |
| quarry, financed | [`Quarry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L21-L27), [`Quarry.Financed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L34-L39) | budget functions of $x$ with reserve/rate bounds |
| Pillar | [`Chron.Pillar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Corners.lean#L23-L28) | pledge plus per-slot allotments and tilings |
| radius cost | [`Lyric.radiusCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Orbit.lean#L35-L36) | $(\mathrm{rel}_Q+1)10c_{h+5}/L+2\varepsilon_Q\le v$ |
| comparison estimate | [`Herbal.Airstrip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Herbal/Orbit.lean#L33-L39), [`JMatch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Portal/Wire.lean#L80-L81) | interacting vs. model, with jets matched to order $r$ |

## 7. Open points for the writer

1. **Whether to write Part C at all.** Its conclusion is discarded by `constructionRun`. The module headers ("pre-stage launches for all-order AP proof", "RG02/03") suggest it was meant for an all-order asymptotic expansion in $g$; the seam notes place chapter 32's purpose at that stage. Nothing in the main theorem's chain uses it. A writer should confirm with III.14 that no other route opens the "News" conjunct (`Hymnal.instruments` opens it but is not used).
2. **Interpretation of Part C (tentative).** The reading "marked inputs contract by $C'/L+o(1)$" (Lemmas 4.16, 4.19) rests on the statements of `Presents`, `Solo.Supply` and `Bequest`. The proofs of `Brim.scored`, `solo`, `wishes`, `gear_writ`, `lumens`, `halos`, `carousel` and `Utopia.crinkles` were not read. The meaning of the step conditions in `Coaxes` (treasury, readiness, harmony, summits, resonance, tolerance) and of `Funk.Funded` was not unpacked.
3. **The comparison estimate.** `Herbal.compile` and the structure `Pan` have not been unpacked, so it is not settled that the "remainder comparison" is a Taylor-remainder comparison in $g$ between interacting and model expansions.
4. **The factor $L^{-5}$.** The claim that the quotation bound encodes dimension-5 power counting (`Lute.issued`, `decay`, `Release.spread`) is probable but not checked in detail. Its proof is in III.10.
5. **Hard and soft in III.15.2.** The fitting `visits` makes the soft logarithms vanish on small fields of their support. The physical identification of the two families should be checked against their producers in III.9 (`Time.cash`, `Local.renew`) and III.10 (`Marlin.cannon`).
6. **Origin of $\tfrac38$.** It comes from III.10 (`Height.grow`, `pressureYoung`, `highPay`, `cruising`); the reason for this particular value is to be settled there.
7. **Not read:** the RG05 readout price formulas and `ReadoutPurchase` (also discarded at `constructionRun`); the small `OPE/Therm`, `RG12` and `R2I` pieces; `Path.bill`.

**Builds on:** [III.10](III-10.md), [III.1](III-1.md), [I.1](I-1.md), [II.2](II-2.md), [III.5](III-5.md), [III.6](III-6.md), [III.11](III-11.md), [III.2](III-2.md), [II.1](II-1.md), [III.16](III-16.md), [III.9](III-9.md), [VIII.1](VIII-1.md), [III.4](III-4.md).

**Used by:** [III.2](III-2.md), [III.12](III-12.md), [III.13](III-13.md), [III.10](III-10.md), [III.9](III-9.md), [III.11](III-11.md), [III.14](III-14.md), [VIII.1](VIII-1.md), [III.4](III-4.md), [III.3](III-3.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| proof of [`sails`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L98-L111) and the results it chains to | 4,201 |
| work package [`YM/Progress/DIRECTED_RECIPE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE) | 1,251 |
| work package [`YM/Next/SCHEDULE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE) | 933 |
| work package [`YM/RemainderComparison/Cadenza/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza) | 186 |
| work package [`YM/RG05Readout/Test/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG05Readout/Test) | 62 |
| work package [`YM/RemainderComparison/Auxiliary/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Auxiliary) | 61 |
| work package [`YM/RemainderComparison/Funk/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Funk) | 61 |
| work package [`YM/RG05Readout/Offsets/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG05Readout/Offsets) | 49 |
| work package [`YM/RemainderComparison/Access/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Access) | 47 |
| work package [`YM/RemainderComparison/Herbal/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Herbal) | 42 |
| work package [`YM/RemainderComparison/Gaussian/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Gaussian) | 41 |
| work package [`YM/RemainderComparison/Chron/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron) | 40 |
| work package [`YM/RemainderComparison/Muse/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Muse) | 38 |
| work package [`YM/RemainderComparison/Portal/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Portal) | 38 |
| work package [`YM/RG05Readout/Grants/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG05Readout/Grants) | 36 |
| work package [`YM/RemainderComparison/Lyric/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric) | 36 |
| work package [`YM/R2I/Campaign/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign) | 34 |
| work package [`YM/RG05Readout/Address/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG05Readout/Address) | 26 |
| work package [`YM/Integration/RG05Preconstruction/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction) | 25 |
| work package [`YM/RG12/Shadows/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows) | 25 |
| work package [`YM/RG12/Spins/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Spins) | 18 |
| work package [`YM/R2I/Buckram/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Buckram) | 17 |
| work package [`YM/RemainderComparison/Arc/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Arc) | 16 |
| work package [`YM/RemainderComparison/Cascade/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cascade) | 14 |
| work package [`YM/RemainderComparison/Sleet/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Sleet) | 13 |
| work package [`YM/Integration/ChronPreconstruction/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ChronPreconstruction) | 12 |
| work package [`YM/RemainderComparison/Halo/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo) | 10 |
| work package [`YM/OPE/Therm/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Therm) | 9 |
| work package [`YM/RemainderComparison/Flues/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Flues) | 9 |
| work package [`YM/RemainderComparison/Exchange/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Exchange) | 8 |
| work package [`YM/RemainderComparison/Solo/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Solo) | 5 |
| work package [`YM/RG12/Burst/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst) | 4 |
| work package [`YM/RemainderComparison/Passion/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Passion) | 4 |
| work package [`YM/RemainderComparison/Gear/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Gear) | 4 |
| work package [`YM/RemainderComparison/Ethereal/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Ethereal) | 3 |
| work package [`YM/RemainderComparison/WickReps/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/WickReps) | 2 |
| work package [`YM/RemainderComparison/Apo/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Apo) | 1 |
| work package [`YM/RemainderComparison/Breeze/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Breeze) | 1 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **III.15.1** [`currency`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean#L76-L139) *(numbered result)* — Eventually in y, uniformly over beta in band, pair-step rates hold with the exponentially small strong and mild costs.
- **III.15.2** [`tender`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L124-L133) *(numbered result)* — Separate hard and soft transfer costs with a rate relation suffice to obtain the combined Ingredients bound.
- **III.15.3** [`slotPays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L108-L159) *(key result)* — A local slot observable satisfies a derivative bound with explicit slot cost on a healthy region of a finite site set.
- **III.15.4** [`sails`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L98-L111) *(key result)* — For a simple gauge group, if all rates satisfy 3/8+rate<0, there exist data meeting the pre-stage launch (pledge) conditions for the all-order asymptotic proof.
- **III.15.5** [`buoys`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L47-L58) *(key result)* — For a simple group and rate with 3/8+rate<0 the quay condition holds for all sufficiently large side lengths.
- **III.15.6** [`rollBefore`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L64-L80) *(key result)* — Beyond a size threshold, any financed poster extends to a financed quarry satisfying the instruction conditions eventually in x.
- **III.15.7** [`quorum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Metro.lean#L29-L51) *(key result)* — For positive μ and a suitable heart condition there is a positive-parameter financed budget that is paid for all large x.
- **III.15.8** [`compile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Herbal/Orbit.lean#L41-L56) *(key result)* — Given admissible weights and index bounds, there exist four admissible functions such that the airstrip comparison estimate holds eventually in t.
- **III.15.9** [`run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Salary.lean#L82-L100) *(numbered result)* — A weighted sum over revealed semantic supports satisfies a quantitative retention bound, giving a uniform hit estimate under a veto condition.
- **III.15.10** [`atlas`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Solo/Barque.lean#L21-L61) *(key result)* — For large L and every recorded setup there are rates and constants so that a captain structure exists and scale-data inquiries are paid.
- **III.15.11** [`seeds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Nexus.lean#L12-L57) *(key result)* — For large side L there exist rates and constants such that eventually in x every setup admits a captain structure with the heavy, heroes and quarry properties.
- **III.15.12** [`generation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Muse/Baton.lean#L80-L96) *(key result)* — Under 3/8+rate<0, for large L every certified test is paid, with pad structure and role bounds with negative-rate errors.
- **III.15.13** [`ramp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Tome.lean#L33-L65) *(key result)* — With inherited recurrence budgets, a captain structure exists and, for any scale data, yields horizon-type bounds with a negative exponent.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

# III.2. Choosing the constants: the order of choice and the RG schedule

*Part III — Ultraviolet construction (renormalization group).* 18,156 lines of Lean in 2,085 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is **checked** against the Lean and rewritten by a second model; a final editing round is in progress. It is updated as it improves.


**Part:** III, Ultraviolet construction (renormalization group). **Lean:** [`YM/Price/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price) (the constants and the level schedule, 406 lines), [`YM/Shoot/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot) (shooting, 228 lines), [`YM/Integration/RG05Preconstruction/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction), [`YM/Integration/NativeSelection/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection) and other files of [`YM/Integration/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration), [`YM/RG08/Calendar/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar), and parts of [`YM/RG08/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08), [`YM/RG12/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12), [`YM/FullVolume/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume) (in particular `Roll/`) and [`YM/TraceExtension/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension). **Size:** 18,156 lines in the main-theorem closure:

| part | lines |
|---|---|
| proof of the plentiful construction (III.2.5) | about 6,250 |
| proof of the joint same-factor purchase (III.2.4) | about 4,700 |
| proof of the final run (III.2.7) | about 4,000 |
| proof of the sheet and radar purchase | about 2,400 |
| the two directories that carry the mathematics of the schedule (`YM/Price/`, `YM/Shoot/`) | 634 |

**Conventions.** These are those of III.9.

- **Levels.** Levels $m=0,1,\dots,N$ run from the coarsest ($m=0$, unit spacing) to the finest ($m=N$, the Wilson lattice).
- **Steps and scales.** The step $m+1\to m$ blocks by an odd factor $L_m\ge3$. The scale is $s_m=\sum_{i<m}\log L_i$. The level-$m$ torus at volume index $p$ has side $n_p e^{s_m}$, where $n_p$ is the side of the level-0 torus. III.9 writes $L_p$ for $n_p$; the letter $L$ is kept here for block factors.
- **Slope.** $\kappa=11C_G/(24\pi^2)$ (III.9.1), and $\kappa>0$ for simple $G$.
- **Reference quantities (III.9.2).** $\hat\beta_m=\bar\beta+\kappa s_m$, $M_m=e^{(\log\log\hat\beta_m)^2}$, the threshold $t_m=\hat\beta_m^{-1/2}M_m$, the cover size $B_m=\lceil(\log\hat\beta_m)^2\rceil$ and the band $\mathfrak B_m=[\hat\beta_m/2,\,2\hat\beta_m]$.
- **Patch radius.** $R_m=(J_{m+1}+3)L_m$ ([`Patch.radius`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L51)).

The unit proves almost no analysis of gauge fields. It proves three things:
1. A long list of requirements can be met simultaneously by choosing the constants in one fixed order. Each requirement has the form "this inequality holds once the block factor, the coupling or the lattice is large enough, given the constants chosen before".
2. There is a level schedule meeting every entrance condition.
3. Given the one-step construction as a hypothesis, there is a trajectory of effective actions with $\beta_{N,p,0}=\bar\beta$ (shooting).

The Lean words "sheet", "rolls", "protection", "delays", "bar", "wait", "paid", "price" and "purchase" are labels for constants and thresholds (glossary, family 1). They carry no other meaning. The unit also contains a group of analytic lemmas of the Gaussian step, filed here by the dependency assignment (III.2.9).

## 1. What this unit proves

**Proposition III.2.1 (the constants, in the order in which they are chosen).** Let $G$ be simple. The construction fixes the following data, in this order.

1. *Sheet (data chosen before the block factors).* It consists of the following.
   - A kernel choice $K$ such that the block-spin kernel is well defined on every patch.
   - For every stage $j\in\mathbb N$, a stage record $X_j$ with:
     - a clip with relaxation $r_j$;
     - derivative order $k_j\ge6$ and spatial power $q_j\ge2$;
     - support exponent $a_j>0$, width $w_j>0$ and path count $\varpi_j>0$;
     - drift allowance $\omega_j\ge0$ and column bound $\gamma_j\ge1$;
     - the constraint $r_jw_j\ge12$.
   - A first stage $j_0\ge4$.
   - Floors $f_j\in\mathbb N$.

   The sequences $k_j$, $q_j$, $a_j$ are nondecreasing.
2. *Stage block factors* $\ell_j$. They are odd, satisfy $\ell_j\ge\max(3,f_j)$, are nondecreasing in $j$, and for $j\ge j_0$
   $$\frac{\omega_j}{\log\ell_j}\le\min\Big(\frac\kappa4,\ \frac1{j^2}\Big),\qquad \frac{\log\mathcal C_j}{\log\ell_j}\le\frac1{j^2},\qquad \mathcal C_j:=1+\varpi_j+w_j^{-1}+\gamma_j+r_j+a_j .$$
3. *Smallness exponents* $\theta_j>0$. They are nonincreasing, with $\theta_j\le1/j$ for $j\ge j_0$.
4. *Delays.* These are the following.
   - Entry couplings $\beta^{\rm ent}_j\in\mathbb R$.
   - Entry scales $\sigma^{\rm ent}_j(\bar\beta)$. These are functions of the stage *and of the barrier* still to be chosen.
   - Volume shells $S_j\in\mathbb N$ and growth exponents $g_j\in\mathbb N$.

   Delays are ordered componentwise.
5. *Barrier* $\bar\beta>1$. It satisfies $\beta^{\rm ent}_{j_0}\le\bar\beta$ and $x^{-1/2}e^{(\log\log x)^2}\le1$ for all $x\ge\bar\beta$.
6. *Wait.* This consists of:
   - readiness scales $\sigma^{\rm rdy}_j$;
   - windows $h_j:\mathbb R\to\mathbb N$ with $h_j(s)/s\to0$ as $s\to\infty$ (for each fixed $j$, not uniformly);
   - a minimal period $n_{\min}$.

Items 2, 3 and 5 always exist:
- item 2 exists for every sheet;
- in item 3, $\theta$ can be chosen below any prescribed positive sequence;
- in item 5, $\bar\beta$ can be chosen above any prescribed real number.

Items 4 and 6 are unconstrained data.

*Status:* items 1–6 are definitions (specifications). There are three existence theorems. The existence of item 2 uses $\kappa>0$, hence the simplicity of $G$. The module documentation states that it "does NOT check that the RG arguments actually fit that dependency schedule". The order is enforced only through the types of the later requests (III.2.4–III.2.7).
*Lean:* [`Sheet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35), [`Stage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L45-L61), [`Large`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L39-L48), [`Rolls`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L50-L53), [`Rolls.exists_rolls`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L79-L84), [`Protection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L88-L92), [`Protection.exists_margin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L98-L111), [`Delays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L115-L120), [`DelayLe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Post.lean#L34-L38), [`Bar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L123-L127), [`Bar.exists_above`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L19-L37), [`Wait`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L134-L139).

**Proposition III.2.2 (a level schedule meeting all entrance conditions; key result).** Let $G$ be simple and let data 1–6 of III.2.1 be given. Then there is a level system with the following data:
- a stage index $J_m$;
- step block factors $L_m=\ell_{J_{m+1}}$;
- level-0 sides $n_p=4(M+p+1)$ for some integer $M$;
- reference couplings $\hat\beta_m=\bar\beta+\kappa s_m$.

It satisfies:
- (a) *identification:* the kernel, stage records, $\ell$, $\theta$ and $\bar\beta$ are those of III.2.1, and $J_0=J_1=j_0$;
- (b) *entry:* $\beta^{\rm ent}_{J_{m+1}}\le\hat\beta_m$ for all $m$, and $\sigma^{\rm ent}_{J_{m+1}}(\bar\beta)\le s_m$ whenever $J_{m+1}>j_0$;
- (c) *volume:* $n_p\ge n_{\min}$, and $S_j(1+B_m+B_{m+1})^{g_j}\le n_pe^{s_m}$ for all $m,p$, with $j=J_{m+1}$;
- (d) *windows:* for every $j\ge j_0$ there is a level $k$ with $\sigma^{\rm rdy}_j\le s_k$, $h_j(s_k)\le k$, and $J_i=j$ for $|i-k|\le h_j(s_k)$;
- (e) *the scale conditions of III.9.2:*
  - $J$ is nondecreasing, $J_{m+1}\le J_m+1$ and $J_m\to\infty$;
  - $k_{J_m}$, $q_{J_m}$, $a_{J_m}$ are nondecreasing in $m$;
  - $\hat\beta_m>1$ and $t_m\le1$;
  - $100(B_m+1)\le n_pe^{s_m}$ and $100(R_m+1)\le n_pe^{s_{m+1}}$;
  - $0<\theta_{J_m}\le1/J_m$;
  - $\omega_{J_{m+1}}/\log L_m\le J_{m+1}^{-2}$ and $\log\mathcal C_{J_{m+1}}/\log L_m\le J_{m+1}^{-2}$;
  - $\log L_m/s_m\to0$;
- (f) *block control:* at every step the kernel is well posed, symmetric under the lattice symmetries and gauge covariant.

A variant adds that every positive integer divides $n_p$ for infinitely many $p$.

*Status:* theorem. The divisibility variant is filed in III.10 and is the one used in the final assembly (III.2.7). Note that (d) asserts the existence of one level $k$ per stage. Taking $\sigma^{\rm rdy}_j$ large forces $k$ to be large.
*Lean:* [`Wait.ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L137-L239), [`Paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162), [`Calendar.Fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L97-L118), [`Levels`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131-L134), [`Schedule.Gentle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L129-L130), [`Calendar.blocks_go`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L70-L72); variant [`Wait.engine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L26-L135), [`AsDivisors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L21).

**Proposition III.2.3 (shooting: a selected history from a recipe; key result).** Let $G$ be simple. Fix a level system with
$$\omega_{J_{m+1}}\le\tfrac\kappa4\log L_m\qquad\text{for all } m.$$
This holds for every level system of III.2.2, by III.2.1(2).

*Recipe.* Let a recipe be given: path data $P^{\mathcal R}_{N,m}$ and three predicates (a start test, a retention test at each level, a transition test for consecutive levels).

*Admissible representations.* A level-$m$ representation $\rho$ (III.9: path data, clip, activities, budget point, $\beta$, $v$) is *admissible for $(N,p)$* if:
- its path data are $P^{\mathcal R}_{N,m}$;
- its budget point, clip and polymer bounds are those of level $m$: width $w_{J_m}$, path count $\varpi_{J_m}$, loop cap $2M_m^{\theta_{J_m}}$, allowances $\hat\beta_m^{-11/10}$ and $e^{-M_m^{1/5}}$;
- it passes the retention test.

*Continuous families.* A family $x\mapsto\rho_x$ on an interval is *continuous* if:
- $\beta$ and $v$ are continuous in $x$;
- the address sets of the regular and forced activities do not depend on $x$;
- the activities vary continuously in the budgeted norms (derivatives up to the budget order on the healthy domain, weighted by the budget masses).

*Hypotheses.* Assume that for every $N$ and $p$:

- **(start)** There is a continuous family $\beta\mapsto\rho_\beta$, $\beta\in\mathfrak B_N$, of admissible level-$N$ representations. Each $\rho_\beta$ has coupling $\beta$, $v=0$, density equal to the Wilson weight at $\beta$, and passes the start test.
- **(advance)** Let $m<N$ and let $x\mapsto\rho'_x$, $x\in[l,u]$, be a continuous family of admissible level-$(m+1)$ representations with $\beta(\rho'_x)\in\mathfrak B_{m+1}$ for all $x$. Then there is a continuous family $x\mapsto\rho_x$ of admissible level-$m$ representations such that, for every $x$:
  - the density of $\rho_x$ is the block-spin push-forward of the density of $\rho'_x$ at coupling $\beta(\rho'_x)$;
  - $|\beta(\rho'_x)-\beta(\rho_x)-\kappa\log L_m|\le\omega_{J_{m+1}}$;
  - the transition test holds.

*Conclusion.* There are representations $\rho_{N,p,m}$, $0\le m\le N$, for all $N,p$, such that:
- every $\rho_{N,p,m}$ is admissible with $\beta_{N,p,m}\in\mathfrak B_m$;
- $\rho_{N,p,N}$ is the Wilson weight with $v=0$;
- consecutive levels are related as in (advance);
- $\beta_{N,p,0}=\bar\beta$;
- the path data at $(N,m)$ do not depend on $p$.

The resulting history is *selected* in the sense of III.9.3. In particular it obeys the running law: for every $\varepsilon>0$ there is $m_0$ such that $|\beta_{N,p,m}-\hat\beta_m|\le\varepsilon s_m$ for all $m\ge m_0$, $N\ge m$ and all $p$.

*Status:* theorem, conditional on (start) and (advance).
- In the main chain both are verified in III.10 ([`Graces.winnow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Graces/Eagles.lean#L33-L50)):
  - (start) from the Wilson start-up curves of III.9 ([`hops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Graces/Eagles.lean#L21-L27));
  - (advance) from the one-step construction with coupling reset ([`Mallow.faces`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Mallow/Pediment.lean#L41-L45)).
- The drift hypothesis is derived from III.2.2 by [`Drifting.pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L73-L79).
- A second route, through the step program of III.1/III.9 ([`Directed.Program`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L65-L72)), is not used by the main theorem.

*Lean:* [`Recipe.races`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L67-L82), [`Recipe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L67-L71), [`Lives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L74-L79), [`Curve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L51-L57), [`Recipe.Relays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L88-L91), [`Recipe.Starter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L93-L96), [`Recipe.Issues`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L99-L106), [`Drifting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L70-L71), [`History.Selected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L234-L240).

**Proposition III.2.4 (the joint purchase on one emitted factor; key result).**

*Hypotheses.* Assume:
- $G$ is simple;
- $K$ is a kernel choice with branches at every patch;
- order data $v$ are given:
  - a first stage $\ge4$;
  - derivative orders $k_j\ge\max(6,j)$ and powers $q_j\ge\max(2,j)$, both nondecreasing;
  - support exponents $a_j$, nondecreasing and $\ge100$;
- $Q:\mathbb N\to\mathbb N$ is nondecreasing with $Q\ge1$;
- the records $\Omega$ ([`Contemple`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Fares.lean#L26-L85)) and $\Delta$ (`Decal`) are given, together with a tableau $\theta_1$ and parameters $(\xi,\omega_v,\omega_t)$ satisfying the `sphere` condition;
- $\pi$ is a predicate on emitted factors (a *prediction*) that is prepaid at every sheet and price map.

*Conclusion.* There exist:
- a sheet $s$ with kernel $K$ and orders, powers and support exponents $v$;
- a price map $T$;
- two auxiliary sequences $Y$ and $K'$;
- a floor $\tau\ge f^s$.

These are followed by the alternation below:

> for every floor sequence $k\ge\tau$ (block factors exist for the sheet $s_k$, which is $s$ with floors $k$), and every choice of stage block factors $\ell$ for $s_k$,
> there is a wage threshold $U$ such that for every wage $w\ge U$ and every prescribed postage rate and exchange datum,
> there are post-$L$ cost constants $F$ such that for every positive sequence $\theta^0$
> there is a smallness exponent $\theta\le\theta^0$ such that for every prescribed menu, auxiliary record and delay $T_0$
> there is a delay $V\ge T_0$ such that for every delay $V'\ge V$, every barrier $\bar\beta$ for $V'$ and every wait $W$,
> there is a wait $Z\ge W$ such that for every wait $W'\ge Z$ and every level system $a$ that meets the entrance conditions of $W'$ (III.2.2(a)–(e)) and whose periods have the divisibility property,
> there exist a directed datum $B$ on $a$ (kinetic data and a recipe on the level system $a$) and an emitted factor $X$ such that:
> - $X$ records all these choices;
> - $\pi(X)$ holds;
> - all requirements listed below hold.

The requirements (with the unit that defines each predicate) are:

| requirement | owner |
|---|---|
| prescribed wages, exchanges, menus, auxiliary records, and postage rates bounded by the prescribed ones | III.10 ([`Factor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Roost/Foundry.lean#L26-L50)) |
| [`Degree`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sym/Prices.lean#L84), [`Savvy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sym/Shorn.lean#L32-L35), [`Roofing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/C/Ribbon.lean#L29), [`PaysW`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Florid/Ready.lean#L56), [`Spire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Luna/Hours.lean#L43), [`Wild`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Auvi/Entries.lean#L31), tower bound [`Tower.Sav`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Rent.lean#L25-L27) with [`Canyon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Query.lean#L45), [`Cadre`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Artes/Events.lean#L34-L39) | III.12 |
| [`AccordV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Tibetan.lean#L60) (with the sequence $Q$) | III.11 |
| kinetic data at the top level ([`AtTop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/RECIPE_STARTUP_PORT/Layout.lean#L43)) | III.9 |
| amplification ([`Amplify`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Train/Miracles.lean#L21-L26)) | III.1 |
| support exponents $\ge100$ at every level | this unit |
| $\exp(\text{span bound})\le\ell_i$ at every stage transition $(i,j)$ | this unit |
| a bandage $b$ ([`Bandage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Stage/Iris.lean#L21-L35), III.10) with the extras $(\Omega,\Delta,b)$ ([`Extras`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Resources.lean#L45-L48)) | III.15 |

*Status:* theorem. Its content is the order of the quantifiers. It is the dependency order of the whole ultraviolet construction, enforced by the types. The hypotheses $\Omega$, $\Delta$, $\theta_1$, $(\xi,\omega_v,\omega_t)$ and $v$ are constructed in the final assembly III.2.7, or supplied there by III.14. The version without a prediction is [`richFares`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Fares.lean#L88-L91).
*Lean:* [`richFaresWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Fares.lean#L26-L85), built on [`joinRadarsShipWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L133-L144) and [`joinExpensesShipWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L28-L119).

**Proposition III.2.5 (the plentiful construction; key result).** Assume the hypotheses of III.2.4 and in addition $Q_i\ge2$. Then the conclusion of III.2.4 holds with one more clause. Take any trajectory family built from the directed datum: the family produced by the recipe, with its sections and tuning. Then for every extraction order $f$, the family satisfies the complete weak-continuum requirement ([`CompleteWeak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L35), III.11) and the trace gallery ([`Gallery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L41-L44), VII.2) along $f$. The floors, delays and waits are enlarged further, and the prediction is kept.
*Status:* theorem. This is where the requirements of the trace test (Part VII) are bought on the same constants as the ultraviolet estimates.
*Lean:* [`plentifulWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean#L26-L81), [`plentiful`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean#L84-L87) (vacuous prediction).

**Proposition III.2.6 (a prediction on the same factor).** Let $s$ be a sheet carrying the estimate package of Lemma 4.16, and let $\tau>0$. Let $\pi$ be a prediction that is *prepaid* at the price map of $s$, in the following sense.
- For all targets, expenses, programs, wages and baton there is a length floor $u$.
- For every floor $l\ge u$, all later choices (block factors, wages, register, postage, protection, records, post-$L$ costs) and every delay $V$, there is a delay $W\ge V$.
- For every delay $W'\ge W$, every barrier, wait and directed datum, $\pi$ holds on every factor whose shelter and step conditions hold.

Then the complete native purchase of Lemma 4.17 can be carried out so that $\pi$ holds on the factor it emits. The extra floor $u$ and the extra delay $W$ are inserted *before* the original floor and the original final delay.
*Status:* theorem. In the main-theorem closure it is used only with the vacuous prediction ([`Always`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedPredictionSupply.lean#L16)): the only caller of III.2.7 passes it.
*Lean:* [`company`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedCompanySelection.lean#L49-L106), [`Prepaid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedCompanySelection.lean#L30-L42), [`Prediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedCompanySelection.lean#L23-L24), [`AllPrices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedPredictionSupply.lean#L13-L14).

**Proposition III.2.7 (the complete run).**

*Inputs.* Let $G$ be simple and $b>0$ (the kernel penalty). Let the following records be given: $\Omega$, $\Delta$ and a custody request $\mathcal H$. Let $\Lambda$ be a property of level systems that is *eventually paid* (III.2.8(a)). Let a *demand* be given:
- for every sheet $s$ and price map $q$, a nonempty set of choices $c$;
- for each choice $c$, a floor $e_c:\mathbb N\to\mathbb N$;
- a real array $F_c(n,i)$;
- a real array $F'_c[\ell](n,i)$, which may depend on the block-factor sequence $\ell$.

*Conclusion.* There is a run $\mathcal R$ (the record of the whole construction, III.12) with a campaign such that:
- (a) the kernel penalty is $b$;
- (b) *preselection:* there are $s,q,c$ and a floor $n\ge\max(f^s,e_c)$ such that:
  - $\mathcal R$ uses the sheet $s$ with floors $n$ and the price map derived from $q$;
  - both arrays are paid in the sense of III.2.8(b) on the level system of $\mathcal R$, with $F'$ evaluated at the actual block factors $\ell^{\mathcal R}$;
  - $F'_c[\ell^{\mathcal R}](0,J_{m+1})\le\hat\beta_m$ for all $m$;
- (c) $k_j\ge j$ and $q_j\ge j$ at every stage;
- (d) $\Lambda$ holds;
- (e) the treasury of III.2.8(d) is funded;
- (f) the common-period purchase is funded;
- (g) the campaign has pillars, the funded, news and read-out records hold, and the custody and sky clauses hold.

A version with a prediction, holding on the factor of the run, is the intermediate theorem `allFactor…`.
*Status:* theorem. Its only caller in the main closure is III.14 ([`constructionRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28)), which passes:
- $\Lambda\equiv$ true;
- the demand of its native component recipe (floor, `numeric` and `postnumeric` arrays);
- concrete $\Omega,\mathcal H,\Delta$;
- the vacuous prediction.

*Lean:* [`selectRunWithTreasuryPeriod_preselected_quote_orders_postnumeric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L99-L114), [`PostnumericPreselection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L31-L46), [`allFactorWithTreasuryPeriod_preselected_quote_orders_postnumeric_of_prediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodClock.lean#L44-L179).

**Proposition III.2.8 (purchases that persist under all later choices).**

*(a) Eventually paid properties.* A property $U$ of level systems is *eventually paid* if the following holds. For every sheet, block factors, smallness exponent and delay $V$ there is a delay $X\ge V$ such that every level system meeting the entrance conditions of any delay $W\ge X$ (with any barrier and wait) satisfies $U$. A conjunction of two eventually paid properties is eventually paid.

*(b) Diagonal payment of constants.* For every real array $F(n,i)$, the following property is eventually paid. For every $n$ there is $m_n$ such that
$$|F(n,i)|\le1+\log\log\hat\beta_m\qquad\text{for all } m\ge m_n \text{ and all } i\le J_{m+1}.$$
Likewise, for every $F:\mathbb N\to\mathbb R$, the property "$F(J_{m+1})\le\hat\beta_m$ for all $m$" is eventually paid.

*(c) Countably many step requests.* Let $(w_\kappa)$ be a countable family of requests. Each request consists of a floor $\mathrm{pre}_\kappa:\mathbb N\to\mathbb N$ and a cost function of a stage transition $(j,i)$, its block geometry and a stage record. Then there is a single floor $\mathrm{pre}$, depending only on the family, with the following property. If $\ell_j\ge\mathrm{pre}(j)$ for all $j$, then every delay can be raised so that every later level system satisfies, for all $\kappa$ and $n$ with $\mathrm{code}(\kappa)\le J_n$ and all $m\ge n$:
- $\mathrm{pre}_\kappa(J_{m+1})\le L_m$;
- the cost of step $m$ is at most $1+\log(2+\log\hat\beta_m)$.

*(d) The treasury.* For simple $G$ and every kernel choice there is a *plan*. A plan fixes a naming of charges and, for every request, a dictionary of finite words and spectra. If the block factors exceed the plan's floor, then every delay can be raised so that every later level system is *treasury funded*: it meets the step requests of the plan (as in (c)) and the inverse charge from level 0 on.

*Status:* theorems. Dictionaries are chosen once, before the block factors, and never reselected.
*Lean:* [`EventuallyPaid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Clock.lean#L36-L38), [`postnumeric_quote_diagonal_pair_requests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodClock.lean#L31-L39), [`eventuallyPaid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeDiagonalClockRequest.lean#L52-L79), [`PaidRequests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeDiagonalClockRequest.lean#L45-L48), [`StagePaid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePostLengthPayment.lean#L19-L20), [`minDelay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar/Base.lean#L68-L77), [`Need`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar/Base.lean#L33-L35), [`Affords`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar/Base.lean#L43-L45), [`Plan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L18-L20), [`plan_exists`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L28-L31), [`buy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L42-L64), [`TreasuryFunded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L35-L38).

**Proposition III.2.9 (analytic lemmas of the Gaussian step filed in this unit).** All norms below are exponentially weighted ("strip") norms of a given width. A *cross* is a block-to-fine kernel of block size $L$. A *row* is a translation-invariant kernel.

- *Pullback gain.* For $\sigma,\tau>0$, $C$ and $d\in\mathbb N$ there are $\eta\in(0,\sigma]$ and $K\ge0$ with the following property. Let $L$ be odd with $\tau\le L\eta$, and let $A,B$ be crosses with $\|A\|_\tau\le C/L$ and $\|\nabla^sB\|_\tau\le C/L^{1+|s|}$ for all difference multi-indices $|s|\le d$. Let $R$ be a row with $\|R\|_\sigma\le M$ whose symbol vanishes to order $d$ at zero momentum. Then $\|A^{\mathsf T}RB\|_\tau\le KML^{2-d}$. [`pullback_gain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Pullback.lean#L56-L110)
- *Contraction of Hessian differences.* For $\sigma,\tau,C$ there is $N$ such that for every odd $L\ge N$, the case $d=3$ of the pullback gain gives $\|A^{\mathsf T}RB\|_\tau\le M L^{-1/2}$. The widths and constants are independent of $L$. [`large_contraction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/KStep.lean#L130-L146)
- *Soft transfer of multilinear kernels.* Let $F$ be an $(r+1)$-linear kernel of width $\sigma$ and bound $B$, vanishing to order $d$. Let $Q$ be a cross with $\|\nabla^iQ\|_{(r+2)w}\le C/L^{1+|i|}$ for $|i|\le d$. Then the transfer of $F$ through $r+1$ copies of $Q$ has width $w$ and bound $KBL^4/L^{r+1+d}$, for all odd $L$ with $(r+2)w\le L\eta$. [`flow_soft`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Ballast/Slide.lean#L44-L90)
- *Division by differences.* Let $f$ be a real kernel of width $\sigma$ and norm $A$ whose symbol vanishes to order $n$. Then its symbol equals $\sum_b\prod_{i\le n}(e^{ip_{b_i}}-1)\,\hat g_b(p)$, with each $g_b$ of width $\eta\le\sigma$ and norm $\le KA$. [`real_difference_division`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Differences.lean#L46-L92)
- *Odd-part cancellation.* The $C^2$ jet norm at $0$ of the sum of the paved expansions at $z$ and $-z$ is $O(\eta_*^2)$ along the sequence. [`mirror_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows/Shape.lean#L54-L70)
- *Uniqueness of local read-out.* Let two coefficient presentations have the same density and remainder masses $a,b$, on a torus of side larger than $10(m(4B+2)+2B)$. Then their coefficients differ by at most $K e^{-a_\ast m}(a+b)$, where $a_\ast$ is the support exponent. [`unique_part`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Quince/Unum.lean#L11-L42)

Other statements of this kind are listed on the unit's page, including a post-block Hessian bound ([`design`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Spins/Muse.lean#L35-L59)), [`tanker`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas/Reservoir.lean#L84-L118) and [`cloche`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Zn/Arc.lean#L16-L33).
*Status:* theorems. Mathematically they belong to the Gaussian and stationary analysis of III.4, III.6 and III.11 (probable). They sit here because the purchases of III.2.4–III.2.5 depend on them.

## 2. What it uses

**From other units.**
- I.1: $\kappa>0$ for simple $G$ ([`slopeConstant_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176)).
- III.1 (interfaces):
  - the scale sequence ([`Schedule`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L28-L34)), the calendar, its conditions and level systems ([`Calendar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L64-L73), [`Fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L97-L118), [`Levels`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131-L134));
  - histories, transfer and selection ([`History`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L204-L206), [`Transfer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L223-L227), [`Selected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L234-L240));
  - block control from the kernel's branches ([`blocks_go`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L70-L72));
  - the directed datum ([`Directed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L26-L36)).
- III.9: the reference couplings, threshold and band (III.9.2); the meaning of a selected history (III.9.3); the Wilson start-up.
- III.10:
  - the verification of the shooting hypotheses ([`Graces.winnow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Graces/Eagles.lean#L33-L50));
  - the divisible-period schedule ([`Wait.engine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L26-L135));
  - the emitted factor and bandage records.
- III.9, III.11, III.12, III.15, VII.2: the predicates bought in III.2.4–III.2.5 (table in III.2.4) and their suppliers. This unit proves only that they hold on one common choice of constants. Their content is proved where they are owned.
- III.12: the run record ([`Run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48)). III.14: the demand passed to III.2.7.
- III.3, III.6 (probable): the free-kernel and stationary-branch estimates from which the sheet is built. The two entry points, [`reapsY`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Train/Wheels.lean#L77-L103) and [`verdant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas/Mails.lean#L55-L94), are themselves filed in this unit.
- III.16: strip and Laurent norms, Taylor jets (for III.2.9).

**Standard mathematics.**
- The intermediate value theorem, in a refined form (Lemma 4.11).
- Elementary asymptotics: $(\log x)^2=o(x)$; polynomials in $\log s$ are $o(e^s)$.
- Diagonal enumeration of countably many requests.
- Two standard devices of constructive RG:
  - Choosing constants in a fixed order: first the constants of the step, then the block factor $L$ large depending on them, then the coupling large depending on $L$. See Bałaban's papers on lattice gauge theories (Comm. Math. Phys. 1983–1989) and Bauerschmidt–Brydges–Slade, *Introduction to a renormalisation group method* (LNM 2242, 2019).
  - Tuning the bare coupling as a function of the cutoff so that the effective coupling at unit scale is fixed. Compare Gawędzki–Kupiainen on the asymptotically free Gross–Neveu and $\phi^4_4$ models (Comm. Math. Phys. 99, 102, 1985).

  Here the tuning is a nested-interval argument on continuous families (§4.3).

**Imported constants and hypotheses.**
- $\kappa$ enters only through $\kappa>0$ and through the form $\hat\beta_m=\bar\beta+\kappa s_m$. Nothing here checks that the step shifts $\beta$ by $\kappa\log L$ up to $\omega$. That is the (advance) hypothesis of III.2.3, verified in III.10 from III.7 and III.9.
- The hypotheses (start) and (advance) of III.2.3.
- In III.2.7, the records $\Omega$, $\mathcal H$, $\Delta$ and the demand come from III.14. Inside the assembly, the kernel with penalty $b$ comes from III.1 ([`Axial.viable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodClock.lean#L44-L179)). The tableau and sphere data are constructed in the assembly.

## 3. Strategy

**The requirements.** Each renormalization step $m+1\to m$ needs a long list of inequalities. Some examples:
- powers of $\beta$ beat powers of $\log\beta$;
- the small-field threshold $t_m$ is at most $1$;
- the torus is large compared with the cover size and the block patch;
- $\log L$ is large compared with the logarithm of every stage constant, so that $L^{O(1/j^2)}$ losses are harmless;
- the one-step error $\omega$ of the coupling is small against the one-loop shift $\kappa\log L$;
- stage constants are eventually below $\log\log\hat\beta_m$.

All of these can hold together only if the constants are chosen in an order where each comes after everything it depends on. The order is: stage records and floors, then block factors $\ell_j$, then post-$L$ costs and $\theta$, then delays, then the barrier $\bar\beta$, then the wait. The level schedule comes last.

**The schedule.** It is built explicitly (Lemma 4.8). The stage index $J_m$ advances by at most one per level, and it enters stage $j$ only after the scale is large enough for stage $j$'s entry thresholds. Each stage is held on a window of length $\pm h_j(s_k)$ around some level $k$. Since $s_m\ge m\log3$, all volume conditions follow from a single inequality, valid for large $s$: the required number of sites per unit length, a polynomial in $\log s$, is at most $e^s$. The first plateau has finitely many levels and is paid by taking the smallest torus large.

**Shooting.** For fixed $N,p$, start from the continuous family of Wilson weights over the window $[\bar\beta+\frac\kappa2 s_N,\,\bar\beta+2\kappa s_N]\subset\mathfrak B_N$ of bare couplings. At each step, (advance) maps the current family to a continuous family at the next coarser level. The drift bound $\omega\le\frac\kappa4\log L$ makes the image of the left (right) endpoint fall strictly below (above) the next window. A refined intermediate value argument then selects a subinterval of parameters that the step maps exactly onto the next window. The family is restricted to it, so it stays in the band, where (advance) applies again. At level 0 the window is the single point $\bar\beta$, because $s_0=0$. The bare coupling is thus tuned so that $\beta_{N,p,0}=\bar\beta$ for every $N$ and $p$. The running law $|\beta_{N,p,m}-\hat\beta_m|=o(s_m)$, uniform in $N,p$, follows by summing the drifts upward from level 0, using $\omega_{J_{m+1}}\le L$-scale$/J_{m+1}^2$.

**The integration files.** These re-run the same pattern on a large scale. Each supplier of a downstream estimate has the form "there is a floor (or a delay, or a wait) beyond which the estimate holds for every later choice". All suppliers are threaded through one alternation of quantifiers, so that every estimate holds on the same sheet, block factors, $\theta$, delays, barrier, wait and level system. That is the content of III.2.4–III.2.7.

## 4. Steps

### 4.1 Numerical existence lemmas

**Lemma 4.1 (large block factors).** For each stage $i$ there is $M_i$ such that every odd $n\ge M_i$ satisfies the conditions of III.2.1(2) at stage $i$. Hence the stage block factors $\ell_i=2\max_{j\le i}M_j+1$ exist.
*Sketch:* each condition has the form $c/\log n\le\delta$ with $\delta\in\{\kappa/4,i^{-2}\}$, and $\delta>0$ because $\kappa>0$. It holds for large $n$ because $\log n\to\infty$. The running maximum makes $\ell$ nondecreasing.
*Lean:* [`Rolls.eventually_large`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L55-L77), [`Rolls.exists_rolls`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L79-L84).

**Lemma 4.2 (smallness exponents).** For every positive sequence $\alpha$, the running minimum $\theta_j=\min_{i\le j}\min\big((i+1)^{-1},\alpha_i\big)$ is positive, nonincreasing, and satisfies $\theta_j\le\min(\alpha_j,1/(j+1))$.
*Lean:* [`Protection.exists_margin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L98-L111).

**Lemma 4.3 (barrier).** For every $b$, take $\bar\beta=\max(2,x_*,b,\beta^{\rm ent}_{j_0})$, where $x^{-1/2}e^{(\log\log x)^2}\le1$ for all $x\ge x_*$. This is a barrier.
*Sketch:* $(\log y)^2\le\frac12 y$ for large $y$, applied with $y=\log x$.
*Lean:* [`Bar.exists_above`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L19-L37).

**Lemma 4.4 (the volume bill).** Define
$$\mathrm{bill}_j(s)=S_j(1+c+c')^{g_j}+100(c+1)+100\big((j+3)\ell_j+1\big),$$
where $c=\lceil\log^2(\bar\beta+\kappa s)\rceil$ and $c'=\lceil\log^2(\bar\beta+\kappa(s+\log\ell_j))\rceil$. Then $\mathrm{bill}_j(s)\le e^s$ for all large $s$.
At $s=s_m$ with $j=J_{m+1}$ we have $c=B_m$, $c'=B_{m+1}$ and $(j+3)\ell_j=R_m$. So the bill is the sum of the three volume demands of III.2.2(c),(e).
*Sketch:* $c,c'=O((\log s)^2)$, so the bill is polynomial in $\log s$.
*Lean:* [`Bar.bill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L43-L47), [`Bar.allocated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L64-L84).

**Lemma 4.5 (entering a stage).** For each $j>j_0$ there is $n_j$ with the following property. For every level $m\ge n_j$ and every $s\ge m\log3$:
- $\beta^{\rm ent}_j\le\bar\beta+\kappa s$;
- $\sigma^{\rm ent}_j(\bar\beta)\le s$;
- $s>0$;
- $\log\ell_j\le s/j$;
- $\mathrm{bill}_j(s)\le e^s$.

*Sketch:* each condition holds for all large $s$. Take the largest of the thresholds, and $n_j$ with $n_j\log3$ above it.
*Lean:* [`Bar.enters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L90-L106).

**Lemma 4.6 (windows).** For each $j$ there is $c_j$ such that, for all $k\ge c_j$ and all $s$ with $k\log3\le s\le k\log\ell_j$, we have $\sigma^{\rm rdy}_j\le s$ and $h_j(s)\le k/2$.
*Sketch:* for large $s$, $h_j(s)\le s/(2\log\ell_j)$ by sublinearity, and $s\le k\log\ell_j$.
*Lean:* [`Wait.lead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L109-L127).

### 4.2 The level schedule

**Lemma 4.7 (exhaustion).** For any $b,c:\mathbb N\to\mathbb N$ there is $J':\mathbb N\to\mathbb N$ with the following properties:
- $J'_0=J'_1=0$, $J'$ is nondecreasing, $J'_{i+1}\le J'_i+1$ and $J'\to\infty$;
- $b(J'_{i+1})\le i$ whenever $J'_{i+1}>0$;
- for every $i$ there is $k\ge c(i)$ with $J'\equiv i$ on $[k-\lfloor k/2\rfloor,\,k+\lfloor k/2\rfloor]$.

*Sketch:* set $a_0=0$ and $a_{i+1}=a_i+b(i+1)+2k_i+1$, where $k_i=c(i)+2a_i+1$. Put $J'=i$ on $[a_i,a_{i+1})$. Stage $i+1$ starts at level $a_{i+1}>b(i+1)$. The window around $k_i$ lies in $[a_i,a_{i+1})$ because $k_i/2\ge a_i$ and $\tfrac32k_i<a_{i+1}$.
*Lean:* [`Program.exhaust`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L41-L84).

**Lemma 4.8 (the schedule meets all entrance conditions; proof of III.2.2).**

*Construction.*
1. Apply Lemma 4.7 with $b(i)=n_{j_0+i}$ (Lemma 4.5) and $c(i)=c_{j_0+i}$ (Lemma 4.6), and set $J_m=j_0+J'_m$, $L_m=\ell_{J_{m+1}}$ and $s_m=\sum_{i<m}\log L_i$. Then $m\log3\le s_m\le m\log\ell_{J_m}$, using that $\ell$ and $J$ are monotone.
2. Let $m_*$ be such that $J'_m\ge1$ for $m\ge m_*$. Put $M=n_{\min}+\max_{i\le m_*}\mathrm{bill}_{j_0}(s_i)$ and $n_p=4(M+p+1)$.

*Verification.*
- *Entry.* If $J_{m+1}=j_0$, then $\beta^{\rm ent}_{j_0}\le\bar\beta\le\hat\beta_m$. Otherwise $m\ge n_{J_{m+1}}$ and $s_m\ge m\log3$, so Lemma 4.5 applies.
- *Volume off the first plateau.* There $\mathrm{bill}_{J_{m+1}}(s_m)\le e^{s_m}\le n_pe^{s_m}$. This gives (c), the cover condition, and the patch condition, the latter because sides increase with $m$.
- *Volume on the first plateau.* There $\mathrm{bill}_{j_0}(s_m)\le M<n_p$.
- *Mesh.* For $m\ge m_*$, Lemma 4.5 gives $\log L_m/s_m\le1/J_{m+1}\to0$.
- *Windows.* At the level $k$ given by Lemma 4.7 for stage $j=j_0+i$, $s_k$ lies in the range of Lemma 4.6. So $h_j(s_k)\le k/2$, and $J\equiv j$ on $[k-h_j(s_k),k+h_j(s_k)]$.
- *Remaining conditions.* Monotonicity of $k_{J_m},q_{J_m},a_{J_m}$ comes from the sheet. The drift and log-cost bounds come from Lemma 4.1, and the bounds on $\theta$ from Lemma 4.2. Block control comes from the kernel's branches.
- *Divisibility variant.* Given $c\ge1$ and $z$, the index $p=c(M+z+1)-(M+1)\ge z$ gives $n_p=4c(M+z+1)$.

*Lean:* [`Wait.ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L137-L239), [`Program.book`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L89-L104), [`scaled_lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L115-L121), [`scaled_upper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L123-L130), [`Wait.engine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L26-L135).

### 4.3 Shooting

**Lemma 4.9 (running law from the transfer inequality).** Consider a history on a level system of III.2.2 with $\beta_{N,p,0}=\bar\beta$ and $|\beta_{N,p,i+1}-\beta_{N,p,i}-\kappa\log L_i|\le\omega_{J_{i+1}}$ for all $i<N$. Then it obeys the running law of III.2.3.
*Sketch:*
1. Since $\hat\beta_{i+1}-\hat\beta_i=\kappa\log L_i$ and $\beta_{N,p,0}=\hat\beta_0$, induction upward from level 0 gives $|\beta_{N,p,i}-\hat\beta_i|\le D_i:=\sum_{k=1}^{i}\omega_{J_k}$.
2. Given $\varepsilon$, choose $i_0$ with $J_{i+1}^{-2}\le\varepsilon/2$ for $i\ge i_0$. Then $\omega_{J_{i+1}}\le\frac\varepsilon2\log L_i$, so $D_i\le D_{i_0}+\frac\varepsilon2(s_i-s_{i_0})$.
3. Finally $D_{i_0}\le\frac\varepsilon2 s_i$ for large $i$, because $s_i\to\infty$.

The bound is uniform in $N\ge i$ and $p$.
*Lean:* [`trajectory`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L23-L53).

**Lemma 4.10 (gates).** Put $\beta^-_m=\bar\beta+\frac\kappa2s_m$ and $\beta^+_m=\bar\beta+2\kappa s_m$. Then $[\beta^-_m,\beta^+_m]\subset\mathfrak B_m$, because $\bar\beta>0$. Suppose a level-$m$ representation $\rho$ relays a level-$(m+1)$ representation $\rho'$, and $\omega_{J_{m+1}}\le\frac\kappa4\log L_m$. Then:
- if $\beta(\rho')=\beta^-_{m+1}$, then $\beta(\rho)\le\beta^-_m-\frac\kappa4\log L_m<\beta^-_m$;
- if $\beta(\rho')=\beta^+_{m+1}$, then $\beta(\rho)\ge\beta^+_m+\frac{3\kappa}4\log L_m>\beta^+_m$.

The drift hypothesis follows from the entrance conditions and III.2.1(2), since $L_m=\ell_{J_{m+1}}$.
*Lean:* [`floorBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L57), [`ceilBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L58), [`limits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L60-L68), [`gates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L81-L90), [`Drifting.pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L73-L79).

**Lemma 4.11 (narrowing).** Let $f$ be continuous on $[x,y]$ with $f(x)\le d\le u\le f(y)$. Then there are $x\le z\le w\le y$ with $f(z)=d$, $f(w)=u$ and $f([z,w])\subset[d,u]$.
*Sketch:* let $w$ be the least point of $f^{-1}(u)$ and $z$ the greatest point of $f^{-1}(d)\cap[x,w]$; both sets are nonempty by the intermediate value theorem. Suppose some $c\in[z,w]$ has $f(c)<d$. Then the intermediate value theorem on $[c,w]$ gives a point of $f^{-1}(d)$ after $z$, a contradiction. Suppose instead $f(c)>u$. Then it gives a point of $f^{-1}(u)$ before $w$, again a contradiction.
*Lean:* [`narrow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L18-L49).

**Lemma 4.12 (nested intervals).** Fix $N,p$ and assume (start), (advance) and the drift bound. For every $m\le N$ there are $l_m\le u_m$ with $[l_m,u_m]\subset[l_{m+1},u_{m+1}]\subset[\beta^-_N,\beta^+_N]$, and partial trajectories $(\rho^x_i)_{m\le i\le N}$ for $x\in[l_m,u_m]$, such that:
- $\rho^x_N$ is the start representation at bare coupling $x$;
- every $\rho^x_i$ is admissible with $\beta(\rho^x_i)\in\mathfrak B_i$;
- consecutive levels relay;
- $x\mapsto\rho^x_m$ is continuous;
- $\beta(\rho^{l_m}_m)=\beta^-_m$ and $\beta(\rho^{u_m}_m)=\beta^+_m$.

*Sketch:* downward induction.
- For $m=N$, restrict the start family to $[\beta^-_N,\beta^+_N]$.
- For $m+1\to m$, the family at level $m+1$ has all couplings in $\mathfrak B_{m+1}$, so (advance) yields a continuous family $\rho^x_m$. By Lemma 4.10, $f(x)=\beta(\rho^x_m)$ satisfies $f(l_{m+1})<\beta^-_m$ and $f(u_{m+1})>\beta^+_m$.
- Lemma 4.11 gives $[l_m,u_m]$ on which $f$ maps onto $[\beta^-_m,\beta^+_m]\subset\mathfrak B_m$ with the right endpoint values.

The restriction is needed: (advance) applies only to families whose couplings lie in the band at every point. Only the continuity of $x\mapsto\beta(\rho^x_m)$ enters the intermediate value argument. The other continuity clauses are carried because (advance) requires them at the next step.
*Lean:* [`steps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L112-L154).

**Lemma 4.13 (endpoint and assembly; proof of III.2.3).** Since $s_0=0$, we have $\beta^-_0=\beta^+_0=\bar\beta$. So $x=l_0$ gives a trajectory from level $N$ to level 0 with $\beta_{N,p,0}=\bar\beta$. Choose one such trajectory for every $(N,p)$. Then:
- the path data are $P^{\mathcal R}_{N,m}$, independent of $p$;
- admissibility gives the budget, clip, polymer bounds and band membership;
- (start) gives the Wilson weight with $v=0$;
- the relays give the transfer identity and the drift inequality;
- Lemma 4.9 gives the running law.

Hence the history is selected.
*Lean:* [`successful`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L156-L159), [`Competes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L95-L98), [`Recipe.races`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L67-L82).

### 4.4 Persistent purchases and their composition

**Lemma 4.14 (composition rules).** All suppliers in the integration files have one of three forms:
- (i) a floor $f$ on the block factors;
- (ii) "for every delay $V$ there is $V'\ge V$ such that every later delay and every level system meeting its entrance conditions satisfy $P$";
- (iii) the same with waits instead of delays.

Floors combine by pointwise maximum. Suppliers of forms (ii) and (iii) combine by chaining, because the orders on delays and waits are transitive and the conclusions persist under raising.
*Lean:* [`postnumeric_quote_diagonal_pair_requests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodClock.lean#L31-L39), and the chains in [`joinExpensesShipWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L28-L119).

**Lemma 4.15 (diagonal payments; proof of III.2.8).**
- For (b), raise $\beta^{\rm ent}_j$ to $\max\big(\beta^{\rm ent}_j,\exp\exp(1+\sum_{n,i\le j}|F(n,i)|)\big)$. The entrance condition $\beta^{\rm ent}_{J_{m+1}}\le\hat\beta_m$ then bounds the partial sums at stage $J_{m+1}$ by $\log\log\hat\beta_m$. Since $J\to\infty$, each fixed $n$ satisfies $n\le J_{m+1}$ from some level on.
- For the single-array form, raise $\beta^{\rm ent}_j$ to $\max(\beta^{\rm ent}_j,F(j))$.
- For (c), encode the requests. Take $\mathrm{pre}(j)=\max_{\mathrm{code}(\kappa)\le j}\mathrm{pre}_\kappa(j)$. Raise $\beta^{\rm ent}_j$ until the finitely many costs with $\mathrm{code}(\kappa)\le j$, evaluated on the stage-$j$ geometry, are below $1+\log(2+\log x)$ for $x\ge\beta^{\rm ent}_j$.
- (d) is (c) applied to the plan's requests, followed by one more delay for the inverse charge.

*Lean:* [`eventuallyPaid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeDiagonalClockRequest.lean#L52-L79), [`minDelay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar/Base.lean#L68-L77), [`buy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L42-L64).

**Lemma 4.16 (the sheet).** Let $G$ be simple, let $K$ have branches at every patch, let the order data $v$ satisfy the conditions of III.2.4, and let $C\ge1$. Then there are:
- a sheet with kernel $K$ and orders, powers and support exponents $v$;
- two price maps;
- auxiliary sequences.

These are such that for every tariff and scope there is a floor beyond which the following *perceived-estimate package* holds:
- for every admissible choice of block factors, post-$L$ costs, $\theta$ and delays, there are delays such that every later level system meeting the entrance conditions carries kinetic data with planned paths, the Wilson top path, amplification and the budget plans.

The widths, path counts and drift allowances of the stage records are produced here from the free-kernel and stationary-branch estimates.
*Lean:* [`sailsW`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Fiscal.lean#L97-L169), [`Perceived`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Fiscal.lean#L63-L79).

**Lemma 4.17 (the native purchase, and the prediction).** Given the package of Lemma 4.16, there are the following, in the alternation of III.2.4:
- a floor;
- programs, targets, expenses and a baton;
- wages, a register and postage;
- reset prices and post-$L$ costs;
- $\theta$ and step records with $\varepsilon\le1/4$;
- booths and ordered delays.

With these choices every later level system carries a directed datum satisfying the shelter conditions at tolerances $1/16$ and at $\tau$, together with the top kinetic data, the cadre and amplification records and the rank-covariance port.
III.2.6 follows by threading the quantifiers. The prediction's floor $u$ is joined to the original floor (giving $\max(j,u)$), and the prediction's delay is inserted before the booth delay.
*Lean:* [`companyK`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Linger.lean#L23-L51); [`company`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedCompanySelection.lean#L49-L106).

**Lemma 4.18 (proof of III.2.4 and III.2.5).** The proofs proceed in four steps.
1. [`joinRadarsShipWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L133-L144) takes the sheet from Lemma 4.16 and calls [`joinExpensesShipWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L28-L119). That theorem starts from Lemma 4.17 and threads about thirty further suppliers through it:
   - floor suppliers, joined into one floor;
   - delay suppliers $V\le V_1\le\dots\le V_7\le\dots\le w_6\le\dots$, chained.
2. [`richFaresWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Fares.lean#L26-L85) adds:
   - the native costs and an extra floor (`oyster`, `capitalSnow`);
   - a cross-term floor, so the final floor is $(t\vee L\vee\mu)\vee$ cross-floor;
   - shells raised to $\max(S_j,\cdot)$, the mesh and installment delays, and the wait enlargement (`franchise`).
3. [`plentifulWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean#L26-L81) adds:
   - the trace floors (`posters`, `submits`, `Trace.Perfect.vroom`);
   - delays (`Trace.Terrace.staircase`, a $\beta^{\rm ent}$ raise, `Trace.Margin.flows`, `Quince.rise_B`);
   - waits (`sponsored`, `embalms`).

   It concludes with [`Trace.Over.gang`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56).
4. Every step is an instance of Lemma 4.14. The content of each supplier is proved in the unit that owns its predicate.

*(proof read at the level of the composition; the suppliers were not read)*

**Lemma 4.19 (the final assembly; proof of III.2.7).** [`allFactor…`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodClock.lean#L44-L179) makes the choices in order:
1. *Pre-$L$ data.*
   - Order data: $j_0=4$, $k_j=6+j$, $q_j=2+j$, $a_j=100$; and $Q_i=i+2$.
   - A kernel with penalty $b$.
   - Concrete tableau and sphere data ($\omega_v=\omega_t=1/1024$).
2. *The plentiful construction.* Apply III.2.5. Pick a choice $c$ of the demand.
3. *Block floor and block factors.* The block floor is the maximum of five floors: the plentiful floor, a density floor, the treasury floor, the period-plan floor and $e_c$. Fix block factors, wages and post-$L$ costs.
4. *Smallness exponent and delays.* Take $\theta^0\equiv1$, start from zero delays, and chain the delay raises: halo, step, $\Lambda$ together with both arrays of the demand (Lemma 4.14), treasury, period plan, auxiliary, silk, custody, and the delay of III.2.5.
5. *Barrier.* Take $\bar\beta\ge2$ (Lemma 4.3).
6. *Wait.* Enlarge a slim wait twice.
7. *Level system.* Take the level system of the divisibility variant of III.2.2, and the factor from III.2.5.

Finally [`engageWithCustodyFactor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/PeriodConstruction.lean#L30-L47) builds the run from the factor.
*(proof read at the level of the composition)*

### 4.5 The analytic lemmas

**Lemma 4.20.** These are the statements of III.2.9.
- *Pullback gain:* factor $R$ through $d$ difference operators (division lemma), and let each difference act on $B$. This gains $L^{-1}$ per difference, against $L^{2}$ from $\|A\|\cdot\|B\|$ and the $L^4$ site count. *(statement only, first lines read)*
- *Contraction of Hessian differences:* apply the pullback gain with $d=3$ and take $N>\max(\tau/\eta,K^2)$, so that $KL^{-1}\le L^{-1/2}$ for $L\ge N$.
- The others:.

## 5. Where the difficulty lies

- **Small mathematics, large logical structure.** A written proof needs:
  - III.2.1–III.2.3 (one page of asymptotics, the exhaustion lemma, and the nested-interval shooting);
  - III.2.8(b);
  - one statement of the order of choice.

  It need not reproduce the roughly 17,000 lines of purchase wrappers. Their only mathematical content is the order of the quantifiers and the persistence of each conclusion under raising floors, delays and waits (Lemma 4.14). III.2.4, III.2.5 and III.2.7 can be replaced by one sentence: "for every sheet there are, in this order, $\ell$, $\theta$, delays, $\bar\beta$ and a wait, such that every estimate of Sections X–Y holds on the schedule of III.2.2."
- **Uniformity in $N$ and $p$.** Every constant is fixed before $N$ and $p$. The schedule is common to all of them, and the volumes are fixed only at the end: $n_p=4(M+p+1)$, where $M$ pays the first plateau. The window $[\beta^-_m,\beta^+_m]$ grows linearly in $s_m$, which is what makes the shooting work at every depth with the same constants.
- **The shooting needs families, not points.** (advance) is a statement about continuous families whose couplings stay in the band. This forces the nested-interval form of Lemma 4.12 instead of the intermediate value theorem applied to a global map $\beta_N\mapsto\beta_0$; no such map is defined. The analytic input is that the step preserves continuity of families (III.10).
- **Two drift bounds with different roles.** $\omega_j\le\frac\kappa4\log\ell_j$ gives the gates. $\omega_j\le\log\ell_j/j^2$ gives the running law. Both say that the stage-$j$ error of the coupling shift is small against the one-loop shift. They are conditions on $\ell_j$ given $\omega_j$, so they are paid by choosing $L$ after the stage constants.
- **Stage constants are absorbed by $\log\log\hat\beta$.** Because $J_m\to\infty$ only as fast as the entry thresholds allow, any array of stage constants fixed before $L$ is eventually below $\log\log\hat\beta_m$ (III.2.8(b)). Step costs are similarly eventually below $1+\log(2+\log\hat\beta_m)$ (III.2.8(c)). This is how "pre-$L$ constants are harmless" is made precise.
- **Unusual features.**
  1. The entry scale $\sigma^{\rm ent}_j$ is a function of the barrier, although the delays are chosen before $\bar\beta$.
  2. The prediction mechanism (III.2.6 and the "with prediction" versions) is used in the main closure only with the vacuous prediction.
  3. III.2.2 exists in two copies, without and with the divisibility of periods.
  4. The modules state that they do not check that the numerical requests match the RG estimates. The types enforce the order of quantifiers, but not that each request is the one an estimate needs.
  5. The analytic lemmas of III.2.9 are filed here by dependency position.

## 6. Notation

| Written proof | Lean | Meaning |
|---|---|---|
| sheet; stage record $X_j$; first stage $j_0$; floors $f_j$ | [`Sheet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35), [`Stage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L45-L61) | data fixed before the block factors |
| $k_j,q_j,a_j,w_j,\varpi_j,\omega_j,\gamma_j,r_j$ | `order`, `power`, `supportExponent`, `width`, `paths`, `drift`, `columns`, `clip.relaxation` | fields of the stage record |
| $\mathcal C_j$ | (in [`Large`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L39-L48)) | $1+\varpi_j+w_j^{-1}+\gamma_j+r_j+a_j$ |
| $\ell_j$; $L_m=\ell_{J_{m+1}}$ | [`Rolls`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L50-L53); `Schedule.block` | stage and step block factors |
| $\theta_j$ | [`Protection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L88-L92) | smallness exponent of the loop cap |
| $\beta^{\rm ent}_j,\sigma^{\rm ent}_j(\bar\beta),S_j,g_j$ | [`Delays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L115-L120) | entry thresholds, shells, growth |
| $\bar\beta$ | [`Bar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L123-L127) | barrier: coupling at level 0 |
| $\sigma^{\rm rdy}_j,h_j,n_{\min}$ | [`Wait`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L134-L139) | readiness, windows, minimal period |
| meets the entrance conditions | [`Paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162) | III.2.2(a)–(d) |
| $\mathrm{bill}_j(s)$ | [`Bar.bill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L43-L47) | required sites per unit length |
| $J'$, $J_m=j_0+J'_m$ | [`Program`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L22-L28) | stage index |
| $n_p=4(M+p+1)$ | `Program.page` | level-0 side |
| recipe $\mathcal R$ | [`Recipe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L67-L71) | path data and three tests |
| admissible; relays; start | [`Lives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L74-L79), [`Relays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L88-L91), [`Starter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L93-L96) | |
| continuous family | [`Curve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L51-L57), [`deviation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L44-L49) | |
| (start)+(advance) | [`Recipe.Issues`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L99-L106) | shooting hypotheses |
| $\mathfrak B_m$; $[\beta^-_m,\beta^+_m]$ | [`band`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L63); [`floorBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L57), [`ceilBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L58) | band; shooting window |
| eventually paid | [`EventuallyPaid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Clock.lean#L36-L38) | III.2.8(a) |
| plan; treasury funded | [`Plan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L18-L20), [`TreasuryFunded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L35-L38) | III.2.8(d) |
| emitted factor; prediction | [`Factor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Roost/Foundry.lean#L26-L50), [`Prediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedCompanySelection.lean#L23-L24) | record of all choices; predicate on it |
| sheet with floors $n$ | [`raise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Merchant.lean#L36), [`bountyV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Fiscal.lean#L22-L23) | |
| order data $v$ | [`Orders`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Dome.lean#L64-L68), [`Draft`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Dome.lean#L70-L77), [`WithStage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Dome.lean#L81-L85) | |

## 7. Open points for the writer

1. **The requirement list of III.2.4–III.2.5.** The table gives the unit that owns each predicate, but the predicates are not unpacked here. For each one the writer should identify the estimate of the RG it encodes, and check that its supplier's floor and delay sit at the right place in the order. The Lean types guarantee only the order of quantifiers.
2. **The suppliers were not read.** The roughly thirty suppliers chained in `joinExpensesShipWithPrediction`, and those added in `richFaresWithPrediction` and `plentifulWithPrediction`, were read only as statements in the composition. Their conclusions have the persistent form of Lemma 4.14; their proofs were not checked.
3. **Unidentified parameters.** The roles of wages, postage rates, exchanges, menus, auxiliary records, the sequences $Y$, $K'$ and $Q$, and the tableau and sphere data are not identified (tentative: tolerances of the step estimates of III.10–III.12).
4. **Where the stage records come from.** The stage records are produced in Lemma 4.16, which was read for its statement only. In particular, check where $\omega_j\ge1+D$ is fixed (III.9 attributes $D$ to III.7 and III.13).
5. **The analytic lemmas of III.2.9.** These should be moved to the units of the Gaussian step and the stationary branch. Their assignment here follows only their position in dependency chains.
6. **Other consumers of III.2.2.** Several suppliers in the main closure use the non-divisible version of III.2.2. None of them seems to need divisibility, but this was not checked.
7. **Resolved in this revision:**
   - the shooting proof was read in full (§4.3);
   - the quantifier order of III.2.4 was checked against the Lean statement;
   - the consumers were traced: III.2.3 is used in the main closure only through III.10 (`Graces.winnow`), and III.2.7 only through III.14 (`constructionRun`), with the vacuous prediction.

**Builds on:** [III.1](III-1.md), [III.10](III-10.md), [VII.2](VII-2.md), [I.1](I-1.md), [III.12](III-12.md), [III.6](III-6.md), [III.7](III-7.md), [VII.1](VII-1.md), [III.3](III-3.md), [II.1](II-1.md), [III.16](III-16.md), [III.9](III-9.md), [III.4](III-4.md), [III.11](III-11.md), [II.2](II-2.md), [III.15](III-15.md), [III.5](III-5.md), [VII.6](VII-6.md), [VIII.1](VIII-1.md), [VII.4](VII-4.md), [IV.1](IV-1.md), [V.2](V-2.md), [V.1](V-1.md).

**Used by:** [III.10](III-10.md), [III.12](III-12.md), [III.13](III-13.md), [III.11](III-11.md), [III.9](III-9.md), [III.4](III-4.md), [VIII.1](VIII-1.md), [III.15](III-15.md), [VII.1](VII-1.md), [III.14](III-14.md), [III.6](III-6.md), [III.1](III-1.md), [III.7](III-7.md), [VII.4](VII-4.md), [III.3](III-3.md), [V.2](V-2.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| proof of [`plentifulWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean#L26-L81) | 6,253 |
| proof of [`joinExpensesShipWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L28-L119) | 4,674 |
| proof of [`selectRunWithTreasuryPeriod_preselected_quote_orders_postnumeric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L99-L114) and the results it chains to | 4,010 |
| proof of [`joinRadarsShipWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L133-L144) | 2,398 |
| work package [`YM/Price/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price) | 406 |
| work package [`YM/Shoot/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot) | 228 |
| proof of [`richFaresWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Fares.lean#L26-L85) | 164 |
| work package [`YM/Integration/NativeSelection/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection) | 17 |
| work package [`YM/RG17/Clearance/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Clearance) | 6 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **III.2.1** [`Sheet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35) *(numbered result)* — A record of numerical and kernel data fixed before any block ratios are chosen.
- **III.2.2** [`Large`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L39-L48) *(numbered result)* — A predicate stating that numeric largeness conditions hold at a given smoothing stage for a threshold L.
- **III.2.3** [`Protection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L88-L92) *(numbered result)* — A record freezing a parameter theta that accommodates all contributing requests after L is chosen.
- **III.2.4** [`Bar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L123-L127) *(numbered result)* — A record giving a smallness barrier independent of the first spacing.
- **III.2.5** [`enters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L90-L106) *(numbered result)* — For a simple group and stage past the first, waiting long enough in the coarser scale ensures beta, scale, length, and volume-bill conditions hold uniformly.
- **III.2.6** [`Paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162) *(numbered result)* — A record stating that a bundle of entrance-gate and level-0 conditions holds for a schedule of levels.
- **III.2.7** [`ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L137-L239) *(key result)* — There exists a level schedule for which all requested estimates (the whole calendar) are paid.
- **III.2.8** [`races`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L67-L82) *(key result)* — For a simple gauge group, if the recipe issues data at every scale and the coupling drifts, there is a trajectory that stays and produces a selected object.
- **III.2.9** [`sailsW`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Fiscal.lean#L97-L169) *(main result)* — For a simple gauge with kernel choices, there exists a sheet with prices and parameters such that for all tariffs and scopes a perceived-estimate package holds along suitable scale sequences.
- **III.2.10** [`design`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Spins/Muse.lean#L35-L59) *(numbered result)* — A sharp post-block Hessian bound for the isolated step under unscaled derivative bounds.
- **III.2.11** [`richFaresWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Fares.lean#L26-L85) *(key result)* — Under a prediction and pricing hypothesis, there is a sheet, price map and eventual threshold giving the joint RG/UV purchase with prediction retained.
- **III.2.12** [`joinRadarsShipWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L133-L144) *(key result)* — There exist a sheet and prices such that the joint same-factor procurement with prediction holds for all later choices of parameters and payments.
- **III.2.13** [`company`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedCompanySelection.lean#L49-L106) *(key result)* — The complete native purchase can be performed with an additional prediction holding on the same emitted factor.
- **III.2.14** [`tanker`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas/Reservoir.lean#L84-L118) *(key result)* — Given a gauge and bounds, one can choose atoms and widths such that sequences of lattice observables with jet-bounded records are approximated by an emitted base up to fifth-order remainders.
- **III.2.15** [`tunes9`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows/Pads.lean#L25-L32) *(numbered result)* — Given small epsilon on steps, there is a later delay schedule beyond which Pads9 holds for all further delays.
- **III.2.16** [`purchasing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows/Medal.lean#L24-L45) *(key result)* — For r>-1, the Medal property holds eventually in x with the power beta^r as the parameter.
- **III.2.17** [`wallet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows/Money.lean#L31-L43) *(key result)* — For large s, every admissible horn function with bounded weight gives a gale function that is smooth to order n at 0 and whose order-2 norm is at most a power of beta.
- **III.2.18** [`yields`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Artes/Events.lean#L44-L55) *(numbered result)* — Counter and inspected hypotheses with an amplification condition give the cadre property.
- **III.2.19** [`handbook'`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows/Roads.lean#L25-L68) *(numbered result)* — For a family of admissible horn functions, the order-2 norm of the associated gale function at 0 is controlled in temperature.
- **III.2.20** [`mirror_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows/Shape.lean#L54-L70) *(key result)* — The sum of the paved expansions at z and -z is of order η^2 in the order-2 norm, i.e. the odd parts cancel to the right order.
- **III.2.21** [`mastering`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas/Weather.lean#L18-L38) *(key result)* — For simple gauge and kernel choices, there exist scales and constants with fine bases such that, for any tolerances, performance data exist.
- **III.2.22** [`flux_cap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas/Flux.lean#L24-L114) *(key result)* — For a simple gauge group there exist a price function and constants such that flux-capped bounds hold under horizontal calculation hypotheses, with explicit parameter dependence.
- **III.2.23** [`pierce`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas/Return.lean#L82-L123) *(key result)* — For simple gauge, there is a price function and constants such that along sequences of steps the limiting path data satisfy uniform bounds and records.
- **III.2.24** [`companyK`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Linger.lean#L23-L51) *(key result)* — A complete purchase of targets, expenses, and delays exists producing, after all later delays and payments, directed budgets and a sheltered alloy with the required rate and bounds.
- **III.2.25** [`evening`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Spins/Sundial.lean#L24-L36) *(key result)* — For large x, the derivative at 0 of the display map differs from the main stroke by at most x^{-p} for every p, uniformly over admissible tubes.
- **III.2.26** [`dissent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Spins/Meteor.lean#L64-L123) *(key result)* — For large x, the difference of the tube's display map vanishes at 0 with derivative at 0 bounded by x^{-p} for every power p.
- **III.2.27** [`unique_part`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Quince/Unum.lean#L11-L42) *(key result)* — Two coefficient expansions with the same density and remainder bounds have difference in coefficient size exponentially small in the number of steps m.
- **III.2.28** [`trendH`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shunt/Ready.lean#L24-L37) *(key result)* — For large x, any representative with the tool, merchant and depot properties admits a combat witness at every admissible level and axis.
- **III.2.29** [`plentifulWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean#L26-L81) *(key result)* — For a fixed calendar and funded prediction there exist a sheet, prices and thresholds yielding the full plentiful construction retaining the prediction.
- **III.2.30** [`flows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Vote.lean#L18-L24) *(key result)* — For a simple gauge group, any delay data can be enlarged so that any paid-up level system over further delays is acclaimed.
- **III.2.31** [`taxes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Ansel.lean#L43-L52) *(key result)* — For a simple gauge, the stored quantitative property holds for all sufficiently large scale x.
- **III.2.32** [`Inspires`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Weir/Dolio.lean#L36-L64) *(main result)* — For simple gauge groups, a large-scale representation with sight and age properties is wholesome, with uniform constants, at all heights in range.
- **III.2.33** [`rocket`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Swift/Troop.lean#L14-L34) *(key result)* — For a simple gauge group, there exist constants D, C such that for large x, any representation and dart satisfying the hypotheses obey a quantitative bound.
- **III.2.34** [`attain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Earn.lean#L22-L52) *(key result)* — Under nest, skill and ordeal hypotheses on a simple graph, the sceptre property holds for the given data.
- **III.2.35** [`vroom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Liturgy.lean#L23-L48) *(numbered result)* — For any sheet there is a threshold function beyond which a derived sheet satisfies a stated property.
- **III.2.36** [`creation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Zn/Onus.lean#L43-L51) *(key result)* — For large x, any made representation with sight at a dart satisfies the craft property with given parameters.
- **III.2.37** [`embalms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L33-L50) *(key result)* — Given a relay condition, any waiting condition can be strengthened so that every family paid for it satisfies the firing property in every dimension.
- **III.2.38** [`post_phase`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Eon.lean#L39-L59) *(key result)* — For sufficiently large patch size, a phase configuration exists for all large scales over any window length, at levels j≥5 and i≥4.
- **III.2.39** [`post_to`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Tael.lean#L17-L19) *(key result)* — For any gauge, patch, kernel choices and parameters with positive alpha, there exist positive eta and nonnegative D such that the summit property holds.
- **III.2.40** [`forwardSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/Road.lean#L35-L80) *(key result)* — Given an ask structure and budget/chart data, one can extend a waiting condition so that, along families paid for it, panels with common arc and angle give the required eventual estimates.
- **III.2.41** [`pack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Weir/Cement.lean#L19-L59) *(key result)* — For large scale x, a configuration with climate and splendor bounds and no drift satisfies the depot property over all tower heights in range.
- **III.2.42** [`cloche`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Zn/Arc.lean#L16-L33) *(key result)* — For large x, uniformly in lattice size and configuration, a core observable approximates its midpoint pay value and is smooth with controlled derivative bounds.
- **III.2.43** [`eventuallyPaid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeDiagonalClockRequest.lean#L52-L79) *(numbered result)* — For any countable family, one admissible numerical delay request satisfies every fixed member eventually.
- **III.2.44** [`panning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Vale/Sculpt.lean#L42-L54) *(key result)* — The starting section built from a sound hologram abates at the fee weight, i.e. has polynomial vanishing below its weight at every rank.
- **III.2.45** [`real_difference_division`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Differences.lean#L46-L92) *(key result)* — A real coefficient packet whose n-th differences vanish can be divided by n difference factors, with a representation having smaller width and controlled norm.
- **III.2.46** [`flow_soft`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Ballast/Slide.lean#L44-L90) *(key result)* — Pre-block transfer maps a kernel of width σ and bound B to flow with reduced width w and bound K·B·L^4/L^(r+1+d), uniformly in block size.
- **III.2.47** [`selectRunWithTreasuryPeriod_preselected_quote_orders_postnumeric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L99-L114) *(main result)* — For any gauge data there exists a run with campaign satisfying the penalty value, preselection, order bounds, funded treasury/period purchase and a sky structure.
- **III.2.48** [`allFactorWithTreasuryPeriod_preselected_quote_orders_postnumeric_of_prediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodClock.lean#L44-L179) *(main result)* — There exist a sheet, prices, choices, and a fully paid factor satisfying a prediction together with numerical, post-numerical, order and clock requirements simultaneously.
- **III.2.49** [`pullback_gain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Pullback.lean#L56-L110) *(key result)* — Pulling back a zero-order-d row along two crosses gains a factor L^(2-d) in strip norm, giving an L^-1 contraction at d=3.
- **III.2.50** [`large_contraction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/KStep.lean#L130-L146) *(key result)* — For large odd block length the Hessian difference is a contraction uniformly in gate, giving L^(-1/2) decay after block choice.
- **III.2.51** [`plan_exists`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L28-L31) *(key result)* — For a simple gauge group and any kernel choices, a complete plan (calendar treasury of scales and costs) exists.
- **III.2.52** [`covariance_moves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian/Stability.lean#L54-L93) *(numbered result)* — If conditional covariances are strip-bounded and the Hessians differ by a strip-bounded amount, the tree covariance and mean vary in a controlled way.
- **III.2.53** [`buy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L42-L64) *(key result)* — Given a plan with floors met, any delay can be enlarged so that all further delays and payments yield a fully treasury-funded level.
- **III.2.54** [`names`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar/Basis.lean#L40-L43) *(numbered result)* — For simple gauge group and kernel choices, a naming (charges) data package exists.
- **III.2.55** [`wishes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar/Vocals.lean#L66-L76) *(numbered result)* — Given sound admissible data, a dialect (finite-word and spectrum data) for the requested operation exists.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

# III.2. Choosing the constants: the order of choice and the RG schedule

*Part III — Ultraviolet construction (renormalization group).*

Explains the order in which constants and scales are chosen so that the renormalization estimates hold together.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/III-2.md) · [← Previous: III.1](III-1.md) · [Next: III.3 →](III-3.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** [`YM/Price/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price) (the constants and the level schedule, 406 lines), [`YM/Shoot/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot) (shooting, 228 lines), [`YM/Integration/RG05Preconstruction/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction), [`YM/Integration/NativeSelection/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection) and other files of [`YM/Integration/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration), [`YM/RG08/Calendar/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar), and parts of [`YM/RG08/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08), [`YM/RG12/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12), [`YM/FullVolume/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume) (in particular `Roll/`) and [`YM/TraceExtension/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension). **Size:** 18,156 lines in the source allocation.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

**Proposition III.2.1 (order of choice).** For simple $G$, choose:

1. A sheet: kernel $K$ with branches on every patch; first stage $j_0\ge4$; floors $f_j\in\mathbb N$; stage records with a clip of relaxation $r_j$, derivative orders $k_j\ge6$, spatial powers $q_j\ge2$, support exponents $a_j>0$, widths $w_j>0$, path counts $\varpi_j>0$, drift allowances $\omega_j\ge0$, column bounds $\gamma_j\ge1$, $r_jw_j\ge12$; nondecreasing $k,q,a$.
2. Nondecreasing odd $\ell_j\ge\max(3,f_j)$, with, for $j\ge j_0$,
$$\omega_j/\log\ell_j\le\min(\kappa/4,j^{-2}),\qquad\log\mathcal C_j/\log\ell_j\le j^{-2},\qquad\mathcal C_j=1+\varpi_j+w_j^{-1}+\gamma_j+r_j+a_j.$$
3. Positive nonincreasing $\theta_j\le1/j$ for $j\ge j_0$.
4. Unrestricted delays: real entry couplings $\beta^{\rm ent}_j$, real barrier-dependent entry scales $\sigma^{\rm ent}_j(\bar\beta)$, natural shells $S_j$ and exponents $g_j$.
5. A barrier $\bar\beta>1$, with $\bar\beta\ge\beta^{\rm ent}_{j_0}$, with $x^{-1/2}e^{(\log\log x)^2}\le1$ for every $x\ge\bar\beta$.
6. A wait: real readiness scales $\sigma^{\rm rdy}_j$, windows $h_j:\mathbb R\to\mathbb N$ with $h_j(s)/s\to0$ as $s\to\infty$ for each fixed $j$, and natural $n_{\min}$.

Delays and waits are ordered componentwise. Factors exist for every sheet; $\theta$ can lie below any prescribed positive sequence; barriers exist above any prescribed real. *Status:* definitions and three existence theorems. *Lean:* [`Sheet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35), [`Rolls.exists_rolls`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L79-L84), [`Protection.exists_margin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L98-L111), [`Bar.exists_above`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L19-L37).

**Proposition III.2.2 (schedule).** For simple $G$ and any III.2.1 data, there are $J_m$, $L_m=\ell_{J_{m+1}}$, $n_p=4(M+p+1)$ with natural $M$, retaining the prescribed data, such that:

- $J_0=J_1=j_0$; $J$ is nondecreasing, increases by at most one, and diverges; $k_{J_m},q_{J_m},a_{J_m}$ are nondecreasing.
- For every $m$, $\beta^{\rm ent}_{J_{m+1}}\le\hat\beta_m$; also $\sigma^{\rm ent}_{J_{m+1}}(\bar\beta)\le s_m$ if $J_{m+1}>j_0$.
- For every $m,p$, with $j=J_{m+1}$: $n_p\ge n_{\min}$, $S_j(1+B_m+B_{m+1})^{g_j}\le n_pe^{s_m}$, $100(B_m+1)\le n_pe^{s_m}$, $100(R_m+1)\le n_pe^{s_{m+1}}$.
- Each $j\ge j_0$ has some $k$ with $\sigma^{\rm rdy}_j\le s_k$, $h_j(s_k)\le k$, and $J_i=j$ for $|i-k|\le h_j(s_k)$.
- $\hat\beta_m>1$, $t_m\le1$, $0<\theta_{J_m}\le1/J_m$; $\omega_{J_{m+1}}/\log L_m$ and $\log\mathcal C_{J_{m+1}}/\log L_m$ are at most $J_{m+1}^{-2}$; $\log L_m/s_m\to0$. Kernels are well posed, lattice symmetric and gauge covariant.

Every positive integer divides $n_p$ infinitely often. *Status:* theorem; divisibility variant in III.10. *Lean:* [`Wait.ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L137-L239), [`Wait.engine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L26-L135).

**Proposition III.2.3 (shooting).** Let $G$ be simple; fix a level system with $\omega_{J_{m+1}}\le(\kappa/4)\log L_m$ and a recipe prescribing paths $P^{\mathcal R}_{N,m}$ and start, retention and transition tests. Admissibility requires these paths, the level budget point and clip, width $w_{J_m}$, path count $\varpi_{J_m}$, loop cap $2M_m^{\theta_{J_m}}$, allowances $\hat\beta_m^{-11/10},e^{-M_m^{1/5}}$, and retention. Continuity requires continuous $\beta,v$, fixed activity address sets, and differences tending to zero in summed budget masses of regular derivative bounds through budget order on the healthy domain and forced uniform bounds on all configurations.

Assume, for every $N,p$, a continuous admissible Wilson start family on $\mathfrak B_N$ with coupling equal to its parameter, $v=0$, density equal to the Wilson weight at that coupling, passing the start test. Assume also that every continuous admissible level-$(m+1)$ family on any $[l,u]$ with $l\le u$, $m<N$, with couplings in $\mathfrak B_{m+1}$, admits a continuous admissible level-$m$ family whose density is its block-spin push-forward at the input coupling, passing the transition test, with $|\beta'-\beta-\kappa\log L_m|\le\omega_{J_{m+1}}$.

Then for all $N,p$ a selected history exists: admissible representations in $\mathfrak B_m$, Wilson top with $v=0$, these transitions, $\beta_{N,p,0}=\bar\beta$, paths independent of $p$. For every $\varepsilon>0$, some $m_0$ gives $|\beta_{N,p,m}-\hat\beta_m|\le\varepsilon s_m$ for all $N\ge m\ge m_0$, all $p$. *Status:* conditional theorem; hypotheses discharged in III.10. *Lean:* [`Recipe.races`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L67-L82).

**Proposition III.2.4 (joint purchase).** Assume simple $G$, kernel $K$ branched on every patch, first stage $\ge4$, nondecreasing $k_j\ge\max(6,j)$, $q_j\ge\max(2,j)$, $a_j\ge100$, nondecreasing $Q:\mathbb N\to\mathbb N$ with $Q_j\ge1$, records $\Omega,\Delta$, degree-$300$ tableau at $\xi$ and contraction condition [`sphere`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sym/Purse.lean#L29) at $(\xi,\omega_v,\omega_t)$, with $\xi\ge2$, $0<\omega_v\le1$, $\omega_t>0$, and prediction $\pi$ prepaid at every sheet and price map.

There exist a sheet $s$ preserving the prescribed kernel, first stage, derivative orders, powers and support exponents, price map $T$, real sequence $Y$, nondecreasing $K'\ge1$ and floor $\tau\ge f^s$. For every floor $k\ge\tau$, factors exist; for every block-factor sequence $\ell$ for $s$ with floors $k$ there is $U$; for every wage $w\ge U$, postage rate and exchange datum there are post-$L$ costs; for every positive $\theta^0$ there is protection $\theta\le\theta^0$; for every menu, auxiliary record and delay $T_0$ there is $V\ge T_0$; for every $V'\ge V$, barrier and wait $W$ there is $Z\ge W$; for every $W'\ge Z$ and level system meeting III.2.2 with divisible periods there are a directed datum and factor $X$ recording these choices, satisfying $\pi(X)$.

Wages, exchanges, menus and auxiliary records equal the prescribed data; postage rates do not exceed the prescribed rates. The same factor satisfies the III.12 conditions [`Degree`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sym/Prices.lean#L84), [`Savvy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sym/Shorn.lean#L32-L35), [`Roofing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/C/Ribbon.lean#L29), [`PaysW`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Florid/Ready.lean#L56), [`Spire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Luna/Hours.lean#L43), [`Wild`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Auvi/Entries.lean#L31), [`Tower.Sav`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Rent.lean#L25-L27) with [`Canyon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Query.lean#L45), [`Cadre`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Artes/Events.lean#L34-L39), [`AccordV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Tibetan.lean#L60) with $Q$ (III.11), top kinetic data (III.9), amplification (III.1), and a bandage with extras $(\Omega,\Delta,b)$ (III.15). Support exponents are $\ge100$; $e^{(a_j+2)(2\,\mathrm{span}_{ij}+13)^4}\le\ell_i$ for $j\le i\le j+1$. The bandage also supplies the conditional family package [`Unlatched`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Unlatch.lean#L25-L34) with a vacuous additional conclusion, under the family hypotheses of III.2.5. *Status:* theorem. *Lean:* [`richFaresWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Fares.lean#L26-L85).

**Proposition III.2.5 (plentiful construction).** Under III.2.4 and $Q_i\ge2$, its conclusion additionally ensures: every compatible trajectory, reference levels with $d+3\le J_{t(d)}$, section transfers and consecutive gauge doors satisfying family consistency, door compatibility and prescribed transfer bounds from level $t(d)$ whenever $t(d)\le N$ give, for every extraction order, the complete weak-continuum requirement (III.11) and trace gallery (VII.2). Floors, delays and waits may increase; the prediction persists. *Status:* theorem. *Lean:* [`plentifulWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean#L26-L81), [`Unlatched`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Unlatch.lean#L25-L34).

**Proposition III.2.6 (prediction).** Let $\pi$ be a prediction. For simple $G$, a sheet with the perceived-estimate package of detailed Lemma 4.16 at fixed tariff and scope, and $\tau>0$, suppose: for every choice of targets with the canonical chart, expenses with deficit $-7/16$, programs, initial wages and baton there is a floor $u$; for every floor $l\ge u$, factors, wages, duration bounds, register, postage, scouts, protection, step records with $\varepsilon\le1/4$ on transitions with output stage at least the first stage, post-$L$ costs and delay $V$, there is $W\ge V$; for every later delay, barrier, wait, pricing record, directed datum and remaining factor data, shelter and step conditions and divisible periods imply $\pi$ on the assembled factor. Then the complete native purchase of detailed Lemma 4.17 retains $\pi$ on the emitted factor, on level systems with divisible periods, maximizing its floor with $u$ and inserting $W$ before its booth and final delay. *Status:* theorem; used with vacuous prediction. *Lean:* [`company`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedCompanySelection.lean#L49-L106), [`Prepaid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedCompanySelection.lean#L30-L42).

**Proposition III.2.7 (complete run).** Given simple $G$, penalty $b>0$, records $\Omega,\Delta$, custody request $\mathcal H$, eventually paid $\Lambda$, and a demand assigning every sheet and price map nonempty choices $c$, floors $e_c:\mathbb N\to\mathbb N$ and real arrays $F_c(n,i),F'_c[\ell](n,i)$, there is a run with a campaign, penalty $b$, preselection $s,q,c$, and floor $n\ge\max(f^s,e_c)$. It uses $s$ with floors $n$ and the price map derived from $q$; both arrays are paid as in III.2.8(b), using actual $\ell$, and $F'_c[\ell](0,J_{m+1})\le\hat\beta_m$ for all $m$. Orders satisfy $k_j,q_j\ge j$; $\Lambda$, treasury funding, common-period funding, pillars, the funded, news and read-out records, custody and sky hold. Any universally prepaid prediction can persist. *Status:* theorem. *Lean:* [`selectRunWithTreasuryPeriod_preselected_quote_orders_postnumeric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L99-L114).

**Proposition III.2.8 (persistent payments).**

(a) Eventually paid means: for every sheet, factors, protection and delay $V$, some $X\ge V$ ensures the property for every delay $W\ge X$, every barrier and wait, and every system meeting their entrance conditions. Conjunction preserves it.

(b) For every real array $F(n,i)$, eventually paid are $1\le1+\log\log\hat\beta_m$ at all levels and: for every $n$, eventually in $m$, $|F(n,i)|\le1+\log\log\hat\beta_m$ for all $i\le J_{m+1}$. For every real sequence $F$, $F(J_{m+1})\le\hat\beta_m$ at all levels is eventually paid.

(c) Every countably encoded family of requests (stage floors and costs depending on the transition, block geometry and stage record $X_{J_m}$ at step $m$) has a common floor $\mathrm{pre}$ fixed before factors. If $\ell_j\ge\mathrm{pre}(j)$ at every stage, every delay can be enlarged so every later delay, any barrier and wait, and every admitted system satisfy, for $\mathrm{code}(\alpha)\le J_n$, $m\ge n$, $\mathrm{pre}_\alpha(J_{m+1})\le L_m$ and step cost $\le1+\log(2+\log\hat\beta_m)$.

(d) For simple $G$ and every kernel, a plan fixes charge names and dictionaries of finite words and spectra for every request before factors. Above its floor, delays can be enlarged persistently to fund requests and the inverse charge from level zero. *Status:* definition in (a); theorems. *Lean:* [`EventuallyPaid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Clock.lean#L36-L38), [`eventuallyPaid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeDiagonalClockRequest.lean#L52-L79), [`minDelay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar/Base.lean#L68-L77), [`buy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L42-L64).

**Proposition III.2.9 (analytic estimates).** Norms are componentwise exponentially weighted displacement $\ell^1$ norms, summing colour indices for multilinear kernels; colour spaces are fixed and finite, and constants may depend on them. Crosses map coarse fields to fine fields at block size $L$. Vanishing orders concern symbols at zero momentum.

- For $\sigma,\tau>0$, real $C$, natural $d$, some $0<\eta\le\sigma$, $K\ge0$ give $\|A^{\mathsf T}RB\|_\tau\le KML^{2-d}$ for positive odd $L$ with $\tau\le L\eta$, $\|A\|_\tau\le C/L$, $\|\nabla^sB\|_\tau\le C/L^{1+|s|}$ through order $d$, $M\ge0$, $\|R\|_\sigma\le M$, and vanishing order $d$. For one-form rows, $d=3$ gives $ML^{-1/2}$ for all sufficiently large odd $L$. [`pullback_gain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Pullback.lean#L56-L110), [`large_contraction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/KStep.lean#L130-L146).
- For natural $r,d$, $\sigma,w>0$, $C\ge0$, some $0<\eta\le\sigma$, $K\ge0$, fixed before $L$, give transfer bound $KBL^4/L^{r+1+d}$ at width $w$. Assume a real $(r+1)$-linear kernel of width $\sigma$, bound $B$, supported on tuples with first site zero, vanishing order $d$ in independent momenta; positive odd $L$, $(r+2)w\le L\eta$; crosses with $\|\nabla^iQ\|_{(r+2)w}\le C/L^{1+|i|}$ through order $d$; transfer through $r+1$ copies of $Q$, followed by symmetrization and recentering. [`flow_soft`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Ballast/Slide.lean#L44-L90).
- For finite coordinates $I$, natural $n$, $\sigma>0$, some $0<\eta\le\sigma$, $K\ge0$ ensure: every real kernel $f:\mathbb Z^I\to\mathbb R$ of weighted bound $A\ge0$, vanishing order $n$, has real kernels $g_b$ of bound $KA$, width $\eta$, with $\widehat f(p)=\sum_b\prod_{a=1}^n(e^{ip_{b(a)}}-1)\widehat g_b(p)$ for all real $p$, where $b:\{1,\ldots,n\}\to I$. [`real_difference_division`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Differences.lean#L46-L92).
- Fix step scenes with input coupling tending to infinity, leaves, cutoff parameter, radii satisfying the logarithm-chart conditions and fluctuations $z_i$; put $H_i=\frac12\log\beta_i^{\rm out}$, $\eta_{*,i}=e^{-H_i}$. Assume fluctuation bounds, leaf weights and third-derivative bounds $D_i$ have upper exponential rate zero relative to $H_i$; eventually leaves are masked regular logarithmic terms whose threshold-squared expressions have zero first derivative at zero and derivatives through order three bounded by $D_i$ on the unit ball; $\pm z_i$ are healthy; both cutoffs equal one near the origin in the two deformation parameters. Here upper rate $a$ means an eventual bound $e^{rH_i}$ for every $r>a$. Writing $P_i$ for the paved expansion, for every $\varepsilon>0$, eventually $\|D_y^2(P_i(z_i;y)+P_i(-z_i;y))|_{y=0}\|\le\eta_{*,i}^{2-\varepsilon}$. [`mirror_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows/Shape.lean#L54-L70).
- Fix a representation, degree-$d$ frame and section readable at the origin for the representation’s budget. Two prescribed coefficient presentations with equal section densities, remainder bounds $a,b$ and the same positive forced parameter satisfy $\|x_P-x_Q\|_{\rm coeff}\le K_{F,H}e^{-a_*m}(a+b)$ for every natural $m$ with $10(m(4B+2)+2B)<n$. Regular terms have supports containing zero, vanish at identity and have zero local degree-$d$ projection on nonwrapping supports; nonzero forced supports contain zero and satisfy eligibility, support, gauge-invariance and measurability conditions. [`unique_part`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Quince/Unum.lean#L11-L42).

Further estimates concern the post-block Hessian ([`design`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Spins/Muse.lean#L35-L59)), cubic and quartic coefficients ([`tanker`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas/Reservoir.lean#L84-L118)), and trace insertion ([`cloche`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Zn/Arc.lean#L16-L33)). *Status:* theorems under the displayed hypotheses; only statements of these supplementary estimates are included in the notes.

<a id="unit-inputs"></a>

## 2. What it uses

- I.1: $\kappa>0$; III.1: calendars, histories, branches; III.9: reference quantities and Wilson startup; III.10: one-step construction and divisible periods.
- III.11–III.12, III.15, VII.2: purchased conditions; III.14: demand and external records; III.16: strip and Laurent norms and jets. Free-kernel and stationary-branch inputs: III.3 and III.6 (probable).
- Intermediate value theorem, compactness, logarithmic asymptotics, countable diagonal enumeration.

The coupling shift with error $\omega$ is an input to shooting, supplied by III.10 ([`Graces.winnow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Graces/Eagles.lean#L33-L50)). Positivity of $\kappa$ comes from [`slopeConstant_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176).

<a id="unit-strategy"></a>

## 3. Strategy

Choose stage data before factors, then costs, protection, delays, barrier and wait. Maxima combine floors; persistent increases combine delays and waits. Long plateaux provide comparison windows; exponential side growth pays volume demands. Shooting narrows continuous Wilson families into successive coupling bands until the level-zero coupling equals $\bar\beta$. The shooting windows are $[\bar\beta+(\kappa/2)s_m,\bar\beta+2\kappa s_m]\subset\mathfrak B_m$.

<a id="unit-steps"></a>

## 4. Steps

1. **Exhaustion.** Long plateaux meet entry and window thresholds; one period offset pays the finite first plateau. [`Program.exhaust`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L41-L84), [`Wait.ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L137-L239).
2. **Narrowing.** Endpoint drift inequalities straddle the next window; first and last hitting points give a subinterval mapping entirely into it. Iterate downward. [`gates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L81-L90), [`narrow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L18-L49), [`steps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L112-L154).
3. **Running law.** The coupling error is bounded by $\sum_{k=1}^m\omega_{J_k}=o(s_m)$ using $J_k\to\infty$. [`trajectory`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L23-L53).
4. **Diagonal payment.** Raise entry couplings above double exponentials of finite partial sums of array entries. Since $J_m\to\infty$, every fixed row is eventually included. [`eventuallyPaid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeDiagonalClockRequest.lean#L52-L79).
5. **Composition.** Combine sheet and native suppliers, joint and trace purchases and persistent payments by maxima of floors and transitivity of delay and wait bounds. Choose the schedule only after these increases, then assemble the run. [`sailsW`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Fiscal.lean#L97-L169), [`plentifulWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean#L26-L81), [`engageWithCustodyFactor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/PeriodConstruction.lean#L30-L47).
6. **Analytic gains.** Move differences from vanishing kernels onto crosses: their two bounds give $L^{-2}$, fine-site summation gives $L^4$, and $d$ differences give $L^{-d}$. Reflection cancels odd terms; local projection leaves exponentially small wrapping contributions. [`pullback_gain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Pullback.lean#L56-L110), [`mirror_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows/Shape.lean#L54-L70), [`unique_part`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Quince/Unum.lean#L11-L42).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

Factor-dependent costs require later persistent thresholds. Shooting needs full-family continuity and band membership throughout each interval. The $\kappa/4$ drift bound separates endpoints; $j^{-2}$ controls accumulated error. Each row is paid eventually; the zeroth post-$L$ row needs separate all-level payment.

<a id="unit-notation"></a>

## 6. Notation

$m=0$ is coarsest, $N$ finest; $p$ indexes volume, $j$ stages. $s_m=\sum_{i<m}\log L_i$, $\kappa=11C_G/(24\pi^2)$, $\hat\beta_m=\bar\beta+\kappa s_m$, $\mathfrak B_m=[\hat\beta_m/2,2\hat\beta_m]$, $M_m=e^{(\log\log\hat\beta_m)^2}$, $t_m=\hat\beta_m^{-1/2}M_m$, $B_m=\lceil(\log\hat\beta_m)^2\rceil$, $R_m=(J_{m+1}+3)L_m$. In read-out, $n,B,a_*$ are side, cover size, support exponent; $K_{F,H}$ depends on the frame and holonomy tests. $\mathrm{span}_{ij}$ is transition support; a prediction is a predicate on the factor recording all choices. Stage records, protection and admitted entrance conditions are [`Stage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L45-L61), [`Protection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L88-L92) and [`Paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162).

<a id="unit-limitations"></a>

## 7. What remains unexplained

Purchased predicates need comparison with their owning units. Underlying analytic suppliers and dictionaries lack independent verification here; drift normalization against III.9 remains unresolved. Odd-cancellation scenes, coefficient and readability interfaces and auxiliary parameters need fuller mathematical accounts. Supplementary Hessian, coefficient-extraction and trace-insertion proofs remain unexplained.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/III-2.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md), [III.1](III-1.md), [III.10](III-10.md), [VII.2](VII-2.md), [III.12](III-12.md), [III.7](III-7.md), [VII.1](VII-1.md), [III.16](III-16.md), [III.6](III-6.md), [II.1](II-1.md), [III.3](III-3.md), [III.9](III-9.md), [III.11](III-11.md), [III.4](III-4.md), [III.15](III-15.md), [II.2](II-2.md), [VIII.1](VIII-1.md), [III.5](III-5.md), [VII.6](VII-6.md), [VII.4](VII-4.md), [IV.1](IV-1.md).

**Referenced by:** [III.12](III-12.md), [III.13](III-13.md), [III.10](III-10.md), [III.9](III-9.md), [III.11](III-11.md), [VIII.1](VIII-1.md), [III.4](III-4.md), [VII.1](VII-1.md), [III.15](III-15.md), [III.6](III-6.md), [III.14](III-14.md), [III.1](III-1.md), [VII.4](VII-4.md), [III.7](III-7.md), [V.2](V-2.md), [VII.2](VII-2.md), [II.1](II-1.md).

## Lean source

**Source allocation:** 18,156 attributed lines; 2,085 line-counted declarations; 2,536 assigned declaration names. Of the assigned names, 2,491 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- proof of [`plentifulWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean#L26-L81) — 6,253 lines.
- proof of [`joinExpensesShipWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L28-L119) — 4,674 lines.
- proof of [`selectRunWithTreasuryPeriod_preselected_quote_orders_postnumeric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L99-L114) and the results it chains to — 4,010 lines.
- proof of [`joinRadarsShipWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L133-L144) — 2,398 lines.
- work package [`YM/Price/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price) — 406 lines.
- work package [`YM/Shoot/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot) — 228 lines.
- proof of [`richFaresWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Fares.lean#L26-L85) — 164 lines.
- work package [`YM/Integration/NativeSelection/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection) — 17 lines.
- work package [`YM/RG17/Clearance/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Clearance) — 6 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`Calendar.blocks_go`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L70-L72)
- [`Axial.viable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L137-L142)
- [`verdant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas/Mails.lean#L55-L94)
- [`Run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48)
- [`Tableau`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Luna/Cuts.lean#L18-L24)
- [`bountyV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Fiscal.lean#L22-L23)
- [`Perceived`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Fiscal.lean#L63-L79)
- [`Amplify`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Train/Miracles.lean#L21-L26)
- [`reapsY`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Train/Wheels.lean#L77-L103)
- [`constructionRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28)
- [`Plan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L18-L20)
- [`TreasuryFunded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L35-L38)
- [`PaidRequests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeDiagonalClockRequest.lean#L45-L48)
- [`StagePaid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePostLengthPayment.lean#L19-L20)
- [`postnumeric_quote_diagonal_pair_requests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodClock.lean#L31-L39)
- [`PostnumericPreselection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L31-L46)
- [`Prediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedCompanySelection.lean#L23-L24)
- [`AllPrices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedPredictionSupply.lean#L13-L14)
- [`Always`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedPredictionSupply.lean#L16)
- [`plentiful`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean#L84-L87)
- [`richFares`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Fares.lean#L88-L91)
- [`Extras`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Resources.lean#L45-L48)
- [`Schedule.Gentle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L129-L130)
- [`Schedule`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L28-L34)
- [`CompleteWeak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L35)
- [`Directed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L26-L36)
- [`Directed.Program`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L65-L72)
- [`hops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Graces/Eagles.lean#L21-L27)
- [`Mallow.faces`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Mallow/Pediment.lean#L41-L45)
- [`AsDivisors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L21)
- [`Factor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Roost/Foundry.lean#L26-L50)
- [`Bandage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Stage/Iris.lean#L21-L35)
- [`Orders`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Dome.lean#L64-L68)
- [`Draft`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Dome.lean#L70-L77)
- [`WithStage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Dome.lean#L81-L85)
- [`raise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Merchant.lean#L36)
- [`base`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Fusion.lean#L58)
- [`toll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_REGULAR_ESTIMATE/Geometry.lean#L50)
- [`AtTop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/RECIPE_STARTUP_PORT/Layout.lean#L43)
- [`Delays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L115-L120)
- [`Wait`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L134-L139)
- [`Rolls`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L50-L53)
- [`Rolls.eventually_large`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L55-L77)
- [`Wait.lead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L109-L127)
- [`Bar.bill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L43-L47)
- [`Bar.allocated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L64-L84)
- [`scaled_lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L115-L121)
- [`scaled_upper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L123-L130)
- [`Program`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L22-L28)
- [`Program.book`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L89-L104)
- [`DelayLe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Post.lean#L34-L38)
- [`Levels`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131-L134)
- [`History`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L204-L206)
- [`Transfer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L223-L227)
- [`History.Selected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L234-L240)
- [`Calendar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L64-L73)
- [`Calendar.Fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L97-L118)
- [`Patch.radius`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L51)
- [`Need`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar/Base.lean#L33-L35)
- [`Affords`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar/Base.lean#L43-L45)
- [`Decal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean#L18-L20)
- [`Contemple`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L68-L71)
- [`deviation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L44-L49)
- [`Curve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L51-L57)
- [`band`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L63)
- [`Recipe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L67-L71)
- [`Lives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L74-L79)
- [`Recipe.Relays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L88-L91)
- [`Recipe.Starter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L93-L96)
- [`Recipe.Issues`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L99-L106)
- [`successful`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L156-L159)
- [`floorBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L57)
- [`ceilBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L58)
- [`limits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L60-L68)
- [`Drifting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L70-L71)
- [`Drifting.pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L73-L79)
- [`Competes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L95-L98)
- [`Gallery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L41-L44)
- [`Trace.Over.gang`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-iii-2-1"></a>

- **K-III.2.1** [`Sheet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35) *(numbered result)* — A record of numerical and kernel data fixed before any block ratios are chosen.

<a id="k-iii-2-2"></a>

- **K-III.2.2** [`Large`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L39-L48) *(numbered result)* — A predicate stating that numeric largeness conditions hold at a given smoothing stage for a threshold L.

<a id="k-iii-2-3"></a>

- **K-III.2.3** [`Protection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L88-L92) *(numbered result)* — A record freezing a parameter theta that accommodates all contributing requests after L is chosen.

<a id="k-iii-2-4"></a>

- **K-III.2.4** [`Bar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L123-L127) *(numbered result)* — A record giving a smallness barrier independent of the first spacing.

<a id="k-iii-2-5"></a>

- **K-III.2.5** [`enters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L90-L106) *(numbered result)* — For a simple group and stage past the first, waiting long enough in the coarser scale ensures beta, scale, length, and volume-bill conditions hold uniformly.

<a id="k-iii-2-6"></a>

- **K-III.2.6** [`Paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162) *(numbered result)* — A record stating that a bundle of entrance-gate and level-0 conditions holds for a schedule of levels.

<a id="k-iii-2-7"></a>

- **K-III.2.7** [`ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L137-L239) *(key result)* — There exists a level schedule for which all requested estimates (the whole calendar) are paid.

<a id="k-iii-2-8"></a>

- **K-III.2.8** [`races`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L67-L82) *(key result)* — For a simple gauge group, if the recipe issues data at every scale and the coupling drifts, there is a trajectory that stays and produces a selected object.

<a id="k-iii-2-9"></a>

- **K-III.2.9** [`sailsW`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Fiscal.lean#L97-L169) *(main result)* — For a simple gauge with kernel choices, there exists a sheet with prices and parameters such that for all tariffs and scopes a perceived-estimate package holds along suitable scale sequences.

<a id="k-iii-2-10"></a>

- **K-III.2.10** [`design`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Spins/Muse.lean#L35-L59) *(numbered result)* — A sharp post-block Hessian bound for the isolated step under unscaled derivative bounds.

<a id="k-iii-2-11"></a>

- **K-III.2.11** [`richFaresWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Fares.lean#L26-L85) *(key result)* — Under a prediction and pricing hypothesis, there is a sheet, price map and eventual threshold giving the joint RG/UV purchase with prediction retained.

<a id="k-iii-2-12"></a>

- **K-III.2.12** [`joinRadarsShipWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L133-L144) *(key result)* — There exist a sheet and prices such that the joint same-factor procurement with prediction holds for all later choices of parameters and payments.

<a id="k-iii-2-13"></a>

- **K-III.2.13** [`company`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedCompanySelection.lean#L49-L106) *(key result)* — The complete native purchase can be performed with an additional prediction holding on the same emitted factor.

<a id="k-iii-2-14"></a>

- **K-III.2.14** [`tanker`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas/Reservoir.lean#L84-L118) *(key result)* — Given a gauge and bounds, one can choose atoms and widths such that sequences of lattice observables with jet-bounded records are approximated by an emitted base up to fifth-order remainders.

<a id="k-iii-2-15"></a>

- **K-III.2.15** [`tunes9`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows/Pads.lean#L25-L32) *(numbered result)* — Given small epsilon on steps, there is a later delay schedule beyond which Pads9 holds for all further delays.

<a id="k-iii-2-16"></a>

- **K-III.2.16** [`purchasing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows/Medal.lean#L24-L45) *(key result)* — For r>-1, the Medal property holds eventually in x with the power beta^r as the parameter.

<a id="k-iii-2-17"></a>

- **K-III.2.17** [`wallet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows/Money.lean#L31-L43) *(key result)* — For large s, every admissible horn function with bounded weight gives a gale function that is smooth to order n at 0 and whose order-2 norm is at most a power of beta.

<a id="k-iii-2-18"></a>

- **K-III.2.18** [`yields`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Artes/Events.lean#L44-L55) *(numbered result)* — Counter and inspected hypotheses with an amplification condition give the cadre property.

<a id="k-iii-2-19"></a>

- **K-III.2.19** [`handbook'`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows/Roads.lean#L25-L68) *(numbered result)* — For a family of admissible horn functions, the order-2 norm of the associated gale function at 0 is controlled in temperature.

<a id="k-iii-2-20"></a>

- **K-III.2.20** [`mirror_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows/Shape.lean#L54-L70) *(key result)* — The sum of the paved expansions at z and -z is of order η^2 in the order-2 norm, i.e. the odd parts cancel to the right order.

<a id="k-iii-2-21"></a>

- **K-III.2.21** [`mastering`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas/Weather.lean#L18-L38) *(key result)* — For simple gauge and kernel choices, there exist scales and constants with fine bases such that, for any tolerances, performance data exist.

<a id="k-iii-2-22"></a>

- **K-III.2.22** [`flux_cap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas/Flux.lean#L24-L114) *(key result)* — For a simple gauge group there exist a price function and constants such that flux-capped bounds hold under horizontal calculation hypotheses, with explicit parameter dependence.

<a id="k-iii-2-23"></a>

- **K-III.2.23** [`pierce`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas/Return.lean#L82-L123) *(key result)* — For simple gauge, there is a price function and constants such that along sequences of steps the limiting path data satisfy uniform bounds and records.

<a id="k-iii-2-24"></a>

- **K-III.2.24** [`companyK`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Linger.lean#L23-L51) *(key result)* — A complete purchase of targets, expenses, and delays exists producing, after all later delays and payments, directed budgets and a sheltered alloy with the required rate and bounds.

<a id="k-iii-2-25"></a>

- **K-III.2.25** [`evening`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Spins/Sundial.lean#L24-L36) *(key result)* — For large x, the derivative at 0 of the display map differs from the main stroke by at most x^{-p} for every p, uniformly over admissible tubes.

<a id="k-iii-2-26"></a>

- **K-III.2.26** [`dissent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Spins/Meteor.lean#L64-L123) *(key result)* — For large x, the difference of the tube's display map vanishes at 0 with derivative at 0 bounded by x^{-p} for every power p.

<a id="k-iii-2-27"></a>

- **K-III.2.27** [`unique_part`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Quince/Unum.lean#L11-L42) *(key result)* — Two coefficient expansions with the same density and remainder bounds have difference in coefficient size exponentially small in the number of steps m.

<a id="k-iii-2-28"></a>

- **K-III.2.28** [`trendH`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shunt/Ready.lean#L24-L37) *(key result)* — For large x, any representative with the tool, merchant and depot properties admits a combat witness at every admissible level and axis.

<a id="k-iii-2-29"></a>

- **K-III.2.29** [`plentifulWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean#L26-L81) *(key result)* — For a fixed calendar and funded prediction there exist a sheet, prices and thresholds yielding the full plentiful construction retaining the prediction.

<a id="k-iii-2-30"></a>

- **K-III.2.30** [`flows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Vote.lean#L18-L24) *(key result)* — For a simple gauge group, any delay data can be enlarged so that any paid-up level system over further delays is acclaimed.

<a id="k-iii-2-31"></a>

- **K-III.2.31** [`taxes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Ansel.lean#L43-L52) *(key result)* — For a simple gauge, the stored quantitative property holds for all sufficiently large scale x.

<a id="k-iii-2-32"></a>

- **K-III.2.32** [`Inspires`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Weir/Dolio.lean#L36-L64) *(main result)* — For simple gauge groups, a large-scale representation with sight and age properties is wholesome, with uniform constants, at all heights in range.

<a id="k-iii-2-33"></a>

- **K-III.2.33** [`rocket`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Swift/Troop.lean#L14-L34) *(key result)* — For a simple gauge group, there exist constants D, C such that for large x, any representation and dart satisfying the hypotheses obey a quantitative bound.

<a id="k-iii-2-34"></a>

- **K-III.2.34** [`attain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Earn.lean#L22-L52) *(key result)* — Under nest, skill and ordeal hypotheses on a simple graph, the sceptre property holds for the given data.

<a id="k-iii-2-35"></a>

- **K-III.2.35** [`vroom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Liturgy.lean#L23-L48) *(numbered result)* — For any sheet there is a threshold function beyond which a derived sheet satisfies a stated property.

<a id="k-iii-2-36"></a>

- **K-III.2.36** [`creation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Zn/Onus.lean#L43-L51) *(key result)* — For large x, any made representation with sight at a dart satisfies the craft property with given parameters.

<a id="k-iii-2-37"></a>

- **K-III.2.37** [`embalms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L33-L50) *(key result)* — Given a relay condition, any waiting condition can be strengthened so that every family paid for it satisfies the firing property in every dimension.

<a id="k-iii-2-38"></a>

- **K-III.2.38** [`post_phase`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Eon.lean#L39-L59) *(key result)* — For sufficiently large patch size, a phase configuration exists for all large scales over any window length, at levels j≥5 and i≥4.

<a id="k-iii-2-39"></a>

- **K-III.2.39** [`post_to`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Tael.lean#L17-L19) *(key result)* — For any gauge, patch, kernel choices and parameters with positive alpha, there exist positive eta and nonnegative D such that the summit property holds.

<a id="k-iii-2-40"></a>

- **K-III.2.40** [`forwardSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/Road.lean#L35-L80) *(key result)* — Given an ask structure and budget/chart data, one can extend a waiting condition so that, along families paid for it, panels with common arc and angle give the required eventual estimates.

<a id="k-iii-2-41"></a>

- **K-III.2.41** [`pack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Weir/Cement.lean#L19-L59) *(key result)* — For large scale x, a configuration with climate and splendor bounds and no drift satisfies the depot property over all tower heights in range.

<a id="k-iii-2-42"></a>

- **K-III.2.42** [`cloche`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Zn/Arc.lean#L16-L33) *(key result)* — For large x, uniformly in lattice size and configuration, a core observable approximates its midpoint pay value and is smooth with controlled derivative bounds.

<a id="k-iii-2-43"></a>

- **K-III.2.43** [`eventuallyPaid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeDiagonalClockRequest.lean#L52-L79) *(numbered result)* — For any countable family, one admissible numerical delay request satisfies every fixed member eventually.

<a id="k-iii-2-44"></a>

- **K-III.2.44** [`panning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Vale/Sculpt.lean#L42-L54) *(key result)* — The starting section built from a sound hologram abates at the fee weight, i.e. has polynomial vanishing below its weight at every rank.

<a id="k-iii-2-45"></a>

- **K-III.2.45** [`real_difference_division`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Differences.lean#L46-L92) *(key result)* — A real coefficient packet whose n-th differences vanish can be divided by n difference factors, with a representation having smaller width and controlled norm.

<a id="k-iii-2-46"></a>

- **K-III.2.46** [`flow_soft`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Ballast/Slide.lean#L44-L90) *(key result)* — Pre-block transfer maps a kernel of width σ and bound B to flow with reduced width w and bound K·B·L^4/L^(r+1+d), uniformly in block size.

<a id="k-iii-2-47"></a>

- **K-III.2.47** [`selectRunWithTreasuryPeriod_preselected_quote_orders_postnumeric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L99-L114) *(main result)* — For any gauge data there exists a run with campaign satisfying the penalty value, preselection, order bounds, funded treasury/period purchase and a sky structure.

<a id="k-iii-2-48"></a>

- **K-III.2.48** [`allFactorWithTreasuryPeriod_preselected_quote_orders_postnumeric_of_prediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodClock.lean#L44-L179) *(main result)* — There exist a sheet, prices, choices, and a fully paid factor satisfying a prediction together with numerical, post-numerical, order and clock requirements simultaneously.

<a id="k-iii-2-49"></a>

- **K-III.2.49** [`pullback_gain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Pullback.lean#L56-L110) *(key result)* — Pulling back a zero-order-d row along two crosses gains a factor L^(2-d) in strip norm, giving an L^-1 contraction at d=3.

<a id="k-iii-2-50"></a>

- **K-III.2.50** [`large_contraction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/KStep.lean#L130-L146) *(key result)* — For large odd block length the Hessian difference is a contraction uniformly in gate, giving L^(-1/2) decay after block choice.

<a id="k-iii-2-51"></a>

- **K-III.2.51** [`plan_exists`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L28-L31) *(key result)* — For a simple gauge group and any kernel choices, a complete plan (calendar treasury of scales and costs) exists.

<a id="k-iii-2-52"></a>

- **K-III.2.52** [`covariance_moves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian/Stability.lean#L54-L93) *(numbered result)* — If conditional covariances are strip-bounded and the Hessians differ by a strip-bounded amount, the tree covariance and mean vary in a controlled way.

<a id="k-iii-2-53"></a>

- **K-III.2.53** [`buy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L42-L64) *(key result)* — Given a plan with floors met, any delay can be enlarged so that all further delays and payments yield a fully treasury-funded level.

<a id="k-iii-2-54"></a>

- **K-III.2.54** [`names`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar/Basis.lean#L40-L43) *(numbered result)* — For simple gauge group and kernel choices, a naming (charges) data package exists.

<a id="k-iii-2-55"></a>

- **K-III.2.55** [`wishes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar/Vocals.lean#L66-L76) *(numbered result)* — Given sound admissible data, a dialect (finite-word and spectrum data) for the requested operation exists.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

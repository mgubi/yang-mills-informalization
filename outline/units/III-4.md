# III.4. Gaussian integration: change of Gaussian sector, determinants, window law

*Part III — Ultraviolet construction (renormalization group).* 37,956 lines of Lean in 4,737 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is **checked** against the Lean and rewritten by a second model; a final editing round is in progress. It is updated as it improves.


**Part:** III, Ultraviolet construction (renormalization group). **Lean:** about 40 work packages. The main ones are [`YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE) (exact change of variables, gap, windows), [`YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE) and [`YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON) (determinants and the polymer form of a sector), [`YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS), [`YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION) and [`YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS) (Gaussian moments), [`SECTOR_AFFINE_JETS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS), [`SECTOR_COVARIANCE_JETS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS) and [`SELECTED_ORDERED_KERNELS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS) (jets), [`LOCAL_GAUSSIAN_LAWS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS), [`GAUSSIAN_FIELD_ALIGNMENT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT), [`YM/Push/FREE_RESOLVENT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT) and [`YM/RG08/Gaussian/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian) (locality, infinite-volume kernels), [`YM/SectorNext/LARGE_FIELD_REMAINDERS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS), and the constant-producing statements in `Next/STATIONARY`, `MergeProof` and `PhysicalNext/V9_JOINT_ENDPOINT_LOAD`. **Size:** 37,956 lines in 4,737 declarations of the main-theorem closure.

**Conventions.** Lean names are arbitrary (glossary, item 7). "Price", "bill", "cost", "tax", "rent" and "paid" denote numerical bounds or terms of a decomposition. The parameter $x$ is the scale of a step: in applications $x=\hat\beta_m$, the running coupling of the coarse level. Throughout:
- $R(x)=\lceil(\log x)^2\rceil$ is the cluster radius ([`radiusB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22)).
- $t(x)=x^{-1/2}e^{(\log\log x)^2}$ is the small-field threshold ([`temp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L25)).
- $\beta_F(x,L)=x+s_G\log L$ is the coupling one level finer.
- $t_L(x)=t(\beta_F(x,L))$ is the fine-level threshold ([`fiery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L26)).
- $g=\beta^{-1/2}$.
- "For large $x$" means: there is $x_0$, depending only on the constants fixed before it, such that the statement holds for $x\ge x_0$.

## 1. What this unit proves

**Setting.** One block-spin step $S$ maps a fine torus $\Lambda_f$ (side $f=Lc$, block size $L$ odd) to a coarse torus $\Lambda_c$. The push-forward of the density at fixed coarse field $V$ is decomposed (III.1, III.9) into sectors. A sector is given by:
- a store $A$: the large-field data, made of cost cells, aisles and flagged sites, with a partition of unity $\mathrm{bill}_A$ given by an allocation $D$;
- a choice $k$ of gauge-fixing tags;
- a spanning forest $F$ (tree gauge).

The integration variables are the free links of $F$, with product Haar measure. In each sector the unit splits the free links as follows ([`chill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean#L38-L40)):
- **frozen links** $\mathcal F_A$: a parent block of an endpoint lies within distance $10R(x)$ of $A$. These are kept as Haar variables $Y$.
- **active links** $\mathcal A_A$: all others. These are written $u_e=\exp(a_e)\,\nu_e$, with $a_e\in\mathfrak g$ and $\nu=\iota V$ the copy of $V$ on the fine lattice ([`replica`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L35)).

We write $n_a=|\mathcal A_A|\dim\mathfrak g$.

On selected stencils, the step energy contains a sum of affine squares $Q_Y(a)=\tfrac12\lvert Ma+s(Y)\rvert^2$ ([`guide`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Remainder.lean#L37)):
- $M$ (`move`) is a linear map from active coordinates to "slots": linearised plaquette curvatures and block-constraint rows;
- $s(Y)$ (`source`) depends on the frozen links.

From these the unit builds three objects:
- the **precision** $W=M^{\top}M$ ([`Rows.gram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Remainder.lean#L27));
- the **covariance** $C=W_{\mathcal W}$, the symmetrised windowed inverse of $W$, with windows of coarse radius $R(x)/20$ ([`fog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Chosen.lean#L69-L70));
- the **mean** $m(Y)=-(W^{\mathrm{per}})^{\top}M^{\top}s(Y)$, the windowed minimiser of $Q_Y$ ([`meanLog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Chosen.lean#L72-L74)).

The unit proves four things:
- an *exact* Gaussian change of variables in every sector of every RG step;
- the gap and locality of $W$ and $C$, uniformly in volume, store and field;
- local expansions of the log-determinants, and a polymer form of each sector with large-field suppression;
- Gaussian moment bounds, jet bounds, and the production of all post-$L$ constants.

**Proposition III.4.1 (exact Gaussian change of variables in one sector).** Fix the following data:
- a step $S$ with a tube $T$ funded by a teller ($P.\mathrm{Funds}(S,T)$, which includes well-posedness of the gauge fixing);
- a representation $R$ of the fine density satisfying the estimate package `Lawful`, with $\beta=\beta_R$;
- $x$, $V$, $k$, $A$, $F$, an allocation $D$ and a cutoff profile $\chi$;
- a chart ratio $J$, meaning:
  - $J$ is real-analytic and positive on a ball $B_{\rho_J}\subset\mathfrak g$;
  - $J(0)=1$;
  - $\exp$ is injective on $B_{\rho_J}$;
  - $J_{\rm sc}\,J(a)\,da$ is mapped by $\exp$ onto normalised Haar measure restricted to $\exp B_{\rho_J}$;
- a number $d>0$.

Let $C$ be a matrix on the active coordinates and $m$ a map from frozen arrays to active coordinates. Assume they are *permitted* ([`Permitted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L95-L103)):
- $C\succ0$, $\beta>0$, $m$ measurable, and $4d<\rho_J$;
- the *standing condition* ([`Standing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean#L51-L55)): on the support of $\mathrm{bill}_A\cdot\mathrm{lik}_k$, every active link equals $e^{a_e}\nu_e$ with $\lvert a_e\rvert\le d$.

Let $\Phi_{A,k}=\mathrm{bill}_A\cdot\mathrm{exposed}_R\cdot\mathrm{enters}_{T,\beta,k,V}$ be the sector integrand. Here $\mathrm{exposed}_R$ is the interacting density of $R$, and $\mathrm{enters}$ is the tagged block-spin kernel times $e^{-\beta\cdot\text{gap energy}}$. Then the following hold ([`Licenses`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L127-L135)):
- (a) $\Phi_{A,k}$ is integrable on the slice;
- (b) for every $Y$, $\Psi(Y,\cdot)\in L^1(\gamma_C)$, and $\Psi\in L^1(\mathrm{Haar}^{\mathcal F_A}\otimes\gamma_C)$;
- (c) the identity
$$\int\Phi_{A,k}\,d\mathrm{Haar}^{F}=\mathrm{pref}_S(\beta)\,J_{\rm sc}^{\,\lvert\mathcal A_A\rvert}\,(2\pi g^2)^{n_a/2}(\det C)^{1/2}\int\mathrm{Haar}^{\mathcal F_A}(dY)\int\gamma_C(dz)\,\Psi(Y,z).$$

Here $\gamma_C=N(0,C)$. Set $a=m(Y)+gz$, and let $U$ be the configuration with frozen links $Y$, active links $e^{a_e}\nu_e$ and tree links $1$. Then ([`dyed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L63-L71))
$$\Psi(Y,z)=\tilde J_d(a)\,\chi_d(a)\,\mathrm{bill}_A\,\mathrm{lik}_k(U)\,\mathrm{exposed}_R(U)\,\exp\!\Big(-\beta\,\overline{\mathrm{res}}(Y,U,a)-\beta Q_Y(m(Y))+\eta\cdot z+\tfrac12 z\cdot(C^{-1}-W)z\Big).$$
In this formula:
- $\eta=-g^{-1}(Wm(Y)+M^{\top}s(Y))$;
- $\overline{\mathrm{res}}$ is the orientation-averaged step energy minus the affine squares;
- $\tilde J_d$ equals $J$ for $\lvert a_e\rvert\le 2d$, and $\chi_d$ is a smooth cutoff equal to $1$ for $\lvert a_e\rvert\le d$.

Equivalently, $\mathrm{pref}\cdot\Psi(Y,z)=e^{\frac12 z\cdot C^{-1}z}\,r(Y,m(Y)+gz)$, where $r$ is the integrand in Lebesgue log-coordinates ([`recolored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L73-L93)). The identity holds for *every* permitted $(C,m)$. Nothing is estimated, and no locality enters.
*Status:* theorem.
*Lean:* [`authorized_change`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L137-L192).

**Proposition III.4.2 (licence of every committed RG step; the transfer identity).** Let $F$ be a directed RG run (III.9) whose delays satisfy `Ringing` and `Cosmos` (the latter collects the per-step conditions [`Starcash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Handoff.lean#L57-L71)). Let $m<N$, let $p$ be a period, and let $R$ be a representation at level $m+1$ that lies on the selected history (`Lives`) with $\beta_R\in[\hat\beta_{m+1}/2,\,2\hat\beta_{m+1}]$. Write:
- $S$ for the step from level $m+1$ to level $m$;
- $x=\hat\beta_m$;
- $j=J(m+1)$ and $i=J(m)$ for the stage indices;
- $d=a_{ji}\,t(\hat\beta_{m+1})$.

Then:
- $d>0$, $2d<\rho_{\rm first}$ and $4d<\rho_J$;
- $\lvert\log J(t)\rvert\le E_{ji}\lvert t\rvert^2$ for $\lvert t\rvert\le4d$;
- there is $\kappa>0$ such that for all allocations $D$, forests $H$ and profiles $\chi$:
  - (i) the portion-cost bound with constant $\kappa$ holds;
  - (ii) for all $A,k,V$, the chart is admitted ([`Admitted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Stamped.lean#L36-L42)); when $\mathrm{flags}(A)=\mathrm{flags}_{t(x)}(V)$, also $C=W_{\mathcal W}\succ0$, $W\succ0$ and `Authorized` hold; and the conclusions of III.4.1 hold with $C=W_{\mathcal W}$, $m=$ `meanLog` **for every store** (for wrong flags trivially, since $\mathrm{bill}_A\equiv0$);
  - (iii) for every $V$:
$$S.\mathrm{push}(\beta,R.\mathrm{eval})(V)=\sum_A\mathrm{sieve}(V)\sum_k\mathrm{pref}\,J_{\rm sc}^{\lvert\mathcal A_A\rvert}(2\pi g^2)^{n_a/2}(\det C_{A,k,V})^{1/2}\iint\Psi\,d\gamma_{C}\,d\mathrm{Haar}.$$

Here $\mathrm{sieve}(V)=\exp(-\beta\cdot\text{orientation-averaged coarse energy of }V)$.
*Status:* theorem. Its hypotheses `Ringing`, `Cosmos`, `Lives` and the band are produced in III.9 and in III.4.12.
*Lean:* [`committed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Handoff.lean#L132-L182), [`displaced_wrong`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Stamped.lean#L124-L137).

**Proposition III.4.3 (gap and locality of the actual precision and covariance).** Fix $G$, a patch $P=(L,J)$ and a teller whose kernel satisfies `Branches`. There are $v,K,\eta,b,E>0$ (post-$L$ constants) with the following property. For large $x$, take any step with patch $P$ and coarse side $c\ge100(1+R(x))$, any funded tube, and any $A,F,k,V$ with $\mathrm{flags}(A)=\mathrm{flags}_{t(x)}(V)$. Then:
- (i) $\eta\lvert a\rvert^2\le a\cdot Wa$ for all active $a$ ([`Gap.not_flat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gap.lean#L242-L264));
- (ii) $W$ has exponential off-diagonal decay in the Schur norm: $\sup_i\sum_j e^{v\,\mathrm{dist}(i,j)}\lvert W_{ij}\rvert\le K$, and the same for columns, where $\mathrm{dist}$ is the coarse distance between the parent blocks of the coordinates;
- (iii) $\lVert C-W^{-1}\rVert_{\rm Schur}\le E\,e^{-bR(x)/60}$, and $C\succ0$;
- (iv) $C\le K'$ for some post-$L$ constant $K'$ ([`open_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SHARP_NORMALIZED_TAIL/Apertures.lean#L43-L55)).

The constants do not depend on the volume, the store, the forest or the field.
*Status:* theorem.
*Lean:* [`opaqueCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Chosen.lean#L102-L143).

**Proposition III.4.4 (window law).** Let $\sigma,\eta>0$, $K\ge0$, and let $B$ be a counting function: for the positions $p$, $\sum_j e^{-v\,\mathrm{dist}(i,p_j)}\le B(v)$ ([`Revenue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L125)). There are $u,E,g>0$ such that for all large $r$ the following holds. Let $A$ be a finite symmetric matrix with:
- Schur decay $\lVert e^{\sigma\,\mathrm{dist}}A\rVert_{\rm Schur}\le K$;
- gap $\eta$;
- windows $\mathcal W_i$ that contain the $r$-ball around $i$.

Let $L$ be the windowed inverse, $L_{\cdot i}=(A|_{\mathcal W_i})^{-1}e_i$ extended by zero, and $A_{\mathcal W}=\tfrac12(L+L^{\top})$ ([`clouded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L70)). Then:
- $\lVert A_{\mathcal W}-A^{-1}\rVert_{\rm Schur}\le Ee^{-ur}$;
- $A_{\mathcal W}\ge g=\eta/(2(K+1)^2)$ and $A_{\mathcal W}\succ0$.

A strengthened form ([`same_purchase`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/Relative.lean#L72-L118)) gives a rate $s\in(0,\sigma]$ and a constant $K_1$ such that $A$, $A^{-1}$, $L$ and $(A_{\mathcal W})^{-1}$ all have $s$-weighted Schur norm $\le K_1$, and $\lVert e^{s\,\mathrm{dist}}(L-A^{-1})\rVert_{\rm Schur}\le K_1e^{-sr}$.
*Status:* theorem. The constants depend only on $(\sigma,\eta,K,B)$.
*Lean:* [`Schur.windows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L184-L239).

**Proposition III.4.5 (log-determinants as local path series).** Let $A\succ0$ with windows $\mathcal W$ ($i\in\mathcal W_i$). Let $P_u$ be the windowed inverse of $A+u$, and $\Delta_u=(A+u)P_u-1$. Assume the `Priced` bounds ([`Priced`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Walls.lean#L79-L89)), with $C\ge1$ and $q<1$, in weighted Schur norms:
- $\lVert A\rVert\le C$;
- $\lVert(A+u)^{-1}\rVert,\ \lVert P_u\rVert\le C/(1+u)$;
- $\lVert\Delta_u\rVert\le q/(1+u)$;
- $\lVert S\rVert\le q$, where $S=AA_{\mathcal W}-1$.

Assume also $A_{\mathcal W}\succ0$. Then
$$\log\det A=\sum_i\Big(\ell_i+\sum_{n\ge0}r_{i,n}\Big),\qquad \log\det(1+S)=\sum_i\sum_{n\ge0}\frac{(-1)^n(S^{n+1})_{ii}}{n+1},\qquad \log\det A_{\mathcal W}=-\log\det A+\log\det(1+S),$$
with:
- $\ell_i=\int_0^\infty[(1+u)^{-1}-(P_u)_{ii}]\,du=(\log A|_{\mathcal W_i})_{ii}$, the single-window letter;
- $r_{i,n}=-\int_0^\infty(P_u(-\Delta_u)^{n+1})_{ii}\,du$ and $\int\lvert\cdot\rvert\le Cq^{n+1}$.

All series converge absolutely. Moreover ([`labeled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Alphabet.lean#L196-L208)), $r_{i,n}$ and the terms of $\log\det(1+S)$ unwind into sums over index paths of length $n+1$ (path letters). Each path letter is bounded by $Cq^{n+1}$ times the product of the weights along the path.
*Status:* theorem.
*Lean:* [`Priced.chains`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Series.lean#L203-L227).

**Proposition III.4.6 (relative normalisation of a sector and its localisation).** Let $K_F$ be the flat kinetic precision: the Gram matrix of the move at $V=1$ with empty store, on all free links of $F$.

(i) $\det K_F$ does not depend on the forest or on the gauge tags ([`Native.shared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Bore.lean#L303-L305)).

(ii) Assume:
- the tube is funded and its path data are those of $R$;
- the certificate `Certified` holds (produced by `late_price`);
- $J$ is a local chart ratio, $\beta>0$, and the threshold of $R$ is $t(x)$.

Then on every sector point $p=(A,F,k,V,Y,z)$ with matching flags, the Gaussian-sector integrand factorises as
$$\text{freight}(p)=\text{loading}(V)\,e^{\Lambda(p)},\qquad \text{loading}(V)=\text{banker}(V)\,\mathrm{pref}(\beta)\,e^{v_R\lvert\Lambda_f\rvert}\,\mathrm{spare}(\beta)^{\lvert F^{\rm free}\rvert}(\det K_F)^{-1/2}>0.$$
Here $\text{freight}=J_{\rm sc}^{\lvert\mathcal A\rvert}(2\pi g^2)^{n_a/2}(\det C)^{1/2}e^{\frac12 z\cdot C^{-1}z}\,\tilde J\cdot(\text{noise})\cdot e^{\mathrm{exponent}_R}$, and $\mathrm{spare}(\beta)=(2\pi g^2)^{\dim\mathfrak g/2}J_{\rm sc}$ is the Gaussian normalisation per link. The exponent is
$$\Lambda(p)=-\beta\,(\text{affine energy})+\eta\cdot z+\tfrac12z\cdot(C^{-1}-W)z+\kappa(p)+\sum_e\log\tilde J(a_e)+(\text{tails}),$$
$$\kappa(p)=-\lvert\mathcal F_A\rvert\log\mathrm{spare}(\beta)-\tfrac12\big(\log\det W-\log\det K_F\big)+\tfrac12\log\det(WC).$$

(iii) Under the counting hypotheses `parcel`, $\kappa(p)=-\lvert\mathcal F_A\rvert\log\mathrm{spare}+\sum_e\mathrm{sect}_e+I+\mathrm{Sh}$ ([`book_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Shards.lean#L34-L39)), where:
- $\mathrm{sect}_e=-\tfrac12\sum_{\rm colours}[\ell_e(\text{actual})-\ell_e(\text{flat})]$, the difference of the single-window letters of III.4.5 for the identity-completed full precision at $(A,V)$ and at $(\emptyset,1)$;
- $I$ is the corresponding difference of path letters;
- $\mathrm{Sh}=\tfrac12\log\det(1+S)$.

(iv) Regrouping ([`rate_pass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L36-L48)) gives $\kappa=\sum_{o}\mathrm{rent}_o+\mathrm{far}+I+\mathrm{Sh}$:
- $o$ runs over the cores of $A$ (its $500R(x)$-connected pieces);
- $\mathrm{rent}_o$ is the sum of $\mathrm{sect}_e-\log\mathrm{spare}\cdot1_{e\in\mathcal F_A}$ over links within $200R(x)$ of $o$;
- $\mathrm{far}$ is the same sum over links farther than $200R(x)$ from $A$.

*Status:* theorem.
*Lean:* [`Dyed.cardinal_spin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Prism.lean#L102-L168), [`Dyed.keptEarly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Prism.lean#L50-L54), [`Dyed.spoolLift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Prism.lean#L56-L63).

**Proposition III.4.7 (polymer form of a sector, with large-field suppression).** Fix:
- a teller and a patch $D$ with `Branches`;
- a fund, and a chart ratio $J$;
- $e\ge0$, $L\ge0$, $a>0$ and $0<\alpha$ with $2\alpha\le a/2$, and the further positive constants of the certificates.

Then for large $x$ the following holds. Let $y=\mathrm{retime}(x)$ (with $x\le y\le x^2$ and $t(y)=x^{-1/2}\mathrm{hot}(x)$) and $z=\beta_F(x,L)$, where $\mathrm{hot}(s)=e^{(\log\log s)^{3/2}}$. Take every step with patch $D$ and every sector datum $v$ (chart $J$) satisfying:
- the step bundle `Helps` at scale $y$, which includes $\beta\in[z/2,2z]$ and the threshold $=z^{-1/2}\mathrm{hot}(z)$;
- the certificates `Stock`, `Certified` and `parcel` at $y$;
- the hypothesis `noises`.

For such data there is a decomposition ([`Plate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Plotter.lean#L19-L28))
$$\Lambda(p)=\sum_{o\in\mathrm{cores}(A)}\mathrm{base}_o(p)+\sum_X\mathrm{aux}_X(p)\qquad(\text{matched }p).$$
In it:
- $\mathrm{base}_o$ depends only on the data in the $500R(y)$-neighbourhood of $o$;
- $\mathrm{aux}_X$ depends only on the data near the local support $X$;
- both are lattice-covariant;
- $\mathrm{base}_o\le-\alpha\,\mathrm{hot}(z)^2\lvert o\rvert$, where $\lvert o\rvert$ counts cost cells, aisles and flags;
- $\lvert e^{\mathrm{aux}_X}-1\rvert\le f_X$, with $f\ge0$ satisfying the polymer bound $\sum_{X\ni y'}f_Xe^{e\,N(X)}\le y^{-1/48}$ at every site $y'$, where $N$ is the cover number ([`Hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean)).

*Status:* theorem.
*Lean:* [`foreshadows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L96-L134), with hypotheses [`Helps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L82-L95).

**Proposition III.4.8 (moments under the sector law).** For every $L>0$ and $k\in\mathbb N$ there is $D\ge1$ with the following property. Take:
- any finite index set $I$ and any probability space $(\Omega,\mu)$;
- any $C\succeq0$ on $\mathbb R^{I\times\dim\mathfrak g}$ with $C\le L$;
- any family $(r_i)_{i\in Y}$ of measurable insertions with $\lvert r_i(\omega,z)\rvert\le w_ie^{d_i(1+\lvert z_{a_i}\rvert^2+\lvert z_{b_i}\rvert^2)}$ and $\sum_{i:\,x\in e(i)}d_i\le c=1/(24L)$ at every site $x$;
- any $\rho,H\ge0$ and sets $P,J\subset I$;
- any measurable $v$ with $\lvert v\rvert\le H(1+\sum_{i\in P}\lvert z_i\rvert^2)^k$ that vanishes unless $\lvert z_i\rvert\ge\rho$ for all $i\in J$.

Then $f=v\prod_{i\in Y}r_i\in L^1(\mu\otimes\gamma_C)$ and
$$\int\lvert f\rvert\,d(\mu\otimes\gamma_C)\le H\,D\,(1+\lvert P\rvert\dim\mathfrak g)^{2k+1}\,e^{-c\lvert J\rvert\rho^2}\,2^{\dim\mathfrak g\,\lvert J\rvert}\prod_{i\in Y}\big(e^{c}\,4^{\dim\mathfrak g}w_i\big).$$
The sector law is by definition $\mathrm{Haar}^{\mathcal F}\otimes\gamma_{C}$ with $C=W_{\mathcal W}$. It is applied in this form, through `r4`, with $\mu$ = Haar on the frozen links (probable, from the applications). Moreover:
- ([`r4`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Ember.lean#L69-L111)) Let $\lvert q_i\rvert\le x_i^2(1+\lvert z_{a_i}\rvert^2+\lvert z_{b_i}\rvert^2)$ with $0\le x_i\le1$ and $\sum_{i\ni\text{site}}8x_i\le c$. Then $\int(\prod_i(e^{q_i}-1))^4\le(\prod_iMx_i)^4$, with $M=M(G,L)$.
- ([`oasis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Echo.lean#L191-L223)) The actual off-Gaussian exponents of $\Psi$ satisfy the hypotheses of `r4` uniformly, for large $x$ and $\beta\in[\hat y/2,2\hat y]$. These exponents are the single-site terms of $\eta\cdot z$ and the pair terms of $\tfrac12z\cdot(C^{-1}-W)z$. Their weights are $\le De^{-uR(x)/480}$ for sites and decay exponentially in distance for pairs.

*Status:* theorem.
*Lean:* [`same_law`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Arc.lean#L189-L253).

**Proposition III.4.9 (local Gaussian insertions).** For $p\ge1$ there are post-$L$ constants such that, for large $x$, the following holds. The actual correction pieces of the step, restricted to a slot set $U$, are local quadratic-affine insertions $t\cdot z_U+\tfrac12z_U\cdot\mathcal Jz_U$ into $\gamma_C$. Their tilted law $N(\mathcal A t_U,\mathcal A)$, with $\mathcal A=(C^{-1}-\mathcal J_U)^{-1}\succ0$, satisfies
$$\mathbb E_{\gamma_{C,U}}\big[(dN_U/d\gamma_{C,U})^{p}\big]\le\exp\!\Big(2p\big(\lvert U\rvert\ell^2/(4\theta)+2K\lvert U\rvert(\theta+\varepsilon/2)\big)\Big)$$
whenever $Kp(\theta+\varepsilon/2)\le1/4$. The parameters are:
- $\varepsilon=Ke^{-bR(x)}$;
- $\ell=g^{-1}M^2e^{-s\lfloor R(x)/60\rfloor}B\,(t(x)+d)$.

*Status:* theorem.
*Lean:* [`Physical.blocks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Consumer.lean#L167-L199), built on [`insert_letter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Insertion.lean#L120-L172).

**Proposition III.4.10 (jets of the block coefficients and of the covariance).** Fix $G$, a patch $P$, a teller with `Branches`, and an order $n$. There are $r,d,v,\eta,l,M>0$ such that for large $x$ the following holds. Take every funded step with patch $P$ and $c\ge100(1+R(x))$, every $A,F,V$ with matching flags, every $k$, and every perturbation $B$ of the background with $\lVert B\rVert\le r$. Then:
- the move matrix $M(B)$ is real-analytic;
- $M$, $W=M^{\top}M$ and $C$ satisfy weighted Schur bounds up to order $n$. That is, $\prod_{b\in l}e^{d\,\mathrm{dist}(b,i)}\sum_je^{d\,\mathrm{dist}(i,j)}\lvert\partial_lX_{ij}(B)\rvert\le M$ for every list $l$ of at most $n$ unit directions, and the same for columns;
- $W(B)\ge\eta$, $C(B)\ge l$ and $C(B)\succ0$;
- the resolvents obey jet bounds with weight $(1+u)^{-1}$;
- all window errors are $\le Me^{-vR(x)}$.

The predictor rows themselves are real-analytic, with $k$-jets bounded by constants depending only on $(G,P,K,k)$, on a ball of fixed radius ([`sounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Sounds.lean#L69-L101), [`chosen_branch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Branch.lean#L140-L219)). Analyticity is asserted for the predictor rows and for $M$; for $W$, $C$ and the resolvents only $C^n$ jet bounds are asserted.
*Status:* theorem.
*Lean:* [`assembly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Covariance.lean#L146-L210), [`fromTeller`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Sky.lean#L62-L77), [`coverall`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Roof.lean#L39-L62), [`stores`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/PHYSICAL_JOINT_ENDPOINT_LOAD_F16/DLog/Fund.lean#L120-L127).

**Proposition III.4.11 (affine squares in the large-field annulus).** Fix a teller, $L$, $W,K>0$ and a halo $D$. There are $C\ge1$ and a function $e(x)\ge0$ with $R(x)^n\beta_F(x,L)\,e(x)\to0$ for every $n$, such that for large $x$ the following holds. Take every funded step with $c\ge100(1+R(x))$ and every configuration in tree gauge whose packet $O$ is wide in the sense of `Wide`. Then there is a direction $a$ that vanishes on the tree links such that:
- every window $Q$ in the annulus $\{p\notin A^{(2R)},\ p\in O^{(DR)}\}$ is charted by $a$ with constant $C$;
- its work is bounded below by the extracted affine squares minus $e(x)\lvert O\rvert$;
- the extracted squares are the same for any other direction charting the window.

*Status:* theorem.
*Lean:* [`annulus_pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Annulus.lean#L36-L127), with [`cleans_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Clean.lean#L110-L208) and [`reacts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/CollarData.lean#L131-L189).

**Proposition III.4.12 (production of the step constants).** Assume:
- $G$ is simple;
- the kernel choices $K$ satisfy `Branches` for every patch;
- orders $o$ with `Draft o` are given;
- costs $C_i\ge1$ are given.

Then there is a sheet (pre-$L$ constants) with kernel $K$, together with prices, such that for all tariffs and scopes the "paid view" holds from some index on. In particular, for every $L$-sequence there is a gap $\eta$ with `BudgetGap`. Moreover, after boosting the delays, `Ringing` and `Cosmos` hold (hence the hypotheses of III.4.2), and the stationary path data `FullPaths` exist. For each adjacent stage pair $(j,i)$, the per-step conditions `Starcash` hold with constants $a_{ji},E_{ji}$ chosen after the block size $L_j$ ([`sponsored_permit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Stamped.lean#L139-L168)). [`issue_cosmos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Handoff.lean#L99-L116) raises each entry value $\beta^{\rm entry}_j$ to the maximum of the thresholds for $(j,j)$ and $(j,j-1)$, preserving `Ringing`.
*Status:* theorem. It still assumes `Branches` and `Draft`.
*Lean:* [`sailsV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Seaside.lean#L96-L154), using [`geared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L59-L66).

## 2. What it uses

Inputs from other units (unit assignment probable where not stated otherwise).
- **III.1 (block-spin step, gauge fixing):** `StepData` (patch $(L,J)$, kernel choices, $f=Lc$); forests and the tree-gauge slice (`Forest`, `Slice`, `drape`); gauge tags `Choices`; the likelihood (frame and predictor masses); the block predictor `prediction`; `Branches` (unique minimising frame and predictor); `replica`; and the push-forward `push`.
- **II.2, III.5, III.8 (representations, polymer norms, activities):** `Rep` (path part, activities, budget point, $\beta$, vacuum energy $v_R$), `Lawful`, the interacting density `exposed`, `Stores` and allocations (`bill`), the polymer summability `Hit` and cover number.
- **III.10 (step estimator):** `Teller`, `Funds`, `Tube`, and the work rows `workF, workI, …` from which `move` and `source` are built.
- **III.6, III.7 (stationary path data, fourth-order matching):** the path data of the tube equal those of $R$; `FullPaths` (from `geared`) carries the jets matching the Wilson energy to fourth order.
- **III.3 (free kernels, probable):** the free metric (`Bed`) and the free-field prices `before_paid` used by `sailsV`.
- **III.2 and III.9 (constants, running coupling):** the calendar (`Sheet`, `Rolls`, `Delays`), the directed run (`Directed`, `Levels`), $\hat\beta_m$, thresholds $t(\hat\beta_m)$, the band, `Lives`, and `Ringing`. In the other direction, III.4.2 is consumed in III.9 (`VerifiedReset.Return.earnings`), and III.4.7 feeds the repeatable-step chain (`Repeat.Legato`).
- **I.1, III.16 (toolkit):** the gauge group as a matrix group, `lieExp`, the normalised Haar measure, chord distance and logarithmic charts (`log_chart_cost`), analytic jets, and Mathlib's `multivariateGaussian`.

Standard mathematics.
- Density and affine change of variables for $N(0,C)$; Haar measure in exponential coordinates, with Jacobian $\det\frac{1-e^{-\mathrm{ad}X}}{\mathrm{ad}X}$ (Helgason, *Differential Geometry, Lie Groups and Symmetric Spaces*, Ch. II).
- Combes–Thomas estimate (Combes–Thomas, CMP 34, 1973); decay of inverses of banded matrices (Demko–Moss–Smith, Math. Comp. 43, 1984).
- $\log\lambda=\int_0^\infty[(1+u)^{-1}-(\lambda+u)^{-1}]\,du$ and the Neumann (random-walk) expansion of resolvents (Brydges–Fröhlich–Spencer, CMP 83, 1982).
- Gaussian integration by parts (Glimm–Jaffe, *Quantum Physics*, Ch. 9).
- Paley–Wiener decay of Fourier coefficients of functions analytic on a strip (Katznelson, *An Introduction to Harmonic Analysis*).
- Balaban's fluctuation integrals and propagators: Balaban, CMP 95, 96 (1984), 98, 99, 102 (1985), 109 (1987), 116 (1988), 122 (1989). For the scalar analogue, Dimock, *The renormalization group according to Balaban* I–III (Rev. Math. Phys. 25, 2013; J. Math. Phys. 54, 2013; Ann. Henri Poincaré 15, 2014). Volumes and years only; titles and pages to be checked.

Imported constants and hypotheses.
- **The order of constants (III.2):** pre-$L$ data, then $L$, then the post-$L$ constants of this unit, then the thresholds in $x$. Every gap, rate and cap above is post-$L$: it depends on $G$, the patch $(L,J)$ and the teller.
- **Hypothesis bundles of the downstream statements:** `Chips`, `Helps` and `noises` (step-estimator data at the retimed scale); `Certified` and `parcel` (produced by [`late_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Year.lean#L113-L197)); `Stock` (produced by `stores`).
- **`Draft`, `Branches`, `Outlet`/`Concert`:** these enter `sailsV`, `book` and `endures` as premises.

## 3. Strategy

The method is Balaban's fluctuation integral in the small-field region, but organised so that the algebra is exact and every estimate is separate and local. In each sector the links within $10R(x)$ of the large-field store are kept as Haar variables. The remaining links are written in exponential coordinates around the copy $\iota V$ of the coarse field. The step energy contains a sum of affine squares $\tfrac12\lvert Ma+s(Y)\rvert^2$; the remainder is kept as a multiplier.

The change of variables $a=m(Y)+gz$, followed by multiplying and dividing by the density of an *arbitrary* $\gamma_C$, is an identity (III.4.1). Its only analytic content is the Haar Jacobian of the exponential chart and the support condition $\lvert a_e\rvert\le d$. The specific choice is made afterwards (III.4.2):
- $C$ is the symmetrised *windowed* inverse of $W=M^{\top}M$, so its range is exactly $R(x)/20$ blocks;
- $m$ is the windowed minimiser.

The discrepancy terms $\eta\cdot z$ and $\tfrac12z(C^{-1}-W)z$ stay in the integrand. They are small, $O(e^{-cR(x)})$, and are controlled by fourth moments (III.4.8). This is the main difference from Balaban. There the covariance is the full gauge-fixed propagator and its decay is proved by random-walk expansions. Here locality is exact, and the window error is moved into the integrand and into the determinant.

The quantitative input has three layers.

*Gap.* In the axial gauge of the forest, the linearised plaquette curvatures plus the block constraints control every active link locally (a local Poincaré inequality, `not_flat`). The proof chooses a gauge per link, uses the derivative comparison of `block_comparison`, and absorbs the gauge-rotation errors when $t(x)$ is small.

*Locality.* The gap and the finite range give Combes–Thomas decay of $W^{-1}$ and of all window inverses, uniformly in the volume. The window law (III.4.4) then gives $C=W^{-1}+O(e^{-cR(x)})$ and $C\succ0$.

*Determinants.* The ratio of the actual Gaussian normalisation $(\det C)^{1/2}$ to the flat one $(\det K_F)^{-1/2}$ is expanded by the resolvent integral for $\log$. It becomes a sum of single-window letters plus path letters (III.4.5), then local rents near the large-field cores plus small far-field and window terms (III.4.6). The rents are only $O(\mathrm{polylog}\,x)$ per unit of the store, while the large-field energy costs $\beta t^2\gtrsim\mathrm{hot}(z)^2$ per unit. So the net contribution of each core is suppressed by $e^{-\alpha\,\mathrm{hot}(z)^2\lvert o\rvert}$, and everything else is a small polymer activity (III.4.7).

Moment bounds (III.4.8–III.4.9), jets in the background (III.4.10) and the annulus estimates (III.4.11) complete the inputs of the step estimator. III.4.12 shows that all post-$L$ constants can be chosen consistently along the run.

## 4. Steps

### 4.1 Exact change of variables

**Lemma 4.1 (Gaussian density and scaling).** For $C\succ0$, $g>0$, $m$, and any $f$ with values in a Banach space: $f\in L^1$ iff $z\mapsto e^{\frac12z\cdot C^{-1}z}f(m+gz)\in L^1(\gamma_C)$, and $\int f=g^{n}(2\pi)^{n/2}(\det C)^{1/2}\int e^{\frac12z\cdot C^{-1}z}f(m+gz)\,d\gamma_C$. No integrability is assumed for the identity; both sides vanish together. *Sketch:* the density of $\gamma_C$ follows by pushing $N(0,1)^{\otimes n}$ forward by $C^{1/2}$ ([`cloud_formula`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean#L134-L156)); then translate and dilate.
*Lean:* [`Gaussian.gauged`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean#L204-L210), [`at_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Counting.lean#L117-L125).

**Lemma 4.2 (exponential chart on links).** For a local chart ratio $J$ and base links $\nu$, the map $a\mapsto(e^{a_e}\nu_e)_e$ sends $\prod_e J_{\rm sc}J(a_e)\,da_e$ on $B_{\rho_J}^{\mathcal A}$ onto product Haar measure restricted to the image. Hence $\int g\,d\mathrm{Haar}=\int_{B^{\mathcal A}}\prod_eJ_{\rm sc}J(a_e)\,g(e^{a}\nu)\,da$ for $g$ vanishing off the image, with equivalence of integrability. In the iterated form on the slice (frozen links Haar, active links in the chart), $g$ need only be bounded and supported where the chart condition holds; the theorem also returns section-wise and outer integrability.
*Lean:* [`log_transport`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Haar.lean#L143-L162), [`release_integral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Haar.lean#L167-L184), [`thaw_integral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Haar.lean#L225-L253).

**Lemma 4.3 (regularised integrand).** Assume the standing condition and $0<2d<4d<\rho_J$. Then the chart integrand equals $J_{\rm sc}^{\lvert\mathcal A\rvert}\tilde J_d(a)\chi_d(a)\cdot(\text{integrand})$ everywhere, and the fixed-$V$ sector integral equals $J_{\rm sc}^{\lvert\mathcal A\rvert}\iint r\,da\,d\mathrm{Haar}(Y)$ with all integrability statements. *Sketch:* on the support, $\lvert a_e\rvert\le d$ forces $\chi_d=1$ and $\tilde J_d=J$; off the support both sides vanish ([`protected_pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Broad.lean#L115-L120)). Integrability follows because the multiplier has a Borel envelope.
*Lean:* [`sheltered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean#L76-L109), [`regularized_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean#L142-L199).

**Lemma 4.4 (affine-square splitting).** The averaged step energy equals $\overline{\mathrm{res}}+Q_Y(a)$ ([`compose_residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Remainder.lean#L102-L105)). For any $C$, $m$, $g>0$:
$$-\beta Q_Y(m)+\eta\cdot z+\tfrac12z\cdot(C^{-1}-W)z=\tfrac12z\cdot C^{-1}z-\beta Q_Y(m+gz).$$
*Sketch:* expand $\tfrac12\lvert M(m+gz)+s\rvert^2$ and use $g^{-2}=\beta$.
*Lean:* [`Rows.adjusted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Remainder.lean#L128-L146), [`recolored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L73-L93).

**Lemma 4.5 (proof of III.4.1).** Apply Lemma 4.1 to $r(Y,\cdot)$ for each $Y$, then Lemma 4.4 to identify the Gaussian integrand with $\mathrm{pref}\cdot\Psi(Y,\cdot)$. Joint integrability comes from the norm identity $\int\lVert r(Y,\cdot)\rVert=c\,s\int\lVert\Psi(Y,\cdot)\rVert\,d\gamma_C$ and the Fubini criterion; the identity comes from inserting Lemma 4.1 inside the Haar integral of Lemma 4.3.
*Lean:* [`authorized_change`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L137-L192).

**Lemma 4.6 (admission of the chart).** There are $D,E>0$ such that for large $x$, with $d=D\,t_L(x)$:
- $0<d$, $4d<\rho_J$ and $2d<\rho_{\rm first}$;
- $\lvert\log J(a)\rvert\le E\lvert a\rvert^2$ for $\lvert a\rvert\le4d$;
- for every funded step and every store, forest, allocation and $V$, each active link (and each frozen link read on a selected stencil) in the support of $\mathrm{bill}\cdot\mathrm{lik}$ equals $e^{a}\nu_e$ with $\lvert a\rvert\le d$.

*Sketch:* the allocation's small-field structure gives three bounds near such a link: toll $\le t_L(x)$ off the cost cells, and predictor wire $\le2w\,t_L(x)$ off the aisles; together the chord distance to $\nu_e$ is $\le m\,t_L(x)$. The logarithmic chart then gives $\lvert a\rvert\le C m\,t_L(x)$.
*Lean:* [`matinee`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Stamped.lean#L45-L119).

**Lemma 4.7 (permits and the licence; proof of III.4.2).** `sponsored_permit` combines Lemma 4.6, III.4.3 and continuity of `meanLog`. It shows that, for large $x$ and every step with the patch, $(W_{\mathcal W},m)$ is permitted, $W\succ0$, and `Authorized` holds whenever the flags match. This gives `Starcash` for each stage pair; `issue_cosmos` makes the entry thresholds cover all pairs. `committed` then has three cases:
- for each store with matching flags, it applies III.4.1;
- for the other stores it applies `displaced_wrong`: wrong flags force $\mathrm{bill}_A\equiv0$, so all integrals vanish;
- it inserts both into the sector decomposition of the push-forward (`Consumer.bought`, `use_gap`: tagged kernel times density equals $\mathrm{sieve}(V)\cdot\mathrm{exposed}\cdot\mathrm{enters}$).

The step size is $d=a_{ji}t(\hat\beta_{m+1})$, because $t_L(\hat\beta_m)=t(\hat\beta_{m+1})$.
*Lean:* [`sponsored_permit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Stamped.lean#L139-L168), [`committed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Handoff.lean#L132-L182).

**Lemma 4.8 (identity completion).** Complete $W$ by the identity on the inactive positions (frozen and tree links) and use the same windows. Then the windowed inverse, its symmetrisation and the mean are the identity completions of $W^{\mathrm{per}}$, $W_{\mathcal W}$ and $m$, and $\det$ is unchanged. This is what lets $\log\det W$ be compared link by link with $\log\det K_F$ on all free links.
*Lean:* [`Completion.stocked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Completion.lean#L181-L212).

### 4.2 Gap, decay and windows

**Lemma 4.9 (gap of the active precision).** There is $\eta=\eta(G,P,\text{teller})>0$ with $\eta\lvert a\rvert^2\le a\cdot Wa$ for large $x$, every step with the patch, and all flag-matched sectors. *Sketch:*
- Each active link is bounded by a constant times a local sum of plaquette jets plus a block jet, computed in a gauge chosen per link. The comparison of the predictor's derivative with its value at the flat field ([`block_comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Block.lean#L316-L361)) makes the gauge-rotation errors $O(\varepsilon)$ once $t(x)\le\delta$.
- Summing gives $\lvert a\rvert^2\le c_1\sum\lvert\text{plaq}\rvert^2+c_2\sum\lvert\text{block}\rvert^2+O(\varepsilon^2)\lvert a\rvert^2$.
- The last term is absorbed, and the energy is bounded by the Gram form.


*Lean:* [`Gap.not_flat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gap.lean#L242-L264).

`block_comparison` itself states two things. For links within the predictor's reach that are $\delta$-close to $1$, the derivative of $a\mapsto$ curvature of $\mathrm{pred}(e^aU)\mathrm{pred}(U)^{-1}$ at $0$ is $\le B\lVert a\rVert_{\ell^1(\text{stencil})}$. It also differs from its value at $U=1$ by $\le\varepsilon\lVert a\rVert_{\ell^1}$. The constant $\delta(\varepsilon)$ comes from continuity and is not explicit.

**Lemma 4.10 (Combes–Thomas).** Given $\sigma,\varepsilon>0$ and $M\ge0$, there are $v\in(0,\sigma]$ and $C=2/\varepsilon$ such that every symmetric $A$ with $\lVert e^{\sigma\,\mathrm{dist}}A\rVert_{\rm Schur}\le M$ and gap $\varepsilon$ satisfies $e^{v\,\mathrm{dist}(i,j)}\lvert A^{-1}_{ij}\rvert\le C$, in any volume. The same holds for all principal submatrices, since they inherit the gap. *Sketch:*
- Conjugate $A$ by $e^{v\,\mathrm{dist}(\cdot,i)}$ with $v=\min(1,\varepsilon/(2(M+1)))\sigma$.
- The conjugate differs from $A$ by $\le\varepsilon/2$ in Schur norm, so it keeps gap $\varepsilon/2$.
- Test it on the weighted $i$-th column of $A^{-1}$.


*Lean:* [`Schur.inverse_tilt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Inverse.lean#L74-L121), [`Schur.provides`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L103-L119).

**Lemma 4.11 (proof of the window law, III.4.4).**
1. $(AL)_{ji}=\delta_{ji}$ for $j\in\mathcal W_i$, because column $i$ of $L$ solves the window system. So $AL-1$ is supported at distance $>r$ and has unweighted Schur norm $\le e^{-ur}\cdot$const.
2. Hence $L-A^{-1}=A^{-1}(AL-1)$ has the same size, and so does its symmetrisation.
3. The gap of $A^{-1}$ is at least $\eta/(K+1)^2$, because $\lVert A\rVert\le K+1$. For $r$ large the error is below half of it.


*Lean:* [`Schur.windows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L184-L239).

**Lemma 4.12 (proof of III.4.3).**
1. Lemma 4.9 gives the gap.
2. The rows of $M$ are finite-range with bounded entries, so $W$ has Schur decay with constants depending on the patch.
3. The counting function is $B(v)=\dim\mathfrak g\cdot\lvert\text{sites of a block}\rvert\cdot4\cdot\sum_ze^{-v\lvert z\rvert}$ (each coarse site carries boundedly many coordinates).
4. The windows contain $R(x)/60$-balls.
5. III.4.4 gives (iii) and $C\succ0$.


*Lean:* [`opaqueCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Chosen.lean#L102-L143). The decay certificate [`holds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Chord.lean#L133-L158) adds bounds for $C^{-1}$ and $\lVert C^{-1}-W\rVert\le Me^{-aR(x)}$.

**Lemma 4.13 (perturbation of inverses).** Let $A,D\succ0$ with $\lVert e^{s\,\mathrm{dist}}D^{-1}\rVert_{\rm Schur}\le K$, $\lVert e^{s\,\mathrm{dist}}(A-D)\rVert_{\rm Schur}\le\delta$ and $K\delta\le\frac12$. Then $\lVert e^{s\,\mathrm{dist}}A^{-1}\rVert_{\rm Schur}\le2K$. *Sketch:* from $A^{-1}=D^{-1}-D^{-1}(A-D)A^{-1}$, a bound $t$ on $A^{-1}$ improves to $K+t/2$; iterate from the trivial finite-volume bound.
*Lean:* [`inverse_perturb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_SWITCH/TableCosts.lean#L63-L83).

**Lemma 4.14 (infinite-volume kernels).**
- A family of periodic kernels that is compatible under coverings (`Each`) and decays pointwise like $Me^{-r\,\mathrm{dist}}$ is, for every $\gamma<r$, *exactly* the periodisation of one kernel on $\mathbb Z^4$ with strip decay at rate $\gamma$. The proof extracts a pointwise limit along the periods $k!$ and passes compatibility to the limit by dominated convergence.
- A strip-decaying kernel whose periodisations have a uniform gap has a resolvent of the same type, exactly at every period ([`strip_resolvent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/Metric.lean#L30-L37)).
- A symbol analytic and invertible on a strip of width $\eta$ yields an inverse with strip decay at rate $\eta/4$ that inverts every periodisation ([`freezer_row`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian/PeriodicInverse.lean#L104-L139)). By this route, for each $J\ge4$ there is a rate $\sigma$, chosen *before* the patch, such that the flat gauge-completed Hessian $M+V^{\top}V$ has a strip-decaying inverse uniformly in the scale ([`joint_universal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian/Completion.lean#L62-L110)).

*(proof read for `publish` and `joint_universal`; statement only for the others)*
*Lean:* [`publish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/Fold.lean#L139-L180).

**Lemma 4.15 (tree inverse and the free covariance).**
- Gauge-fixing completion: if $(M+V^{\top}V)N=1$, then $Z N Z^{\top}$ inverts the tree matrix and the projected $N$ is the tree covariance ([`projecting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian/TreeInverse.lean#L64-L115), pure algebra, proof read).
- Given a strip-bounded free metric with a gap, there is one strip-decaying operator whose restriction to every period is the plane tree-inverse covariance. It represents simultaneously the conditional covariances of all admissible steps (odd $L$), and its range-$d$ truncation errs by $e^{-td/2}$ ([`earned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Covers.lean#L67-L103), [`onePlateau`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Covers.lean#L114-L136), proof read).
- Separately, the windowed resolvent of the *flat* sector Gram matrix is within $Ce^{-tR(x)}(1+u)^{-2}$ of the tree inverse of the free metric. The flat sector covariance therefore satisfies a zeroth-order exchange with the free covariance, with log-det and log-density bounds ([`headComparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Ideal.lean#L120-L144), [`freeHead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/HeadSwitch.lean#L104-L143), statement only).

**Lemma 4.16 (covariance and locality of entries).**
- The windowed inverse commutes with site bijections combined with orthogonal colour rotations, for every $u$ ([`natural`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/ColourBooks.lean#L163-L192)).
- Windowed covariance, mean and determinant are transported by such maps ([`moves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Binding.lean#L116-L134)).
- An entry of the full precision depends only on the configuration, tags, tree and store within $14R(x)$ of its site ([`same_row`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Reading.lean#L194-L212)).



### 4.3 Determinants

**Lemma 4.17 (proof of III.4.5).**
1. On the spectrum of $A\succ0$, $\log\lambda=\int_0^\infty[(1+u)^{-1}-(\lambda+u)^{-1}]du$, so $\log\det A=\sum_i\int_0^\infty[(1+u)^{-1}-(A+u)^{-1}_{ii}]du$.
2. Split $(A+u)^{-1}=P_u+((A+u)^{-1}-P_u)$.
3. The first part gives $\ell_i$, bounded by $(C+1)C$ through $\int(1+u)^{-2}=1$.
4. Expand the second part as $P_u\sum_{n\ge1}(-\Delta_u)^n$, a Neumann series with ratio $q/(1+u)$. Each term is integrable with $\int\le Cq^{n+1}$.
5. For $\log\det(1+S)$ use the trace series; $1+S=AA_{\mathcal W}$.


*Lean:* [`Priced.chains`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Series.lean#L203-L227), [`letterBase`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Series.lean#L45-L46).

**Lemma 4.18 (proof of III.4.6 (ii)–(iv)).**
- *(ii)* Use $J_{\rm sc}^{\lvert\mathcal A\rvert}(2\pi g^2)^{n_a/2}=\mathrm{spare}^{\lvert F^{\rm free}\rvert}\mathrm{spare}^{-\lvert\mathcal F_A\rvert}$ and $\det C=\det W^{-1}\det(WC)$, with $\det K_F$ independent of the forest. The quadratic part follows from Lemma 4.4, and the coarse factors are collected in `loading`.
- *(iii)* Apply `labeled` both to the identity-completed full precision at $(A,V)$ ("panel") and at $(\emptyset,1)$ ("frame"), and subtract letter by letter.
- *(iv)* Sum $\mathrm{sect}_e-\log\mathrm{spare}\cdot1_{\mathcal F_A}(e)$ over links, split by distance to the cores ($200R(x)$).


*Lean:* [`book_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Shards.lean#L34-L39), [`rate_pass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L36-L48).

**Lemma 4.19 (local bounds on the pieces).** Call a function *$\varepsilon$-small* (`Petty`) if on matched sectors it is a sum of local terms $\phi_X$ with $\lvert\phi_X\rvert\le b_X$, where $\sum_{X\ni y'}b_Xe^{e N(X)}\le\varepsilon$ at every site $y'$. For large $x$:
- (a) $\lvert\mathrm{rent}_o\rvert\le\delta\,\mathrm{hot}(z)^2\lvert o\rvert$ for any fixed $\delta>0$ ([`wages`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L90-L114)). The reason: each link contributes $O(\log x)$, the $200R(x)$-dome of a core has $O(R(x)^4\lvert o\rvert)$ links, and $\mathrm{hot}(z)^2$ beats every power of $\log x$.
- (b) The far-field term is $x^{-1/8}$-small ([`bills`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L71-L89)).
- (c) $I$ and $\mathrm{Sh}$ are $e^{-dR(x)}$-small ([`billIt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Shards.lean#L60-L77)).
- (d) The chart terms $\sum_e\log\tilde J(a_e)$ are $x^{-1/8}$-small, since $\lvert\log\tilde J\rvert\le u(4d)^2$ and $t_L(x)^2\le x^{-1/4}$. The same holds for the `tallyQ` term ([`bolsters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Sage.lean#L82-L114)).
- (e) The `terra` term (path and cubic/quartic corrections) is $x^{-1/24}$-small ([`Ancestor.abound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Regale.lean#L65-L88)).

*(proof read for (a), (b), (d); statement and outline for (c), (e))*

**Lemma 4.20 (proof of III.4.7).**
1. On matched sectors, $\Lambda=\sum_{o}(\mathrm{center}_o+\mathrm{rent}_o)+\mathrm{tenders}$ ([`issued`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L27-L35)). Here $\mathrm{center}_o$ is the large-field part of the energy localised at $o$ (probable), and the tenders are the terms of Lemma 4.19 (b)–(e) together with the penury and froth terms.
2. The center satisfies $\mathrm{center}_o\le-\beta a s^2\lvert o\rvert+\ldots$ with threshold $s=z^{-1/2}\mathrm{hot}(z)$. Since $zs^2=\mathrm{hot}(z)^2$ and $\beta\ge z/2$, the condition $2\alpha\le a/2$ gives $2\alpha\,\mathrm{hot}(z)^2\le\beta as^2$. With Lemma 4.19 (a) this yields $\mathrm{center}_o+\mathrm{rent}_o\le-\alpha\,\mathrm{hot}(z)^2\lvert o\rvert$.
3. [`paltry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L52-L65) clamps the posting between explicit bounds, to keep it local and bounded off the matched set.
4. The tenders are $\ell$-small with $\ell=4q+y^4\nu+2\nu+a'$, where $q=y^{-1/8}$, $\nu=y^{-5}$ (from $e^{-cR(y)}\le y^{-5}$) and $a'=y^{-1/24}$. Then $2\ell\le16y^{-1/24}\le y^{-1/48}$ for large $y$ (`drought`).
5. [`issue_invoice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Petty.lean#L72-L90) symmetrises over lattice motions and converts the small sum into $\lvert e^{\mathrm{aux}_X}-1\rvert\le f_X$.

*(proof read; `center`, `minimum` and `ranked` statement only)*

**Lemma 4.21 (certificates).** The hypotheses of III.4.6–III.4.7 are supplied by two results.
- [`late_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Year.lean#L113-L197) gives `Certified` and `parcel`, eventually in $x$:
  - the gap, positivity and `Priced` bounds for the full precision and for every window system of radius $R(x)/60$, with error factor $e^{-bR(x)}$;
  - cluster counting with factor $e^{-dR(x)}$.
- [`stores`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/PHYSICAL_JOINT_ENDPOINT_LOAD_F16/DLog/Fund.lean#L120-L127) gives `Stock`: covariance jets to a prescribed order, chosen before the constants.



### 4.4 Gaussian moments and insertions

**Lemma 4.22 (exponentials of quadratic forms).** Let $x\sim N(0,I)$ and $\mathcal Q=\sum_iw_i\langle q_i,x\rangle^2$ with $w_i\ge0$ and $\sum_jw_j\lvert\langle q_i,q_j\rangle\rvert\le1/8$ for each $i$. Then $\mathbb E e^{\mathcal Q}\le e^{2\sum_iw_i\lvert q_i\rvert^2}$. *Sketch:* Gaussian integration by parts gives $F'(t)=\mathbb E[\mathcal Qe^{t\mathcal Q}]\le TF+\tfrac12F'$, so $(e^{-2Tt}F)'\le0$.
*Lean:* [`authentic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS/Trace.lean#L228-L253), [`amount`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS/Moment.lean#L67-L71).

**Lemma 4.23 (polynomial moments).** If $C\le L$ on $\mathbb R^n$, then $\mathbb E_{\gamma_C}(1+\lvert z\rvert^2)^k\le D(L,k)(1+n)^{k+1}$. *Sketch:* $i^k\le C_ke^{ti}$ with $t=1/(4L)$, the largest coordinate dominates, and $\mathbb Ee^{tz_x^2}\le2$.
*Lean:* [`many`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Buoy.lean#L104-L152).

**Lemma 4.24 (proof of III.4.8).**
1. On $\{v\ne0\}$, $1\le e^{-c\lvert J\rvert\rho^2}e^{c\sum_J\lvert z_i\rvert^2}$.
2. The site budget gives $\sum d_i(1+\lvert z_{a_i}\rvert^2+\lvert z_{b_i}\rvert^2)\le\lvert Y\rvert c+2c\sum_X\lvert z\rvert^2$.
3. Split by $ab\le a^2+b^2$ and bound the two factors: $\mathbb E e^{6c\sum_U\lvert z\rvert^2}\le2^{\dim\mathfrak g\lvert U\rvert}$, with $\lvert U\rvert\le\lvert J\rvert+2\lvert Y\rvert$, and Lemma 4.23 for the polynomial.

For `r4`: $\lvert e^q-1\rvert\le xe^{2x(1+\lvert z_a\rvert^2+\lvert z_b\rvert^2)}$, then apply III.4.8 with $k=0$. For `oasis`: the mean-shift equation writes $\eta$ through $W^{\mathrm{per}}-W^{-1}=O(e^{-uR(x)/60})$, and $C^{-1}-W$ is controlled by `holds`.
*Lean:* [`same_law`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Arc.lean#L189-L253), [`r4`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Ember.lean#L69-L111), [`oasis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Echo.lean#L191-L223).

**Lemma 4.25 (Gaussian likelihood ratios).**
- For $A,D\succ0$ and any centres, the $p$-th power of $dN(a,A)/dN(d,D)$ is $N(d,D)$-integrable iff $pA^{-1}+(1-p)D^{-1}\succ0$ ([`power_iff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Moment.lean#L183-L185)).
- If $D^{-1}-A^{-1}$ is supported in $S\times S$ and $A^{-1}(d-a)$ on $S$, the ratio equals the ratio of the $S$-marginals at $x_S$ ([`likelihood_local`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Support.lean#L178-L207)).
- If $\lvert\log(\text{tilt})\rvert\le b+\sum w_iz_i^2$, $D\le K$ and $Kpw_i\le1/4$, the $p$-th moment is $\le e^{2p(b+2K\sum w)}$. The normaliser is controlled by Cauchy–Schwarz ([`weighted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Weighted.lean#L104-L138)).
- For quadratic-affine insertions with $\lvert z\cdot\mathcal Jz\rvert\le\varepsilon\lvert z\rvert^2$ and $\lvert t_i\rvert\le\ell$, $\mathcal A\succ0$ follows from $C^{-1}\ge K^{-1}>\varepsilon$, and the linear part costs $e^{p\lvert S\rvert\ell^2/(2\theta)}$ by AM–GM ([`insert_letter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Insertion.lean#L120-L172)).
- For symmetric $A$, integrability of $e^{-\frac12z\cdot Az-b\cdot z+c}$ forces $A\succ0$ ([`posDef_of_integrable_quadratic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Escape.lean#L52-L94)).
- The log-ratio of two windowed Gaussian densities under a shift is bounded pointwise by Schur constants ([`priceShift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/Relative.lean#L245-L266)).

*(proof read for `weighted` and `insert_letter`; statement only for the others)*

### 4.5 Jets

**Lemma 4.26 (analytic predictor rows).** Constants $C,r,\delta$ depending only on $(G,P,K,k)$ exist, with no threshold in $x$ but explicit smallness hypotheses ($t(x)\le\delta$, span $\le R(x)/50$). Under these, the predicted group element and its curvature are real-analytic on the $r$-ball, with $k$-jets $\le C$. *Sketch:*
- Transplant the stencil into a fixed reference torus ([`impression`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Press.lean#L123-L155)).
- Use a local trimming gauge in which the links have chord $\le\delta$.
- Write the prediction as $u\cdot\mathrm{paste}(\ldots)\cdot v^{-1}$ with maps of norm $\le1$ ([`freshQ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Duplicated.lean#L52-L101)).
- `chosen_branch` adds that, for large $x$, a single gauge branch is selected near $B=0$.


*Lean:* [`sounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Sounds.lean#L69-L101), [`chosen_branch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Branch.lean#L140-L219).

**Lemma 4.27 (precision near the background).** Constants $r,s,M,\eta$ come first, then the threshold in $x$. On $\lVert B\rVert\le r$:
- $M$ and $W$ are real-analytic, with weighted jets $\le M$;
- the gap at $B=0$ comes from Lemma 4.9;
- a Lipschitz perturbation keeps half of it.

The move-matrix entries have marked $k$-jets with off-diagonal decay $e^{d\,\mathrm{dist}}$ under $(1+2k)d\le\text{width}/2$. *(proof read for `precision`; statement only for `entries`)*
*Lean:* [`precision`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Neighborhood.lean#L122-L159), [`entries`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Quote.lean#L99-L127).

**Lemma 4.28 (transport along walks).** A jet bound at the end of a walk of length $\ell$ transfers to its start, at the base point $0$, with factor $Ne^{\kappa\ell}$ for any $\kappa>0$ ([`carried`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Visits.lean#L81-L120)). Summed against a strip-decaying kernel, the factor is absorbed with $\kappa=\gamma/B$ ([`follows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Tracks.lean#L36-L89)). Path rows with all paths of length $\ge R$ are $O(e^{-\sigma R/4})$ in the jet norm ([`transport_rows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/TrueTransport.lean#L257-L299)).

**Lemma 4.29 (cut and window errors).** Near $B=0$, the actual sector Gram matrix *equals* the reindexed path-cut affine block, together with its windowed resolvents ([`notarized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/CutGerm.lean#L110-L129)). The following error bounds hold:
- cutting the affine inverse germ at range $R$ changes its $k$-jet by $O(4^kC_0^2e^{-\sigma R/4})$, with $C_0\propto(1+u)^{-1}$ ([`shortening`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/AffineResolvent.lean#L81-L100));
- the windowed resolvent differs from the uncut one by a window loss $e^{-(k+1)\gamma R(x)/60}$ plus a path-cut loss $e^{-s R(x)/(4\cdot10^5)}$ ([`total`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Taylor.lean#L73-L108));
- $C^{-1}-W$ has order-$q$ jets $\le e^{-(q+1)dR(x)/60}\cdot$const ([`residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/SectorWindows.lean#L139-L165)).



### 4.6 Large fields and constants

**Lemma 4.30 (clean fields).**
- There is $C\ge1$, independent of the halo, with the following property. For a wide packet, the canonical logarithm $a_e=\log(U_e\nu_e^{-1})$ vanishes on the tree links. In the swept annulus the field is clean: within $2R(x)/5$, $\lVert a\rVert$ and the linking are $\le C\,t_L(x)$, and an axial gauge makes all chords $\le C R(x)^5t_L(x)$ ([`cleans_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Clean.lean#L110-L208)).
- At clean sites, plaquette curvatures and block rows have first-order expansions in $a$, with linear term $\le Cw$ and remainder $\le Cw^2$, where $w=MR(x)^5t_L(x)$. Moreover $R(x)^nw\to0$ for all $n$; that is, $w=x^{-1/2+o(1)}$ ([`reacts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/CollarData.lean#L131-L189)).

*(proof read for `reacts`)*

**Lemma 4.31 (affine squares along paths).** This estimate is deterministic. Assume the path deviation along the paths of a face is $\le h$, the first-order face is $\le Bh$, and its error is $\le Bh^2$. Then work minus the affine square is $\ge-4(mB)^2(1+2c_GR)h^3$ ([`fine_squares`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/AffineRows.lean#L157-L209)). At every swept site each face, noise and coarse row returns with error $\ge-e(x)$, where $e(x)=o(\beta^{-1}R(x)^{-n})$ for all $n$ ([`coat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Recovery.lean#L68-L219)).

**Lemma 4.32 (proof of III.4.11).**
1. Sum the row bounds of Lemma 4.31 over a window. The row count is $\le X R(x)^4\lvert O\rvert$, so the error is $e'(x)=XR(x)^4e(x)$, which still beats every power of $R(x)$ times $\beta$.
2. Drop the squares of the selected rows by positivity.
3. The extracted squares are unique, because the chart logarithm is unique once $\max(K,C)t_L(x)$ is below the chart radius.


*Lean:* [`annulus_pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Annulus.lean#L36-L127).

**Lemma 4.33 (proof of III.4.12).**
1. The free-field prices come from `before_paid`.
2. `geared` supplies width caps and amplitudes; it is applied again to get drifts, cost caps and $L$-floors. `geared` concludes only `FullPaths` and `BudgetGap`: stationary path data (jets matching the Wilson energy to fourth order, positive Hessian determinant, analyticity) and a Hessian lower bound. It has premises `Craft.Rack`, `Retained`, `Paid`, `LocalRatio` and `Buys`. Its proof is the one-loop analytic input `pouring` followed by a downward induction over levels (`plowed`).
3. A sheet is built within these caps.
4. For each $L$-sequence the delays are enlarged and `issue_cosmos` is applied.
5. The torrent of path data is assembled.

Related constant-producing statements:
- `book` and `endures` produce funded delays from the rate hypotheses `Outlet`/`Concert`;
- `post` gives a single-patch Gaussian comparison: a column switch between window covariances, with mean shift $\le C(t(x)+m)$;
- `takings` is a counting bound $\le e^{-cR(x)}$ and produces no constants.

*(proof read for `sailsV` and `geared`; statement only for the others)*
*Lean:* [`sailsV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Seaside.lean#L96-L154), [`geared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L59-L66), [`book`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Calendar.lean#L133-L138), [`endures`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Instruments.lean#L69-L86), [`post`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Reverse.lean#L64-L88), [`takings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Folio/Takings.lean#L99-L116).

## 5. Where the difficulty lies

- **Uniformity, not individual estimates.** Each ingredient is standard: Gaussian change of variables, Combes–Thomas, Neumann series, the resolvent formula for $\log$. The work is to obtain every gap, rate and cap as a post-$L$ constant that does not depend on volume, store, forest, gauge tags or field. Every use of an inverse costs some rate ($v=\min(1,\varepsilon/(2(M+1)))\sigma$, then $v/2$, then $s\le v/2$), which explains the cascade of degraded rates.
- **The gap (Lemma 4.9)** is the one genuinely gauge-theoretic positivity input. It is a local Poincaré inequality for the axially gauge-fixed, block-constrained linearised curvature. It rests on the derivative comparison of `block_comparison`, whose $\delta(\varepsilon)$ comes from a compactness/continuity argument and is not explicit.
- **Exactness by design.** III.4.1 is an identity for any permitted $(C,m)$. All approximation errors, namely window errors, the linear term, the chart Jacobian and the remainder energy, are kept inside the integrand or the determinant and estimated afterwards. This makes the statements long but the logic transparent.
- **Determinants.** The ratio of interacting to free Gaussian normalisation becomes local rents near large-field cores plus a small polymer remainder. This is the most delicate quantitative output. The rents are not small: they are $O(\mathrm{polylog}\,x)$ per unit of the store, and are beaten only by the large-field energy $\beta t^2\sim\mathrm{hot}(z)^2=e^{2(\log\log z)^{3/2}}$. This is why the threshold is retuned to $z^{-1/2}\mathrm{hot}(z)$ at the retimed scale $y$.
- **Exponents.** The $x^{-1/8}$, $x^{-1/24}$ and the final $y^{-1/48}$ are bookkeeping choices: each component is bounded by a convenient power, and $16y^{-1/24}\le y^{-1/48}$ closes the sum. They are not forced by the structure.
- **Routine parts.** Lemmas 4.1–4.5, 4.8, 4.10, 4.13, 4.22–4.25: linear algebra and Gaussian integration.

## 6. Notation

| Written proof | Lean (glossary) | Meaning |
|---|---|---|
| $\gamma_C$ | [`Gaussian.cloud`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean#L31) | centred Gaussian with covariance $C$ |
| $z\cdot C^{-1}z$ | [`force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean#L79) | precision quadratic form |
| $(2\pi g^2)^{n_a/2}(\det C)^{1/2}$ | [`chartCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Counting.lean#L103-L104) | Gaussian normalisation |
| $g=\beta^{-1/2}$ | [`coupling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L35) | coupling of the representation |
| $J$, $J_{\rm sc}$, $\rho_J$ | [`ChartRatio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L23-L26), [`LocalRatio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L28-L38) | normalised Haar Jacobian of exp, scale, radius |
| $\mathcal F_A$, $\mathcal A_A$ | [`chill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean#L38-L40) (`Frozen`, `Active`) | free links within $10R(x)$ of $A$ / the others |
| $\iota V$ | [`replica`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L35) | coarse field copied to the fine lattice |
| $Q_Y(a)$, $W$ | [`Rows.guide`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Remainder.lean#L37), [`Rows.gram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Remainder.lean#L27) | affine squares; precision $M^{\top}M$ |
| $C=W_{\mathcal W}$, $m(Y)$ | [`fog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Chosen.lean#L69-L70), [`meanLog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Chosen.lean#L72-L74) | windowed covariance; windowed mean |
| $L$, $A_{\mathcal W}$ | [`Schur.per`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L67-L68), [`Schur.clouded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L70) | column-wise window inverse; its symmetrisation |
| Schur decay, gap | [`Pours`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Schur.lean#L25-L28), [`Gapped`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Schur.lean#L110) | weighted row and column sums; $a\cdot Aa\ge\eta\lVert a\rVert^2$ |
| $\Psi$ | [`dyed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L63-L71) | sector integrand in Gaussian coordinates |
| permitted, licence | [`Permitted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L95-L103), [`Licenses`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L127-L135) | hypotheses and conclusions of III.4.1 |
| $\ell_i$, path letters, $S$ | [`letterBase`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Series.lean#L45-L46), `page`, `errata`, [`excess`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Walls.lean#L35) | window log letter; path terms; $AA_{\mathcal W}-1$ |
| $\kappa(p)$, $\Lambda(p)$ | [`keptEarly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Prism.lean#L50-L54), [`spoolLift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Prism.lean#L56-L63) | relative log-normalisation; full log-integrand |
| $\mathrm{spare}(\beta)$ | [`spare`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Ledger.lean#L34) | $(2\pi g^2)^{\dim\mathfrak g/2}J_{\rm sc}$ |
| $\mathrm{rent}_o$, far term, $I$, $\mathrm{Sh}$ | [`rents`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L32), [`nightly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L35), [`introTax`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Shards.lean#L31), [`showTax`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Shards.lean#L32) | pieces of $\kappa$ |
| $\varepsilon$-small | [`Petty`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Petty.lean#L28-L29) | sum of local terms with polymer norm $\le\varepsilon$ |
| $y^{-1/48}$ | [`garlic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Stocks.lean#L21) | final polymer budget |
| $R(x)$, $t(x)$, $t_L(x)$ | `radiusB`, `temp`, `fiery` | cluster radius, small-field threshold, fine-level threshold |
| price, bill, tax, rent, teller | numerical bounds; `Teller` | the step-estimator interface |

## 7. Open points for the writer

1. **Large-field center term.** In III.4.7 the term $\mathrm{center}_o$ and the lemmas `minimum` and `ranked` that bound it were read only through their use. Their identification with the large-field part of $-\beta\cdot(\text{affine energy})$ localised at the core is probable, not checked.
2. **Background versus III.6.** The expansion is around the copy $\iota V$, and the Gaussian is centred at the windowed minimiser $m(Y)$ of the affine squares. The stationary background of III.6 enters only through the tube's path data, which define `move` and `source`. How `FullPaths` (from `geared`) reaches the rows `workF`, `workI`, … should be traced.
3. **Hypothesis bundles.** `Helps`, `Chips`, `noises`, `Stock`, `Certified` and `parcel` are each produced somewhere (`late_price`, `stores`, the step estimator), but which theorem supplies each one along the run was not traced. `noises` was not read.
4. **Consumers.** III.4.2 is consumed in III.9 (`VerifiedReset.Return.earnings`). III.4.7 feeds the repeatable-step chain (`Repeat.Legato`, parts of which are assigned to VIII.1). The exact downstream statements were not read.
5. **Free head.** The relation between the onePlateau operator (conditional covariance of the free tree inverse) and the sector covariance at flat field (`freeHead`, `headComparison`) is stated only by the two separate results. A single statement linking the interacting $C$ to the infinite-volume free kernel was not located.
6. **Unit boundary.** `geared` is stationary/one-loop material (Hessian, fourth-order matching), thematically part of III.6–III.7, although the unit table assigns it here. The packages `WilsonBulk/*`, `MultiNext/VACUUM_STABILITY`, `ProofPorts`, `Next/MULTISOURCE` and `RG08/Flat` listed with this unit were not read.
7. **References.** Balaban and Dimock are cited by journal volume and year only; titles and pages need checking.

**Builds on:** [III.1](III-1.md), [I.1](I-1.md), [III.11](III-11.md), [III.10](III-10.md), [III.5](III-5.md), [III.7](III-7.md), [III.6](III-6.md), [III.16](III-16.md), [II.2](II-2.md), [III.2](III-2.md), [II.1](II-1.md), [III.9](III-9.md), [IV.1](IV-1.md), [III.3](III-3.md), [III.15](III-15.md), [III.8](III-8.md), [V.2](V-2.md), [VI.1](VI-1.md).

**Used by:** [III.10](III-10.md), [III.11](III-11.md), [III.2](III-2.md), [VII.6](VII-6.md), [VII.4](VII-4.md), [VII.2](VII-2.md), [VII.1](VII-1.md), [III.12](III-12.md), [III.13](III-13.md), [III.15](III-15.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| proof of [`foreshadows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L96-L134) | 4,885 |
| work package [`YM/Push/FREE_RESOLVENT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT) | 3,930 |
| work package [`YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE) | 3,807 |
| proof of [`endures`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Instruments.lean#L69-L86) | 3,712 |
| work package [`YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS) | 3,574 |
| work package [`YM/AnalyticBridge/SECTOR_AFFINE_JETS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS) | 2,712 |
| work package [`YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS) | 1,903 |
| work package [`YM/SectorNext/LARGE_FIELD_REMAINDERS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS) | 1,657 |
| work package [`YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS) | 1,639 |
| work package [`YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE) | 979 |
| work package [`YM/RG08/Gaussian/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian) | 957 |
| work package [`YM/AnalyticBridge/MARGINAL_MULTIPLIER_3B1D/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/MARGINAL_MULTIPLIER_3B1D) | 688 |
| work package [`YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT) | 659 |
| shared machinery (corollaries of endures) | 641 |
| work package [`YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS) | 636 |
| shared machinery (corollaries of foreshadows) | 602 |
| work package [`YM/AnalyticBridge/LOCAL_GAUSSIAN_MULTIPLIER/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_MULTIPLIER) | 601 |
| work package [`YM/AnalyticBridge/NONFLAT_COVARIANCE_LOCALITY/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/NONFLAT_COVARIANCE_LOCALITY) | 593 |
| work package [`YM/PhysicalNext/WEIGHTED_GAUSSIAN_MARGINAL_LIMIT_45C/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/WEIGHTED_GAUSSIAN_MARGINAL_LIMIT_45C) | 497 |
| work package [`YM/AnalyticBridge/ANNULUS_GAUSSIAN_INTERFACE_1AD/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_GAUSSIAN_INTERFACE_1AD) | 465 |
| work package [`YM/PhysicalNext/ACTUAL_SECTOR_FACTOR_DICTIONARY/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/ACTUAL_SECTOR_FACTOR_DICTIONARY) | 462 |
| work package [`YM/WilsonBulk/Trees/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Trees), with [`YM/WilsonBulk/Grid/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Grid), [`YM/WilsonBulk/Vacuum/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Vacuum) | 454 |
| work package [`YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS) | 391 |
| work package [`YM/AnalyticBridge/SHARP_NORMALIZED_TAIL/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SHARP_NORMALIZED_TAIL) | 220 |
| work package [`YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION) | 174 |
| work package [`YM/MultiNext/VACUUM_STABILITY/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/VACUUM_STABILITY) | 156 |
| work package [`YM/ProofPorts/COMMON_COMPLEX_PRODUCTION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProofPorts/COMMON_COMPLEX_PRODUCTION) | 153 |
| work package [`YM/Next/MULTISOURCE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MULTISOURCE) | 105 |
| work package [`YM/RG08/Flat/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat) | 101 |
| work package [`YM/WilsonBulk/Agenda/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Agenda) | 90 |
| work package [`YM/AnalyticBridge/ANNULUS_GAUSSIAN_INTERFACE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_GAUSSIAN_INTERFACE) | 78 |
| work package [`YM/ProjectorNext/PROJECTOR_EQUIVARIANCE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProjectorNext/PROJECTOR_EQUIVARIANCE) | 77 |
| work package [`YM/SectorNext/RECONNECTED_LOCALITY/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/RECONNECTED_LOCALITY) | 70 |
| work package [`YM/PhysicalNext/PHYSICAL_JOINT_ENDPOINT_LOAD_F16/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/PHYSICAL_JOINT_ENDPOINT_LOAD_F16) | 58 |
| work package [`YM/WilsonBulk/Broadcast/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Broadcast) | 56 |
| work package [`YM/SectorTools/PHYSICAL_GAUSSIAN_SWITCH/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_SWITCH) | 45 |
| work package [`YM/WilsonBulk/Transit/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Transit) | 34 |
| work package [`YM/PhysicalNext/ORDERED_AFFINE_2B/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/ORDERED_AFFINE_2B) | 26 |
| work package [`YM/WilsonBulk/Cash/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Cash) | 26 |
| work package [`YM/WilsonBulk/Heat/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Heat) | 17 |
| work package [`YM/PhysicalNext/RECURSIVE_SECANTS_079/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RECURSIVE_SECANTS_079) | 11 |
| work package [`YM/WilsonBulk/Tuning/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Tuning) | 6 |
| work package [`YM/WilsonBulk/Series/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Series) | 3 |
| work package [`YM/Progress/CLASSICAL_KIN_RECURSION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/CLASSICAL_KIN_RECURSION) | 2 |
| work package [`YM/Primitives/TWO_WAVE_TRACE_DENSITY/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/TWO_WAVE_TRACE_DENSITY) | 1 |
| work package [`YM/RG08/Invert/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Invert) | 1 |
| work package [`YM/WilsonBulk/Staves/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Staves) | 1 |
| work package [`YM/WilsonBulk/Tickets/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Tickets) | 1 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **III.4.1** [`gathered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Margins.lean#L51-L75) *(numbered result)* — A linear map of a Gaussian vector with PSD covariance is Gaussian with the transformed covariance, measure-preservingly.
- **III.4.2** [`still`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_MULTIPLIER/TicketsChart.lean#L63-L107) *(numbered result)* — For a smooth function vanishing to first order at 0, rescaling by d in (0,1] gives Taylor-type jet bounds of size W·d² uniformly on a ball.
- **III.4.3** [`passports`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Currencies.lean#L127-L150) *(key result)* — Under volume-growth hypotheses and a smallness condition, a counting inventory of clusters satisfies a summable total-cost bound.
- **III.4.4** [`publish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/Fold.lean#L139-L180) *(key result)* — A family of finite-volume operators with uniform exponential off-diagonal decay is realized by a single infinite-volume kernel with a slightly weaker decay rate restricting to each of them.
- **III.4.5** [`strip_resolvent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/Metric.lean#L30-L37) *(key result)* — A strip-decaying kernel with a uniform spectral gap has an inverse of the resolvent type that is again strip-decaying with explicit degraded rate and constant.
- **III.4.6** [`carried`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Visits.lean#L81-L120) *(numbered result)* — A jet budget at a walk endpoint transfers to the start with factor exponential in walk length via adjoint transport.
- **III.4.7** [`follows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Tracks.lean#L36-L89) *(numbered result)* — A pointwise jet-budget bound on target endpoints transfers to a bound on a sum over covered walks with exponential-in-length control.
- **III.4.8** [`fires`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Parade.lean#L56-L90) *(numbered result)* — A tail-weighted polynomial bill is dominated by an exponentially decaying quantity in the trigger count for large x.
- **III.4.9** [`charge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Due.lean#L70-L87) *(numbered result)* — A function with finite-range locality around a site, vanishing when far from it, has pointwise jet dues with exponential weight in the radius.
- **III.4.10** [`local_prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/SmallArc.lean#L28-L60) *(key result)* — Under local volume growth and derivative bounds, the free resolvent jets satisfy a polarized row/column budget bound with explicit altitude.
- **III.4.11** [`coordinates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Coordinates.lean#L126-L179) *(key result)* — For small coordinate perturbations, the field entries and scene fields admit uniform derivative bounds with constants depending only on the gauge and order.
- **III.4.12** [`transport_rows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/TrueTransport.lean#L257-L299) *(key result)* — Transport rows built from path data decaying at rate σ are priced bundles with exponentially small bounds in the minimal path length.
- **III.4.13** [`bound_plotted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Visits.lean#L135-L195) *(numbered result)* — Jet budgets for the plotted path data follow from toll bounds on nearby cells with geometric collapse over cut labels.
- **III.4.14** [`slots`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Prices.lean#L151-L182) *(numbered result)* — The negative log of the spare ratio is bounded by a constant times one plus the log of the scale.
- **III.4.15** [`release_integral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Haar.lean#L167-L184) *(key result)* — Integrals over link arrays can be rewritten as integrals over log coordinates by exponential substitution, with a Jacobian and indicator of the chart domain.
- **III.4.16** [`authentic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS/Trace.lean#L228-L253) *(key result)* — For a Gaussian measure, the exponential of a quadratic-plus-linear exponent with small weights is integrable with integral at most exp(2 trace), with trace counted over actual uses.
- **III.4.17** [`amount`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS/Moment.lean#L67-L71) *(key result)* — Under a base condition, the exponential of a sum of charges is Gaussian-integrable with integral at most exp(2 times the due quantity).
- **III.4.18** [`natural`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/ColourBooks.lean#L163-L192) *(numbered result)* — Windowed compressed covariance of ordered columns commutes with complete-block reindexing, for all u, even in singular cases and without symmetry.
- **III.4.19** [`moves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Binding.lean#L116-L134) *(numbered result)* — Under a change of site set and color-block projection, the windowed Gaussian covariance and mean transform naturally with the induced windows.
- **III.4.20** [`windows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L184-L239) *(key result)* — For symmetric gapped covariances with decay, the window-compressed covariance approximates the inverse with exponentially small error in radius, and is gapped and positive definite for large radius.
- **III.4.21** [`side`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/NONFLAT_COVARIANCE_LOCALITY/Frozen.lean#L83-L106) *(numbered result)* — The active-column block of the windowed matrix of an enlarged system equals the windowed matrix of the original system.
- **III.4.22** [`fluctuate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Packets.lean#L85-L113) *(numbered result)* — Uniform finite bound on the fluctuation (log-ratio) cost in a real logarithm neighborhood of the parameter.
- **III.4.23** [`thaw_integral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Haar.lean#L225-L253) *(numbered result)* — Iterated integration formula after exponential substitution on relative links for bounded functions supported where the chart condition holds, with integrability.
- **III.4.24** [`produce`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS/LocalPolynomial.lean#L58-L67) *(key result)* — A complex local polynomial of bounded degree, supported on a marked set with weights and magnitudes controlled, compiles to the ordered probe class with the stated read-set and cost bound.
- **III.4.25** [`poly_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/WEIGHTED_GAUSSIAN_MARGINAL_LIMIT_45C/Polynomial.lean#L82-L85) — Any complex polynomial of bounded total degree is moderate on the committed marginals with bound coefficient norm times a normal price.
- **III.4.26** [`impression`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Press.lean#L123-L155) *(numbered result)* — There is a common finite reference frame so actual block predictors exist for all sufficiently large coarse sides.
- **III.4.27** [`uses`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SHARP_NORMALIZED_TAIL/Tags.lean#L97-L112) *(numbered result)* — The uniform average of a product of functions depending on pairwise disjoint tag sets factorizes into the product of averages.
- **III.4.28** [`aperture`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Pan.lean#L57-L122) *(key result)* — For a gapped, finite-range, symmetric covariance family with rate bounds, the localized installed estimate holds uniformly with exponential decay at large scale.
- **III.4.29** [`charts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/AffineCharts.lean#L51-L121) *(numbered result)* — An analytic function vanishing at zero and matching a tangent map on one slice differs from the affine response by O(u²) on small balls.
- **III.4.30** [`linear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/NearJet.lean#L159-L187) *(numbered result)* — For a real-analytic map near zero, the first-derivative remainder is bounded by a constant times the parameter size in a small ball.
- **III.4.31** [`stocked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Completion.lean#L181-L212) *(numbered result)* — On inactive positions the identity completion gives the identity completion of the integral's covariance, omitting no zero modes.
- **III.4.32** [`regularized_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean#L142-L199) *(key result)* — At fixed volume the iterated sector integral equals an exact formula, with absolute integrability, for a chart ratio and enveloped observable.
- **III.4.33** [`wide`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Tracks.lean#L134-L161) *(numbered result)* — Pointwise jet budgets at all sites within distance R transfer to a budget for the finite-range kernel applied to the data.
- **III.4.34** [`cleans_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Clean.lean#L110-L208) *(key result)* — Under wide-field and funding hypotheses, there is a uniform constant and a direction vanishing on trunks such that all swept sites are clean for large x.
- **III.4.35** [`freshQ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Duplicated.lean#L52-L101) *(numbered result)* — The copied Q table's prediction map is, up to gauge endpoint factors, a contraction-bounded linear paste of the coarse and fine directions.
- **III.4.36** [`block_comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Block.lean#L316-L361) *(key result)* — For small fields in a local stencil, the branch derivative on a block is comparable to the left-trivialized group differential with uniform constants over all steps.
- **III.4.37** [`near_collective`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/AffineRows.lean#L184-L192) *(numbered result)* — Near zero, the affine collective kernel equals the individual kernel for all choices and orientations.
- **III.4.38** [`plotted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Ink.lean#L93-L120) *(numbered result)* — Block predictor chart maps are real-analytic with jet bounds uniform near zero on each fixed torus.
- **III.4.39** [`sounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Sounds.lean#L69-L101) *(key result)* — All mixed derivatives up to order k of the block coefficients on the selected row are bounded uniformly, and analytic, in a neighborhood of radius r.
- **III.4.40** [`reacts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/CollarData.lean#L131-L189) *(key result)* — For large scale x, large-field remainder estimates hold uniformly over all admissible steps and tubes, with constants and a weak radius decaying faster than any power.
- **III.4.41** [`bump_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/NONFLAT_COVARIANCE_LOCALITY/Either.lean#L27-L58) *(numbered result)* — If two data agree within a radius, the corresponding bump rows agree at entries whose separation plus patch span is within the radius.
- **III.4.42** [`sub_gram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/AffineMatch.lean#L162-L175) *(numbered result)* — The Gram matrix of the cut selected precision equals a submatrix of the repaired matrix.
- **III.4.43** [`notarized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/CutGerm.lean#L110-L129) *(key result)* — Near zero, the active and raw matrices of the no-hole cut comparison agree in a flat neighborhood.
- **III.4.44** [`not_flat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gap.lean#L242-L264) *(key result)* — There is a uniform positive lower bound on the precision (Gram) form of active prices at flag-correct volumes, valid for all large temperatures and admissible steps.
- **III.4.45** [`shared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Bore.lean#L303-L305) *(numbered result)* — The determinant of the flat kinetic precision matrix is the same for two admissible chart choices, so normalized Jacobians drop out.
- **III.4.46** [`late_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Year.lean#L113-L197) *(key result)* — For large scale x, uniformly over admissible step data, the actual transforms satisfy certified fixed-L price bounds with uniform constants.
- **III.4.47** [`open_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SHARP_NORMALIZED_TAIL/Apertures.lean#L43-L55) *(key result)* — The relevant Gaussian covariance is positive definite with a uniform cap for all keys and placements with correct flags.
- **III.4.48** [`ground_supply`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/SectorData.lean#L88-L110) *(key result)* — For a patch and teller, uniform constants exist such that all non-higher-order ground estimates hold on every large-scale step, tube and configuration.
- **III.4.49** [`laplace_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Laplace.lean#L70-L85) *(numbered result)* — An exponential of an observable bounded by a quadratic-type penalty is integrable under a Gaussian with covariance ceiling, with an explicit bound.
- **III.4.50** [`shifted_heat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/WEIGHTED_GAUSSIAN_MARGINAL_LIMIT_45C/Hot.lean#L84-L107) *(numbered result)* — A shifted Gaussian covariance with a billed exponential budget and bounded shift satisfies the joint exponential test.
- **III.4.51** [`chosen_branch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Branch.lean#L140-L219) *(key result)* — Predictor rows of the selected block have uniformly bounded mixed derivatives in a uniform ball of field parameters, with a single local gauge branch.
- **III.4.52** [`selected_priced`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/EntryBounds.lean#L186-L243) *(numbered result)* — Kernel entries of the selected rows satisfy uniform two-sided derivative/price bounds in the price coordinates of a small ball.
- **III.4.53** [`precision`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Neighborhood.lean#L122-L159) *(key result)* — Marked precision jets yield a period-uniform neighborhood in which the flat-comparison gap persists under perturbation of the base field with flags fixed.
- **III.4.54** [`assembly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Covariance.lean#L146-L210) *(key result)* — For a branch-certified patch, the selected-sector source object admits kernel jets of every finite order with uniform positive constants on a price-coordinate ball.
- **III.4.55** [`estimates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Residual.lean#L153-L187) *(key result)* — On the actual selected Gaussian's inverse, there are uniform constants giving the cost and multiplier-defect estimates for small price coordinates.
- **III.4.56** [`projecting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian/TreeInverse.lean#L64-L115) *(key result)* — The tree inverse of the quadratic slice Hessian is obtained by projecting the inverse of the joint completion, rather than estimated by kernel closeness.
- **III.4.57** [`cutHead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/TellerFold.lean#L118-L146) *(key result)* — The plane-tree-inverse covariance of the ideal free head equals the Gaussian conditional covariance tensor for any tag-consistent tree.
- **III.4.58** [`authorized_change`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L137-L192) *(key result)* — Under permitted Gaussian data, the actual sector integral admits an exact Gaussian change-of-variables formula with controlled price, licensing the downstream application.
- **III.4.59** [`committed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Handoff.lean#L132-L182) *(key result)* — Under the stated hypotheses, the committed renormalization-group integral is licensed: all displayed integrals are valid and the sector-change identity holds at each scale step.
- **III.4.60** [`prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Center.lean#L115-L151) *(key result)* — Uniform constants exist so that, for all large x, the affine pricing data satisfy estimates on a ball of coordinates and a shift bound.
- **III.4.61** [`openings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Desk.lean#L42-L107) *(numbered result)* — For a local ratio chart there exist constants such that aperture and sponsored conditions hold for all large x.
- **III.4.62** [`fromTeller`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Sky.lean#L62-L77) *(main result)* — For a fixed patch and gauge and teller data, there exist positive constants such that for all large x the sector covariance jet estimate holds with exact Gaussian endpoint metric.
- **III.4.63** [`authorized_loans`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/AuthorizedLoans.lean#L44-L61) *(key result)* — Ground, higher-derivative and query bounds for selected ordered kernels hold uniformly without extra jet input hypotheses.
- **III.4.64** [`trusting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Deposit.lean#L68-L93) *(key result)* — Uniformly for large x, gap and integrable-calculus (TestD) hypotheses hold on a germ neighborhood for the actual data.
- **III.4.65** [`headComparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Ideal.lean#L120-L144) *(key result)* — The physical free horizon-linked inverse is compared with the ideal one with a positive exponential rate chosen post-L.
- **III.4.66** [`commissioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/SectorLie.lean#L126-L134) *(key result)* — Ground bounds exist with constants, and any higher-derivative request yields a query bound with combined constants.
- **III.4.67** [`freeHead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/HeadSwitch.lean#L104-L143) *(key result)* — For large volume, zeroth-order Gaussian exchange holds: the actual free covariance is exponentially close to the ideal horizon-linked covariance with uniform constants.
- **III.4.68** [`total`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Taylor.lean#L73-L108) *(key result)* — The full affine inverse germ's jet discrepancy against spatial marks is bounded by an exponential window loss plus a path-cut loss on the same tree and data.
- **III.4.69** [`earned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Covers.lean#L67-L103) *(key result)* — Given a strip-bounded metric with gap, there is a strip-decaying operator whose restriction to each period equals the plane-tree-inverse conditional covariance form.
- **III.4.70** [`bought`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Stead.lean#L94-L117) *(numbered result)* — A uniform bundle price bound, with constants chosen before the orbit, trees and volume, holds for large x.
- **III.4.71** [`entries`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Quote.lean#L99-L127) *(numbered result)* — For large parameter, the move-matrix entries satisfy derivative bounds up to order k on a uniform real neighborhood.
- **III.4.72** [`face_payment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/RowStack.lean#L117-L130) *(numbered result)* — Face kicks satisfy derivative bounds with a uniform face cost across all channels and geometries.
- **III.4.73** [`fine_squares`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/AffineRows.lean#L157-L209) *(numbered result)* — Affine approximation of curvature squares along actual paths is controlled by the local deviation bounds in a tube.
- **III.4.74** [`joint_universal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian/Completion.lean#L62-L110) *(key result)* — For each j≥4 there is a uniform σ such that every branching patch with J=j admits a row inverse with strip bound for the flat Gaussian completion, uniform over scales.
- **III.4.75** [`before_local`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/CorePacket.lean#L151-L160) *(key result)* — Beyond some scale, the before-L ledger and point-charge bounds hold for all large x and admissible steps.
- **III.4.76** [`quote`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/SameQuote.lean#L216-L232) *(key result)* — The actual ordered kernels and their probability covariances are compared to Gaussian ones at the same Gram matrix with uniform constants, eventually in the parameter.
- **III.4.77** [`freezer_row`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian/PeriodicInverse.lean#L104-L139) *(key result)* — A frozen periodic inverse yields a row inverse with strip bound whose constants depend only on the slab, uniformly in period.
- **III.4.78** [`patch_agreed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Collar.lean#L52-L107) *(numbered result)* — Squares and charges on a coarse site's patch depend only on inputs agreeing on that patch, regardless of other choices.
- **III.4.79** [`coverall`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Roof.lean#L39-L62) *(key result)* — For each finite order there exist uniform constants such that, for large scale, the sector-change covariance presentation (Sky and Deck bounds) holds.
- **III.4.80** [`onePlateau`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Covers.lean#L114-L136) *(main result)* — There is a single exponentially localized operator that simultaneously represents the conditional covariance for all admissible steps and has exponentially small differences under shortening.
- **III.4.81** [`shortening`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/AffineResolvent.lean#L81-L100) *(key result)* — After cutting at radius R, the k-jet of the affine inverse germ differs from the original by an exponentially small error including position and energy cost.
- **III.4.82** [`residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/SectorWindows.lean#L139-L165) *(numbered result)* — The residual window term is small in chart bundle, exponentially in radius, at all derivative orders.
- **III.4.83** [`knows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/AffineResolvent.lean#L65-L74) *(numbered result)* — Affine inverse jet outputs are controlled in the actual unselected no-hole geometry without assuming a gap.
- **III.4.84** [`haar_operators`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/HaarOperators.lean#L71-L83) *(key result)* — Marginal input estimates for Haar operator ordered kernels hold eventually with uniform constants for all admissible steps.
- **III.4.85** [`annulus_pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Annulus.lean#L36-L127) *(key result)* — For large fields, annulus contributions admit chart bounds and super-polynomially small error with affine direction selection uniformly over steps.
- **III.4.86** [`preflight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Trees/Pressure.lean#L69-L82) *(key result)* — There exists a sequence of scales, one for each level, such that covariance models serve with constants for all patches and horizons.
- **III.4.87** [`coat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Recovery.lean#L68-L219) *(key result)* — Local annulus analytic estimate: rows in the sweep with wide data return with error decaying faster than any power.
- **III.4.88** [`packing_bill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Trees/Transfer.lean#L55-L66) *(key result)* — For a patch, there is a positive rate and constant such that any bed with strip metric and floors is served by the model.
- **III.4.89** [`focused`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Subtotal.lean#L123-L165) *(key result)* — Uniform estimates for the lifted step: under small perturbations along tube configurations, the step's kernel comparison holds with explicit constants for large parameter.
- **III.4.90** [`aperture`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/WEIGHTED_GAUSSIAN_MARGINAL_LIMIT_45C/Venue/Chips.lean#L31-L68) *(key result)* — For large x, on every collection of link colors and sector-admissible configurations, a Gaussian marginal comparison estimate holds uniformly.
- **III.4.91** [`contracted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Contraction.lean#L159-L215) *(numbered result)* — Under local ratio hypothesis, the committed J at every point in the ball equals the absolute value of the spin function.
- **III.4.92** [`same_row`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Reading.lean#L194-L212) *(numbered result)* — A full-precision matrix entry is unchanged between two configurations agreeing on the relevant neighborhood.
- **III.4.93** [`chain_receipt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/ACTUAL_SECTOR_FACTOR_DICTIONARY/Chains.lean#L68-L94) *(numbered result)* — Under a relative decay condition with ratio below one, the path sum over chains converges absolutely to the difference of inverses C⁻¹−A.
- **III.4.94** [`publish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/PHYSICAL_JOINT_ENDPOINT_LOAD_F16/DLog/Color.lean#L38-L63) *(numbered result)* — Smoothness of a function together with weighted jet bounds yields a bound ticket (norm-type estimate) on a ball.
- **III.4.95** [`labeled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Alphabet.lean#L196-L208) *(numbered result)* — Log determinant and log of one plus excess are sums over labeled tuple series with summable pieces.
- **III.4.96** [`gilded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Alabaster.lean#L141-L155) *(numbered result)* — Three letter data types obey the shared hit budget at gauge-invariant value level.
- **III.4.97** [`foreshadows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L96-L134) *(numbered result)* — Under positivity hypotheses, a payment bound for the unmarked assembly holds for all large parameter and compatible step data.
- **III.4.98** [`panel_report`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Ink.lean#L162-L182) *(numbered result)* — Smoothness and integrability of differentiated label arcs holds at a point given a local scaling form.
- **III.4.99** [`growth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Planning.lean#L39-L54) *(numbered result)* — Given entries per family and growth of order, one can choose panels, index sets and sizes with compatibility and size-book conditions.
- **III.4.100** [`abound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Regale.lean#L65-L88) *(key result)* — For large x, under tree-exponent and lane-count hypotheses, the terra exponent function is petty with error x^(-1/24) uniformly over sectors.
- **III.4.101** [`issue_invoice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Petty.lean#L72-L90) *(key result)* — A decomposition of the spool lift into local pieces plus a petty remainder yields a plate with bounded base and an exponential-minus-one bound by a Hit-type budget.
- **III.4.102** [`rate_pass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L36-L48) *(key result)* — The kept-early log-determinant decomposes as a sum of site rents, a nightly term, and intro and show taxes.
- **III.4.103** [`book_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Shards.lean#L34-L39) *(key result)* — The kept-early log-determinant equals minus the number of frozen sites times log of spare, plus sector sums and intro and show taxes.
- **III.4.104** [`bolsters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Sage.lean#L82-L114) *(key result)* — For large x, the quadratic auxiliary and relative log-price terms are both petty with error x^(-1/8) uniformly over sectors.
- **III.4.105** [`chains`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Series.lean#L203-L227) *(key result)* — The log determinant chain identities hold: the log determinant of a positive definite covariance expands as a convergent series of trace terms.
- **III.4.106** [`stores`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/PHYSICAL_JOINT_ENDPOINT_LOAD_F16/DLog/Fund.lean#L120-L127) *(key result)* — For a gauge, patch and predictor with branching property, there is a fund object so that the post-L stock for determinant labels holds eventually in x.
- **III.4.107** [`posDef_of_integrable_quadratic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Escape.lean#L52-L94) *(numbered result)* — If exp(-quadratic/2 - linear + constant) is integrable on Euclidean space, then the symmetric matrix is positive definite.
- **III.4.108** [`inverse_perturb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_SWITCH/TableCosts.lean#L63-L83) *(numbered result)* — If D⁻¹ has decay bound K and A−D is small with decay, then A⁻¹ has the same decay with constant 2K.
- **III.4.109** [`likelihood_local`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Support.lean#L178-L207) *(numbered result)* — For a locally confined perturbation, the likelihood ratio equals that of the marginal Gaussians on the local support.
- **III.4.110** [`priceShift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/Relative.lean#L245-L266) *(numbered result)* — The log of the Gaussian density ratio under a shift is bounded by explicit quadratic expressions in the difference and inverse-decay constants.
- **III.4.111** [`takings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Folio/Takings.lean#L99-L116) *(key result)* — For any fixed polynomial degree and support exponent, the joint endpoint load is eventually exponentially small in the radius parameter.
- **III.4.112** [`power_iff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Moment.lean#L183-L185) *(numbered result)* — The p-th power of a Gaussian likelihood ratio is integrable exactly when the mixed precision matrix is positive definite.
- **III.4.113** [`root_pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Origin.lean#L208-L218) *(numbered result)* — The blame term is uniformly bounded by a constant per key over admissible data.
- **III.4.114** [`paid_kernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/ResidualPrice.lean#L159-L221) *(key result)* — The residual quadratic and one log term of the sector change are controlled with exponentially small cost using the true covariance and window.
- **III.4.115** [`visions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/CovBound.lean#L118-L146) *(numbered result)* — A fixed-L covariance is bounded above and below uniformly in flags, positions, forest and placement for large x.
- **III.4.116** [`holds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Chord.lean#L133-L158) *(key result)* — Uniform Schur-type size and decay bounds hold for the quantities in the Gaussian bills across all admissible steps, forests and placements for large x.
- **III.4.117** [`oasis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Echo.lean#L191-L223) *(key result)* — Uniform signed exponent bounds hold on the genuine law including the blame term for all admissible data and large x.
- **III.4.118** [`weighted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Weighted.lean#L104-L138) *(key result)* — A trace-priced weighted local Gaussian change has positive-definite mixed precision and an explicit exponential bound on its p-th moment.
- **III.4.119** [`insert_letter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Insertion.lean#L120-L172) *(key result)* — A small signed local quadratic-affine insertion into a Gaussian density has finite p-th likelihood moment under an explicit smallness condition.
- **III.4.120** [`pockets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Brume.lean#L144-L152) *(numbered result)* — For an injective family of enrolled keys, the tilt cost on a finite set of distinct keys is bounded, allowing untouched keys to be dropped.
- **III.4.121** [`many`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Buoy.lean#L104-L152) *(numbered result)* — Trigger and detector cost on an enrollment of n real coordinates is bounded by an explicit polynomial in n with constant depending on L and k.
- **III.4.122** [`same_law`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Arc.lean#L189-L253) *(key result)* — Terms with polynomial score bounds supported on a trigger set have expectation under the true sector law controlled uniformly by Gaussian-table data with a constant depending only on L and k.
- **III.4.123** [`r4`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Ember.lean#L69-L111) *(numbered result)* — A fourth-moment style L1 bound for products of ratio insertions on a common marginal under a Gaussian table with bounded hit counts.
- **III.4.124** [`painting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Rain.lean#L55-L68) *(key result)* — For any gauge, patch and teller with branches, there exists a paint such that the medium condition holds eventually for large x.
- **III.4.125** [`same_purchase`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/Relative.lean#L72-L118) *(key result)* — For symmetric gapped covariance matrices with exponentially decaying inverse, localized to windows of large radius, the windowed matrix has uniform decay with constants independent of volume.
- **III.4.126** [`before_paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Calendar.lean#L108-L124) *(key result)* — For any kernel choices there are constants such that cheap-stage budgets yield a horizon structure with the required suffices and sworn properties for all paid inputs.
- **III.4.127** [`book`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Calendar.lean#L133-L138) *(key result)* — Under local ratio and outlet hypotheses, one can choose booths and a sufficiently late ordered delay schedule such that funding, ringing and annulus conditions hold for all later schedules.
- **III.4.128** [`blocks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Consumer.lean#L167-L199) *(key result)* — Physical Gaussian Lp insertion estimates hold eventually with explicit positive constants for the actual correction pieces.
- **III.4.129** [`purchase`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/Charges.lean#L151-L204) *(key result)* — For fixed patch, there exist constants such that for large x all admissible steps and flag-cell configurations satisfy the Ready bundle of Gram/resolvent window estimates, with constants independent of fields and volume.
- **III.4.130** [`geared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L59-L66) *(main result)* — For simple G, kernel choices and budgets, one can choose widths, amplitudes and rates so that for all sheets and levels satisfying the purchases, full paths with prescribed costs exist (B70 production without external Rack premise).
- **III.4.131** [`sailsV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Seaside.lean#L96-L154) *(main result)* — For a simple graph and kernel choices with branching, there exists a sheet with prescribed kernel and stage, with prices such that for all tariffs and scopes the paid view holds from some index on.
- **III.4.132** [`advanced`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/Bias.lean#L193-L217) *(key result)* — At eligible cells, the translated Gaussian prices of the actual affine source are controlled by uniform constants depending only on the data, giving a readiness estimate.
- **III.4.133** [`sources_read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/Bias.lean#L104-L133) *(key result)* — The actual affine source/bias cost in physical coordinates is bounded by C(temp x + l), uniformly in the step data for large x.
- **III.4.134** [`color_pipe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L394-L435) *(key result)* — For simple G, all-period assembly yields constants and a path datum for the next scale with bounds, classical matching and records, from inherited data.
- **III.4.135** [`endures`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Instruments.lean#L69-L86) *(key result)* — Given a concert and early choices, one can choose records with small epsilon so that for any menu and delays, later schedules satisfy the cadence and sustained conditions.
- **III.4.136** [`boats`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Ride.lean#L62-L74) *(key result)* — For a patch with branching teller, there is a uniform constant such that for all large x every matching desk with calling and day hypotheses satisfies the joint trip bound.
- **III.4.137** [`bands`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Band.lean#L141-L145) *(key result)* — For a branching patch and teller, in-band Gaussian insertion prices hold eventually with positive constants for each Lp exponent.
- **III.4.138** [`ruese`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Expound.lean#L68-L77) *(key result)* — For any budget function, there exists a sheet with kernel K and stage, and nested thresholds producing delays and directed structures.
- **III.4.139** [`post`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Reverse.lean#L64-L88) *(key result)* — For a given gauge, patch and teller, there exist constants such that for large x the comparison returns into the paid endpoint law uniformly over steps, tubes and fields.
- **III.4.140** [`transition_cap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L92-L182) *(key result)* — For simple G, there exist constants so that whenever the horizon calculation holds, suitable parameters yield a coherent transition bound.
- **III.4.141** [`timberT`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Retreat.lean#L44-L63) *(key result)* — There exist parameter sequences, programs and registers so that for all large indices the full sheltered package holds.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

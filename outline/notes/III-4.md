# III.4. Gaussian integration: change of Gaussian sector, determinants, window law — detailed notes

> The full account of unit III.4: every proposition with its proof sketch, checked against the Lean in two rounds and edited. The condensed outline and the map of the Lean are on the [unit page](../units/III-4.md).

[Unit page](../units/III-4.md) · [All units](../units.md) · [Overview](../README.md)

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** about 40 work packages. The main ones are [`YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE) (exact change of variables, gap, windows), [`YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE) and [`YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON) (determinants and the polymer form of a sector), [`YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS), [`YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION) and [`YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS) (Gaussian moments), [`SECTOR_AFFINE_JETS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS), [`SECTOR_COVARIANCE_JETS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS) and [`SELECTED_ORDERED_KERNELS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS) (jets), [`LOCAL_GAUSSIAN_LAWS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS), [`GAUSSIAN_FIELD_ALIGNMENT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT), [`YM/Push/FREE_RESOLVENT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT) and [`YM/RG08/Gaussian/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian) (locality, infinite-volume kernels), [`YM/SectorNext/LARGE_FIELD_REMAINDERS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS), and the constant-producing statements in `Next/STATIONARY`, `MergeProof` and `PhysicalNext/V9_JOINT_ENDPOINT_LOAD`. **Size:** 37,956 lines in 4,737 declarations of the main-theorem closure.

**Conventions.** The parameter $x$ is the coarse inverse-coupling parameter: in applications $x=\hat\beta_m$. Throughout:

- $R(x)=\lceil(\log x)^2\rceil$ is the cluster radius ([`radiusB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22)).
- $t(x)=x^{-1/2}e^{(\log\log x)^2}$ is the small-field threshold ([`temp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L25)).
- $\beta_F(x,L)=x+s_G\log L$ is the coupling one level finer.
- $t_L(x)=t(\beta_F(x,L))$ is the fine-level threshold ([`fiery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L26)).
- $g=\beta^{-1/2}$.
- "For large $x$" means: there is $x_0$, depending only on the constants fixed before it, such that the statement holds for $x\ge x_0$.
- Write $\|A\|_s$ for the maximum of the row and column sums $\sum_j e^{s\,\mathrm{dist}(i,j)}|A_{ij}|$. Positions lie on the coarse torus; several coordinates may have the same position. Matrix inequalities refer to quadratic forms. Put $r_x=\lfloor R(x)/60\rfloor$.

## 1. What this unit proves

**Setting.** One block-spin step $S$ maps a fine torus $\Lambda_f$ (side $f=Lc$, block size $L$ odd) to a coarse torus $\Lambda_c$. The push-forward of the density at fixed coarse field $V$ is decomposed (III.1, III.9) into sectors. A sector is given by:

- a store $A$: the large-field data, made of cost cells, aisles and flagged sites, with a partition of unity $\mathrm{bill}_A$ given by an allocation $D$;
- a choice $k$ of gauge-fixing tags;
- a spanning forest $F$ (tree gauge).

The integration variables are the free links of $F$, with product Haar measure. In each sector the unit splits the free links as follows ([`chill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean#L38-L40)):

- **frozen links** $\mathcal F_A$: a parent block of an endpoint lies within distance $10R(x)$ of $A$. These are kept as Haar variables $Y$.
- **active links** $\mathcal A_A$: all others. These are written $u_e=\exp(a_e)\,\nu_e$, with $a_e\in\mathfrak g$ and $\nu=\iota V$ the copy of $V$ on the fine lattice ([`replica`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L35-L36)).

We write $n_a=|\mathcal A_A|\dim\mathfrak g$.

On selected stencils, the step energy contains a sum of affine squares $Q_Y(a)=\tfrac12\lvert Ma+s(Y)\rvert^2$ ([`guide`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Remainder.lean#L37)):

- $M$ is a linear map from active coordinates to rows of linearised plaquette curvatures and block constraints;
- $s(Y)$ depends on the frozen links.

From these the unit defines three objects:

- the **precision** $W=M^{\top}M$ ([`Rows.gram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Remainder.lean#L27));
- the **covariance** $C=W_{\mathcal W}$, the symmetrised windowed inverse of $W$, with windows of coarse radius $R(x)/20$ ([`fog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Chosen.lean#L69-L70));
- the **mean** $m(Y)=-(W^{\mathrm{per}})^{\top}M^{\top}s(Y)$ ([`meanLog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Chosen.lean#L72-L74)). This is a window approximation to the minimiser $-W^{-1}M^{\top}s(Y)$; its gradient need not vanish.

The unit proves four things:

- an *exact* Gaussian change of variables in every sector of every RG step;
- the gap and locality of $W$ and $C$, uniformly in volume, store and field;
- local expansions of the log-determinants, and a polymer form of each sector with large-field suppression;
- Gaussian moment bounds, jet bounds, and the production of all post-$L$ constants.

**Proposition III.4.1 (exact Gaussian change of variables in one sector).** Fix the following data:

- a step $S$ and a tube $T$ satisfying the funding conditions of a teller: the prescribed kernel and stage, the multiscale metric bounds, the prescribed fine and coarse cutoffs, bounds on both path families, and compatible free metrics and towers;
- a representation $R$ of the fine density whose paths satisfy their bounds and whose activities satisfy the validity bounds, with $\beta=\beta_R$;
- $x$, $V$, $k$, $A$, $F$, an allocation $D$ and a cutoff profile $\chi$;
- a chart ratio $J$, meaning:
  - $J_{\rm sc}>0$ and $\rho_J>0$, and $J$ is measurable;
  - $J$ is real-analytic and positive on a ball $B_{\rho_J}\subset\mathfrak g$;
  - $J(0)=1$;
  - $\exp$ is injective on $B_{\rho_J}$;
  - $J_{\rm sc}\,J(a)\,da$ is mapped by $\exp$ onto normalised Haar measure restricted to $\exp B_{\rho_J}$;
  - $\exp B_{\rho_J}$ is open;
- a number $d>0$.

Let $C$ be a matrix on the active coordinates and $m$ a map from frozen arrays to active coordinates. Assume they are *permitted* ([`Permitted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L95-L103)):

- $C\succ0$, $\beta>0$, $m$ measurable, and $4d<\rho_J$;
- the *standing condition* ([`Standing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean#L51-L55)): whenever $\mathrm{bill}_A\ne0$ and the gauge tags are eligible, every active link equals $e^{a_e}\nu_e$ with $\lvert a_e\rvert\le d$.

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
- $\tilde J_d(a)$ is the product of the extended link Jacobians, each equal to $J(a_e)$ for $\lvert a_e\rvert\le 2d$; $\chi_d$ is the product cutoff, equal to $1$ when every $\lvert a_e\rvert\le d$.

Equivalently, $\mathrm{pref}\cdot\Psi(Y,z)=e^{\frac12 z\cdot C^{-1}z}\,r(Y,m(Y)+gz)$, where $r$ is the integrand in Lebesgue log-coordinates ([`recolored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L73-L93)). The identity holds for *every* permitted $(C,m)$. No quantitative locality assumption is needed.

*Status:* theorem.

*Lean:* [`authorized_change`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L137-L192).

**Proposition III.4.2 (licence of every committed RG step; the transfer identity).** Let $\mathscr R$ be a directed RG run (III.9) whose delays satisfy the rate conditions and the per-stage chart conditions ([`Starcash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Handoff.lean#L57-L71)). Let $m<N$, let $p$ be a period, and let $R$ be a representation at level $m+1$ on its selected history with $\beta_R\in[\hat\beta_{m+1}/2,\,2\hat\beta_{m+1}]$. Write:

- $S$ for the step from level $m+1$ to level $m$;
- $x=\hat\beta_m$ and $\beta=\beta_R$;
- $j=J(m+1)$ and $i=J(m)$ for the stage indices;
- $d=a_{ji}\,t(\hat\beta_{m+1})$, and $w$ for the allocation width at this stage pair.

Then:

- $w>0$, $d>0$, $\beta>0$, $E_{ji}>0$, $2d<\rho_{\rm first}$ and $4d<\rho_J$;
- $\lvert\log J(t)\rvert\le E_{ji}\lvert t\rvert^2$ for $\lvert t\rvert\le4d$;
- there is $\kappa>0$ such that for all allocations $D$ of width $w$, forests $H$ and profiles $\chi$:
  - (i) writing $I_A$ for the signed sector column, its contribution to the push-forward, and $L_A$ for the nonnegative column with absolute fine density, after removing the selected packet energy and kernel prefactor, both have bounded Borel envelopes and $|I_A(V)|\le\mathrm{pref}(\beta)e^{-\beta\kappa t_L(x)^2|A|}L_A(V)$ ([`PortionCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L151-L155));
  - (ii) for all $A,k,V$, the chart is admitted ([`Admitted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Stamped.lean#L36-L42)); when $\mathrm{flags}(A)=\mathrm{flags}_{t(x)}(V)$, also $C=W_{\mathcal W}\succ0$, $W\succ0$ and the selected predictor rows have analytic derivatives with a common bound; and the conclusions of III.4.1 hold with $C=W_{\mathcal W}$ and the windowed mean for every store (for wrong flags trivially, since $\mathrm{bill}_A\equiv0$);
  - (iii) for every $V$:
$$\mathcal S_\beta(\rho_R)(V)=\sum_A\mathrm{sieve}(V)\sum_k\mathrm{pref}\,J_{\rm sc}^{\lvert\mathcal A_A\rvert}(2\pi g^2)^{n_a/2}(\det C_{A,k,V})^{1/2}\iint\Psi\,d\gamma_{C}\,d\mathrm{Haar}.$$

Here $\mathcal S_\beta$ is the block-spin push-forward, $\rho_R$ is the fine density, and $\mathrm{sieve}(V)=\exp(-\beta\cdot\text{orientation-averaged coarse energy of }V)$.

*Status:* theorem, conditional on the run, history and band hypotheses. III.4.12 supplies the rate and chart conditions; III.9 supplies the selected history.

*Lean:* [`committed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Handoff.lean#L132-L182), [`displaced_wrong`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Stamped.lean#L124-L137).

**Proposition III.4.3 (gap and locality of the actual precision and covariance).** Fix $G$, a patch $P=(L,J)$ and a teller whose kernel satisfies the branch condition. There are $v,\eta,b,E>0$ and $K\ge0$ (post-$L$ constants) with the following property. For large $x$, take any step with patch $P$ and coarse side $c\ge100(1+R(x))$, any funded tube, and any $A,F,k,V$ with $\mathrm{flags}(A)=\mathrm{flags}_{t(x)}(V)$. Then:

- (i) $\eta\lvert a\rvert^2\le a\cdot Wa$ for all active $a$ ([`Gap.not_flat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gap.lean#L242-L264));
- (ii) $W$ has exponential off-diagonal decay in the Schur norm: $\sup_i\sum_j e^{v\,\mathrm{dist}(i,j)}\lvert W_{ij}\rvert\le K$, and the same for columns, where $\mathrm{dist}$ is the coarse distance between the parent blocks of the coordinates;
- (iii) $\lVert C-W^{-1}\rVert_0\le E\,e^{-br_x}$, and $C\succ0$;
- (iv) $C\le K'$ for some post-$L$ constant $K'$ ([`open_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SHARP_NORMALIZED_TAIL/Apertures.lean#L43-L55)).

The constants do not depend on the volume, the store, the forest or the field.

*Status:* theorem.

*Lean:* [`opaqueCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Chosen.lean#L102-L143).

**Proposition III.4.4 (window law).** Let $\sigma,\eta>0$, $K\ge0$, and fix a nonnegative function $B:\mathbb R\to\mathbb R$. There are $u,E,g>0$ such that for every sufficiently large integer $r$ the following holds, uniformly in the torus and the finite coordinate set. Let the coordinate positions $p_j$ satisfy $\sum_j e^{-v\,\mathrm{dist}(i,p_j)}\le B(v)$ for every coarse site $i$ and every $v>0$ ([`Revenue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L125)). Let $A$ be a finite symmetric matrix with:

- Schur decay $\lVert e^{\sigma\,\mathrm{dist}}A\rVert_{\rm Schur}\le K$;
- gap $\eta$;
- windows $\mathcal W_i$ that contain the $r$-ball around $i$.

Let $L$ be the windowed inverse, $L_{\cdot i}=(A|_{\mathcal W_i})^{-1}e_i$ extended by zero, and $A_{\mathcal W}=\tfrac12(L+L^{\top})$ ([`clouded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L70)). Then:

- $\lVert A_{\mathcal W}-A^{-1}\rVert_{\rm Schur}\le Ee^{-ur}$;
- $A_{\mathcal W}\ge g=\eta/(2(K+1)^2)$ and $A_{\mathcal W}\succ0$.

A strengthened form ([`same_purchase`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/Relative.lean#L72-L118)) gives a rate $s\in(0,\sigma]$ and a constant $K_1$ such that $A$, $A^{-1}$, $L$ and $(A_{\mathcal W})^{-1}$ all have $s$-weighted Schur norm $\le K_1$, and $\lVert e^{s\,\mathrm{dist}}(L-A^{-1})\rVert_{\rm Schur}\le K_1e^{-sr}$.

*Status:* theorem. The constants depend only on $(\sigma,\eta,K,B)$.

*Lean:* [`Schur.windows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L184-L239).

**Proposition III.4.5 (log-determinants as local path series).** Let $A\succ0$ with windows $\mathcal W$ ($i\in\mathcal W_i$). Let $P_u$ be the column-wise windowed inverse of $A+uI$, and $\Delta_u=(A+uI)P_u-I$. Assume the following bounds ([`Priced`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Walls.lean#L79-L89)), at a fixed nonnegative Schur rate, with $C\ge1$ and $0\le q<1$, for every $u\ge0$:

- $\lVert A\rVert\le C$;
- $\lVert(A+u)^{-1}\rVert,\ \lVert P_u\rVert\le C/(1+u)$;
- $\lVert\Delta_u\rVert\le q/(1+u)$;
- $\lVert S\rVert\le q$, where $S=AA_{\mathcal W}-1$.

Assume also $A_{\mathcal W}\succ0$. Then
$$\log\det A=\sum_i\Big(\ell_i+\sum_{n\ge0}r_{i,n}\Big),\qquad \log\det(1+S)=\sum_i\sum_{n\ge0}\frac{(-1)^n(S^{n+1})_{ii}}{n+1},\qquad \log\det A_{\mathcal W}=-\log\det A+\log\det(1+S),$$
with:

- $\ell_i=\int_0^\infty[(1+u)^{-1}-(P_u)_{ii}]\,du=(\log A|_{\mathcal W_i})_{ii}$, the single-window letter;
- $r_{i,n}=-\int_0^\infty(P_u(-\Delta_u)^{n+1})_{ii}\,du$ and $\int\lvert\cdot\rvert\le Cq^{n+1}$.

All series converge absolutely. Moreover ([`labeled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Alphabet.lean#L196-L208)), the matrix products expand into closed index paths. A term $r_{i,n}$ has one $P_u$ factor and $n+1$ defect factors, hence $n+2$ jumps; the corresponding trace-series term has $n+1$ jumps. The absolute values, summed over the intermediate indices, are bounded by $Cq^{n+1}$ and $q^{n+1}/(n+1)$, respectively.

*Status:* theorem.

*Lean:* [`Priced.chains`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Series.lean#L203-L227).

For the relative expansions, the sector regularity conditions are: a lawful representation; matching fine paths and cutoff; a local chart with $d>0$, $4d<\rho_J$ and $2d<\rho_{\rm first}$; positive coupling and sector width; $0<t_L(x)\le1$; output threshold $t(x)$; and the tube's geometric, local-readability, predictor-derivative, covariance-positivity and gap conditions ([`Chips`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Desk.lean#L41-L54), [`Boosted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Exposure.lean#L40-L46)).

**Proposition III.4.6 (relative normalisation of a sector and its localisation).** Let $K_F$ be the flat kinetic precision: the Gram matrix of the move at $V=1$ with empty store, on all free links of $F$.

(i) If the fine path family satisfies its path bounds and the kernel satisfies the patch's branch condition, $\det K_F$ does not depend on the forest or on the gauge tags ([`Native.shared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Bore.lean#L303-L305)).

(ii) Assume:

- the tube is funded, and its fine path family and cutoff are those of $R$;
- the precision certificate of Lemma 4.21 holds;
- $J$ is a local chart ratio, $\beta>0$, and the threshold of the output budget point is $t(x)$.

Then on every sector point $p=(A,F,k,V,Y,z)$ with matching flags, the positive density factor, with the sector masks and polymer product kept outside it, factorises as
$$\text{freight}(p)=\text{loading}(V)\,e^{\Lambda(p)},\qquad \text{loading}(V)=\text{banker}(V)\,\mathrm{pref}(\beta)\,e^{v_R\lvert\Lambda_f\rvert}\,\mathrm{spare}(\beta)^{\lvert F^{\rm free}\rvert}(\det K_F)^{-1/2}>0.$$
Here $\text{freight}=J_{\rm sc}^{\lvert\mathcal A\rvert}(2\pi g^2)^{n_a/2}(\det C)^{1/2}e^{\frac12 z\cdot C^{-1}z}\,\tilde J\cdot(\text{noise})\cdot e^{\mathrm{exponent}_R}$, and $\mathrm{spare}(\beta)=(2\pi g^2)^{\dim\mathfrak g/2}J_{\rm sc}$ is the Gaussian normalisation per link. The exponent is
$$\Lambda(p)=-\beta\,\mathcal E(p)+\eta\cdot z+\tfrac12z\cdot(C^{-1}-W)z+\kappa(p)+\sum_e\log\tilde J(a_e)+(\text{tails}),$$
$$\kappa(p)=-\lvert\mathcal F_A\rvert\log\mathrm{spare}(\beta)-\tfrac12\big(\log\det W-\log\det K_F\big)+\tfrac12\log\det(WC).$$
Here $\mathcal E$ is the orientation-averaged row energy, including the subtraction of the affine energy at $a$ and its addition at $m$:
$$\mathcal E=E_{\rm noise}(U,V)+E_{\rm fine}^{\rm cut}(U)-E_{\rm coarse}^{\rm cut}(V)-Q_Y(a)+Q_Y(m).$$
The tails are the remaining fine exponent after removing its volume constant and restoring its cut energy, together with the coarse cutoff correction. Thus $\mathcal E$ is not merely a sum of affine squares.

(iii) Assume in addition the sector regularity conditions below, a nonnegative polymer exponent, and both path-counting bounds of Lemma 4.21. Then $\kappa(p)=-\lvert\mathcal F_A\rvert\log\mathrm{spare}+\sum_e\mathrm{sect}_e+I+\mathrm{Sh}$ ([`book_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Shards.lean#L34-L39)), where:

- $\mathrm{sect}_e=-\tfrac12\sum_{\rm colours}[\ell_e(\text{actual})-\ell_e(\text{flat})]$, the difference of the single-window letters of III.4.5 for the identity-completed full precision at $(A,V)$ and at $(\emptyset,1)$;
- $I$ is the corresponding difference of path letters;
- $\mathrm{Sh}=\tfrac12\log\det(1+S)$.

(iv) Regrouping ([`rate_pass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L36-L48)) gives $\kappa=\sum_{o}\mathrm{rent}_o+\mathrm{far}+I+\mathrm{Sh}$:

- $o$ runs over the cores of $A$ (the components formed by overlap of the $500R(x)$-halos of its seeds);
- $\mathrm{rent}_o$ is the sum of $\mathrm{sect}_e-\log\mathrm{spare}\cdot1_{e\in\mathcal F_A}$ over links within $200R(x)$ of $o$;
- $\mathrm{far}$ is the same sum over links farther than $200R(x)$ from $A$.

*Status:* theorem.

*Lean:* [`Dyed.cardinal_spin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Prism.lean#L102-L168), [`Dyed.keptEarly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Prism.lean#L50-L54), [`Dyed.spoolLift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Prism.lean#L56-L63).

**Proposition III.4.7 (polymer form of a sector, with large-field suppression).** Fix:

- a teller and a patch $D$ satisfying the branch condition;
- a determinant-jet fund and a local chart ratio $J$;
- a polymer exponent $e\ge0$, a chart-width multiplier $h\ge0$, constants $a,\alpha,\tau>0$ with $2\alpha\le a/2$, and certificate constants $C_0\ge0$, $g_0,b_0,d_0>0$, $\eta_0\in\mathbb R$.

Then for large $x$ the following holds. Let $y=\mathrm{retime}(x)$, $z=\beta_F(x,D.L)$ and $\mathrm{hot}(s)=e^{(\log\log s)^{3/2}}$. Eventually $x\le y\le x^2$ and $t(y)=x^{-1/2}\mathrm{hot}(x)$. Take a step with patch $D$, a sector datum with chart $J$, and positive cutoff parameter $W_0$, subject to the following assumptions:

- the representation is lawful; the tube has the same fine paths and cutoff as the representation and satisfies the funded, geometric and chart-admission conditions; the chart radius $d=h\,t_{D.L}(y)$ satisfies $d>0$, $4d<\rho_J$ and $2d<\rho_{\rm first}$; the output threshold is $t(y)$;
- the step satisfies the free-metric size condition and $c\ge100(1+R(y))$, and its fine and coarse path families have a common path bound;
- $\beta\in[z/2,2z]$; the fine threshold $s=z^{-1/2}\mathrm{hot}(z)$ also lies in $[t_{D.L}(y)/2,2t_{D.L}(y)]$;
- on each eligible packet the row energy $\mathcal E$ is at least $a s^2$ times its size, whenever the sector cutoffs are nonzero;
- the support exponents satisfy the reserve inequality with parameters $(e,\tau)$; the budget radius $B_0$ satisfies $25R(y)+30\le B_0\le\mathrm{walls}(y)$, and the fine budget radius is at most $2B_0$;
- the lawful-representation bound can be chosen with activity constant $\Gamma\le\beta_F(y,D.L)^{1/8}$ and smallness parameter $\delta\le y^{-1/2}$, and the fine paths satisfy the required row-counting bound;
- the determinant-jet certificate at halo $20$, exponential order $2$ and derivative order $1$, and the precision and two path-counting certificates of Lemma 4.21 hold at $y$, with constants $(g_0,C_0,\eta_0,b_0,d_0)$;
- uniformly over flag-matched sectors and frozen arrays, $\|C\|_0$ is bounded by a common constant, every component of $m$ and of $Mm+s(Y)$ has absolute value at most $1$, and $|\eta_i|\le y^{-4}$; on the chart-cutoff support, $|z_i|\le y^2$.

For such data there is a decomposition ([`Plate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Plotter.lean#L19-L28))
$$\Lambda(p)=\sum_{o\in\mathrm{cores}(A)}\mathrm{base}_o(p)+\sum_X\mathrm{aux}_X(p)$$
whenever the flags match and the product of the fine-field, block, gauge-tag and chart cutoffs is nonzero. The bounds below hold for every flag-matched $p$, including points outside that support.
In it:

- $\mathrm{base}_o$ depends only on the data in the $500R(y)$-neighbourhood of $o$;
- $\mathrm{aux}_X$ depends only on the data near the local support $X$;
- both are gauge-invariant and lattice-covariant;
- $\mathrm{base}_o\le-\alpha\,\mathrm{hot}(z)^2\lvert o\rvert$, where $\lvert o\rvert$ counts cost cells, aisles and flags;
- $\lvert e^{\mathrm{aux}_X}-1\rvert\le f_X$, with $f\ge0$ satisfying the polymer bound $\sum_{X\ni y'}f_Xe^{e\,N_{B_0}(X)}\le y^{-1/48}$ at every site $y'$, where $N_{B_0}$ is the cover number at the output budget radius ([`Hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13)).

*Status:* theorem.

*Lean:* [`foreshadows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L96-L134), with hypotheses [`Helps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L82-L95).

**Proposition III.4.8 (moments under the sector law).** Fix $G$. For every covariance cap $L>0$ and $k\in\mathbb N$ there is $D\ge1$ with the following property. Take:

- any finite index set $I$ and any probability space $(\Omega,\mu)$;
- any $C\succeq0$ on $\mathbb R^{I\times\dim\mathfrak g}$ with $C\le L$;
- any finite family $(r_i)_{i\in Y}$ of measurable insertions with $w_i,d_i\ge0$, $\lvert r_i(\omega,z)\rvert\le w_ie^{d_i(1+\lvert z_{a_i}\rvert^2+\lvert z_{b_i}\rvert^2)}$, and $\sum_{i:\,x\in\{a_i,b_i\}}d_i\le c=1/(24L)$ at every coordinate site $x$;
- any $\rho,H\ge0$ and sets $P,J\subset I$;
- any measurable $v$ with $\lvert v\rvert\le H(1+\sum_{i\in P}\lvert z_i\rvert^2)^k$ that vanishes unless $\lvert z_i\rvert\ge\rho$ for all $i\in J$.

Then $f=v\prod_{i\in Y}r_i\in L^1(\mu\otimes\gamma_C)$ and
$$\int\lvert f\rvert\,d(\mu\otimes\gamma_C)\le H\,D\,(1+\lvert P\rvert\dim\mathfrak g)^{2k+1}\,e^{-c\lvert J\rvert\rho^2}\,2^{\dim\mathfrak g\,\lvert J\rvert}\prod_{i\in Y}\big(e^{c}\,4^{\dim\mathfrak g}w_i\big).$$
In a sector, take $\mu=\mathrm{Haar}^{\mathcal F_A}$ and $C=W_{\mathcal W}$; III.4.3 supplies a uniform covariance cap. Moreover:

- ([`r4`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Ember.lean#L69-L111)) For measurable $q_i$ on the same product space, let $\lvert q_i\rvert\le x_i^2(1+\lvert z_{a_i}\rvert^2+\lvert z_{b_i}\rvert^2)$ with $0\le x_i\le1$ and $\sum_{i\ni\text{site}}8x_i\le c$. Then $\int(\prod_i(e^{q_i}-1))^4\le(\prod_iMx_i)^4$, with $M=M(G,L)$.
- ([`oasis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Echo.lean#L191-L223)) Fix a patch, a teller satisfying its branch condition and a covariance cap $L>0$. For large $x$, every funded step with that patch and $c\ge100(1+R(x))$, matching flags, $0<d\le1$, $2d<\rho_{\rm first}$ and $\beta\in[\beta_F(x,L_{\rm block})/2,2\beta_F(x,L_{\rm block})]$ has the fourth-moment insertion bounds above. The single-site exponents come from $\eta\cdot z$ and the pair exponents from $\tfrac12z\cdot(C^{-1}-W)z$. Their weights are $De^{-uR(x)/480}$ for sites and exponentially decaying in distance for pairs; the constants are fixed before the threshold in $x$, which may depend on the covariance cap.

*Status:* theorem.

*Lean:* [`same_law`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Arc.lean#L189-L253).

**Proposition III.4.9 (Gaussian insertions supported on selected coordinates).** Fix $p\ge1$, a finite jet order, $G$, a patch and a teller satisfying the branch condition. There are post-$L$ constants $K,M,s,b>0$ and $B\ge0$ such that, for large $x$, the following holds. Take a funded step with that patch, $c\ge100(1+R(x))$ and matching flags. Fix any $g,d,\theta>0$, frozen array and slot set $U$. Restrict the linear and quadratic correction to $U$, obtaining $t\cdot z_U+\tfrac12z_U\cdot\mathcal Jz_U$, where $t=\eta$ and $\mathcal J=C^{-1}-W$. Its tilted law is $N(\mathcal A t_U,\mathcal A)$, with $\mathcal A=(C^{-1}-\mathcal J_U)^{-1}\succ0$. The likelihood ratio of the $U$-marginals satisfies
$$\mathbb E_{\gamma_{C,U}}\big[(dN_U/d\gamma_{C,U})^{p}\big]\le\exp\!\Big(2p\big(\lvert U\rvert\ell^2/(4\theta)+2K\lvert U\rvert(\theta+\varepsilon/2)\big)\Big)$$
whenever $Kp(\theta+\varepsilon/2)\le1/4$. The parameters are:

- $\varepsilon=Ke^{-bR(x)}$;
- $\ell=g^{-1}M^2e^{-sr_x}B\,(t(x)+d)$.

The support restriction concerns the Gaussian variable $z$; the coefficients may depend on all the background and frozen data. The bound retains its dependence on $g$, $d$ and $|U|$.

*Status:* theorem.

*Lean:* [`Physical.blocks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Consumer.lean#L167-L199), built on [`insert_letter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Insertion.lean#L120-L172).

**Proposition III.4.10 (jets of the block coefficients and of the covariance).** Fix $G$, a patch $P$, a teller satisfying the branch condition, and an order $n$. There are $r,d,v,\eta,\lambda_0,C_*>0$ such that for large $x$ the following holds. Take every funded step with patch $P$ and $c\ge100(1+R(x))$, every $A,F,V$ with matching flags, every $k$, and every logarithmic perturbation $B$ of the background with $\lVert B\rVert\le r$. The store, forest and tags remain fixed as $B$ varies. Then:

- the move matrix $M(B)$ is real-analytic;
- $M$, $W=M^{\top}M$ and $C$ satisfy weighted Schur bounds up to order $n$. For every list $\ell$ of at most $n$ coordinate directions, with coarse positions $p_b$, and output and input positions $p_i,p_j$,
$$\prod_{b\in\ell}e^{d\,\mathrm{dist}(p_b,p_i)}\sum_j e^{d\,\mathrm{dist}(p_i,p_j)}\lvert\partial_\ell X_{ij}(B)\rvert\le C_*,$$
and the analogous column bound holds with the external weights anchored at $p_j$;

- $W(B)\ge\eta I$, $C(B)\ge\lambda_0 I$ and $C(B)\succ0$;
- for every $u\ge0$, the full, principal and windowed resolvents have the same marked jet bounds with cap $C_* /(1+u)$ at order zero and $C_* /(1+u)^2$ at positive orders;
- the window defect has marked jet cap $C_*e^{-vR(x)}/(1+u)$, and the difference between the windowed and full resolvents has cap $C_*e^{-vR(x)}/(1+u)^2$.

The selected predictor rows are real-analytic, with $k$-jets bounded by constants depending only on $(G,P,K,k)$, on a ball of fixed radius ([`sounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Sounds.lean#L69-L101), [`chosen_branch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Branch.lean#L140-L219)). The precision $W$ is also real-analytic (Lemma 4.27); the covariance and resolvent conclusions used here are finite-order jet bounds.

*Status:* theorem.

*Lean:* [`assembly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Covariance.lean#L146-L210), [`fromTeller`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Sky.lean#L62-L77), [`coverall`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Roof.lean#L39-L62), [`stores`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/PHYSICAL_JOINT_ENDPOINT_LOAD_F16/DLog/Fund.lean#L120-L127).

**Proposition III.4.11 (affine squares in the large-field annulus).** Fix a teller, a block size $L$, $W_0>0$, $K\in\mathbb R$ and an integer halo $D\ge0$. There are $C\ge1$ and an eventually nonnegative function $e(x)$ with $(1+R(x))^n\beta_F(x,L)e(x)\to0$ for every $n\in\mathbb N$, such that for large $x$ the following holds. Take a funded step of block size $L$ with $c\ge100(1+R(x))$, stores $O,A$, a forest $F$, fields $U,V$ and tags $k$. Assume $U$ is in tree gauge. In the $(D+5)R(x)$-halo of $O$, assume the following local sector conditions: fine plaquettes whose support meets that halo and which belong to $A$ have toll at least $t_L(x)/4$, those outside $A$ have toll at most $t_L(x)/2$; block bonds whose support meets that halo and which belong to $A$ have discrepancy at least $W_0t_L(x)$, those outside have discrepancy at most $2W_0t_L(x)$; the coarse flags match $V$; and the chosen frames have positive mass. Then there is a direction $a$, vanishing on the tree links, such that for every pair of windows $H,Q$ with $H_{\rm face}\subseteq Q_{\rm face}$ and $H_{\rm noise}\subseteq Q_{\rm noise}$, and with the face, noise and coarse rows of $Q$ in $\{p\notin A^{(2R)},\ p\in O^{(DR)}\}$:

- $Q$ is charted by $a$ with constant $C$;
- the affine series on $H$ converge, the required curvature and predictor derivatives exist with the stated linearisation, and $\mathrm{work}_Q\ge\mathrm{squares}_H(a)-e(x)\lvert O\rvert$;
- for every other $a'$ charting $H$ with constant $K$, the same convergence, derivative statements and bound hold with $a'$.

Here $|O|$ is the number of cost cells, aisles and flags. The comparison with $a'$ uses uniqueness of the logarithm on the selected stencils.

*Status:* theorem.

*Lean:* [`annulus_pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Annulus.lean#L36-L127), with [`cleans_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Clean.lean#L110-L208) and [`reacts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/CollarData.lean#L131-L189).

**Proposition III.4.12 (production of the step constants).** Assume:

- $G$ is simple;
- the kernel choices $K$ satisfy the branch condition for every patch;
- the initial stage is at least $4$; the jet orders, position orders and support exponents are nondecreasing, the support exponents are positive, and at stage $i$ the two orders are at least $\max(6,i)$ and $\max(2,i)$, respectively;
- costs $C_i\ge1$ are given.

Then there are pre-$L$ data with kernel $K$ and the prescribed orders, two families of path prices, free-field and slope bounds, and a cost bound, with the following property. For every tariff and scope there is a sequence of block-size floors. After any increase of those floors and any choice of block sizes above them, there is a stagewise Hessian gap $\eta$. For every compatible post-$L$ cost choice (gap $\eta$, activity cap at least $1$, and slope bound below the chosen cap), protection and initial delays, the delays can be enlarged so that the rate and chart conditions hold for all further enlargements. On every paid run with these data there are stationary path families, including the full stationary estimates in the retained family. For each adjacent stage pair $(j,i)$ above the initial stage, the per-step chart conditions hold with $a_{ji},E_{ji}$ chosen after $L_j$ ([`sponsored_permit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Stamped.lean#L139-L168)). [`issue_cosmos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Handoff.lean#L99-L116) replaces each entry value by the maximum of its old value and the thresholds for $(j,j)$ and $(j,j-1)$, preserving the rate conditions.

*Status:* theorem under these kernel and order assumptions.

*Lean:* [`sailsV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Seaside.lean#L96-L154), using [`geared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L59-L66).

## 2. What it uses

- **III.1 (block-spin step and gauge fixing):** fine and coarse tori with $f=Lc$, tree-gauge slices, gauge tags, predictor and push-forward ([`StepData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L22-L25)). The branch condition requires unique frame and predictor minimisers on the selected supports and existence of an eligible axial gauge ([`Branches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185)).
- **II.2, III.5, III.8 (representations and activities):** path and activity bounds for the fine density ([`Rep.Lawful`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L181-L183)), large-field allocations, and the polymer summability norm of III.4.7.
- **III.10 (step estimator):** the tube's fine, coarse and noise work rows, together with their path bounds, cutoff compatibility and free-metric data ([`Funds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L101-L109)). These determine $M$ and $s(Y)$.
- **III.6–III.7 (stationary branch and fourth-order matching):** stationary path families and their finite-volume estimates ([`FullPaths`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L301-L305)). Their production in III.4.12 uses the free-field estimates of III.3.
- **III.2 and III.9 (schedule and marginal flow):** ordered constants, selected histories, the running inverse coupling and its band. III.4.2 applies to these data through its directed-run hypotheses.
- **I.1 and III.16 (analytic toolkit):** the matrix gauge group, normalised Haar measure, exponential charts, analytic jets and finite-dimensional Gaussian measures.

The analytic tools are Gaussian affine changes of variables, the Haar Jacobian in exponential coordinates, Combes–Thomas estimates, the resolvent integral for $\log$, Neumann series, Gaussian integration by parts and Fourier decay from analytic strips. General references are Helgason, *Differential Geometry, Lie Groups and Symmetric Spaces*; Glimm–Jaffe, *Quantum Physics*; and Katznelson, *An Introduction to Harmonic Analysis*. Balaban's fluctuation-integral papers and Dimock's *The renormalization group according to Balaban* provide related RG constructions; precise bibliographic locations remain open (§7).

The order of constants is pre-$L$ data, block sizes, post-$L$ bounds, then thresholds in $x$. Statements with additional parameters retain those dependencies. The precision and path-counting certificates come from [`late_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Year.lean#L113-L197), and the determinant-jet fund from Lemma 4.21. The packet-energy, chart, noise and representation hypotheses in III.4.7 are separate assumptions. The branch and order assumptions of III.4.12, and the rate assumptions of the scheduling statements in Lemma 4.33, remain explicit.

## 3. Strategy

Keep links within $10R(x)$ of the large-field store as Haar variables. Write the others in exponential coordinates about the coarse-field copy $\iota V$, and separate the affine squares $Q_Y(a)=\tfrac12|Ma+s(Y)|^2$ from the remaining energy. The substitution $a=m(Y)+gz$ and division by an arbitrary Gaussian density give the exact identity of III.4.1. Choose the symmetrised windowed inverse for $C$ and the windowed mean for $m$. The endpoint windows give finite range, at most $\lfloor R(x)/20\rfloor$; the linear correction and $C^{-1}-W$ remain in the integrand.

A local Poincaré inequality in tree gauge gives the gap of $W$. Predictor-derivative comparison permits absorption of the gauge errors at small threshold. Path decay gives a uniform weighted Schur bound; Combes–Thomas and the window law then give $C=W^{-1}+O(e^{-cR(x)})$ and positivity. The resolvent integral for $\log$, followed by a Neumann expansion, expresses the relative Gaussian normalisation as single-window and path terms. Regroup these near the large-field cores. Their logarithmic cost is absorbed by the packet energy $\beta s^2\gtrsim\mathrm{hot}(z)^2$, leaving exponentially suppressed core factors and a small polymer remainder on the cutoff support.

Gaussian moment bounds control the exponential corrections, marked jets control background derivatives, and the annulus estimates recover affine squares away from the store. The construction follows the fluctuation-integral method, with window errors retained explicitly. III.4.12 chooses the constants in the order needed along the run.

## 4. Steps

### 4.1 Exact change of variables

**Lemma 4.1 (Gaussian density and scaling).** For $C\succ0$, $g>0$, $m\in\mathbb R^n$, and any Banach-valued $f$ on $\mathbb R^n$, $f\in L^1$ iff $z\mapsto e^{\frac12z\cdot C^{-1}z}f(m+gz)\in L^1(\gamma_C)$, and
$$\int f=g^{n}(2\pi)^{n/2}(\det C)^{1/2}\int e^{\frac12z\cdot C^{-1}z}f(m+gz)\,d\gamma_C.$$
Lean's Bochner integral assigns value zero to a nonintegrable function, so the identity also holds under that convention without an integrability premise. *Sketch:* the density of $\gamma_C$ follows by pushing $N(0,1)^{\otimes n}$ forward by $C^{1/2}$ ([`cloud_formula`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean#L134-L156)); then translate and dilate.

*Lean:* [`Gaussian.gauged`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean#L204-L210), [`at_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Counting.lean#L117-L125).

**Lemma 4.2 (exponential chart on links).** For a local chart ratio $J$ and base links $\nu$, the map $a\mapsto(e^{a_e}\nu_e)_e$ sends $\prod_e J_{\rm sc}J(a_e)\,da_e$ on $B_{\rho_J}^{\mathcal A}$ onto product Haar measure restricted to the image. Hence $\int g\,d\mathrm{Haar}=\int_{B_{\rho_J}^{\mathcal A}}\prod_eJ_{\rm sc}J(a_e)\,g(e^{a}\nu)\,da$ for strongly measurable $g$ vanishing off the image, with equivalence of integrability. In the iterated form on the slice (frozen links Haar, active links in the chart), assume also that $g$ is bounded; then every chart section and the outer integral are integrable.

*Lean:* [`log_transport`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Haar.lean#L143-L162), [`release_integral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Haar.lean#L167-L184), [`thaw_integral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Haar.lean#L225-L253).

**Lemma 4.3 (regularised integrand).** Assume the branch condition, a local chart ratio, the standing condition, $d>0$ and $4d<\rho_J$. For a multiplier with a bounded Borel envelope, the chart integrand equals $J_{\rm sc}^{\lvert\mathcal A\rvert}\tilde J_d(a)\chi_d(a)$ times the sector multiplier everywhere. Its sector integral equals $J_{\rm sc}^{\lvert\mathcal A\rvert}\iint r\,da\,d\mathrm{Haar}(Y)$, with section-wise, outer and joint integrability. *Sketch:* on the support, $\lvert a_e\rvert\le d$ forces $\chi_d=1$ and each extended Jacobian to equal $J$; off the support both sides vanish ([`protected_pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Broad.lean#L115-L120)). The envelope supplies boundedness and measurability.

*Lean:* [`sheltered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean#L76-L109), [`regularized_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean#L142-L199).

**Lemma 4.4 (affine-square splitting).** Under the fine path bounds, the averaged step energy equals $\overline{\mathrm{res}}+Q_Y(a)$ ([`compose_residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Remainder.lean#L102-L105)). For any $C,m,z$ and $g>0$, with $\beta=g^{-2}$ and $\eta=-g^{-1}(Wm+M^{\top}s(Y))$:
$$-\beta Q_Y(m)+\eta\cdot z+\tfrac12z\cdot(C^{-1}-W)z=\tfrac12z\cdot C^{-1}z-\beta Q_Y(m+gz).$$
*Sketch:* expand $\tfrac12\lvert M(m+gz)+s\rvert^2$ and use $g^{-2}=\beta$.

*Lean:* [`Rows.adjusted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Remainder.lean#L128-L146), [`recolored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L73-L93).

**Lemma 4.5 (proof of III.4.1).** Apply Lemma 4.1 to $r(Y,\cdot)$ for each $Y$, then Lemma 4.4 to identify the Gaussian integrand with $\mathrm{pref}\cdot\Psi(Y,\cdot)$. The same change applied to norms multiplies their Gaussian integral by the positive constant $\mathrm{pref}\,(2\pi g^2)^{n_a/2}(\det C)^{1/2}$. Lemma 4.3 and the Fubini criterion therefore give joint integrability. Inserting the section identity into the outer Haar integral proves the formula.

*Lean:* [`authorized_change`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L137-L192).

**Lemma 4.6 (admission of the chart).** Fix a teller, local chart ratio, block size $L$ and allocation width $w>0$. There are $D,E>0$ such that for large $x$, with $d=D\,t_L(x)$:

- $0<d$, $4d<\rho_J$ and $2d<\rho_{\rm first}$;
- $\lvert\log J(a)\rvert\le E\lvert a\rvert^2$ for $\lvert a\rvert\le4d$;
- for every funded step of block size $L$ with $c\ge100(1+R(x))$ and stencil span at most $R(x)/50$, and every store, forest, allocation of width $w$ and $V$, each active link (and each frozen link read on a selected stencil) in the support of $\mathrm{bill}\cdot\mathrm{lik}$ equals $e^{a}\nu_e$ with $\lvert a\rvert\le d$.

*Sketch:* the allocation gives toll $\le t_L(x)$ off the cost cells and block discrepancy $\le2w\,t_L(x)$ off the aisles. The axial-gauge estimate bounds the chord distance to $\nu_e$ by $m\,t_L(x)$. The logarithmic chart then gives $\lvert a\rvert\le C m\,t_L(x)$.

*Lean:* [`matinee`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Stamped.lean#L45-L119).

**Lemma 4.7 (permits and the licence; proof of III.4.2).** Under the fixed patch, branch, funding and volume hypotheses, combine Lemma 4.6, III.4.3 and continuity of the windowed mean. For large $x$, matching flags and every $\beta>0$, $(W_{\mathcal W},m)$ is permitted, $W\succ0$, and the selected predictor derivatives are bounded. Enlarge the entry thresholds to cover every admissible stage pair. Then:

- apply III.4.1 to stores with matching flags;
- wrong flags force $\mathrm{bill}_A\equiv0$, so all integrals vanish;
- insert both identities into the sector decomposition of the push-forward, using tagged kernel times density $=\mathrm{sieve}(V)\cdot\mathrm{exposed}\cdot\mathrm{enters}$.

The step size is $d=a_{ji}t(\hat\beta_{m+1})$, because $t_L(\hat\beta_m)=t(\hat\beta_{m+1})$.

*Lean:* [`sponsored_permit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Stamped.lean#L139-L168), [`committed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Handoff.lean#L132-L182).

**Lemma 4.8 (identity completion).** Assume $W\ge\eta I$ with $\eta>0$ and $R(x)\ge120$. Complete $W$ by the identity on the inactive positions (frozen and tree links), with the corresponding endpoint windows. The windowed inverse and its symmetrisation are the identity completions of $W^{\mathrm{per}}$ and $W_{\mathcal W}$; the mean is extended by zero. The determinant is unchanged. This puts the actual and flat log-determinants on the same full link set.

*Lean:* [`Completion.stocked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Completion.lean#L181-L212).

### 4.2 Gap, decay and windows

**Lemma 4.9 (gap of the active precision).** Under the patch, branch, funding and volume hypotheses of III.4.3, there is $\eta=\eta(G,P,\text{teller})>0$ with $\eta\lvert a\rvert^2\le a\cdot Wa$ for large $x$, every flag-matched sector and every active vector $a$. *Sketch:*

- Each active link is bounded by a constant times a local sum of plaquette jets plus a block jet, computed in a gauge chosen per link. The comparison of the predictor's derivative with its value at the flat field ([`block_comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Block.lean#L316-L361)) makes the gauge-rotation errors $O(\varepsilon)$ once $t(x)\le\delta$.
- Summing gives $\lvert a\rvert^2\le c_1\sum\lvert\text{plaq}\rvert^2+c_2\sum\lvert\text{block}\rvert^2+O(\varepsilon^2)\lvert a\rvert^2$.
- The last term is absorbed, and the energy is bounded by the Gram form.



*Lean:* [`Gap.not_flat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gap.lean#L242-L264).

the derivative-comparison theorem itself states two things. For links within the predictor's reach that are $\delta$-close to $1$, the derivative of $a\mapsto$ curvature of $\mathrm{pred}(e^aU)\mathrm{pred}(U)^{-1}$ at $0$ is $\le B\lVert a\rVert_{\ell^1(\text{stencil})}$. It also differs from its value at $U=1$ by $\le\varepsilon\lVert a\rVert_{\ell^1}$. The constant $\delta(\varepsilon)$ comes from continuity and is not explicit.

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
2. The path-decay and predictor-derivative bounds give weighted row and column bounds for $M$; multiplying $M^{\top}M$ gives the weighted Schur bound on $W$.
3. The counting function is $B(v)=\dim\mathfrak g\cdot L^4\cdot4\cdot\sum_{z\in\mathbb Z^4}e^{-v|z|_1}$ for $v>0$: each coarse site carries at most $4L^4\dim\mathfrak g$ coordinates.
4. The endpoint windows contain $r_x$-balls.
5. III.4.4 gives (iii) and $C\succ0$.



*Lean:* [`opaqueCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Chosen.lean#L102-L143). The decay certificate [`holds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Chord.lean#L133-L158) adds bounds for $C^{-1}$ and $\lVert C^{-1}-W\rVert\le Me^{-aR(x)}$.

**Lemma 4.13 (perturbation of inverses).** Let $s\ge0$ and $A,D\succ0$ with $\lVert D^{-1}\rVert_s\le K$, $\lVert A-D\rVert_s\le\delta$ and $K\delta\le\frac12$. Then $\lVert A^{-1}\rVert_s\le2K$. *Sketch:* from $A^{-1}=D^{-1}-D^{-1}(A-D)A^{-1}$, a bound $t$ on $A^{-1}$ improves to $K+t/2$; iterate from any finite-volume bound and pass to the limit.

*Lean:* [`inverse_perturb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_SWITCH/TableCosts.lean#L63-L83).

**Lemma 4.14 (infinite-volume kernels).**

- Let $r>0$, $M\ge0$. A family of periodic kernels compatible under coverings and bounded pointwise by $Me^{-r\,\mathrm{dist}}$ is, for every $\gamma<r$, exactly the periodisation of a kernel on $\mathbb Z^4$ with strip norm at rate $\gamma$ bounded by $M\sum_{z\in\mathbb Z^4}e^{-(r-\gamma)|z|_1}$. The proof extracts a pointwise limit along the periods $k!$ and passes compatibility to the limit by dominated convergence.
- Given a strip bound with positive rate and a uniform positive gap in every period, each nonnegative-shift resolvent is the periodisation of a strip-decaying kernel at any rate below the resulting inverse-decay margin ([`strip_resolvent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/Metric.lean#L30-L37)).
- Under the analytic-strip inverse bound and real-symmetry condition on the symbol, Fourier inversion gives a real inverse kernel with strip decay at rate $\eta/4$ ([`freezer_row`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian/PeriodicInverse.lean#L104-L139)). Consequently, for each stage $J\ge4$ there is a rate $\sigma>0$, chosen before the patch, such that every patch at stage $J$ satisfying the branch condition has a strip-decaying inverse of its flat gauge-completed Hessian. The cap may depend on the patch; both rate and cap are uniform in the permitted kinetic profiles, gauge tags and periods ([`joint_universal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian/Completion.lean#L62-L110)).

*(proof read for periodic extraction and the uniform flat inverse; statement only for the other assertions)*

*Lean:* [`publish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/Fold.lean#L139-L180).

**Lemma 4.15 (tree inverse and the free covariance).**

- Gauge-fixing completion: for a symmetric free metric and a step satisfying the branch condition, if the gauge-completed joint matrix $\mathcal H$ satisfies $\mathcal HN=I$, then $ZNZ^{\top}$ inverts the tree matrix and the projected $N$ is the tree covariance ([`projecting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian/TreeInverse.lean#L64-L115), pure algebra, proof read).
- Fix a patch, kernel satisfying the branch condition, and positive strip and gap bounds. Each free metric satisfying these bounds has a strip-decaying operator representing its plane tree-inverse covariance at every coarse period at least $3$. The rate and cap are uniform over these metrics. With odd $L$ and the fine and coarse free-field lower bounds and diagonal tower compatibility, the same operator represents the conditional covariances of every admissible step with that patch. Its range-$d$ truncation has strip norm at rate $t/2$ at most $Ae^{-td/2}$ ([`earned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Covers.lean#L67-L103), [`onePlateau`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Covers.lean#L114-L136), proof read).
- For a large step, a tube satisfying the fine path bounds, a sector with no frozen free links, and an attached, normalised free metric whose full kernel has Gram matrix equal to that metric and satisfies the free-field symmetry conditions, the windowed resolvent at flat background differs from the free tree resolvent by at most $Ce^{-tR(x)}(1+u)^{-2}$ in a positive-rate Schur norm, for every $u\ge0$. The statement applies to the geometric windows used in this comparison. At $u=0$ it also gives precision and log-determinant comparison bounds ([`headComparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Ideal.lean#L120-L144), [`freeHead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/HeadSwitch.lean#L104-L143), statement only).

**Lemma 4.16 (covariance and locality of entries).**

- The windowed inverse commutes with site bijections combined with orthogonal colour rotations, for every $u$ ([`natural`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/ColourBooks.lean#L163-L192)).
- If the precision, source and windows are transported together by such a map, so are the ordered inverse, windowed covariance and mean; the covariance determinant is preserved ([`moves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Binding.lean#L116-L134)).
- Under the branch condition, $R(x)\ge120$ and stencil span at most $R(x)/50$, agreement of the configurations, tags, trees and stores on a set containing the $14R(x)$-ball about the row position makes the corresponding full precision rows equal ([`same_row`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Reading.lean#L194-L212)).



### 4.3 Determinants

**Lemma 4.17 (proof of III.4.5).**

1. On the spectrum of $A\succ0$, $\log\lambda=\int_0^\infty[(1+u)^{-1}-(\lambda+u)^{-1}]du$, so $\log\det A=\sum_i\int_0^\infty[(1+u)^{-1}-(A+u)^{-1}_{ii}]du$.
2. Split $(A+uI)^{-1}=P_u+((A+uI)^{-1}-P_u)$.
3. The first part gives $\ell_i$, bounded by $(C+1)C$ through $\int(1+u)^{-2}=1$.
4. Expand the second part as $P_u\sum_{n\ge1}(-\Delta_u)^n$. Its negative enters the logarithm. The $n$th correction in III.4.5 has absolute integral at most $Cq^{n+1}$.
5. For $\log\det(1+S)$ use the trace series; $1+S=AA_{\mathcal W}$.



*Lean:* [`Priced.chains`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Series.lean#L203-L227), [`letterBase`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Series.lean#L45-L46).

**Lemma 4.18 (proof of III.4.6 (ii)–(iv)).**

- *(ii)* Use $J_{\rm sc}^{\lvert\mathcal A\rvert}(2\pi g^2)^{n_a/2}=\mathrm{spare}^{\lvert F^{\rm free}\rvert}\mathrm{spare}^{-\lvert\mathcal F_A\rvert}$ and $\det C=\det W^{-1}\det(WC)$, with $\det K_F$ independent of the forest. The quadratic part follows from Lemma 4.4, and the coarse factors are collected in the coarse normalisation.
- *(iii)* Apply the path-series expansion both to the identity-completed full precision at $(A,V)$ ("panel") and at $(\emptyset,1)$ ("frame"), and subtract letter by letter.
- *(iv)* Sum $\mathrm{sect}_e-\log\mathrm{spare}\cdot1_{\mathcal F_A}(e)$ over links, split by distance to the cores ($200R(x)$).



*Lean:* [`book_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Shards.lean#L34-L39), [`rate_pass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L36-L48).

**Lemma 4.19 (local bounds on the pieces).** Call a function *$\varepsilon$-small* if it is a sum of local terms $\phi_X$ on flag-matched sectors where the cutoff product is nonzero, with $\lvert\phi_X\rvert\le b_X$ on every flag-matched sector and $\sum_{X\ni y'}b_Xe^{eN_B(X)}\le\varepsilon$ at every site $y'$. Here $B$ is the specified cover radius. Under the corresponding hypotheses of III.4.7, for large $x$:

- (a) At the retimed scale $y=\mathrm{retime}(x)$, with $z=\beta_F(x,L)$ and $\beta\in[z/2,2z]$, $\lvert\mathrm{rent}_o\rvert\le\delta\,\mathrm{hot}(z)^2\lvert o\rvert$ for any fixed $\delta>0$ ([`wages`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L90-L114)). Each link contributes $O(\log y)$, the $200R(y)$-halo of a core contains $O((1+R(y))^4\lvert o\rvert)$ links, and $\mathrm{hot}(z)^2$ dominates this logarithmic cost.
- (b) The far-field term is $x^{-1/8}$-small ([`bills`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L71-L89)).
- (c) $I$ and $\mathrm{Sh}$ are $e^{-dR(x)}$-small ([`billIt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Shards.lean#L60-L77)).
- (d) The chart terms $\sum_e\log\tilde J(a_e)$ are $x^{-1/8}$-small, since $\lvert\log\tilde J\rvert\le u(4d)^2$, $d\le h t_L(x)$ and $t_L(x)^2\le x^{-1/4}$ eventually. The linear term $\eta\cdot z$ has the same polymer bound: the noise assumptions give $|\eta_i z_i|\le x^{-2}$ on the cutoff support ([`bolsters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Sage.lean#L82-L114)).
- (e) The remaining path and interaction correction term (path and cubic/quartic corrections) is $x^{-1/24}$-small ([`Ancestor.abound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Regale.lean#L65-L88)).

*(proof read for (a), (b), (d); statement and outline for (c), (e))*

**Lemma 4.20 (proof of III.4.7).**

1. On flag-matched sectors, $\Lambda=\sum_o(\mathrm{center}_o+\mathrm{rent}_o)+\mathrm{tenders}$ ([`issued`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L27-L35)). The center is $-\beta$ times the row energy of III.4.6 summed over row positions within $200R(y)$ of $o$ ([`center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Turret.lean#L74)). The remainder consists of the terms of Lemma 4.19 (b)–(e), the row energy outside these halos, and the quadratic window correction.
2. On the nonzero cutoff support, the packet-energy hypothesis gives $\mathrm{center}_o\le-\beta a s^2\lvert o\rvert$ for each core of the store, with $s=z^{-1/2}\mathrm{hot}(z)$. Since $zs^2=\mathrm{hot}(z)^2$ and $\beta\ge z/2$, the condition $2\alpha\le a/2$ gives $2\alpha\,\mathrm{hot}(z)^2\le\beta as^2$. The bound is [`ranked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Spreaders.lean#L53-L61). Apply Lemma 4.19 (a) with $\delta=\alpha$ to obtain $\mathrm{center}_o+\mathrm{rent}_o\le-\alpha\,\mathrm{hot}(z)^2\lvert o\rvert$.
3. [`paltry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L52-L65) uses the lower bound [`minimum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Spreaders.lean#L82-L89) to clamp the core term between fixed bounds, preserving its value on the nonzero cutoff support and its upper bound on all matching sectors.
4. The tenders are $\ell$-small with $\ell=4q+y^4\nu+2\nu+a'$, where $q=y^{-1/8}$, $\nu=y^{-5}$ (from $e^{-cR(y)}\le y^{-5}$) and $a'=y^{-1/24}$. Then $2\ell\le16y^{-1/24}\le y^{-1/48}$ for large $y$ (the power comparison).
5. [`issue_invoice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Petty.lean#L72-L90) symmetrises over lattice motions and converts the small sum into $\lvert e^{\mathrm{aux}_X}-1\rvert\le f_X$.



**Lemma 4.21 (precision, counting and jet certificates).** Fix $G$, a patch and a teller satisfying the branch condition, a halo multiplier $l\ge1$ and a polymer exponent $e\ge0$.

- [`late_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Year.lean#L113-L197) gives the precision and path-counting certificates, eventually in $x$:
  - positive constants $v,\eta,b,d$ and $C\ge1$, chosen before the threshold in $x$, giving the gap, positivity and resolvent bounds of III.4.5 for every funded step with that patch and $c\ge100(1+R(x))$, uniformly in matching sectors and every window system containing the $r_x$-balls, with error factor $e^{-bR(x)}$;
  - cluster counting with factor $e^{-dR(x)}$.
- For each pair of nonnegative integer orders $(n,k)$ and $l\ge20$, [`stores`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/PHYSICAL_JOINT_ENDPOINT_LOAD_F16/DLog/Fund.lean#L120-L127) chooses a fund whose covariance-jet and determinant-letter bounds hold eventually in $x$. The certificate also includes stencil-span and exponential cost bounds. These two results supply the corresponding certificates, rather than all the hypotheses of III.4.7.



### 4.4 Gaussian moments and insertions

**Lemma 4.22 (exponentials of quadratic forms).** Let $x\sim N(0,I)$ and $\mathcal Q=\sum_iw_i\langle q_i,x\rangle^2$ with $w_i\ge0$ and $\sum_jw_j\lvert\langle q_i,q_j\rangle\rvert\le1/8$ for each $i$. Then $\mathbb E e^{\mathcal Q}\le e^{2\sum_iw_i\lvert q_i\rvert^2}$. *Sketch:* Gaussian integration by parts gives $F'(t)=\mathbb E[\mathcal Qe^{t\mathcal Q}]\le TF+\tfrac12F'$, so $(e^{-2Tt}F)'\le0$.

*Lean:* [`authentic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS/Trace.lean#L228-L253), [`amount`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS/Moment.lean#L67-L71).

**Lemma 4.23 (polynomial moments).** For $L>0$ and $k\in\mathbb N$ there is $D(L,k)>0$, independent of $n$, such that every $0\preceq C\le LI$ on $\mathbb R^n$ satisfies integrability and $\mathbb E_{\gamma_C}(1+\lvert z\rvert^2)^k\le D(L,k)(1+n)^{k+1}$. *Sketch:* dominate a power by an exponential with $t=1/(4L)$, bound the sum of squared coordinates by $n$ times its largest term, and use $\mathbb Ee^{tz_x^2}\le2$.

*Lean:* [`many`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Buoy.lean#L104-L152).

**Lemma 4.24 (proof of III.4.8).**

1. On $\{v\ne0\}$, $1\le e^{-c\lvert J\rvert\rho^2}e^{c\sum_J\lvert z_i\rvert^2}$.
2. The site budget gives $\sum d_i(1+\lvert z_{a_i}\rvert^2+\lvert z_{b_i}\rvert^2)\le\lvert Y\rvert c+2c\sum_X\lvert z\rvert^2$.
3. Use $ab\le a^2+b^2$ to bound the product of the polynomial score and $e^{3c\sum_U|z|^2}$. The exponential square has expectation at most $2^{\dim\mathfrak g|U|}$, since $6c=1/(4L)$ and $|U|\le|J|+2|Y|$; Lemma 4.23 bounds the squared polynomial score.

For the fourth-moment bound: $\lvert e^q-1\rvert\le xe^{2x(1+\lvert z_a\rvert^2+\lvert z_b\rvert^2)}$, then apply III.4.8 with $k=0$. For the coupling-band estimate: the mean-shift equation writes $\eta$ through $W^{\mathrm{per}}-W^{-1}=O(e^{-uR(x)/60})$, and $C^{-1}-W$ is controlled by the inverse-window estimate.

*Lean:* [`same_law`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Arc.lean#L189-L253), [`r4`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Ember.lean#L69-L111), [`oasis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Echo.lean#L191-L223).

**Lemma 4.25 (Gaussian likelihood ratios).**

- For $A,D\succ0$, any centres $a,d$ and any real $p$, the $p$-th power of $dN(a,A)/dN(d,D)$ is $N(d,D)$-integrable iff $pA^{-1}+(1-p)D^{-1}\succ0$ ([`power_iff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Moment.lean#L183-L185)).
- For $A,D\succ0$, if $D^{-1}-A^{-1}$ is supported in $S\times S$ and $A^{-1}(d-a)$ on $S$, the ratio equals the ratio of the $S$-marginals at $x_S$ ([`likelihood_local`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Support.lean#L178-L207)).
- Let $A,D\succ0$, $p\ge1$, $K,w_i\ge0$ and $D\le KI$. If the change in the quadratic exponent about the reference centre has absolute value at most $b+\sum_iw_iz_i^2$, and $Kpw_i\le1/4$ for every $i$, then the $p$-th likelihood-ratio moment is at most $e^{2p(b+2K\sum_iw_i)}$. Cauchy–Schwarz controls the normaliser ([`weighted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Weighted.lean#L104-L138)).
- Let $0\prec C\le KI$ with $K>0$, $\mathcal J$ symmetric, $\varepsilon\ge0$, $p\ge1$ and $\theta>0$. For $\lvert z\cdot\mathcal Jz\rvert\le\varepsilon\lvert z\rvert^2$, $\lvert t_i\rvert\le\ell$ on $S$ and $Kp(\theta+\varepsilon/2)\le1/4$, the inserted covariance is positive definite and the moment bound of III.4.9 holds with $U=S$. Positivity follows from $C^{-1}\ge K^{-1}I>\varepsilon I$; the linear part contributes $e^{p\lvert S\rvert\ell^2/(2\theta)}$ by AM–GM ([`insert_letter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Insertion.lean#L120-L172)).
- For symmetric $A$, integrability of $e^{-\frac12z\cdot Az-b\cdot z+c}$ forces $A\succ0$ ([`posDef_of_integrable_quadratic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Escape.lean#L52-L94)).
- Let $A,D\succ0$, $\|A^{-1}\|_s\le M$, $\|A^{-1}-D^{-1}\|_s\le\delta$, $s\ge0$, and $|\log\det A-\log\det D|\le n\delta$. The ratio $T(z)$ of the $A$-Gaussian density at $z+hu$ to the $D$-density at $z$ obeys
$$|\log T(z)|\le\tfrac\delta2(n+|z|^2)+\tfrac M2\big(h^2|u|^2+|h|(|u|^2+|z|^2)\big).$$
Expand the shifted quadratic form and apply the Schur bounds ([`priceShift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/Relative.lean#L245-L266)).

*(proof read for the weighted moment and insertion bounds; statement only for the other assertions)*

### 4.5 Jets

**Lemma 4.26 (analytic predictor rows).** Fix $G$, a patch $P$, a kernel $K$ satisfying the branch condition and an order $k$. There are $C\ge0$ and $r,\delta>0$ such that the following holds. Take a step with that patch and kernel, matching flags, stencil span at most $R(x)/50$, $\mathrm{allot}(P)+1\le9R(x)$, $2(\mathrm{allot}(P)+1)<c$, and $\mathrm{permit}(P)t(x)\le\delta$. On every selected block stencil, the predicted group element and its relative curvature are real-analytic on the $r$-ball of mixed coarse and fine logarithmic perturbations; the curvature has $k$-jets bounded by $C$. Here $\mathrm{allot}$ and $\mathrm{permit}$ are fixed patch-dependent geometric constants. *Sketch:*

- Transplant the stencil into a fixed reference torus ([`impression`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Press.lean#L123-L155)).
- Use a local trimming gauge in which the links have chord $\le\delta$.
- Write the prediction as $u\cdot\mathrm{paste}(\ldots)\cdot v^{-1}$ with maps of norm $\le1$ ([`freshQ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Duplicated.lean#L52-L101)).
- For large $x$, all gauge-tag choices give the same predictor in a neighbourhood of each $(B,0)$ with $\|B\|\le r$ on the selected stencils; the common predictor has uniform jets.



*Lean:* [`sounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Sounds.lean#L69-L101), [`chosen_branch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Branch.lean#L140-L219).

**Lemma 4.27 (precision near the background).** Under the fixed patch, branch, funding, volume and flag hypotheses of III.4.10, constants $r,s,C_*,\eta>0$ precede the threshold in $x$. On $\lVert B\rVert\le r$:

- $M$ and $W$ are real-analytic, with weighted jets $\le C_*$;
- the gap at $B=0$ comes from Lemma 4.9;
- a Lipschitz perturbation keeps half of it.

For $d\ge0$ with $(1+2k)d\le\text{width}/2$, the move-matrix entries have marked $k$-jets with the corresponding off-diagonal exponential weight. *(proof read for the precision bound; statement only for the entry bound)*

*Lean:* [`precision`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Neighborhood.lean#L122-L159), [`entries`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Quote.lean#L99-L127).

**Lemma 4.28 (transport along walks).** Fix the jet order and a bound on the marked jets of the link field. For each $\kappa>0$ and endpoint jet cap $M>0$, there are a positive mark radius and $N>0$, uniform in the lattice, walk and scaling parameter $s\in[0,1]$, such that adjoint parallel transport moves a marked jet bound from the end of a walk of length $\ell$ to its start, at base point $0$, with cap multiplied by $Ne^{\kappa\ell}$ ([`carried`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Visits.lean#L81-L120)). For a strip-decaying kernel of rate $\gamma>0$, walks with length at most $B(1+|z|_1)$, $B>0$, finite sets of walks below every length cutoff, and the required endpoint bounds, choosing $\kappa=\gamma/B$ gives a uniform marked bound on the truncated sum ([`follows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Tracks.lean#L36-L89)). If the path family has strip bound $(\sigma,M)$ with $M\ge0$, $d\ge0$, $\gamma>0$ and $2\gamma+2kd\le\sigma/2$, selecting only paths of length at least $R$ gives marked $k$-jets bounded by a constant times $Me^{-\sigma R/4}$ ([`transport_rows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/TrueTransport.lean#L257-L299)).

**Lemma 4.29 (cut and window errors).** Assume fine path bounds with positive rate $\sigma$ and nonnegative amplitude, and the branch condition. Near the flat background $B=0$, the actual sector Gram matrix equals the reindexed path-cut affine block. If no free links are frozen, the tree-coordinate identification also identifies their geometric windowed resolvents ([`notarized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/CutGerm.lean#L110-L129)). With a large step, $R(x)\ge120$ and the marked gap and counting bounds needed for the inverses, the following bounds hold at $B=0$ for $u\ge0$:

- cutting the affine inverse germ at range $R$ changes its $k$-jet by $O(4^kC_0^2e^{-\sigma R/4})$, with $C_0\propto(1+u)^{-1}$ ([`shortening`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/AffineResolvent.lean#L81-L100));
- the ordered windowed resolvent differs from the uncut one by a cap proportional to $(1+u)^{-2}(e^{-(k+1)\gamma r_x}+e^{-\sigma\lfloor R(x)/10^5\rfloor/4})$; symmetrisation costs at most a factor $2$ ([`total`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Taylor.lean#L73-L108));
- given the marked bounds and positive gaps for both $W$ and $C$, and the two successive admissible inverse-decay rates, $C^{-1}-W$ has jets through order $q$ bounded by a constant times $e^{-(q+1)dr_x}$ in the reduced-rate marked norm ([`residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/SectorWindows.lean#L139-L165)).



### 4.6 Large fields and constants

**Lemma 4.30 (clean fields).**

- Under the funding, block-size, volume, tree-gauge and local sector hypotheses of III.4.11, there is $C\ge1$, independent of the integer halo, with the following property. The field $a_e=\mathrm{plog}(U_e\nu_e^{-1})$ vanishes on the tree links. On the swept annulus it gives exponential coordinates: within $\lfloor2R(x)/5\rfloor$ of each swept site, $|a_e|$ and the linking are at most $C\,t_L(x)$. A coarse gauge and its pullback to the fine lattice make the corresponding coarse and fine chords at most $C(1+R(x))^5t_L(x)$ ([`cleans_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Clean.lean#L110-L208)).
- Given a clean-field constant $X\ge1$, there are $C>0$ and $M\ge X$ such that, for large $x$, the local plaquette curvatures and block rows have first-order expansions in $a$, with linear term at most $Cw$ and remainder at most $Cw^2$, where $w=M(1+R(x))^5t_L(x)$. Moreover $(1+R(x))^nw\to0$ for every $n\in\mathbb N$; in terms of $x$, $w=x^{-1/2+o(1)}$ ([`reacts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/CollarData.lean#L131-L189)).

*(proof read for the response estimate; statement only for the clean-field construction)*

**Lemma 4.31 (affine squares along paths).** Assume fine path bounds with amplitude $C$ and cutoff direct coefficient $d_0$. Fix a path cutoff $R_0\in\mathbb N$, thresholds $t,s$, $B>0$ and $h\ge0$. Suppose the face under consideration has toll at most $t$ and satisfies the path-retention condition, its two coarse path rows have norm at most $Bh$, and its first-order curvature and curvature error are at most $Bh$ and $Bh^2$. Require the same two curvature bounds at every face reached by a retained path of length at most $R_0$, with chord deviation from the reference field at most $h$ along every such path. Then the affine path series converges and work minus the extracted square is at least $-4(mB)^2(1+2c_GR_0)h^3$, where $m=\sqrt{d_0}+C+1$ ([`fine_squares`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/AffineRows.lean#L157-L209)). Under the clean-field and annulus hypotheses of Lemma 4.30, each fine-face, noise and coarse row at a swept site has error at least $-e(x)$, where $e$ is eventually nonnegative and $(1+R(x))^n\beta_F(x,L)e(x)\to0$ for every $n$ ([`coat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Recovery.lean#L68-L219)).

**Lemma 4.32 (proof of III.4.11).**

1. Sum the row bounds of Lemma 4.31 over $Q$. The counted face, noise and coarse rows number at most $X(1+R(x))^4|O|$, so the total error is $e'(x)|O|$, where $e'(x)=X(1+R(x))^4e(x)$ still satisfies $(1+R(x))^n\beta_F(x,L)e'(x)\to0$ for every $n$.
2. Retain the affine squares selected by $H$ and discard the other squares by positivity. The additional coarse rows in the work are nonnegative.
3. The extracted squares are unique, because the chart logarithm is unique once $\max(K,C)t_L(x)$ is below the chart radius.



*Lean:* [`annulus_pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Annulus.lean#L36-L127).

**Lemma 4.33 (proof of III.4.12).**

1. Choose the free-field bounds.
2. Choose the stationary width caps and path amplitudes, build a sheet within them, then choose drift bounds, slope caps and block-size floors. The stationary theorem gives a Hessian gap and full stationary path estimates only after the free-field, retained-family, paid-run, chart and pre-$L$ compatibility hypotheses have been supplied. Its construction combines the one-loop analytic estimate with downward induction over levels.
3. Build the startup and free-field data for that sheet, preserving the required orders and bounds.
4. For each $L$-sequence the delays are enlarged and the chart-threshold enlargement is applied.
5. Assemble the stationary path families and their estimates.

Related constant-producing statements:

- The scheduling theorems produce funded delays under their transition-rate and compatibility hypotheses;
- The Gaussian comparison theorem gives, for each fixed real moment parameter and patch satisfying the branch condition, uniform reverse column-switch bounds on sufficiently large funded steps with matching flags and the required size condition. It also bounds the source $M^{\top}s(Y)$ by $C(t(x)+d)$ for every $d>0$;
- The counting theorem gives a polymer budget $e^{-cR(x)}$ for fixed patch, nonnegative polymer exponent and prescribed integer orders; $c>0$ is fixed by the input bounds.

*(proof read for the main constant selection and stationary theorem; statement only for the ancillary scheduling and comparison results)*

*Lean:* [`sailsV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Seaside.lean#L96-L154), [`geared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L59-L66), [`book`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Calendar.lean#L133-L138), [`endures`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Instruments.lean#L69-L86), [`post`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Reverse.lean#L64-L88), [`takings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Folio/Takings.lean#L99-L116).

## 5. Where the difficulty lies

The gap is a gauge-theoretic local Poincaré estimate: the predictor derivative must be compared with its flat-field value after a different gauge choice for each active link. Its smallness radius comes from continuity rather than an explicit formula. Inverse estimates then spend decay rate, while every bound must remain uniform in the volume, store, forest, tags and field.

The determinant comparison must accommodate different active dimensions, hence identity completion and the frozen-link normalisation. The resulting core costs grow polynomially in $\log x$; the retimed large-field threshold supplies the stronger suppression $e^{-\alpha\mathrm{hot}(z)^2|o|}$. The final powers $x^{-1/8}$, $x^{-1/24}$ and $y^{-1/48}$ allow the separate polymer budgets to be added. Gaussian transport and the affine-square identity are finite-dimensional; their application still requires the chart support and integrability conditions.

## 6. Notation

| Written proof | Lean (glossary) | Meaning |
|---|---|---|
| $\gamma_C$ | [`Gaussian.cloud`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean#L31) | centred Gaussian with covariance $C$ |
| $z\cdot C^{-1}z$ | [`force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean#L79) | precision quadratic form |
| $(2\pi g^2)^{n_a/2}(\det C)^{1/2}$ | [`chartCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Counting.lean#L103-L104) | Gaussian normalisation |
| $g=\beta^{-1/2}$ | [`coupling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L35) | coupling of the representation |
| $J$, $J_{\rm sc}$, $\rho_J$ | [`ChartRatio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L23-L26), [`LocalRatio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L28-L38) | normalised Haar Jacobian of exp, scale, radius |
| $\mathcal F_A$, $\mathcal A_A$ | [`chill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean#L38-L40) (`Frozen`, `Active`) | free links within $10R(x)$ of $A$ / the others |
| $\iota V$ | [`replica`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L35-L36) | coarse field copied to the fine lattice |
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
| $M$, $s(Y)$ | `move`, `source` | linear row map and frozen-link source |
| $\mathcal E$, $\mathrm{center}_o$ | `Milk.levy`, `Coffer.center` | row energy remainder; its $-\beta$-weighted core sum |
| sector support | `Dyed.Playing` | nonzero product of field, block, tag and chart cutoffs |
| matching flags | `Matched` | $\mathrm{flags}(A)=\mathrm{flags}_{t(x)}(V)$ |
| branch condition | `Patch.Branches` | uniqueness of selected minimisers and eligible axial gauge |
| sector regularity, noise bounds | `Chips`, `noises` | assumptions in III.4.6–III.4.7 |
| $c_G$ | `Gauge.colorScale` | matrix norm factor in the path estimate |
| price, bill, tax, rent, teller | numerical bounds; `Teller` | the step-estimator interface |

## 7. What remains unexplained
1. **Proof depth.** The supporting proofs marked “statement only” remain incomplete readings: the strip-resolvent and Fourier-inverse results in Lemma 4.14; the flat comparison in 4.15; 4.16; the path-counting and interaction estimates in 4.19(c),(e); 4.21; parts of 4.25; the entry bound in 4.27; 4.28–4.29; the clean-field construction in 4.30; 4.31; and the ancillary scheduling statements in 4.33. Their statements and the stated mechanisms have been compared with the cited source; these labels do not certify their dependency proofs.
2. **Run-level hypotheses.** The packet-energy and support-exponent assumptions of III.4.7 are substantive inputs. Their simultaneous supply on the selected run, and the transfer from stationary path families to the tube's work rows, still need a complete account. The precision, determinant-jet and noise bounds have local suppliers, but their use does not establish these other premises.
3. **Free-kernel comparison.** Lemma 4.15 compares the flat sector under the no-frozen-link and free-metric compatibility conditions. A direct statement comparing an arbitrary interacting sector covariance with the infinite-volume free operator was not located. The full expansion of the free-metric compatibility conditions and the nested marked inverse bounds in Lemma 4.29 remains to be written.
4. **Consumers and coverage.** The downstream reset and repeatable-step statements have not been checked here. The additional assigned packages for Wilson bulk terms, vacuum stability, proof interfaces, multisource terms and flat RG data are not covered by these steps. The closure-size figures in the opening metadata were retained without recounting.
5. **References.** The precise results and bibliographic locations in Helgason, Glimm–Jaffe, Katznelson, Balaban and Dimock remain to be selected and verified. The cited Lean declarations are the evidence for the statements above.

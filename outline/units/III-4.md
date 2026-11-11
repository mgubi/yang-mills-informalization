# III.4. Gaussian integration: change of Gaussian sector, determinants, window law

*Part III — Ultraviolet construction (renormalization group).*

Explains the Gaussian changes of variables, determinant bounds and local window estimates used in one renormalization step.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/III-4.md) · [← Previous: III.3](III-3.md) · [Next: III.5 →](III-5.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** about 40 work packages. The main ones are [`YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE) (exact change of variables, gap, windows), [`YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE) and [`YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON) (determinants and the polymer form of a sector), [`YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS), [`YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION) and [`YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS) (Gaussian moments), [`SECTOR_AFFINE_JETS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS), [`SECTOR_COVARIANCE_JETS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS) and [`SELECTED_ORDERED_KERNELS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS) (jets), [`LOCAL_GAUSSIAN_LAWS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS), [`GAUSSIAN_FIELD_ALIGNMENT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT), [`YM/Push/FREE_RESOLVENT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT) and [`YM/RG08/Gaussian/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian) (locality, infinite-volume kernels), [`YM/SectorNext/LARGE_FIELD_REMAINDERS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS), and the constant-producing statements in `Next/STATIONARY`, `MergeProof` and `PhysicalNext/V9_JOINT_ENDPOINT_LOAD`. **Size:** 37,956 lines in 4,737 declarations in the source allocation.

**Conventions.** $x=\hat\beta_m$ in applications; $R(x)=\lceil(\log x)^2\rceil$, $t(x)=x^{-1/2}e^{(\log\log x)^2}$, $\beta_F(x,L)=x+s_G\log L$, $t_L(x)=t(\beta_F(x,L))$, $g=\beta^{-1/2}$ and $r_x=\lfloor R(x)/60\rfloor$. Write $\|A\|_s$ for the maximum weighted row and column sums with weight $e^{s\,\mathrm{dist}(i,j)}$, using coarse positions. Matrix inequalities are quadratic-form inequalities. “For large $x$” means beyond a threshold depending only on previously fixed constants.

</details>

<a id="unit-results"></a>

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

The identity holds for every permitted $(C,m)$ without quantitative locality assumptions.

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
- spectral gap $\eta$;
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

For the relative expansions, the sector regularity conditions are: a lawful representation; matching fine paths and cutoff; a local chart with $d>0$, $4d<\rho_J$ and $2d<\rho_{\rm first}$; positive coupling and sector width; $0<t_L(x)\le1$; output threshold $t(x)$; and the tube's geometric, local-readability, predictor-derivative, covariance-positivity and spectral-gap conditions ([`Chips`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Desk.lean#L41-L54), [`Boosted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Exposure.lean#L40-L46)).

**Proposition III.4.6 (relative normalisation of a sector and its localisation).** Let $K_F$ be the flat kinetic precision: the Gram matrix of the move at $V=1$ with empty store, on all free links of $F$.

(i) If the fine path family satisfies its path bounds and the kernel satisfies the patch's branch condition, $\det K_F$ does not depend on the forest or on the gauge tags ([`Native.shared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Bore.lean#L303-L305)).

(ii) Assume:

- the tube is funded, and its fine path family and cutoff are those of $R$;
- the precision bounds of Lemma 4.21 of the detailed notes holds;
- $J$ is a local chart ratio, $\beta>0$, and the threshold of the output budget point is $t(x)$.

Then on every sector point $p=(A,F,k,V,Y,z)$ with matching flags, the positive density factor, with the sector masks and polymer product kept outside it, factorises as
$$\text{freight}(p)=\text{loading}(V)\,e^{\Lambda(p)},\qquad \text{loading}(V)=\text{banker}(V)\,\mathrm{pref}(\beta)\,e^{v_R\lvert\Lambda_f\rvert}\,\mathrm{spare}(\beta)^{\lvert F^{\rm free}\rvert}(\det K_F)^{-1/2}>0.$$
Here $\text{freight}=J_{\rm sc}^{\lvert\mathcal A\rvert}(2\pi g^2)^{n_a/2}(\det C)^{1/2}e^{\frac12 z\cdot C^{-1}z}\,\tilde J\cdot(\text{noise})\cdot e^{\mathrm{exponent}_R}$, and $\mathrm{spare}(\beta)=(2\pi g^2)^{\dim\mathfrak g/2}J_{\rm sc}$ is the Gaussian normalisation per link. The exponent is
$$\Lambda(p)=-\beta\,\mathcal E(p)+\eta\cdot z+\tfrac12z\cdot(C^{-1}-W)z+\kappa(p)+\sum_e\log\tilde J(a_e)+(\text{tails}),$$
$$\kappa(p)=-\lvert\mathcal F_A\rvert\log\mathrm{spare}(\beta)-\tfrac12\big(\log\det W-\log\det K_F\big)+\tfrac12\log\det(WC).$$
Here $\mathcal E$ is the orientation-averaged row energy, including the subtraction of the affine energy at $a$ and its addition at $m$:
$$\mathcal E=E_{\rm noise}(U,V)+E_{\rm fine}^{\rm cut}(U)-E_{\rm coarse}^{\rm cut}(V)-Q_Y(a)+Q_Y(m).$$
The tails are the remaining fine exponent after removing its volume constant and restoring its cut energy, together with the coarse cutoff correction.

(iii) Assume in addition the sector regularity conditions stated above, a nonnegative polymer exponent, and both path-counting bounds of Lemma 4.21 of the detailed notes. Then $\kappa(p)=-\lvert\mathcal F_A\rvert\log\mathrm{spare}+\sum_e\mathrm{sect}_e+I+\mathrm{Sh}$ ([`book_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Shards.lean#L34-L39)), where:

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
- a polymer exponent $e\ge0$, a chart-width multiplier $h\ge0$, constants $a,\alpha,\tau>0$ with $2\alpha\le a/2$, and bound constants $C_0\ge0$, $g_0,b_0,d_0>0$, $\eta_0\in\mathbb R$.

Then for large $x$ the following holds. Let $y=\mathrm{retime}(x)$, $z=\beta_F(x,D.L)$ and $\mathrm{hot}(s)=e^{(\log\log s)^{3/2}}$. Eventually $x\le y\le x^2$ and $t(y)=x^{-1/2}\mathrm{hot}(x)$. Take a step with patch $D$, a sector datum with chart $J$, and positive cutoff parameter $W_0$, subject to the following assumptions:

- the representation is lawful; the tube has the same fine paths and cutoff as the representation and satisfies the funded, geometric and chart-admission conditions; the chart radius $d=h\,t_{D.L}(y)$ satisfies $d>0$, $4d<\rho_J$ and $2d<\rho_{\rm first}$; the output threshold is $t(y)$;
- the step satisfies the free-metric size condition and $c\ge100(1+R(y))$, and its fine and coarse path families have a common path bound;
- $\beta\in[z/2,2z]$; the fine threshold $s=z^{-1/2}\mathrm{hot}(z)$ also lies in $[t_{D.L}(y)/2,2t_{D.L}(y)]$;
- on each eligible packet the row energy $\mathcal E$ is at least $a s^2$ times its size, whenever the sector cutoffs are nonzero;
- the support exponents satisfy the reserve inequality with parameters $(e,\tau)$; the budget radius $B_0$ satisfies $25R(y)+30\le B_0\le\mathrm{walls}(y)$, and the fine budget radius is at most $2B_0$;
- the lawful-representation bound can be chosen with activity constant $\Gamma\le\beta_F(y,D.L)^{1/8}$ and smallness parameter $\delta\le y^{-1/2}$, and the fine paths satisfy the required row-counting bound;
- the determinant-jet bounds at halo $20$, exponential order $2$ and derivative order $1$, and the precision and two path-counting bounds of Lemma 4.21 of the detailed notes hold at $y$, with constants $(g_0,C_0,\eta_0,b_0,d_0)$;
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

The restriction is on $z$; coefficients may depend on all background and frozen data.

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

The selected predictor rows are real-analytic, with $k$-jets bounded by constants depending only on $(G,P,K,k)$, on a ball of fixed radius ([`sounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Sounds.lean#L69-L101), [`chosen_branch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Branch.lean#L140-L219)). The precision $W$ is also real-analytic; covariance and resolvent conclusions are finite-order jet bounds.

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

Then there are pre-$L$ data with kernel $K$ and the prescribed orders, two families of path prices, free-field and slope bounds, and a cost bound, with the following property. For every tariff and scope there is a sequence of block-size floors. After any increase of those floors and any choice of block sizes above them, there is a stagewise Hessian spectral gap $\eta$. For every compatible post-$L$ cost choice (spectral gap $\eta$, activity cap at least $1$, and slope bound below the chosen cap), protection and initial delays, the delays can be enlarged so that the rate and chart conditions hold for all further enlargements. On every paid run with these data there are stationary path families, including the full stationary estimates in the retained family. For each adjacent stage pair $(j,i)$ above the initial stage, the per-step chart conditions hold with $a_{ji},E_{ji}$ chosen after $L_j$ ([`sponsored_permit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Stamped.lean#L139-L168)). [`issue_cosmos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Handoff.lean#L99-L116) replaces each entry value by the maximum of its old value and the thresholds for $(j,j)$ and $(j,j-1)$, preserving the rate conditions.

*Status:* theorem under these kernel and order assumptions.

*Lean:* [`sailsV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Seaside.lean#L96-L154), using [`geared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L59-L66).

<a id="unit-inputs"></a>

## 2. What it uses

- **III.1:** block-spin maps, tree gauge, tags and predictors ([`StepData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L22-L25)); the branch condition requires unique selected minimisers and an eligible axial gauge.
- **II.2, III.5, III.8:** representations, activity bounds, large-field allocations and polymer summability ([`Rep.Lawful`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L181-L183)).
- **III.10:** funded tubes, work rows, cutoffs, path bounds and compatible free metrics ([`Funds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L101-L109)).
- **III.3, III.6–III.7:** free-field estimates, stationary paths and fourth-order matching ([`FullPaths`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L301-L305)).
- **III.2, III.9:** ordered constants, directed runs, selected histories and coupling bands.
- **I.1, III.16:** Haar measure, exponential charts, analytic jets and Gaussian measures.
- **Standard results:** Gaussian affine transport, Combes–Thomas, the resolvent integral for $\log$, Neumann series, Gaussian integration by parts and analytic-strip Fourier decay.

Constants are chosen before $L$, after $L$, then before the threshold in $x$. Packet-energy, support-exponent, chart, noise and representation assumptions in III.4.7 remain separate inputs.

<a id="unit-strategy"></a>

## 3. Strategy

Keep links near the store as Haar variables and put the remaining links in exponential coordinates. Split off affine squares, shift by the windowed mean and divide by a Gaussian density; the linear and quadratic errors remain in the integrand. A local Poincaré inequality gives the precision's spectral gap, and decay estimates make its windowed inverse positive and exponentially close to the full inverse.

Expand relative log-determinants into window and path terms, then collect terms near large-field cores. Packet energy absorbs their logarithmic cost; the remainder has a small polymer norm. Gaussian moments control exponential insertions, marked jets control background derivatives, and annulus estimates recover affine squares away from the store.

<a id="unit-steps"></a>

## 4. Steps

1. **Chart transport and Gaussian scaling.** Under III.4.1's support and chart hypotheses, extended Jacobians and cutoffs preserve the sector integral and its integrability. Translate and dilate the Lebesgue variables, then expand the affine square to obtain the exact Gaussian formula. [Lean: `authorized_change`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L137-L192).

2. **Precision and windows.** Under III.4.3's hypotheses, a linkwise gauge choice compares predictor derivatives with the flat field, and the local Poincaré estimate absorbs the errors. Combes–Thomas bounds the window defect, giving III.4.4 and positivity. [Lean: `Gap.not_flat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gap.lean#L242-L264), [`Schur.windows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L184-L239).

3. **Admission along the run.** Under the funding and size hypotheses, axial gauge bounds active-link chords by a constant times $t_L(x)$, so the logarithmic chart gives the standing condition. With III.4.2’s run and band assumptions, enlarge stage thresholds, apply the sector identity to matching flags, and use vanishing for wrong flags to recover the push-forward. [Lean: `matinee`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Stamped.lean#L45-L119), [`committed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Handoff.lean#L132-L182).

4. **Relative determinants.** Identity completion puts actual and flat precisions on the same coordinates. Under III.4.5–III.4.6's assumptions, the resolvent integral and Neumann series give window letters and closed paths, which are regrouped near cores. [Lean: `Priced.chains`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Series.lean#L203-L227), [`rate_pass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L36-L48).

5. **Core suppression.** Under III.4.7's hypotheses, packet energy dominates core normalisation costs; the remaining terms have powers $y^{-1/8}$, $y^{-1/24}$ or exponential decay. Clamping preserves core values on the cutoff support, and symmetrisation gives the $y^{-1/48}$ bound. [Lean: `foreshadows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L96-L134). *(proof read; some supporting path and interaction bounds statement only)*

6. **Gaussian moments and local insertions.** Under III.4.8–III.4.9's assumptions, exponential quadratic moments and polynomial moments control insertions and tails. A correction supported on selected coordinates has a likelihood ratio determined by those marginals. [Lean: `same_law`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Arc.lean#L189-L253), [`insert_letter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Insertion.lean#L120-L172). *(moment and insertion proofs read; marginal-support assertion statement only)*

7. **Jets.** Under III.4.10's hypotheses, transplant predictor stencils to a fixed torus and use a local gauge to obtain uniform analytic rows. Perturbation preserves the precision's spectral gap and supplies the weighted inverse and window jet bounds. [Lean: `sounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Sounds.lean#L69-L101), [`assembly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Covariance.lean#L146-L210). *(predictor and precision proofs read; transport and cut-error bounds statement only)*

8. **Annulus squares and constants.** Under III.4.11's hypotheses, clean logarithmic coordinates give cubic row errors; summing the rows and discarding unselected positive squares proves the annulus bound. Under III.4.12's assumptions, choose stationary paths and block sizes, then enlarge delays and chart thresholds. [Lean: `annulus_pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Annulus.lean#L36-L127), [`sailsV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Seaside.lean#L96-L154). *(assembly and constant selection proofs read; clean-field construction and row recovery statement only)*

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

The spectral gap requires a different gauge comparison for each link; its smallness radius comes from continuity. Inverse bounds spend decay rate while remaining uniform in volume and sector. Relative determinants compare different active dimensions, and the large-field threshold must absorb their core costs while preserving polymer summability.

<a id="unit-notation"></a>

## 6. Notation

- **Symbol:** $\gamma_C$

  **Lean:** [`Gaussian.cloud`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean#L31)

  **Meaning:** Centred Gaussian $N(0,C)$.

- **Symbol:** $\mathcal F_A,\mathcal A_A$

  **Lean:** [`chill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean#L38-L40)

  **Meaning:** Frozen and active free links.

- **Symbol:** $W=M^{\top}M$

  **Lean:** [`Rows.gram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Remainder.lean#L27)

  **Meaning:** Precision of the affine squares.

- **Symbol:** $C=W_{\mathcal W}$

  **Lean:** [`fog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Chosen.lean#L69-L70)

  **Meaning:** Symmetrised windowed inverse.

- **Symbol:** $m(Y)$

  **Lean:** [`meanLog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Chosen.lean#L72-L74)

  **Meaning:** Windowed mean.

- **Symbol:** $\kappa(p),\Lambda(p)$

  **Lean:** [`keptEarly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Prism.lean#L50-L54)

  **Meaning:** Relative log-normalisation and full log-integrand.


$N_{B_0}(X)$ is the cover number; store size counts cost cells, aisles and flags.

<a id="unit-limitations"></a>

## 7. What remains unexplained
The simultaneous supply of III.4.7's packet-energy and support-exponent assumptions on the selected run, and the transfer of stationary paths to work rows, remain unexplained. Several supporting kernel, counting, transport and clean-field proofs were read only as statements. The free-kernel comparison is for flat sectors without frozen links under compatibility assumptions; no direct comparison for arbitrary interacting sectors was located. Downstream reset and repeatable-step results and the additional assigned packages remain unchecked; precise bibliographic references remain open.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/III-4.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md), [III.1](III-1.md), [III.11](III-11.md), [III.10](III-10.md), [III.7](III-7.md), [III.5](III-5.md), [III.16](III-16.md), [III.6](III-6.md), [II.2](II-2.md), [III.2](III-2.md), [III.9](III-9.md), [II.1](II-1.md), [III.8](III-8.md), [III.3](III-3.md), [III.15](III-15.md), [VIII.1](VIII-1.md).

**Referenced by:** [III.10](III-10.md), [III.11](III-11.md), [III.2](III-2.md), [VII.6](VII-6.md), [III.13](III-13.md), [III.9](III-9.md), [III.12](III-12.md), [VII.2](VII-2.md), [VII.1](VII-1.md), [III.15](III-15.md).

## Lean source

**Source allocation:** 37,956 attributed lines; 4,737 line-counted declarations; 5,885 assigned declaration names. Of the assigned names, 5,618 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- proof of [`foreshadows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L96-L134) — 4,885 lines.
- work package [`YM/Push/FREE_RESOLVENT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT) — 3,930 lines.
- work package [`YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE) — 3,807 lines.
- proof of [`endures`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Instruments.lean#L69-L86) — 3,712 lines.
- work package [`YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS) — 3,574 lines.
- work package [`YM/AnalyticBridge/SECTOR_AFFINE_JETS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS) — 2,712 lines.
- work package [`YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS) — 1,903 lines.
- work package [`YM/SectorNext/LARGE_FIELD_REMAINDERS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS) — 1,657 lines.
- work package [`YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS) — 1,639 lines.
- work package [`YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE) — 979 lines.
- work package [`YM/RG08/Gaussian/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian) — 957 lines.
- work package [`YM/AnalyticBridge/MARGINAL_MULTIPLIER_3B1D/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/MARGINAL_MULTIPLIER_3B1D) — 688 lines.
- work package [`YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT) — 659 lines.
- shared machinery (corollaries of endures) — 641 lines.
- work package [`YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS) — 636 lines.
- shared machinery (corollaries of foreshadows) — 602 lines.
- work package [`YM/AnalyticBridge/LOCAL_GAUSSIAN_MULTIPLIER/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_MULTIPLIER) — 601 lines.
- work package [`YM/AnalyticBridge/NONFLAT_COVARIANCE_LOCALITY/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/NONFLAT_COVARIANCE_LOCALITY) — 593 lines.
- work package [`YM/PhysicalNext/WEIGHTED_GAUSSIAN_MARGINAL_LIMIT_45C/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/WEIGHTED_GAUSSIAN_MARGINAL_LIMIT_45C) — 497 lines.
- work package [`YM/AnalyticBridge/ANNULUS_GAUSSIAN_INTERFACE_1AD/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_GAUSSIAN_INTERFACE_1AD) — 465 lines.
- work package [`YM/PhysicalNext/ACTUAL_SECTOR_FACTOR_DICTIONARY/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/ACTUAL_SECTOR_FACTOR_DICTIONARY) — 462 lines.
- work package [`YM/WilsonBulk/Trees/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Trees), with [`YM/WilsonBulk/Grid/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Grid), [`YM/WilsonBulk/Vacuum/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Vacuum) — 454 lines.
- work package [`YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS) — 391 lines.
- work package [`YM/AnalyticBridge/SHARP_NORMALIZED_TAIL/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SHARP_NORMALIZED_TAIL) — 220 lines.
- work package [`YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION) — 174 lines.
- work package [`YM/MultiNext/VACUUM_STABILITY/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/VACUUM_STABILITY) — 156 lines.
- work package [`YM/ProofPorts/COMMON_COMPLEX_PRODUCTION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProofPorts/COMMON_COMPLEX_PRODUCTION) — 153 lines.
- work package [`YM/Next/MULTISOURCE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MULTISOURCE) — 105 lines.
- work package [`YM/RG08/Flat/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat) — 101 lines.
- work package [`YM/WilsonBulk/Agenda/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Agenda) — 90 lines.
- work package [`YM/AnalyticBridge/ANNULUS_GAUSSIAN_INTERFACE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_GAUSSIAN_INTERFACE) — 78 lines.
- work package [`YM/ProjectorNext/PROJECTOR_EQUIVARIANCE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProjectorNext/PROJECTOR_EQUIVARIANCE) — 77 lines.
- work package [`YM/SectorNext/RECONNECTED_LOCALITY/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/RECONNECTED_LOCALITY) — 70 lines.
- work package [`YM/PhysicalNext/PHYSICAL_JOINT_ENDPOINT_LOAD_F16/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/PHYSICAL_JOINT_ENDPOINT_LOAD_F16) — 58 lines.
- work package [`YM/WilsonBulk/Broadcast/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Broadcast) — 56 lines.
- work package [`YM/SectorTools/PHYSICAL_GAUSSIAN_SWITCH/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_SWITCH) — 45 lines.
- work package [`YM/WilsonBulk/Transit/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Transit) — 34 lines.
- work package [`YM/PhysicalNext/ORDERED_AFFINE_2B/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/ORDERED_AFFINE_2B) — 26 lines.
- work package [`YM/WilsonBulk/Cash/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Cash) — 26 lines.
- work package [`YM/WilsonBulk/Heat/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Heat) — 17 lines.
- work package [`YM/PhysicalNext/RECURSIVE_SECANTS_079/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RECURSIVE_SECANTS_079) — 11 lines.
- work package [`YM/WilsonBulk/Tuning/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Tuning) — 6 lines.
- work package [`YM/WilsonBulk/Series/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Series) — 3 lines.
- work package [`YM/Progress/CLASSICAL_KIN_RECURSION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/CLASSICAL_KIN_RECURSION) — 2 lines.
- work package [`YM/Primitives/TWO_WAVE_TRACE_DENSITY/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/TWO_WAVE_TRACE_DENSITY) — 1 lines.
- work package [`YM/RG08/Invert/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Invert) — 1 lines.
- work package [`YM/WilsonBulk/Staves/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Staves) — 1 lines.
- work package [`YM/WilsonBulk/Tickets/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Tickets) — 1 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`letterBase`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Series.lean#L45-L46)
- [`excess`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Walls.lean#L35)
- [`ChartRatio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L23-L26)
- [`LocalRatio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L28-L38)
- [`rents`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L32)
- [`nightly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L35)
- [`bills`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L71-L89)
- [`wages`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L90-L114)
- [`issued`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L27-L35)
- [`paltry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L52-L65)
- [`Petty`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Petty.lean#L28-L29)
- [`introTax`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Shards.lean#L31)
- [`showTax`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Shards.lean#L32)
- [`billIt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Shards.lean#L60-L77)
- [`ranked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Spreaders.lean#L53-L61)
- [`minimum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Spreaders.lean#L82-L89)
- [`garlic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Stocks.lean#L21)
- [`center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Turret.lean#L74)
- [`radiusB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22)
- [`temp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L25)
- [`fiery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L26)
- [`Branches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185)
- [`protected_pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Broad.lean#L115-L120)
- [`coupling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L35)
- [`recolored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L73-L93)
- [`chartCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Counting.lean#L103-L104)
- [`at_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Counting.lean#L117-L125)
- [`cloud_formula`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean#L134-L156)
- [`Gaussian.gauged`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean#L204-L210)
- [`force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean#L79)
- [`log_transport`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Haar.lean#L143-L162)
- [`Schur.inverse_tilt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Inverse.lean#L74-L121)
- [`spare`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Ledger.lean#L34)
- [`compose_residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Remainder.lean#L102-L105)
- [`Rows.adjusted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Remainder.lean#L128-L146)
- [`Gapped`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Schur.lean#L110)
- [`Pours`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Schur.lean#L25-L28)
- [`sheltered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean#L76-L109)
- [`Schur.provides`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L103-L119)
- [`Schur.per`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L67-L68)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-iii-4-1"></a>

- **K-III.4.1** [`gathered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Margins.lean#L51-L75) *(numbered result)* — A linear map of a Gaussian vector with PSD covariance is Gaussian with the transformed covariance, measure-preservingly.

<a id="k-iii-4-2"></a>

- **K-III.4.2** [`still`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_MULTIPLIER/TicketsChart.lean#L63-L107) *(numbered result)* — For a smooth function vanishing to first order at 0, rescaling by d in (0,1] gives Taylor-type jet bounds of size W·d² uniformly on a ball.

<a id="k-iii-4-3"></a>

- **K-III.4.3** [`passports`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Currencies.lean#L127-L150) *(key result)* — Under volume-growth hypotheses and a smallness condition, a counting inventory of clusters satisfies a summable total-cost bound.

<a id="k-iii-4-4"></a>

- **K-III.4.4** [`publish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/Fold.lean#L139-L180) *(key result)* — A family of finite-volume operators with uniform exponential off-diagonal decay is realized by a single infinite-volume kernel with a slightly weaker decay rate restricting to each of them.

<a id="k-iii-4-5"></a>

- **K-III.4.5** [`strip_resolvent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/Metric.lean#L30-L37) *(key result)* — A strip-decaying kernel with a uniform spectral gap has an inverse of the resolvent type that is again strip-decaying with explicit degraded rate and constant.

<a id="k-iii-4-6"></a>

- **K-III.4.6** [`carried`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Visits.lean#L81-L120) *(numbered result)* — A jet budget at a walk endpoint transfers to the start with factor exponential in walk length via adjoint transport.

<a id="k-iii-4-7"></a>

- **K-III.4.7** [`follows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Tracks.lean#L36-L89) *(numbered result)* — A pointwise jet-budget bound on target endpoints transfers to a bound on a sum over covered walks with exponential-in-length control.

<a id="k-iii-4-8"></a>

- **K-III.4.8** [`fires`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Parade.lean#L56-L90) *(numbered result)* — A tail-weighted polynomial bill is dominated by an exponentially decaying quantity in the trigger count for large x.

<a id="k-iii-4-9"></a>

- **K-III.4.9** [`charge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Due.lean#L70-L87) *(numbered result)* — A function with finite-range locality around a site, vanishing when far from it, has pointwise jet dues with exponential weight in the radius.

<a id="k-iii-4-10"></a>

- **K-III.4.10** [`local_prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/SmallArc.lean#L28-L60) *(key result)* — Under local volume growth and derivative bounds, the free resolvent jets satisfy a polarized row/column budget bound with explicit altitude.

<a id="k-iii-4-11"></a>

- **K-III.4.11** [`coordinates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Coordinates.lean#L126-L179) *(key result)* — For small coordinate perturbations, the field entries and scene fields admit uniform derivative bounds with constants depending only on the gauge and order.

<a id="k-iii-4-12"></a>

- **K-III.4.12** [`transport_rows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/TrueTransport.lean#L257-L299) *(key result)* — Transport rows built from path data decaying at rate σ are priced bundles with exponentially small bounds in the minimal path length.

<a id="k-iii-4-13"></a>

- **K-III.4.13** [`bound_plotted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Visits.lean#L135-L195) *(numbered result)* — Jet budgets for the plotted path data follow from toll bounds on nearby cells with geometric collapse over cut labels.

<a id="k-iii-4-14"></a>

- **K-III.4.14** [`slots`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Prices.lean#L151-L182) *(numbered result)* — The negative log of the spare ratio is bounded by a constant times one plus the log of the scale.

<a id="k-iii-4-15"></a>

- **K-III.4.15** [`release_integral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Haar.lean#L167-L184) *(key result)* — Integrals over link arrays can be rewritten as integrals over log coordinates by exponential substitution, with a Jacobian and indicator of the chart domain.

<a id="k-iii-4-16"></a>

- **K-III.4.16** [`authentic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS/Trace.lean#L228-L253) *(key result)* — For a Gaussian measure, the exponential of a quadratic-plus-linear exponent with small weights is integrable with integral at most exp(2 trace), with trace counted over actual uses.

<a id="k-iii-4-17"></a>

- **K-III.4.17** [`amount`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS/Moment.lean#L67-L71) *(key result)* — Under a base condition, the exponential of a sum of charges is Gaussian-integrable with integral at most exp(2 times the due quantity).

<a id="k-iii-4-18"></a>

- **K-III.4.18** [`natural`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/ColourBooks.lean#L163-L192) *(numbered result)* — Windowed compressed covariance of ordered columns commutes with complete-block reindexing, for all u, even in singular cases and without symmetry.

<a id="k-iii-4-19"></a>

- **K-III.4.19** [`moves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Binding.lean#L116-L134) *(numbered result)* — Under a change of site set and color-block projection, the windowed Gaussian covariance and mean transform naturally with the induced windows.

<a id="k-iii-4-20"></a>

- **K-III.4.20** [`windows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L184-L239) *(key result)* — For symmetric gapped covariances with decay, the window-compressed covariance approximates the inverse with exponentially small error in radius, and is gapped and positive definite for large radius.

<a id="k-iii-4-21"></a>

- **K-III.4.21** [`side`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/NONFLAT_COVARIANCE_LOCALITY/Frozen.lean#L83-L106) *(numbered result)* — The active-column block of the windowed matrix of an enlarged system equals the windowed matrix of the original system.

<a id="k-iii-4-22"></a>

- **K-III.4.22** [`fluctuate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Packets.lean#L85-L113) *(numbered result)* — Uniform finite bound on the fluctuation (log-ratio) cost in a real logarithm neighborhood of the parameter.

<a id="k-iii-4-23"></a>

- **K-III.4.23** [`thaw_integral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Haar.lean#L225-L253) *(numbered result)* — Iterated integration formula after exponential substitution on relative links for bounded functions supported where the chart condition holds, with integrability.

<a id="k-iii-4-24"></a>

- **K-III.4.24** [`produce`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS/LocalPolynomial.lean#L58-L67) *(key result)* — A complex local polynomial of bounded degree, supported on a marked set with weights and magnitudes controlled, compiles to the ordered probe class with the stated read-set and cost bound.

<a id="k-iii-4-25"></a>

- **K-III.4.25** [`poly_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/WEIGHTED_GAUSSIAN_MARGINAL_LIMIT_45C/Polynomial.lean#L82-L85) — Any complex polynomial of bounded total degree is moderate on the committed marginals with bound coefficient norm times a normal price.

<a id="k-iii-4-26"></a>

- **K-III.4.26** [`impression`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Press.lean#L123-L155) *(numbered result)* — There is a common finite reference frame so actual block predictors exist for all sufficiently large coarse sides.

<a id="k-iii-4-27"></a>

- **K-III.4.27** [`uses`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SHARP_NORMALIZED_TAIL/Tags.lean#L97-L112) *(numbered result)* — The uniform average of a product of functions depending on pairwise disjoint tag sets factorizes into the product of averages.

<a id="k-iii-4-28"></a>

- **K-III.4.28** [`aperture`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Pan.lean#L57-L122) *(key result)* — For a gapped, finite-range, symmetric covariance family with rate bounds, the localized installed estimate holds uniformly with exponential decay at large scale.

<a id="k-iii-4-29"></a>

- **K-III.4.29** [`charts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/AffineCharts.lean#L51-L121) *(numbered result)* — An analytic function vanishing at zero and matching a tangent map on one slice differs from the affine response by O(u²) on small balls.

<a id="k-iii-4-30"></a>

- **K-III.4.30** [`linear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/NearJet.lean#L159-L187) *(numbered result)* — For a real-analytic map near zero, the first-derivative remainder is bounded by a constant times the parameter size in a small ball.

<a id="k-iii-4-31"></a>

- **K-III.4.31** [`stocked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Completion.lean#L181-L212) *(numbered result)* — On inactive positions the identity completion gives the identity completion of the integral's covariance, omitting no zero modes.

<a id="k-iii-4-32"></a>

- **K-III.4.32** [`regularized_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean#L142-L199) *(key result)* — At fixed volume the iterated sector integral equals an exact formula, with absolute integrability, for a chart ratio and enveloped observable.

<a id="k-iii-4-33"></a>

- **K-III.4.33** [`wide`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Tracks.lean#L134-L161) *(numbered result)* — Pointwise jet budgets at all sites within distance R transfer to a budget for the finite-range kernel applied to the data.

<a id="k-iii-4-34"></a>

- **K-III.4.34** [`cleans_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Clean.lean#L110-L208) *(key result)* — Under wide-field and funding hypotheses, there is a uniform constant and a direction vanishing on trunks such that all swept sites are clean for large x.

<a id="k-iii-4-35"></a>

- **K-III.4.35** [`freshQ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Duplicated.lean#L52-L101) *(numbered result)* — The copied Q table's prediction map is, up to gauge endpoint factors, a contraction-bounded linear paste of the coarse and fine directions.

<a id="k-iii-4-36"></a>

- **K-III.4.36** [`block_comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Block.lean#L316-L361) *(key result)* — For small fields in a local stencil, the branch derivative on a block is comparable to the left-trivialized group differential with uniform constants over all steps.

<a id="k-iii-4-37"></a>

- **K-III.4.37** [`near_collective`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/AffineRows.lean#L184-L192) *(numbered result)* — Near zero, the affine collective kernel equals the individual kernel for all choices and orientations.

<a id="k-iii-4-38"></a>

- **K-III.4.38** [`plotted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Ink.lean#L93-L120) *(numbered result)* — Block predictor chart maps are real-analytic with jet bounds uniform near zero on each fixed torus.

<a id="k-iii-4-39"></a>

- **K-III.4.39** [`sounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Sounds.lean#L69-L101) *(key result)* — All mixed derivatives up to order k of the block coefficients on the selected row are bounded uniformly, and analytic, in a neighborhood of radius r.

<a id="k-iii-4-40"></a>

- **K-III.4.40** [`reacts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/CollarData.lean#L131-L189) *(key result)* — For large scale x, large-field remainder estimates hold uniformly over all admissible steps and tubes, with constants and a weak radius decaying faster than any power.

<a id="k-iii-4-41"></a>

- **K-III.4.41** [`bump_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/NONFLAT_COVARIANCE_LOCALITY/Either.lean#L27-L58) *(numbered result)* — If two data agree within a radius, the corresponding bump rows agree at entries whose separation plus patch span is within the radius.

<a id="k-iii-4-42"></a>

- **K-III.4.42** [`sub_gram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/AffineMatch.lean#L162-L175) *(numbered result)* — The Gram matrix of the cut selected precision equals a submatrix of the repaired matrix.

<a id="k-iii-4-43"></a>

- **K-III.4.43** [`notarized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/CutGerm.lean#L110-L129) *(key result)* — Near zero, the active and raw matrices of the no-hole cut comparison agree in a flat neighborhood.

<a id="k-iii-4-44"></a>

- **K-III.4.44** [`not_flat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gap.lean#L242-L264) *(key result)* — There is a uniform positive lower bound on the precision (Gram) form of active prices at flag-correct volumes, valid for all large temperatures and admissible steps.

<a id="k-iii-4-45"></a>

- **K-III.4.45** [`shared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Bore.lean#L303-L305) *(numbered result)* — The determinant of the flat kinetic precision matrix is the same for two admissible chart choices, so normalized Jacobians drop out.

<a id="k-iii-4-46"></a>

- **K-III.4.46** [`late_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Year.lean#L113-L197) *(key result)* — For large scale x, uniformly over admissible step data, the actual transforms satisfy certified fixed-L price bounds with uniform constants.

<a id="k-iii-4-47"></a>

- **K-III.4.47** [`open_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SHARP_NORMALIZED_TAIL/Apertures.lean#L43-L55) *(key result)* — The relevant Gaussian covariance is positive definite with a uniform cap for all keys and placements with correct flags.

<a id="k-iii-4-48"></a>

- **K-III.4.48** [`ground_supply`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/SectorData.lean#L88-L110) *(key result)* — For a patch and teller, uniform constants exist such that all non-higher-order ground estimates hold on every large-scale step, tube and configuration.

<a id="k-iii-4-49"></a>

- **K-III.4.49** [`laplace_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Laplace.lean#L70-L85) *(numbered result)* — An exponential of an observable bounded by a quadratic-type penalty is integrable under a Gaussian with covariance ceiling, with an explicit bound.

<a id="k-iii-4-50"></a>

- **K-III.4.50** [`shifted_heat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/WEIGHTED_GAUSSIAN_MARGINAL_LIMIT_45C/Hot.lean#L84-L107) *(numbered result)* — A shifted Gaussian covariance with a billed exponential budget and bounded shift satisfies the joint exponential test.

<a id="k-iii-4-51"></a>

- **K-III.4.51** [`chosen_branch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Branch.lean#L140-L219) *(key result)* — Predictor rows of the selected block have uniformly bounded mixed derivatives in a uniform ball of field parameters, with a single local gauge branch.

<a id="k-iii-4-52"></a>

- **K-III.4.52** [`selected_priced`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/EntryBounds.lean#L186-L243) *(numbered result)* — Kernel entries of the selected rows satisfy uniform two-sided derivative/price bounds in the price coordinates of a small ball.

<a id="k-iii-4-53"></a>

- **K-III.4.53** [`precision`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Neighborhood.lean#L122-L159) *(key result)* — Marked precision jets yield a period-uniform neighborhood in which the flat-comparison gap persists under perturbation of the base field with flags fixed.

<a id="k-iii-4-54"></a>

- **K-III.4.54** [`assembly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Covariance.lean#L146-L210) *(key result)* — For a branch-certified patch, the selected-sector source object admits kernel jets of every finite order with uniform positive constants on a price-coordinate ball.

<a id="k-iii-4-55"></a>

- **K-III.4.55** [`estimates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Residual.lean#L153-L187) *(key result)* — On the actual selected Gaussian's inverse, there are uniform constants giving the cost and multiplier-defect estimates for small price coordinates.

<a id="k-iii-4-56"></a>

- **K-III.4.56** [`projecting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian/TreeInverse.lean#L64-L115) *(key result)* — The tree inverse of the quadratic slice Hessian is obtained by projecting the inverse of the joint completion, rather than estimated by kernel closeness.

<a id="k-iii-4-57"></a>

- **K-III.4.57** [`cutHead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/TellerFold.lean#L118-L146) *(key result)* — The plane-tree-inverse covariance of the ideal free head equals the Gaussian conditional covariance tensor for any tag-consistent tree.

<a id="k-iii-4-58"></a>

- **K-III.4.58** [`authorized_change`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L137-L192) *(key result)* — Under permitted Gaussian data, the actual sector integral admits an exact Gaussian change-of-variables formula with controlled price, licensing the downstream application.

<a id="k-iii-4-59"></a>

- **K-III.4.59** [`committed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Handoff.lean#L132-L182) *(key result)* — Under the stated hypotheses, the committed renormalization-group integral is licensed: all displayed integrals are valid and the sector-change identity holds at each scale step.

<a id="k-iii-4-60"></a>

- **K-III.4.60** [`prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Center.lean#L115-L151) *(key result)* — Uniform constants exist so that, for all large x, the affine pricing data satisfy estimates on a ball of coordinates and a shift bound.

<a id="k-iii-4-61"></a>

- **K-III.4.61** [`openings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Desk.lean#L42-L107) *(numbered result)* — For a local ratio chart there exist constants such that aperture and sponsored conditions hold for all large x.

<a id="k-iii-4-62"></a>

- **K-III.4.62** [`fromTeller`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Sky.lean#L62-L77) *(main result)* — For a fixed patch and gauge and teller data, there exist positive constants such that for all large x the sector covariance jet estimate holds with exact Gaussian endpoint metric.

<a id="k-iii-4-63"></a>

- **K-III.4.63** [`authorized_loans`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/AuthorizedLoans.lean#L44-L61) *(key result)* — Ground, higher-derivative and query bounds for selected ordered kernels hold uniformly without extra jet input hypotheses.

<a id="k-iii-4-64"></a>

- **K-III.4.64** [`trusting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Deposit.lean#L68-L93) *(key result)* — Uniformly for large x, gap and integrable-calculus (TestD) hypotheses hold on a germ neighborhood for the actual data.

<a id="k-iii-4-65"></a>

- **K-III.4.65** [`headComparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Ideal.lean#L120-L144) *(key result)* — The physical free horizon-linked inverse is compared with the ideal one with a positive exponential rate chosen post-L.

<a id="k-iii-4-66"></a>

- **K-III.4.66** [`commissioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/SectorLie.lean#L126-L134) *(key result)* — Ground bounds exist with constants, and any higher-derivative request yields a query bound with combined constants.

<a id="k-iii-4-67"></a>

- **K-III.4.67** [`freeHead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/HeadSwitch.lean#L104-L143) *(key result)* — For large volume, zeroth-order Gaussian exchange holds: the actual free covariance is exponentially close to the ideal horizon-linked covariance with uniform constants.

<a id="k-iii-4-68"></a>

- **K-III.4.68** [`total`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Taylor.lean#L73-L108) *(key result)* — The full affine inverse germ's jet discrepancy against spatial marks is bounded by an exponential window loss plus a path-cut loss on the same tree and data.

<a id="k-iii-4-69"></a>

- **K-III.4.69** [`earned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Covers.lean#L67-L103) *(key result)* — Given a strip-bounded metric with gap, there is a strip-decaying operator whose restriction to each period equals the plane-tree-inverse conditional covariance form.

<a id="k-iii-4-70"></a>

- **K-III.4.70** [`bought`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Stead.lean#L94-L117) *(numbered result)* — A uniform bundle price bound, with constants chosen before the orbit, trees and volume, holds for large x.

<a id="k-iii-4-71"></a>

- **K-III.4.71** [`entries`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Quote.lean#L99-L127) *(numbered result)* — For large parameter, the move-matrix entries satisfy derivative bounds up to order k on a uniform real neighborhood.

<a id="k-iii-4-72"></a>

- **K-III.4.72** [`face_payment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/RowStack.lean#L117-L130) *(numbered result)* — Face kicks satisfy derivative bounds with a uniform face cost across all channels and geometries.

<a id="k-iii-4-73"></a>

- **K-III.4.73** [`fine_squares`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/AffineRows.lean#L157-L209) *(numbered result)* — Affine approximation of curvature squares along actual paths is controlled by the local deviation bounds in a tube.

<a id="k-iii-4-74"></a>

- **K-III.4.74** [`joint_universal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian/Completion.lean#L62-L110) *(key result)* — For each j≥4 there is a uniform σ such that every branching patch with J=j admits a row inverse with strip bound for the flat Gaussian completion, uniform over scales.

<a id="k-iii-4-75"></a>

- **K-III.4.75** [`before_local`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/CorePacket.lean#L151-L160) *(key result)* — Beyond some scale, the before-L ledger and point-charge bounds hold for all large x and admissible steps.

<a id="k-iii-4-76"></a>

- **K-III.4.76** [`quote`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/SameQuote.lean#L216-L232) *(key result)* — The actual ordered kernels and their probability covariances are compared to Gaussian ones at the same Gram matrix with uniform constants, eventually in the parameter.

<a id="k-iii-4-77"></a>

- **K-III.4.77** [`freezer_row`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian/PeriodicInverse.lean#L104-L139) *(key result)* — A frozen periodic inverse yields a row inverse with strip bound whose constants depend only on the slab, uniformly in period.

<a id="k-iii-4-78"></a>

- **K-III.4.78** [`patch_agreed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Collar.lean#L52-L107) *(numbered result)* — Squares and charges on a coarse site's patch depend only on inputs agreeing on that patch, regardless of other choices.

<a id="k-iii-4-79"></a>

- **K-III.4.79** [`coverall`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Roof.lean#L39-L62) *(key result)* — For each finite order there exist uniform constants such that, for large scale, the sector-change covariance presentation (Sky and Deck bounds) holds.

<a id="k-iii-4-80"></a>

- **K-III.4.80** [`onePlateau`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Covers.lean#L114-L136) *(main result)* — There is a single exponentially localized operator that simultaneously represents the conditional covariance for all admissible steps and has exponentially small differences under shortening.

<a id="k-iii-4-81"></a>

- **K-III.4.81** [`shortening`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/AffineResolvent.lean#L81-L100) *(key result)* — After cutting at radius R, the k-jet of the affine inverse germ differs from the original by an exponentially small error including position and energy cost.

<a id="k-iii-4-82"></a>

- **K-III.4.82** [`residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/SectorWindows.lean#L139-L165) *(numbered result)* — The residual window term is small in chart bundle, exponentially in radius, at all derivative orders.

<a id="k-iii-4-83"></a>

- **K-III.4.83** [`knows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/AffineResolvent.lean#L65-L74) *(numbered result)* — Affine inverse jet outputs are controlled in the actual unselected no-hole geometry without assuming a gap.

<a id="k-iii-4-84"></a>

- **K-III.4.84** [`haar_operators`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/HaarOperators.lean#L71-L83) *(key result)* — Marginal input estimates for Haar operator ordered kernels hold eventually with uniform constants for all admissible steps.

<a id="k-iii-4-85"></a>

- **K-III.4.85** [`annulus_pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Annulus.lean#L36-L127) *(key result)* — For large fields, annulus contributions admit chart bounds and super-polynomially small error with affine direction selection uniformly over steps.

<a id="k-iii-4-86"></a>

- **K-III.4.86** [`preflight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Trees/Pressure.lean#L69-L82) *(key result)* — There exists a sequence of scales, one for each level, such that covariance models serve with constants for all patches and horizons.

<a id="k-iii-4-87"></a>

- **K-III.4.87** [`coat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Recovery.lean#L68-L219) *(key result)* — Local annulus analytic estimate: rows in the sweep with wide data return with error decaying faster than any power.

<a id="k-iii-4-88"></a>

- **K-III.4.88** [`packing_bill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Trees/Transfer.lean#L55-L66) *(key result)* — For a patch, there is a positive rate and constant such that any bed with strip metric and floors is served by the model.

<a id="k-iii-4-89"></a>

- **K-III.4.89** [`focused`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Subtotal.lean#L123-L165) *(key result)* — Uniform estimates for the lifted step: under small perturbations along tube configurations, the step's kernel comparison holds with explicit constants for large parameter.

<a id="k-iii-4-90"></a>

- **K-III.4.90** [`aperture`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/WEIGHTED_GAUSSIAN_MARGINAL_LIMIT_45C/Venue/Chips.lean#L31-L68) *(key result)* — For large x, on every collection of link colors and sector-admissible configurations, a Gaussian marginal comparison estimate holds uniformly.

<a id="k-iii-4-91"></a>

- **K-III.4.91** [`contracted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Contraction.lean#L159-L215) *(numbered result)* — Under local ratio hypothesis, the committed J at every point in the ball equals the absolute value of the spin function.

<a id="k-iii-4-92"></a>

- **K-III.4.92** [`same_row`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Reading.lean#L194-L212) *(numbered result)* — A full-precision matrix entry is unchanged between two configurations agreeing on the relevant neighborhood.

<a id="k-iii-4-93"></a>

- **K-III.4.93** [`chain_receipt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/ACTUAL_SECTOR_FACTOR_DICTIONARY/Chains.lean#L68-L94) *(numbered result)* — Under a relative decay condition with ratio below one, the path sum over chains converges absolutely to the difference of inverses C⁻¹−A.

<a id="k-iii-4-94"></a>

- **K-III.4.94** [`publish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/PHYSICAL_JOINT_ENDPOINT_LOAD_F16/DLog/Color.lean#L38-L63) *(numbered result)* — Smoothness of a function together with weighted jet bounds yields a bound estimate (norm-type estimate) on a ball.

<a id="k-iii-4-95"></a>

- **K-III.4.95** [`labeled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Alphabet.lean#L196-L208) *(numbered result)* — Log determinant and log of one plus excess are sums over labeled tuple series with summable pieces.

<a id="k-iii-4-96"></a>

- **K-III.4.96** [`gilded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Alabaster.lean#L141-L155) *(numbered result)* — Three letter data types obey the shared hit budget at gauge-invariant value level.

<a id="k-iii-4-97"></a>

- **K-III.4.97** [`foreshadows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L96-L134) *(numbered result)* — Under positivity hypotheses, a payment bound for the unmarked assembly holds for all large parameter and compatible step data.

<a id="k-iii-4-98"></a>

- **K-III.4.98** [`panel_report`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Ink.lean#L162-L182) *(numbered result)* — Smoothness and integrability of differentiated label arcs holds at a point given a local scaling form.

<a id="k-iii-4-99"></a>

- **K-III.4.99** [`growth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Planning.lean#L39-L54) *(numbered result)* — Given entries per family and growth of order, one can choose panels, index sets and sizes with compatibility and size-book conditions.

<a id="k-iii-4-100"></a>

- **K-III.4.100** [`abound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Regale.lean#L65-L88) *(key result)* — For large x, under tree-exponent and lane-count hypotheses, the terra exponent function is petty with error x^(-1/24) uniformly over sectors.

<a id="k-iii-4-101"></a>

- **K-III.4.101** [`issue_invoice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Petty.lean#L72-L90) *(key result)* — A decomposition of the spool lift into local pieces plus a petty remainder yields a plate with bounded base and an exponential-minus-one bound by a Hit-type budget.

<a id="k-iii-4-102"></a>

- **K-III.4.102** [`rate_pass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L36-L48) *(key result)* — The kept-early log-determinant decomposes as a sum of site rents, a nightly term, and intro and show taxes.

<a id="k-iii-4-103"></a>

- **K-III.4.103** [`book_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Shards.lean#L34-L39) *(key result)* — The kept-early log-determinant equals minus the number of frozen sites times log of spare, plus sector sums and intro and show taxes.

<a id="k-iii-4-104"></a>

- **K-III.4.104** [`bolsters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Sage.lean#L82-L114) *(key result)* — For large x, the quadratic auxiliary and relative log-price terms are both petty with error x^(-1/8) uniformly over sectors.

<a id="k-iii-4-105"></a>

- **K-III.4.105** [`chains`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Series.lean#L203-L227) *(key result)* — The log determinant chain identities hold: the log determinant of a positive definite covariance expands as a convergent series of trace terms.

<a id="k-iii-4-106"></a>

- **K-III.4.106** [`stores`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/PHYSICAL_JOINT_ENDPOINT_LOAD_F16/DLog/Fund.lean#L120-L127) *(key result)* — For a gauge, patch and predictor with branching property, there is a fund object so that the post-L stock for determinant labels holds eventually in x.

<a id="k-iii-4-107"></a>

- **K-III.4.107** [`posDef_of_integrable_quadratic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Escape.lean#L52-L94) *(numbered result)* — If exp(-quadratic/2 - linear + constant) is integrable on Euclidean space, then the symmetric matrix is positive definite.

<a id="k-iii-4-108"></a>

- **K-III.4.108** [`inverse_perturb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_SWITCH/TableCosts.lean#L63-L83) *(numbered result)* — If D⁻¹ has decay bound K and A−D is small with decay, then A⁻¹ has the same decay with constant 2K.

<a id="k-iii-4-109"></a>

- **K-III.4.109** [`likelihood_local`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Support.lean#L178-L207) *(numbered result)* — For a locally confined perturbation, the likelihood ratio equals that of the marginal Gaussians on the local support.

<a id="k-iii-4-110"></a>

- **K-III.4.110** [`priceShift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/Relative.lean#L245-L266) *(numbered result)* — The log of the Gaussian density ratio under a shift is bounded by explicit quadratic expressions in the difference and inverse-decay constants.

<a id="k-iii-4-111"></a>

- **K-III.4.111** [`takings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Folio/Takings.lean#L99-L116) *(key result)* — For any fixed polynomial degree and support exponent, the joint endpoint load is eventually exponentially small in the radius parameter.

<a id="k-iii-4-112"></a>

- **K-III.4.112** [`power_iff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Moment.lean#L183-L185) *(numbered result)* — The p-th power of a Gaussian likelihood ratio is integrable exactly when the mixed precision matrix is positive definite.

<a id="k-iii-4-113"></a>

- **K-III.4.113** [`root_pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Origin.lean#L208-L218) *(numbered result)* — The blame term is uniformly bounded by a constant per key over admissible data.

<a id="k-iii-4-114"></a>

- **K-III.4.114** [`paid_kernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/ResidualPrice.lean#L159-L221) *(key result)* — The residual quadratic and one log term of the sector change are controlled with exponentially small cost using the true covariance and window.

<a id="k-iii-4-115"></a>

- **K-III.4.115** [`visions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/CovBound.lean#L118-L146) *(numbered result)* — A fixed-L covariance is bounded above and below uniformly in flags, positions, forest and placement for large x.

<a id="k-iii-4-116"></a>

- **K-III.4.116** [`holds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Chord.lean#L133-L158) *(key result)* — Uniform Schur-type size and decay bounds hold for the quantities in the Gaussian bills across all admissible steps, forests and placements for large x.

<a id="k-iii-4-117"></a>

- **K-III.4.117** [`oasis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Echo.lean#L191-L223) *(key result)* — Uniform signed exponent bounds hold on the genuine law including the blame term for all admissible data and large x.

<a id="k-iii-4-118"></a>

- **K-III.4.118** [`weighted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Weighted.lean#L104-L138) *(key result)* — A trace-priced weighted local Gaussian change has positive-definite mixed precision and an explicit exponential bound on its p-th moment.

<a id="k-iii-4-119"></a>

- **K-III.4.119** [`insert_letter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Insertion.lean#L120-L172) *(key result)* — A small signed local quadratic-affine insertion into a Gaussian density has finite p-th likelihood moment under an explicit smallness condition.

<a id="k-iii-4-120"></a>

- **K-III.4.120** [`pockets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Brume.lean#L144-L152) *(numbered result)* — For an injective family of enrolled keys, the tilt cost on a finite set of distinct keys is bounded, allowing untouched keys to be dropped.

<a id="k-iii-4-121"></a>

- **K-III.4.121** [`many`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Buoy.lean#L104-L152) *(numbered result)* — Trigger and detector cost on an enrollment of n real coordinates is bounded by an explicit polynomial in n with constant depending on L and k.

<a id="k-iii-4-122"></a>

- **K-III.4.122** [`same_law`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Arc.lean#L189-L253) *(key result)* — Terms with polynomial score bounds supported on a trigger set have expectation under the true sector law controlled uniformly by Gaussian-table data with a constant depending only on L and k.

<a id="k-iii-4-123"></a>

- **K-III.4.123** [`r4`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Ember.lean#L69-L111) *(numbered result)* — A fourth-moment style L1 bound for products of ratio insertions on a common marginal under a Gaussian table with bounded hit counts.

<a id="k-iii-4-124"></a>

- **K-III.4.124** [`painting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Rain.lean#L55-L68) *(key result)* — For any gauge, patch and teller with branches, there exists a paint such that the medium condition holds eventually for large x.

<a id="k-iii-4-125"></a>

- **K-III.4.125** [`same_purchase`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/Relative.lean#L72-L118) *(key result)* — For symmetric gapped covariance matrices with exponentially decaying inverse, localized to windows of large radius, the windowed matrix has uniform decay with constants independent of volume.

<a id="k-iii-4-126"></a>

- **K-III.4.126** [`before_paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Calendar.lean#L108-L124) *(key result)* — For any kernel choices there are constants such that cheap-stage budgets yield a horizon structure with the required suffices and sworn properties for all paid inputs.

<a id="k-iii-4-127"></a>

- **K-III.4.127** [`book`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Calendar.lean#L133-L138) *(key result)* — Under local ratio and outlet hypotheses, one can choose booths and a sufficiently late ordered delay schedule such that funding, ringing and annulus conditions hold for all later schedules.

<a id="k-iii-4-128"></a>

- **K-III.4.128** [`blocks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Consumer.lean#L167-L199) *(key result)* — Physical Gaussian Lp insertion estimates hold eventually with explicit positive constants for the actual correction pieces.

<a id="k-iii-4-129"></a>

- **K-III.4.129** [`purchase`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/Charges.lean#L151-L204) *(key result)* — For fixed patch, there exist constants such that for large x all admissible steps and flag-cell configurations satisfy the Ready bundle of Gram/resolvent window estimates, with constants independent of fields and volume.

<a id="k-iii-4-130"></a>

- **K-III.4.130** [`geared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L59-L66) *(main result)* — For simple G, kernel choices and budgets, one can choose widths, amplitudes and rates so that for all sheets and levels satisfying the purchases, full paths with prescribed costs exist (B70 production without external Rack premise).

<a id="k-iii-4-131"></a>

- **K-III.4.131** [`sailsV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Seaside.lean#L96-L154) *(main result)* — For a simple graph and kernel choices with branching, there exists a sheet with prescribed kernel and stage, with prices such that for all tariffs and scopes the paid view holds from some index on.

<a id="k-iii-4-132"></a>

- **K-III.4.132** [`advanced`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/Bias.lean#L193-L217) *(key result)* — At eligible cells, the translated Gaussian prices of the actual affine source are controlled by uniform constants depending only on the data, giving a readiness estimate.

<a id="k-iii-4-133"></a>

- **K-III.4.133** [`sources_read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/Bias.lean#L104-L133) *(key result)* — The actual affine source/bias cost in physical coordinates is bounded by C(temp x + l), uniformly in the step data for large x.

<a id="k-iii-4-134"></a>

- **K-III.4.134** [`color_pipe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L394-L435) *(key result)* — For simple G, all-period assembly yields constants and a path datum for the next scale with bounds, classical matching and records, from inherited data.

<a id="k-iii-4-135"></a>

- **K-III.4.135** [`endures`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Instruments.lean#L69-L86) *(key result)* — Given a concert and early choices, one can choose records with small epsilon so that for any menu and delays, later schedules satisfy the cadence and sustained conditions.

<a id="k-iii-4-136"></a>

- **K-III.4.136** [`boats`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Ride.lean#L62-L74) *(key result)* — For a patch with branching teller, there is a uniform constant such that for all large x every matching desk with calling and day hypotheses satisfies the joint trip bound.

<a id="k-iii-4-137"></a>

- **K-III.4.137** [`bands`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Band.lean#L141-L145) *(key result)* — For a branching patch and teller, in-band Gaussian insertion prices hold eventually with positive constants for each Lp exponent.

<a id="k-iii-4-138"></a>

- **K-III.4.138** [`ruese`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Expound.lean#L68-L77) *(key result)* — For any budget function, there exists a sheet with kernel K and stage, and nested thresholds producing delays and directed structures.

<a id="k-iii-4-139"></a>

- **K-III.4.139** [`post`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Reverse.lean#L64-L88) *(key result)* — For a given gauge, patch and teller, there exist constants such that for large x the comparison returns into the paid endpoint law uniformly over steps, tubes and fields.

<a id="k-iii-4-140"></a>

- **K-III.4.140** [`transition_cap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L92-L182) *(key result)* — For simple G, there exist constants so that whenever the horizon calculation holds, suitable parameters yield a coherent transition bound.

<a id="k-iii-4-141"></a>

- **K-III.4.141** [`timberT`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Retreat.lean#L44-L63) *(key result)* — There exist parameter sequences, programs and registers so that for all large indices the full sheltered package holds.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

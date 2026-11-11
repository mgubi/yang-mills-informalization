# III.14. The construction run: flat representations and the ultraviolet rate

*Part III — Ultraviolet construction (renormalization group).*

Selects the construction run used by the main theorem and describes its additional Gaussian-limit data.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/III-14.md) · [← Previous: III.13](III-13.md) · [Next: III.15 →](III-15.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

**Reading scope.** The final assembly uses the run, its penalty, pillars and funded bounds; it discards the attached-recipe conjunct. The Gaussian limit is an additional property of the selected run. See [VIII.1](VIII-1.md); this does not establish that its construction can be omitted.

<details>
<summary>Source inventory and conventions</summary>

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** [ConstructionRun](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean), [NativeComponentRecipe](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean), [Flat](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat). **Size:** 14,290 lines (2,509 declarations) in the source allocation.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

Throughout, $G$ is a compact matrix gauge group; “simple” means its real Lie algebra is simple and nonabelian. Level systems and full horizon sufficiency are those of III.1. A sheet fixes the kernel, stage profile and floors before block factors are chosen. Notation and norms are specified in §6.

**Proposition III.14.1 (construction run).** For simple $G$ and $b>0$, there exist a run $R$, a campaign $T$ and pillars $W$ for $(R,T)$, with penalty $b$, satisfying the full thirteen-clause funded condition of III.15 relative to $\Delta_{10}$, and carrying an attached native component recipe. The selection uses $Q(i)=i+2$ and support exponent $100$ at every stage.

Attachment means that there exist a sheet $s$, price map $q$, recipe $C$ of III.14.2 and floors $n\ge\max(n_s,E_C)$ such that $R$ uses $s$ with floors raised to $n$ and primary price map $P_{s,q}$; the recipe is realized on its own levels and horizon. Here $n_s$ is the sheet's floor, $E_C$ combines the three component floors and two numerical floors, and $B_C$ is the maximum of the two post-length bills. Set $U_C(r,j)=\rho_C(r,j)^{-1}$ for the positive recipe widths $\rho_C$, and $V_C(\ell,r,j)=B_C(\ell,j)$. For both request families $F(r,j)=U_C(r,j)$ and $F(r,j)=V_C(\ell,r,j)$, every fixed $r$ admits $m_0$ such that $|F(r,j)|\le1+\log\log\hat\beta_m$ for $m\ge m_0$, $j\le J_{m+1}$; also $B_C(\ell,J_{m+1})\le\hat\beta_m$ for every $m$. Realization includes III.14.3 with $e=0$.

*Status:* theorem. *Lean:* [constructionRun](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28), [Funded](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L60-L73), [Attached](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ActualRunNativeComponentRecipe.lean#L56-L69).

**Proposition III.14.2 (recipe).** For simple $G$ and every sheet $s$, there exist a secondary price map $X$ and floors $E^\flat,E^{\rm sw},E^{\rm du}:\mathbb N\to\mathbb N$. For every level system with the kernel and profile of $s$:

- If $L_i\ge E^\flat(J_{i+1})$ for all $i$, every entry stage $e$ satisfying the delay condition in III.14.3 admits its conclusions with this $X$, simultaneously for every sufficient horizon.
- If $L_i\ge E^{\rm sw}(J_{i+1})$ for all $i$, every horizon sufficient for some price map has, for every $i\le N$, every torus and all colour-valued link fields $A,B$, colour-summed bilinear form $\sum_a\langle A^a,\mathcal K^{\mathbb T}_{N,i}B^a\rangle$ invariant under simultaneous pullback by signed axis permutations fixing the origin. Reversing link orientation reverses the pullback sign.
- If $L_i\ge E^{\rm du}(J_{i+1})$ for all $i$, then for every such horizon, every $m<N$ and every level-system torus, the canonical free background map of III.3 satisfies III.14.5 for the fine/coarse metrics $(M^{\mathbb T_f}_{N,m+1},M^{\mathbb T_c}_{N,m})$, hence minimizes the actual Gaussian variational problem.

*Status:* theorem. *Lean:* [Choice](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L29-L51), [available](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L54-L59).

**Proposition III.14.3 (Gaussian ultraviolet rate).** For simple $G$ and every sheet $s$, there exist a price map $X$ and $E:\mathbb N\to\mathbb N$ with this property: for every level system with the kernel and profile of $s$ satisfying $L_i\ge E(J_{i+1})$ for all $i$, and every $e\in\mathbb N$ satisfying $\Omega^X_{J_i}\le\log\hat\beta_i$ for $i\ge e$, there are link kernels $F_i$ ($i\ge e$) and constants $A,B\ge0$ with the following properties. For every horizon $H$ of that system sufficient for some price map, every $k\in\mathbb N$, $i\ge e$, $N\ge i$ and links $u,v$,
$$
\lVert F_i\rVert_{w_{J_i}}\le B\Lambda_{k,i},\qquad
\mathcal O^H_{n,i}(u,v)\longrightarrow F_i(u,v),\qquad
\lVert\mathcal O^H_{N,i}-F_i\rVert_{w_{J_i}}\le A\Lambda_{k,i}(a_N/a_i)^{1/4}.
$$
Here $n\to\infty$, $w_j=\min(1,\alpha^X_j,\alpha^X_{j+1})$, and $A,B\ge0$ depend only on $G$ and the lattice, independently of $s$, the levels, $e$ and $H$.

*Status:* theorem, order zero. *Lean:* [Flat.entrance_gate](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Entrance.lean#L28-L50).

**Proposition III.14.4 (abstract flat representations).** Fix a price map $P$, $\theta>0$, positive widths $w_j$, $A_0\ge0$, $d_0\in\mathbb N$, and a family $(\mathcal L_x,H_x,r_x,N_x,n_x,k_x,Z_x)_{x\in X}$ with $r_x\le N_x\le n_x$, $k_x\in\mathbb N$, $Z_x\ge0$. Put $\Lambda_x(i)=2+Z_x+|s_i-s_{k_x}|$, using each system's scales. Assume each $H_x$ is sufficient for $P$, its plaquette transfers at cutoff $N_x$ and $r_x\le i<N_x$ are canonical free kernels, and $w_j\le\alpha_j$ for all $j$. On those stage ranges assume
$$
w_{J_i}\le\min(1,\alpha_{J_i},\alpha_{J_{i+1}}),\quad
2w_{J_i}\le L_iw_{J_{i+1}},\quad
q_i(w_{J_{i+1}})\le L_i^{-\theta},
$$
and assume $2|\mathcal F|\Omega_{J_{N_x}}\le A_0\Lambda_x(N_x)^{d_0}$ for every $x$. Then, simultaneously for all $x$ and $r_x\le i\le N_x$, there are flat representatives of $\mathcal K_{n_x,i}-\mathcal K_{N_x,i}$ of width $w_{J_i}$ and cost $A\Lambda_x(i)^{d_0}(a_{N_x}/a_i)^{\min(1,\theta/2)}$, where $A\ge0$ depends only on $A_0,d_0,\theta$.

*Status:* theorem. *Lean:* [Flat.World.overlap](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L165-L174).

**Proposition III.14.5 (Schur identity and flat step).** Fix fine/coarse tori with side ratio $L$, block average $Q$ and $b>0$. The background-field relations are
$$\mathcal K(M)W=Q^\top\mathcal K(M'),\qquad QW=1-b^{-1}\mathcal K(M').$$
For symmetric positive semidefinite $M$ and every coarse field $A'$, they make $WA'$ a minimizer of $\langle A,\mathcal K(M)A\rangle+b|A'-QA|^2$, with minimum $\langle A',\mathcal K(M')A'\rangle$. If two triples $(W_j;M_j,M'_j)$ satisfy these relations and $M_2,M'_2$ are symmetric, then
$$\mathcal K(M'_2)-\mathcal K(M'_1)=W_2^\top(\mathcal K(M_2)-\mathcal K(M_1))W_1.$$
Let $B$ be a neutral translation-invariant plaquette representative of the fine difference, with $\lVert B\rVert^{\rm pl}_\tau\le r$, $\tau>0$, $r\ge0$. Suppose $T,U$ are order-two strip-bounded curvature transports in width $\omega$, with constants $q,p\ge0$, scaled covariance $T(x+Lv,y+v)=T(x,y)$ and likewise for $U$. Require their periodizations $C_2,C_1$ to satisfy $dW_2=C_2d$, $dW_1=C_1d$, and $\sum_zU((x,\varphi),(z,\psi))$ to be independent of $x$ for each orientation pair. If $0\le\sigma\le\omega$ and $2\sigma\le L\tau$, then
$$B'(y,z)=\sum_{x,w}T(x,y)B(x,w)U(w,z),\qquad \lVert B'\rVert^{\rm pl}_\sigma\le\frac{2|\mathcal F|^2qp}{\tau L}r.$$
It is neutral, translation invariant and represents the coarse difference.

*Status:* theorem. *Lean:* [Flat.poised](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/FlatStep.lean#L24-L38), [Flat.toward](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/FlatStep.lean#L50-L78).

**Proposition III.14.6 (recursion rate).** For each $x\in X$, fix scales with $L_i\ge3$, stages $r_x\le i\le t_x$, reporting scale $k_x\in\mathbb N$, and $\Lambda_x(i)=2+Z_x+|s_i-s_{k_x}|$, $Z_x\ge0$. Fix uniform $\theta,c_0>0$, $A_0\ge0$, $d_0\in\mathbb N$. If $f_x,g_x\ge0$ satisfy $f_x(i)\le L_i^{-\theta}f_x(i+1)+g_x(i)$ below $t_x$, $f_x(t_x)\le g_x(t_x)$, and $g_x(i)\le A_0\Lambda_x(i)^{d_0}(a_{t_x}/a_i)^{c_0}$ throughout, then
$$f_x(i)\le A\Lambda_x(i)^{d_0}(a_{t_x}/a_i)^\mu,\qquad \mu=\min(c_0,\theta/2).$$
One may take $A=A_0(K+1)^{d_0}/(1-3^{-\theta'/2})$, $\theta'=\theta-\mu$, $K=2(d_0+1)/\theta'$.

*Status:* theorem. *Lean:* [Rate.Stair.fade_solve](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Ascent.lean#L118-L134).

<a id="unit-inputs"></a>

## 2. What it uses

- I.1: group data and [one-loop slope](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184) $s_G$; III.1: levels, [sufficiency](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L132-L139) and background-field relations.
- III.2: [selection](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L99-L114) with nonempty demands and countable numerical requests; III.3: [sufficient free horizons](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L134-L145), canonical transfers and point-group invariance.
- III.8: [weighted kernel bounds](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Atlas.lean#L37-L42); III.12: [runs](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48), pillars and primary price maps; III.15: full [funded condition](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L60-L73).
- Gaussian block-spin minimization (Balaban; Gawędzki–Kupiainen), exponentially weighted $\ell^1$ composition, discrete Grönwall, dominated and monotone convergence.

<a id="unit-strategy"></a>

## 3. Strategy

Compare cutoffs at their common finest stage, where kinetic normalization makes the metric difference neutral. Transport this difference by the mixed Schur identity; neutrality gains $L^{-1}$, floors give contraction $L^{-1/2}$, and the recursion estimate gives exponent $1/4$. A shadow with altered clip parameters supplies free data; uniqueness transfers its Gaussian forms to every sufficient horizon.

Choose recipe and floors before block factors, then raise coupling thresholds to meet the post-length bill and countable requests. III.2 retains these conditions on the selected funded run. VIII.1 uses its penalty, pillars and funded property, discarding the attached-recipe conjunct.

<a id="unit-steps"></a>

## 4. Steps

1. **Initialize and propagate.** The metric difference at stage $N$ has cost $2|\mathcal F|\Omega_{J_N}$ and zero orientation-wise row sums. The Schur identity transports it without inverting the curvature form; subtracting the transport kernel at the first base point gains $L^{-1}$, using half the input exponential weight. [Flat.toward](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/FlatStep.lean#L50-L78).
2. **Obtain the rate.** Floors ensure compatible widths and $q_i(w_{J_{i+1}})\le L_i^{-1/2}$; downward induction and III.14.6 absorb age growth. [spacing_choice](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L64-L92).
3. **Take the limit.** Diverging-torus periodizations identify link kernels; composing with $d^\top,d$ gives the pairwise cutoff estimate. Its Cauchy limit preserves the weighted bounds. [supplies](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L107-L164).
4. **Transfer from the shadow.** Downward Schur induction from the bare terminal form proves equality of Gaussian forms for sufficient horizons on systems differing only in clip parameters. This transfers the rate, symmetries and free background identities. [same_path](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Agreement.lean#L23-L36).
5. **Realize and select.** The combined floor and bill enforce the recipe with $e=0$ on the run's own horizon. Apply III.2 with reciprocal-width requests and $V_C(\ell,r,j)=B_C(\ell,j)$. [on_run](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ActualRunNativeComponentRecipe.lean#L25-L54).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

Gauge zero modes obstruct curvature-form inversion. Orientation-wise neutrality supplies the gain, but preserving it requires constant row sums, beyond scaled covariance. Floors precede block factors; bills follow them. The rate concerns only the Gaussian link kernel: it gives no rate for the undetermined part of the plaquette metric, positive-order coefficients or source kernels. The formal recipe does not identify physical marked observables.

<a id="unit-notation"></a>

## 6. Notation

$L_i=\ell_{J_{i+1}}\ge3$ are odd block factors; $a_0=1$, $a_{i+1}=a_i/L_i$, $s_i=\log(1/a_i)$; $J_i\le J_{i+1}\le J_i+1$ are smoothing indices. Cutoff $N$ has spacing $a_N$. Put $\hat\beta_i=\bar\beta+s_Gs_i>1$, $\Lambda_{k,i}=5+\log\hat\beta_k+|s_i-s_k|$. A price map is $(\alpha_j,\Omega_j,\eta_j)$: positive widths, upper bounds, positive coercivity bounds. A horizon supplies metric kernels $M^\infty_{N,i}$ and transfer data; $M^{\mathbb T}_{N,i}$ is the periodization. The lattice exterior derivative is $d$; $\mathcal K(M)=d^\top Md$, $\mathcal O=d^\top M^\infty d$, without a factor $1/2$. The local-estimate package $\Delta_{10}$ is [garment10](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean#L63).

Write $x(u)$ for a base point. For link kernels, $\lVert F\rVert_\sigma=\sup_u\sup_\phi\sum_{y\in\mathbb Z^4}|F(u,(y,\phi))|e^{\sigma|x(u)-y|_1}$, with $\phi$ a link orientation; for plaquettes, $\lVert B\rVert^{\rm pl}_\sigma=\sup_u\sum_{v\in\mathbb Z^4\times\mathcal F}|B(u,v)|e^{\sigma|x(u)-x(v)|_1}$, summing all target orientations $\mathcal F$. A flat representative is translation invariant, has zero row sums in each target orientation, and on every level-system torus periodizes to the quadratic-form difference after applying $d^\top(\cdot)d$; cost bounds this norm. In III.14.4, $q_i(u)=2|\mathcal F|^2h_i^2/(uL_i)$, $h_i=e^4|\mathcal F|^2\Omega_{J_{i+1}}^2\Omega_{J_i}$.

<a id="unit-limitations"></a>

## 7. What remains unexplained

The scale and extraction choices are constructed in III.2; the meanings and proofs of the full funded clauses belong to III.15 and later units. The free-kernel existence proof and lattice kernel estimates are used without explanation here. The auxiliary curvature-lift, marked-kernel and formal Ward estimates still require their full admissibility conditions and proofs. Removing the recipe demand would not identify the resulting run with this selected run.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/III-14.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [III.8](III-8.md), [I.1](I-1.md), [III.1](III-1.md), [III.7](III-7.md), [III.16](III-16.md), [III.6](III-6.md), [III.10](III-10.md), [III.15](III-15.md), [II.1](II-1.md), [III.2](III-2.md), [III.3](III-3.md), [III.9](III-9.md), [III.5](III-5.md), [III.12](III-12.md), [VIII.1](VIII-1.md).

**Referenced by:** none above the threshold.

## Lean source

**Source allocation:** 14,290 attributed lines; 2,509 line-counted declarations; 3,229 assigned declaration names. Of the assigned names, 3,099 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- proof of [`harbor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Sideshow/Orbit.lean#L81-L190) and the results it chains to — 7,716 lines.
- proof of [`constructionRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28) — 4,831 lines.
- work package [`YM/RG08/Line/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Line) — 371 lines.
- work package [`YM/RG08/Necks/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks) — 316 lines.
- work package [`YM/RG08/Atlas/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Atlas) — 110 lines.
- work package [`YM/RG08/Rows/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rows) — 110 lines.
- work package [`YM/RG08/Cell/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Cell) — 99 lines.
- work package [`YM/RG08/Cairn/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Cairn) — 76 lines.
- work package [`YM/RG08/Prism/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Prism) — 75 lines.
- work package [`YM/RG08/Quarry/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Quarry) — 66 lines.
- work package [`YM/RG08/Lagoon/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Lagoon) — 64 lines.
- work package [`YM/RG08/Hatch/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Hatch) — 58 lines.
- work package [`YM/RG08/Trill/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Trill) — 54 lines.
- work package [`YM/RG08/Clef/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Clef) — 53 lines.
- work package [`YM/RG08/Weald/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Weald) — 50 lines.
- work package [`YM/RG08/Trickle/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Trickle) — 41 lines.
- work package [`YM/RG08/Tack/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Tack) — 39 lines.
- work package [`YM/RG08/Gallery/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gallery) — 32 lines.
- work package [`YM/RG08/Atrium/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Atrium) — 27 lines.
- work package [`YM/RG08/Sideshow/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Sideshow) — 27 lines.
- work package [`YM/RG08/Nacre/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Nacre) — 20 lines.
- work package [`YM/RG08/Billet/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Billet) — 18 lines.
- work package [`YM/RG08/Aggregate/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Aggregate) — 8 lines.
- work package [`YM/RG08/Slate/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Slate) — 8 lines.
- work package [`YM/RG08/Spar/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Spar) — 6 lines.
- work package [`YM/RG08/Aura/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Aura) — 5 lines.
- work package [`YM/RG08/Yurt/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Yurt) — 5 lines.
- work package [`YM/RG08/Flint/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flint) — 4 lines.
- work package [`YM/RG08/Fold/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Fold) — 1 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`Bid.Sworn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55)
- [`Campaign.Pillars`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Vendee.lean#L22-L27)
- [`raging`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Fiscal.lean#L18)
- [`fundedRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L30-L31)
- [`ActualRunNativeComponentRecipe.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ActualRunNativeComponentRecipe.lean)
- [`postnumeric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ActualRunNativeComponentRecipe.lean#L21-L23)
- [`of_preselection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ActualRunNativeComponentRecipe.lean#L71-L77)
- [`Realized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L117-L128)
- [`floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L61-L65)
- [`numeric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L71-L72)
- [`post`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L75-L79)
- [`PostnumericPreselection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L31-L46)
- [`destination`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L74)
- [`Credit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L87-L88)
- [`continuum_with_position_tests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L28-L48)
- [`Horizon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L119-L121)
- [`MapPrices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L123-L128)
- [`Floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68)
- [`Precision.K`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L68-L69)
- [`Inputs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L76-L79)
- [`action`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L93-L103)
- [`RowCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Atlas.lean#L28-L29)
- [`response`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Coin.lean#L40)
- [`carrier`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Inherit.lean#L24)
- [`inherited_precision`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Inherit.lean#L32-L34)
- [`allotment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Keys.lean#L14)
- [`fine_share`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Keys.lean#L15)
- [`neutral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/NullPair.lean#L9)
- [`Folded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Stacks.lean#L14)
- [`Sheet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35)
- [`R2IGoals.fromFunded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L150-L167)
- [`selectRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L75-L84)
- [`EventuallyPaid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Clock.lean#L36-L38)
- [`Levels`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131-L134)
- [`hatBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79)
- [`Aura.licensed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Aura/Publisher.lean#L24-L26)
- [`Aura.dual_support`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Aura/Publisher.lean#L28-L52)
- [`Cast.assured`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Cast/Profile.lean#L16-L34)
- [`same_terminal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Agreement.lean#L19-L21)
- [`same_output`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Agreement.lean#L38-L43)
- [`resolve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Curl.lean#L101-L115)
- [`writ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Curl.lean#L15-L16)
- [`output`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Curl.lean#L18)
- [`sumToken`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Curl.lean#L66)
- [`output_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Curl.lean#L89-L90)
- [`Flat.Quorum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Entrance.lean#L13-L21)
- [`Flat.curve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L14)
- [`Lambda'`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L17)
- [`Flat.Delay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L19)
- [`before`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L21-L23)
- [`entrance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L25)
- [`work items`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L29)
- [`universeClock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L38-L62)
- [`Mesh.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean)
- [`Flat.clock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L30)
- [`Spacing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L32-L41)
- [`berth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L45-L54)
- [`Spacing.funded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L56-L68)
- [`Flat.meshed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L75-L101)
- [`rearrange`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Shadow.lean#L21-L23)
- [`shadow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Shadow.lean#L30-L50)
- [`same_shadow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Shadow.lean#L52-L75)
- [`World.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean)
- [`World.Funding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L101-L110)
- [`World.Provides`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L112-L115)
- [`header`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L22)
- [`quote`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L23)
- [`topTab`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L24)
- [`Flat.FlatRep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L36-L40)
- [`World`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L82-L91)
- [`Sigil`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/FlatStep.lean#L43-L44)
- [`solvent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Limit.lean#L51-L59)
- [`neutralCoin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Lines.lean#L84-L85)
- [`turn_class`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Present.lean#L52-L78)
- [`town_hall`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Pushed.lean#L116-L122)
- [`travels`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Swing.lean#L75)
- [`invariant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Swing.lean#L77-L104)
- [`town`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Torus.lean#L18)
- [`slope`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Ascent.lean#L26-L54)
- [`poly_solve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Ascent.lean#L56-L116)
- [`Fade.of_top`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Shadows.lean#L83-L87)
- [`Fade.cap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Shadows.lean#L90-L97)
- [`Fade`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Stair.lean#L108)
- [`Stair`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Stair.lean#L24-L30)
- [`drop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Stair.lean#L66)
- [`drop_length`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Stair.lean#L79-L82)
- [`rail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Redo/Scaling.lean#L46)
- [`receipt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Redo/Scaling.lean#L65)
- [`after`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Redo/Scaling.lean#L67)
- [`Yamen.stamp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Yamen/Penny.lean#L48)
- [`Yamen.hatch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Yamen/Penny.lean#L56-L64)
- [`Yamen.need`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Yamen/Pledge.lean#L36)
- [`YM/RG12/Burst/Wardrobe.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean)
- [`Decal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean#L18-L20)
- [`Attic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean#L30-L34)
- [`annex`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean#L36-L61)
- [`YM/RG08/Packets/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets)
- [`YM/RG08/Rate/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate)
- [`YM/RG08/Redo/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Redo)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-iii-14-1"></a>

- **K-III.14.1** [`jointProjection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Line/Solid.lean#L21-L38) *(numbered result)* — Under stated algebraic hypotheses on inverse, gauge kernel and section, the triangular projection of the joint inverse recovers x from B x on the tree slice.

<a id="k-iii-14-2"></a>

- **K-III.14.2** [`septet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flint/Score.lean#L74-L79) *(numbered result)* — For symmetric multilinear coefficient families, a bound on all-direction evaluations of the total polynomial by W·B yields a bound on any single coefficient by a constant times B.

<a id="k-iii-14-3"></a>

- **K-III.14.3** [`stood`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Saloon.lean#L94-L96) *(numbered result)* — Conditioning a centered Gaussian bracket by substituting means on integrated coordinates equals the prescribed finite-sum expression on the survivors.

<a id="k-iii-14-4"></a>

- **K-III.14.4** [`arm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/QUARTIC_MATCH/Cells/LiftOne.lean#L198-L206) *(key result)* — Any priced array of given rank can be lifted in one argument to rank plus one with controlled width and constants, preserving other ranks and closures.

<a id="k-iii-14-5"></a>

- **K-III.14.5** [`multi`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/QUARTIC_MATCH/Cells/Resolve.lean#L158-L178) *(key result)* — A priced array with rank-1 closed slots in all legs can be lifted to a rank-2 array with comparable pricing, with no harmonic exception.

<a id="k-iii-14-6"></a>

- **K-III.14.6** [`quarry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Yurt/Cairns.lean#L46-L69) *(numbered result)* — Uniform constant B bounds deterministic cancellation errors for odd block sizes under the tutor hypotheses.

<a id="k-iii-14-7"></a>

- **K-III.14.7** [`push_null`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Lines.lean#L87-L113) *(key result)* — Pushing a neutral folded packet through atlas substitutions yields a folded packet with a smaller radius and neutral-coin constant multiplier.

<a id="k-iii-14-8"></a>

- **K-III.14.8** [`toward`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/FlatStep.lean#L50-L78) *(key result)* — A precision-difference identity for the flat step shows how diagonal Towers data and kernel matches propagate folded bounds to the next step without Fourier Lipschitz at the pole.

<a id="k-iii-14-9"></a>

- **K-III.14.9** [`fade_solve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Ascent.lean#L118-L134) *(key result)* — A nonnegative array satisfying a fine-to-coarse recursive inequality with a contracting weight and a decaying forcing term itself decays, giving a uniform majorant.

<a id="k-iii-14-10"></a>

- **K-III.14.10** [`overlap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L165-L174) *(key result)* — Under funding, flat representations exist at all stages with cost A·age^d·(a_fine/a_i)^c, i.e. a geometric UV rate.

<a id="k-iii-14-11"></a>

- **K-III.14.11** [`bottle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Time.lean#L54-L81) *(key result)* — For a near-identity moving coordinate change, the bracket of the Jacobian-weighted density has vanishing component along the spare variable, comparing volume via a velocity path.

<a id="k-iii-14-12"></a>

- **K-III.14.12** [`still`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Glass.lean#L98-L111) *(key result)* — With a spare variable not used in the data, the Gaussian evolution under a near-identity nonlinear change of coordinates equals the bracket of the Jacobian-corrected density.

<a id="k-iii-14-13"></a>

- **K-III.14.13** [`absorbed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Alight.lean#L86-L123) *(key result)* — Without any spare variable, under a near-identity nonlinear coordinate change, evolving by the heat kernel equals the formal Gaussian bracket of the Jacobian-corrected density, in centered coordinates.

<a id="k-iii-14-14"></a>

- **K-III.14.14** [`stirred`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Wisp/Chord.lean#L48-L76) *(numbered result)* — A formal Ward identity holds for the centered joint polynomial, with scalar and vacuum terms retained, for a single mark.

<a id="k-iii-14-15"></a>

- **K-III.14.15** [`line_legs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rudder/FinalLegs.lean#L49-L74) *(key result)* — Translation-invariant cell coefficients of arity at least three admit a literal linear-cost lift to the cover with weaker width, reusable on differences.

<a id="k-iii-14-16"></a>

- **K-III.14.16** [`doubleLift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rudder/Loop/Empty.lean#L81-L107) *(key result)* — Rank-two translation-invariant cells with vanishing first moment admit a linear-cost lift with weaker width.

<a id="k-iii-14-17"></a>

- **K-III.14.17** [`arc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rudder/Sym/Oaks.lean#L65-L81) *(key result)* — For symmetric (adjoint-graded) coefficient spaces, a curvature-coefficient lift exists with uniform width loss, linear cost and Lipschitz control on differences.

<a id="k-iii-14-18"></a>

- **K-III.14.18** [`warehouse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Spar/Overhead.lean#L39-L49) *(key result)* — For symmetric graded spaces there exist fixed θ and K such that the lift is rigged: the same θ may be reused at every stage.

<a id="k-iii-14-19"></a>

- **K-III.14.19** [`impress`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Refresh.lean#L87-L106) *(key result)* — Under a finite cover transformation of sincere ledgers, the transformed quadratic plus connected part equals the original.

<a id="k-iii-14-20"></a>

- **K-III.14.20** [`notes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Trickle/Airs.lean#L75-L97) *(key result)* — Symbol clocks for the time PDE flows are computed directly at all degrees as a Note.

<a id="k-iii-14-21"></a>

- **K-III.14.21** [`report`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Trickle/Fleet.lean#L59-L61) *(numbered result)* — One step of the finite prescription transforms the marker as a Markov column identity, giving a recursion formula.

<a id="k-iii-14-22"></a>

- **K-III.14.22** [`badges`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Halo/Charge.lean#L39-L52) *(numbered result)* — Scaling identity for the sonic functional under filtered perturbations, giving homogeneity at threshold.

<a id="k-iii-14-23"></a>

- **K-III.14.23** [`lunch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Yurt/Ferry.lean#L15-L59) *(numbered result)* — Pointwise funded cell estimate: a constant D bounds the cell expression in terms of inputs with null consumed.

<a id="k-iii-14-24"></a>

- **K-III.14.24** [`supplies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L107-L164) *(key result)* — The row UV convergence holds in the same width, with no count-dependent loss, giving every fixed position-moment under finite width discount.

<a id="k-iii-14-25"></a>

- **K-III.14.25** [`summer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Weald/Growth.lean#L95-L98) *(numbered result)* — Ward identity at finite regulator for analytic precursors with external and gauge parameters linearized around the trivial orbit.

<a id="k-iii-14-26"></a>

- **K-III.14.26** [`welcomed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Weald/Pitch.lean#L80-L98) *(key result)* — The formal Ward receipt for the cover before normalization holds, with normalized transport produced via logs.

<a id="k-iii-14-27"></a>

- **K-III.14.27** [`holy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Trill/Cast.lean#L78-L93) *(numbered result)* — The multilinear operator is exactly invariant under the group action on polynomial-growth coefficients.

<a id="k-iii-14-28"></a>

- **K-III.14.28** [`hymn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Trill/Snaps.lean#L59-L84) *(numbered result)* — A uniform constant bounds first-grade test quantities in terms of the sequence bounds, uniformly in the call data.

<a id="k-iii-14-29"></a>

- **K-III.14.29** [`spark`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flint/Hunger.lean#L77-L91) *(key result)* — A Ward estimate replacing any list of growing probe directions with only lower-order costs, with a constant announced before block length.

<a id="k-iii-14-30"></a>

- **K-III.14.30** [`spark_band`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flint/Hero.lean#L24-L54) *(numbered result)* — A multilinear product bound with a single derivative insertion and weight restoration holds with a uniform constant for lists of growing probe directions.

<a id="k-iii-14-31"></a>

- **K-III.14.31** [`constructionRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28) *(main result)* — For any simple gauge group and positive penalty there exists a Wilson run with campaign and pillars with the specified funded and native-recipe properties.

<a id="k-iii-14-32"></a>

- **K-III.14.32** [`harbor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Sideshow/Orbit.lean#L81-L190) *(key result)* — A one-step precise lower-triangular estimate: for admissible parameters there are constants and a growth function such that the transit bound holds for bouquets of kernels in the race.

<a id="k-iii-14-33"></a>

- **K-III.14.33** [`podium`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Trill/Swift.lean#L40-L96) *(key result)* — A single-rank receipt for certified primary projections on deterministic legs, giving a bound including the exact leading term at leading weight.

<a id="k-iii-14-34"></a>

- **K-III.14.34** [`self`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Weald/Fields.lean#L85-L103) *(key result)* — The exact pre-reset gauge recursion for each cover kernel preserves the admissibility and comb-type properties of the carrier family of grains.

<a id="k-iii-14-35"></a>

- **K-III.14.35** [`entrance_gate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Entrance.lean#L28-L50) *(key result)* — For simple gauge group and kernel choices, the flat supply admits precision receipts: explicit kernels and constants giving a quorum estimate for admissible levels beyond a length threshold.

<a id="k-iii-14-36"></a>

- **K-III.14.36** [`baton`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Halo/Kumi.lean#L63-L106) *(key result)* — Polynomial diagonal engineering before whole-graph recursion: positive-order output is bounded by fixed lower terms plus input times a power of L, with exact principal propagation when B=0.

<a id="k-iii-14-37"></a>

- **K-III.14.37** [`available`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L54-L59) *(key result)* — For a simple gauge group and a given scale sheet, a choice of native RG/lattice components exists.

<a id="k-iii-14-38"></a>

- **K-III.14.38** [`preheat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Line/Recipe.lean#L60-L83) *(key result)* — The flat Gaussian line inverse in cell coordinates has a pre-block strip bound and post-block cost uniformly across compatible sides, periods and cutoffs.

<a id="k-iii-14-39"></a>

- **K-III.14.39** [`slushy_uniform`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Prior.lean#L61-L95) *(key result)* — For given parameters there is a single function J controlling, uniformly over all gauge/patch data, a comparison of two configurations whose components agree within budget for the relevant ranks.

<a id="k-iii-14-40"></a>

- **K-III.14.40** [`transcribe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Line/Complex.lean#L108-L138) *(numbered result)* — A strip bound for the completed matrix on harmonic modes gives a real position-space inverse with polynomial norm cost in L.

<a id="k-iii-14-41"></a>

- **K-III.14.41** [`Lobby`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Lagoon/Hull.lean#L56-L68) *(numbered result)* — Step normalization and coefficient data for the cover kernels satisfy an exact gauge recursion.

<a id="k-iii-14-42"></a>

- **K-III.14.42** [`rooted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Wisp/Carry.lean#L69-L104) *(numbered result)* — If the rail transform shifts variables at scale g before the chart, a compatibility identity of marked block functionals transfers between two grain families.

<a id="k-iii-14-43"></a>

- **K-III.14.43** [`realize`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L132-L182) *(numbered result)* — Pre-length floors and a paid post-length bill suffice to realize the native component recipe on a given clock.

<a id="k-iii-14-44"></a>

- **K-III.14.44** [`conquer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Lob.lean#L32-L124) *(numbered result)* — A fully marked RG step yields a graded difference bound for two kernels with constants independent of the scale.

<a id="k-iii-14-45"></a>

- **K-III.14.45** [`drive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Tides.lean#L45-L88) *(numbered result)* — Along deterministic legs, the graded kernel entries satisfy a driven bound with controlled constants.

<a id="k-iii-14-46"></a>

- **K-III.14.46** [`DocketBill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Elect.lean#L78-L140) *(numbered result)* — Under novice-parameter hypotheses there exist constants and growth function such that differences of two graded kernel families satisfy a docket bound at each rank.

<a id="k-iii-14-47"></a>

- **K-III.14.47** [`blossom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Atlas/Furnace.lean#L32-L51) *(key result)* — If two jets of fields agree to the relevant order on the penalty germ and are related by a gauge transformation, their block-integral germs coincide.

<a id="k-iii-14-48"></a>

- **K-III.14.48** [`switch_rep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Aggregate/Voice.lean#L84-L94) *(key result)* — Rescaled evaluations of a gauge-invariant packet coincide for two representatives of a field whose lattice representations differ by a gauge transformation and a symbol shift, up to finite order.

<a id="k-iii-14-49"></a>

- **K-III.14.49** [`hatch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Carrel/Works.lean#L43-L52) *(key result)* — Completed unmarked packets at all ranks have their positive rescaled evaluations compared, with a stated identification of the completion.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

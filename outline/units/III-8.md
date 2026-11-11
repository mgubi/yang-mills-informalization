# III.8. Connected activities and backward dependence cones

*Part III — Ultraviolet construction (renormalization group).*

Explains connected activity expansions and the regions of earlier fields on which an observable depends.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/III-8.md) · [← Previous: III.7](III-7.md) · [Next: III.9 →](III-9.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** [`YM/RG08/Steam/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam), [`YM/RG08/Forms/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms), [`YM/RG08/Skiff/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff), [`YM/RG08/Jetty/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty), [`YM/Push/GRID_APPROXIMATION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION). **Size:** 4,147 lines in the source allocation.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

### Part A

Let $I$ be any set, $d$ a pseudometric, $\sigma\ge0$. Rank-$n$ tensors are real functions on $I^n$ with ordered slots; $\mathrm{diam}_d(x)$ is the largest pairwise distance, zero for an empty tuple. Use
$$\|F\|_\sigma=\max_i\sup_z\sum_{x:x_i=z}|F(x)|e^{\sigma\mathrm{diam}_d(x)},\qquad [\Gamma]_\sigma=\max\left(\sup_u\sum_v|\Gamma(u,v)|e^{\sigma d(u,v)},\sup_v\sum_u|\Gamma(u,v)|e^{\sigma d(u,v)}\right).$$
Empty maxima and suprema are zero, including rank-zero tensor norms. Propagators need not be symmetric. A pair is $(B,\delta)$-controlled if both norms are at most $B$ and its difference norm is at most $B\delta$. A polynomial majorant satisfies $0\le P(x)\le Cx^q$ for $x\ge1$, for some $C\ge0$, $q\in\mathbb N$.

A formal potential $V=(V_{e,n})$ is eligible if $V_{0,n}=0$ and nonzero coefficients satisfy $n\le e+2$, $e+n$ even. Let $\Delta_\Gamma$ and $\star_\Gamma$ contract and join slots, averaging over output permutations:
$$\Delta_\Gamma H(x)=\mathrm{Sym}\sum_{u,v}\Gamma(u,v)H(u,v,x),\qquad(H\star_\Gamma G)(x,y)=\mathrm{Sym}\sum_{u,v}H(u,x)\Gamma(u,v)G(v,y).$$
Define $V^{(0)}=V$ and
$$V^{(j+1)}_{e,n}=\frac1{j+1}\left[\binom{n+2}2\Delta_\Gamma V^{(j)}_{e,n+2}+\sum_{c=0}^n\sum_{i=0}^j\sum_{a=0}^e\frac{(c+1)(n-c+1)}2 V^{(i)}_{a,c+1}\star_\Gamma V^{(j-i)}_{e-a,n-c+1}\right].$$

**Proposition III.8.1.** Fix $j,e,n\in\mathbb N$. Put
$$T_j(e,n)=\{(a,r):1\le a<e,\ 1\le r\le a+2\}\cup\{(e,r):1\le e,\ n<r\le e+2\},$$
adding $(e,n)$ if $j=0$, $e\ge1$, $1\le n\le e+2$. There is a polynomial majorant $P$, depending only on $(j,e,n)$, such that for all $W\ge1$, $\delta\ge0$, eligible $V,V'$ and propagators $\Gamma,\Gamma'$, control $(W,\delta)$ of the propagators and coefficient pairs in $T_j(e,n)$ implies control $(P(W),\delta)$ of the output pair $V^{(j)}_{e,n}$. The majorant is uniform in $I,d,\sigma,\delta$. At $n=0$ this is vacuous.
*Status:* theorem. *Lean:* [`navigation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L34-L83).

**Proposition III.8.2.** For every eligible $V$ and arbitrary $\Gamma$, all $V^{(j)}$ are eligible, nonzero coefficients satisfy $n+2j\le3e$, and positive-$j$ outputs are symmetric. For every real $t$,
$$\mathcal E_t(V)_{e,n}=\sum_{j=0}^{3e}t^jV^{(j)}_{e,n}=V_{e,n}+\mathcal R_t(V)_{e,n}.$$
Here $\mathcal R_t$ sums $j\ge1$, and $\mathcal E_t(V)$ is eligible. The series vanishes for $n>3e$; otherwise its degree is at most $\lfloor(3e-n)/2\rfloor$.
*Status:* theorem. *Lean:* [`preserves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L50-L64), [`live`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L66-L70), [`coal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L65-L75).

**Proposition III.8.3.** Let $\mathcal S$ consist of smooth real functions on $\mathbb R^4$ with polynomially growing derivatives, with
$$\|f\|_{k,\sigma}=\max_{|\alpha|\le k}\sup_y|\partial^\alpha f(y)|e^{-\sigma|y|}.$$
For marked tensors valued in real-linear functionals on $\mathcal S$, use $\|\lambda\|^*_{k,\sigma}=\sup_{\|f\|_{k,\sigma}\le1}|\lambda(f)|$ and $\|M\|_h=\sum_x\|M(x)\|^*_{k,\sigma}e^{\sigma h(x)}$, where $h:I\to[0,\infty)$ is 1-Lipschitz and $h(x)=\max(0,\max_i h(x_i))$. Set $M^{(0)}=F$; the recursion replaces the contraction input by $M$ and the join by $M^{(i)}\star_\Gamma V^{(j-i)}$, doubling its coefficient.

For each $j,e,n\in\mathbb N$ there is a polynomial majorant $P$, depending only on these indices, such that for all $k\in\mathbb N$, $\sigma>0$, $W\ge1$, $U,\delta\ge0$: if $V,V'$ are eligible, propagators and unmarked inputs $1\le a\le e$, $1\le r\le a+2$ are $(W,\delta)$-controlled, and marked inputs with $a<e$, or $a=e,r>n$, or $j=0,(a,r)=(e,n)$ are $(U,\delta)$-controlled, the marked output pair is $(P(W)U,\delta)$-controlled and real-linear.

For every $l\in\mathbb N$, eligible $V$ and $F$ supported on $r\le l+a$ give nonzero outputs only if $n+2j\le l+3e$ and $n\le l+e$. For fixed $l,e,n$, there is a polynomial majorant $P$ depending only on these indices such that the paired sums $\sum_{j=1}^{l+3e}t^jM^{(j)}_{e,n}$ are $(P(W)U,\delta)$-controlled for $|t|\le W$, under the preceding bounds omitting the marked input $(e,n)$. They comprise the whole positive-time part if both marked inputs satisfy that support condition.
*Status:* theorem. *Lean:* [`journey`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L92-L127), [`registry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Shed.lean#L25-L36), [`full`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L61-L68).

### Part B

Use I.1's gauge group and Haar probability measures. A block step has odd $L\ge3$, $J\ge4$, patch radius $\rho=(J+3)L$, embedding $\iota$, and $\mathcal BF(U)=\int k_\beta(U,V)F(V)\,dV$. Locality on $X$ means dependence only on links with both endpoints in $X$; $\mathcal I(X)$ adds gauge invariance, measurability and boundedness.

The patch hypothesis requires unique minimising frames and best predictors whenever their branches are used, and nonempty fallback tags for every cover configuration.

**Proposition III.8.4.** Assume the patch hypothesis, $\beta\in\mathbb R$. For bounded measurable complex $F$ local on $X$, $\mathcal BF$ is local on any $Y\supseteq\bigcup_{x\in X}\Lambda_{10\rho}(\iota x)$. If also $k_\beta(U^g,V^{g\circ\iota})=k_\beta(U,V)$ for every fine gauge transformation $g$, then $F\in\mathcal I(\Lambda_R(o))$ implies $\mathcal BF\in\mathcal I(\Lambda_{LR+10\rho}(\iota o))$, with the same sup bound.
*Status:* theorem. *Lean:* [`back_local`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L119-L136), [`back_cylinder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L156-L169).

Histories satisfy the patch hypothesis, gauge covariance and covariance under translations and signed axis permutations at every step. For each $N,p$, $\mathcal B_m$ uses coupling $\beta_{N,p,m+1}$; levels grow finer, $a_{m+1}=a_m/L_m$, $J_{m+1}\le J_m+1$, $\rho_m=(J_{m+1}+3)L_m$. Define
$$\mathcal B_{k\to m}=\mathcal B_{m-1}\circ\cdots\circ\mathcal B_k,\quad r_{k\to k}(r)=r,\quad r_{k\to m+1}(r)=L_mr_{k\to m}(r)+10\rho_m,$$
with $L_m$ odd, $L_m\ge3$, $J_m\ge4$, identity at $m=k$, $\tau_m=30a_m(J_m+5)$, and $\mathrm{room}(h,k,r)$ meaning $2(a_kr+\tau_k)<a_h$.

**Proposition III.8.5.** Under the patch hypothesis, for every $\beta$, bounded measurable $F,G$ local on disjoint coarse sets satisfy $\mathcal B(FG)=\mathcal BF\,\mathcal BG$; likewise finite products of $F_i\in\mathcal I(C_i)$ on distinct tiling cells. For every history, $N,p$, $h\le k\le m$, finite level-$h$ set $l$, and $F_i\in\mathcal I(\Lambda_r(\iota_{h\to k}i))$, $\mathrm{room}(h,k,r)$ implies
$$\mathcal B_{k\to m}\prod_{i\in l}F_i=\prod_{i\in l}\mathcal B_{k\to m}F_i.$$
This also holds for tile copies of one $F\in\mathcal I(\Lambda_r(0))$, with level-$m$ copies on the right.
*Status:* theorem. *Lean:* [`back_factors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L141-L150), [`backTo_copies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L68-L76).

**Proposition III.8.6.** For every history, $N,p$, $k\le m$, pull-back preserves bounded measurability, is linear, fixes constants, commutes with conjugation and decreases the sup norm. For bounded measurable complex $F$ at level $k$ and integrable complex $g$ at level $m$, the composite push-forward from level $m$ to $k$ is integrable and
$$\int(\mathcal B^*_{k\to m}g)F=\int g\mathcal B_{k\to m}F,\qquad\int\mathcal B^*_{k\to m}g=\int g.$$
For $h\le k$ and every level-$h$ site $i$, pull-back sends $\mathcal I(\Lambda_r(\iota_{h\to k}i))$ into $\mathcal I(\Lambda_{r_{k\to m}(r)}(\iota_{h\to m}i))$. On bounded measurable functions it commutes with signed axis permutations followed by translation by $\iota_{h\to\cdot}i$, and centred level-$h$ copy maps.
*Status:* theorem. *Lean:* [`pushTo_dual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L92-L101), [`backTo_local`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L105-L115), [`backTo_copy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L128-L147).

**Proposition III.8.7.** For every such history and nonnegative integer levels and radii,
$$\tau_{m+1}\le\tfrac23\tau_m,\qquad\tau_m\le(2/3)^m\tau_0\to0,\qquad a_mr_{k\to m}(r)+\tau_m\le a_kr+\tau_k\quad(k\le m).$$
If $h\le k$ and $\mathrm{room}(h,k,r)$ holds, every cone box at $m\ge k$ lies in its centred level-$h$ cell, of physical side $a_h$. For fixed $h,r$, room holds for all sufficiently large $k\ge h$.
*Status:* theorem. *Lean:* [`scales_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L147-L150), [`room_fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L160-L169), [`plenty`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L155-L158).

<a id="unit-inputs"></a>

## 2. What it uses

- I.1: periodic lattices, Haar measure, [`Schedule`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L28-L34).
- III.1: probability kernels, the patch hypothesis proved in [`Next.Foundations.branches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L70-L71), covariance, [`History`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L204-L206).
- IV.1: cells, copies, [`Tiling.planted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Embedded.lean#L25-L38) (chessboard estimate).
- Polchinski's formal heat equation; weighted $\ell^1$ estimates; Fubini. III.14 supplies Part A's inputs.

<a id="unit-strategy"></a>

## 3. Strategy

For finite $I$, eligible symmetric $V$ and symmetric $\Gamma$, the unmarked series represents $\log\mathbb E_{t\Gamma}e^V$ formally by Wick’s rule. Contractions and joins generate connected coefficients. Diameter and height inequalities make exponential weights multiply; induction and telescoping give polynomial and difference bounds.

Given the fine field, site tags are independent; coarse links are independent conditional on those tags. Unused variables integrate out. Locality iterates through the affine radius recurrence; decay of the physical budget keeps cones within cells.

<a id="unit-steps"></a>

## 4. Steps

1. For finite input norms and positive output rank, $\|\Delta_\Gamma H\|_\sigma\le\|H\|_\sigma[\Gamma]_\sigma$ and $\|H\star_\Gamma G\|_\sigma\le\|H\|_\sigma[\Gamma]_\sigma\|G\|_\sigma$. Diameter inequalities absorb internal sums; telescoping gives difference factors $2,3$. [`Held.bridge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L102).
2. Heat-order induction gives bounds; slot counting gives support. The marked norm also controls scalars. [`journey`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L92-L127).
3. Frame routes stay within $9\rho$; uniqueness makes selected frames local; connectors fit within $10\rho$. [`patch_dep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L115-L155).
4. Disjoint coarse sets use disjoint tags and bonds, giving factorisation. [`back_factors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L141-L150).
5. Physical radius increments are at most $\tau_m/3$; combine with budget decay and iterate. [`scales_next`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L135-L145).

6. For $h\le k\le N$, bounded measurable $O$ at level $N$ and $F\in\mathcal I(\Lambda_w(0))$ at level $k$ satisfying $\mathrm{room}(h,k,w)$, expand replicated differences over subsets and apply factorisation and duality; the remaining factors stay inside one push-forward. [Joint.restored](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Joint.lean#L102-L128).
7. For central-cell observables under IV.1’s chessboard hypotheses, expand differences of products over nonempty subsets and bound each by its chessboard roots. [tariff](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Telescope.lean#L34-L78).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

Positive heat order uses higher ranks at the same coupling order; the polynomial may depend on the fixed orders. Unmarked scalar bounds are vacuous. Conditional factorisation allows overlapping fine windows without asserting independence under the fine Gibbs law.

<a id="unit-notation"></a>

## 6. Notation

$e,n,j$: coupling order, rank, heat order. $\Delta_\Gamma,\star_\Gamma$: [`lap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lap.lean#L17), [`bridge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L21). $\Lambda_r$: periodic $\ell^\infty$ box ([`window`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L22-L23)). $\iota_{h\to m}$: embedded site. $\mathcal B^*$: iterated push-forward ([`pushTo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L27-L29)). Copies translate, reflect and conjugate on odd tiles.

<a id="unit-limitations"></a>

## 7. What remains unexplained
III.14 must supply covariance bounds; the relation to polymer activities remains tentative. The marked normalised Gaussian interpretation remains provisional (probable). Non-summable infinite-lattice sums are assigned zero; unmarked scalars require separate convergence arguments; no convergence in $g$ is asserted. Support packages need separate outlines.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/III-8.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md), [III.1](III-1.md), [IV.1](IV-1.md), [III.16](III-16.md), [II.2](II-2.md), [II.1](II-1.md), [III.6](III-6.md).

**Referenced by:** [III.14](III-14.md), [VII.2](VII-2.md), [III.13](III-13.md), [III.4](III-4.md), [III.11](III-11.md).

## Lean source

**Source allocation:** 4,147 attributed lines; 871 line-counted declarations; 1,114 assigned declaration names. Of the assigned names, 1,066 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- work package [`YM/Push/GRID_APPROXIMATION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION) — 1,093 lines.
- work package [`YM/RG08/Carrel/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Carrel) — 488 lines.
- work package [`YM/RG08/Forms/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms) — 412 lines.
- work package [`YM/RG08/Skiff/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff) — 306 lines.
- work package [`YM/AnalyticNext/QUARTIC_MATCH/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/QUARTIC_MATCH) — 302 lines.
- work package [`YM/Pert/Bulk/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk) — 289 lines.
- work package [`YM/RG08/Jetty/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty) — 227 lines.
- work package [`YM/RG08/Camera/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Camera) — 194 lines.
- work package [`YM/RG08/Room/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room) — 152 lines.
- work package [`YM/RG08/Steam/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam) — 138 lines.
- work package [`YM/RG08/Rudder/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rudder) — 136 lines.
- work package [`YM/RG08/Packets/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets) — 94 lines.
- work package [`YM/WilsonBulk/Web/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Web) — 78 lines.
- work package [`YM/RG08/Isles/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Isles) — 68 lines.
- work package [`YM/RG08/Glyph/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Glyph) — 66 lines.
- work package [`YM/RG08/Anchor/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Anchor) — 43 lines.
- work package [`YM/ProofPorts/GRID_REAL_MODELS_ESTIMATES_20261012/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProofPorts/GRID_REAL_MODELS_ESTIMATES_20261012) — 34 lines.
- work package [`YM/RG08/Cloud/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Cloud) — 27 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`StepData.covary`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L56-L67)
- [`Calendar.blocks_go`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L70-L72)
- [`Seam`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L14-L19)
- [`laws`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L21-L24)
- [`Interior`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L109-L113)
- [`rootTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226-L227)
- [`LocalOn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L196-L197)
- [`a_step`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L103-L104)
- [`shrinks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L108-L109)
- [`embeds_scale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L184-L189)
- [`site_dep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L160-L164)
- [`connector_dep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L166-L184)
- [`window_add`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L33-L42)
- [`window_embed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L52-L60)
- [`reach`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L65)
- [`visits_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L67-L83)
- [`route_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L85-L99)
- [`grows_next`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L103-L104)
- [`tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L107)
- [`tail_next`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L110-L121)
- [`tail_zero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L123-L133)
- [`room`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L153)
- [`anchor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L24)
- [`anchor_next`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L31-L45)
- [`tiling_window`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L49-L85)
- [`window_fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L87-L91)
- [`expansion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L97)
- [`grows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L99)
- [`backTo_orient`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L117-L126)
- [`backTo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L24-L25)
- [`backTo_next`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L32-L34)
- [`backTo_env`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L44-L47)
- [`backTo_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L49-L55)
- [`backTo_const`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L57-L60)
- [`backTo_add`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L62-L67)
- [`backTo_star`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L69-L73)
- [`pushTo_integral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L81-L89)
- [`back`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L21-L22)
- [`back_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L41-L51)
- [`back_env`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L53-L55)
- [`back_natural`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L76-L84)
- [`back_dual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L88-L97)
- [`actualEdges`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L100)
- [`state_reads`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L107-L114)
- [`noiseLink`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L28)
- [`perLink`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L30-L32)
- [`perSite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L34-L35)
- [`density_parts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L39-L47)
- [`noiseLink_mass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L51-L55)
- [`perLink_mass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L62-L67)
- [`site_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L83-L85)
- [`parts_back`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L87-L97)
- [`back_cells`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L21-L40)
- [`backTo_cells`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L43-L51)
- [`copy_window`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L57-L66)
- [`sum_ignores`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Product.lean#L137-L143)
- [`sum_independent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Product.lean#L145-L156)
- [`Reads`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Product.lean#L19)
- [`pi_ignores`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Product.lean#L88-L96)
- [`pi_independent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Product.lean#L98-L109)
- [`rooted_translates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Translate.lean#L104-L109)
- [`StepData.isKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L203-L208)
- [`StepData.connector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L39-L42)
- [`likelihood`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L49-L51)
- [`StepData.density`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L71-L72)
- [`StepData.push`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L77-L79)
- [`Calendar.BlockControl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L120-L128)
- [`Levels`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131-L134)
- [`Levels.transition_mass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L158-L159)
- [`Calendar.Fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L97-L118)
- [`frameMass_sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L127-L136)
- [`Patch.frameMass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L148-L151)
- [`Patch.frame`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L153-L155)
- [`Patch.Branches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185)
- [`Patch.radius`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L51)
- [`Cloud.Clockwise.linear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Cloud/Arch.lean#L46-L49)
- [`Cot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L15-L19)
- [`WireCot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L21-L24)
- [`Cot.lap'`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L49-L54)
- [`Cot.bridge'`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L55-L61)
- [`bridge_compare`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Dial.lean#L13-L24)
- [`Held.lap_diff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Dial.lean#L26-L29)
- [`Held.bridge_diff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Dial.lean#L31-L35)
- [file](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean)
- [`Tape`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L17)
- [`Flake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L18)
- [`Ground`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L20-L24)
- [`Ground.radius`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L35)
- [`Held`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L61)
- [`ensign`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L78-L84)
- [`unary`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lap.lean#L23-L46)
- [`Held.lap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lap.lean#L58)
- [`lap_compare`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lap.lean#L72-L79)
- [`Line`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lines.lean#L14)
- [`Wire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lines.lean#L18-L22)
- [`Alley`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/PontChange.lean#L38-L43)
- [`Cot.raft`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/PontChange.lean#L72-L89)
- [`lighthouse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Pontoon.lean#L19-L20)
- [`street`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Pontoon.lean#L22-L23)
- [`raft`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Pontoon.lean#L56)
- [`Wage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Powers.lean#L11)
- [`bleach`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Shuffle.lean#L38)
- [`Held.bleach`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Shuffle.lean#L74-L79)
- [`arc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L26-L42)
- [`root_sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L49-L69)
- [`binary_EN`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L71-L99)
- [`Glyph.breaktime`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Glyph/Tempo.lean#L26-L32)
- [`Glyph.cloudy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Glyph/Tempo.lean#L43-L73)
- [`waxed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Glyph/Towers.lean#L15)
- [`Loom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L15-L17)
- [`Loom.cage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L18)
- [`Sings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L36)
- [`Lyrics`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L37)
- [`Pearl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Cube.lean#L24)
- [`purse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Dosh.lean#L40)
- [`beam`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Hoard.lean#L15)
- [`Necks.slushy_uniform`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Prior.lean#L61-L95)
- [`Dyad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pair.lean#L11-L17)
- [`Dyad.pocket`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pair.lean#L39-L48)
- [`Dyad.cloak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pair.lean#L52-L63)
- [`pocket`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pocket.lean#L28)
- [`fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pocket.lean#L33)
- [`cloak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pocket.lean#L75)
- [`clocked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Shed.lean#L20-L21)
- [`reel_stamp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Shed.lean#L22-L23)
- [`shim`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L23)
- [`shift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L24)
- [`rungs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L25-L26)
- [`skate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L31)
- [`climbs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L38-L40)
- [`Lit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L52)
- [`shaker`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L71)
- [`cruising`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L72-L73)
- [`across`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L85)
- [`strict`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Ballot.lean#L25)
- [`allG`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Ballot.lean#L26)
- [`paving`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Ballot.lean#L34-L48)
- [`Grain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L23)
- [`unilateral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L33)
- [`pair`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L34-L35)
- [`wheels`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L37-L38)
- [`bank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L42-L44)
- [`burn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L46)
- [`blaze`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L55-L62)
- [`taps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L14)
- [`postage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L88-L101)
- [`Eligible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L17-L20)
- [`predecessors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L34-L48)
- [`off`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L72)
- [`ember`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L74)
- [`cinder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L75)
- [`smoulder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L77-L80)
- [`appropriate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L82-L89)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-iii-8-1"></a>

- **K-III.8.1** [`navigation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L34-L83) *(key result)* — For fixed orders, the formal connected heat-propagation map is bounded in weighted-norm (Cot) estimates by a polynomial in the input width W, uniformly in the cell count, scale and stage, for both absolute values and differences.

<a id="k-iii-8-2"></a>

- **K-III.8.2** [`journey`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L92-L127) *(key result)* — There is a polynomial such that differences in the inputs of the skate recursion are controlled by a polynomially larger difference in outputs, uniformly in geometry.

<a id="k-iii-8-3"></a>

- **K-III.8.3** [`back_factors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L141-L150) *(numbered result)* — The back-transformation of a product of locally supported observables on disjoint regions factors into the product of back-transformations.

<a id="k-iii-8-4"></a>

- **K-III.8.4** [`back_cylinder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L156-L169) *(numbered result)* — Under gauge covariance, pulling back a local observable supported in a window yields one supported in an enlarged fine window.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

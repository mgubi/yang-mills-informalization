# III.8. Connected activities and backward dependence cones

*Part III — Ultraviolet construction (renormalization group).* 4,147 lines of Lean in 871 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is **checked** against the Lean and rewritten by a second model; a final editing round is in progress. It is updated as it improves.


**Part:** III, Ultraviolet construction (renormalization group). **Lean:** [`YM/RG08/Steam/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam), [`YM/RG08/Forms/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms), [`YM/RG08/Skiff/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff), [`YM/RG08/Jetty/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty), [`YM/Push/GRID_APPROXIMATION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION). The support packages are listed in §7. **Size:** 4,147 lines in the main-theorem closure:
- 1,093 lines for the backward cones (`GRID_APPROXIMATION`);
- 1,083 lines for the connected heat expansion (`Steam` 138, `Forms` 412, `Skiff` 306, `Jetty` 227);
- about 1,970 lines in support packages that the clustering of the dependency graph assigned to this unit.

The unit has two independent halves.

* **Part A, connected activities.** Bounds at fixed order for the formal cumulant expansion $\log\mathbb E_{t\Gamma}e^{V}$ of a Gaussian integral, organised by powers of the coupling $g$, of the heat time $t$ and of the field. The same bounds are proved for the expansion with one marked insertion. They are polynomial in one input size $W$, uniform in the index set, the metric, the volume, the scale and the stage, and they come with Lipschitz bounds for differences.
* **Part B, backward dependence cones.** The pull-back of a coarse observable through the block-spin kernel of III.1 is its conditional expectation given the fine field. It is local in an explicit fine window, and pull-backs of observables on disjoint coarse sets multiply exactly. Along a history the radius of the window grows by an explicit affine map whose increments, in physical units, decay geometrically.

## 1. What this unit proves

### Part A

*Conventions.*
- $I$ is an arbitrary set (of cells), $d$ is a pseudometric on $I$, and $\sigma\ge0$.
- A rank-$n$ tensor is a function $F:I^n\to\mathbb R$ with ordered slots and no symmetry factors. For a tuple $x\in I^n$, $\mathrm{diam}_d(x)=\max_{i,j}d(x_i,x_j)$.
- The *rooted norm* is
$$\lVert F\rVert_{\sigma}=\max_{1\le i\le n}\ \sup_{z\in I}\ \sum_{x\in I^n,\ x_i=z}|F(x)|\ e^{\sigma\ \mathrm{diam}_d(x)}\ \in[0,\infty].$$
For $n=0$ there is no slot to fix, and a bound $\lVert F\rVert_\sigma\le p$ asserts nothing.
- A *propagator* is any $\Gamma:I\times I\to\mathbb R$; symmetry is not assumed. It is measured by its weighted row and column sums,
$$[\Gamma]_\sigma=\max\Big(\sup_u\sum_v|\Gamma(u,v)|e^{\sigma d(u,v)},\ \sup_v\sum_u|\Gamma(u,v)|e^{\sigma d(u,v)}\Big).$$
- A pair $(F,F')$ is *$(W,\delta)$-controlled* if $\lVert F\rVert_\sigma\le W$, $\lVert F'\rVert_\sigma\le W$ and $\lVert F-F'\rVert_\sigma\le W\delta$. The same definition applies to a pair of propagators, with $[\cdot]_\sigma$ in place of $\lVert\cdot\rVert_\sigma$.
- A *polynomial majorant* is a function $P$ with $0\le P(x)\le Cx^t$ for all $x\ge1$, for some $C\ge0$ and $t\in\mathbb N$. The class is closed under sums and products.

*Formal potentials.* A formal potential is a family $V=(V_{e,n})_{e,n\ge0}$ of rank-$n$ tensors; $V_{e,n}$ is the coefficient of $g^e$ with $n$ field variables. The variables comprise the integrated ones and the spectator (background) ones, and $\Gamma$ vanishes on the spectators. $V$ is *eligible* if $V_{0,n}=0$ for all $n$, and $V_{e,n}\ne0$ implies $n\le e+2$ and $e+n$ even.

*Heat coefficients.* The heat coefficients $V^{(j)}=V^{(j)}(\Gamma,V)$ are defined by $V^{(0)}=V$ and

$$V^{(j+1)}_{e,n}=\frac1{j+1}\Big[\binom{n+2}2\Delta_\Gamma V^{(j)}_{e,n+2}+\sum_{c=0}^n\sum_{i=0}^j\sum_{a=0}^e\frac{(c+1)(n-c+1)}2\ V^{(i)}_{a,c+1}\star_\Gamma V^{(j-i)}_{e-a,n-c+1}\Big].\qquad(\mathrm{A1})$$

Here $\Delta_\Gamma$ (contraction) and $\star_\Gamma$ (join) are defined in Step A1. Formally, $V^{(j)}_{e,n}$ is the coefficient of $t^jg^e$ at rank $n$ in $\log\mathbb E_{t\Gamma}e^{V}$.

**Proposition III.8.1 (bounds at fixed order for the connected heat coefficients).** Fix $j,e,n\in\mathbb N$ and put
$$T_j(e,n)=\lbrace(a,r):1\le a\lt e,\ 1\le r\le a+2\rbrace\cup\lbrace(e,r):n\lt r\le e+2\rbrace,$$
enlarged by $(e,n)$ when $j=0$ and $n\ge1$. There is a polynomial majorant $P$ with the following property. Let $I$ be a set, $d$ a pseudometric on it, $\sigma\ge0$, $\delta\ge0$, $W\ge1$, $V,V'$ eligible and $\Gamma,\Gamma'$ propagators. Suppose $(\Gamma,\Gamma')$ is $(W,\delta)$-controlled, and so is $(V_{a,r},V'_{a,r})$ for every $(a,r)\in T_j(e,n)$. Then $\big(V^{(j)}_{e,n}(\Gamma,V),\ V^{(j)}_{e,n}(\Gamma',V')\big)$ is $(P(W),\delta)$-controlled.

- $P$ depends on $(j,e,n)$ only. It does not depend on $I$, $d$, $\sigma$ or $\delta$, hence not on the number of cells, the period, the scale or the stage at which it is applied.
- At the same order $e$, only inputs of strictly higher rank enter.
- For $n=0$ the conclusion is empty.

*Status:* theorem, with no hypothesis beyond those stated.
*Lean:* [`YM.RG08.Steam.navigation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L34-L83), input range [`taps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L14), norms [`Held`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L61), [`Wire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lines.lean#L18-L22), [`Cot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L15-L19), [`WireCot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L21-L24), majorants [`Wage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Powers.lean#L11).

**Proposition III.8.2 (support; the heat-time series is finite).** Let $V$ be eligible and $\Gamma$ arbitrary.
- Every $V^{(j)}$ is eligible.
- $V^{(j)}_{e,n}\ne0$ implies $n+2j\le3e$.
- For $j\ge1$, $V^{(j)}$ is symmetric under permutations of its slots.

Hence, at fixed $(e,n)$, the heat-time series is a polynomial in $t$ of degree at most $(3e-n)/2$. For every real $t$ the complete series is
$$\mathcal E_t(V)_{e,n}=\sum_{j=0}^{3e}t^jV^{(j)}_{e,n}=V_{e,n}+\mathcal R_t(V)_{e,n},\qquad\mathcal R_t(V)_{e,n}=\sum_{j=1}^{3e}t^jV^{(j)}_{e,n},$$
and $\mathcal E_t(V)$ is eligible.
*Status:* theorem.
*Lean:* [`preserves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L50-L64), [`live`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L66-L70), [`off`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L72), [`coal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L65-L75), [`ember`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L74), [`cinder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L75), [`smoulder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L77-L80), [`appropriate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L82-L89).

**Proposition III.8.3 (expansion with one marked insertion).**

*Test functions and their norms.* Let $\mathcal S$ be the space of smooth functions of temperate growth on $\mathbb R^4$; these are the test functions of the insertion. For $k\in\mathbb N$ and $\sigma\gt0$ put
$$\lVert f\rVert_{k,\sigma}=\max_{|\alpha|\le k}\sup_{y\in\mathbb R^4}|\partial^\alpha f(y)|e^{-\sigma|y|},$$
and, for a linear functional $\lambda$ on $\mathcal S$, $\lVert\lambda\rVert^{\ast}_{k,\sigma}=\sup\lbrace|\lambda(f)|:\lVert f\rVert_{k,\sigma}\le1\rbrace$.

*Marked tensors and the marked norm.* A marked rank-$n$ tensor assigns to each $x\in I^n$ a linear functional $M(x)$ on $\mathcal S$. Let $h:I\to[0,\infty)$ be 1-Lipschitz for $d$ (a height, for instance a distance to the insertion), and set $h(x)=\max(0,\max_ih(x_i))$ for a tuple $x$. The marked norm is the unrooted weighted $\ell^1$ norm
$$\lVert M\rVert_{h}=\sum_{x\in I^n}\lVert M(x)\rVert^{\ast}_{k,\sigma}\ e^{\sigma h(x)}.$$
Unlike the rooted norm, it gives a genuine bound for $n=0$. A pair $(M,M')$ is $(U,\delta)$-controlled if $\lVert M\rVert_h\le U$, $\lVert M'\rVert_h\le U$ and $\lVert M-M'\rVert_h\le U\delta$.

*Marked heat coefficients.* For a marked series $F=(F_{e,n})$ they are $M^{(0)}=F$ and
$$M^{(j+1)}_{e,n}=\frac1{j+1}\Big[\binom{n+2}2\Delta_\Gamma M^{(j)}_{e,n+2}+\sum_{c\le n,\ i\le j,\ a\le e}(c+1)(n-c+1)\ M^{(i)}_{a,c+1}\star_\Gamma V^{(j-i)}_{e-a,n-c+1}\Big].$$
The cross term carries no factor $\tfrac12$. For symmetric $\Gamma$ this is the $t$-expansion of the linearised equation $\partial_tM=\tfrac12\Delta_\Gamma M+\langle\nabla M,\Gamma\nabla W_t\rangle$, whose solution is the normalised expectation $\mathbb E_{t\Gamma}[Fe^{V}]/\mathbb E_{t\Gamma}[e^{V}]$. This reading is probable; the identification is not made in this unit.

(i) *Fixed-order bound.* Fix $j,e,n$. There is a polynomial majorant $P$ with the following property, for all $I,d,h$ as above, $\sigma\gt0$, $k\in\mathbb N$, $\delta\ge0$, $W\ge1$, $U\ge0$, eligible $V,V'$, propagators $\Gamma,\Gamma'$ and marked series $F,F'$. Assume:
- $(\Gamma,\Gamma')$ is $(W,\delta)$-controlled;
- the unmarked inputs $(V_{a,r},V'_{a,r})$ with $1\le a\le e$ and $1\le r\le a+2$ are $(W,\delta)$-controlled;
- the marked inputs $(F_{a,r},F'_{a,r})$ are $(U,\delta)$-controlled for: $a\lt e$ (any $r$); or $a=e$ and $r\gt n$; or $j=0$ and $(a,r)=(e,n)$.

Then $\big(M^{(j)}_{e,n}(\Gamma,V,F),\ M^{(j)}_{e,n}(\Gamma',V',F')\big)$ is $(P(W)U,\delta)$-controlled; in particular its values are linear functionals.

(ii) *Support.* If $V$ is eligible and $F_{e,n}\ne0$ implies $n\le l+e$, then $M^{(j)}_{e,n}\ne0$ implies $n+2j\le l+3e$ and $n\le l+e$.

(iii) *Full positive-time part.* Fix $l,e,n$. There is a polynomial majorant $P$ such that the pair
$$\sum_{j=1}^{l+3e}t^jM^{(j)}_{e,n}(\Gamma,V,F),\qquad\sum_{j=1}^{l+3e}t^jM^{(j)}_{e,n}(\Gamma',V',F')$$
is $(P(W)U,\delta)$-controlled for $|t|\le W$. The hypotheses are those of (i), with marked inputs required only for $a\lt e$, or $a=e$ and $r\gt n$. By (ii), this is the whole positive-time part when $F$ has marked rank at most $l+e$ at order $e$.

*Status:* theorem. This is the form in which the main theorem uses Part A (in III.14).
*Lean:* [`journey`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L92-L127), [`full`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L61-L68), [`registry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Shed.lean#L25-L36). Norms: [`Sings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L36), [`Dyad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pair.lean#L11-L17), [`purse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Dosh.lean#L40), [`beam`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Hoard.lean#L15), [`Loom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L15-L17), [`fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pocket.lean#L33).

### Part B

*Setting.*
- A block-spin step (III.1) maps a fine periodic lattice to a coarse one with block factor $L$. The coarse site $x$ sits at the fine site $\iota x$.
- The kernel is built from patches: boxes of radius $\rho=(J+3)L$ around the points $\iota x$, where $J$ is the stage.
- $k_\beta(U,V)$ is the conditional density of the coarse configuration $V$ given the fine configuration $U$, with respect to the product Haar probability measure.
- The pull-back of a bounded measurable complex function $F$ of the coarse configuration is
$$(\mathcal BF)(U)=\int k_\beta(U,V)F(V)\ dV.$$
- $\Lambda_r(x)$ is the periodic $\ell^\infty$ box of radius $r$ about $x$; periodic images are allowed.
- $F$ is *local on* $X$ if $F(V)$ depends only on the links of $V$ with both endpoints in $X$.
- $\mathcal I(X)$ is the class of observables that are gauge invariant, measurable, bounded and local on $X$ (IV.1).

*Patch hypothesis (III.1).* On the branches where they are used, the minimising frame and the best predictor are unique, and the set of admissible fallback tags is nonempty.

**Proposition III.8.4 (one step: the pull-back is local).** Assume the patch hypothesis, and let $\beta\in\mathbb R$.
(i) Let $F$ be bounded, measurable and local on a coarse set $X$, and let $Y$ be a set of fine sites containing $\Lambda_{10\rho}(\iota x)$ for every $x\in X$. Then $\mathcal BF$ is local on $Y$.
(ii) Assume moreover that the density is gauge covariant, $k_\beta(U^{g},V^{g\circ\iota})=k_\beta(U,V)$ for every fine gauge transformation $g$. If $F\in\mathcal I(\Lambda_R(o))$, then $\mathcal BF\in\mathcal I(\Lambda_{LR+10\rho}(\iota o))$, with the same sup bound.

*Status:* theorem. Both hypotheses on the kernel are proved in III.1: the patch hypothesis is [`Next.Foundations.branches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L70-L71). For each step of a history, both are fields of the block-control data built in [`Calendar.blocks_go`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L70-L72).
*Lean:* [`back_local`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L119-L136), [`back_cylinder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L156-L169).

**Proposition III.8.5 (exact factorisation).** Assume the patch hypothesis.
- If $F,G$ are bounded, measurable and local on disjoint coarse sets $X,Y$, then $\mathcal B(FG)=\mathcal BF\cdot\mathcal BG$ for every $\beta$.
- In particular $\mathcal B\prod_{i\in l}F_i=\prod_{i\in l}\mathcal BF_i$ when $F_i\in\mathcal I(C_i)$ for distinct cells $C_i$ of a tiling.
- Along a history (notation below): let $h\le k\le m$, let $l$ be a finite set of level-$h$ sites, and let $F_i\in\mathcal I(\Lambda_r(\iota_{h\to k}i))$ at level $k$ for $i\in l$. If $\mathrm{room}(h,k,r)$ holds, then $\mathcal B_{k\to m}\prod_{i\in l}F_i=\prod_{i\in l}\mathcal B_{k\to m}F_i$.
- The same holds for the product of the tile copies of one $F\in\mathcal I(\Lambda_r(0))$ (translated, reflected, and complex-conjugated on odd tiles), the copies on the right being taken at level $m$.

*Status:* theorem. It is an identity, not an estimate, and the fine windows of $\mathcal BF$ and $\mathcal BG$ may overlap.
*Lean:* [`back_factors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L141-L150), [`back_cells`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L21-L40), [`backTo_cells`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L43-L51), [`backTo_copies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L68-L76).

*History.*
- Levels $m=0,1,2,\dots$ get finer as $m$ grows. Level $m$ has spacing $a_m$.
- The step from level $m+1$ to level $m$ has block factor $L_m$ (odd, $\ge3$), so $a_{m+1}=a_m/L_m$. Its patch radius is $\rho_m=(J_{m+1}+3)L_m$, where the stages satisfy $J_{m+1}\le J_m+1$. The inverse couplings are $\beta_{N,p,m}$.
- $\mathcal B_m$ is the pull-back through this step at $\beta_{N,p,m+1}$. Put $\mathcal B_{k\to m}=\mathcal B_{m-1}\circ\dots\circ\mathcal B_k$ (with $\mathcal B_{k\to k}=\mathrm{id}$), and let $\mathcal B^{\ast}_{k\to m}$ be the composite of the push-forwards of III.1 from level $m$ to level $k$.
- For a level-$h$ site $i$ and $m\ge h$, $\iota_{h\to m}i$ is its image at level $m$.
- The cone radius is $r_{k\to k}(r)=r$, $r_{k\to m+1}(r)=L_m\ r_{k\to m}(r)+10(J_{m+1}+3)L_m$.
- The physical budget is $\tau_m=30a_m(J_m+5)$.
- $\mathrm{room}(h,k,r)$ is the condition $2(a_kr+\tau_k)\lt a_h$.

**Proposition III.8.6 (pull-back along the history).** For all $N,p$ and $k\le m$:
(i) $\mathcal B_{k\to m}$ maps bounded measurable functions to bounded measurable functions, with $\sup|\mathcal B_{k\to m}F|\le\sup|F|$. It is linear, fixes constants and commutes with complex conjugation.
(ii) For $g$ integrable at level $m$ (Haar probability measures): $\int(\mathcal B^{\ast}_{k\to m}g)F=\int g\ \mathcal B_{k\to m}F$ and $\int\mathcal B^{\ast}_{k\to m}g=\int g$.
(iii) Let $h\le k$ and $i$ a level-$h$ site. If $F\in\mathcal I(\Lambda_r(\iota_{h\to k}i))$, then $\mathcal B_{k\to m}F\in\mathcal I(\Lambda_{r_{k\to m}(r)}(\iota_{h\to m}i))$.
(iv) $\mathcal B_{k\to m}$ commutes with the signed permutations of the axes about the points $\iota_{h\to\cdot}i$, and with the copy maps of the centred level-$h$ tiling.

*Status:* theorem. The hypotheses on the kernels are supplied by the history.
*Lean:* [`backTo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L24-L25), [`pushTo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L27-L29), [`backTo_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L49-L55), [`backTo_env`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L44-L47), [`backTo_add`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L62-L67), [`backTo_const`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L57-L60), [`backTo_star`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L69-L73), [`pushTo_dual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L92-L101), [`pushTo_integral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L81-L89), [`backTo_local`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L105-L115), [`backTo_orient`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L117-L126), [`backTo_copy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L128-L147).

**Proposition III.8.7 (size of the cone in physical units).**
(i) $\tau_{m+1}\le\frac23\tau_m$; hence $\tau_m\le(2/3)^m\tau_0\to0$.
(ii) $a_m\ r_{k\to m}(r)+\tau_m\le a_kr+\tau_k$ for $k\le m$. Thus an observable of lattice radius $r$ at level $k$ has, at every finer level, a backward cone of physical radius at most $a_kr+\tau_k$, uniformly in $m$, $N$ and $p$.
(iii) If $\mathrm{room}(h,k,r)$ holds, then for every $m\ge k$ and every level-$h$ site $i$, the box $\Lambda_{r_{k\to m}(r)}(\iota_{h\to m}i)$ lies in the cell of $i$ of the centred level-$h$ tiling at level $m$. That cell has $L_h\cdots L_{m-1}$ sites per side, i.e. physical side $a_h$.
(iv) For fixed $h$ and $r$, $\mathrm{room}(h,k,r)$ holds for all sufficiently large $k$.

*Status:* theorem.
*Lean:* [`tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L107), [`tail_next`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L110-L121), [`tail_zero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L123-L133), [`scales_next`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L135-L145), [`scales_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L147-L150), [`room`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L153), [`room_fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L160-L169), [`plenty`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L155-L158).

## 2. What it uses

* **III.1 (block-spin step, history).**
  * *The kernel.* $k_\beta$ ([`StepData.density`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L71-L72)) is a sum over site tags and bond tags of a [`likelihood`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L49-L51) times a product over bonds of normalised penalty densities. The likelihood is a product over sites of frame masses times a product over bonds of predictor masses.
  * *Frames and patches.* [`Patch.frame`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L153-L155), [`Patch.frameMass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L148-L151), [`StepData.connector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L39-L42), and the patch radius [`Patch.radius`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L51) $=(J+3)L$.
  * *Patch hypothesis and kernel properties.* The patch hypothesis [`Patch.Branches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185) is proved in [`Next.Foundations.branches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L70-L71). Also used: [`frameMass_sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L127-L136); [`StepData.isKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L203-L208) (positivity, measurability, boundedness, mass one); the push-forward [`StepData.push`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L77-L79).
  * *The history.* [`History`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L204-L206), [`Levels`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131-L134), [`Calendar.Fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L97-L118) ($J_{m+1}\le J_m+1$), [`Levels.transition_mass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L158-L159). The per-step [`Calendar.BlockControl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L120-L128) holds the patch hypothesis and the lattice-symmetry and gauge covariance of each density; it is constructed in [`Calendar.blocks_go`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L70-L72).
* **I.1.**
  * Periodic lattices, links, Haar measure, gauge transformations, transport along routes, and locality [`LocalOn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L196-L197).
  * The spacing schedule [`Schedule`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L28-L34): $L_m$ odd and $\ge3$; [`a_step`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L103-L104) ($a_{m+1}=a_m/L_m$); [`shrinks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L108-L109) ($a_m\to0$); [`embeds_scale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L184-L189) ($a_m\ L_h\cdots L_{m-1}=a_h$).
* **IV.1.** Tilings, cells and copies; the class [`Interior`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L109-L113) $=\mathcal I$; and, in Step B7 only, the chessboard root [`rootTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226-L227) and the chessboard bound [`Tiling.planted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Embedded.lean#L25-L38).
* **Part A uses no other unit.** $V$, $\Gamma$ and the sizes $W,\delta$ are data supplied by the consumer, III.14; there $\Gamma$ is a lattice covariance (III.3, probable). The weighted $\ell^1$ bookkeeping behind the rooted norm comes from `Pert/Bulk` and `Packets`, which are assigned to this unit.
* **Standard mathematics.**
  * *Part A.* $W_t=\log\mathbb E_{t\Gamma}e^{V}$ solves the Polchinski (Hamilton–Jacobi) equation $\partial_tW=\tfrac12\Delta_\Gamma W+\tfrac12\langle\nabla W,\Gamma\nabla W\rangle$ (Polchinski, Nucl. Phys. B 231 (1984) 269; Brydges–Kennedy, J. Stat. Phys. 48 (1987) 19). Iterating it in $t$ produces the connected (tree) expansion. Proving bounds at fixed order by induction, in norms that hold one external argument fixed, is the standard treatment (Salmhofer, *Renormalization: an introduction*, Springer 1999; Brydges, *Lectures on the renormalisation group*, IAS/Park City Math. Ser. 16, 2009).
  * *Part B.* Conditional expectation for a Markov kernel; Fubini for product measures and for sums over products of probability vectors. The model is Bałaban's block averaging (Comm. Math. Phys. 98 (1985) 17); the kernel here is the probabilistic one of III.1.
  * *Step B7.* The chessboard estimate (Fröhlich–Israel–Lieb–Simon, Comm. Math. Phys. 62 (1978) 1).
* **Imported constants and assumptions.**
  * The patch radius $(J+3)L$ (III.1).
  * $L_m\ge3$ and $J_{m+1}\le J_m+1$ (I.1, III.1).
  * The patch hypothesis and gauge covariance are hypotheses of III.8.4–III.8.5, discharged in III.1.
  * The constants $10$ (read radius), $8$ (route length), $30$ and $5$ (in $\tau_m$) are internal.
  * Part A imports no constants.

## 3. Strategy

**Part A.** The recursion (A1) is the $t$-Taylor form of the Polchinski equation. Each new term either contracts one coefficient with itself by one $\Gamma$-line (the Laplacian term), or joins two earlier coefficients by one line (the quadratic term). Iterating builds trees of $\Gamma$-lines: this is the connected expansion of Brydges–Kennedy.

The rooted norm is chosen so that each operation costs exactly the product of the norms of its inputs. Fixing one external slot and summing over all the others absorbs the sums over the internal endpoints of the new line. The weight $e^{\sigma\,\mathrm{diam}}$ is subadditive along a line by the triangle inequality, and the line pays for the extra distance through its weighted row sums. There is no loss in the width $\sigma$ and no dependence on the number of cells.

Induction on $j$ then gives a polynomial majorant whose coefficients are the combinatorial factors of (A1). Differences telescope, so the same induction gives the Lipschitz bounds. The leg count (each line removes two legs, and each order has at most $e+2$ legs) makes the $t$-series finite at fixed order.

The marked expansion is the same argument with trees rooted at the insertion. The marked tensor carries an unrooted norm with a height weight. When it is joined to an unmarked coefficient, the growth of the height along the new line is paid by the line and by the diameter weight of the unmarked coefficient.

What is specific here is the bookkeeping: arbitrary index sets; all orders in $g$, in $t$ and in rank handled at once; a single price $W$; explicit input ranges; and Lipschitz control with the same $\delta$.

**Part B.** Given the fine field $U$, the kernel of III.1 proceeds in three stages:
1. independently at each coarse site, it draws a frame tag whose law depends on $U$ near the site;
2. given the tags, independently on each coarse bond, it draws a predictor tag;
3. it then draws the coarse link from a normalised penalty density centred at the prediction.

The law of a bond depends on the tags at its two endpoints and on $U$ near them. So, given $U$, the coarse field is a mixture over independent site tags of product measures over bonds.

*Locality.* Integrate an observable local on $X$ against this law. The bonds outside $X$ integrate to one and the tags outside $X$ sum to one. What remains reads the fine field only in windows of radius $10\rho$ around $\iota X$.

*Factorisation.* For disjoint $X$ and $Y$ the two observables use disjoint bonds and disjoint tags, so they are conditionally independent given $U$: $\mathcal B(FG)=\mathcal BF\ \mathcal BG$ exactly.

*Iteration.* $\mathcal B_{k\to m}$ is the conditional expectation of the level-$k$ field given the level-$m$ field, and the cone radius evolves by $R\mapsto L_mR+10\rho_m$. In physical units one step adds $10a_m(J_{m+1}+3)\le\tau_m/3$. The budget $\tau_m$ decays geometrically because $a_m$ does (by a factor at most $1/3$ per step) while $J_m$ grows by at most one per step. So the cones have bounded physical size. Once the cone of an observable fits inside a coarse level-$h$ cell, products over distinct cells factor at every intermediate step.

## 4. Steps

### A. Connected heat coefficients

**A1. Operations and the recursion.**

*Definitions.* For $F$ of rank $m+2$,
$$(\Delta_\Gamma F)(x)=\mathrm{Sym}\sum_{u,v\in I}\Gamma(u,v)F(u,v,x).$$
For $F$ of rank $p+1$ and $G$ of rank $q+1$, the join has rank $p+q$:
$$(F\star_\Gamma G)(x,y)=\mathrm{Sym}\sum_{u,v\in I}F(u,x)\Gamma(u,v)G(v,y).$$
$\mathrm{Sym}$ averages over permutations of the slots.

*Combinatorial factors.* Write $W=\sum_n\langle W_n,\phi^{\otimes n}\rangle$ with ordered tensors. Then $\tfrac12\Delta_\Gamma$ and $\tfrac12\langle\nabla W,\Gamma\nabla W\rangle$ produce exactly the factors $\binom{n+2}2$ and $(c+1)(n-c+1)/2$ of (A1).

*Vanishing terms and symmetry.* For eligible $V$ the pair terms with $a=0$ or $a=e$ vanish, because $V^{(i)}_{0,\cdot}=0$. Every $V^{(j)}$ with $j\ge1$ is symmetric, since every term is symmetrised.

*Identification with the cumulants.* This is proved in III.14 for symmetric $\Gamma$:
- the generating series solves the formal Hamilton–Jacobi equation ([`Glyph.cloudy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Glyph/Tempo.lean#L43-L73));
- its exponential solves the linear heat equation ([`Cloud.Clockwise.linear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Cloud/Arch.lean#L46-L49));
- summation at time $t$ gives $\mathcal E_t(V)$ ([`Glyph.breaktime`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Glyph/Tempo.lean#L26-L32)).

The bounds of this unit do not use the identification.

*Lean:* [`lap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lap.lean#L17), [`bridge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L21), [`bleach`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Shuffle.lean#L38), [`unilateral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L33), [`pair`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L34-L35), [`wheels`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L37-L38), [`bank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L42-L44), [`burn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L46), [`blaze`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L55-L62), [`coal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L65-L75).

**A2. Support (Proposition III.8.2).** Since $\Delta_\Gamma0=0$ and $0\star_\Gamma G=F\star_\Gamma0=0$, a nonzero $V^{(j+1)}_{e,n}$ has a nonzero predecessor: either $V^{(j)}_{e,n+2}\ne0$, or $V^{(i)}_{a,c+1}\ne0\ne V^{(j-i)}_{e-a,n-c+1}$ for some $c\le n$, $i\le j$, $a\le e$. Strong induction on $j$:
- at $j=0$, $n\le e+2\le3e$ because $e\ge1$;
- the contraction step uses $(n+2)+2j\le3e$;
- the pair step adds $(c+1)+2i\le3a$ and $(n-c+1)+2(j-i)\le3(e-a)$.

Parity and $n\le e+2$ propagate the same way. Splitting off $j=0$ gives $\mathcal E_t=V+\mathcal R_t$.
*Lean:* [`predecessors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L34-L48), [`preserves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L50-L64), [`live`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L66-L70), [`off`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L72), [`smoulder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L77-L80), [`appropriate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L82-L89).

**A3. The two contraction estimates.** For $\sigma\ge0$:
$$\lVert\Delta_\Gamma F\rVert_\sigma\le\lVert F\rVert_\sigma\ \sup|\Gamma|\le\lVert F\rVert_\sigma[\Gamma]_\sigma,\qquad\lVert F\star_\Gamma G\rVert_\sigma\le\lVert F\rVert_\sigma[\Gamma]_\sigma\lVert G\rVert_\sigma.$$

*Symmetrisation.* $\mathrm{Sym}$ does not increase the rooted norm: it permutes the slots and preserves diameters.

*Contraction.* Fix a slot of $x$. Then $\mathrm{diam}(x)\le\mathrm{diam}(u,v,x)$ and $|\Gamma(u,v)|\le\sup|\Gamma|$, and the sum over $(u,v,x)$ with that slot fixed is a rooted sum of $F$.

*Join.* The key inequality is
$$\mathrm{diam}(x,y)\le\mathrm{diam}(u,x)+d(u,v)+\mathrm{diam}(v,y).$$
With a slot of $x$ fixed, sum in three stages:
1. over $y$ at fixed $v$: at most $\lVert G\rVert$, rooted at $v$;
2. over $v$: at most the row sum of $\Gamma$;
3. over $(u,x)$: at most $\lVert F\rVert$.

A fixed slot of $y$ is treated symmetrically, with column sums.

*Differences.* They telescope: $\Delta_\Gamma F-\Delta_{\Gamma'}F'=\Delta_\Gamma(F-F')+\Delta_{\Gamma-\Gamma'}F'$, and the join gives three such terms. So if the inputs are $(P,\delta)$- and $(Q,\delta)$-controlled and $\Gamma$ is $(B,\delta)$-controlled, the contraction is $(2PB,\delta)$-controlled and the join is $(3PBQ,\delta)$-controlled.

*Lean:* [`Ground`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L20-L24), [`Held`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L61) with [`ensign`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L78-L84), [`Wire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lines.lean#L18-L22), [`unary`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lap.lean#L23-L46), [`Held.lap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lap.lean#L58), [`arc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L26-L42), [`root_sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L49-L69), [`binary_EN`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L71-L99), [`Held.bridge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L102), [`Held.bleach`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Shuffle.lean#L74-L79), [`lap_compare`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lap.lean#L72-L79), [`bridge_compare`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Dial.lean#L13-L24), [`Held.lap_diff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Dial.lean#L26-L29), [`Held.bridge_diff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Dial.lean#L31-L35), [`Cot.lap'`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L49-L54), [`Cot.bridge'`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L55-L61).

**A4. Proof of Proposition III.8.1.** Strong induction on $j$, for all $(e,n)$ at once.

*Base, $j=0$.* For $n=0$ the claim is vacuous. For $e=0$, or $n\gt e+2$, the coefficient is zero by eligibility. Otherwise $(e,n)\in T_0(e,n)$ and the bound is $W$.

*Step, $j\to j+1$.* Use (A1).
- The contraction term needs the case $(j;e,n+2)$. Its inputs ($a\lt e$, or $a=e$ with $r\ge n+2$) lie in $T_{j+1}(e,n)$.
- Only pair terms with $0\lt a\lt e$ survive. Both factors are of order less than $e$, so they need only inputs of order less than $e$.

With $B=W$ for the propagator, A3 gives the polynomial majorant
$$P_{j+1,e,n}(x)=\frac1{j+1}\Big[\binom{n+2}2\ 2x\ P_{j,e,n+2}(x)+\sum_{c,i,a}\frac{(c+1)(n-c+1)}2\ 3x\ P_{i,a,c+1}(x)P_{j-i,e-a,n-c+1}(x)\Big].$$
*Lean:* [`navigation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L34-L83), [`taps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L14), [`Wage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Powers.lean#L11).

**A5. Full correction and change of index set (outside the main-theorem closure).**
- *Full correction.* Summing A4 over $1\le j\le3e$ with $|t|\le W$ bounds $\mathcal R_t(V)_{e,n}$ from the inputs $T_1(e,n)$: lower orders, and higher ranks at order $e$.
- *Transport.* A kernel $\mu:I\times J\to\mathbb R$ acts on every leg by $(\mu F)(y)=\sum_xF(x)\prod_i\mu(x_i,y_i)$. It maps $\lVert\cdot\rVert_{d,\sigma}$ to $\lVert\cdot\rVert_{D,\sigma'}$ with constant equal to the product of its weighted row and column sums, the weights being $e^{E}$ with $E\ge0$. The condition is the geometric inequality $\sigma'D(y_i,y_j)\le\sigma d(x_i,x_j)+E(x_i,y_i)+E(x_j,y_j)$ on the support. Differences cost a factor $n+1$.
- *Combination.* At $t=1$ and rank $n\ge1$ this bounds the transported correction and the transported $V+\mathcal R_1(V)$.
- *Rank 0.* The rank-$0$ part is excluded throughout: it is the extensive vacuum term, which diverges with the volume.

*Lean:* [`postage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L88-L101), [`raft`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Pontoon.lean#L56), [`lighthouse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Pontoon.lean#L19-L20), [`street`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Pontoon.lean#L22-L23), [`Alley`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/PontChange.lean#L38-L43), [`Cot.raft`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/PontChange.lean#L72-L89), [`paving`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Ballot.lean#L34-L48), [`strict`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Ballot.lean#L25), [`allG`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Ballot.lean#L26).

**A6. Marked expansion (Proposition III.8.3).**

*Operations.* For $M$ marked and $G$ unmarked, the contraction $\Delta_\Gamma M$ is as in A1, and the join is $(M\star_\Gamma G)(x,y)=\mathrm{Sym}\sum_{u,v}\Gamma(u,v)G(v,y)M(u,x)$.

*Estimates.*
$$\lVert\Delta_\Gamma M\rVert_h\le\sup|\Gamma|\ \lVert M\rVert_h,\qquad\lVert M\star_\Gamma G\rVert_h\le\lVert M\rVert_h[\Gamma]_\sigma\lVert G\rVert_\sigma.$$
The first holds because $h(x)\le h(u,v,x)$. The second follows from $h(x,y)\le h(u,x)+d(u,v)+\mathrm{diam}_d(v,y)$, which uses that $h$ is 1-Lipschitz. The tree is rooted at the mark: the marked factor is summed over all its slots, and the new legs are paid by the row sums of the line and by the rooted norm of the unmarked factor at $v$. The sums converge absolutely in $\lVert\cdot\rVert^{\ast}_{k,\sigma}$, so the outputs are again linear functionals. The difference constants are $2$ and $3$, as in A3.

*Induction for (i).* Induct on $j$ as in A4.
- The contraction term uses the case $(j;e,n+2)$.
- Pair terms with $a=e$ vanish, because the unmarked factor then has order $0$.
- For $a\lt e$, the marked factor $M^{(i)}_{a,c+1}$ is bounded by the induction hypothesis, which needs marked inputs of order at most $a\lt e$. The unmarked factor $V^{(j-i)}_{e-a,n-c+1}$ is bounded by III.8.1, whose inputs lie in $\lbrace1\le a'\le e,\ 1\le r\le a'+2\rbrace$.

This gives (i) with output $P(W)U$.

*(ii) and (iii).* (ii) is proved as in A2. (iii) sums (i) over $j$, using $|t|^j\le W^j$.

*Consistency.* Evaluating a marked tensor at a fixed test function turns its contraction and join into those of A1.

*Lean:* [`Loom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L15-L17), [`Sings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L36), [`purse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Dosh.lean#L40), [`beam`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Hoard.lean#L15), [`Lyrics`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L37), [`Dyad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pair.lean#L11-L17), [`fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pocket.lean#L33), [`pocket`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pocket.lean#L28), [`cloak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pocket.lean#L75), [`Dyad.pocket`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pair.lean#L39-L48), [`Dyad.cloak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pair.lean#L52-L63), [`shim`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L23), [`shift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L24), [`rungs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L25-L26), [`skate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L31), [`climbs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L38-L40), [`across`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L85), [`journey`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L92-L127), [`Lit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L52), [`full`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L61-L68), [`shaker`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L71), [`cruising`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L72-L73), [`registry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Shed.lean#L25-L36), [`clocked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Shed.lean#L20-L21), [`reel_stamp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Shed.lean#L22-L23).

### B. Backward dependence cones

**B1. Product structure of the kernel.** Summing the bond tags out of the definition in III.1 gives
$$k_\beta(U,V)=\sum_t\prod_xq_x(U,t_x)\prod_bp_b(U,t;V_b).$$
- $t=(t_x)$ runs over the site (frame) tags, and $q_x(U,\cdot)$ is the frame mass at $x$.
- $p_b(U,t;\cdot)$ is a mixture, over predictor tags $r$ with weights summing to one, of normalised penalty densities centred at the predictions $Q_r(Y_b)$, which are built from the connector $Y_b$ of the bond:
$$p_b(U,t;v)=\sum_rw_r(Y_b)\ Z_\beta^{-1}\exp\big(-\beta\kappa\ \mathrm{price}(v\ Q_r(Y_b)^{-1})\big).$$
Here $\kappa\gt0$ is the kernel penalty of III.1, called $b$ in the main theorem.

Each $p_b$ has Haar integral $1$. The identity $\sum_rq_x(U,r)=1$ uses the patch hypothesis (the fallback set is nonempty). Hence
$$\mathcal BF(U)=\sum_t\Big(\prod_xq_x(U,t_x)\Big)S_F(U,t),\qquad S_F(U,t)=\int\prod_bp_b(U,t;V_b)F(V)\ dV.$$
Given $U$, the site tags are independent; given $U$ and the tags, the coarse links are independent. Adjacent bonds share a tag, so the links are not independent given $U$ alone.
*Lean:* [`density_parts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L39-L47), [`noiseLink`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L28), [`perLink`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L30-L32), [`perSite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L34-L35), [`noiseLink_mass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L51-L55), [`perLink_mass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L62-L67), [`site_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L83-L85), [`parts_back`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L87-L97).

**B2. Read sets.**

(a) *Frames.* The frame and the frame mass at $x$ depend only on $U$ on links inside $\Lambda_{10\rho}(\iota x)$. There are two branches:
- if a small-field test on transports in the patch passes, the frame is the minimiser, normalised at the centre, of an averaged price of transports between patch points, and the mass is uniform over all tags;
- otherwise the frame is the axial gauge built from the tag, and the mass is uniform over the admissible tags (those whose axial cost is bounded by a multiple of the plaquette cost in the patch).

All transports run along coordinate routes between points of $\Lambda_\rho$, of length at most $8\rho$, so they stay in $\Lambda_{9\rho}$. The minimiser is selected by a global choice. Its uniqueness (patch hypothesis) is what forces two configurations that agree on the window to select the same frame.

(b) *Connectors.* The connector of the bond from $x$ to $x+e_\mu$ depends only on the tags at both ends and on $U$ in $\Lambda_{10\rho}(\iota x)\cup\Lambda_{10\rho}(\iota(x+e_\mu))$. It is built from the two frames and from straight transports of length $L\le\rho$.

*Lean:* [`patch_dep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L115-L155), [`route_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L85-L99), [`visits_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L67-L83), [`site_dep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L160-L164), [`connector_dep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L166-L184), [`reach`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L65).

**B3. Locality (Proposition III.8.4).** Two elementary facts:
- (P1) if a function reads only the coordinates in a set $s$, its integral against a product of probability densities does not change when the densities outside $s$ are changed;
- (P2) the same holds for sums over products of probability vectors.

*Proof of (i).* If $F$ is local on $X$, it reads only bonds with both ends in $X$. By (P1) and B2(b), $S_F(U,t)$ depends only on $t|_X$ and on $U$ in the windows around $\iota X$. By (P2), the tags off $X$ sum out. By B2(a), $q_x$ for $x\in X$ reads $U$ only in $\Lambda_{10\rho}(\iota x)$.

*Proof of (ii).* If $y\in\Lambda_R(o)$ then $\iota y\in\Lambda_{LR}(\iota o)$, and $\Lambda_{10\rho}$ of a point of $\Lambda_{LR}(\iota o)$ lies in $\Lambda_{LR+10\rho}(\iota o)$. Gauge invariance follows from the covariance of $k_\beta$ and the invariance of Haar measure. The sup bound and measurability hold because $k_\beta$ is a probability kernel.

*Lean:* [`Reads`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Product.lean#L19), [`pi_ignores`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Product.lean#L88-L96), [`sum_ignores`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Product.lean#L137-L143), [`actualEdges`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L100), [`state_reads`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L107-L114), [`back_local`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L119-L136), [`window_embed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L52-L60), [`window_add`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L33-L42), [`back_natural`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L76-L84), [`back_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L41-L51), [`back_env`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L53-L55), [`back_cylinder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L156-L169).

**B4. Factorisation (Proposition III.8.5).**
- If $X\cap Y=\emptyset$, the bond sets read by $F$ and $G$ are disjoint, so $S_{FG}(U,t)=S_F(U,t)S_G(U,t)$ by Fubini.
- $S_F$ depends on $t|_X$ and $S_G$ on $t|_Y$, and the $q_x(U,\cdot)$ are probability vectors, so the sum over tags factorises.
- Induction over the cells of a tiling gives the finite-product version.
- Along the history, induct on $m$. By III.8.7(iii), each $\mathcal B_{k\to m}F_i$ lies in $\mathcal I$ of its own level-$h$ cell, so the one-step product formula applies at every step.
- The version for copies follows with III.8.6(iv).

*Lean:* [`pi_independent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Product.lean#L98-L109), [`sum_independent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Product.lean#L145-L156), [`back_factors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L141-L150), [`back_cells`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L21-L40), [`backTo_cells`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L43-L51), [`copy_window`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L57-L66), [`backTo_copies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L68-L76).

**B5. Iteration (Proposition III.8.6).** Induct on $m-k$, with $\mathcal B_{k\to m+1}=\mathcal B_m\circ\mathcal B_{k\to m}$.
- (i) and (ii) hold for one step because $k_\beta$ is a real probability kernel; (ii) is Fubini.
- (iii) is III.8.4(ii) at each step. The kernel hypotheses come from the block-control data, and $\iota(\iota_{h\to m}i)=\iota_{h\to m+1}i$.
- (iv) uses the lattice-symmetry covariance of each density.

*Lean:* [`backTo_next`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L32-L34), [`backTo_env`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L44-L47), [`backTo_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L49-L55), [`backTo_add`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L62-L67), [`backTo_const`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L57-L60), [`backTo_star`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L69-L73), [`back_dual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L88-L97), [`pushTo_integral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L81-L89), [`pushTo_dual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L92-L101), [`anchor_next`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L31-L45), [`backTo_local`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L105-L115), [`backTo_orient`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L117-L126), [`backTo_copy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L128-L147).

**B6. Physical size of the cone (Proposition III.8.7).**
- (i) $\tau_{m+1}\le30\frac{a_m}3(J_m+6)\le\frac23\tau_m$.
- (ii) One step gives $a_{m+1}\big(L_mr+10(J_{m+1}+3)L_m\big)=a_mr+10a_m(J_{m+1}+3)\le a_mr+\tau_m/3$. Adding $\tau_{m+1}\le\frac23\tau_m$ gives $a_{m+1}r'+\tau_{m+1}\le a_mr+\tau_m$, and one iterates.
- (iii) The cell of $i$ at level $m$ is exactly $\Lambda_{(D-1)/2}(\iota_{h\to m}i)$, with $D=L_h\cdots L_{m-1}$ odd and $a_mD=a_h$. By (ii) and room, $2a_mr_{k\to m}(r)\lt a_h-2\tau_m\lt a_mD$, so $2r_{k\to m}(r)\lt D$.
- (iv) $a_k\to0$ and $\tau_k\to0$.

*Lean:* [`expansion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L97), [`grows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L99), [`grows_next`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L103-L104), [`tail_next`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L110-L121), [`tail_zero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L123-L133), [`scales_next`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L135-L145), [`scales_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L147-L150), [`tiling_window`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L49-L85), [`window_fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L87-L91), [`room_fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L160-L169), [`plenty`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L155-L158).

**B7. Two consequences used downstream.**

(a) *Replicated differences (used by III.11).* Let $O$ be bounded and measurable at the finest level $N$, let $F\in\mathcal I(\Lambda_w(0))$ at level $k$ with $\mathrm{room}(h,k,w)$, and let $s$ be a finite set of level-$h$ sites. Then
$$Z_N\big\langle\prod_{i\in s}\mathrm{copy}_i(\mathcal B_{k\to N}F-O)\big\rangle_N=\sum_{l\subseteq s}\int\mathcal B^{\ast}_{k\to N}\Big[e^{-S_N}\prod_{i\in s\setminus l}(-\mathrm{copy}_iO)\Big]\prod_{i\in l}\mathrm{copy}_iF.$$
Here $\langle\cdot\rangle_N$, $Z_N$ and $e^{-S_N}$ are the normalised expectation, the partition function and the Boltzmann weight at level $N$ and coupling $\beta_{N,p,N}$ (probable reading of `moment`, `partition`, `bare`). Proof: expand the product, then apply III.8.5 for copies and III.8.6(ii).

(b) *Chessboard telescoping (used by III.13, VII.2).* Let $O_i,Z_i$ be observables in the central level-$h$ cell, translated to distinct level-$h$ points $a_i$. If the chessboard roots satisfy $\mathrm{root}(O_i)\le c_i$ and $\mathrm{root}(Z_i-O_i)\le e_i$, then
$$\Big|\big\langle\prod_iZ_i\circ\tau_{a_i}\big\rangle-\big\langle\prod_iO_i\circ\tau_{a_i}\big\rangle\Big|\le\prod_i(e_i+c_i)-\prod_ic_i.$$
Proof: expand $\prod_i(O_i+(Z_i-O_i))$ over subsets, and bound each term by the chessboard estimate $|\langle\prod_iF_i\circ\tau_{a_i}\rangle|\le\prod_i\mathrm{root}(F_i)$. This assumes reflection positivity (IV.1).

*Lean:* [`Joint.restored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Joint.lean#L102-L128), [`tariff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Telescope.lean#L34-L78); [`rooted_translates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Translate.lean#L104-L109).

## 5. Where the difficulty lies

* **Part A uses a classical mechanism** (the Polchinski equation and tree bounds). The content is the uniformity and the bookkeeping: one polynomial in one price $W$ for each $(j,e,n)$, valid for arbitrary index sets and pseudometrics, with Lipschitz differences at the same $\delta$. The input ranges matter. At the same order $e$ only strictly higher ranks enter; along the Laplacian chain, $V^{(j)}_{e,n}$ is driven by $V_{e,n+2j}$. This lets a consumer run a downward induction in rank at fixed order.
* **Rank 0.** The unmarked norm is silent at rank $0$, so the extensive vacuum term is excluded by design. The marked norm is unrooted and does control rank $0$, which is the normalised expectation of the insertion itself. This needs the localisation supplied by the height $h$. The exponent $\sigma\gt0$ enters three times: in the line weight, the diameter weight and the test-function weight $e^{-\sigma|y|}$.
* **Part B** requires tracking the read sets of the actual kernel, whose frame is chosen by a global minimisation with a fallback. Uniqueness of the minimiser is what makes the selected frame local. The read radius $10\rho$ is loose, since the routes stay in $\Lambda_{9\rho}$.
* **The factorisation is exact** for all bounded measurable observables. It is conditional independence given the fine field, built into the kernel. The likelihood is a product over coarse sites of tag laws, so the site tags are independent given $U$ by construction, and the bonds are independent given the tags. The patch hypothesis enters only through the normalisation of the frame masses and the uniqueness of the minimiser. It is not a decoupling under the fine Gibbs measure: $\mathcal BF$ and $\mathcal BG$ may read overlapping fine windows.
* **Weaker than one might expect.**
  * Part A is fixed order in $g$, with no resummation.
  * Part B gives cones, not decay outside them.
  * The cone radius grows by a factor $L_m$ per step in lattice units; only its physical size stays bounded, by $a_kr+30a_k(J_k+5)$. This is small compared with a level-$h$ cell only for $k$ large (room, plenty).

## 6. Notation

| Written proof | Lean | Meaning |
|---|---|---|
| $I$, $d$, $\mathrm{diam}_d$ | [`Ground`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L20-L24), [`Ground.radius`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L35) | cells with a pseudometric; largest distance within a tuple |
| rank-$n$ tensor | [`Tape`, `Flake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean) | function on $I^n$, ordered slots |
| $\lVert F\rVert_\sigma\le p$ | [`Held`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L61) | rooted weighted $\ell^1$ bound (empty at rank $0$) |
| $\Gamma$, $[\Gamma]_\sigma\le B$ | [`Line`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lines.lean#L14), [`Wire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lines.lean#L18-L22) | propagator; weighted row and column sums |
| $(W,\delta)$-controlled | [`Cot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L15-L19), [`WireCot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L21-L24) | both at most $W$, difference at most $W\delta$ |
| polynomial majorant | [`Wage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Powers.lean#L11) | $0\le P(x)\le Cx^t$ for $x\ge1$ |
| $V=(V_{e,n})$, eligible | `Grain`, [`Eligible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L17-L20) | formal potential |
| $\Delta_\Gamma$, $\star_\Gamma$, $\mathrm{Sym}$ | [`lap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lap.lean#L17), [`bridge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L21), [`bleach`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Shuffle.lean#L38) | contraction, join, symmetrisation |
| $V^{(j)}$ | [`burn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L46) | heat coefficient |
| $T_j(e,n)$ | [`taps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L14) (`Residual` is $T_1$) | admissible inputs |
| $\mathcal E_t$, $\mathcal R_t$ | [`ember`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L74), [`cinder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L75) | full series; positive-time part |
| $h$, $h(x)$ | [`Loom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L15-L17), [`Loom.cage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L18) | height; its maximum over a tuple |
| $\lVert f\rVert_{k,\sigma}$, $\lVert\lambda\rVert^{\ast}_{k,\sigma}$ | [`beam`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Hoard.lean#L15), [`purse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Dosh.lean#L40) | weighted $C^k$ norm of test functions; dual norm |
| $\lVert M\rVert_h$; $(U,\delta)$-controlled | [`Sings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L36), [`Dyad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pair.lean#L11-L17) | marked norm; marked pairs |
| marked $\Delta_\Gamma$, $\star_\Gamma$ | [`pocket`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pocket.lean#L28), [`cloak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pocket.lean#L75) | marked contraction and join |
| $M^{(j)}$; $\sum_{j\ge1}t^jM^{(j)}$ | [`skate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L31); [`shaker`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L71) | marked heat coefficients; positive-time part |
| $k_\beta$ | [`StepData.density`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L71-L72) | conditional density of the coarse field given the fine field |
| $\mathcal B$ | [`back`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L21-L22) | one-step pull-back |
| $q_x$, $p_b$ | [`perSite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L34-L35), [`perLink`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L30-L32) | tag law at a site; link law at a bond |
| $\Lambda_r(x)$ | [`window`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L22-L23) | periodic $\ell^\infty$ box |
| $10\rho$; $\rho=(J+3)L$ | [`reach`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L65); [`Patch.radius`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L51) | read radius; patch radius |
| $\mathcal I(X)$ | [`Interior`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L109-L113) | gauge invariant, measurable, bounded, local on $X$ |
| $\mathcal B_{k\to m}$, $\mathcal B^{\ast}_{k\to m}$ | [`backTo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L24-L25), [`pushTo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L27-L29) | iterated pull-back; push-forward |
| $\iota_{h\to m}$ | [`anchor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L24) | image of a level-$h$ site at level $m$ |
| $r_{k\to m}(r)$ | [`grows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L99), [`expansion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L97) | cone radius in lattice units |
| $\tau_m$ | [`tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L107) | physical cone budget $30a_m(J_m+5)$ |
| $\mathrm{room}(h,k,r)$ | [`room`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L153) | $2(a_kr+\tau_k)\lt a_h$ |

## 7. Open points for the writer

1. **Consumers.**
   - *Part A.* In the main-theorem closure, Part A is used only through III.8.3. `registry` feeds III.14 ([`Necks.slushy_uniform`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Prior.lean#L61-L95)); `full`, `off`, `appropriate` and `smoulder` are also used in III.14 (`Trickle`, `Weald`, `Glyph`). III.8.1 enters only through III.8.3.
   - *Outside the closure.* `postage`, `paving` and `Cot.raft` (Step A5) are not in the closure; III.14 uses the definitions `strict` and `allG` without these bounds.
   - *Part B.* It is used by III.11, III.13 and VII.2 (`backTo`, `backTo_local`, `backTo_cells`, `backTo_copies`, `room`, `plenty`, `pushTo_dual`, and the two lemmas of B7), and by VII.4 (`room`).
   - *To check in III.14.* How $W$, $\delta$, $\sigma$ and the height $h$ are chosen; the docstring of `navigation` says that δ "can measure the cutoff power". Also that the covariance satisfies the line bound $[\Gamma]_\sigma\le W$ (III.3).
2. **Identification of Part A.** That the $V^{(j)}$ are the cumulant coefficients, for symmetric $\Gamma$, is proved in III.14 (Step A1). That the marked series is the normalised expectation of the insertion is announced in the docstring of `Skiff/Spoke.lean` ("proof this gives the intended normalized transfer in subsequent milestones"); the proof was not located.
3. **Relation to III.5.** "Connected activities" in the title refers to the connected (logarithmic) expansion of formal power series in $g$, not to the polymer activities of the cluster expansion. How these coefficients enter the polymer bounds is decided in III.14 (probable).
4. **Not read.**
   - The marked transport of `Skiff/Pave.lean`, the marked analogue of A5: only the statements of `playing` and `Parade.play` were read.
   - In `GRID_APPROXIMATION`: `Birth`, `Nil`, `Candidates`, `Picture`, `Estimate` and `Attach*`. These are applications used by III.11 and VII.2; statements only.
   - The chessboard input `planted` (IV.1).
5. **Support packages (about 1,970 lines).** By their docstrings they serve the algebra of formal series and are assigned to III.8 only by the clustering of the dependency graph; a written proof should place them with their consumers:
   - `Carrel`: path templates, period evaluation, linear-curl leading term;
   - `Camera`: jets of chart germs;
   - `Room`: field pull-backs, Jacobians, centred Wick;
   - `Rudder`: symmetric stable lifts;
   - `Pert/Bulk`: the weighted $\ell^1$ bookkeeping behind the rooted norm;
   - `AnalyticNext/QUARTIC_MATCH`: used by III.10, logically with III.7;
   - also `Packets`, `Isles`, `Anchor`, parts of `Cloud` and `Glyph`, `WilsonBulk/Web`, `ProofPorts/…`.

**Builds on:** [I.1](I-1.md), [III.1](III-1.md), [IV.1](IV-1.md), [III.16](III-16.md), [II.2](II-2.md), [II.1](II-1.md), [III.6](III-6.md).

**Used by:** [III.14](III-14.md), [VII.2](VII-2.md), [III.13](III-13.md), [III.4](III-4.md), [III.11](III-11.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| work package [`YM/Push/GRID_APPROXIMATION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION) | 1,093 |
| work package [`YM/RG08/Carrel/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Carrel) | 488 |
| work package [`YM/RG08/Forms/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms) | 412 |
| work package [`YM/RG08/Skiff/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff) | 306 |
| work package [`YM/AnalyticNext/QUARTIC_MATCH/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/QUARTIC_MATCH) | 302 |
| work package [`YM/Pert/Bulk/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk) | 289 |
| work package [`YM/RG08/Jetty/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty) | 227 |
| work package [`YM/RG08/Camera/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Camera) | 194 |
| work package [`YM/RG08/Room/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room) | 152 |
| work package [`YM/RG08/Steam/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam) | 138 |
| work package [`YM/RG08/Rudder/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rudder) | 136 |
| work package [`YM/RG08/Packets/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets) | 94 |
| work package [`YM/WilsonBulk/Web/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Web) | 78 |
| work package [`YM/RG08/Isles/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Isles) | 68 |
| work package [`YM/RG08/Glyph/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Glyph) | 66 |
| work package [`YM/RG08/Anchor/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Anchor) | 43 |
| work package [`YM/ProofPorts/GRID_REAL_MODELS_ESTIMATES_20261012/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProofPorts/GRID_REAL_MODELS_ESTIMATES_20261012) | 34 |
| work package [`YM/RG08/Cloud/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Cloud) | 27 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **III.8.1** [`navigation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L34-L83) *(key result)* — For fixed orders, the formal connected heat-propagation map is bounded in weighted-norm (Cot) estimates by a polynomial in the input width W, uniformly in the cell count, scale and stage, for both absolute values and differences.
- **III.8.2** [`journey`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L92-L127) *(key result)* — There is a polynomial such that differences in the inputs of the skate recursion are controlled by a polynomially larger difference in outputs, uniformly in geometry.
- **III.8.3** [`back_factors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L141-L150) *(numbered result)* — The back-transformation of a product of locally supported observables on disjoint regions factors into the product of back-transformations.
- **III.8.4** [`back_cylinder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L156-L169) *(numbered result)* — Under gauge covariance, pulling back a local observable supported in a window yields one supported in an enlarged fine window.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

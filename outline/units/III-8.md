# III.8. Connected activities and backward dependence cones

*Part III — Ultraviolet construction (renormalization group).*

Explains connected activity expansions and the regions of earlier fields on which an observable depends.

**Status: edited.** Checked against the linked Lean and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [← Previous: III.7](III-7.md) · [Next: III.9 →](III-9.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** [`YM/RG08/Steam/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam), [`YM/RG08/Forms/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms), [`YM/RG08/Skiff/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff), [`YM/RG08/Jetty/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty), [`YM/Push/GRID_APPROXIMATION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION). The support packages are listed in §7. **Size:** 4,147 lines in the source allocation:

- 1,093 lines for the backward cones (`GRID_APPROXIMATION`);
- 1,083 lines for the connected heat expansion (`Steam` 138, `Forms` 412, `Skiff` 306, `Jetty` 227);
- about 1,970 lines in the support packages listed in §7.

The unit has two independent halves.

* **Part A, connected activities.** Bounds at fixed order for a recursive heat expansion, organised by powers of the coupling $g$, the heat time $t$ and the field. For finite index sets and symmetric inputs, its unmarked coefficients satisfy the formal equation for $\log\mathbb E_{t\Gamma}e^V$. A second recursion treats one marked insertion. Both admit polynomial bounds in an input size $W$ and Lipschitz bounds for differences, uniform in the index set and geometry.
* **Part B, backward dependence cones.** The pull-back of a coarse observable through the block-spin kernel of III.1 is its conditional expectation given the fine field. It is local in an explicit fine window, and pull-backs of observables on disjoint coarse sets multiply exactly. Along a history the radius of the window grows by an explicit affine map whose increments, in physical units, decay geometrically.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

### Part A

*Conventions.*

- $I$ is an arbitrary set (of cells), $d$ is a pseudometric on $I$, and $\sigma\ge0$.
- A rank-$n$ tensor is a function $F:I^n\to\mathbb R$ with ordered slots and no symmetry factors. For a tuple $x\in I^n$, $\mathrm{diam}_d(x)=\max(0,\max_{i,j}d(x_i,x_j))$, with value $0$ for the empty tuple.
- The *rooted norm* is
$$\lVert F\rVert_{\sigma}=\max_{1\le i\le n}\ \sup_{z\in I}\ \sum_{x\in I^n,\ x_i=z}|F(x)|\ e^{\sigma\ \mathrm{diam}_d(x)}\ \in[0,\infty].$$
For $n=0$ set $\lVert F\rVert_\sigma=0$: a rooted bound imposes no condition on the scalar coefficient. Suprema over empty index sets also have value $0$.

- A *propagator* is any $\Gamma:I\times I\to\mathbb R$; symmetry is not assumed. It is measured by its weighted row and column sums,
$$[\Gamma]_\sigma=\max\Big(\sup_u\sum_v|\Gamma(u,v)|e^{\sigma d(u,v)},\ \sup_v\sum_u|\Gamma(u,v)|e^{\sigma d(u,v)}\Big).$$
- A pair $(F,F')$ is *$(W,\delta)$-controlled* if $\lVert F\rVert_\sigma\le W$, $\lVert F'\rVert_\sigma\le W$ and $\lVert F-F'\rVert_\sigma\le W\delta$. The same definition applies to a pair of propagators, with $[\cdot]_\sigma$ in place of $\lVert\cdot\rVert_\sigma$.
- A *polynomial majorant* is a function $P$ with $0\le P(x)\le Cx^t$ for all $x\ge1$, for some $C\ge0$ and $t\in\mathbb N$. The class is closed under sums and products.

*Formal potentials.* A formal potential is a family $V=(V_{e,n})_{e,n\ge0}$ of rank-$n$ tensors; $V_{e,n}$ is the coefficient of $g^e$ with $n$ field variables. In Gaussian applications the variables may include spectators, on which $\Gamma$ vanishes. $V$ is *eligible* if $V_{0,n}=0$ for all $n$, and $V_{e,n}\ne0$ implies $n\le e+2$ and $e+n$ even. Eligibility does not require symmetry.

*Heat coefficients.* The heat coefficients $V^{(j)}=V^{(j)}(\Gamma,V)$ are defined by $V^{(0)}=V$ and

$$V^{(j+1)}_{e,n}=\frac1{j+1}\Big[\binom{n+2}2\Delta_\Gamma V^{(j)}_{e,n+2}+\sum_{c=0}^n\sum_{i=0}^j\sum_{a=0}^e\frac{(c+1)(n-c+1)}2\ V^{(i)}_{a,c+1}\star_\Gamma V^{(j-i)}_{e-a,n-c+1}\Big].\qquad(\mathrm{A1})$$

Here $\Delta_\Gamma$ (contraction) and $\star_\Gamma$ (join) are defined in Step A1. For infinite $I$, the recursions assign value $0$ to a sum that is not summable. The bounds below justify the required sums absolutely for positive-rank unmarked outputs and for all marked outputs; they make no convergence assertion for unmarked scalar contractions. The formal heat-equation interpretation for finite $I$ and symmetric $V,\Gamma$ is given in A1.

**Proposition III.8.1 (bounds at fixed order for the connected heat coefficients).** Fix $j,e,n\in\mathbb N$ and put
$$T_j(e,n)=\lbrace(a,r):1\le a\lt e,\ 1\le r\le a+2\rbrace\cup\lbrace(e,r):1\le e,\ n\lt r\le e+2\rbrace,$$
enlarged by $(e,n)$ when $j=0$, $e\ge1$ and $1\le n\le e+2$. There is a polynomial majorant $P$ with the following property. Let $I$ be a set, $d$ a pseudometric on it, $\sigma\ge0$, $\delta\ge0$, $W\ge1$, $V,V'$ eligible and $\Gamma,\Gamma'$ propagators. Suppose $(\Gamma,\Gamma')$ is $(W,\delta)$-controlled, and so is $(V_{a,r},V'_{a,r})$ for every $(a,r)\in T_j(e,n)$. Then $\big(V^{(j)}_{e,n}(\Gamma,V),\ V^{(j)}_{e,n}(\Gamma',V')\big)$ is $(P(W),\delta)$-controlled.

- $P$ depends on $(j,e,n)$ only. It does not depend on $I$, $d$, $\sigma$ or $\delta$, hence not on the number of cells, the period, the scale or the stage at which it is applied.
- For $j\ge1$, inputs at the same order $e$ have strictly higher rank.
- For $n=0$ the conclusion is empty.

*Status:* theorem.
*Lean:* [`YM.RG08.Steam.navigation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L34-L83), input range [`taps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L14), norms [`Held`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L61), [`Wire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lines.lean#L18-L22), [`Cot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L15-L19), [`WireCot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L21-L24), majorants [`Wage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Powers.lean#L11).

**Proposition III.8.2 (support; the heat-time series is finite).** Let $V$ be eligible and $\Gamma$ arbitrary.

- Every $V^{(j)}$ is eligible.
- $V^{(j)}_{e,n}\ne0$ implies $n+2j\le3e$.
- For $j\ge1$, $V^{(j)}$ is symmetric under permutations of its slots.

Hence, at fixed $(e,n)$, the heat-time series is zero if $n\gt3e$ and otherwise is a polynomial in $t$ of degree at most $\lfloor(3e-n)/2\rfloor$. For every real $t$ the complete series is
$$\mathcal E_t(V)_{e,n}=\sum_{j=0}^{3e}t^jV^{(j)}_{e,n}=V_{e,n}+\mathcal R_t(V)_{e,n},\qquad\mathcal R_t(V)_{e,n}=\sum_{j=1}^{3e}t^jV^{(j)}_{e,n},$$
and $\mathcal E_t(V)$ is eligible.
*Status:* theorem.
*Lean:* [`preserves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L50-L64), [`live`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L66-L70), [`off`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L72), [`coal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L65-L75), [`ember`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L74), [`cinder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L75), [`smoulder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L77-L80), [`appropriate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L82-L89).

**Proposition III.8.3 (expansion with one marked insertion).**

*Test functions and their norms.* Let $\mathcal S$ be the real vector space of smooth real-valued functions on $\mathbb R^4$ whose derivatives of every order have polynomial growth. For $k\in\mathbb N$ and $\sigma\gt0$, using the Euclidean norm $|y|$, put
$$\lVert f\rVert_{k,\sigma}=\max_{|\alpha|\le k}\sup_{y\in\mathbb R^4}|\partial^\alpha f(y)|e^{-\sigma|y|},$$
and, for a real-linear functional $\lambda$ on $\mathcal S$, $\lVert\lambda\rVert^{\ast}_{k,\sigma}=\sup\lbrace|\lambda(f)|:\lVert f\rVert_{k,\sigma}\le1\rbrace$.

*Marked tensors and the marked norm.* A marked rank-$n$ tensor assigns to each $x\in I^n$ a real-linear functional $M(x)$ on $\mathcal S$. Let $h:I\to[0,\infty)$ be 1-Lipschitz for $d$ (a height, for instance a distance to the insertion), and set $h(x)=\max(0,\max_ih(x_i))$ for a tuple $x$. The marked norm is the unrooted weighted $\ell^1$ norm
$$\lVert M\rVert_{h}=\sum_{x\in I^n}\lVert M(x)\rVert^{\ast}_{k,\sigma}\ e^{\sigma h(x)}.$$
Unlike the rooted norm, it gives a genuine bound for $n=0$. A pair $(M,M')$ is $(U,\delta)$-controlled if $\lVert M\rVert_h\le U$, $\lVert M'\rVert_h\le U$ and $\lVert M-M'\rVert_h\le U\delta$.

*Marked heat coefficients.* For a marked series $F=(F_{e,n})$ they are $M^{(0)}=F$ and
$$M^{(j+1)}_{e,n}=\frac1{j+1}\Big[\binom{n+2}2\Delta_\Gamma M^{(j)}_{e,n+2}+\sum_{c=0}^n\sum_{i=0}^j\sum_{a=0}^e(c+1)(n-c+1)\ M^{(i)}_{a,c+1}\star_\Gamma V^{(j-i)}_{e-a,n-c+1}\Big].$$
The cross term has twice the coefficient of its unmarked counterpart. The recursive outputs are initially maps on test functions; the bounds below prove that they are real-linear. Their interpretation as a normalised Gaussian expectation is discussed in §7.

(i) *Fixed-order bound.* Fix $j,e,n$. There is a polynomial majorant $P$ with the following property, for all $I,d,h$ as above, $\sigma\gt0$, $k\in\mathbb N$, $\delta\ge0$, $W\ge1$, $U\ge0$, eligible $V,V'$, propagators $\Gamma,\Gamma'$ and marked series $F,F'$. Assume:

- $(\Gamma,\Gamma')$ is $(W,\delta)$-controlled;
- the unmarked inputs $(V_{a,r},V'_{a,r})$ with $1\le a\le e$ and $1\le r\le a+2$ are $(W,\delta)$-controlled;
- the marked inputs $(F_{a,r},F'_{a,r})$ are $(U,\delta)$-controlled for: $a\lt e$ (any $r$); or $a=e$ and $r\gt n$; or $j=0$ and $(a,r)=(e,n)$.

Then $\big(M^{(j)}_{e,n}(\Gamma,V,F),\ M^{(j)}_{e,n}(\Gamma',V',F')\big)$ is $(P(W)U,\delta)$-controlled, with real-linear output values. The majorant depends only on $(j,e,n)$; in particular it is independent of $k,\sigma$ and the height $h$.

(ii) *Support.* Let $l\in\mathbb N$. If $V$ is eligible and $F_{a,r}\ne0$ implies $r\le l+a$ for every $a,r$, then $M^{(j)}_{e,n}\ne0$ implies $n+2j\le l+3e$ and $n\le l+e$.

(iii) *Full positive-time part.* Fix $l,e,n$. There is a polynomial majorant $P$ such that the pair
$$\sum_{j=1}^{l+3e}t^jM^{(j)}_{e,n}(\Gamma,V,F),\qquad\sum_{j=1}^{l+3e}t^jM^{(j)}_{e,n}(\Gamma',V',F')$$
is $(P(W)U,\delta)$-controlled for every real $t$ with $|t|\le W$. The hypotheses are those of (i), with marked inputs required only for $a\lt e$, or $a=e$ and $r\gt n$. By (ii), this is the whole positive-time part when both $F_{a,r}$ and $F'_{a,r}$ vanish for $r\gt l+a$, for every $a,r$.

*Status:* theorem. This is the form in which the main theorem uses Part A (in III.14).
*Lean:* [`journey`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L92-L127), [`full`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L61-L68), [`registry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Shed.lean#L25-L36). Test space: [`Pearl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Cube.lean#L24). Norms: [`Sings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L36), [`Dyad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pair.lean#L11-L17), [`purse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Dosh.lean#L40), [`beam`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Hoard.lean#L15), [`Loom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L15-L17), [`fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pocket.lean#L33).

### Part B

*Setting.*

- The gauge group is as in I.1, with its Haar probability measure.
- A block-spin step (III.1) maps a fine periodic lattice to a coarse one with odd block factor $L\ge3$. The coarse site $x$ sits at the fine site $\iota x$.
- The kernel is built from patches: boxes of radius $\rho=(J+3)L$ around the points $\iota x$, where the stage satisfies $J\ge4$.
- $k_\beta(U,V)$ is the conditional density of the coarse configuration $V$ given the fine configuration $U$, with respect to the product Haar probability measure.
- The pull-back of a bounded measurable complex function $F$ of the coarse configuration is
$$(\mathcal BF)(U)=\int k_\beta(U,V)F(V)\ dV.$$
- For $r\in\mathbb N$, $\Lambda_r(x)$ is the periodic $\ell^\infty$ box of radius $r$ about $x$; periodic images are allowed. All lattice radii below are nonnegative integers.
- $F$ is *local on* $X$ if $F(V)$ depends only on the links of $V$ with both endpoints in $X$.
- $\mathcal I(X)$ is the class of observables that are gauge invariant, measurable, bounded and local on $X$ (IV.1).

*Patch hypothesis (III.1).* The minimising frame and the best predictor are unique whenever their respective branches are used. The set of admissible fallback frame tags is nonempty for every cover configuration.

**Proposition III.8.4 (one step: the pull-back is local).** Assume the patch hypothesis, and let $\beta\in\mathbb R$.

(i) Let $F$ be a bounded measurable complex function local on a coarse set $X$, and let $Y$ be a set of fine sites containing $\Lambda_{10\rho}(\iota x)$ for every $x\in X$. Then $\mathcal BF$ is local on $Y$.

(ii) Assume moreover that the density is gauge covariant, $k_\beta(U^{g},V^{g\circ\iota})=k_\beta(U,V)$ for every fine gauge transformation $g$. If $F\in\mathcal I(\Lambda_R(o))$, then $\mathcal BF\in\mathcal I(\Lambda_{LR+10\rho}(\iota o))$, with the same sup bound.

*Status:* theorem. III.1 supplies these kernel properties for its chosen kernel parameters: the patch hypothesis is [`Next.Foundations.branches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L70-L71). Gauge covariance follows from [`StepData.covary`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L56-L67). For each step of a history, both are fields of the block-control data built in [`Calendar.blocks_go`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L70-L72).
*Lean:* [`back_local`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L119-L136), [`back_cylinder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L156-L169).

**Proposition III.8.5 (exact factorisation).** Assume the patch hypothesis.

- If $F,G$ are bounded, measurable and local on disjoint coarse sets $X,Y$, then $\mathcal B(FG)=\mathcal BF\cdot\mathcal BG$ for every $\beta$.
- In particular $\mathcal B\prod_{i\in l}F_i=\prod_{i\in l}\mathcal BF_i$ when $F_i\in\mathcal I(C_i)$ for distinct cells $C_i$ of a tiling.
- Along a history with the kernel properties stated below, fix $N,p$ and let $h\le k\le m$. Let $l$ be a finite set of level-$h$ sites and $F_i\in\mathcal I(\Lambda_r(\iota_{h\to k}i))$ at level $k$ for $i\in l$. If $\mathrm{room}(h,k,r)$ holds, then $\mathcal B_{k\to m}\prod_{i\in l}F_i=\prod_{i\in l}\mathcal B_{k\to m}F_i$.
- The same holds for the product of the tile copies of one $F\in\mathcal I(\Lambda_r(0))$ (translated, reflected, and complex-conjugated on odd tiles), the copies on the right being taken at level $m$.

*Status:* theorem. It is an identity, not an estimate, and the fine windows of $\mathcal BF$ and $\mathcal BG$ may overlap.
*Lean:* [`back_factors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L141-L150), [`back_cells`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L21-L40), [`backTo_cells`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L43-L51), [`backTo_copies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L68-L76).

*History.*

- Levels $m=0,1,2,\dots$ get finer as $m$ grows. Level $m$ has spacing $a_m$.
- The step from level $m+1$ to level $m$ has block factor $L_m$ (odd, $\ge3$), so $a_{m+1}=a_m/L_m$. Its patch radius is $\rho_m=(J_{m+1}+3)L_m$, where $J_m\ge4$ and $J_{m+1}\le J_m+1$. The inverse couplings are $\beta_{N,p,m}$.
- Every step satisfies the patch hypothesis, gauge covariance and covariance under lattice translations and signed permutations of the axes. These are part of the history data supplied by III.1.
- $\mathcal B_m$ is the pull-back through this step at $\beta_{N,p,m+1}$. Put $\mathcal B_{k\to m}=\mathcal B_{m-1}\circ\dots\circ\mathcal B_k$ (with $\mathcal B_{k\to k}=\mathrm{id}$), and let $\mathcal B^{\ast}_{k\to m}$ be the composite of the push-forwards of III.1 from level $m$ to level $k$.
- For a level-$h$ site $i$ and $m\ge h$, $\iota_{h\to m}i$ is its image at level $m$.
- The cone radius is $r_{k\to k}(r)=r$, $r_{k\to m+1}(r)=L_m\ r_{k\to m}(r)+10(J_{m+1}+3)L_m$.
- The physical budget is $\tau_m=30a_m(J_m+5)$.
- $\mathrm{room}(h,k,r)$ is the condition $2(a_kr+\tau_k)\lt a_h$.

**Proposition III.8.6 (pull-back along the history).** For all $N,p$ and $k\le m$:

(i) $\mathcal B_{k\to m}$ maps bounded measurable functions to bounded measurable functions, with $\sup|\mathcal B_{k\to m}F|\le\sup|F|$. It is linear, fixes constants and commutes with complex conjugation.

(ii) For every bounded measurable complex $F$ at level $k$ and every integrable complex $g$ at level $m$, $\int(\mathcal B^{\ast}_{k\to m}g)F=\int g\ \mathcal B_{k\to m}F$ and $\int\mathcal B^{\ast}_{k\to m}g=\int g$. All integrals here use the Haar probability measures at their respective levels; the push-forward is integrable.

(iii) Let $h\le k$ and $i$ a level-$h$ site. If $F\in\mathcal I(\Lambda_r(\iota_{h\to k}i))$, then $\mathcal B_{k\to m}F\in\mathcal I(\Lambda_{r_{k\to m}(r)}(\iota_{h\to m}i))$.

(iv) On bounded measurable functions, $\mathcal B_{k\to m}$ commutes with signed permutations of the axes followed by translation by $\iota_{h\to\cdot}i$, for $h\le k$ and each level-$h$ site $i$, and with the copy maps of the centred level-$h$ tiling.

*Status:* theorem. The hypotheses on the kernels are supplied by the history.
*Lean:* [`backTo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L24-L25), [`pushTo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L27-L29), [`backTo_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L49-L55), [`backTo_env`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L44-L47), [`backTo_add`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L62-L67), [`backTo_const`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L57-L60), [`backTo_star`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L69-L73), [`pushTo_dual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L92-L101), [`pushTo_integral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L81-L89), [`backTo_local`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L105-L115), [`backTo_orient`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L117-L126), [`backTo_copy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L128-L147).

**Proposition III.8.7 (size of the cone in physical units).** For the history above and all nonnegative integer levels and radii:

(i) $\tau_{m+1}\le\frac23\tau_m$; hence $\tau_m\le(2/3)^m\tau_0\to0$.

(ii) $a_m\ r_{k\to m}(r)+\tau_m\le a_kr+\tau_k$ for $k\le m$. Thus an observable of lattice radius $r$ at level $k$ has, at every finer level, a backward cone of physical radius at most $a_kr+\tau_k$, uniformly in $m$, $N$ and $p$.

(iii) If $h\le k$ and $\mathrm{room}(h,k,r)$ holds, then for every $m\ge k$ and every level-$h$ site $i$, the box $\Lambda_{r_{k\to m}(r)}(\iota_{h\to m}i)$ lies in the cell of $i$ of the centred level-$h$ tiling at level $m$. That cell has $L_h\cdots L_{m-1}$ sites per side, i.e. physical side $a_h$.

(iv) For fixed $h$ and $r$, $\mathrm{room}(h,k,r)$ holds for all sufficiently large $k\ge h$.

*Status:* theorem.
*Lean:* [`tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L107), [`tail_next`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L110-L121), [`tail_zero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L123-L133), [`scales_next`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L135-L145), [`scales_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L147-L150), [`room`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L153), [`room_fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L160-L169), [`plenty`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L155-L158).

<a id="unit-inputs"></a>

## 2. What it uses

* **III.1 (block-spin step, history).**
  * *The kernel.* $k_\beta$ ([`StepData.density`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L71-L72)) is a sum over site tags and bond tags of a [`likelihood`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L49-L51) times a product over bonds of normalised penalty densities. The likelihood is a product over sites of frame masses times a product over bonds of predictor masses.
  * *Frames and patches.* [`Patch.frame`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L153-L155), [`Patch.frameMass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L148-L151), [`StepData.connector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L39-L42), and the patch radius [`Patch.radius`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L51) $=(J+3)L$.
  * *Patch hypothesis and kernel properties.* The patch hypothesis [`Patch.Branches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185) is proved in [`Next.Foundations.branches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L70-L71). Also used: [`frameMass_sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L127-L136); [`StepData.isKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L203-L208) (positivity, measurability, boundedness, mass one); the push-forward [`StepData.push`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L77-L79).
  * *The history.* [`History`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L204-L206), [`Levels`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131-L134), [`Calendar.Fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L97-L118) ($J_{m+1}\le J_m+1$), [`Levels.transition_mass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L158-L159). The per-step [`Calendar.BlockControl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L120-L128) holds the patch hypothesis and the lattice-symmetry and gauge covariance of each density; it is constructed in [`Calendar.blocks_go`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L70-L72).
* **I.1.**
  * Periodic lattices, links, Haar measure, gauge transformations, transport along routes, and locality [`LocalOn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L196-L197).
  * The spacing schedule [`Schedule`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L28-L34): $L_m$ odd and $\ge3$; [`a_step`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L103-L104) ($a_{m+1}=a_m/L_m$); [`shrinks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L108-L109) ($a_m\to0$); [`embeds_scale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L184-L189) ($a_m\ L_h\cdots L_{m-1}=a_h$).
* **IV.1.** Tilings, cells and copies; the class [`Interior`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L109-L113) $=\mathcal I$; and, in Step B7 only, the chessboard root [`rootTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226-L227) and the chessboard bound [`Tiling.planted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Embedded.lean#L25-L38). Its reflection-positivity hypotheses are packaged in [`Seam`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L14-L19) and proved for $\beta\ge0$ in [`laws`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L21-L24).
* **Part A is an abstract estimate.** The consumer, III.14, supplies $V$, $\Gamma$ and the bounds $W,\delta$. The weighted $\ell^1$ estimates behind the rooted norm come from the support packages listed in §7. The covariance used by III.14 is discussed there.
* **Standard mathematics.**
  * *Part A.* The formal Hamilton–Jacobi heat equation, often called the Polchinski equation, generates connected diagrams by contractions and joins. For finite $I$ and symmetric inputs, put $W_t(\phi)=\log\mathbb E_{t\Gamma}e^{V(g,\phi+\zeta)}$, with expectation interpreted by Wick's rule. Then $\partial_tW=\tfrac12\sum_{u,v}\Gamma(u,v)(\partial_u\partial_vW+\partial_uW\,\partial_vW)$. Rooted coefficient bounds give a direct inductive estimate for this equation. Background references include Polchinski, Nucl. Phys. B 231 (1984) 269; Brydges–Kennedy, J. Stat. Phys. 48 (1987) 19; Salmhofer, *Renormalization: an introduction*, Springer 1999; and Brydges, *Lectures on the renormalisation group*, IAS/Park City Math. Ser. 16, 2009.
  * *Part B.* Conditional expectation for a Markov kernel; Fubini for product measures and for sums over products of probability vectors. The model is Bałaban's block averaging (Comm. Math. Phys. 98 (1985) 17); the kernel here is the probabilistic one of III.1.
  * *Step B7.* The chessboard estimate (Fröhlich–Israel–Lieb–Simon, Comm. Math. Phys. 62 (1978) 1).
* **Imported constants and assumptions.**
  * The patch radius $(J+3)L$ (III.1).
  * $L_m\ge3$ and $J_{m+1}\le J_m+1$ (I.1, III.1).
  * The patch hypothesis is assumed in III.8.4–III.8.5; gauge covariance is also assumed in III.8.4(ii). III.1 supplies these properties for its chosen kernels, together with lattice-symmetry covariance for iteration.
  * The constants $10$ (read radius), $8$ (route length), $30$ and $5$ (in $\tau_m$) are internal.
  * Part A imports no constants.

<a id="unit-strategy"></a>

## 3. Strategy

**Part A.** Each step of (A1) either contracts two slots of one coefficient or joins two coefficients by a propagator line. The rooted norm absorbs the internal sums without changing $\sigma$: the output diameter is bounded by the input diameters plus the line length, so the exponential weights multiply. For a marked coefficient, the height inequality plays the same role, with the marked factor summed over all its slots.

Induction on heat order gives a polynomial majorant in $W$. Telescoping the inputs gives the corresponding difference bound with the same $\delta$. Every primitive vertex has positive coupling order and at most three times that order in slots; every propagator removes two slots. This gives $n+2j\le3e$ and finiteness in heat time at each coupling order. Positive heat order uses only lower coupling orders and higher ranks at the same coupling order.

**Part B.** Given the fine field, the kernel first draws independent site tags, then independent predictor tags on bonds, and finally independent coarse links conditional on these tags. Integrating an observable local on $X$ removes all unused bonds and site tags. The remaining factors read the fine field within radius $10\rho$ of $\iota X$. Observables on disjoint coarse site sets use disjoint tags and bonds, so their pull-backs multiply. Under iteration the radius grows by $R\mapsto L_mR+10\rho_m$. In physical units the added radius is at most $\tau_m/3$, while $\tau_{m+1}\le2\tau_m/3$. The total radius therefore stays within $a_kr+\tau_k$. When this fits in one level-$h$ cell, different cells remain separate at every intermediate step, allowing the product formula to iterate.

<a id="unit-steps"></a>

## 4. Steps

### A. Connected heat coefficients

**A1. Operations and the recursion.**

*Definitions.* For $F$ of rank $m+2$,
$$(\Delta_\Gamma F)(x)=\mathrm{Sym}\sum_{u,v\in I}\Gamma(u,v)F(u,v,x).$$
For $F$ of rank $p+1$ and $G$ of rank $q+1$, the join has rank $p+q$:
$$(F\star_\Gamma G)(x,y)=\mathrm{Sym}\sum_{u,v\in I}F(u,x)\Gamma(u,v)G(v,y).$$
$\mathrm{Sym}$ averages over permutations of the slots.

*Combinatorial factors.* On a finite index set, write $W=\sum_n\langle W_n,\phi^{\otimes n}\rangle$ with symmetric coefficient tensors and no slot factorials. For symmetric $\Gamma$, the differential operators $\tfrac12\sum_{u,v}\Gamma(u,v)\partial_u\partial_vW$ and $\tfrac12\sum_{u,v}\Gamma(u,v)\partial_uW\,\partial_vW$ give the factors $\binom{n+2}2$ and $(c+1)(n-c+1)/2$. For nonsymmetric tensors (A1) remains a definition, without this identification.

*Vanishing terms and symmetry.* For eligible $V$ the pair terms with $a=0$ or $a=e$ vanish, because $V^{(i)}_{0,\cdot}=0$. Every $V^{(j)}$ with $j\ge1$ is symmetric, since every term is symmetrised.

*Formal heat equation.* For finite $I$, eligible $V$ symmetric in every rank ([`waxed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Glyph/Towers.lean#L15)), and symmetric $\Gamma$, III.14 proves:

- the generating series solves the formal Hamilton–Jacobi equation ([`Glyph.cloudy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Glyph/Tempo.lean#L43-L73));
- its exponential solves the linear heat equation ([`Cloud.Clockwise.linear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Cloud/Arch.lean#L46-L49));
- summation at time $t$ gives $\mathcal E_t(V)$ ([`Glyph.breaktime`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Glyph/Tempo.lean#L26-L32)).

These identities support the formal cumulant interpretation. They do not assert convergence of a Gaussian integral or of the series in $g$. The norm estimates use only the recursion.

*Lean:* [`lap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lap.lean#L17), [`bridge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L21), [`bleach`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Shuffle.lean#L38), [`unilateral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L33), [`pair`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L34-L35), [`wheels`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L37-L38), [`bank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L42-L44), [`burn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L46), [`blaze`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L55-L62), [`coal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L65-L75).

**A2. Support (Proposition III.8.2).** Since $\Delta_\Gamma0=0$ and $0\star_\Gamma G=F\star_\Gamma0=0$, a nonzero $V^{(j+1)}_{e,n}$ has a nonzero predecessor: either $V^{(j)}_{e,n+2}\ne0$, or both $V^{(i)}_{a,c+1}$ and $V^{(j-i)}_{e-a,n-c+1}$ are nonzero for some $c\le n$, $i\le j$, $a\le e$. Strong induction on $j$ gives $n+2j\le3e$:

- at $j=0$, $n\le e+2\le3e$ because $e\ge1$;
- the contraction step uses $(n+2)+2j\le3e$;
- the pair step adds $(c+1)+2i\le3a$ and $(n-c+1)+2(j-i)\le3(e-a)$.

Parity and $n\le e+2$ propagate the same way. Splitting off $j=0$ gives $\mathcal E_t=V+\mathcal R_t$.
*Lean:* [`predecessors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L34-L48), [`preserves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L50-L64), [`live`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L66-L70), [`off`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L72), [`smoulder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L77-L80), [`appropriate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L82-L89).

**A3. The two contraction estimates.** Let $\sigma\ge0$, let the input rooted norms and $[\Gamma]_\sigma$ be finite, and require positive output rank. Then
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

*Differences.* Absolute convergence permits telescoping: $\Delta_\Gamma F-\Delta_{\Gamma'}F'=\Delta_\Gamma(F-F')+\Delta_{\Gamma-\Gamma'}F'$, and the join gives three terms. If the tensor pairs are $(P,\delta)$- and $(Q,\delta)$-controlled and $(\Gamma,\Gamma')$ is $(B,\delta)$-controlled, with $P,Q,B,\delta\ge0$, the contraction pair is $(2PB,\delta)$-controlled and the join pair is $(3PBQ,\delta)$-controlled. At output rank $0$ these controlled-pair conclusions are vacuous; telescoping need not be valid for divergent scalar sums.

*Lean:* [`Ground`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L20-L24), [`Held`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L61) with [`ensign`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L78-L84), [`Wire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lines.lean#L18-L22), [`unary`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lap.lean#L23-L46), [`Held.lap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lap.lean#L58), [`arc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L26-L42), [`root_sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L49-L69), [`binary_EN`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L71-L99), [`Held.bridge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L102), [`Held.bleach`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Shuffle.lean#L74-L79), [`lap_compare`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lap.lean#L72-L79), [`bridge_compare`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Dial.lean#L13-L24), [`Held.lap_diff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Dial.lean#L26-L29), [`Held.bridge_diff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Dial.lean#L31-L35), [`Cot.lap'`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L49-L54), [`Cot.bridge'`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L55-L61).

**A4. Proof of Proposition III.8.1.** Strong induction on $j$, for all $(e,n)$ at once.

*Base, $j=0$.* For $n=0$ the claim is vacuous. For $e=0$, or $n\gt e+2$, the coefficient is zero by eligibility. Otherwise $(e,n)\in T_0(e,n)$ and the bound is $W$.

*Step, $j\to j+1$.* Use (A1).

- The contraction term needs the case $(j;e,n+2)$. Its inputs ($a\lt e$, or $a=e$ with $r\ge n+2$) lie in $T_{j+1}(e,n)$.
- Only pair terms with $0\lt a\lt e$ survive. Both factors are of order less than $e$, so they need only inputs of order less than $e$.

With $B=W$ for the propagator, A3 gives the polynomial majorant
$$P_{j+1,e,n}(x)=\frac1{j+1}\Big[\binom{n+2}2\ 2x\ P_{j,e,n+2}(x)+\sum_{c=0}^n\sum_{i=0}^j\sum_{a=0}^e\frac{(c+1)(n-c+1)}2\ 3x\ P_{i,a,c+1}(x)P_{j-i,e-a,n-c+1}(x)\Big].$$
*Lean:* [`navigation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L34-L83), [`taps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L14), [`Wage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Powers.lean#L11).

**A5. Full correction and change of index set (outside the main-theorem closure).**

- *Full correction.* For fixed $e,n$, there is a polynomial majorant $P$ such that, under III.8.1's hypotheses on the input range $T_1(e,n)$, the pair $(\mathcal R_t(V)_{e,n},\mathcal R_t(V')_{e,n})$ is $(P(W),\delta)$-controlled whenever $|t|\le W$. Sum A4 over $1\le j\le3e$, using $|t|^j\le W^j$.
- *Transport.* Let $n\ge1$, let $(I,d)$ and $(J,D)$ be pseudometric spaces, and let $\sigma,\sigma'\ge0$. For each slot $i$, choose a kernel $K_i:I\times J\to\mathbb R$, a nonnegative weight $E_i$, and $b_i\ge0$ bounding both weighted row and column sums of $|K_i|e^{E_i}$. Define $(KF)(y)=\sum_{x\in I^n}F(x)\prod_iK_i(x_i,y_i)$. Suppose, for distinct slots $i,j$, that $\sigma'D(y_i,y_j)\le\sigma d(x_i,x_j)+E_i(x_i,y_i)+E_j(x_j,y_j)$ whenever the two kernel factors are nonzero. Then $\lVert KF\rVert_{D,\sigma'}\le\lVert F\rVert_{d,\sigma}\prod_i b_i$ for every $F$ with finite rooted norm. Fix an output slot: use its column bound to sum its input position, and use row bounds for the remaining slots. The geometric inequality bounds the output weight by the input weight times all slot weights.
- *Differences.* Suppose $(F,F')$ is $(C,\delta)$-controlled, with $C,\delta,B\ge0$. If every $K_i,K'_i$ has weighted row and column bounds $B$, every $K_i-K'_i$ has bounds $B\delta$, and the same geometric inequality holds for every combination of their supports, then $(KF,K'F')$ is $((n+1)CB^n,\delta)$-controlled. Telescope once in $F$ and once in each of the $n$ kernels.
- *Combination.* At $t=1$, take $K_i=\mu$ in every slot and $B=W$. For eligible $V,V'$ and the input bounds above, the transported correction has a polynomial bound in $W$. A bound for the transported full potential additionally requires $(V_{e,n},V'_{e,n})$ to be $(W,\delta)$-controlled.
- *Rank $0$.* The unmarked rooted bounds leave the scalar term uncontrolled. On an infinite lattice its sums may diverge.

*Lean:* [`postage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L88-L101), [`raft`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Pontoon.lean#L56), [`lighthouse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Pontoon.lean#L19-L20), [`street`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Pontoon.lean#L22-L23), [`Alley`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/PontChange.lean#L38-L43), [`Cot.raft`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/PontChange.lean#L72-L89), [`paving`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Ballot.lean#L34-L48), [`strict`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Ballot.lean#L25), [`allG`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Ballot.lean#L26).

**A6. Marked expansion (Proposition III.8.3).**

*Operations.* For $M$ marked and $G$ unmarked, the contraction $\Delta_\Gamma M$ is as in A1, and the join is $(M\star_\Gamma G)(x,y)=\mathrm{Sym}\sum_{u,v}\Gamma(u,v)G(v,y)M(u,x)$.

*Estimates.*
$$\lVert\Delta_\Gamma M\rVert_h\le\sup|\Gamma|\ \lVert M\rVert_h,\qquad\lVert M\star_\Gamma G\rVert_h\le\lVert M\rVert_h[\Gamma]_\sigma\lVert G\rVert_\sigma.$$
The first holds because $h(x)\le h(u,v,x)$. The second follows from $h(x,y)\le h(u,x)+d(u,v)+\mathrm{diam}_d(v,y)$, which uses that $h$ is 1-Lipschitz. Sum the marked factor over all its slots, the propagator by its row bound, and the unmarked factor by its rooted bound at $v$. With finite input bounds, the sum of the dual norms is finite. Evaluation at each test function is therefore absolutely summable and preserves linearity, including at output rank $0$. The difference constants are $2$ and $3$, as in A3.

*Induction for (i).* Induct on $j$ as in A4.

- The contraction term uses the case $(j;e,n+2)$.
- Pair terms with $a=e$ vanish, because the unmarked factor then has order $0$.
- For $a\lt e$, the marked factor $M^{(i)}_{a,c+1}$ is bounded by the induction hypothesis, which needs marked inputs of order at most $a\lt e$. The unmarked factor $V^{(j-i)}_{e-a,n-c+1}$ is bounded by III.8.1, whose inputs lie in $\lbrace1\le a'\le e,\ 1\le r\le a'+2\rbrace$.

This gives (i) with output $P(W)U$.

*(ii) and (iii).* For (ii), a nonzero contraction has a marked predecessor of rank $n+2$. A nonzero join has marked and unmarked predecessors whose ranks sum to $n+2$ and whose coupling orders sum to $e$. Add the marked induction bounds to the unmarked bounds of III.8.2 to obtain $n+2j\le l+3e$ and $n\le l+e$. For (iii), sum (i) over $1\le j\le l+3e$, using $|t|^j\le W^j$; no bound for the initial rank-$n$, order-$e$ marked coefficient is needed.

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
- otherwise the frame is the axial gauge built from the tag, normalised at the centre, and the mass is uniform over admissible tags (those whose axial cost is bounded by a multiple of the plaquette cost in the patch).

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
- (ii) Put $r'=L_mr+10(J_{m+1}+3)L_m$. Then $a_{m+1}r'=a_mr+10a_m(J_{m+1}+3)\le a_mr+\tau_m/3$. Adding $\tau_{m+1}\le\frac23\tau_m$ gives $a_{m+1}r'+\tau_{m+1}\le a_mr+\tau_m$, and one iterates.
- (iii) The cell of $i$ at level $m$ is exactly $\Lambda_{(D-1)/2}(\iota_{h\to m}i)$, with $D=L_h\cdots L_{m-1}$ odd and $a_mD=a_h$. By (ii) and room, $2a_mr_{k\to m}(r)\lt a_h-2\tau_m\lt a_mD$, so $2r_{k\to m}(r)\lt D$.
- (iv) $a_k\to0$ and $\tau_k\to0$.

*Lean:* [`expansion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L97), [`grows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L99), [`grows_next`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L103-L104), [`tail_next`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L110-L121), [`tail_zero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L123-L133), [`scales_next`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L135-L145), [`scales_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L147-L150), [`tiling_window`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L49-L85), [`window_fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L87-L91), [`room_fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L160-L169), [`plenty`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L155-L158).

**B7. Two consequences used downstream.**

(a) *Replicated differences (used by III.11).* Fix $N,p$ and $h\le k\le N$. Let $O$ be a bounded measurable complex function at level $N$, let $F\in\mathcal I(\Lambda_w(0))$ at level $k$ with $\mathrm{room}(h,k,w)$, and let $s$ be a finite set of level-$h$ sites. Then
$$Z_N\big\langle\prod_{i\in s}\mathrm{copy}_i(\mathcal B_{k\to N}F-O)\big\rangle_N=\sum_{l\subseteq s}\int\mathcal B^{\ast}_{k\to N}\Big[e^{-S_N}\prod_{i\in s\setminus l}(-\mathrm{copy}_iO)\Big]\prod_{i\in l}\mathrm{copy}_iF.$$
Here $S_N=\beta_{N,p,N}E_N$ is the Wilson action, $Z_N=\int e^{-S_N}\,dU$, and $\langle Q\rangle_N=Z_N^{-1}\int e^{-S_N}Q\,dU$. The copies on each side use the level-$h$ tiling at the level of their argument; the integrals on the right are at level $k$. Expand the product, commute the copies with subtraction, then apply III.8.5 and the duality in III.8.6(ii). The old factors stay together inside one push-forward; no independence of $O$ is required.

(b) *Chessboard telescoping (used by III.13, VII.2).* Fix $h\le N$, $p$ and a real coupling $\beta$ for which the chessboard inequality of IV.1 holds; the Wilson law has this property for $\beta\ge0$. Let $T$ be the centred level-$h$ tiling at level $N$. For a central-cell observable $Q$, define
$$\mathrm{root}_T(Q)=\Big|\Big\langle\prod_{a\in T}\mathrm{copy}_aQ\Big\rangle_\beta\Big|^{1/(\sharp T)},$$
where $\sharp T$ is the number of cells. Let the index set be finite, let $a_i$ be distinct level-$h$ sites, and let $O_i,Z_i\in\mathcal I(T_0)$, where $T_0$ is the central cell. Put $b_i=\iota_{h\to N}a_i$ and let $\tau_{b_i}$ act on configurations by lattice translation. If real bounds $c_i,e_i$ satisfy $\mathrm{root}_T(O_i)\le c_i$ and $\mathrm{root}_T(Z_i-O_i)\le e_i$, then
$$\Big|\big\langle\prod_i(Z_i\circ\tau_{b_i})\big\rangle_\beta-\big\langle\prod_i(O_i\circ\tau_{b_i})\big\rangle_\beta\Big|\le\prod_i(e_i+c_i)-\prod_ic_i.$$
Expand $\prod_i(O_i+(Z_i-O_i))$ over subsets. The empty-subset term cancels, and the chessboard estimate bounds each remaining term by the corresponding product of $c_i$ and $e_i$. To apply it to literal translates, undo the reflection in each copy and, on odd cells, conjugate its source. These operations preserve the central-cell class and its root. Summing the nonempty-subset bounds gives the right-hand side.

*Lean:* [`Joint.restored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Joint.lean#L102-L128), [`tariff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Telescope.lean#L34-L78); [`rooted_translates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Translate.lean#L104-L109).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

* **Input ranges.** At positive heat order, inputs of coupling order $e$ have strictly higher rank. The purely contracting contribution to $V^{(j)}_{e,n}$ starts at $V_{e,n+2j}$. This permits downward induction in rank at fixed coupling order. The bound is uniform in geometry, but its polynomial may depend on $(j,e,n)$; no resummation in $g$ is proved.
* **Scalar terms.** The unmarked rooted norm gives no scalar estimate. The marked norm sums all slots and does control rank $0$, including absolute convergence of its contractions. The same $\sigma\gt0$ occurs in the line, diameter, height and test-function weights.
* **Locality of a selected minimiser.** Agreement on the read window makes the minimisation problems identical. Uniqueness then makes their selected frames equal. The read radius $10\rho$ also includes fallback tests and connectors; the coordinate routes used by frames lie in $\Lambda_{9\rho}$.
* **Conditional factorisation.** Disjoint coarse site sets use disjoint tags and bonds. Their pull-backs may nevertheless read overlapping fine windows. Factorisation therefore concerns the conditional kernel, not the fine Gibbs law. Iteration requires separation at every intermediate level, supplied by the cell-containment bound.
* **Physical size.** The lattice radius grows by $R\mapsto L_mR+10\rho_m$, while its physical radius stays below $a_kr+30a_k(J_k+5)$. For fixed $h,r$, this bound eventually fits inside a level-$h$ cell.

<a id="unit-notation"></a>

## 6. Notation

- **Written proof:** $I$, $d$, $\mathrm{diam}_d$

  **Lean:** [`Ground`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L20-L24), [`Ground.radius`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L35)

  **Meaning:** cells with a pseudometric; largest distance within a tuple

- **Written proof:** rank-$n$ tensor

  **Lean:** [`Tape`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L17), [`Flake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L18); [file](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean)

  **Meaning:** function on $I^n$, ordered slots

- **Written proof:** $\lVert F\rVert_\sigma\le p$

  **Lean:** [`Held`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L61)

  **Meaning:** rooted weighted $\ell^1$ bound (empty at rank $0$)

- **Written proof:** $\Gamma$, $[\Gamma]_\sigma\le B$

  **Lean:** [`Line`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lines.lean#L14), [`Wire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lines.lean#L18-L22)

  **Meaning:** propagator; weighted row and column sums

- **Written proof:** $(W,\delta)$-controlled

  **Lean:** [`Cot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L15-L19), [`WireCot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L21-L24)

  **Meaning:** both at most $W$, difference at most $W\delta$

- **Written proof:** polynomial majorant

  **Lean:** [`Wage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Powers.lean#L11)

  **Meaning:** $0\le P(x)\le Cx^t$ for $x\ge1$

- **Written proof:** $V=(V_{e,n})$, eligible

  **Lean:** [`Grain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L23), [`Eligible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L17-L20)

  **Meaning:** formal potential

- **Written proof:** $\Delta_\Gamma$, $\star_\Gamma$, $\mathrm{Sym}$

  **Lean:** [`lap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lap.lean#L17), [`bridge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L21), [`bleach`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Shuffle.lean#L38)

  **Meaning:** contraction, join, symmetrisation

- **Written proof:** $V^{(j)}$

  **Lean:** [`burn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L46)

  **Meaning:** heat coefficient

- **Written proof:** $T_j(e,n)$

  **Lean:** [`taps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L14) (`Residual` is $T_1$)

  **Meaning:** admissible inputs

- **Written proof:** $\mathcal E_t$, $\mathcal R_t$

  **Lean:** [`ember`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L74), [`cinder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L75)

  **Meaning:** full series; positive-time part

- **Written proof:** $h$, $h(x)$

  **Lean:** [`Loom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L15-L17), [`Loom.cage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L18)

  **Meaning:** height; its maximum over a tuple

- **Written proof:** $\lVert f\rVert_{k,\sigma}$, $\lVert\lambda\rVert^{\ast}_{k,\sigma}$

  **Lean:** [`beam`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Hoard.lean#L15), [`purse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Dosh.lean#L40)

  **Meaning:** weighted $C^k$ norm of test functions; dual norm

- **Written proof:** $\lVert M\rVert_h$; $(U,\delta)$-controlled

  **Lean:** [`Sings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L36), [`Dyad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pair.lean#L11-L17)

  **Meaning:** marked norm; marked pairs

- **Written proof:** marked $\Delta_\Gamma$, $\star_\Gamma$

  **Lean:** [`pocket`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pocket.lean#L28), [`cloak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pocket.lean#L75)

  **Meaning:** marked contraction and join

- **Written proof:** $M^{(j)}$; $\sum_{j\ge1}t^jM^{(j)}$

  **Lean:** [`skate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L31); [`shaker`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L71)

  **Meaning:** marked heat coefficients; positive-time part

- **Written proof:** $k_\beta$

  **Lean:** [`StepData.density`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L71-L72)

  **Meaning:** conditional density of the coarse field given the fine field

- **Written proof:** $\mathcal B$

  **Lean:** [`back`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L21-L22)

  **Meaning:** one-step pull-back

- **Written proof:** $q_x$, $p_b$

  **Lean:** [`perSite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L34-L35), [`perLink`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L30-L32)

  **Meaning:** tag law at a site; link law at a bond

- **Written proof:** $\Lambda_r(x)$

  **Lean:** [`window`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L22-L23)

  **Meaning:** periodic $\ell^\infty$ box

- **Written proof:** $10\rho$; $\rho=(J+3)L$

  **Lean:** [`reach`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L65); [`Patch.radius`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L51)

  **Meaning:** read radius; patch radius

- **Written proof:** $\mathcal I(X)$

  **Lean:** [`Interior`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L109-L113)

  **Meaning:** gauge invariant, measurable, bounded, local on $X$

- **Written proof:** $\mathcal B_{k\to m}$, $\mathcal B^{\ast}_{k\to m}$

  **Lean:** [`backTo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L24-L25), [`pushTo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L27-L29)

  **Meaning:** iterated pull-back; push-forward

- **Written proof:** $\iota_{h\to m}$

  **Lean:** [`anchor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L24)

  **Meaning:** image of a level-$h$ site at level $m$

- **Written proof:** $r_{k\to m}(r)$

  **Lean:** [`grows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L99), [`expansion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L97)

  **Meaning:** cone radius in lattice units

- **Written proof:** $\tau_m$

  **Lean:** [`tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L107)

  **Meaning:** physical cone budget $30a_m(J_m+5)$

- **Written proof:** $\mathrm{room}(h,k,r)$

  **Lean:** [`room`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L153)

  **Meaning:** $2(a_kr+\tau_k)\lt a_h$


<a id="unit-limitations"></a>

## 7. What remains unexplained
1. **Application of the bounds.** The marked bound III.8.3 feeds III.14 through [`Necks.slushy_uniform`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Prior.lean#L61-L95). The support and finite-sum identities of III.8.2 also enter III.14 directly. The choices of $W,\delta,\sigma,h$ and the covariance line bounds must be explained there; their derivation from earlier covariance estimates has not been traced here. The paired covariance and potential bounds are explicit hypotheses of that application.
2. **Gaussian interpretation.** A1 verifies the unmarked formal heat equations for finite index sets and symmetric input tensors and propagators. For symmetric marked inputs, the intended identity is
$$M_t(\phi)=\frac{\mathbb E_{t\Gamma}[F(g,\phi+\zeta)e^{V(g,\phi+\zeta)}]}{\mathbb E_{t\Gamma}[e^{V(g,\phi+\zeta)}]}\qquad\text{(probable)},$$
coefficientwise in $g$, with expectation interpreted by Wick's rule. The marked source announces this identification for later work, but a proof was not located. In particular the marked rank-$0$ coefficient should not yet be described as a proved normalised expectation. No analytic convergence of the series in $g$ is asserted.
3. **Infinite-lattice scalars.** The unmarked norm leaves rank $0$ uncontrolled. The scalar recursions are total-sum definitions, whose values need not represent convergent infinite-volume sums. A use of these scalars requires a separate finite-volume or vacuum-density argument.
4. **Scope beyond the stated results.** Step A5 gives bounds outside the main-theorem closure; III.14 uses the transported-potential definitions without those bounds. The marked transport in `Skiff/Pave.lean` and the further applications in `GRID_APPROXIMATION/Birth`, `Nil`, `Candidates`, `Picture`, `Estimate` and `Attach*` are not developed in this outline. The relation between these formal connected coefficients and the polymer activities of III.5 also remains to be explained in III.14 (tentative).
5. **Support packages.** About 1,970 assigned lines lie outside the two arguments above. Their mathematical roles have only been classified from documentation (tentative): `Carrel` treats path templates and their leading curl; `Camera` treats jets of chart germs; `Room` treats field pull-backs, Jacobians and centred Wick operations; `Rudder` treats symmetric lifts; and `Pert/Bulk` and `Packets` supply weighted sums. `AnalyticNext/QUARTIC_MATCH` belongs with the quartic analysis of III.7 and III.10. Other assigned packages include `Isles`, `Anchor`, parts of `Cloud` and `Glyph`, `WilsonBulk/Web` and `ProofPorts/…`. These packages need separate outlines if their results are to be included here.

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

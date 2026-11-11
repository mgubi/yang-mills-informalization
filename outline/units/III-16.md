# III.16. Analytic toolkit

*Part III — Ultraviolet construction (renormalization group).*

Collects analytic tools for kernels, Fourier estimates, trace bounds and field labels.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/III-16.md) · [← Previous: III.15](III-15.md) · [Next: IV.1 →](IV-1.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** eight folders, none a numbered unit of its own: [`YM/Complex/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex), [`YM/TimeKernel/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel), [`YM/Analysis/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis), [`YM/Laurent/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent), [`YM/CellFourier/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier), [`YM/Work/F07/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07), [`YM/Maxwell/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell), [`YM/Labels/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels). **Size:** 5,318 physical source lines in 41 files, plus elementary helper lemmas in other folders.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

**Proposition III.16.1 (integrated positivity).** Let $X$ be compact metric with finite Borel measure $\mu$, $\mathcal A,\mathcal B$ sets, $K:\mathcal A^2\to\mathbb C$ positive semidefinite, and $g:\mathcal B\times X\to\mathcal A$. If $(x,y)\mapsto K(g(b,x),g(c,y))$ is continuous for every $b,c$, then $\tilde K(b,c)=\iint K(g(b,x),g(c,y))\,d\mu(y)d\mu(x)$ is positive semidefinite. *Status:* theorem. *Lean:* [`YM.Analysis.NNKernel.accumulate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Projected.lean#L44-L70).

**Proposition III.16.2 (trace Hölder).** For finite complex square matrices of the same size $A\succeq0,b_1,\ldots,b_n$, integers $q,M\ge1$, $Z_A=\mathrm{tr}A^M>0$, and $v\in\mathbb C^n$ with $\mathrm{Re}\,v_k\ge0$ and $n/(2q)+\sum_k\mathrm{Re}\,v_k/M=1$,
$$\left|\mathrm{tr}\prod_k b_kA^{v_k}\right|\le C_A,\qquad C_A=\prod_k\|b_k\|_{2q}Z_A^{1-n/(2q)}.$$
*Status:* theorem. *Lean:* [`YM.Holder.estimation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L124-L165).

**Proposition III.16.3 (moving matrix gaps).** For such matrices, integers $q,w\ge1$, $M=2qw$, $Z_A>0$, and $Y,Y'\in\mathbb N^n$, suppose $nw+\sum_kY_k=M$ and $Y'=Y+\ell(e_i-e_j)$ for $i\ne j$, $\ell\in\mathbb N$, with $e_i$ the coordinate vectors. If $r>0$, $Y_k>2r$ for every $k$, and $\ell\le r$, then
$$\left|\mathrm{tr}\prod_kb_kA^{Y'_k}-\mathrm{tr}\prod_kb_kA^{Y_k}\right|\le C_A\ell/r.$$
*Status:* theorem. *Lean:* [`YM.Holder.finite_lip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L170-L229).

**Proposition III.16.4 (moving kernel gaps).** On $X,\mu$ as in III.16.1, let $K$ be continuous positive semidefinite and $B_1,\ldots,B_n$ continuous complex kernels. For integers $q,w\ge1$, $M=2qw$, real $Z=\mathrm{Tr}(K^M)>0$, and $Y,Y',\ell,r$ satisfying all gap conditions of III.16.3, assume real $c_k$ satisfy $|\mathrm{Tr}((B_k^*B_k)^q)|^{1/(2q)}\le c_kZ^{1/(2q)}$. Then
$$|\mathrm{Tr}(B_1K^{Y'_1}\cdots B_nK^{Y'_n})-\mathrm{Tr}(B_1K^{Y_1}\cdots B_nK^{Y_n})|\le Z\prod_kc_k\,\ell/r.$$
*Status:* theorem. *Lean:* [`YM.TimeKernel.passage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L76-L106).

**Proposition III.16.5 (Laurent estimates).** Let $\alpha$ be finite and $\eta>0$. For holomorphic, $2\pi$-periodic $u:S_\eta\to\mathbb C$, define $\hat u_p(x)=\int_{[0,1]^\alpha}u(p+2\pi\theta)e^{-2\pi i\theta\cdot x}d\theta$, $\hat u=\hat u_0$. The torus mean is independent of $p\in S_\eta$, and $\hat u_p(x)=e^{ip\cdot x}\hat u(x)$. If $|u|\le K$, then $|\hat u_p(x)|\le K$ and, for $H\ge0$, $b>0$, $H+b<\eta$,
$$\sum_xe^{H|x|_1}|\hat u(x)|\le K(2(1+b)/b)^{\mathrm{card}\,\alpha}.$$
If $|u|\le K$, the Laurent series reconstructs $u$ absolutely throughout $S_\eta$: $u(p)=\sum_x\hat u(x)e^{ip\cdot x}$.

Conversely, for $f:\mathbb Z^\alpha\to\mathbb C$, if $\sum_xe^{\eta|x|_1}|f(x)|\le W$, then $|\hat f|\le W$ on $|\mathrm{Im}\,p_a|\le\eta$. For every $0<\sigma<\eta$, $\hat f$ is holomorphic on $S_\sigma$, with derivative norm and Lipschitz constant at most $W/(\eta-\sigma)$ for the sup norm. For real $p$, $\widehat{\mathrm{Re}\,f}(p)=(\hat f(p)+\overline{\hat f(-p)})/2$. *Status:* theorems. *Lean:* [`full_turn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Turn.lean#L103-L112), [`Vane.issues`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Art.lean#L61-L87), [`Vane.paints`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Art.lean#L90-L104), [`Width.estimate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L131-L133), [`readDeriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/Read.lean#L55-L95), [`readDiff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/Read.lean#L97-L101), [`readRealPart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/Read.lean#L119-L133).

**Proposition III.16.6 (Fourier and Bloch identities).** For positive integers $n,c,L$, finite internal index sets $\alpha,\beta$, and real entrywise summable $R:\mathbb Z^4\to\mathbb R^{\alpha\times\beta}$, put $R_n((y,a),(y',b))=\sum_{x\in\mathbb Z^4:y+x\equiv y'\pmod n}R_{ab}(x)$. Then
$$F_nF_n^*=F_n^*F_n=n^4I,\qquad R_n(F_n\otimes I_\beta)=(F_n\otimes I_\alpha)\mathrm{diag}_p\hat R(2\pi p/n).$$
This includes $p=0$. With $f=cL$, reindexing fine momenta as $k_{p,l}=2\pi(p+cl)/f$, $p\in\Lambda_c,l\in\Lambda_L$, gives $\Phi\Phi^*=f^4I$ and the same intertwining identity with $\Phi$, $R_f$, and blocks $\mathrm{diag}_{p,l}\hat R(k_{p,l})$. For every $p\in\mathbb C^4$, $E_L(\bar p)^*E_L(p)=L^4I$. *Status:* theorems. *Lean:* [`circulant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L88-L104), [`gram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L117-L119), [`coGram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L121-L127), [`readingsGram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L66-L75), [`aligns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L110-L129), [`straightens`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L41-L53).

**Proposition III.16.7 (matrix root).** For $m>0$, nonempty finite matrix indices and complex square $X$,
$$\Phi_m(X)=\sqrt m\sum_{k\ge0}\binom{1/2}{k}(X/m-I)^k$$
is holomorphic on $\|X/m-I\|<1$, bounded on every smaller closed ball, and commutes with entrywise conjugation. If $v>0$ and $X$ is Hermitian with $vI\le X\le mI$ as quadratic forms, its value is Hermitian, squares to $X$, and lies between $\sqrt vI$ and $\sqrt mI$. *Status:* theorem. *Lean:* [`binRoot_on_band`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L185-L198), [`binRoot_deriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L127-L130), [`binSum_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L116-L123), [`binRoot_conj`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L138-L143).

**Proposition III.16.8 (Maxwell jets).** Fix the compact matrix gauge group and orthonormal real colour coordinates. For every integer $j\ge0$, curl is an isomorphism $\mathcal A_j\to\mathcal C_j$, with inverse $A_i=(j+2)^{-1}\sum_kx_kF_{ki}$. For every smooth antisymmetric colour-valued field satisfying Bianchi and Maxwell on an open $U\subset\mathbb R^4$, its $j$-th Taylor coefficient lies in $\mathcal S_j$ at every $x\in U$.

Off zero, $G_0=(4\pi^2|x|^2)^{-1}$ is harmonic; set $\psi_{b,km}=\delta_{kb}\partial_mG_0-\delta_{mb}\partial_kG_0$, $C_{ab,km}=\partial_a\psi_{b,km}-\partial_b\psi_{a,km}$. In either index pair, $C$ is smooth, antisymmetric and solves both equations; $C_{ab,km}(z)=C_{km,ab}(z)=C_{ab,km}(-z)$.

For all $j,l\ge0$, real linear probes $p,q$ on $\mathcal S_j,\mathcal S_l$ have a bilinear contraction $\kappa(p,q)(z)$, independent of extensions to unrestricted tensors, smooth for $z\ne0$, with $\kappa(p,q)(z)=\kappa(q,p)(-z)$. For coordinate probes $p(F)=F_{ab}[u]_c$, $q(F)=F_{km}[v]_d$, $u\in(\mathbb R^4)^j,v\in(\mathbb R^4)^l$,
$$\kappa(p,q)(z)=\delta_{cd}(-1)^lc_l(t\mapsto c_jC_{ab,km}(t)[u])(z)[v].$$
*Status:* theorems; contraction definition. *Lean:* [`potential`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L218-L224), [`WaveOn.jets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L73-L122), [`Bare.equation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L82-L98), [`legKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L161-L162), [`reads_mixed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Bilinear.lean#L90-L105).

**Proposition III.16.9 (labels).** Fix real bases of $\mathcal A_j$; coordinate weight is $j+2$. For each integer $d\ge0$, $\mathrm{Label}_d$ consists of complex polynomials of weight $\le d$ invariant under simultaneous adjoint action. Real jet evaluation determines polynomials. There are finitely many weight-$\le d$ monomials, so $\mathrm{Label}_d$ is finite-dimensional. Every label decomposes into invariant bihomogeneous components (weight and degree both $\le d$), commuting with conjugation and $O(4)$. For $s\in O(4)$, the action is $(s\cdot P)(A)=P(T_{s^{-1}}A)$, where $(T_sA_j)_i(x)=\sum_ks_{ik}(A_j)_k(s^{-1}x)$, and satisfies the group law. Simultaneously for all $d$, there exist complex bases of real bihomogeneous labels containing $e_0=1$, nested as sets of polynomials with no further prescribed ordering. *Status:* theorems. *Lean:* [`eval_ext`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L38-L49), [`labels_finite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L114-L117), [`decompose`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L87-L105), [`rotation_law`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Action.lean#L82-L88), [`frames`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L107-L111).

**Proposition III.16.10 (Wick hierarchy).** For every $n\ge0$, integer cutoffs $d_i\ge0$, distinct $x_i\in\mathbb R^4$, and $P_i\in\mathrm{Label}_{d_i}$, restrict labels by $A_j=\mathrm{curl}^{-1}F_j$, $F_j\in\mathcal S_j$. Sum products of $\kappa(\cdot,\cdot)(x_i-x_j)$ over pairings of monomial occurrences at different points, extending multilinearly. This correlation is smooth, kills any insertion vanishing on all shell jets, respects simultaneous permutations and insertion of unit labels at additional distinct points, and equals $\prod_i a_i$ for constant insertions $a_i\in\mathbb C$, including the empty product $1$. *Status:* definitions and theorems. *Lean:* [`Wick.correlation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L145-L147), [`Wick.smooth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L152-L154), [`Wick.kills_equation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L149-L150), [`Wick.exchangeSites`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Reorder.lean#L112-L124), [`Wick.adjoin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Reorder.lean#L126-L144), [`Wick.constants`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Reorder.lean#L146-L153).

<a id="unit-inputs"></a>

## 2. What it uses

- I.1: lattices, subdivision, gauge colours, adjoint action and distinct-point configurations: [`Lattice.Site`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L19), [`Gauge.Color`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L43).
- III.1: summability budgets: [`RG.SumBudget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L59-L60).
- Three-lines theorem, Cauchy estimates and contour formulas, mean value inequality, spectral theorem, Schur products, dominated convergence, Fourier inversion, Banach-algebra binomial series, symmetry of derivatives and polynomial identity theorem. All analytic assumptions are stated above; parameters are chosen in the applications.

<a id="unit-strategy"></a>

## 3. Strategy

Moving an insertion transfers units between two gaps. Continue these gaps holomorphically while preserving the Hölder balance; Cauchy's derivative estimate controls the change by $\ell/r$. Sampling all kernels and adjoints with one partition passes this dimension-free estimate to cyclic integrals.

Shift Fourier contours to exchange strip holomorphy for exponential decay; diagonalize finite tori and construct matrix roots by a binomial series on a thinner strip. Radial gauge identifies potentials with closed jets; the free kernel descends to shell probes and supplies Wick correlations.

<a id="unit-steps"></a>

## 4. Steps

1. Factor matrices into normalized entire paths with operator norm $\le1$ on $0\le\mathrm{Re}\,z\le1$ and trace norm $\le1$ on its right boundary. At exponents with nonnegative real parts summing to $1$, three-lines induction bounds the product trace by $1$, giving dimension-free Hölder. [Lean](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Holder.lean#L73-L126).
2. Vary gaps along $Y+z(e_i-e_j)$; Cauchy's estimate on radius-$r$ circles gives III.16.3. [Lean](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L170-L229).
3. Positive quadratic forms pass through quadrature, proving integrated positivity. Sample kernels with square-root cell masses; positivity, adjoints and cyclic traces survive, and quadrature passes the trace estimate to kernels. [`accumulate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Projected.lean#L44-L70), [Lean](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L109-L119).
4. Shift integration contours and sum geometric tails; Fourier inversion reconstructs symbols; termwise differentiation gives the reverse derivative estimate. [`Vane.paints`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Art.lean#L90-L104), [`readDeriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/Read.lean#L55-L95).
5. Character orthogonality diagonalizes periodized kernels and their alias blocks, retaining zero momentum. [`circulant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L88-L104), [`straightens`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L41-L53).
6. Diagonalization reduces the binomial matrix series to scalar square roots; Banach-algebra convergence gives holomorphy. [`binRoot_on_band`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L185-L198).
7. Euler's identity and Bianchi invert curl; shell restriction makes contractions independent of extensions. [Lean](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L163-L195), [Lean](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L148-L159).
8. Finite Wick sums give smoothness; real bihomogeneous decomposition gives nested frames. [Lean](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L152-L154), [Lean](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L107-L111).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

The trace bound must remain independent of matrix dimension as gaps vary and quadrature converges at fixed exponents and period. Strict gap inequalities avoid the exceptional zeroth-power convention. Laurent estimates lose strip width; complex alias adjoints require $\bar p$. Maxwell contractions retain factorials, the colour normalization and the second-endpoint sign.

<a id="unit-notation"></a>

## 6. Notation

$\|\cdot\|$: operator norm; $\|b\|_{2q}=(\mathrm{tr}((b^*b)^q))^{1/(2q)}$. Products are ordered. $A^z=\sum_{\lambda>0}e^{z\log\lambda}P_\lambda$ for spectral projections $P_\lambda$; $A^0$ projects onto the range. For $L\ge1$, $\mathrm{Tr}(k_1\cdots k_L)=\int_{X^L}\prod_{l=1}^Lk_l(x_l,x_{l+1})\,d\mu^{\otimes L}$, $x_{L+1}=x_1$; powers repeat kernels; $B^*(x,y)=\overline{B(y,x)}$. Positive semidefinite means every finite Gram matrix, allowing repeated points, is Hermitian positive semidefinite.

$|x|_1=\sum_a|x_a|$, $S_\eta=\{p\in\mathbb C^\alpha:|\mathrm{Im}\,p_a|<\eta\ \forall a\}$, $\hat f(p)=\sum_xf(x)e^{ip\cdot x}$. $\Lambda_n=(\mathbb Z/n\mathbb Z)^4$; $F_n=(e^{2\pi ip\cdot x/n})$, $\Phi=(e^{ik_{p,l}\cdot y})_{y\in\Lambda_f,(p,l)\in\Lambda_c\times\Lambda_L}$, $E_L(p)=(e^{i(p+2\pi l)\cdot x/L})_{x,l\in\Lambda_L}$. Residues use representatives $0,\ldots,n-1$.

Colour coordinates are orthonormal for $-(\mathrm{dim}\,\rho)^{-1}\mathrm{Re}\,\mathrm{tr}(XY)$ in the fixed defining representation. $\mathcal A_j$: colour-valued $4$-tuples of homogeneous degree-$(j+1)$ potentials with $x\cdot A=0$; $\mathcal C_j$: antisymmetric homogeneous degree-$j$ curvature jets satisfying $\partial_aF_{bc}+\partial_bF_{ca}+\partial_cF_{ab}=0$; $\mathcal S_j$: additionally divergence-free. $c_j=D^j/j!$.

<a id="unit-limitations"></a>

## 7. What remains unexplained

III.6 supplies norm conversion and strip choices for square roots; IV.1 supplies gap parameters needed for uniformity. External helper lemmas and longer dependency lists remain unchecked individually.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/III-16.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md).

**Referenced by:** [III.7](III-7.md), [VI.2](VI-2.md), [VII.2](VII-2.md), [II.1](II-1.md), [III.11](III-11.md), [III.3](III-3.md), [III.12](III-12.md), [VII.1](VII-1.md), [III.6](III-6.md), [VII.3](VII-3.md), [III.13](III-13.md), [III.2](III-2.md), [VI.1](VI-1.md), [VIII.1](VIII-1.md), [III.14](III-14.md), [III.4](III-4.md), [III.10](III-10.md), [VII.4](VII-4.md), [IV.1](IV-1.md), [III.9](III-9.md), [VII.6](VII-6.md), [III.15](III-15.md), [III.8](III-8.md), [V.1](V-1.md), [V.2](V-2.md), [V.3](V-3.md), [VII.5](VII-5.md), [III.5](III-5.md), [III.1](III-1.md).

## Lean source

**Source allocation:** 4,013 attributed lines; 564 line-counted declarations; 796 assigned declaration names. Of the assigned names, 745 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- work package [`YM/Maxwell/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell) — 1,007 lines.
- work package [`YM/Analysis/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis) — 901 lines.
- work package [`YM/Labels/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels) — 587 lines.
- work package [`YM/Complex/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex) — 464 lines.
- work package [`YM/Laurent/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent) — 374 lines.
- work package [`YM/CellFourier/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier) — 268 lines.
- work package [`YM/Work/F07/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07) — 263 lines.
- work package [`YM/TimeKernel/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel) — 149 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`oppositeCoeff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Exchange.lean#L102-L108)
- [`exchangeJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Exchange.lean#L36-L69)
- [`reflectionJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Exchange.lean#L72-L99)
- [`coeff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Homogeneous.lean#L65-L66)
- [`slot_lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Homogeneous.lean#L71-L78)
- [`integrated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/MomentPD.lean#L19-L62)
- [`NNKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L18-L19)
- [`gram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L24-L28)
- [`scaled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L33-L34)
- [`plus`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L35-L36)
- [`times`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L37-L38)
- [`pow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L49-L52)
- [`titled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L54-L55)
- [`criterion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L69-L75)
- [`closed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L80-L88)
- [`exp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L90-L99)
- [`finiteD`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Polydisc.lean#L222-L238)
- [`approx`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Projected.lean#L19-L38)
- [`approximation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L119-L133)
- [`Quad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L22-L26)
- [`refine_`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L40-L63)
- [`shrink`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L65-L66)
- [`counting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L95-L114)
- [`commuteD`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/SmoothJets.lean#L54-L60)
- [`sym_Jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/SmoothJets.lean#L71-L134)
- [`ext_diag`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Symmetric.lean#L62-L77)
- [`lift_weak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Weak.lean#L21-L50)
- [`aliasAt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L20)
- [`aliasBlock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L30-L31)
- [`energy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L65-L69)
- [`Bloch.Row`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L22)
- [`Row.strip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L26)
- [`Row.read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L30-L31)
- [`Row.acts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L33-L34)
- [`Row.conjugate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L39-L45)
- [`Row.periods`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L49-L50)
- [`orthogonal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L106-L110)
- [`F`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L113)
- [`mon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L18)
- [`cell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L20)
- [`sum_cell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L98-L104)
- [`readings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L46)
- [`imageForm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Columns.lean#L114-L156)
- [`specPow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Columns.lean#L38)
- [`weighted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Columns.lean#L60-L81)
- [`rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L105)
- [`paysNorm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L106)
- [`total`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L108-L109)
- [`cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L111-L112)
- [`leap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L22-L24)
- [`leap_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L26-L32)
- [`Holder.Q`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L37)
- [`flexPower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L39-L63)
- [`convexStrip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Holder.lean#L130-L132)
- [`Flex`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Holder.lean#L25-L29)
- [`Gauge.adjoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L114-L117)
- [`Gauge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L23-L26)
- [`Frame`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L50-L57)
- [`frame_exists`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L83-L86)
- [`component_mem`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L35-L48)
- [`gradePart_bar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L66-L71)
- [`gradePart_turn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L73-L74)
- [`radial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L22-L37)
- [`Labels.Taylor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L39)
- [`Labels.Label`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L112)
- [`Labels.Pol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L29)
- [`height`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L55)
- [`cap_finite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L63-L94)
- [`Frame.scaled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L58-L61)
- [`Frame.scaling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L96-L109)
- [`Lattice.wrap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L35-L38)
- [`Lattice.Ratio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L22-L24)
- [`pins`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Art.lean#L13-L35)
- [`Width.compactPay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Art.lean#L39-L57)
- [`Width`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L104)
- [`Laurent.read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L123)
- [`size`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L34)
- [`mode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L39)
- [`strip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L43)
- [`reward`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L48-L56)
- [`Vane`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Rune.lean#L18-L21)
- [`market`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Rune.lean#L80)
- [`market_cap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Rune.lean#L91-L99)
- [`coat_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Turn.lean#L114-L118)
- [`exchange`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Bilinear.lean#L159-L169)
- [`pairing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Bilinear.lean#L24-L47)
- [`raw_mixed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Bilinear.lean#L72-L87)
- [`Bare.even`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L100-L102)
- [`Bare.exchange`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L104-L109)
- [`Bare.equation_right`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L111-L123)
- [`curlOpp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L17-L18)
- [`bareCurl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L20)
- [`reduceEq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L47-L50)
- [`observable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L66-L67)
- [`equationIdeal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72)
- [`ideal_meaning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L74-L79)
- [`closedCurl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L108-L128)
- [`contracted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L130-L154)
- [`potential_recover`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L197-L214)
- [`Maxwell.grad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L20)
- [`ClosedJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L57-L61)
- [`formSpace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L63-L95)
- [`takeCurl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L97-L98)
- [`contraction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L145-L146)
- [`kernel_smooth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L168-L172)
- [`Probe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L64)
- [`Green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L22)
- [`second_Green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L49-L66)
- [`harmonic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L69-L77)
- [`Wick.monExtension`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Reorder.lean#L103-L110)
- [`onShell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L18-L42)
- [`Shell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L44)
- [`gaugeJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L46-L47)
- [`leg_injective`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L49-L50)
- [`WaveOn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L57-L62)
- [`Wick.monomial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L107)
- [`Wick.moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127)
- [`Wick.entry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L24)
- [`Wick.Occ.Matching`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L75-L76)
- [`Slice.Time.powering`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Calendar.lean#L72-L102)
- [`Slice.step_positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Positive.lean#L81-L91)
- [`E4`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L24)
- [`conf`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L63)
- [`Ortho`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L20)
- [`closed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L76)
- [`sample`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L81)
- [`op`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L83)
- [`safe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L90-L94)
- [`measureWeight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L96-L104)
- [`along`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L17-L18)
- [`multiply`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L20)
- [`goes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L45-L58)
- [`totality`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L60-L72)
- [`binSum_deriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L104-L114)
- [`binRoot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L125)
- [`Band`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L21-L24)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-iii-16-1"></a>

- **K-III.16.1** [`accumulate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Projected.lean#L44-L70) *(numbered result)* — Integrating a nonnegative-type kernel over independent random labels on each side yields a nonnegative-type kernel again.

<a id="k-iii-16-2"></a>

- **K-III.16.2** [`even_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Columns.lean#L183-L214) *(numbered result)* — Even Schatten powers at real parameters are bounded by a cost along a strip path of trace interpolation.

<a id="k-iii-16-3"></a>

- **K-III.16.3** [`finite_lip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L170-L229) *(key result)* — Moving two gap centers by m lattice steps changes the trace of the product by at most cost times m over r.

<a id="k-iii-16-4"></a>

- **K-III.16.4** [`passage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L76-L106) *(key result)* — For nonnegative kernels with column bounds, the cyclic integrals of products differing by one center motion differ by at most R·∏K·m/r.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

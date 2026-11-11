# III.16. Analytic toolkit — detailed notes

> The full account of unit III.16: every proposition with its proof sketch, checked against the Lean in two rounds and edited. The condensed outline and the map of the Lean are on the [unit page](../units/III-16.md).

[Unit page](../units/III-16.md) · [All units](../units.md) · [Overview](../README.md)

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** eight folders, none a numbered chapter of its own: [`YM/Complex/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex), [`YM/TimeKernel/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel), [`YM/Analysis/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis), [`YM/Laurent/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent), [`YM/CellFourier/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier), [`YM/Work/F07/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07), [`YM/Maxwell/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell), [`YM/Labels/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels). **Size:** 5,318 physical source lines in 41 files, plus elementary helper lemmas in other folders.

The results fall into three groups.

- **(A) Traces of kernel products.** A Hölder inequality and Cauchy's estimate give a dimension-free Lipschitz bound for moving insertions between time slices. Quadrature passes the bound from matrices to kernels; IV.1 uses it for equicontinuity.
- **(B) Analytic and Fourier estimates.** Holomorphic symbols correspond to exponentially summable Laurent coefficients. Fourier and Bloch identities diagonalize periodized kernels, and a binomial series supplies a matrix square root. Taylor coefficient identities and several-variable analyticity support these arguments.
- **(C) Maxwell fields and labels.** Radial-gauge potentials correspond to closed curvature jets. Restriction to the Maxwell shell defines the free contractions and Wick hierarchy. Gauge-invariant polynomial labels admit coherent complex bases with real coefficients.

## 1. What this unit proves

The contraction kernel and Wick hierarchy are definitions whose properties are proved here.

*Notation for (A).*
- Matrices are complex $\iota\times\iota$ matrices with $\iota$ finite, and $\|\cdot\|$ is the operator norm.
- $\|b\|_{2q}:=\big(\mathrm{tr}((b^*b)^q)\big)^{1/(2q)}$ is the Schatten $2q$-norm.
- For $A\succeq0$ with spectral decomposition $A=\sum_\lambda\lambda P_\lambda$, put $A^z:=\sum_{\lambda>0}e^{z\log\lambda}P_\lambda$ for $z\in\mathbb C$. This is entire in $z$. It vanishes on $\ker A$ for every $z$, so $A^0$ is the projection onto the range, and it equals the ordinary power $A^m$ for every integer $m\ge1$.
- Products $\prod_{k=1}^n$ are ordered by $k$.

**Proposition III.16.1 (integrating a positive-semidefinite kernel).**

*Hypotheses.*
- $X$ is a compact metric space with a finite Borel measure $\mu$, and $\mathcal A,\mathcal B$ are sets.
- $K:\mathcal A\times\mathcal A\to\mathbb C$ is positive semidefinite: for every $m$ and all $a_1,\dots,a_m\in\mathcal A$ (repetitions allowed), the matrix $(K(a_i,a_j))_{i,j}$ is Hermitian and positive semidefinite.
- $g:\mathcal B\times X\to\mathcal A$ is such that $(x,y)\mapsto K(g(b,x),g(c,y))$ is continuous on $X\times X$ for all $b,c\in\mathcal B$.

*Conclusion.* The kernel
$$\tilde K(b,c)=\int_X\!\int_X K\big(g(b,x),g(c,y)\big)\,d\mu(y)\,d\mu(x)$$
is positive semidefinite on $\mathcal B$.

*Status:* theorem.
*Lean:* [`YM.Analysis.NNKernel.accumulate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Projected.lean#L44-L70); the notion of positive semidefinite kernel is [`NNKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L18-L19).

**Proposition III.16.2 (Hölder inequality for traces with complex exponents).**

*Hypotheses.*
- $A\succeq0$ and $b_1,\dots,b_n$ are complex $\iota\times\iota$ matrices.
- $q,M\ge1$ are integers, and $Z_A:=\mathrm{tr}\,A^M>0$.
- $v\in\mathbb C^n$ satisfies $\mathrm{Re}\,v_k\ge0$ for all $k$ and $\frac{n}{2q}+\frac1M\sum_k\mathrm{Re}\,v_k=1$.

*Conclusion.*
$$\Big|\mathrm{tr}\prod_{k=1}^n b_kA^{v_k}\Big|\le\prod_k\|b_k\|_{2q}\cdot Z_A^{\,1-n/(2q)}.$$

For real $v_k>0$, the corresponding Schatten exponent is $M/v_k$ and $\|A^{v_k}\|_{M/v_k}=Z_A^{v_k/M}$. At $v_k=0$, the factor is the range projection, whose operator norm is $1$ since $Z_A>0$. The bound has no dimension factor.

*Status:* theorem.
*Lean:* [`YM.Holder.estimation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L124-L165). The left side is [`total`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L108-L109) and the right side is [`cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L111-L112).

**Proposition III.16.3 (Lipschitz bound in the gaps, matrices; key result).**

*Hypotheses.*
- $A\succeq0$ and $b_1,\dots,b_n$ are as in III.16.2.
- $q,w\ge1$ are integers, $M=2qw$, and $\mathrm{tr}\,A^M>0$.
- $Y\in\mathbb N^n$ satisfies $nw+\sum_kY_k=M$.
- For some $i\ne j$ and some $\ell\in\mathbb N$, the vector $Y'\in\mathbb N^n$ moves $\ell$ units from gap $j$ to gap $i$: $Y'_i=Y_i+\ell$, $Y'_j+\ell=Y_j$, and $Y'_k=Y_k$ otherwise.
- $r>0$, $Y_k>2r$ for every $k$, and $\ell\le r$.

*Conclusion.*
$$\Big|\mathrm{tr}\prod_k b_kA^{Y'_k}-\mathrm{tr}\prod_k b_kA^{Y_k}\Big|\le\frac{\ell}{r}\,\prod_k\|b_k\|_{2q}\,\big(\mathrm{tr}\,A^M\big)^{1-n/(2q)}.$$

The condition $i\ne j$ forces $n\ge2$.

*Status:* theorem.
*Lean:* [`YM.Holder.finite_lip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L170-L229).

**Proposition III.16.4 (Lipschitz bound in the gaps, kernels; key result).**

*Setting.* $X$ is a compact metric space with a finite Borel measure $\mu$. For $L\ge1$ and continuous $k_1,\dots,k_L:X\times X\to\mathbb C$, write
$$\mathrm{Tr}(k_1\cdots k_L)=\int_{X^L}\prod_{l=1}^Lk_l(x_l,x_{l+1})\,d\mu(x_1)\cdots d\mu(x_L),\qquad x_{L+1}=x_1,$$
and write $k^*(x,y)=\overline{k(y,x)}$ for the adjoint kernel. Powers inside $\mathrm{Tr}$ denote repetitions in the cyclic word.

*Hypotheses.*
- $K$ is a continuous positive-semidefinite kernel, and $B_1,\dots,B_n$ are continuous kernels.
- $q,w\ge1$, $M=2qw$, and $\mathrm{Tr}(K^M)=Z$ with $Z>0$ real.
- $Y,Y',\ell,r$ are as in III.16.3.
- $c_1,\dots,c_n$ are real numbers with $\big|\mathrm{Tr}\big((B_k^*B_k)^q\big)\big|^{1/(2q)}\le c_k\,Z^{1/(2q)}$ for every $k$.

*Conclusion.*
$$\big|\mathrm{Tr}(B_1K^{Y'_1}\cdots B_nK^{Y'_n})-\mathrm{Tr}(B_1K^{Y_1}\cdots B_nK^{Y_n})\big|\le Z\Big(\prod_kc_k\Big)\frac{\ell}{r}.$$

*Status:* theorem.
*Lean:* [`YM.TimeKernel.passage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L76-L106), with [`closed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L76) (the cyclic integral), [`along`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L17-L18) (the word with gaps) and [`multiply`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L20) (the column word $(B^*B)^q$).

*Notation for (B).*
- $\alpha$ is a finite index set; in the applications it is the four axes.
- $|x|_1=\sum_a|x_a|$ for $x\in\mathbb Z^\alpha$, and $e^{ip\cdot x}=\exp(i\sum_ap_ax_a)$ for $p\in\mathbb C^\alpha$.
- $S_\eta=\{p\in\mathbb C^\alpha:|\mathrm{Im}\,p_a|<\eta\ \forall a\}$.
- For $f:\mathbb Z^\alpha\to\mathbb C$, the symbol is $\hat f(p)=\sum_xf(x)e^{ip\cdot x}$.

**Proposition III.16.5 (holomorphy in a strip and exponentially weighted Laurent coefficients).** Let $\eta>0$.

(a) Let $u$ be holomorphic on $S_\eta$ and $2\pi$-periodic there: $u(p+2\pi x)=u(p)$ for $p\in S_\eta$ and $x\in\mathbb Z^\alpha$. For $p\in S_\eta$ let $\hat u_p(x)=\int_{[0,1]^\alpha}u(p+2\pi\theta)e^{-2\pi i\theta\cdot x}d\theta$, and put $\hat u=\hat u_0$. Then:
- the integral $\int u(p+2\pi\theta)\,d\theta$ does not depend on $p\in S_\eta$;
- $\hat u_p(x)=e^{ip\cdot x}\hat u(x)$.

If moreover $|u|\le K$ on $S_\eta$, then:
- $|\hat u_p(x)|\le K$;
- for $H\ge0$ and $b>0$ with $H+b<\eta$, $\sum_xe^{H|x|_1}|\hat u(x)|\le K\big(2(1+b)/b\big)^{\mathrm{card}\,\alpha}$;
- $u(p)=\sum_x\hat u(x)e^{ip\cdot x}$ on $S_\eta$, with absolute convergence.

(b) Let $\sum_xe^{\eta|x|_1}|f(x)|\le W$. Then:
- $|\hat f(p)|\le W$ whenever $|\mathrm{Im}\,p_a|\le\eta$ for all $a$;
- for $0<\sigma<\eta$, $\hat f$ is holomorphic on $S_\sigma$ with $\|D\hat f(p)\|\le W/(\eta-\sigma)$ (operator norm for the sup norm on $\mathbb C^\alpha$), so $|\hat f(p)-\hat f(p')|\le W\|p-p'\|_\infty/(\eta-\sigma)$ on $S_\sigma$;
- for real $p$, the symbol of $\mathrm{Re}\,f$ equals $\tfrac12\big(\hat f(p)+\overline{\hat f(-p)}\big)$.

*Status:* theorems.
*Lean:*
- for (a): [`market_cap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Rune.lean#L91-L99), [`full_turn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Turn.lean#L103-L112), [`coat_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Turn.lean#L114-L118), [`Vane.issues`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Art.lean#L61-L87), [`Vane.paints`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Art.lean#L90-L104);
- for (b): [`Width.estimate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L131-L133), [`readDeriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/Read.lean#L55-L95), [`readDiff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/Read.lean#L97-L101), [`readRealPart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/Read.lean#L119-L133).

**Proposition III.16.6 (Fourier and Bloch decomposition on tori).**

*Setting.*
- All torus side lengths $n,c,f,L$ are positive integers, and $\Lambda_n=(\mathbb Z/n\mathbb Z)^4$. For $p\in\Lambda_n$, represented in $\{0,\dots,n-1\}^4$, let $k_p=2\pi p/n$, and let $F_n=(e^{ik_p\cdot x})_{x,p\in\Lambda_n}$.
- $\alpha,\beta$ are finite index sets, and the real kernel $R=(R_{ab}(x))$, $x\in\mathbb Z^4$, satisfies $\sum_x|R_{ab}(x)|<\infty$ for every $a\in\alpha$, $b\in\beta$.
- Its periodization on $\Lambda_n$ is $R_n\big((y,a),(y',b)\big)=\sum_{x:\,y+x\equiv y'}R_{ab}(x)$, and its symbol is $\hat R(k)_{ab}=\sum_xR_{ab}(x)e^{ik\cdot x}$.

(a) $F_nF_n^*=F_n^*F_n=n^4I$, and $R_n(F_n\otimes I_\beta)=(F_n\otimes I_\alpha)\,\mathrm{diag}_{p\in\Lambda_n}\hat R(k_p)$. This holds for every $p$, including $p=0$.

(b) Let $f=cL$. For $p\in\Lambda_c$ and $l\in\Lambda_L$ let $k_{p,l}=2\pi(p+cl)/f$. These are the $L^4$ fine momenta $k$ with $Lk\equiv2\pi p/c$ modulo $2\pi$, i.e. the aliases of the coarse momentum $2\pi p/c$. The fine Fourier matrix $\Phi=(e^{ik_{p,l}\cdot y})_{y\in\Lambda_f,(p,l)}$ satisfies:
- $\Phi\Phi^*=f^4I$;
- $R_f(\Phi\otimes I_\beta)=(\Phi\otimes I_\alpha)\,\mathrm{diag}_{p\in\Lambda_c}\,\mathrm{diag}_{l\in\Lambda_L}\hat R(k_{p,l})$.

(c) For every $p\in\mathbb C^4$, the alias block $E_L(p)=(e^{i(p+2\pi l)\cdot x/L})_{x,l\in\Lambda_L}$ satisfies $E_L(\bar p)^*E_L(p)=L^4I$.

*Status:* theorems.
*Lean:* [`gram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L117-L119), [`coGram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L121-L127), [`circulant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L88-L104), [`readingsGram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L66-L75), [`aligns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L110-L129), [`straightens`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L41-L53).

**Proposition III.16.7 (analytic square root near a spectral band).** Let $m>0$ and let the finite matrix index set be nonempty. For complex matrices $X$ with $\|X/m-1\|<1$, put $\Phi_m(X):=\sqrt m\sum_{k\ge0}\binom{1/2}{k}(X/m-1)^k$.
- $\Phi_m$ is holomorphic on this ball.
- $\Phi_m$ is bounded on each smaller ball $\|X/m-1\|\le r<1$.
- $\Phi_m$ commutes with entrywise complex conjugation.
- If $X$ is Hermitian and $v\le X\le m$ as quadratic forms, with $v>0$, then $\Phi_m(X)$ is Hermitian, $\Phi_m(X)^2=X$, and $\sqrt v\le\Phi_m(X)\le\sqrt m$.

*Status:* theorem.
*Lean:* [`binRoot_on_band`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L185-L198), [`binRoot_deriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L127-L130), [`binSum_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L116-L123), [`binRoot_conj`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L138-L143).

*Notation for (C).*
- Fix a compact matrix gauge group $G$. Its colour space $\mathfrak g$ is the real Lie algebra in coordinates orthonormal for $-(\mathrm{dim}\,\rho)^{-1}\mathrm{Re}\,\mathrm{tr}(XY)$, where $\rho$ is the fixed defining representation.
- A homogeneous polynomial on spacetime is identified with its symmetric multilinear Taylor coefficient.
- For $j\ge0$:
  - $\mathcal A_j$ is the space of $4$-tuples $(A_l)$ of $\mathfrak g$-valued homogeneous polynomials of degree $j+1$ on $\mathbb R^4$ with $\sum_lx_lA_l(x)=0$ (radial, or Fock–Schwinger, gauge);
  - $\mathcal C_j$ is the space of $\mathfrak g$-valued homogeneous polynomials $F_{il}$ of degree $j$ with $F_{il}=-F_{li}$ and $\partial_aF_{bc}+\partial_bF_{ca}+\partial_cF_{ab}=0$;
  - $\mathcal S_j\subset\mathcal C_j$, the Maxwell shell, adds the condition $\sum_a\partial_aF_{ab}=0$.

**Proposition III.16.8 (free Maxwell field).**

(a) *(Poincaré lemma in radial gauge.)* The curl $A\mapsto F_{il}=\partial_iA_l-\partial_lA_i$ is a linear isomorphism $\mathcal A_j\to\mathcal C_j$. Its inverse is $A_i(x)=(j+2)^{-1}\sum_kx_kF_{ki}(x)$.

(b) *(Taylor coefficients of solutions.)* Let $U\subset\mathbb R^4$ be open, and let the $\mathfrak g$-valued field $f=(f_{ab})$ be smooth and antisymmetric on $U$ and satisfy the Bianchi and Maxwell equations there. Then for every $x\in U$ and $j\ge0$, the $j$-th Taylor coefficient of $f$ at $x$ lies in $\mathcal S_j$.

(c) *(Free two-point function.)* The function $G_0(x)=1/(4\pi^2|x|^2)$ is harmonic on $\mathbb R^4\setminus\{0\}$. Put
$$C_{ab,km}=\partial_a\psi_{b,km}-\partial_b\psi_{a,km},\qquad\psi_{b,km}=\delta_{kb}\partial_mG_0-\delta_{mb}\partial_kG_0.$$
This is the field-strength two-point function $\langle F_{ab}(x)F_{km}(0)\rangle$ of one colour component of the free field in Feynman gauge. Then:
- for fixed $(k,m)$, $(a,b)\mapsto C_{ab,km}$ is smooth and antisymmetric on $x\ne0$ and solves the Bianchi and Maxwell equations there;
- the same holds in $(k,m)$ for fixed $(a,b)$;
- $C_{ab,km}(x)=C_{km,ab}(x)=C_{ab,km}(-x)$.

(d) *(One contraction between jets.)* Let $j,l\ge0$, and let $p$ and $q$ be real linear forms on $\mathcal S_j$ and $\mathcal S_l$ (probes). Write $c_jh(z)=D^jh(z)/j!$, and let $(e_c)$ be the orthonormal colour basis. Choose linear extensions $P,Q$ of $p,q$ to the unrestricted two-index multilinear tensors. Define the colour-valued field
$$R_{P,km}(z)=\sum_cP\big((c_j(C_{ab,km}e_c)(z))_{a,b}\big)e_c,$$
and, for $z\ne0$, put
$$\kappa(p,q)(z)=(-1)^lQ\big((c_lR_{P,km}(z))_{k,m}\big).$$
This definition is independent of both extensions. It is bilinear in $(p,q)$, smooth for $z\ne0$, and satisfies $\kappa(p,q)(z)=\kappa(q,p)(-z)$.

For the coordinate probes $p(F)=F_{ab}[u]_c$ and $q(F)=F_{km}[v]_d$, with $u\in(\mathbb R^4)^j$ and $v\in(\mathbb R^4)^l$,
$$\kappa(p,q)(z)=\delta_{cd}(-1)^l c_l\big(t\mapsto c_jC_{ab,km}(t)[u]\big)(z)[v].$$
Equivalently, at $z=x-y$ this is the mixed Taylor coefficient at $(x,y)$ of $\delta_{cd}C_{ab,km}(x-y)$. Thus $\kappa$ is the free covariance of the corresponding jet observables, with Taylor coefficients used at both endpoints.

*Status:* theorems in (a)–(c); definition and theorems in (d).
*Lean:*
- (a): [`potential`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L218-L224), [`closedCurl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L108-L128), [`curl_inverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L163-L195), [`potential_recover`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L197-L214);
- (b): [`WaveOn.jets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L73-L122);
- (c): [`harmonic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L69-L77), [`Bare.equation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L82-L98), [`Bare.equation_right`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L111-L123), [`Bare.exchange`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L104-L109), [`Bare.even`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L100-L102);
- (d): [`legKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L161-L162), [`descends`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L148-L159), [`pairing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Bilinear.lean#L24-L47), [`exchange`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Bilinear.lean#L159-L169), [`raw_mixed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Bilinear.lean#L72-L87), [`reads_mixed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Bilinear.lean#L90-L105).

**Proposition III.16.9 (field labels).**

*Setting.* Let $d\ge0$ be an integer.

- Fix real bases of the spaces $\mathcal A_j$.
- $\mathrm{Pol}$ is the algebra of complex polynomials in the resulting coordinates of a jet sequence $(A_j)_{j\ge0}$.
- A coordinate from $\mathcal A_j$ has weight $j+2$, and a monomial has the sum of the weights of its factors.
- $\mathrm{Label}_d\subset\mathrm{Pol}$ consists of the polynomials of weight $\le d$ that are invariant under the simultaneous adjoint action of $G$ on all $A_j$. Invariance is imposed on the whole polynomial.

(a) A polynomial that vanishes on all real jet sequences is zero.

(b) There are finitely many monomials of weight $\le d$, so $\mathrm{Label}_d$ is finite-dimensional.

(c) Every element of $\mathrm{Label}_d$ is the sum of its bihomogeneous components (weight, polynomial degree), both indices $\le d$.
- Each component is again a label.
- Taking components commutes with complex conjugation of coefficients and with the action of $O(4)$ on jets.
- For $s\in O(4)$, set $(T_sA_j)_i(x)=\sum_ks_{ik}(A_j)_k(s^{-1}x)$. The induced label action is $(s\cdot P)(A)=P(T_{s^{-1}}A)$; it satisfies $(st)\cdot P=s\cdot(t\cdot P)$.

(d) For every integer $d\ge0$, $\mathrm{Label}_d$ has a complex basis (a frame) $e_0=1,e_1,\dots,e_{N_d}$ of bihomogeneous labels with real coefficients. These bases can be chosen simultaneously so that, under the natural inclusion, every basis vector at level $d$ occurs at level $d+1$. No ordering beyond $e_0=1$ is prescribed.

*Status:* theorems.
*Lean:* [`eval_ext`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L38-L49), [`cap_finite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L63-L94), [`labels_finite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L114-L117), [`decompose`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L87-L105), [`gradePart_bar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L66-L71), [`gradePart_turn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L73-L74), [`rotation_law`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Action.lean#L82-L88), [`Frame`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L50-L57), [`frames`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L107-L111).

**Proposition III.16.10 (free Wick hierarchy on labels).**

*Definitions.* Let $n\ge0$, let $d_1,\dots,d_n\ge0$ be integers, and let $x_1,\dots,x_n\in\mathbb R^4$ be pairwise distinct.
- For Wick monomials in the coordinates of shell jets, the *free moment* is the sum, over all pairings of the factor occurrences in which partners sit at different points, of the products of the kernels $\kappa(\cdot,\cdot)(x_i-x_{i'})$ of the paired coordinate forms. It is extended multilinearly to Wick polynomials.
- The *free correlation* of labels $P_k\in\mathrm{Label}_{d_k}$ is the moment of their restrictions to on-shell jets, $A_j=\mathrm{curl}^{-1}F_j$ with $F_j\in\mathcal S_j$.

*Properties.*
- The free correlation is smooth on the configuration space.
- It vanishes if one label vanishes on all on-shell jets, i.e. lies in the equation ideal.
- It is invariant under permuting the points together with the labels. More generally, embedding the index set into a larger configuration of distinct points preserves the correlation when each added point carries the label $1$.
- The moment with every insertion equal to $1$ is $1$, including at $n=0$. For constant insertions $a_1,\dots,a_n\in\mathbb C$, it is $\prod_i a_i$.

*Status:* definitions and theorems.
*Lean:* [`Wick.moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127), [`Wick.correlation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L145-L147), [`Wick.smooth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L152-L154), [`Wick.kills_equation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L149-L150), [`ideal_meaning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L74-L79), [`Wick.exchangeSites`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Reorder.lean#L112-L124), [`Wick.monExtension`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Reorder.lean#L103-L110), [`Wick.adjoin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Reorder.lean#L126-L144), [`Wick.constants`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Reorder.lean#L146-L153).

Other units also quote, by name, the general lemmas of §4: the algebra of positive kernels (4.1), quadrature (4.2), the calculus of Taylor coefficients (4.19), and analyticity in several variables and weak analyticity (4.20).

## 2. What it uses

- **I.1 (lattice, symmetries, gauge groups).**
  - The torus $\Lambda_n$, its cover $\mathbb Z^4$, and the coarse/fine subdivision maps: [`Lattice.Site`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L19), [`Lattice.wrap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L35-L38), [`Lattice.Ratio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L22-L24).
  - $\mathbb R^4$ with its axes, and $O(4)$: [`E4`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L24), [`Ortho`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L20).
  - The gauge-group data, namely the colour space and the adjoint action: [`Gauge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L23-L26), [`Gauge.Color`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L43), [`Gauge.adjoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L114-L117).
  - The configuration space of distinct points: [`conf`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L63).
  - All of these are definitions.
- **III.1:** the summability condition "nonnegative, summable, sum $\le W$", [`RG.SumBudget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L59-L60), used to define the weighted norms of (B). It is a definition.
- **Mathlib:**
  - Hadamard's three-lines theorem;
  - Cauchy's estimate for the derivative on a circle, and the mean value inequality on convex sets;
  - the spectral theorem for Hermitian matrices;
  - the Schur product theorem;
  - dominated convergence;
  - Cauchy's theorem for rectangles and the Cauchy integral formula;
  - multivariable Fourier inversion for continuous torus functions with absolutely summable Fourier coefficients;
  - the binomial series in Banach algebras;
  - symmetry of second derivatives;
  - the identity theorem for polynomials on infinite sets.
- **Standard references:** B. Simon, *Trace Ideals and Their Applications*, for Schatten inequalities; Berg–Christensen–Ressel, *Harmonic Analysis on Semigroups*, for positive kernels; Katznelson, *An Introduction to Harmonic Analysis*, for torus Fourier series; Reed–Simon, *Methods of Modern Mathematical Physics*, vol. I, for operator functional calculus; Hörmander, *An Introduction to Complex Analysis in Several Variables*, and Rudin, *Functional Analysis*, for holomorphy; Glimm–Jaffe, *Quantum Physics*, for Wick products and reflection positivity.
- **Imported constants and assumptions.** All analytic assumptions appear in the statements above. The numerical factors are explicit. The parameters $q,w,M,r$ in (A), the strip widths and torus sizes in (B), and the label cutoff $d$ are chosen in the applications.

**Uses in other units.** The principal applications are listed below; the scope of the longer dependency lists is noted in §7.
- **III.16.1–III.16.4:** the external applications of this trace argument are in IV.1.
  - III.16.1 gives the positivity of the Wilson transfer kernel: [`Slice.step_positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Positive.lean#L81-L91), Lemma IV.1.f.
  - III.16.4 gives the time-direction Lipschitz bound: [`Slice.Time.powering`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Calendar.lean#L72-L102), Lemmas IV.1.e–f.
  - Lemma 4.1 (the algebra of positive kernels) is also used in III.2, III.4, III.6, III.10, III.11, III.13 and VIII.1.
- **III.16.5:** III.7, III.3, III.6, III.2, III.4, III.9, III.10, III.12–III.15, VII.1, VII.2.
- **III.16.6:** III.7, III.3, III.4, III.2, III.6, III.14, III.10, III.13, III.9, III.11, III.1, III.5, VII.1, VII.2.
- **III.16.7:** III.6, in the square-root theorem described in §3.
- **III.16.8 and III.16.10:** VI.2, VII.1, VII.3, VI.1, III.11, II.1, VII.2, IV.1.
- **III.16.9:** II.1, III.11, VII.2, III.12, III.13, III.6, VI.2, VI.1, III.10, III.2, VII.3, VII.1, VII.4, VIII.1.
- **Lemma 4.20:** III.6 and V.2 use [`finiteD`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Polydisc.lean#L222-L238); III.13, V.1 and V.2 use [`lift_weak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Weak.lean#L21-L50).

## 3. Strategy

**(A) Moving an insertion.** Transfer-kernel correlations have the form $\mathrm{Tr}(B_1K^{Y_1}\cdots B_nK^{Y_n})/Z$. Moving one insertion transfers $\ell$ units between two gaps. For finite matrices, continue the exponents along $Y+z(e_i-e_j)$. The trace is entire, and the Hölder balance is unchanged. III.16.2 bounds it by a constant $C$ on $|z|\le2r$; Cauchy's estimate gives $|F'|\le C/r$ on $|z|\le r$, hence a change of at most $C\ell/r$. The dimension-free bound passes to kernels by sampling every factor and adjoint with the same partition. In IV.1, for nonnegative Wilson coupling, positivity follows from III.16.1 and the positive-kernel algebra; $Z$ is the partition function. The condition $M=2qw$ makes the reflected column $(B^*B)^q$ fill the time period, so chessboard estimates bound its normalized trace. The normalized difference is at most $(\prod_kc_k)\ell/r$; uniformity in volume and spacing requires corresponding control of $c_k$ and $\ell/r$.

**(B) Kernels and symbols.** Exponentially weighted summability gives bounded holomorphic symbols. Moving the Fourier integration torus in the imaginary directions gives the converse, with a narrower exponential weight. Discrete Fourier identities then transfer symbol identities to every finite torus, including the zero momentum. For the square-root construction in III.6, take a real square matrix kernel $Q$ with $\sum_xe^{\eta|x|_1}|Q_{ab}(x)|\le A$ for every entry, $\eta>0$, and Hermitian real-momentum symbols satisfying $vI\le\hat Q(p)\le AI$, where $0<v\le A$. The derivative bound, together with the norm conversion from entrywise bounds to the matrix operator norm, keeps $\hat Q/A-I$ in a ball of radius less than $1$ on a thinner strip. III.16.7 gives a bounded holomorphic root there. Its Laurent coefficients have an exponential bound; taking their real parts preserves the positive square-root symbol at real momenta because $\hat Q(-p)=\overline{\hat Q(p)}$. Fourier diagonalization yields $P_n^{\mathsf T}P_n=Q_n$ with $P_n$ symmetric on every torus. The parameter choices and assembly belong to III.6.

**(C) Free fields and labels.** For homogeneous closed curvature jets, the radial-gauge formula $A_i=(j+2)^{-1}\sum_kx_kF_{ki}$ inverts the curl. Imposing the Maxwell equation gives the shell. The explicit two-curl kernel derived from $G_0(x)=(4\pi^2|x|^2)^{-1}$ solves both equations in each leg away from the origin, so its Taylor coefficients define pairings on shell probes. Wick sums of these pairings give the free hierarchy on polynomial labels. Bihomogeneous decomposition and conjugation provide coherent complex bases with real coefficients. This hierarchy is the comparison object for short-distance limits, stress-tensor identities, the trace anomaly and nontriviality in VI.1–VI.2 and VII.1–VII.3; its kernels are used at distinct points.

## 4. Steps

### 4.1 Positive kernels and quadrature

**Lemma 4.1 (algebra of positive-semidefinite kernels).**

*Statement.*
- Generators: the class contains the Gram kernels $\overline{f(x)}f(y)$ and the constant $1$.
- Closure: it is closed under multiplication by constants $c\ge0$, finite sums, pointwise (Schur) products, nonnegative integer powers, pullbacks $K(\varphi(x),\varphi(y))$, pointwise limits, and $K\mapsto e^K$.
- Criterion: a kernel is positive semidefinite if and only if it is Hermitian and $\sum_{i,j}\bar c_iK(x_i,x_j)c_j\ge0$ for all finite families.
- Integrated form: on a compact metric space with a finite Borel measure, for continuous positive-semidefinite $K$ and bounded measurable $f$, $\iint K(x,y)\overline{f(x)}f(y)\,d\mu\,d\mu\ge0$.

*Sketch.*
- Products follow from the Schur product theorem.
- $e^K$ is the limit of the partial sums $\sum_{m<N}K^m/m!$.
- Limits are handled by the quadratic-form criterion. Hermitian symmetry passes to the limit through the $2\times2$ Gram matrices.
- For the integrated form, replace $K$ by its values at the tags of a fine partition (Lemma 4.2). The integral becomes $\sum_{i,j}\overline{\int_{\text{cell }i}f}\,K(x_i,x_j)\int_{\text{cell }j}f\ge0$, and dominated convergence finishes the proof.

*Lean:* [`gram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L24-L28), [`scaled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L33-L34), [`plus`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L35-L36), [`times`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L37-L38), [`pow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L49-L52), [`titled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L54-L55), [`criterion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L69-L75), [`closed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L80-L88), [`exp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L90-L99), [`integrated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/MomentPD.lean#L19-L62).

**Lemma 4.2 (quadrature).**

*Statement.* Let $X$ be a compact metric space with a finite Borel measure $\mu$.
- For each $k\ge0$ there is a finite measurable partition of $X$ with assigned tags such that every point lies within $1/(k+1)$ of its cell's tag. Empty cells and zero masses are allowed; a tag need not lie in its cell.
- Let $m_i=\mu(\text{cell }i)$. For every finite index set $I$ and every continuous $F:X^I\to E$ with $E$ a Banach space, the Riemann sums $\sum_{i\in\text{cells}^I}\prod_{j\in I}m_{i_j}\,F\big((x_{i_j})_{j\in I}\big)$ converge to $\int F\,d\mu^{\otimes I}$.

*Sketch.*
- The partitions: cover $X$ by finitely many balls of radius $1/(k+1)$ and disjointify.
- The convergence: the Riemann sum equals $\int F\circ\pi_k\,d\mu^{\otimes I}$, where $\pi_k$ sends every point to the tag of its cell. Since $\pi_k\to\mathrm{id}$ pointwise and $F$ is bounded, dominated convergence applies.
- The statement concerns each fixed $F$ and finite product; it asserts no uniform rate over families of integrands.

*Lean:* [`Quad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L22-L26), [`refine_`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L40-L63), [`shrink`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L65-L66), [`counting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L95-L114), [`approximation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L119-L133), [`approx`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Projected.lean#L19-L38).

**Lemma 4.3 (proof of III.16.1).**

*Sketch.*
- For a partition, define $G_Q(b,c)=\sum_{i,j}m_im_jK(g(b,x_i),g(c,x_j))$.
- $G_Q$ is Hermitian. For each finite family of elements $b\in\mathcal B$ and coefficients $r_b$, its quadratic form $\sum_{b,c}\bar r_bG_Q(b,c)r_c$ is the quadratic form of $K$ at the points $g(b,x_i)$, indexed by $(b,i)$, with coefficients $r_bm_i$. Hence $G_Q$ is positive semidefinite.
- By Lemma 4.2 in two variables, $G_Q\to\tilde K$ pointwise.
- Positive-semidefinite kernels are closed under pointwise limits (Lemma 4.1).

*Lean:* [`accumulate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Projected.lean#L44-L70).

### 4.2 The finite trace inequality

**Lemma 4.4 (three-lines Hölder lemma).**

*Definition.* A *strip path* is an entire map $V:\mathbb C\to M_\iota(\mathbb C)$ with:
- $\|V(t)\|\le1$ for $0\le\mathrm{Re}\,t\le1$;
- trace norm $\sup_{\|C\|\le1}|\mathrm{tr}\,V(t)C|\le1$ for $\mathrm{Re}\,t=1$.

*Statement.* If $V_1,\dots,V_n$ are strip paths and $h_k\in\mathbb C$ satisfy $\mathrm{Re}\,h_k\in[0,1]$ and $\sum_k\mathrm{Re}\,h_k=1$, then $|\mathrm{tr}\,V_1(h_1)\cdots V_n(h_n)|\le1$.

*Sketch.* Prove $|\mathrm{tr}(c\,V_1(h_1)\cdots V_n(h_n))|\le1$ for every contraction $c$, by induction on $n$. The case $n=0$ is excluded by the balance condition. In the induction step let $t=\mathrm{Re}\,h_1$.
- *Case $t=1$.* The other factors are contractions. Apply the trace-norm bound of $V_1$ after a cyclic permutation.
- *Case $t<1$.* Put $E(x)=\mathrm{tr}\big(c\,V_1(x+i\,\mathrm{Im}\,h_1)\prod_{k\ge2}V_k(x_k(x))\big)$ with $x_k(x)=\mathrm{Re}\,h_k\,\frac{1-x}{1-t}+i\,\mathrm{Im}\,h_k$.
  - $E$ is entire and bounded on $0\le\mathrm{Re}\,x\le1$. The bound depends on $\mathrm{card}\,\iota$, but it is used only qualitatively.
  - On $\mathrm{Re}\,x=0$, the first factor is a contraction absorbed into $c$, and the remaining real parts sum to $1$; the induction hypothesis gives $|E|\le1$.
  - On $\mathrm{Re}\,x=1$, the factors $V_k(x_k(x))$ with $k\ge2$ are contractions, and the trace-norm bound of $V_1$ gives $|E|\le1$.
  - The three-lines theorem gives $|E(t)|\le1$, and $E(t)$ is the trace to be bounded.

*Lean:* [`Flex`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Holder.lean#L25-L29), [`holder_core`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Holder.lean#L73-L126), [`convexStrip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Holder.lean#L130-L132).

**Lemma 4.5 (Schatten factorization).** For every matrix $b$ and integer $q\ge1$ there is a strip path $V$ with $b=\|b\|_{2q}\,V(1/(2q))$.

*Sketch.*
- Write $b^*b=U\,\mathrm{diag}(s_i^2)\,U^*$. Then $b=W\,\mathrm{diag}(s)\,U^*$ with $\|W\|\le1$, where $W=bU\,\mathrm{diag}(s)^{-1}$ on the support of $s$.
- If $b=0$, take $V=0$. Otherwise let $f_i=s_i^{2q}/\sum_js_j^{2q}$ and $V(t)=W\,\mathrm{diag}(f_i^{\,t})\,U^*$, with the convention $0^t=0$.
- Since $f_i\le1$, $\|V(t)\|\le1$ on the closed strip.
- For $\mathrm{Re}\,t=1$, $|\mathrm{tr}\,V(t)C|\le\sum_if_i|(U^*CW)_{ii}|\le1$.
- At $t=1/(2q)$, $f_i^{1/(2q)}=s_i/\|b\|_{2q}$.

*Lean:* [`even_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Columns.lean#L183-L214), [`imageForm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Columns.lean#L114-L156), [`weighted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Columns.lean#L60-L81), [`specPow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Columns.lean#L38).

**Lemma 4.6 (complex powers).** For $A\succeq0$ and integer $M\ge1$ there is a strip path $P$ with $A^z=Z_A^{z/M}P(z/M)$ for all $z\in\mathbb C$. Here $Z_A^w=e^{w\log Z_A}$ if $Z_A>0$, and $Z_A^w=0$ otherwise. Moreover $A^z$ equals the ordinary power $A^m$ at every integer $z=m\ge1$.

*Sketch.* If $Z_A=0$, positivity gives $A=0$ and one may take $P=0$. Otherwise take $P(w)=U\,\mathrm{diag}\big((\lambda_i^M/Z_A)^w\big)U^*$. The normalized eigenvalues sum to $1$, so the strip and trace-norm bounds follow as in Lemma 4.5.

*Lean:* [`leap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L22-L24), [`leap_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L26-L32), [`flexPower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L39-L63).

**Lemma 4.7 (proof of III.16.2).**

*Sketch.*
- Write $b_k=\|b_k\|_{2q}V_k(1/(2q))$ (Lemma 4.5) and $A^{v_k}=Z_A^{v_k/M}P(v_k/M)$ (Lemma 4.6).
- The scalar prefactors have modulus $\prod_k\|b_k\|_{2q}\,Z_A^{\sum\mathrm{Re}v_k/M}=\prod_k\|b_k\|_{2q}\,Z_A^{1-n/(2q)}$.
- The $2n$ strip paths $V_1,P,V_2,P,\dots$ are evaluated at exponents whose real parts, $1/(2q)$ and $\mathrm{Re}\,v_k/M$, lie in $[0,1]$ and sum to $1$.
- Lemma 4.4 bounds the remaining trace by $1$.

*Lean:* [`estimation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L124-L165).

**Lemma 4.8 (proof of III.16.3).**

*Sketch.*
- Let $F(z)=\mathrm{tr}\prod_kb_kA^{W_k(z)}$ with $W(z)=Y+z(e_i-e_j)$, and put $C=(\prod_k\|b_k\|_{2q})(\mathrm{tr}\,A^M)^{1-n/(2q)}$. The function $F$ is entire.
- The relation $nw+\sum Y_k=M$ is the balance $n/(2q)+\sum_kY_k/M=1$, and $\sum_k\mathrm{Re}\,W_k(z)=\sum_kY_k$.
- On $|z|\le2r$, $\mathrm{Re}\,W_k(z)\ge Y_k-2r>0$, so III.16.2 gives $|F|\le C$ there.
- For $|x|\le r$, the circle of radius $r$ about $x$ lies in this disc, and Cauchy's estimate gives $|F'(x)|\le C/r$.
- The mean value inequality on the convex disc $|z|\le r$, between $0$ and $\ell$, gives the claim.
- $F(0)$ and $F(\ell)$ are the two traces, because all $Y_k,Y'_k\ge1$.

*Lean:* [`finite_lip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L170-L229).

### 4.3 From matrices to kernels

**Lemma 4.9 (sampled traces).** Let $L\ge1$. For a partition with masses $m_i$ and tags $x_i$, sample a kernel as $k^Q=(\sqrt{m_i}\,k(x_i,x_j)\sqrt{m_j})_{ij}$. Then:
- $(k^*)^Q=(k^Q)^*$;
- $k^Q$ is positive semidefinite whenever $k$ is;
- $\mathrm{tr}(k_1^Q\cdots k_L^Q)=\sum_{i_1,\dots,i_L}\prod_lm_{i_l}\prod_lk_l(x_{i_l},x_{i_{l+1}})$, because every vertex contributes two square-root weights;
- this Riemann sum converges to $\mathrm{Tr}(k_1\cdots k_L)$ for continuous $k_l$ along the partitions of Lemma 4.2.

*Lean:* [`sample`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L81), [`safe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L90-L94), [`measureWeight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L96-L104), [`learns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L109-L119).

**Lemma 4.10 (proof of III.16.4).**

*Sketch.* Apply III.16.3, for each partition, to $A=K^Q$ and $b_l=B_l^Q$.
- By Lemma 4.9, $\mathrm{tr}A^M\to Z>0$, so the hypothesis $\mathrm{tr}A^M>0$ holds for fine partitions.
- $\|b_l\|_{2q}\to|\mathrm{Tr}((B_l^*B_l)^q)|^{1/(2q)}$, because the column word is sampled with the same partition.
- The two gap traces converge to the cyclic integrals.
- Passing to the limit at fixed $(q,w,Y,Y',\ell,r)$ gives the bound $\frac{\ell}{r}\prod_l|\mathrm{Tr}((B_l^*B_l)^q)|^{1/(2q)}\,Z^{1-n/(2q)}$.
- The column hypothesis turns this into $Z\prod_lc_l\,\ell/r$.

*Lean:* [`passage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L76-L106), [`goes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L45-L58), [`totality`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L60-L72).

### 4.4 Holomorphy in a strip and Laurent coefficients

**Lemma 4.11 (torus integrals inside the strip).** These are the first three claims of III.16.5(a).

*Sketch.*
- The coefficient bound: $\hat u_p(x)$ is an average of $u$ over the torus $p+2\pi[0,1]^\alpha$ against a unimodular character.
- Independence of $p$: change one coordinate at a time. A real shift leaves a full-period integral unchanged. For an imaginary shift in coordinate $i$, apply Cauchy's theorem to a rectangle of horizontal width $2\pi$ between heights $\mathrm{Im}\,p_i$ and $\mathrm{Im}\,p'_i$. Periodicity cancels the vertical sides, so the horizontal integrals agree.
- The identity $\hat u_p(x)=e^{ip\cdot x}\hat u(x)$ is independence applied to $u(p)e^{-ip\cdot x}$.

*Lean:* [`market_cap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Rune.lean#L91-L99), [`full_turn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Turn.lean#L103-L112), [`coat_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Turn.lean#L114-L118).

**Lemma 4.12 (weighted $\ell^1$ bound).** Under the holomorphy and periodicity hypotheses of III.16.5(a), if $|u|\le K$ on $S_\eta$, $H\ge0$, $b>0$, and $H+b<\eta$, then $\sum_xe^{H|x|_1}|\hat u(x)|\le K(2(1+b)/b)^{\mathrm{card}\,\alpha}$.

*Sketch.*
- For given $x$, take $p$ with $\mathrm{Im}\,p_a=-(H+b)\,\mathrm{sign}\,x_a$. Then $|e^{ip\cdot x}|=e^{(H+b)|x|_1}$, and Lemma 4.11 gives $|\hat u(x)|\le Ke^{-(H+b)|x|_1}$.
- Then $\sum_{x\in\mathbb Z^\alpha}e^{-b|x|_1}\le\big(2\sum_{k\ge0}e^{-bk}\big)^{\mathrm{card}\,\alpha}\le(2(1+b)/b)^{\mathrm{card}\,\alpha}$.

*Lean:* [`Vane.issues`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Art.lean#L61-L87), [`Width.compactPay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Art.lean#L39-L57), [`pins`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Art.lean#L13-L35).

**Lemma 4.13 (Laurent representation).** Under the same holomorphy and periodicity hypotheses, if $|u|\le K$ on $S_\eta$, then $u(p)=\sum_x\hat u(x)e^{ip\cdot x}$ on $S_\eta$.

*Sketch.*
- By Lemma 4.12, with $H=\max(\{0\}\cup\{|\mathrm{Im}\,p_a|:a\in\alpha\})$ and $b=(\eta-H)/2$, the Fourier series of $\theta\mapsto u(p+2\pi\theta)$ is absolutely summable.
- Fourier inversion for the continuous shifted function identifies this series with the function.
- Evaluate at $\theta=0$ and use $\hat u_p(x)=e^{ip\cdot x}\hat u(x)$.

*Lean:* [`Vane.paints`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Art.lean#L90-L104).

**Lemma 4.14 (Laurent sums).** This is III.16.5(b).

*Sketch.*
- Differentiate term by term, using $\|D_pe^{ip\cdot x}\|\le|x|_1e^{\sigma|x|_1}\le(\eta-\sigma)^{-1}e^{\eta|x|_1}$ on $S_\sigma$.
- The derivative series is uniformly summable on the open convex strip, which gives holomorphy and the derivative bound.
- The Lipschitz bound follows from the mean value inequality.
- The real-part identity follows from $\overline{e^{-ip\cdot x}}=e^{ip\cdot x}$ for real $p$.

*Lean:* [`Width.estimate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L131-L133), [`reward`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L48-L56), [`readDeriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/Read.lean#L55-L95), [`readDiff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/Read.lean#L97-L101), [`readRealPart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/Read.lean#L119-L133).

### 4.5 Fourier analysis on tori

**Lemma 4.15 (orthogonality).** $\sum_{x\in\Lambda_n}e^{i(k_p-k_{p'})\cdot x}=n^4\delta_{pp'}$, and hence $F_nF_n^*=F_n^*F_n=n^4I$.

*Sketch.* For $p\ne0$ some unit step $e_a$ has $e^{ik_p\cdot e_a}\ne1$. Translation invariance of the sum then forces it to vanish.

*Lean:* [`sum_cell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L98-L104), [`orthogonal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L106-L110), [`gram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L117-L119), [`coGram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L121-L127).

**Lemma 4.16 (circulant diagonalization; III.16.6(a)).** Under the hypotheses of III.16.6, periodization is diagonalized by the Fourier matrix. For real $p$, the symbol is $2\pi$-periodic and satisfies $\hat R(-\bar p)=\overline{\hat R(p)}$ entrywise. These identities also hold at complex momenta wherever the series converge absolutely.

*Sketch.* For fixed $a,b,p$, summing the periodized kernel against the Fourier column gives $\sum_zR_{ab}(z)e^{ik_p\cdot(y+z)}=e^{ik_p\cdot y}\hat R(k_p)_{ab}$. Absolute convergence permits regrouping by residues. Periodicity follows from $e^{2\pi i m\cdot z}=1$, and conjugation follows term by term because $R$ is real.

*Lean:* [`circulant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L88-L104), [`Row.periods`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L49-L50), [`Row.conjugate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L39-L45).

**Lemma 4.17 (aliases; III.16.6(b)–(c)).**

*Sketch.*
- The fine Fourier matrix factors as the coarse Fourier matrix composed with the alias blocks $E_L(2\pi p/c)$.
- $E_L(\bar p)^*E_L(p)=L^4I$ is Lemma 4.15 on $\Lambda_L$. The common factor $e^{ip\cdot x/L}$ cancels against its conjugate taken at $\bar p$.
- The intertwining relation is Lemma 4.16 on the fine torus, using $e^{ik_{p,l}\cdot fz}=1$.

*Lean:* [`aliasAt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L20), [`aliasBlock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L30-L31), [`straightens`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L41-L53), [`energy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L65-L69), [`readings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L46), [`readingsGram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L66-L75), [`aligns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L110-L129).

### 4.6 Matrix square root

**Lemma 4.18 (= III.16.7).**

*Sketch.*
- Diagonalize $X=U\,\mathrm{diag}(s)\,U^*$ with $v\le s_i\le m$. Then $X/m-1$ has eigenvalues of modulus $\le1-v/m<1$.
- The scalar identity $\sum_k\binom{1/2}{k}t^k=\sqrt{1+t}$ for $|t|<1$, applied to the eigenvalues, gives $\Phi_m(X)=U\,\mathrm{diag}(\sqrt{s_i})\,U^*$.
- The binomial series in the Banach algebra of matrices has radius of convergence at least $1$, giving holomorphy. Continuity and compactness give boundedness on each smaller closed ball. Its real scalar coefficients imply commutation with entrywise conjugation.

*Lean:* [`binRoot_on_band`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L185-L198), [`binSum_deriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L104-L114), [`Band`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L21-L24).

### 4.7 Taylor coefficients and analyticity

**Lemma 4.19 (Taylor coefficients).** Let $E,F$ be real normed spaces, let $j,l\ge0$ be integers, let $f:E\to F$, and put $c_jf(x)=D^jf(x)/j!$.

- If $f$ is $C^j$ at $x$, then $D^jf(x)$ is symmetric.
- Two symmetric continuous $j$-linear forms with the same diagonal are equal.
- If $U\subset E$ is open, $f$ is smooth on $U$, $x\in U$, $u\in E^j$, and $v\in E^l$, then
  $$c_j\big(y\mapsto c_lf(y)[v]\big)(x)[u]=c_l\big(y\mapsto c_jf(y)[u]\big)(x)[v].$$
- If $f$ is $C^j$ at $-x$, then $c_j(f(-\cdot))(x)=(-1)^jc_jf(-x)$. If $f$ is $C^j$ at $x-y$, then $c_j(y'\mapsto f(x-y'))(y)=(-1)^jc_jf(x-y)$.
- If $f$ is $C^{j+1}$ at $x$, then, for $u,z\in E$,
  $$D_u\big(t\mapsto c_{j+1}f(x)[t,\dots,t]\big)(z)=c_j(D_uf)(x)[z,\dots,z].$$

*Sketch.* Induct on $j$ for symmetry, using symmetry of the second derivative to exchange the first two slots and the induction hypothesis for the remaining slots. Equality on diagonals then implies equality of the forms by differentiating the diagonal and inducting on the arity. For commutation, peel off one directional derivative at a time. The chain rule gives the reflection identities. Differentiating a symmetric diagonal contributes $j+1$ equal terms; the factorials give the last identity.

*Lean:* [`sym_Jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/SmoothJets.lean#L71-L134), [`commuteD`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/SmoothJets.lean#L54-L60), [`ext_diag`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Symmetric.lean#L62-L77), [`coeff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Homogeneous.lean#L65-L66), [`exchangeJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Exchange.lean#L36-L69), [`reflectionJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Exchange.lean#L72-L99), [`oppositeCoeff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Exchange.lean#L102-L108), [`slot_lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Homogeneous.lean#L71-L78).

**Lemma 4.20 (several-variable and weak analyticity).**
- A map between finite-dimensional complex normed spaces that is complex-differentiable on a neighbourhood of $x$ is analytic at $x$.
- Let $E$ be a complex Banach space and $f:\mathbb C\to E$ continuous on an open set $U$. If $L\circ f$ is holomorphic on $U$ for every $L$ in a family of continuous complex linear functionals that separates points, then $f$ is analytic on $U$.

*Sketch.*
- First claim: choose coordinates and a closed polydisc contained in the differentiability neighbourhood. Successive applications of the one-variable Cauchy formula express each scalar component as a continuous linear functional applied to the product of the Cauchy kernels and the fixed boundary values. Each kernel is analytic in the interior variables, since its denominator is invertible in the Banach algebra of continuous functions on the angle torus. Their finite product and the resulting integral are analytic. Coordinate changes recover the assertion for the original spaces.
- Second claim: the Cauchy integral formula holds after applying each $L$, the separating family lifts it to $E$, and the Cauchy power series converges.

*Lean:* [`finiteD`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Polydisc.lean#L222-L238), [`lift_weak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Weak.lean#L21-L50).

### 4.8 Free Maxwell field

**Lemma 4.21 (Poincaré lemma in radial gauge; III.16.8(a)).**

*Sketch.*
- The curl is closed by symmetry of second derivatives.
- Inverse on $\mathcal C_j$: for $F\in\mathcal C_j$ and $A_i=(j+2)^{-1}x_kF_{ki}$, compute $\partial_iA_l-\partial_lA_i=(j+2)^{-1}\big(2F_{il}+x_k(\partial_iF_{kl}-\partial_lF_{ki})\big)$. By Bianchi this equals $(j+2)^{-1}\big(2F_{il}+x_k\partial_kF_{il}\big)$, and by Euler's identity this is $F_{il}$.
- The map lands in radial gauge, since $x_ix_kF_{ki}=0$ by antisymmetry.
- Inverse on $\mathcal A_j$: differentiating $x_kA_k=0$ gives $x_k\partial_iA_k=-A_i$. Hence $x_kF_{ki}=(j+1)A_i+A_i=(j+2)A_i$.

*Lean:* [`takeCurl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L97-L98), [`closedCurl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L108-L128), [`contracted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L130-L154), [`curl_inverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L163-L195), [`potential_recover`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L197-L214), [`potential`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L218-L224).

**Lemma 4.22 (the shell; III.16.8(b)).**
- $\mathcal S_j$ is a subspace of $\mathcal C_j$.
- The inverse curl restricted to the shell is injective: [`gaugeJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L46-L47), [`leg_injective`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L49-L50).

*Sketch for III.16.8(b).* By Lemma 4.19, for $j\ge1$ the derivatives of the $j$-th homogeneous Taylor polynomial are the $(j-1)$-th Taylor coefficients of the derivatives; the degree-zero case is constant. The Bianchi and Maxwell combinations of $f$ vanish near $x$, so the corresponding combinations of Taylor coefficients vanish.

*Lean:* [`onShell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L18-L42), [`WaveOn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L57-L62), [`WaveOn.jets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L73-L122).

**Lemma 4.23 (the free kernel; III.16.8(c)).**

*Sketch.*
- $\partial_i\partial_jG_0=-2N\delta_{ij}|x|^{-4}+8Nx_ix_j|x|^{-6}$ with $N=(4\pi^2)^{-1}$. The trace vanishes in dimension four.
- $\psi_{\cdot,km}$ is divergence-free and harmonic, so $\sum_a\partial_aC_{ab,km}=\Delta\psi_b-\partial_b\,\mathrm{div}\,\psi=0$.
- Bianchi holds because $C$ is a curl.
- Exchange and evenness follow from the explicit Hessian.

*Lean:* [`Green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L22), [`second_Green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L49-L66), [`harmonic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L69-L77), [`curlOpp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L17-L18), [`bareCurl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L20), [`Bare.equation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L82-L98), [`Bare.exchange`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L104-L109).

**Lemma 4.24 (jet pairing; III.16.8(d)).**

*Sketch.*
- By III.16.8(b)–(c), the Taylor coefficients of $C$ in either leg lie on the shell. Hence only the restrictions of $p$ and $q$ matter.
- Symmetry: it suffices to check probes that read single mixed Taylor coefficients, because these span the dual of the shell. For those, the claim follows from:
  - commutation of Taylor coefficients of different orders (Lemma 4.19);
  - the reflection rule, with sign $(-1)^l$;
  - $C_{ab,km}(x)=C_{km,ab}(-x)$.

*Lean:* [`Probe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L64), [`contraction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L145-L146), [`descends`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L148-L159), [`kernel_smooth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L168-L172), [`exchange`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Bilinear.lean#L159-L169).

**Lemma 4.25 (Wick hierarchy; III.16.10).**

*Definitions.*
- *Pairings* are fixed-point-free involutions of the factor occurrences whose partners sit at different points; no self-contractions are allowed.
- The *moment* is defined on the monomial basis and extended multilinearly.
- Labels enter through the substitution $A_j=\mathrm{curl}^{-1}F_j$, $F_j\in\mathcal S_j$.
- The *equation ideal* is the kernel of this substitution. It consists of the labels that vanish on every on-shell jet sequence.

*Sketch of the properties.*
- Vanishing on the equation ideal: multilinearity.
- Relabelling and insertion of $1$: added unit monomials have no occurrences. An injection of the remaining indices induces bijections of occurrences and pairings. If the orientation of an edge reverses, the exchange identity for $\kappa$ preserves its value. Extend from monomials by multilinearity.
- Smoothness: each polynomial has finitely many monomials and each monomial finitely many pairings, so the result is a finite sum of products of smooth kernels off the diagonal. When all insertions are $1$, there are no occurrences and exactly one empty pairing, whose product is $1$.

*Lean:* [`Wick.entry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L24), [`Wick.Occ.Matching`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L75-L76), [`Wick.monomial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L107), [`reduceEq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L47-L50), [`observable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L66-L67), [`equationIdeal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72), and the links of III.16.10.

### 4.9 Labels

**Lemma 4.26 (= III.16.9).**

*Sketch.*
- (a) A complex polynomial that vanishes on $\mathbb R^N$ is zero.
- (b) A coordinate's exponent in a monomial of weight $\le d$ is at most $d$, and only finitely many coordinates have weight $\le d$.
- (c) Bihomogeneous components of an invariant polynomial are invariant, because the adjoint action is linear in each $A_j$ and preserves bidegree. They are real if the label is real.
- (d) Real bihomogeneous labels span $\mathrm{Label}_d$ over $\mathbb C$, by taking real and imaginary parts of its bihomogeneous components. A basis containing $1$ can be extracted, and the bases are extended inductively from level $d$ to level $d+1$.
- Each frame gives coordinates on $\mathrm{Label}_d$. For every real $t$, rescaling the coordinate of $e_i$ by $t^{\deg e_i}$ (polynomial degree) commutes with the action of $O(4)$, since that action preserves each polynomial degree: [`Frame.scaled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L58-L61), [`Frame.scaling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L96-L109).

*Lean:* [`radial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L22-L37), [`eval_ext`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L38-L49), [`cap_finite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L63-L94), [`component_mem`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L35-L48), [`decompose`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L87-L105), [`frame_exists`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L83-L86), [`frames`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L107-L111), [`rotation_law`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Action.lean#L82-L88).

## 5. Where the difficulty lies

The analytic issue in III.16.3–III.16.4 is to retain a bound independent of matrix dimension while varying the exponents and passing to integral kernels. The three-lines argument uses dimension only for qualitative boundedness on the strip. Arbitrary insertions are allowed: their Schatten norms supply the entire insertion cost. Positivity and a positive cyclic trace are required of the transfer kernel, and quadrature is taken at fixed exponents and period.

The complex-power convention matters at zero: $A^0$ is the range projection. The strict inequalities $Y_k>2r$ ensure that the integer endpoints agree with ordinary positive powers. Fourier inversion loses strip width and the explicit factor $(2(1+b)/b)^4$; differentiating a Laurent sum costs $1/(\eta-\sigma)$. The Bloch identities retain all momenta, and at complex momentum the alias identity uses the adjoint evaluated at $\bar p$.

For Maxwell jets, the conventions are Taylor coefficients $D^j/j!$, real orthonormal colour coordinates, the normalization $(4\pi^2)^{-1}$, and the sign $(-1)^l$ at the second endpoint. The equation subspace is defined by restriction to shell jets; no presentation by invariant generators is needed. The chosen label bases are coherent as sets of polynomials, rather than as prescribed ordered lists.

## 6. Notation

| Written proof | Lean | Meaning |
|---|---|---|
| positive-semidefinite kernel | [`NNKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L18-L19) | all finite Gram matrices Hermitian and positive semidefinite |
| tagged partitions $Q_k$, masses $m_i$ | [`Quad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L22-L26), [`Quad.shrink`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L65-L66) | finite measurable partition with tags; mesh $1/(k+1)$ |
| $\lVert b\rVert_{2q}$ | [`paysNorm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L106), [`rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L105) $=1/(2q)$ | Schatten norm via $\mathrm{tr}((b^*b)^q)$ |
| strip path | [`Flex`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Holder.lean#L25-L29) | entire; contraction on the strip; trace norm $\le1$ on $\mathrm{Re}=1$ |
| $A^z$ | [`leap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L22-L24), [`specPow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Columns.lean#L38) | complex power, $0$ on $\ker A$ |
| $Z_A=\mathrm{tr}A^M$ | [`Holder.Q`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L37) | absolute trace, equal to the trace for $A\succeq0$ |
| sides of III.16.2 | [`total`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L108-L109), [`cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L111-L112) | trace product and Hölder bound |
| $q,w,M,\ell,K,Z,c_k,Y'$ | `p`, `width`, `N`, `m`, `T`, `R`, `K`, `Z` | Lean parameters of `finite_lip`, `passage` |
| $\mathrm{Tr}(k_1\cdots k_L)$ | [`TimeKernel.closed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L76) | cyclic integral |
| $k^Q$, $k^*$ | [`sample`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L81), [`op`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L83) | sampled matrix; adjoint kernel |
| $B_1K^{Y_1}\cdots$; $(B^*B)^q$ | [`along`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L17-L18), [`multiply`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L20) | gap word; column word |
| $S_\eta$; $e^{ip\cdot x}$; $\lvert x\rvert_1$ | [`strip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L43), [`mode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L39), [`size`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L34) | strip, Fourier character and lattice one-norm |
| $\sum e^{\eta\lvert x\rvert_1}\lvert f(x)\rvert\le W$ | [`Width`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L104) | weighted norm bound |
| $\hat f$ | [`Laurent.read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L123), [`Row.read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L30-L31) | symbol (Laurent series) |
| periodic holomorphic $u$ on $S_\eta$; $\hat u_p$ | [`Vane`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Rune.lean#L18-L21), [`market`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Rune.lean#L80) | strip hypotheses and shifted Fourier coefficients |
| kernel $R$; periodization $R_n$ | [`Bloch.Row`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L22), [`Row.acts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L33-L34), [`Row.strip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L26) | real kernel over $\mathbb Z^4$ with internal indices |
| $k_p$; $F_n$ | [`mon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L18), [`cell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L20), [`F`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L113) | torus momentum, character and Fourier matrix |
| alias momenta; $E_L(p)$ | [`aliasAt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L20), [`aliasBlock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L30-L31) | fine momenta over one coarse momentum and their Fourier block |
| $\Phi_m$; $v\le X\le m$ | [`binRoot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L125), [`Band`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L21-L24) | analytic root and quadratic-form bounds |
| $c_jf(x)=D^jf(x)/j!$ | [`Tensor.coeff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Homogeneous.lean#L65-L66) | Taylor coefficient |
| $\partial_i$ | [`Maxwell.grad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L20) | partial derivative along axis $i$ |
| $\mathcal A_j$ | [`Labels.Taylor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L39) ([`radial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L22-L37)) | radial-gauge potentials, degree $j+1$, weight $j+2$ |
| $\mathcal C_j$; $\mathcal S_j$ | [`formSpace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L63-L95) ([`ClosedJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L57-L61)); [`Shell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L44) | closed curvature jets; Maxwell shell |
| curl and its inverse | [`takeCurl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L97-L98), [`contracted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L130-L154) | homogeneous radial-gauge identification |
| $G_0$; $C_{ab,km}$ | [`Green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L22), [`bareCurl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L20) | $G_0=(4\pi^2\lvert x\rvert^2)^{-1}$; free field-strength two-point function |
| probe; $\kappa(p,q)$ | [`Probe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L64), [`legKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L161-L162) | linear form on $\mathcal S_j$; one-contraction kernel |
| free moment; free correlation | [`Wick.moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127), [`Wick.correlation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L145-L147) | Wick pairing sum and its restriction to labels |
| equation ideal | [`equationIdeal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72) | labels vanishing on all on-shell jets |
| $\mathrm{Pol}$; $\mathrm{Label}_d$; weight | [`Labels.Pol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L29), [`Labels.Label`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L112), [`height`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L55) | polynomial algebra, invariant filtered subspace and engineering weight |
| frame | [`Frame`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L50-L57), [`frames`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L107-L111) | complex basis of real bihomogeneous polynomials, with $e_0=1$, coherent in $d$ |

## 7. What remains unexplained
1. **Additional lemmas and dependency lists.** The elementary helper lemmas assigned to this unit outside the eight folders have not been checked individually. The longer unit lists in §2 have not been independently verified entry by entry and should be treated as guides to placement.
2. **Norms and parameter choices.** The square-root argument uses the matrix operator norm; its entrywise Laurent bounds require a finite-dimensional norm conversion. In III.6 the strip is narrowed to $\tau=\min(\eta/2,v/(2CD))$, with $D=2A/\eta$ and $C$ a norm-conversion constant, and then to $\tau/3$. IV.1 chooses $q,w,r$ and sums successive insertion moves. Those choices must accompany any claim of uniformity in volume or spacing.
3. **Placement.** The trace estimate belongs with IV.1, Laurent and Bloch analysis with III.2–III.7, labels with II.1, and Maxwell jets and Wick correlations with VI.1–VI.2 and VII.1–VII.3. The full square-root theorem is assembled in III.6.

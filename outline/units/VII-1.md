# VII.1. Short distances: convergence to free Maxwell fields

*Part VII — Identification as Yang–Mills.* 8,117 lines of Lean in 1,626 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is **checked** against the Lean and rewritten by a second model; a final editing round is in progress. It is updated as it improves.


**Part:** VII, identification as Yang–Mills. **Lean:** the chain of [`YM/Pert`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert) (folders `Fourier`, `Align`, `Warp`, `Rig`, the jet stencils of `Lattice`, the statement `Position/Crest.finite_leading`, and `Dense`), [`YM/Push/FINITE_DETECTION`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION), [`YM/SharpGram/Weak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak), [`YM/SharpGram/Dense`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense), [`YM/RG08`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08) (about thirty small sub-folders), [`YM/PertExtension`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PertExtension), [`YM/OPE/Levy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Levy). **Size:** 8,117 lines. They divide as follows:
- 3,275 lines in the chain ending in `finite_leading`;
- 1,006 in `FINITE_DETECTION`;
- 616 in `SharpGram/Weak`;
- about 2,250 in `RG08` (`Dart` 538, `Ballast` 338, `Vale` 315, the rest under 160 each);
- 316 in `SharpGram/Dense`, 310 in `PertExtension`, 108 in `SharpGram/Matrix`, 95 in `Pert/Fourier` and 63 in `OPE/Levy`;
- the remainder in packages of fewer than 40 lines.

The unit proves the **free side** of the short-distance comparison. It does not contain the statement that the rescaled correlations of the *interacting* theory converge to the free Maxwell hierarchy. That statement is the structure [`FirstExtension`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L26-L39) of VI.2, produced by [`firstTarget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L57-L81) in VIII.1. The unit proves four things:
- the order-zero term of lattice perturbation theory converges, as the spacing tends to zero, to the Wick-ordered free Maxwell hierarchy evaluated on the on-shell images of the labels (VII.1.1–VII.1.3);
- the free hierarchy detects every label outside the Maxwell equation ideal through a single two-point function at a fixed pair of points (VII.1.4–VII.1.5);
- using this detection, the measuring charts of the construction can be corrected to charts that are exactly compatible with the filtration, the symmetries and the unit (VII.1.6);
- some bookkeeping on waits, windows and layouts used by the rank budget (VII.1.7).

## 1. What this unit proves

**Setting.**

*Gauge group and continuum objects.*
- $G$ is a compact simple gauge group with Lie algebra $\mathfrak g$, an invariant inner product and an orthonormal basis of colours.
- A *key* $a=(j,\alpha)$ is a coordinate of the space $T_j$ of rank-$j$ Taylor coefficients of a $\mathfrak g$-valued 2-form (the curvature jet of order $j$).
- $\mathrm{Pol}$ is the polynomial algebra in the keys. $F_d$ is the label space of degree $d$ of the free table (IV.1).
- $\mathrm{Sh}_j\subset T_j$ is the shell: the rank-$j$ jets of solutions of $dF=0$, $d{*}F=0$, equivalently homogeneous Maxwell solutions of degree $j$.
- $\rho:\mathrm{Pol}\to \mathrm{WickPol}=\mathbb C[\text{shell coordinates}]$ restricts a polynomial to on-shell jets ([`reduceEq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L47-L50)).
- The *equation ideal* $\mathcal I_d$ is the set of labels of degree $\le d$ in $\ker\rho$: those that vanish on every on-shell Taylor tower ([`equationIdeal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72)).
- $\omega_d=\rho\circ\mathrm{sec}_d:F_d\to\mathrm{WickPol}$ is the on-shell image of a label. Here $\mathrm{sec}_d$ is the representative polynomial of VII.3, whose jets have already been projected onto the shell ([`sections`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L35), [`fixedPolynomial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Lifts.lean#L55-L60)).

*The free Maxwell hierarchy (III.16).*
- $\Gamma(x)=1/(4\pi^2|x|^2)$ ([`Green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L22)).
- The kernel [`bareCurl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L20) is $\delta_{bk}\partial_a\partial_m\Gamma-\delta_{bm}\partial_a\partial_k\Gamma-\delta_{ak}\partial_b\partial_m\Gamma+\delta_{am}\partial_b\partial_k\Gamma$. This is $\langle F_{ab}(x)F_{km}(y)\rangle$ at $x-y$ for $F=dA$, where $A$ is the Feynman-gauge free field with $\langle A^c_\mu(x)A^{c'}_\nu(y)\rangle=\delta^{cc'}\delta_{\mu\nu}\Gamma(x-y)$.
- For linear forms $P$ on $\mathrm{Sh}_j$ and $Q$ on $\mathrm{Sh}_l$, $K(P,Q)(x-y)$ is $P$ applied to the $j$-jet in $x$ and $Q$ to the $l$-jet in $y$ of this kernel, colour-diagonal ([`legKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L161-L162)). It depends only on the restrictions of $P,Q$ to the shells, because the kernel solves the free equations in each variable.
- For a key $a$, write $K_{ab}=K(\kappa_a,\kappa_b)$, where $\kappa_a$ is the $a$-th coordinate of the on-shell jet.
- The *Wick moment* $\mathcal W_x(q_1,\dots,q_r)$, for $x\in\mathrm{Conf}_r$ and $q_i\in\mathrm{WickPol}$, is multilinear ([`Wick.moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127)). On monomials it is the sum, over perfect matchings of the variable occurrences that never pair two occurrences at the same point, of the product of the entries $K(\cdot,\cdot)(x_i-x_j)$. It is the correlation of the Wick-ordered products $:\!q_i\!:(x_i)$ of the Gaussian jet field with covariance $K$.
- The free hierarchy of the labels is $x\mapsto\mathcal W_x(\omega_d p_1,\dots,\omega_d p_r)$ ([`Ward.disc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L23) of the free table).

*The lattice prescription at order zero (definitions from VII.3).*
- $\Lambda_N=(\mathbb Z/N)^4$ with $N$ even, $N\ge 4$.
- The field space $\mathcal A_N$ consists of $\mathfrak g$-valued link variables that are odd under the point reflection: $A(-x-e_i,i)=-A(x,i)$, i.e. $A$ is invariant under $x\mapsto -x$ as a 1-form ([`LinkP`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Geometry.lean#L107-L111)).
- The quadratic form $\mathsf Q_N(A)=\tfrac12\big(\sum_{x,i<j}|\mathrm{curl}_{ij}A(x)|^2+\sum_x|\mathrm{div}A(x)|^2\big)$ is the Hessian at the identity of the Wilson action plus the Feynman gauge-fixing term $\tfrac14\sum|\mathrm{div}A|^2$ ([`form`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Precision.lean#L76-L78), [`action`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Action.lean#L46)).
- $\mathsf Q_N$ is positive definite on $\mathcal A_N$: a closed and divergence-free field is constant, and constants are not reflection-odd. $\mu_N$ is the centred Gaussian with precision $\mathsf Q_N$ ([`data`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Measure.lean#L31)).
- Expectations are formal power series in the coupling. The order-$n$ coefficient collects the Taylor coefficients of order $n+2$ of the action, of order $n$ of the Haar Jacobian and Faddeev–Popov density, and of order $n+1$ of the observables ([`weight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Series.lean#L61), [`seriesLex`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Readers.lean#L32)). Order zero is therefore a $\mu_N$-expectation; $\langle\cdot\rangle^{(0)}$ denotes the order-zero coefficient.
- $\ell^h_{x}:\mathcal A_N\to T_j$ is the linear lattice curvature jet at site $x$ ([`slope`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/TopLinear.lean#L38)). It is the $j$-fold forward difference of the plaquette curl divided by $j!$, symmetrised, scaled by $h^{-(j+2)}$, and averaged over the hyperoctahedral group $W_4$ of signed axis permutations. $\ell^h_{x,a}$ is its $a$-th coordinate.
- The order-zero lattice representative of $p\in\mathrm{Pol}$ of degree $\le d$ at $o$ is
$$R_h(p,o)(A)=\mathbb E_\xi\, p\big(\ell^h_o(A)+i\xi\big),$$
where $\xi$ is an independent centred Gaussian on the keys of rank $\le d$ with covariance
$$S_h(a,b)=(2\pi)^{-4}\int_{[-\pi,\pi]^4}\hat\Delta(k)^{-1}\sum_c \lambda_a(c,k)\lambda_b(c,k)\,dk .$$
Here $\hat\Delta(k)=\sum_i4\sin^2(k_i/2)$, $c$ runs over cosine/sine, axis and colour channels, and $\lambda_a(c,\cdot)$ is $\ell^h_{0,a}$ applied to the corresponding plane wave on $\mathbb Z^4$. So $S_h$ is the covariance of the jet stencils at one site for the Feynman-gauge Gaussian on the infinite lattice $\mathbb Z^4$, and $R_h(p,o)=\,:\!p(\ell^h_o)\!:_{S_h}$ is Wick-ordered with respect to the infinite-lattice self-contraction ([`column`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Blank.lean#L41), [`link`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Symbol.lean#L50)).
- **Schedule.** For an integer $L\ge2$ set $h_m=L^{-m}$ and $N_m=4L^{m^2+m+1}$. Lattice points are reported relative to the centre $c_m=(N_m/4,\dots,N_m/4)$, through $o\mapsto h_m(o-c_m)$ with representatives in $(-N_m/2,N_m/2]^4$.
- **Profile.** For $f:(\mathbb R^4)^r\to\mathbb C$ and $p\in F_d^{\,r}$,
$$\Pi_m(f;p)=h_m^{4r}\sum_{o\in\Lambda_{N_m}^r}f\big(h_m(o-c_m)\big)\,\Big\langle\prod_{j}R_{h_m}(\mathrm{sec}_d\,p_j,o_j)\Big\rangle^{(0)}_{N_m}$$
([`profile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L55-L56), [`row`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L41-L42)).
- **Itinerary.** An itinerary is a sequence $(N_i,h_i)$ with $N_i$ even, $h_i>0$, $N_ih_i$ a positive integer tending to $\infty$, $h_i\to0$, and $N_ih_i^k\to\infty$ for every $k$ ([`Itinerary`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Burst.lean#L50-L59)). Sites $o_i\in\Lambda_{N_i}$ are *homing* to $z$ if $h_i(o_i-c_{N_i})\to z$ ([`Home`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Schedule.lean#L53)).

**Proposition VII.1.1 (regulator removal at order zero).** Fix $L\ge2$, $d,r$, frames, and $p_1,\dots,p_r\in F_d$. Let $f$ be continuous with compact support and $\mathrm{supp}\,f\subset\mathrm{Conf}_r$. Then
$$\lim_{m\to\infty}\Pi_m(f;p)=\int f(x)\,\mathcal W_x(\omega_dp_1,\dots,\omega_dp_r)\,dx .$$
In board form: let $Q$ be a position board whose profiles are smooth test functions compactly supported in $\mathrm{Conf}$ ("clean profiles"). Then the order-zero board readings converge to the free readings, slot by slot and for every tuple of basis labels.
*Status:* theorem. There is no hypothesis on the construction; it concerns lattice Gaussian integrals and the continuum kernel only.
*Lean:* [`Rig.zerothProfile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L59-L69). Board form: [`Position.finite_leading`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L13-L16), using the definitions [`finite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L98), [`white`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L103-L104) and [`CleanProfiles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L13) (all VII.3).

**Proposition VII.1.2 (pointwise convergence of order-zero correlations).** Let $(N_i,h_i)$ be an itinerary with $4\mid N_i$. Let $z\in\mathrm{Conf}_r$, and let $o_{i,j}\in\Lambda_{N_i}$ be homing to $z_j$ for each $j$. Then for all $p_1,\dots,p_r\in F_d$,
$$\Big\langle\prod_jR_{h_i}(\mathrm{sec}_dp_j,o_{i,j})\Big\rangle^{(0)}_{N_i}\longrightarrow\mathcal W_z(\omega_dp_1,\dots,\omega_dp_r).$$
*Status:* theorem.
*Lean:* [`Warp.row_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L65-L68), through [`poly_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L50-L63) and [`earth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Approach.lean#L19-L32).

**Proposition VII.1.3 (corrected two-leg covariance).** In the setting of VII.1.2 (an index set $\iota$, $z:\iota\to\mathbb R^4$ injective, sites homing to $z_j$, $4\mid N_i$), define for indices $j,l$ and keys $a,b$
$$\kappa_h(j,a;l,b)=\mathrm{Cov}_{\mu_N}\big(\ell^h_{o_j,a},\ell^h_{o_l,b}\big)-\delta_{jl}\,S_h(a,b).$$
Then
$$\kappa_{h_i}(j,a;l,b)\to\begin{cases}K_{ab}(z_j-z_l), & j\ne l,\\ 0, & j=l.\end{cases}$$
*Status:* theorem.
*Lean:* [`Align.corrected_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L39-L44), from [`orbit_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L80-L88), [`orbit_contact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L89-L95) and [`shell_exact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L108-L113).

**Proposition VII.1.4 (two-point detection).** Let $e_{\mathrm t}$ be the unit vector of the time axis, $\sigma$ the time reflection $x_{\mathrm t}\mapsto-x_{\mathrm t}$ acting on labels, and $\bar v$ the complex conjugate label. If $v$ is a label of degree $\le d$ and $v\notin\mathcal I_d$, then
$$\mathrm{Re}\;\mathcal W_{(e_{\mathrm t},0)}\big(\rho v,\ \rho(\sigma\bar v)\big)>0 .$$
More generally, let $\Phi$ and $\Psi$ be the algebra maps sending shell coordinates to the "eigen" and "reflected" probe variables of Lemma VII.1.m. For every nonzero $q\in\mathrm{WickPol}$, $\mathrm{Re}\,\mathcal W_{(e_{\mathrm t},0)}(\Phi q,\Psi\bar q)>0$. Here $\Phi$ is surjective, and $\rho(\sigma\bar v)=\Psi(\bar q)$ whenever $\rho v=\Phi q$.
*Status:* theorem, about the free kernel only. No Wilson family and no reflection positivity of a measure is involved.
*Lean:* [`Free.two_detect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L151-L155), [`Free.positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L132-L149), [`detectors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L26).

**Proposition VII.1.5 (Kelvin formulas for the free kernel).**

(a) Let $A$ be a symmetric $j$-tensor on $\mathbb R^4$ whose diagonal $x\mapsto A(x,\dots,x)$ is harmonic. Then for $x\ne0$
$$\frac1{j!}A(\partial,\dots,\partial)\,\Gamma(x)=\frac{(-2)^j}{4\pi^2}\,|x|^{-2(j+1)}A(x,\dots,x).$$

(b) Let $Y\in\mathrm{Sh}_j$ be $\mathfrak g$-valued, with homogeneous Maxwell solution $Y^\natural(x)=Y(x,\dots,x)$. Contract the rank-$j$ Taylor coefficient at $x$ of the curvature kernel with $Y$, fully, over colours, form indices and jet indices. For $x\ne0$ the result equals
$$\gamma_j\,(\iota^*Y^\natural)(x),\qquad \gamma_j=\frac{2^j(j+1)(j+2)}{\pi^2}.$$
Here $\iota(x)=-x/|x|^2$ and $\iota^*$ is the pullback of 2-forms:
$$(\iota^*F)_{km}(x)=|x|^{-4}\big[F_{km}-2|x|^{-2}(x_k\,(x\lrcorner F)_m-x_m\,(x\lrcorner F)_k)\big](\iota x).$$
*Status:* theorem.
*Lean:* [`Kelvin.harmonic_Green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Harmonic.lean#L157-L180) (with [`R`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Harmonic.lean#L83) $=|x|^{-2}$), and [`Kelvin.response_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L172-L176) (with [`inverted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L64-L65) and [`gain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L92)).

**Proposition VII.1.6 (corrected measuring charts).** Hypotheses:
- $G$ is simple;
- $U$ is a construction record (`Final`) with limit table $S$ and extraction order $f$;
- $u$ is a nontrivial filter on $\mathbb N\times\mathbb N$ finer than the extraction filter of $f$;
- $X$ is a weak measuring portfolio to level $D$ along $u$;
- $T$ are OPE table work items (VII.4).

The portfolio $X$ consists of:
- an index $g(k)\le k$, tending to infinity, with $\mathrm{scale}(k)\le\mathrm{scale}(g(k))+\log\hat\beta_k$;
- label tables at finite regulators satisfying the rank and cost budget at step $g(k)$;
- their $u$-limits $\Phi_k$.

Let $\chi_k(d):F_d\to S_d$ be the raw charts: the projection to $S_d$ of the labels read through $\Phi_k$ when this map is bijective, and a fixed isomorphism otherwise. Then there are linear isomorphisms $p_k(d):F_d\to S_d$ with two properties:
1. Eventually in $k$, for all $d\le e\le D$:
   - $p_k(d)$ intertwines the free and constructed signed-permutation actions and the conjugations;
   - $p_k(d)$ maps the free unit to the unit of $S_d$;
   - $p_k(e)\circ\iota^F_{d,e}=\iota^S_{d,e}\circ p_k(d)$ for the filtration inclusions.
2. $\chi_k(d)^{-1}p_k(d)v\to v$ for every $v\in F_d$, $d\le D$.

*Status:* theorem under the listed hypotheses. The two-point convergence it needs is proved in this unit (Lemma VII.1.q); it is not a hypothesis.
*Lean:* [`Weak.Portfolio.tune_grades`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159), with [`Portfolio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L35-L49) and [`chart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L76-L79).

**Proposition VII.1.7 (waits, windows and layouts).** These are bookkeeping statements on the renormalization-group (RG) schedule:

(a) Let $G$ be simple, let $(\Theta,B,u)$ be a relay with $u_i\le L_i$, let $J_0$ be a local Haar chart ratio, and let $U$ be a wait whose window is the slim window $\lfloor\log(\mathrm{bar}+\mathrm{slope}\cdot t)/\log L_j\rfloor$. A relay is a choice of active degrees together with three price panels per degree whose exponents satisfy finitely many linear inequalities. Then there is a wait $W\ge U$, obtained by raising thresholds, with the same window, together with a certified station port. "Certified" means panel prices and costs such that, for every family paying $W$, at every sufficiently late step whose backward window stays in one RG stage, a table meeting the rank and cost budget exists.

(b) If the window is slim and the RG trajectory pays a wait that is late enough, there is $g\to\infty$ such that eventually $g(k)\le k$, the backward window ending at $g(k)$ stays in one stage, and $\mathrm{scale}(k)\le\mathrm{scale}(g(k))+\log\hat\beta_k$. This $g$ is the index of the portfolio in VII.1.6.

(c) For a finite marker set $T$, $p\in T$, integers $k,E,q$ with $q\le k+E$, and $v>0$, there are $0<w\le v$ and $C\ge0$ with the following property. Every layout whose orders $i\le E$ are $v$-weighted summable with budget $B$ can be re-rooted at $x_p$ and shifted by $q$ in order. The result admits a decomposition into pieces that depend only on $T$ and satisfy an $\exp(w\cdot\mathrm{girth})$-weighted $\ell^1$ bound with budget $BC$.

*Status:* theorems.
*Lean:* [`Dense.slim_wait_for`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Slender.lean#L127-L143), [`Dense.nearby`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Cover.lean#L155-L165), [`Dart.coin_pre`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Dart/Seams.lean#L34-L45).

## 2. What it uses

**From other units.**
- *VII.3 (the lattice prescription and position boards):*
  - the reflection-odd field space, the Feynman-gauge form, the Gaussian $\mu_N$ and the coupling series;
  - the jet stencils ([`wideLinear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/TopLinear.lean#L33-L35)), the Wick-subtraction covariance $S_h$ ([`shellCov`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Symbol.lean#L58-L59)) and the on-shell representatives [`physicalLabel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Lifts.lean#L78);
  - rows, profiles and the board objects [`Conditions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L54-L59), [`finite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L98) and [`white`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L103-L104).
- *III.16 (free Maxwell analysis):* the shells, [`reduceEq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L47-L50), [`equationIdeal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72), $\Gamma$, the curvature kernel [`legKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L161-L162) and the Wick moment [`Wick.moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127).
- *IV.1 and VI.1:* the free table and its label spaces $F_d$ (IV.1); the hierarchy as a function of positions, [`Ward.disc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L23) (VI.1).
- *II.1 and I.1:* labels, keys and Taylor jets (II.1); the lattice and the signed permutations $W_4$ (I.1).
- *For VII.1.6:*
  - the construction record `Final` (defined in VIII.1) and the limit table $S$;
  - the OPE table work items, of which only the system part is used (VII.4);
  - the chart-correction machinery [`retraction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L35-L55), [`adjusted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L61-L66), [`rotateChart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L137-L140) and [`Graded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L171-L172) (VII.5);
  - the rank budget and its decay [`Ship.diminishes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L34-L37) (III.11), and the cost accounting of observables (III.15, probable);
  - the lemma [`tendsto_of_fitted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A04.lean#L34-L57) (VI.1): if $f_k\to g$ pointwise, $g$ is injective and $f_k(w_k)\to g(z)$, then $w_k\to z$.
- *For VII.1.7:* waits, payment of a wait, and the RG schedule (III.2); price panels and the linear checks on their exponents (II.2).

**Standard mathematics.**
- Gaussian moments and Wick's theorem in recursive form; Wick ordering as $:\!p(\varphi)\!:\,=\mathbb E_\xi\,p(\varphi+i\xi)$. References: Glimm–Jaffe, *Quantum Physics*, §6.3 and §8.6; B. Simon, *The $P(\varphi)_2$ Euclidean (Quantum) Field Theory*, Ch. I.
- Fourier analysis on $(\mathbb Z/N)^4$; asymptotics of the lattice Green function and its finite differences (Lawler–Limic, *Random Walk: A Modern Introduction*, Ch. 4); power counting for lattice Feynman integrals (T. Reisz, *Commun. Math. Phys.* 116 (1988) 81).
- Riemann sums for continuous compactly supported functions; dominated convergence.
- Derivatives of $|x|^{2-n}$ against harmonic polynomials (Hobson's formula; E. W. Hobson, *The Theory of Spherical and Ellipsoidal Harmonics*, 1931); the Kelvin transform (Axler–Bourdon–Ramey, *Harmonic Function Theory*, Ch. 4); invariance of the source-free Maxwell equations under inversion (Bateman, Cunningham, 1910).

**Imported constants and assumptions.**
- VII.1.1–VII.1.5 import none.
- VII.1.6 imports the construction record, the portfolio data (budgets met at step $g(k)$), the error budget of III.11, which tends to $0$, and the OPE work items.
- VII.1.7 imports the RG schedule (stage lengths $L_j$, the scale and $\hat\beta_k$) from III.2.

## 3. Strategy

**Order zero is a Gaussian computation.** By the definition of the coupling series, the order-zero coefficient of a normalized lattice expectation is the expectation under $\mu_N$ of the product of the order-zero representatives. Each representative is an average over an independent imaginary Gaussian. The order-zero correlation is therefore $\mathbb E\big[\prod_{a\in s}(\ell^h_{o(a),a}+i\xi_{o(a),a})\big]$ for a joint centred Gaussian in which:
- $\xi$ has one independent copy per insertion point;
- the pair covariance of two legs is the corrected covariance $\kappa_h$: the torus covariance of the stencils minus, at a common site, the $\mathbb Z^4$ self-covariance $S_h$.

Instead of summing Feynman graphs, the proof uses Wick's theorem in the symmetric recursive form
$$|s|\,E(s)=\sum_{a\ne b\in s}\kappa(a,b)\,E(s\setminus\{a,b\}).$$
It shows that the continuum Wick moment of the on-shell monomials satisfies the same recursion, with $\kappa$ replaced by $K_{ab}(z_{o(a)}-z_{o(b)})$ off the diagonal and $0$ on it. Strong induction on $|s|$ then reduces everything to the convergence of $\kappa_h$, which is VII.1.3. That convergence has two parts.
- *Separated legs.* $h^{-(j+k+4)}$ times finite differences of the torus Green function at scaled separation $z\neq0$ converge to the derivatives of $\Gamma$. The method-of-images term vanishes because the image point lies at physical distance $\ge hN/4\to\infty$; this is why points are reported around the quarter-period centre and $4\mid N$.
- *Coincident legs.* At a fixed lattice separation, the difference between the torus and the $\mathbb Z^4$ Green function, multiplied by $h^{-(j+k+4)}$, tends to $0$.

The tested statement follows from a Riemann-sum argument with a locally uniform bound obtained by compactness.

**Reduction modulo the Maxwell equations.** No relation is imposed on the lattice field. The on-shell reduction enters in two places:
- the representatives $\mathrm{sec}_d$ have their jets projected onto the shell;
- the continuum two-leg kernel $K_{ab}$ factors through the shell, because the curvature two-point function solves the free equations in each variable.

The limit therefore depends only on the class of the label modulo $\mathcal I_d$.

**Detection.** The free two-point function $\mathcal W_{(e_{\mathrm t},0)}(\rho v,\rho(\sigma\bar v))$ is shown to be positive definite on $\mathrm{Label}_d/\mathcal I_d$ by explicit diagonalization, not by reflection positivity of a measure. The Kelvin formula VII.1.5 shows two things:
- the one-leg kernel between $e_{\mathrm t}$ and $0$, applied to a rank-$j$ shell jet, has vanishing components of rank $<j$ and a reflected leading component;
- consequently the kernel is triangular in the rank.

A triangular change of variables makes it diagonal with positive entries. After this substitution only "mirror" matchings survive in the Wick sum, so monomials are orthogonal with positive norms. The resulting injectivity of the free two-point probe at one pair of points is combined with the convergence of the interacting two-point functions to the free ones, and gives the corrected charts of VII.1.6.

**Comparison with the literature.** The first half is Gaussian-level lattice perturbation theory in the sense of Reisz, carried out for composite observables (polynomials in curvature jets of arbitrary bounded degree, Wick-ordered) rather than for the vertices of the action. It differs from the usual treatment in three ways:
- the field space is the reflection-odd subspace, which removes the zero modes without a further constraint;
- Wick ordering is with respect to the volume-independent $\mathbb Z^4$ covariance, which is why a superpolynomially large volume is used (§5);
- the limit is identified exactly with the Wick-ordered free Maxwell hierarchy on the on-shell quotient.

No block-spin renormalization enters this unit.

## 4. Steps

### 4.1 The free lattice covariance

**Lemma VII.1.a (covariance of link forms).** For links $a=(x,i)$, $b=(y,j)$ and colours $u,t$,
$$\mathrm{Cov}_{\mu_N}\big(\langle A(a),u\rangle,\langle A(b),t\rangle\big)=\langle u,t\rangle\,\mathbf 1_{i=j}\,\big[g_N(y-x)-g_N(y+x+e_i)\big].$$
Here $g_N$ is the mean-zero torus Green function, $-\Delta g_N=\delta_0-N^{-4}$ and $\sum_xg_N=0$, written as a Fourier sum over $(\mathbb Z/N)^4$ with the zero mode omitted ([`toroid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Inversion.lean#L19), [`lap_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Inversion.lean#L46-L52)).
*Proof sketch.* Summation by parts gives $\mathsf Q_N(A,B)=-\tfrac12\sum\langle A(x,i),\Delta B_i(x)\rangle$, the Feynman-gauge identity curl² + div² = $-A\cdot\Delta A$ ([`total`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Adjoint.lean#L62-L71)). The response to a unit forcing at $a$ is $g_N(\cdot-x)e_i$ minus the same function at the image link. The constants $N^{-4}$ cancel between the two images, and oddness of the test field doubles the pairing ([`inverse_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Source.lean#L40-L54)).
*Lean:* [`Orb.covar_link`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Source.lean#L55-L59).

**Lemma VII.1.b (separated legs).** Let $(N_i,h_i)$ be an itinerary. Let $x_i,y_i$ be sites with $h_i(x_i-y_i+p)\to z\ne0$ and $|h_i(x_i+y_i+p)|\to\infty$ for every fixed $p\in\mathbb Z^4$. Then for linear forms $P$ on $T_j$ and $Q$ on $T_k$,
$$\mathrm{Cov}_{\mu_N}\big(P\circ\ell^{h_i}_{x_i},Q\circ\ell^{h_i}_{y_i}\big)\to K(P\circ\kappa,Q\circ\kappa)(z).$$
The image condition holds automatically when both families are homing and $4\mid N_i$, since then $x_i+y_i\equiv N_i/2+O(h_i^{-1})$ ([`finale_home`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Schedule.lean#L90-L103)).
*Proof sketch.*
1. Average over $W_4$ and expand the forms in a basis of meters. By Lemma VII.1.a each meter pairing becomes $h^{-(|D|+2)}$ times a forward difference $\nabla^+_D$ of $g_N$, evaluated at $x-y$ (direct term) and at $x+y+e$ (image term). The Fourier symbol of $\nabla^+_D$ is $\prod_{k\in D}(e^{ip_k}-1)$.
2. *Direct term* ([`joint_casual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Return.lean#L95-L101)). Rescale momenta by $t=hs$. The symbol becomes $N^{-4}t^{|D|-2}$ times a function jointly smooth in $(t,k)$ for $k\ne0$, equal to $\prod(ik_l)/|k|^2$ at $t=0$. Split momentum space with a smooth bump into a low-momentum piece, dyadic annuli and a tail.
   - Each annulus is an exact Riemann sum of a compactly supported continuum integrand and converges by dominated convergence.
   - The tail is bounded by $C/s$ uniformly in $N$ ([`upper_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Power.lean#L63-L70)). The proof uses $|D|+3$ summations by parts in momentum and the lower bound $|e^{ip\cdot e_f}-1|\gtrsim|hz|/(Nh)$.
   - The low piece is $O(s^{|D|+2})$.
   - The same bounds hold for the continuum integral after heat regularization. A $3\varepsilon$ argument concludes ([`wrap_tube`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Return.lean#L56-L81)).
   - Only $Nh\to\infty$ is used here.
3. *Image term.* The same decomposition gives $0$ when $|h\,x|\to\infty$ ([`joint_far`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Image.lean#L22-L31)).
4. The limit is identified with $K$ on rotated on-shell jets, and $W_4$-averaging returns $K(P\circ\kappa,Q\circ\kappa)$.

*Lean:* [`Align.chart_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Bilateral.lean#L75-L83), [`Align.orbit_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L80-L88). *(reduction to the stencil Fourier sums, and the statements and structure of the Fourier bounds, read; the internal proofs of the symbol and difference estimates not read)*

**Lemma VII.1.c (coincident legs).** If $|h_i(2x_i+p)|\to\infty$ for every fixed $p$, then
$$\mathrm{Cov}_{\mu_N}\big(P\circ\ell^{h_i}_{x_i},Q\circ\ell^{h_i}_{x_i}\big)-\mathcal S_{h_i}(P,Q)\to0,$$
where $\mathcal S_h$ is the $\mathbb Z^4$ covariance of the same stencils. In particular $S_h(a,b)=\mathcal S_h(\kappa_a\text{-coordinate},\kappa_b\text{-coordinate})$ ([`shell_exact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L108-L113)).
*Proof sketch.* The image term vanishes as in Lemma VII.1.b. The direct term is a finite combination of values $g_N(a)$ at fixed lattice offsets $a$, compared with the $\mathbb Z^4$ Green function $G_{\mathbb Z^4}(a)$ and multiplied by $h^{-(j+k+4)}$. The key estimate ([`toroid_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Fee.lean#L84-L112)) is that, for $N$ even and $8/N\le r\le1$,
$$|g_N(a)-G_{\mathbb Z^4}(a)|\le C\,r^2+A/(N r^4).$$
It is proved by viewing $g_N(a)$ as a Riemann sum of $\cos(2\pi a\cdot q)/\hat\Delta(2\pi q)$:
- near $q=0$ both terms are $O(|q|^{-2})$, whose integral over $\{|q|\le r\}$ is $O(r^2)$;
- elsewhere the integrand is $O(r^{-4})$-Lipschitz and the grid points move by $O(1/N)$.

With $r=h^{n+1}$, where $n=j+k+4$ is the power of $h^{-1}$ to be beaten, the error times $h^{-n}$ is at most $Ch^{n+2}+A/(Nh^{5n+4})\to0$. This is the only place where $N_ih_i^k\to\infty$ for all $k$ is used ([`strike_two`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Visits.lean#L29-L46)).
*Lean:* [`Align.chart_return`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Bilateral.lean#L85-L89), [`Align.orbit_contact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L89-L95). *(statements and reduction read; the proof of `toroid_cost` read in outline)*

**Lemma VII.1.d (VII.1.3).** This is Lemma VII.1.b for $j\ne l$ (with [`scene_home`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Schedule.lean#L71-L77) and [`finale_home`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Schedule.lean#L90-L103)) and Lemma VII.1.c for $j=l$. The covariance matrix $\mathsf Q_N^{-1}$ evaluated on the stencil vectors equals the orbital pairing ([`key_orb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L31)).
*Lean:* [`corrected_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L39-L44).

### 4.2 Order zero as a Gaussian recursion

**Lemma VII.1.e (order zero is a joint Gaussian expectation).** Let $s$ be a finite set of legs, each a pair (insertion point $o(a)$, key $a$ of rank $\le d$). Let $\mathrm{root}(s)$ be the monomials $\prod_{a:o(a)=j}x_a$ at each point $j$. Then
$$\Big\langle\prod_jR_h(\mathrm{root}(s)_j,o_j)\Big\rangle^{(0)}=E_h(s):=\mathbb E\Big[\prod_{a\in s}\big(\ell^h_{o(a),a}+i\,\xi^{(o(a))}_a\big)\Big],$$
under $\mu_N\otimes\bigotimes_{j\le r}\mathcal N(0,S_h)$.
*Proof sketch.* The weight and the vacuum both have constant coefficient $1$, so the order-zero coefficient of the normalized expectation is a $\mu_N$-integral. The constant coefficient of each lattice jet is its linear part $\ell^h$. Fubini over the independent auxiliary copies finishes the proof.
*Lean:* [`Warp.amplitude_zero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Initial.lean#L39-L56). The pair covariance of two legs is $\kappa_h$ ([`node_wage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Engine.lean#L59-L63)): the auxiliary copies contribute $i^2S_h=-S_h$ at a common point and $0$ otherwise.

**Lemma VII.1.f (symmetric deletion identity).** Let $\mu$ be a centred Gaussian on a finite-dimensional real space (possibly degenerate) and $P_a$, $a\in s$, complex linear functionals. Then
$$|s|\,\mathbb E\prod_{s}P=\sum_{a\in s}\sum_{b\in s\setminus a}\mathbb E[P_aP_b]\;\mathbb E\prod_{s\setminus\{a,b\}}P .$$
For the legs of Lemma VII.1.e this reads $|s|E_h(s)=\sum_{a\ne b}\kappa_h(a,b)E_h(s\setminus\{a,b\})$.
*Proof sketch.* For powers of a single real functional $L$ of variance $v$, $\mathbb E L^{n+1}=nv\,\mathbb EL^{n-1}$, read off from the moment generating function ([`ev_next`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Diagonal.lean#L15-L19)). The multilinear case follows by polarization ([`packet_cancel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Symmetric.lean#L73-L77)). The complex case follows by splitting into real and imaginary parts.
*Lean:* [`exchange_s`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Exchange.lean#L68-L91), [`Warp.eq_cancel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Approach.lean#L12-L18).

**Lemma VII.1.g (the continuum recursion).** For $z\in\mathrm{Conf}_r$ set $c_z(s)=\mathcal W_z(\rho\circ\mathrm{root}(s))$. Then for every $a\in s$,
$$c_z(s)=\sum_{b\in s\setminus a}\mathbf 1_{o(b)\neq o(a)}\,K_{ab}\big(z_{o(a)}-z_{o(b)}\big)\,c_z(s\setminus\{a,b\}),$$
and summing over $a$ gives the analogue of Lemma VII.1.f.
*Proof sketch.* Removing one on-shell variable $\rho(x_a)$ at the point $z_{o(a)}$ from a Wick moment amounts to applying, at every other point, the derivation that replaces one variable by its pairing with $a$ ([`take_line`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Rowdy.lean#L45-L49)). On a monomial the derivation produces the sum over its variables ([`D_kill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Rowdy.lean#L59-L61)). There are no same-point pairings.
*Lean:* [`cut_one`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Shards.lean#L26-L48), [`cut_cancel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Shards.lean#L49).

**Lemma VII.1.h (convergence of leg products).** In the setting of VII.1.2, $E_{h_i}(s)\to c_z(s)$ for every finite set of legs.
*Proof sketch.* The proof is by strong induction on $|s|$.
- For $s=\emptyset$ both sides equal $1$ (probability measures).
- Otherwise divide the identities of Lemmas VII.1.f and VII.1.g by $|s|$. Use VII.1.3 for the coefficients and the induction hypothesis for the shorter products.

*Lean:* [`Warp.earth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Approach.lean#L19-L32).

**Lemma VII.1.i (monomials, polynomials, labels; VII.1.2).**
- Every tuple of monomials of degree $\le d$ in the keys is $\mathrm{root}(s)$ for a suitable leg set $s$, so Lemma VII.1.h applies to it.
- Both sides are multilinear, which gives polynomials of degree $\le d$.
- Composing with $\mathrm{sec}_d$ gives labels, with $\rho\circ\mathrm{sec}_d=\omega_d$.

*Lean:* [`mono_single`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L31-L40), [`mono_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L41-L47), [`poly_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L50-L63), [`row_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L65-L68).

### 4.3 Tested sums

**Lemma VII.1.j (Riemann sums with continuous convergence).** Hypotheses:
- grids of side $N_m$ and spacing $t_m=1/n_m$ with $t_m\to0$ and $t_mN_m\to\infty$;
- kernels $\mathcal K_m$ on $r$-tuples of grid points;
- $f$ continuous with compact support in an open set $\omega$;
- the kernels "arrive" at $\mathcal G$ on $\omega$: along every subsequence, and for every choice of grid tuples whose embeddings converge to some $z\in\omega$, $\mathcal K_m\to \mathcal G(z)$.

Then $t_m^{4r}\sum_of(t_mo)\mathcal K_m(o)\to\int f\mathcal G$.
*Proof sketch.*
- The kernels are eventually bounded uniformly on $\mathrm{supp}\,f$ ([`bounded_fee`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Moving.lean#L68-L86)). Otherwise there are points of $\mathrm{supp}\,f$ along which they blow up, and a convergent subsequence of these points contradicts the hypothesis.
- Write the sum as the integral of a step function supported in a fixed ball. Apply dominated convergence; the box eventually contains the support.

*Lean:* [`Rig.grid_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Tested.lean#L23-L52), with [`Arrives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Moving.lean#L50-L51).

**Lemma VII.1.k (VII.1.1).** Apply Lemma VII.1.j with $\omega=\mathrm{Conf}_r$, $\mathcal K_m$ the order-zero correlations and $\mathcal G=\mathcal W(\omega_dp)$, along the schedule $h_m=L^{-m}$, $N_m=4L^{m^2+m+1}$ ([`routine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L14-L21)).
- The arrival property is VII.1.2, applied to each subsequence of the schedule, which is again an itinerary with $4\mid N$.
- The tested sum is the order-zero coefficient of the profile.
- The limit is the free hierarchy, since $\mathcal W(\omega_dp)$ is `Ward.disc` of the free table.
- The board form applies this slot by slot to basis labels; clean profiles are smooth test functions with compact support in $\mathrm{Conf}$ ([`Test`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Test.lean#L18)).

*Lean:* [`Rig.zerothProfile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L59-L69), [`Position.finite_leading`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L13-L16).

**Downstream use (not part of this unit).** Two declarations in VIII.1 use `finite_leading`:
- [`credible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L50-L52) subtracts it from [`measured_tends`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L16-L19) (which assumes `FirstExtension`, VI.2). This shows that measured scaled means minus order-zero lattice readings tend to $0$.
- [`calibrate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L36-L43) solves the finite position equations when the leading Jacobian is invertible.

The structures `Crest` and `BoardAttains` are in VII.3.

### 4.4 Detection on the free side

**Lemma VII.1.l (Wick rule under linear substitution).** If every variable occurrence at the $i$-th point is replaced by a linear form $u_a$ in the shell coordinates, the Wick moment equals
$$\sum_{\text{matchings}}\prod_{\text{pairs}}K\big(u_a,u_{a'}\big)(x_{i(a)}-x_{i(a')}).$$
*Lean:* [`Free.linear_substitution`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Polarize.lean#L108-L119).

**Lemma VII.1.m (diagonal one-leg kernel).** Choose in each $\mathrm{Sh}_j$ a basis $(Y_a)$ orthogonal for the full contraction, and set $\lambda_a=\gamma_j\,\langle Y_a,Y_a\rangle>0$. Then there are linear forms $\epsilon_a$ ("eigen" variables) and $\epsilon^\sigma_a=\epsilon_a\circ\sigma$ ("reflected" variables) such that
$$K(\epsilon_a,\epsilon^\sigma_b)(e_{\mathrm t})=\delta_{ab}\,\lambda_a.$$
Each $\epsilon_a$ is a triangular combination, over ranks $i\le j$, of the order-$i$ Taylor coefficients at $e_{\mathrm t}$ of $Y_a^\natural$, rescaled by $\gamma_j/\gamma_i$.
*Proof sketch.*
- By VII.1.5(b), pairing a rank-$j$ jet at $e_{\mathrm t}$ against the kernel gives $\gamma_j$ times the inverted field $\iota^*Y^\natural$, recentred at $e_{\mathrm t}$.
- Because $e_{\mathrm t}+\iota(e_{\mathrm t})=0$, its Taylor coefficients at $0$ of order $<j$ vanish, and the order-$j$ coefficient is $(-1)^j$ times the time-reflected jet.
- Hence the kernel between ranks is triangular with reflected diagonal blocks. The dual triangular basis diagonalizes it.

*Lean:* [`Free.pairing_var`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Variables.lean#L114-L118). *(statement and outline of the supporting lemmas read)*

**Lemma VII.1.n (orthogonality and positivity; VII.1.4).** The pairing of $\Phi$ applied to a monomial $x^{\alpha}$ and $\Psi$ applied to a monomial $x^{\beta}$ equals $\delta_{\alpha\beta}\sum_P\mathrm{amp}(P)$. Here $\mathrm{amp}(P)=\prod_{\text{pairs}}\mathbf 1[\text{same variable}]\lambda\ge0$.
*Proof sketch.*
- By Lemmas VII.1.l and VII.1.m only matchings that pair each variable at $e_{\mathrm t}$ with the same variable at $0$ survive.
- The mirror matching has amplitude $\prod\lambda>0$.
- Expanding $q=\sum c_\alpha x^\alpha$ gives $\mathrm{Re}=\sum_\alpha|c_\alpha|^2s_\alpha>0$.
- For a label $v$:
  - $\Phi$ is onto ([`forward_full`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Variables.lean#L137-L142)), so $\rho v=\Phi q$ for some $q$;
  - $\rho(\sigma\bar v)=\Psi\bar q$ ([`reversed_observable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Variables.lean#L165-L173));
  - $q\ne0$ because $v\notin\ker\rho=\mathcal I_d$.

*Lean:* [`pair_test`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L57-L79), [`wick_orth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L109-L115), [`positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L132-L149), [`two_detect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L151-L155).

**Lemma VII.1.o (Kelvin formulas; VII.1.5).**
*Proof sketch for (a).* By induction on $j$, using
$$\tfrac1{j!}A(\partial)=\tfrac{1}{j}\sum_i\partial_i\,\tfrac1{(j-1)!}A(e_i,\cdot)(\partial).$$
Each contraction $A(e_i,\cdot)$ is again symmetric with harmonic diagonal. Then use $\partial_i|x|^{-2(j)}=-2j\,x_i|x|^{-2(j+1)}$ and the vanishing of $\sum_i\partial_iA(e_i,x,\dots,x)$ (harmonicity). The Euler identity $\sum_ix_iA(e_i,x,\dots)=A(x,\dots,x)$ closes the step.
*Proof sketch for (b).* Work colour by colour. Each component $Y_{ab}^\natural$ is harmonic (closed and coclosed), so (a) applies to every term of the curvature kernel. The terms are recombined using the divergence equation and $\partial_k(x\lrcorner Y^\natural)_m-\partial_m(x\lrcorner Y^\natural)_k=(j+2)Y^\natural_{km}$ (Bianchi plus Euler).
*Lean:* [`harmonic_Green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Harmonic.lean#L157-L180), [`response_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L172-L176) *(outline read)*.

**Lemma VII.1.p (finite detection).** Let $\beta$ be a basis of $F_d$. The map $v\mapsto\big(\mathcal W_{(e_{\mathrm t},0)}(v,\beta_i)\big)_i$ is injective on $F_d$. A label whose two-point functions with all labels vanish at the detector pair is null in the free table.
*Proof sketch.* Apply VII.1.4 with $w=\sigma\bar v$; the free null space is $\ker\rho$.
*Lean:* [`free_criterion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Test.lean#L21-L32), [`free_null`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Test.lean#L34-L42), [`free_injective`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Test.lean#L77-L85). In the same spirit, [`OPE.Levy.free_positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Levy/Panel.lean#L39-L51) shows that the reflected free two-point form at the detector pair is positive on $F_d\setminus0$. *(statements read)*

The perturbation lemma [`test_projected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Matrix.lean#L38-L46) is not used by the main theorem. It states that $a\|x\|\le\|Hx\|$ and $\|H-AX\|+\|(A-AP)X\|\le\delta$ imply $(a-\delta)\|x\|\le\|APXx\|$.

### 4.5 Corrected charts and bookkeeping

**Lemma VII.1.q (two-point convergence at moving detectors).** For labels $v_0,v_1$ of degrees $\le D$, the two-point function of the constructed table $S$ converges to the free two-point function at $(e_{\mathrm t},0)$. The interacting function is evaluated at the tilted detector pair of step $g(k)$, which converges to $(e_{\mathrm t},0)$ at physical scale, on the labels read through $\Phi_k$.
*Proof sketch.* A quantitative comparison ([`actualRead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Inspect.lean#L80-L99), [`compareC`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L94-L105)) bounds interacting minus free class moments at scaled generic points by $\kappa$ times the rank budget at step $g(k)$. This budget tends to $0$ (III.11). The free function is continuous at the detector pair.
*Lean:* [`Portfolio.twoC`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L107-L124). *(proof of `twoC` read; the inputs of `actualRead` traced only by name)*

**Lemma VII.1.r (raw charts are eventually bijective and nearly compatible).**
1. Eventually the read-out maps are bijective, so $\chi_k$ equals the read-out. This uses the measured real form, which is within $\delta/2$ of the free model form; the free model form is $\delta$-coercive by `free_positive` ([`freely`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Pairing.lean#L75-L76), [`certified`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Pairing.lean#L110-L128), [`chartDraw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L84-L87)).
2. $\chi_k(d+1)^{-1}\iota^S\chi_k(d)v\to\iota^Fv$ ([`stepFits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L98-L121)). Both sides are probed by two-point functions against $\chi_k(\beta_i)$; Lemma VII.1.q gives convergence of the probes, and injectivity of the free probe (Lemma VII.1.p), through `tendsto_of_fitted`, gives convergence of the arguments.
3. Eventually each $\chi_k(d)$ is real and equivariant for the signed permutations ([`symmetrical`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L124-L136)), and it preserves the unit.



**Lemma VII.1.s (VII.1.6).**
1. Take a retraction $P_d:F_{d+1}\to F_d$ of the free inclusion that is equivariant and commutes with conjugation (averaging over $W_4$ and symmetrizing with the conjugation).
2. Define recursively $A_0=\chi_k(0)$ and
$$A_{d+1}=\iota^S A_dP_d+\chi_k(d+1)(1-\iota^FP_d).$$
3. Set $p_k(d)=A_d$ whenever $A_d$ is bijective; this holds eventually by Lemma VII.1.r(2).
4. Exact compatibility follows from the construction together with VII.1.r(3), and $\chi_k^{-1}p_k\to1$ from VII.1.r(2).

*Lean:* [`tune_grades`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159). *(proof read; the correction lemmas of VII.5 by statement)*

**Lemma VII.1.t (VII.1.7).**
- (a) [`slim_wait_for`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Slender.lean#L127-L143). Run over the three panels, raising only the stage thresholds, each time past the finitely many eventual-in-scale estimates that are needed. One of these is that the slim window dominates the bench cost. Then raise thresholds once more so that the wheel is at most the monitor, and conclude the budget statement with `clockwork` and `staging`.
- (b) [`nearby`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Cover.lean#L155-L165). For each late $k$, choose a predecessor inside the same stage span. Its backward window covers at most $\log\hat\beta_k$ of scale.
- (c) [`coin_pre`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Dart/Seams.lean#L34-L45). Reduce to [`arose`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Dart/Verge.lean#L62-L86) (induction on order, peeling the lowest order) with weight $\sigma=v/(E+k-q+2)$, which pays for the re-rooting.

Consumers:
- (a) and (b) feed `Dense.Coverage`, hence the portfolio of VII.1.6 through `smearsFromCoverage`; the assembly is in III.13.
- (c) feeds the toll and admission estimates of `RG08/Calendar`.

*(statements read; proofs skimmed)*

## 5. Where the difficulty lies

**What is routine and what is hard.** The mathematics of VII.1.1–VII.1.3 is standard: at the Gaussian level, lattice correlations of Wick-ordered local polynomials converge to their continuum limit at separated points. Most of the lines go into the Fourier analysis of finite differences of the torus Green function (Lemmas VII.1.b–c): a multiscale decomposition, Riemann sums on each dyadic annulus, and summation by parts for the tail. The Wick recursion (Lemmas VII.1.e–i) is short.

**Unusual features.**
1. *The volume growth is imposed by the Wick subtraction.* Representatives are Wick-ordered with the $\mathbb Z^4$ covariance, not the torus covariance. The coincident-point correction is therefore $g_N-G_{\mathbb Z^4}$ at fixed offsets, multiplied by $h^{-(j+k+4)}$. The available estimate $Cr^2+A/(Nr^4)$ is crude; the true difference is $O(N^{-2})$, and with that bound a polynomial volume would suffice. The crude estimate forces $Nh^{5n+4}\to\infty$ for all $n$, and hence the superpolynomial period $N_m=4L^{m^2+m+1}$. VII.1.1 is proved only along this schedule.
2. *The field space is reflection-odd.* This removes the constant zero modes of the Feynman-gauge Laplacian. The price is an image term, which is harmless because reports are centred at the quarter period with $4\mid N$.
3. *Only order zero.* "Order zero" is the constant coefficient of a formal series in the coupling. VII.1.1 says nothing about the interacting lattice theory; the passage to it is `FirstExtension` (VI.2), assumed by `credible` and produced by `firstTarget` (VIII.1).
4. *Generality and mechanism of detection.* All labels of degree $\le d$ are treated at once, and the limit is the Wick moment of the on-shell reduction.
   - The positivity in VII.1.4 holds for every nonzero class in $\mathrm{Label}_d/\mathcal I_d$, including products with many legs.
   - Its proof is algebraic: inversion makes the one-leg kernel triangular. No reflection positivity of a measure is used.
5. *Grouping.* VII.1.6 and VII.1.7 are not about free fields. They are grouped here because VII.1.6 consumes the detection results, and VII.1.7(a)(b) build the portfolio that VII.1.6 uses. About 2,250 lines of `RG08` (all sub-folders except `Dart/Seams`) are bookkeeping for the RG cost estimates; they are not described here.

## 6. Notation

| object | code name | proposed notation |
|---|---|---|
| reflection-odd link fields, Feynman-gauge form, Gaussian | [`LinkP`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Geometry.lean#L107-L111), [`form`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Precision.lean#L76-L78), [`data`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Measure.lean#L31) | $\mathcal A_N$, $\mathsf Q_N$, $\mu_N$ |
| torus Green function (mean zero) | [`toroid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Inversion.lean#L19) | $g_N$ |
| linear lattice curvature jet | [`slope`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/TopLinear.lean#L38) | $\ell^h_x$ |
| $\mathbb Z^4$ self-covariance of the jets (Wick subtraction) | [`link`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Symbol.lean#L50), [`shellCov`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Symbol.lean#L58-L59) | $S_h$ |
| Wick-ordered representative | [`column`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Blank.lean#L41) | $R_h(p,o)$ |
| corrected and limit two-leg covariances | [`corrected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L34-L35), [`indirect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L36) | $\kappa_h$, $K_{ab}$ |
| itinerary; homing sites | [`Itinerary`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Burst.lean#L50-L59), [`Home`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Schedule.lean#L53) | $(N_i,h_i)$; $h_i(o_i-c_{N_i})\to z$ |
| schedule, centre, profile | [`topSpacing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L46), [`period`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L49), [`center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L52), [`profile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L55-L56) | $h_m$, $N_m$, $c_m$, $\Pi_m(f;p)$ |
| shell, on-shell reduction, equation ideal | `Shell`, [`reduceEq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L47-L50), [`equationIdeal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72) | $\mathrm{Sh}_j$, $\rho$, $\mathcal I_d$ |
| Green function, curvature jet kernel | [`Green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L22), [`legKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L161-L162) | $\Gamma$, $K(P,Q)$ |
| Wick moment | [`Wick.moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127) | $\mathcal W_x$ |
| detector pair, time reflection | [`detectors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L26), `Kelvin.σ` | $(e_{\mathrm t},0)$, $\sigma$ |
| inversion pullback, gain | [`inverted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L64-L65), [`gain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L92) | $\iota^*$, $\gamma_j$ |
| weak measuring portfolio, raw chart, corrected chart | [`Portfolio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L35-L49), [`chart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L76-L79), `tune_grades` | $X$, $\chi_k(d)$, $p_k(d)$ |

## 7. What remains unexplained
1. **Fourier internals.** The proofs of the symbol smoothness (`phaseA`), the momentum-difference bounds (`puncture`) and the decay of the annulus symbols (`cooling`) were read by statement only. The uniform constants in `upper_tail` and in the low-momentum bound should be checked against a standard reference before being quoted. (probable)
2. **Sign conventions of $K$.** By a hand computation, $\langle F_{ab}(x)F_{km}(y)\rangle$ for the Feynman-gauge field coincides with `bareCurl` at $x-y$, and the factor $(-1)^l$ in `legKernel` converts $z$-jets into $y$-jets. The identification of the limit in Lemma VII.1.b with $K(P\circ\kappa,Q\circ\kappa)$ is a Lean theorem, so this affects only the physical reading. (probable)
3. **Relation to the RG Gaussian.** The Gaussian $\mu_N$ (reflection-odd, Feynman gauge, torus of side $N_m$) is defined independently of the Gaussian measures of III.3–III.4. Nothing here relates them, and VII.1.1 does not need it.
4. **Inputs of VII.1.6.** `actualRead` rests on `inspect`, `lava_v` and `Read.full_cost`. These were traced only by name to the rank budget (III.11) and the cost accounting (III.15). The quantitative content of the "Poised" condition was not read. (tentative)
5. **Bookkeeping packages.** Several packages were read by statement only or not at all:
   - the `RG08` sub-folders other than `Dart/Seams` (`Ballast`, `Vale`, `Quire`, `Scores`, `Loom`, `Curl`, … about 2,250 lines in all);
   - `PertExtension/Series`: weights, polynomial growth, and Taylor expansions in a small parameter with remainders, used by the lattice expansions of `PertExtension` and by `RG08/Arc`;
   - the internal proofs behind VII.1.7.

   A writer may prefer to move VII.1.6–VII.1.7 next to their consumers (III.13 and VII.3).
6. **Presentation of the interacting comparison.** The statement "interacting correlations converge to free Maxwell along a scaling sequence" is `FirstExtension` (VI.2). Its combination with VII.1.1 is in `credible` and `calibrate` (VIII.1). The writer must decide where to state the combined result.

**Builds on:** [I.1](I-1.md), [III.16](III-16.md), [VII.3](VII-3.md), [III.7](III-7.md), [IV.1](IV-1.md), [III.1](III-1.md), [III.11](III-11.md), [II.1](II-1.md), [III.2](III-2.md), [II.2](II-2.md), [III.6](III-6.md), [VIII.1](VIII-1.md), [III.5](III-5.md), [VI.2](VI-2.md), [III.4](III-4.md), [III.3](III-3.md), [III.10](III-10.md), [VII.4](VII-4.md), [VI.1](VI-1.md).

**Used by:** [III.2](III-2.md), [VIII.1](VIII-1.md), [VII.2](VII-2.md), [III.13](III-13.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| proof of [`finite_leading`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L13-L16) and the results it chains to | 3,275 |
| work package [`YM/Push/FINITE_DETECTION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION) | 1,006 |
| work package [`YM/SharpGram/Weak/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak) | 616 |
| work package [`YM/RG08/Dart/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Dart) | 538 |
| work package [`YM/RG08/Ballast/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Ballast) | 338 |
| work package [`YM/SharpGram/Dense/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense) | 316 |
| work package [`YM/RG08/Vale/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Vale) | 315 |
| work package [`YM/PertExtension/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PertExtension) | 310 |
| work package [`YM/RG08/Quire/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Quire) | 160 |
| work package [`YM/RG08/Scores/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Scores) | 119 |
| work package [`YM/RG08/Loom/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Loom) | 118 |
| work package [`YM/SharpGram/Matrix/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Matrix) | 108 |
| work package [`YM/RG08/Curl/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Curl) | 97 |
| work package [`YM/Pert/Fourier/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier) | 95 |
| work package [`YM/RG08/Arc/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Arc) | 71 |
| work package [`YM/RG08/Extra/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Extra) | 71 |
| work package [`YM/RG08/Germ/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Germ) | 67 |
| work package [`YM/RG08/Action/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Action) | 66 |
| work package [`YM/OPE/Levy/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Levy) | 63 |
| work package [`YM/RG08/Ward/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Ward) | 49 |
| work package [`YM/RG08/Wax/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Wax) | 45 |
| work package [`YM/SharpGram/Lenses/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Lenses) | 39 |
| work package [`YM/RG08/Fields/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Fields) | 38 |
| work package [`YM/Pert/Dense/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Dense) | 30 |
| work package [`YM/RG08/Pace/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Pace) | 30 |
| work package [`YM/RG08/Town/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Town) | 29 |
| work package [`YM/RG08/Shade/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Shade) | 26 |
| work package [`YM/RG08/Door/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Door) | 16 |
| work package [`YM/RG08/Creek/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Creek) | 15 |
| work package [`YM/RG08/Peals/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Peals) | 11 |
| work package [`YM/RG08/Wallet/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Wallet) | 9 |
| work package [`YM/RG08/Needle/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Needle) | 9 |
| work package [`YM/RG08/Run/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Run) | 8 |
| work package [`YM/RG08/Canon/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Canon) | 7 |
| work package [`YM/UVExt/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExt) | 5 |
| work package [`YM/RG08/Ratio/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Ratio) | 1 |
| work package [`YM/RG08/Origin/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Origin) | 1 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **VII.1.1** [`covar_link`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Source.lean#L55-L59) *(key result)* — The free orbital covariance of two link form elements is the color inner product times a difference of toroidal kernel values if the directions agree, else zero.
- **VII.1.2** [`harmonic_Green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Harmonic.lean#L157-L180) *(key result)* — Differentiating the 4D Green kernel j times against a symmetric harmonic tensor gives a constant times R^{-(j+1)}... times the diagonal harmonic polynomial, a Kelvin-type formula.
- **VII.1.3** [`response_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L172-L176) *(key result)* — The colored response of a shell element equals gain times the inverted actual field, extending the scalar computation to Lie-algebra colors.
- **VII.1.4** [`pairing_var`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Variables.lean#L114-L118) *(key result)* — The bilinear pairing between eigen variables and reflected variables is diagonal with squared-length entries.
- **VII.1.5** [`nearby`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Cover.lean#L155-L165) *(numbered result)* — There is an unbounded predecessor-marking map g with g(k)≤k, g(k) interior, and S(k)≤S(g(k))+log P(k) eventually.
- **VII.1.6** [`orbit_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L80-L88) *(key result)* — For separated endpoints, the averaged orbital pairing of dual Taylor test slots converges to the Taylor-form continuum pairing.
- **VII.1.7** [`finite_leading`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L13-L16) *(key result)* — For clean profiles, the finite-regulator Wilson reading at order zero converges to the continuum white-noise reading as the lattice is refined.
- **VII.1.8** [`tune_grades`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159) *(key result)* — There exist corrections of the measuring charts that are eventually graded-exact through level D and converge to the identity on every field.
- **VII.1.9** [`row_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L65-L68) *(key result)* — The order-zero lattice rows of any tuple of fields converge to the Gaussian moment of their reduced sections.
- **VII.1.10** [`earth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Approach.lean#L19-L32) *(key result)* — After deleting bare-linear legs, the equation price converges to the cut value at a separated configuration.
- **VII.1.11** [`zerothProfile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L59-L69) *(main result)* — For compactly supported continuous test functions away from coincident points, the order-zero coefficient of the lattice profile converges to the integral against the free discrete correlation.
- **VII.1.12** [`linear_substitution`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Polarize.lean#L108-L119) *(numbered result)* — The Wick moment of products of linear combinations of variables equals the sum over matchings of products of pairwise Wick tensor entries.
- **VII.1.13** [`corrected_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L39-L44) *(key result)* — The corrected (subtracted) covariance of lattice sites at separated points converges to the indirect continuum covariance for all key labels.
- **VII.1.14** [`coin_pre`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Dart/Seams.lean#L34-L45) *(numbered result)* — Finite demands on layouts admit an exact tally with constants such that suitable bounds on inputs yield an ample armor bound for a given order.
- **VII.1.15** [`two_detect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L151-L155) *(main result)* — For a label outside the equation ideal, the two-point moment of the observable with its reflected conjugate has strictly positive real part.
- **VII.1.16** [`slim_wait_for`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Slender.lean#L127-L143) *(key result)* — For a simple gauge group and a relay with a slim window, there is a thicker wait with the same window admitting a certified station port.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

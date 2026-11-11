# VII.1. Short distances: convergence to free Maxwell fields — detailed notes

> The full account of unit VII.1: every proposition with its proof sketch, checked against the Lean in two rounds and edited. The condensed outline and the map of the Lean are on the [unit page](../units/VII-1.md).

[Unit page](../units/VII-1.md) · [All units](../units.md) · [Overview](../README.md)

**Part:** VII, identification as Yang–Mills. **Lean:** the chain of [`YM/Pert`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert) (folders `Fourier`, `Align`, `Warp`, `Rig`, the jet stencils of `Lattice`, the statement `Position/Crest.finite_leading`, and `Dense`), [`YM/Push/FINITE_DETECTION`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION), [`YM/SharpGram/Weak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak), [`YM/SharpGram/Dense`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense), [`YM/RG08`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08) (about thirty small sub-folders), [`YM/PertExtension`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PertExtension), [`YM/OPE/Levy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Levy). **Size:** 8,117 lines. They divide as follows:

- 3,275 lines in the chain ending in `finite_leading`;
- 1,006 in `FINITE_DETECTION`;
- 616 in `SharpGram/Weak`;
- about 2,250 in `RG08` (`Dart` 538, `Ballast` 338, `Vale` 315, the rest under 160 each);
- 316 in `SharpGram/Dense`, 310 in `PertExtension`, 108 in `SharpGram/Matrix`, 95 in `Pert/Fourier` and 63 in `OPE/Levy`;
- the remainder in packages of fewer than 40 lines.

The main result identifies the order-zero lattice correlations with the free Maxwell hierarchy. The short-distance limit of the interacting correlations is stated in [`FirstExtension`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L26-L39) (VI.2), established by [`firstTarget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L57-L81) in VIII.1. The results are:

- the order-zero term of lattice perturbation theory converges, as the spacing tends to zero, to the Wick-ordered free Maxwell hierarchy evaluated on the on-shell images of the labels (VII.1.1–VII.1.3);
- the free hierarchy detects every label outside the Maxwell equation ideal through a single two-point function at a fixed pair of points (VII.1.4–VII.1.5);
- using this detection, the measuring charts of the construction can be corrected to charts that are exactly compatible with the filtration, the symmetries and the unit (VII.1.6);
- estimates on backward windows and local expansions used in the rank comparison (VII.1.7).

## 1. What this unit proves

**Setting.**

*Gauge group and continuum objects.*

- $G$ is a compact matrix gauge group whose Lie algebra $\mathfrak g$ is real simple and nonabelian, with an invariant inner product and an orthonormal basis of colours.
- A *key* $a=(j,\alpha)$ is a coordinate of the real radial-gauge potential space $T_j$: homogeneous $\mathfrak g$-valued 1-forms of polynomial degree $j+1$ with $x\cdot A(x)=0$. Curl identifies $T_j$ with the closed homogeneous curvature jets of degree $j$. Each key has engineering weight $j+2$.
- $\mathrm{Pol}$ is the complex polynomial algebra in the keys. $V_d$ consists of its $\mathrm{Ad}(G)$-invariant polynomials of total engineering weight at most $d$. The free field space $F_d$ is the quotient of $V_d$ by the free null space (VI.2).
- $\mathrm{Sh}_j$ is the space of curvature tensors, symmetric in the $j$ Taylor slots and antisymmetric in the two form indices, whose homogeneous fields solve $dF=d{*}F=0$. Taylor coefficients are normalized by $1/j!$. Write $\kappa:\mathrm{Sh}_j\to T_j$ for the inverse radial-gauge curl map ([`gaugeJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L46-L47)).
- $\rho:\mathrm{Pol}\to \mathrm{WickPol}=\mathbb C[\text{shell coordinates}]$ restricts a polynomial to on-shell jets ([`reduceEq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L47-L50)).
- The *equation ideal* $\mathcal I_d=V_d\cap\ker\rho$ consists of labels that vanish on every on-shell Taylor tower ([`equationIdeal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72)).
- $\omega_d=\rho\circ\mathrm{sec}_d:F_d\to\mathrm{WickPol}$ is the on-shell image of a label. Here $\mathrm{sec}_d$ is the representative polynomial of VII.3, obtained by projecting radial curvature coordinates onto the Maxwell shell ([`sections`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L35), [`fixedPolynomial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Lifts.lean#L55-L60)).

*The free Maxwell hierarchy (III.16).*

- $\Gamma(x)=1/(4\pi^2|x|^2)$ ([`Green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L22)).
- The kernel [`bareCurl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L20) is $\delta_{bk}\partial_a\partial_m\Gamma-\delta_{bm}\partial_a\partial_k\Gamma-\delta_{ak}\partial_b\partial_m\Gamma+\delta_{am}\partial_b\partial_k\Gamma$. This is $\langle F_{ab}(x)F_{km}(y)\rangle$ at $x-y$ for $F=dA$, where $A$ is the Feynman-gauge free field with $\langle A^c_\mu(x)A^{c'}_\nu(y)\rangle=\delta^{cc'}\delta_{\mu\nu}\Gamma(x-y)$.
- For linear forms $P$ on $\mathrm{Sh}_j$ and $Q$ on $\mathrm{Sh}_l$, $K(P,Q)(x-y)$ is $P$ applied to the $j$-jet in $x$ and $Q$ to the $l$-jet in $y$ of this kernel, colour-diagonal ([`legKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L161-L162)). The value is independent of extensions of $P,Q$ to full curvature tensors, because the kernel solves the free equations in each variable.
- For a key $a$, write $x_a$ for its real coordinate functional on $T_j$ and $\kappa_a=x_a\circ\kappa$, and write $K_{ab}=K(\kappa_a,\kappa_b)$. The Taylor coefficients in both legs include their factorial denominators; differentiation at the second endpoint contributes $(-1)^l$.
- The *Wick moment* $\mathcal W_x(q_1,\dots,q_r)$, for $x\in\mathrm{Conf}_r$ and $q_i\in\mathrm{WickPol}$, is multilinear ([`Wick.moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127)). On monomials it is the sum, over perfect matchings of the variable occurrences that never pair two occurrences at the same point, of the product of the entries $K(\cdot,\cdot)(x_i-x_j)$. It is the correlation of the Wick-ordered products $:\!q_i\!:(x_i)$ of the Gaussian jet field with covariance $K$.
- The free hierarchy of the labels is $x\mapsto\mathcal W_x(\omega_d p_1,\dots,\omega_d p_r)$ ([`Ward.disc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L23) of the free table).

*The lattice prescription at order zero (definitions from VII.3).*

- $\Lambda_N=(\mathbb Z/N)^4$ with $N$ even, $N\ge 4$.
- The field space $\mathcal A_N$ consists of $\mathfrak g$-valued link variables that are odd under the point reflection: $A(-x-e_i,i)=-A(x,i)$, i.e. $A$ is invariant under $x\mapsto -x$ as a 1-form ([`LinkP`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Geometry.lean#L107-L111)).
- The quadratic form $\mathsf Q_N(A)=\tfrac12\big(\sum_{x,i<j}|\mathrm{curl}_{ij}A(x)|^2+\sum_x|\mathrm{div}A(x)|^2\big)$ is the Hessian at the identity of the Wilson action plus the Feynman gauge-fixing term $\tfrac14\sum|\mathrm{div}A|^2$ ([`form`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Precision.lean#L76-L78), [`action`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Action.lean#L46)).
- $\mathsf Q_N$ is positive definite on $\mathcal A_N$: a closed and divergence-free field is constant, and a reflection-odd constant field is zero. $\mu_N$ is the centred Gaussian with density proportional to $\exp(-\mathsf Q_N(A)/2)$ ([`data`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Measure.lean#L31)).
- Expectations are formal power series in the coupling. The interaction exponent has order-$n$ coefficient equal to minus the order-$(n+2)$ action coefficient for $n\ge1$, and zero constant coefficient. Its exponential is multiplied by the Taylor series of the Haar Jacobian and Faddeev–Popov density. Each jet-coordinate series uses its order-$(n+1)$ Taylor coefficient at order $n$ ([`weight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Series.lean#L61), [`seriesLex`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Readers.lean#L32)). Order zero is therefore a $\mu_N$-expectation; $\langle\cdot\rangle^{(0)}$ denotes the order-zero coefficient.
- $\ell^h_{x}:\mathcal A_N\to T_j$ is the radial-gauge image of the linear lattice curvature jet at site $x$ ([`slope`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/TopLinear.lean#L38)). It is obtained from the $j$-fold forward difference of the plaquette curl divided by $j!$ by symmetrization and the radial-gauge map, scaled by $h^{-(j+2)}$ and averaged over the hyperoctahedral group $W_4$ of signed axis permutations. $\ell^h_{x,a}$ is its $a$-th coordinate.
- The order-zero lattice representative of a polynomial $p\in\mathrm{Pol}$ using only keys of rank at most $d$, at $o$ is
$$R_h(p,o)(A)=\mathbb E_\xi\, p\big(\ell^h_o(A)+i\xi\big),$$
where $\xi$ is an independent centred Gaussian on the keys of rank $\le d$ with covariance
$$S_h(a,b)=(2\pi)^{-4}\int_{[-\pi,\pi]^4}\hat\Delta(k)^{-1}\sum_c \lambda_a(c,k)\lambda_b(c,k)\,dk .$$
Here $\hat\Delta(k)=\sum_i4\sin^2(k_i/2)$, $c$ runs over cosine/sine, axis and colour channels, and $\lambda_a(c,\cdot)$ is $\ell^h_{0,a}$ applied to the corresponding plane wave on $\mathbb Z^4$. So $S_h$ is the covariance of the jet stencils at one site for the Feynman-gauge Gaussian on the infinite lattice $\mathbb Z^4$, and $R_h(p,o)=\,:\!p(\ell^h_o)\!:_{S_h}$ is Wick-ordered with respect to the infinite-lattice self-contraction ([`column`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Blank.lean#L41), [`link`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Symbol.lean#L50)).

- **Regulators.** For an integer $L\ge2$ set $h_m=L^{-m}$ and $N_m=4L^{m^2+m+1}$. Lattice points are reported relative to the centre $c_m=(N_m/4,\dots,N_m/4)$, through $o\mapsto h_m(o-c_m)$ with representatives in $(-N_m/2,N_m/2]^4$.
- **Profile.** For $f:(\mathbb R^4)^r\to\mathbb C$ and $p\in F_d^{\,r}$,
$$\Pi_m(f;p)=h_m^{4r}\sum_{o\in\Lambda_{N_m}^r}f\big(h_m(o-c_m)\big)\,\Big\langle\prod_{j}R_{h_m}(\mathrm{sec}_d\,p_j,o_j)\Big\rangle^{(0)}_{N_m}$$
([`profile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L55-L56), [`row`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L41-L42)).

- **Itinerary.** An itinerary is a sequence $(N_i,h_i)$ with $N_i$ even, $h_i>0$, $N_ih_i$ a positive integer tending to $\infty$, $h_i\to0$, and $N_ih_i^k\to\infty$ for every $k\in\mathbb N$ ([`Itinerary`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Burst.lean#L50-L59)). Sites $o_i\in\Lambda_{N_i}$ are *homing* to $z$ if $h_i(o_i-c_{N_i})\to z$ ([`Home`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Schedule.lean#L53)).

**Proposition VII.1.1 (regulator removal at order zero).** Fix an integer $L\ge2$, $d,r\in\mathbb N$, label frames, and $p_1,\dots,p_r\in F_d$. Let $f$ be continuous with compact support and $\mathrm{supp}\,f\subset\mathrm{Conf}_r$, where support is closed. Then
$$\lim_{m\to\infty}\Pi_m(f;p)=\int f(x)\,\mathcal W_x(\omega_dp_1,\dots,\omega_dp_r)\,dx .$$
In board form: let $Q$ be a position board whose profiles are smooth test functions compactly supported in $\mathrm{Conf}$ ("clean profiles"). Then the order-zero board readings converge to the free readings, slot by slot and for every tuple of basis labels.
*Status:* theorem. There is no hypothesis on the construction; it concerns lattice Gaussian integrals and the continuum kernel only.
*Lean:* [`Rig.zerothProfile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L59-L69). Board form: [`Position.finite_leading`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L13-L16), using the definitions [`finite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L98), [`white`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L103-L104) and [`CleanProfiles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L13) (all VII.3).

**Proposition VII.1.2 (pointwise convergence of order-zero correlations).** Let $(N_i,h_i)$ be an itinerary with $4\mid N_i$. Let $z\in\mathrm{Conf}_r$, and let $o_{i,j}\in\Lambda_{N_i}$ be homing to $z_j$ for each $j$. Then for all $p_1,\dots,p_r\in F_d$,
$$\Big\langle\prod_jR_{h_i}(\mathrm{sec}_dp_j,o_{i,j})\Big\rangle^{(0)}_{N_i}\longrightarrow\mathcal W_z(\omega_dp_1,\dots,\omega_dp_r).$$
*Status:* theorem.
*Lean:* [`Warp.row_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L65-L68), through [`poly_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L50-L63) and [`earth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Approach.lean#L19-L32).

**Proposition VII.1.3 (corrected two-leg covariance).** Let $(N_i,h_i)$ be an itinerary with $4\mid N_i$. Let $\iota$ be any index set, let $z:\iota\to\mathbb R^4$ be injective, and for every $j\in\iota$ let $o_{i,j}$ be sites homing to $z_j$. For indices $j,l\in\iota$ and arbitrary keys $a,b$, define
$$\kappa_h(j,a;l,b)=\mathrm{Cov}_{\mu_N}\big(\ell^h_{o_j,a},\ell^h_{o_l,b}\big)-\delta_{jl}\,S_h(a,b).$$
Then
$$\kappa_{h_i}(j,a;l,b)\to\begin{cases}K_{ab}(z_j-z_l), & j\ne l,\\ 0, & j=l.\end{cases}$$
*Status:* theorem.
*Lean:* [`Align.corrected_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L39-L44), from [`orbit_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L80-L88), [`orbit_contact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L89-L95) and [`shell_exact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L108-L113).

**Proposition VII.1.4 (two-point detection).** Let $e_{\mathrm t}$ be the unit vector of the time axis, $\sigma$ the time reflection $x_{\mathrm t}\mapsto-x_{\mathrm t}$ acting on labels, and $\bar v$ the complex conjugate label. If $v\in V_d\setminus\mathcal I_d$, then
$$\mathrm{Re}\;\mathcal W_{(e_{\mathrm t},0)}\big(\rho v,\ \rho(\sigma\bar v)\big)>0 .$$
More generally, let $\Phi$ and $\Psi$ be the algebra maps sending shell coordinates to the diagonalizing and reflected probe variables of Lemma VII.1.m. For every nonzero $q\in\mathrm{WickPol}$, $\mathrm{Re}\,\mathcal W_{(e_{\mathrm t},0)}(\Phi q,\Psi\bar q)>0$. Here $\Phi$ is surjective, and $\rho(\sigma\bar v)=\Psi(\bar q)$ whenever $\rho v=\Phi q$.
*Status:* theorem, about the free kernel only. No Wilson family and no reflection positivity of a measure is involved.
*Lean:* [`Free.two_detect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L151-L155), [`Free.positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L132-L149), [`detectors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L26).

**Proposition VII.1.5 (Kelvin formulas for the free kernel).**

(a) Let $A$ be a real symmetric $j$-tensor on $\mathbb R^4$ whose diagonal $x\mapsto A(x,\dots,x)$ is harmonic. Then for $x\ne0$
$$\frac1{j!}A(\partial,\dots,\partial)\,\Gamma(x)=\frac{(-2)^j}{4\pi^2}\,|x|^{-2(j+1)}A(x,\dots,x).$$

(b) Let $Y\in\mathrm{Sh}_j$ be $\mathfrak g$-valued, with homogeneous Maxwell solution $Y^\natural(x)=Y(x,\dots,x)$. Contract the first leg of the curvature kernel at $x$ with $Y$, using its rank-$j$ Taylor coefficient and summing over colours, ordered form indices and jet indices, without a factor $1/2$. For $x\ne0$ the result equals
$$\gamma_j\,(\iota^*Y^\natural)(x),\qquad \gamma_j=\frac{2^j(j+1)(j+2)}{\pi^2}.$$
Here $\iota(x)=-x/|x|^2$ and $\iota^*$ is the pullback of 2-forms:
$$(\iota^*F)_{km}(x)=|x|^{-4}\left[B_{km}-2|x|^{-2}\left(x_k\sum_a x_aB_{am}-x_m\sum_a x_aB_{ak}\right)\right],\qquad B_{ab}=F_{ab}(\iota x).$$
*Status:* theorem.
*Lean:* [`Kelvin.harmonic_Green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Harmonic.lean#L157-L180) (with [`R`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Harmonic.lean#L83) $=|x|^{-2}$), and [`Kelvin.response_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L172-L176) (with [`inverted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L64-L65) and [`gain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L92)).

**Proposition VII.1.6 (corrected measuring charts).** Fix a Wilson family $C$ with a realization of its defining conditions, a construction record $U$ with limit table $S$ and extraction order $f$, and OPE table data as in VII.4. Let $D\in\mathbb N$, and let $u$ be a nontrivial filter on $\mathbb N\times\mathbb N$ finer than the extraction filter of $f$.

Assume a weak measuring portfolio $X$ through degree $D$. Its data include the observable bounds, Haar bounds, a Haar chart ratio, three price panels, and a constant dominating the label costs through $D$. It supplies an index $g(k)\to\infty$, finite-regulator linear label maps, and limiting maps $\Phi_{k,d}$ on the reference label-coordinate spaces. Eventually in $k$:

- $g(k)\le k$ and $\mathrm{scale}(k)\le\mathrm{scale}(g(k))+\log\hat\beta_k$;
- the finite-regulator maps satisfy the simultaneous rank-comparison conditions through $D$: every degree is available at step $g(k)$, the block ratio is below the monitor bound, the maps are tested and equivariant, and all three panels supply the required observable and remainder estimates;
- their rescaled read-out maps converge to $\Phi_{k,d}$ along the same filter $u$, for every $d\le D$ and every reference label.

Let $\lambda_d$ be the fixed equivariant representative of the free quotient in reference label coordinates, and let $\pi^S_d$ be projection to $S_d$. Set $D_{k,d}=\pi^S_d\Phi_{k,d}\lambda_d$. Define $\chi_k(d)=D_{k,d}$ when this map is bijective, and choose a fixed isomorphism $F_d\to S_d$ otherwise. Then there are complex linear isomorphisms $p_k(d):F_d\to S_d$, for every $k,d\in\mathbb N$, such that:

1. For all sufficiently large $k$, simultaneously for $d\le D$, $p_k(d)$ commutes with signed permutations and conjugation and preserves the unit. For all $d\le e\le D$,
   $$p_k(e)\circ\iota^F_{d,e}=\iota^S_{d,e}\circ p_k(d).$$

2. For every $d\le D$ and $v\in F_d$,
   $$\chi_k(d)^{-1}p_k(d)v\longrightarrow v.$$

The simultaneous finite-regulator conditions are [`Poised`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Plume.lean#L23-L27), and the representative is [`ladder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/CORRECTED_LIFT_COEFFICIENTS/Basis.lean#L115-L117).

*Status:* theorem under the stated construction and portfolio hypotheses. Lemma VII.1.q supplies the required two-point convergence.
*Lean:* [`Weak.Portfolio.tune_grades`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159), with [`Portfolio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L35-L49) and [`chart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L76-L79).

**Proposition VII.1.7 (backward windows and local expansions).**

(a) Fix the RG constants of III.2, Haar bounds, a Haar chart ratio satisfying the local ratio bounds, and a relay of admissible price panels with activation bounds $u_j\le L_j$. Each degree is eventually active; its three panels satisfy the comparison inequalities and the analytic bounds required for the rank estimates. Let $U$ be a wait with window
$$w_j(t)=\left\lfloor\frac{\log(\bar\beta+c_Gt)}{\log L_j}\right\rfloor,$$
where $c_G>0$ is the coupling slope. There is a wait $W$ with no smaller minimum stage length or entry thresholds and with the same window, together with panels and cost bounds for every degree, having the following property. For every realized Wilson family satisfying $W$, the prescribed observable bounds and the polynomial-representative conditions, and every $D$, all sufficiently late steps $k$ whose scale exceeds the stage entry threshold and whose backward window has length at most $k$ and lies in one stage admit simultaneous finite-regulator rank-comparison data through $D$, as in VII.1.6. The returned panels satisfy the three comparison inequalities at every degree, and each cost bound dominates the label costs through that degree.

(b) Let $U$ have the window in (a), and let $V$ have no smaller stage-length bounds, entry thresholds or windows. Assume, for every stage $j$, that the entry threshold of $V$ at $j$ is at least that of $U$ at $j+1$, and that $\bar\beta+c_Gt\ge c_G$ above the $V$ threshold at $j$. Every RG trajectory satisfying $V$ admits $g(k)\to\infty$ such that eventually $g(k)\le k$, the step $g(k)$ is above its $U$ entry threshold, its backward $U$ window has length at most $g(k)$ and lies in one stage, and
$$\mathrm{scale}(k)\le\mathrm{scale}(g(k))+\log\hat\beta_k.$$
These threshold conditions are [`LateEnough`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Cover.lean#L27-L28).

(c) Fix a finite index set $I$, a marker subset $T\subset I$, an anchor $p\in T$, $D,k,E,q\in\mathbb N$, a support parameter $R\in\mathbb R$, and $v>0$, with $q\le k+E$. There are $0<w\le v$ and $C_0\ge0$, independent of the layout and its bound $B$, with the following property. Suppose a layout has marker weights $a_i\in\mathbb N$ with $\sum_{i\in T}a_i=k$, depends only on the occupied markers, vanishes on the empty marker set, and satisfies the prescribed tensor symmetry, rank and analytic realization conditions ([`Sense`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Creek/Step.lean#L16-L20)). Suppose also that every coefficient of expansion order $i\le E$, at every leg rank, has the anchored $v$-weighted absolute-sum bound $B$. Translate the root to $x_p$ and shift the order by $q$, setting coefficients with $q+n<k$ to zero. Through leg rank $k+E-q$, the resulting coefficients are exactly the Taylor coefficients of a finite sum of curvature expressions of ranks
$$k\mathbin{\dot-}q,\ldots,k+E-q,$$
where $k\mathbin{\dot-}q=\max(k-q,0)$. Each expression depends only on $T$, retains the required symmetries and analytic realization, and has the anchored absolute-sum bound $BC_0$ with weight $\exp(w\,\mathrm{girth})$, including the exponential weight on relative marker positions.

*Status:* theorems.
*Lean:* [`Dense.slim_wait_for`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Slender.lean#L127-L143), [`Dense.nearby`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Cover.lean#L155-L165), [`Dart.coin_pre`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Dart/Seams.lean#L34-L45).

## 2. What it uses

**From other units.**

- *VII.3 (the lattice prescription and position boards):*
  - the reflection-odd field space, the Feynman-gauge form, the Gaussian $\mu_N$ and the coupling series;
  - the jet stencils ([`wideLinear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/TopLinear.lean#L33-L35)), the Wick-subtraction covariance $S_h$ ([`shellCov`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Symbol.lean#L58-L59)) and the on-shell representatives [`physicalLabel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Lifts.lean#L78);
  - rows, profiles and the board objects [`Conditions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L54-L59), [`finite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L98) and [`white`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L103-L104).
- *III.16 (free Maxwell analysis):* the shells, [`reduceEq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L47-L50), [`equationIdeal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72), $\Gamma$, the curvature kernel [`legKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L161-L162) and the Wick moment [`Wick.moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127).
- *VI.2 and VI.1:* the free table and its label spaces $F_d$ (VI.2); the hierarchy as a function of positions, [`Ward.disc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L23) (VI.1).
- *II.1 and I.1:* labels, keys and Taylor jets (II.1); the lattice and the signed permutations $W_4$ (I.1).
- *For VII.1.6:*
  - the construction record (VIII.1) and the limit table $S$;
  - the OPE table work items, of which only the system part is used (VII.4);
  - the chart-correction machinery [`retraction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L35-L55), [`adjusted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L61-L66), [`rotateChart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L137-L140) and [`Graded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L171-L172) (VII.5);
  - the rank-comparison error bound and its decay [`Ship.diminishes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L34-L37) (III.11), and the chessboard-to-moment estimate for observables [`Read.full_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Finite.lean#L242-L250) (III.11);
  - the lemma [`tendsto_of_fitted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A04.lean#L34-L57) (VI.1): if $f_k,g:E\to F$ are linear maps between finite-dimensional complex normed spaces, $f_k\to g$ pointwise, $g$ is injective and $f_k(w_k)\to g(z)$, then $w_k\to z$.
- *For VII.1.7:* stage-length bounds, entry thresholds, backward windows, and the RG scale sequence (III.2); price panels and the linear checks on their exponents (II.2).

**Standard mathematics.**

- Gaussian moments and Wick's theorem in recursive form; Wick ordering as $:\!p(\varphi)\!:\,=\mathbb E_\xi\,p(\varphi+i\xi)$. References: Glimm–Jaffe, *Quantum Physics*, §6.3 and §8.6; B. Simon, *The $P(\varphi)_2$ Euclidean (Quantum) Field Theory*, Ch. I.
- Fourier analysis on $(\mathbb Z/N)^4$; asymptotics of the lattice Green function and its finite differences (Lawler–Limic, *Random Walk: A Modern Introduction*, Ch. 4); power counting for lattice Feynman integrals (T. Reisz, *Commun. Math. Phys.* 116 (1988) 81).
- Riemann sums for continuous compactly supported functions; dominated convergence.
- Derivatives of $|x|^{2-n}$ against harmonic polynomials (Hobson's formula; E. W. Hobson, *The Theory of Spherical and Ellipsoidal Harmonics*, 1931); the Kelvin transform (Axler–Bourdon–Ramey, *Harmonic Function Theory*, Ch. 4); invariance of the source-free Maxwell equations under inversion (Bateman, Cunningham, 1910).

**Imported constants and assumptions.**

- VII.1.1–VII.1.5 use the stated gauge, label and regulator data and no assumptions on an interacting construction.
- VII.1.6 imports the construction record, the portfolio estimates at step $g(k)$, the error bound of III.11, which tends to $0$, and the OPE work items.
- VII.1.7 imports the RG scale sequence (stage lengths $L_j$, the scale and $\hat\beta_k$) from III.2.

## 3. Strategy

At order zero, the normalized perturbative expectation is Gaussian. Wick ordering introduces an independent imaginary Gaussian for each insertion, so the pair contraction is the torus stencil covariance minus the infinite-lattice self-covariance at a common insertion. Fourier analysis identifies the contractions at separated points with the Maxwell kernel. At one insertion, the remaining finite-volume error tends to zero because the period grows faster than every inverse power of the spacing. The lattice moments and the continuum Wick moments satisfy the same deletion recursion; induction on the number of distinguishable legs gives VII.1.2. Compactness and dominated convergence then give the tested limit VII.1.1.

For detection, inversion and translation turn a homogeneous Maxwell solution of degree $j$ into a field whose Taylor expansion at the detector begins at order $j$. Adding the corresponding lower-rank probes gives a triangular change of variables. In an orthogonal shell basis, the reflected one-leg pairing becomes diagonal with positive entries. Wick's rule then makes distinct monomials orthogonal and gives every monomial a positive squared norm, proving VII.1.4.

The interacting comparison uses the rank estimates of III.11. They imply convergence of all mixed two-point readings in one portfolio. Free detection makes the raw charts eventually invertible and forces their filtration defects to tend to zero. Fixed equivariant retractions of the free inclusions remove these defects recursively, giving the exactly compatible charts of VII.1.6. Proposition VII.1.7 supplies the backward-window and local-expansion estimates used in this construction.

## 4. Steps

### 4.1 The free lattice covariance

**Lemma VII.1.a (covariance of link forms).** For links $a=(x,i)$, $b=(y,j)$ and colours $u,t$,
$$\mathrm{Cov}_{\mu_N}\big(\langle A(a),u\rangle,\langle A(b),t\rangle\big)=\langle u,t\rangle\,\mathbf 1_{i=j}\,\big[g_N(y-x)-g_N(y+x+e_i)\big].$$
Here $g_N$ is the mean-zero torus Green function, $-\Delta g_N=\delta_0-N^{-4}$ and $\sum_xg_N=0$, written as a Fourier sum over $(\mathbb Z/N)^4$ with the zero mode omitted ([`toroid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Inversion.lean#L19), [`lap_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Inversion.lean#L46-L52)).
*Proof sketch.* Summation by parts gives $\mathsf Q_N(A,B)=-\tfrac12\sum\langle A(x,i),\Delta B_i(x)\rangle$, the Feynman-gauge identity curl² + div² = $-A\cdot\Delta A$ ([`total`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Adjoint.lean#L62-L71)). The response to a unit forcing at $a$ is $g_N(\cdot-x)e_i$ minus the same function at the image link. The constants $N^{-4}$ cancel between the two images, and oddness of the test field doubles the pairing ([`inverse_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Source.lean#L40-L54)).
*Lean:* [`Orb.covar_link`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Source.lean#L55-L59).

**Lemma VII.1.b (separated legs).** Let $(N_i,h_i)$ be an itinerary. For a torus site $x$, write $[x]_{N}$ for its centred lift in $(-N/2,N/2]^4$. Let $x_i,y_i$ satisfy $h_i[x_i-y_i+p]_{N_i}\to z\ne0$ and $\|h_i[x_i+y_i+p]_{N_i}\|\to\infty$ for every fixed $p\in\mathbb Z^4$. Then for real linear forms $P$ on $T_j$ and $Q$ on $T_k$,
$$\mathrm{Cov}_{\mu_{N_i}}\big(P\circ\ell^{h_i}_{x_i},Q\circ\ell^{h_i}_{y_i}\big)\to K(P\circ\kappa,Q\circ\kappa)(z).$$
The image condition holds automatically when both families are homing and $4\mid N_i$, since then each coordinate of $x_i+y_i$ is $N_i/2+O(h_i^{-1})$ modulo $N_i$ ([`finale_home`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Schedule.lean#L90-L103)).
*Proof sketch.*

1. Average over $W_4$ and expand the forms in component functionals. By Lemma VII.1.a each component pairing becomes $h^{-(|D|+2)}$ times a forward difference $\nabla^+_D$ of $g_N$, evaluated at $x-y$ (direct term) and at $x+y+e$ (image term). The Fourier symbol of $\nabla^+_D$ is $\prod_{k\in D}(e^{ip_k}-1)$.
2. *Direct term* ([`joint_casual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Return.lean#L95-L101)). At physical momentum scale $s$, set $t=hs$ and write lattice momentum as $tk$. The unscaled Fourier multiplier becomes $N^{-4}t^{|D|-2}$ times a rescaled symbol; after multiplication by $h^{-(|D|+2)}$, the prefactor is $(Nh)^{-4}s^{|D|-2}$. The rescaled symbol is jointly smooth near $(0,k)$ for $k\ne0$ and equals $\prod_{l\in D}(ik_l)/|k|^2$ at $t=0$. Split momentum space with a smooth bump into a low-momentum piece, dyadic annuli and a tail.
   - Each annulus is a Riemann sum of a compactly supported rescaled integrand and converges to its continuum integral.
   - For separations bounded below by $R>0$, the tail is bounded by $C(D,R)/s$ uniformly in $N$ once the mesh is fine enough relative to $hs$ ([`upper_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Power.lean#L63-L70)). The proof uses $|D|+3$ summations by parts in momentum and the lower bound $|e^{2\pi i[x]_f/N}-1|\gtrsim\|h[x]_N\|/(Nh)$ for a suitable coordinate $f$.
   - The low piece is $O(s^{|D|+2})$.
   - The same bounds hold for the continuum integral after heat regularization. A $3\varepsilon$ argument concludes ([`wrap_tube`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Return.lean#L56-L81)).
   - Besides $h\to0$, this part requires only $Nh\to\infty$, rather than faster volume growth.
3. *Image term.* The same decomposition gives $0$ when the norm of the centred image displacement tends to infinity in physical units ([`joint_far`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Image.lean#L22-L31)).
4. The limit is identified with $K$ on rotated on-shell jets, and $W_4$-averaging returns $K(P\circ\kappa,Q\circ\kappa)$.

*Lean:* [`Align.chart_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Bilateral.lean#L75-L83), [`Align.orbit_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L80-L88). *(proof read through the Fourier bounds; remaining analytic inputs in §7)*

**Lemma VII.1.c (coincident legs).** Let $(N_i,h_i)$ be an itinerary and let $x_i\in\Lambda_{N_i}$ satisfy $\|h_i[2x_i+p]_{N_i}\|\to\infty$ for every fixed $p\in\mathbb Z^4$. For real linear forms $P$ on $T_j$ and $Q$ on $T_k$,
$$\mathrm{Cov}_{\mu_{N_i}}\big(P\circ\ell^{h_i}_{x_i},Q\circ\ell^{h_i}_{x_i}\big)-\mathcal S_{h_i}(P,Q)\to0,$$
where $\mathcal S_h$ is the $\mathbb Z^4$ covariance of the same stencils. In particular $S_h(a,b)=\mathcal S_h(x_a,x_b)$ ([`shell_exact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L108-L113)).
*Proof sketch.* The image term vanishes as in Lemma VII.1.b. The direct term is a finite combination of values $g_N(a)$ at fixed lattice offsets $a$, compared with the $\mathbb Z^4$ Green function $G_{\mathbb Z^4}(a)$ and multiplied by $h^{-(j+k+4)}$. The estimate for each fixed offset $a$ ([`toroid_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Fee.lean#L84-L112)) gives constants $C,A\ge0$, independent of $N$ and $r$, such that for $N$ even and $0<r\le1$, $8/N\le r$,
$$|g_N(a)-G_{\mathbb Z^4}(a)|\le C\,r^2+A/(N r^4).$$
It is proved by viewing $g_N(a)$ as a Riemann sum of $\cos(2\pi a\cdot q)/\hat\Delta(2\pi q)$:

- near $q=0$ both terms are $O(|q|^{-2})$, whose integral over $\{|q|\le r\}$ is $O(r^2)$;
- elsewhere the integrand is $O(r^{-4})$-Lipschitz and the grid points move by $O(1/N)$.

With $r=h^{n+1}$, where $n=j+k+4$ is the power of $h^{-1}$ to be beaten, the error times $h^{-n}$ is at most $Ch^{n+2}+A/(Nh^{5n+4})\to0$. This comparison uses the condition $N_ih_i^k\to\infty$ for every $k$ ([`strike_two`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Visits.lean#L29-L46)).
*Lean:* [`Align.chart_return`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Bilateral.lean#L85-L89), [`Align.orbit_contact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L89-L95).

**Lemma VII.1.d (VII.1.3).** This is Lemma VII.1.b for $j\ne l$ (with [`scene_home`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Schedule.lean#L71-L77) and [`finale_home`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Schedule.lean#L90-L103)) and Lemma VII.1.c for $j=l$. The covariance matrix $\mathsf Q_N^{-1}$ evaluated on the stencil vectors equals the orbital pairing ([`key_orb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L31)).
*Lean:* [`corrected_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L39-L44).

### 4.2 Order zero as a Gaussian recursion

**Lemma VII.1.e (order zero is a joint Gaussian expectation).** Fix $h>0$, an even period $N\ge4$, insertion sites $o_1,\ldots,o_r$, and $d\in\mathbb N$. Let $s$ be a finite set of distinguishable occurrences, with insertion map $\tau:s\to\{1,\ldots,r\}$ and key map $a:s\to\{\text{keys of rank at most }d\}$. Repeated keys are allowed. Set $\mathrm{root}(s)_j=\prod_{\nu:\tau(\nu)=j}x_{a(\nu)}$. Then
$$\Big\langle\prod_jR_h(\mathrm{root}(s)_j,o_j)\Big\rangle^{(0)}=E_h(s):=\mathbb E\Big[\prod_{\nu\in s}\big(\ell^h_{o_{\tau(\nu)},a(\nu)}+i\,\xi^{(\tau(\nu))}_{a(\nu)}\big)\Big],$$
under $\mu_N\otimes\bigotimes_{j=1}^r\mathcal N(0,S_h)$.
*Proof sketch.* The weight and the vacuum both have constant coefficient $1$, so the order-zero coefficient of the normalized expectation is a $\mu_N$-integral. The constant coefficient of each lattice jet is its linear part $\ell^h$. Fubini over the independent auxiliary copies finishes the proof.
*Lean:* [`Warp.amplitude_zero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Initial.lean#L39-L56). The pair covariance of two legs is $\kappa_h$ ([`node_wage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Engine.lean#L59-L63)): the auxiliary copies contribute $i^2S_h=-S_h$ for legs assigned to the same insertion and $0$ otherwise, even if two insertion sites happen to coincide.

**Lemma VII.1.f (symmetric deletion identity).** Let $\mu$ be a centred Gaussian on a finite-dimensional real space (possibly degenerate) and $P_a$, $a\in s$, real linear functionals with values in $\mathbb C$. Then
$$|s|\,\mathbb E\prod_{a\in s}P_a=\sum_{a\in s}\sum_{b\in s\setminus\{a\}}\mathbb E[P_aP_b]\;\mathbb E\prod_{c\in s\setminus\{a,b\}}P_c.$$
The products are bilinear, without complex conjugation. For the legs of Lemma VII.1.e, write $\kappa_h(\nu,\mu)=\kappa_h(\tau(\nu),a(\nu);\tau(\mu),a(\mu))$; then $|s|E_h(s)=\sum_{\nu\ne\mu}\kappa_h(\nu,\mu)E_h(s\setminus\{\nu,\mu\})$.
*Proof sketch.* For powers of a single real functional $L$ of variance $v$, $\mathbb E L^{n+1}=nv\,\mathbb EL^{n-1}$ for $n\ge1$, with $\mathbb EL=0$, read off from the moment generating function ([`ev_next`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Diagonal.lean#L15-L19)). The multilinear case follows by polarization ([`packet_cancel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Symmetric.lean#L73-L77)). The complex case follows by splitting into real and imaginary parts.
*Lean:* [`exchange_s`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Exchange.lean#L68-L91), [`Warp.eq_cancel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Approach.lean#L12-L18).

**Lemma VII.1.g (the continuum recursion).** For $z\in\mathrm{Conf}_r$ set $c_z(s)=\mathcal W_z(\rho\circ\mathrm{root}(s))$. Then for every $\nu\in s$,
$$c_z(s)=\sum_{\mu\in s\setminus\{\nu\}}\mathbf 1_{\tau(\mu)\ne\tau(\nu)}\,K_{a(\nu),a(\mu)}\big(z_{\tau(\nu)}-z_{\tau(\mu)}\big)\,c_z(s\setminus\{\nu,\mu\}),$$
and summing over $\nu\in s$ gives the analogue of Lemma VII.1.f.
*Proof sketch.* Removing one on-shell variable $\rho(x_{a(\nu)})$ at the point $z_{\tau(\nu)}$ from a Wick moment amounts to applying, at every other point, the derivation that replaces one variable by its pairing with $a(\nu)$ ([`take_line`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Rowdy.lean#L45-L49)). On a monomial the derivation produces the sum over its variables ([`D_kill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Rowdy.lean#L59-L61)). There are no same-point pairings.
*Lean:* [`cut_one`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Shards.lean#L26-L48), [`cut_cancel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Shards.lean#L49).

**Lemma VII.1.h (convergence of leg products).** In the setting of VII.1.2, $E_{h_i}(s)\to c_z(s)$ for every finite set of legs.
*Proof sketch.* The proof is by strong induction on $|s|$.

- For $s=\emptyset$ both sides equal $1$ (probability measures).
- Otherwise divide the identities of Lemmas VII.1.f and VII.1.g by $|s|$. Use VII.1.3 for the coefficients and the induction hypothesis for the shorter products.

*Lean:* [`Warp.earth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Approach.lean#L19-L32).

**Lemma VII.1.i (monomials, polynomials, labels; VII.1.2).**

- Every tuple of monomials involving only keys of rank at most $d$ is $\mathrm{root}(s)$ for a suitable set of distinguishable occurrences, so Lemma VII.1.h applies.
- Multilinearity extends the limit to arbitrary polynomials involving only keys of rank at most $d$; no bound on their number of factors is needed.
- The representatives $\mathrm{sec}_d$ have engineering weight at most $d$, hence use only keys of rank at most $d$. Composing gives the label limit, with $\rho\circ\mathrm{sec}_d=\omega_d$.

*Lean:* [`mono_single`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L31-L40), [`mono_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L41-L47), [`poly_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L50-L63), [`row_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L65-L68).

### 4.3 Tested sums

**Lemma VII.1.j (Riemann sums with continuous convergence).** Hypotheses:

- centred torus grids of positive integer side $N_m$ and spacing $t_m=1/n_m$, $n_m\in\mathbb N_{>0}$, with $t_m\to0$ and $t_mN_m\to\infty$;
- kernels $\mathcal K_m$ on $r$-tuples of grid points;
- $f$ continuous with compact support in an open set $\omega$;
- along every cofinal reindexing $\sigma:\mathbb N\to\mathbb N$, and every sequence of tuples on the reindexed grids whose embeddings converge to $z\in\omega$, the corresponding kernels converge to $\mathcal G(z)$.

Writing $\jmath_m(o)=t_m[o-c_{N_m}]_{N_m}$ for the embedding, one has $t_m^{4r}\sum_o f(\jmath_m(o))\mathcal K_m(o)\to\int f\mathcal G$.
*Proof sketch.*

- The kernels are eventually bounded uniformly on $\mathrm{supp}\,f$ ([`bounded_fee`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Moving.lean#L68-L86)). Otherwise there are points of $\mathrm{supp}\,f$ along which they blow up, and a convergent subsequence of these points contradicts the hypothesis.
- Write the sum as the integral of a step function supported in a fixed ball. Apply dominated convergence; the box eventually contains the support.

*Lean:* [`Rig.grid_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Tested.lean#L23-L52), with [`Arrives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Moving.lean#L50-L51).

**Lemma VII.1.k (VII.1.1).** Apply Lemma VII.1.j with $\omega=\mathrm{Conf}_r$, $\mathcal K_m$ the order-zero correlations and $\mathcal G=\mathcal W(\omega_dp)$, along the regulator sequence $h_m=L^{-m}$, $N_m=4L^{m^2+m+1}$ ([`routine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L14-L21)).

- The arrival property is VII.1.2, applied to each cofinal reindexing of the regulator sequence, which is again an itinerary with $4\mid N$.
- The tested sum is the order-zero coefficient of the profile.
- The identity $\rho\circ\mathrm{sec}_d=\omega_d$ identifies the continuum moment with the free hierarchy.
- The board form applies this slot by slot to basis labels; clean profiles are smooth test functions with compact support in $\mathrm{Conf}$ ([`Test`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Test.lean#L18)).

*Lean:* [`Rig.zerothProfile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L59-L69), [`Position.finite_leading`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L13-L16).

**Downstream use (not part of this unit).** The assembly in VIII.1 uses the tested order-zero limit in two ways:

- [`credible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L50-L52) subtracts it from [`measured_tends`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L16-L19) (which assumes the interacting short-distance comparison of VI.2). This shows that measured scaled means minus order-zero lattice readings tend to $0$.
- [`calibrate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L36-L43) solves the finite position equations when the leading Jacobian is invertible.

The position-comparison data are described in VII.3.

### 4.4 Detection on the free side

**Lemma VII.1.l (Wick rule under linear substitution).** Fix $x\in\mathrm{Conf}_r$ and a finite list of variable occurrences assigned to its insertions. Replace each occurrence $a$ by a finite complex linear combination $u_a$ of shell coordinates, allowing different Taylor ranks. Extend $K$ to these combinations by complex bilinearity. The Wick moment of the resulting products equals
$$\sum_{\text{matchings}}\prod_{\text{pairs}}K\big(u_a,u_{a'}\big)(x_{i(a)}-x_{i(a')}).$$
Only matchings between distinct insertions are included.
*Proof sketch.* Expand the linear forms in the coordinate basis. Multilinearity reduces the formula to the defining Wick sum on coordinate monomials.
*Lean:* [`Free.linear_substitution`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Polarize.lean#L108-L119).

**Lemma VII.1.m (diagonal one-leg kernel).** With the bilinear extension of $K$ from Lemma VII.1.l, choose in each $\mathrm{Sh}_j$ a basis $(Y_a)$ orthogonal for full component contraction, and set $\lambda_a=\gamma_j\langle Y_a,Y_a\rangle>0$. For $Y\in\mathrm{Sh}_j$, let $Y_i$ be the order-$i$ Taylor coefficient of $Y^\natural$ at $e_{\mathrm t}$ and let $\langle Y_i,\cdot\rangle$ denote the full-contraction probe. Define
$$\epsilon_a=\sum_{i=0}^j\frac{\gamma_j}{\gamma_i}\langle (Y_a)_i,\cdot\rangle,\qquad \epsilon^\sigma_a=\epsilon_a\circ\sigma.$$
Then
$$K(\epsilon_a,\epsilon^\sigma_b)(e_{\mathrm t})=\delta_{ab}\lambda_a.$$
*Proof sketch.* Expand the translated field $x\mapsto Y^\natural(e_{\mathrm t}+x)$ into its homogeneous Taylor pieces and apply the Kelvin formula to each piece. Since $e_{\mathrm t}+\iota(e_{\mathrm t})=0$, its inverted field has no Taylor coefficient at $e_{\mathrm t}$ below order $j$; its order-$j$ coefficient is $(-1)^j$ times the time-reflected tensor $Y$. The weighted sum defining $\epsilon_a$ produces exactly $\gamma_j$ times this inverted translated field. The second-endpoint sign cancels $(-1)^j$ on the diagonal. Thus pairings with lower ranks vanish and equal-rank pairings are $\gamma_j$ times full contraction. Symmetry gives vanishing for the opposite rank ordering, and the chosen orthogonal bases give the displayed matrix.

*Lean:* [`Free.pairing_var`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Variables.lean#L114-L118), with [`center_lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Centered.lean#L70-L73) and [`center_diag`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Centered.lean#L80-L101).

**Lemma VII.1.n (orthogonality and positivity; VII.1.4).** For finitely supported exponent vectors $\alpha,\beta$ in the probe variables,
$$\mathcal W_{(e_{\mathrm t},0)}(\Phi x^\alpha,\Psi x^\beta)=\delta_{\alpha\beta}s_\alpha,\qquad s_\alpha=\prod_a\alpha_a!\lambda_a^{\alpha_a}>0.$$
The empty monomial has $s_0=1$.
*Proof sketch.*

- By Lemmas VII.1.l and VII.1.m only matchings that pair each variable at $e_{\mathrm t}$ with the same variable at $0$ survive.
- For equal exponent vectors, there are $\prod_a\alpha_a!$ surviving matchings, each of amplitude $\prod_a\lambda_a^{\alpha_a}$.
- For $q\ne0$, expanding $q=\sum c_\alpha x^\alpha$ gives $\mathrm{Re}=\sum_\alpha|c_\alpha|^2s_\alpha>0$.
- For a label $v$:
  - $\Phi$ is onto ([`forward_full`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Variables.lean#L137-L142)), so $\rho v=\Phi q$ for some $q$;
  - $\rho(\sigma\bar v)=\Psi\bar q$ ([`reversed_observable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Variables.lean#L165-L173));
  - $q\ne0$ because $v\notin\mathcal I_d=V_d\cap\ker\rho$.

*Lean:* [`pair_test`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L57-L79), [`wick_orth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L109-L115), [`positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L132-L149), [`two_detect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L151-L155).

**Lemma VII.1.o (Kelvin formulas; VII.1.5).**
*Proof sketch for (a).* The case $j=0$ is the definition of $\Gamma$. For $j\ge1$, use
$$\tfrac1{j!}A(\partial)=\tfrac{1}{j}\sum_i\partial_i\,\tfrac1{(j-1)!}A(e_i,\cdot)(\partial).$$
Each contraction $A(e_i,\cdot)$ is again symmetric with harmonic diagonal. Then use $\partial_i|x|^{-2j}=-2j\,x_i|x|^{-2(j+1)}$ and the vanishing of $\sum_i\partial_iA(e_i,x,\dots,x)$ (harmonicity). The contraction identity $\sum_ix_iA(e_i,x,\dots)=A(x,\dots,x)$ closes the step.
*Proof sketch for (b).* Work colour by colour. Each component $Y_{ab}^\natural$ is harmonic (closed and coclosed), so (a) applies to every term of the curvature kernel. The terms are recombined using the divergence equation and $\partial_k(x\lrcorner Y^\natural)_m-\partial_m(x\lrcorner Y^\natural)_k=(j+2)Y^\natural_{km}$ (Bianchi plus Euler).
*Lean:* [`harmonic_Green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Harmonic.lean#L157-L180), [`response_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L172-L176).

**Lemma VII.1.p (finite detection).** Let $\beta$ be a basis of $F_d$. The map $v\mapsto\big(\mathcal W_{(e_{\mathrm t},0)}(\omega_dv,\omega_d\beta_i)\big)_i$ is injective on $F_d$. A label whose two-point functions with all labels vanish at the detector pair is null in the free table.
*Proof sketch.* If all basis probes vanish, linearity gives vanishing against every second label. For a representative of $v$, take its time-reflected conjugate as the second label and apply VII.1.4. Conversely, $\rho v=0$ makes every free correlation containing that label vanish. Thus the free null space in $V_d$ is $\mathcal I_d$.
*Lean:* [`free_criterion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Test.lean#L21-L32), [`free_null`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Test.lean#L34-L42), [`free_injective`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Test.lean#L77-L85). In the same spirit, [`OPE.Levy.free_positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Levy/Panel.lean#L39-L51) shows that the reflected free two-point form at the detector pair is positive on $F_d\setminus0$.

For bounded complex linear maps $P:E\to E$, $X:V\to E$, $A:E\to Z$ and $H:V\to Z$ between complex normed spaces, the perturbation lemma [`test_projected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Matrix.lean#L38-L46) is not used by the main theorem. It states that a lower bound $a\|x\|\le\|Hx\|$ for every $x\in V$ and $\|H-AX\|+\|(A-AP)X\|\le\delta$ imply $(a-\delta)\|x\|\le\|APXx\|$.

### 4.5 Corrected charts and bookkeeping

**Lemma VII.1.q (two-point convergence at moving detectors).** Under the hypotheses of VII.1.6, let $\delta_k=r_k y_k$ be the portfolio detector pair, where $r_k>0$, $r_k\to0$, and $y_k\to(e_{\mathrm t},0)$. For fixed reference labels $v_0,v_1$ of respective weights at most $d_0,d_1\le D$, put $\widehat v_{k,j}=\pi^S_{d_j}\Phi_{k,d_j}v_j$. Then
$$S_{d_0,d_1}(\delta_k;\widehat v_{k,0},\widehat v_{k,1})\longrightarrow\mathcal W_{(e_{\mathrm t},0)}(\rho v_0,\rho v_1),$$
where $\rho v_j$ means the on-shell image of the label polynomial represented by $v_j$.
*Proof sketch.* The finite-regulator estimate [`Read.full_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Finite.lean#L242-L250) converts bounds on all nonempty marker components into a moment bound. The portfolio supplies these component bounds, and passage to the common extraction subfilter gives [`actualRead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Inspect.lean#L80-L99). The resulting comparison [`compareC`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L94-L105) bounds the difference between the interacting moment at $\delta_k$ and the free moment at $y_k$ by $C\varepsilon_{g(k)}$, with $\varepsilon_{g(k)}\to0$ by III.11. Continuity of the free kernel at the detector pair gives the limit.
*Lean:* [`Portfolio.twoC`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L107-L124). *(proof read through the rank-comparison input)*

**Lemma VII.1.r (raw charts are eventually bijective and nearly compatible).** Under the hypotheses of VII.1.6:

1. The read-out maps $D_{k,d}$ are eventually bijective for every $d\le D$, so $\chi_k(d)=D_{k,d}$. The real part of the reflected measured form converges in operator norm to a free form bounded below by $\delta\|v\|^2$ for some $\delta>0$. It is therefore bounded below by $(\delta/2)\|v\|^2$ eventually. This proves injectivity; the comparator isomorphism in the construction record gives equality of dimensions and hence surjectivity ([`freely`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Pairing.lean#L75-L76), [`certified`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Pairing.lean#L110-L128), [`chartDraw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L84-L87)).
2. For every $d<D$ and $v\in F_d$, $\chi_k(d+1)^{-1}\iota^S\chi_k(d)v\to\iota^Fv$ ([`stepFits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L98-L121)). Both sides are probed by two-point functions against $\chi_k(d+1)\beta_i$, where $(\beta_i)$ is a basis of $F_{d+1}$; Lemma VII.1.q gives convergence of the probes, and injectivity of the free probe (Lemma VII.1.p), through the finite-dimensional fitting lemma of §2, gives convergence of the arguments.
3. Eventually each $\chi_k(d)$ commutes with conjugation and signed permutations ([`symmetrical`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L124-L136)), and it preserves the unit.



**Lemma VII.1.s (VII.1.6).** Under the hypotheses of VII.1.6:

1. Take a retraction $P_d:F_{d+1}\to F_d$ of the free inclusion that is equivariant and commutes with conjugation (averaging over $W_4$ and symmetrizing with the conjugation).
2. For fixed $k$, define recursively $A_0=\chi_k(0)$ and
$$A_{d+1}=\iota^S A_dP_d+\chi_k(d+1)(1-\iota^FP_d).$$

3. For each $d\le D$, the operators $\chi_k(d)^{-1}A_d$ tend to the identity by induction using Lemma VII.1.r(2). They are eventually invertible. Set $p_k(d)=A_d$ when it is bijective and $p_k(d)=\chi_k(d)$ otherwise.
4. Exact compatibility follows from the construction together with VII.1.r(3), and $\chi_k^{-1}p_k\to1$ from VII.1.r(2).

*Lean:* [`tune_grades`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159).

**Lemma VII.1.t (VII.1.7).**

- (a) [`slim_wait_for`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Slender.lean#L127-L143). The required minimum window is $o(\log\hat\beta)$ at each fixed stage, while the prescribed window is $\lfloor\log\hat\beta/\log L_j\rfloor$. Raise entry thresholds to fit the finitely many active estimates inside it. Repeat for the three panels and raise the thresholds further to ensure that the block ratio is below the monitor bound. The station estimates then give the simultaneous data in VII.1.7(a).
- (b) [`nearby`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Cover.lean#L155-L165). If the backward window at $k$ stays in its stage, take $g(k)=k$. Otherwise take the last step of the preceding stage. Within one stage the logarithmic window grows by at most one per level. The threshold conditions ensure that this last step is usable; the number of intervening levels times $\log L_j$ is at most $\log\hat\beta_k$. The selected stage tends to infinity, so $g(k)\to\infty$.
- (c) [`coin_pre`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Dart/Seams.lean#L34-L45). Put $z=k+E-q$ and first reduce the weight to $\sigma=v/(z+2)$ to pay for re-rooting. Apply [`arose`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Dart/Verge.lean#L62-L86) from rank $\max(k-q,0)$ through $z$. Inductively lift the lowest remaining coefficient to a curvature expression, subtract its Taylor expansion, and continue. At each of these finitely many steps, reduce the exponential weight and enlarge the constant to control the subtraction. The analytic realization hypothesis permits the lift at every step.

Parts (a) and (b) supply the common portfolio used in VII.1.6; the assembly is in III.13. Part (c) supplies local curvature expansions for the RG estimates.

*(proof read through the stated station and curvature-lifting inputs)*

## 5. Where the difficulty lies

The main analytic work is the control of finite differences of the torus Green function, uniformly as the spacing shrinks and the volume grows. The Fourier argument must retain oscillatory cancellation; an absolute bound on the full momentum integral would not give the required derivative limits.

Wick ordering uses the infinite-lattice covariance. Consequently the same-insertion contraction is not exactly zero at finite volume. For each fixed stencil offset, the available estimate is $Cr^2+A/(Nr^4)$, multiplied by $h^{-n}$. Taking $r=h^{n+1}$ gives $Ch^{n+2}+A/(Nh^{5n+4})$. The chosen period handles every fixed $n$ at once. This is a sufficient growth condition; no optimal volume rate is asserted.

The reflection-odd field space removes constant zero modes but introduces an image term. Reporting around the quarter period sends that image to infinite physical distance. Detection requires a separate algebraic argument: the translated inversion formula and the triangular probe substitution establish strict positivity on every nonzero on-shell polynomial, including constants. The chart correction then uses finite-dimensional perturbation theory and the interacting estimates of III.11.

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
| regulator sequence, centre, profile | [`topSpacing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L46), [`period`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L49), [`center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L52), [`profile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L55-L56) | $h_m$, $N_m$, $c_m$, $\Pi_m(f;p)$ |
| shell, on-shell reduction, equation ideal | `Shell`, [`reduceEq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L47-L50), [`equationIdeal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72) | $\mathrm{Sh}_j$, $\rho$, $\mathcal I_d$ |
| Green function, curvature jet kernel | [`Green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L22), [`legKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L161-L162) | $\Gamma$, $K(P,Q)$ |
| Wick moment | [`Wick.moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127) | $\mathcal W_x$ |
| detector pair, time reflection | [`detectors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L26), `Kelvin.σ` | $(e_{\mathrm t},0)$, $\sigma$ |
| inversion pullback, gain | [`inverted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L64-L65), [`gain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L92) | $\iota^*$, $\gamma_j$ |
| weak measuring portfolio, raw chart, corrected chart | [`Portfolio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L35-L49), [`chart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L76-L79), `tune_grades` | $X$, $\chi_k(d)$, $p_k(d)$ |

## 7. What remains unexplained
1. **Analytic inputs below the Fourier limits.** The symbol smoothness, higher-difference estimate, continuum annular decay, tail estimate and fixed-offset quadrature estimate support Lemmas VII.1.b–c. The remaining lower-level estimates for periodic annular sums, the low-momentum bound and the annular Riemann-sum comparison have not been checked line by line. Their uniformity in the period and spacing remains an input to the sketches. (probable)
2. **Imported interacting estimates.** The two-point limit follows from the simultaneous portfolio conditions and the rank-comparison error bound. The full analytic proofs supplying those conditions, including the station estimates and curvature-lifting estimates used in VII.1.7, are outside this verification. (probable)
3. **Other assigned packages.** The remaining RG local-expansion packages and the perturbative-extension packages are not described here; no proof outline for their internal estimates is supplied. Their placement relative to III.13, III.15 and VII.6 remains to be settled. (tentative)
4. **Scope of the comparison.** The Gaussian $\mu_N$ is defined independently of the RG Gaussian measures. Proposition VII.1.1 requires no identification with them. The interacting short-distance theorem and its combination with the tested order-zero limit are the linked results in VIII.1; no all-orders perturbative comparison follows from this unit.

5. **References and size estimates.** The literature citations and attributed source-line counts have not been independently verified. (tentative)

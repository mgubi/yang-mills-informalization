# VII.1. Short distances: convergence to free Maxwell fields

*Part VII — Identification as Yang–Mills.* 8,117 lines of Lean in 1,626 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is a **first draft**, written from the Lean by one model; it has not yet been checked. It is updated as it improves.


**Part:** VII, identification as Yang–Mills. **Lean:** the chain of [`YM/Pert`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert) (folders `Fourier`, `Align`, `Warp`, `Rig`, `Position`, `Lattice`, `Dense`), [`YM/Push/FINITE_DETECTION`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION), [`YM/SharpGram/Weak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak), [`YM/SharpGram/Dense`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense), [`YM/RG08`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08) (about thirty small sub-folders, `Dart` the largest), [`YM/PertExtension`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PertExtension), [`YM/OPE/Levy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Levy). **Size:** 8,117 lines (3,275 for the chain of `finite_leading`, 1,006 for `FINITE_DETECTION`, 616 for `SharpGram/Weak`, 538 for `RG08/Dart`, the rest in small packages).

Despite the title, this unit does not contain the statement that the *interacting* theory converges to free Maxwell fields at short distance. That statement is the structure `FirstExtension`, and it sits in VI.2, together with its producer `firstTarget`, which is assigned to VIII.1. What this unit proves is the **free side** of that comparison:

- the lattice (Wilson) regulator at order zero in the coupling converges to the free Maxwell correlation hierarchy;
- the free Maxwell hierarchy is rich enough to detect every label that is not killed by the Maxwell equations;
- it supplies the corrected measuring charts, and some rank bookkeeping, that the later comparison uses.

## 1. What this unit proves

Notation. $G$ is a compact simple gauge group, $\mathcal F$ is a system of field labels with frames (II.1), and $d$ is a degree. $\mathcal P_d$ is the space of polynomials in the curvature jets of degree $\le d$. $\mathcal M_d=\mathcal P_d/\mathcal I_d$ is the quotient by the *Maxwell equation ideal* (the polynomials that vanish on all on-shell Taylor towers). A *position test* on $r$ points is a continuous compactly supported $f:(\mathbb R^4)^r\to\mathbb C$ with support in the set $\mathrm{Conf}_r$ of pairwise distinct configurations. For an integer base $L>1$ and $m\in\mathbb N$ the *scale-$m$ lattice* has spacing $h_m=L^{-m}$ and period $4L^{m^2+m+1}$ sites, so the physical side is $\gg h_m^{-k}$ for every $k$. The profile $\Pi^{(0)}_{L,m}(f;p_1,\dots,p_r)$ is
$$h_m^{4r}\sum_{o}f(h_m o)\;\big\langle \textstyle\prod_i R_{h_m}(p_i,o_i)\big\rangle^{(0)} .$$
Here $o$ runs over the grid points, and the correlator is the coefficient of order $0$ in the coupling. It is a Gaussian (Wick) expectation for the quadratic form of the lattice action, averaged over the hypercubic reflections ("orbital"), of the lattice representative $R_{h}(p,o)$ of the label $p$ at site $o$ ([`Full.profile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L55-L56), [`Full.row`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L41-L42)). The identification "order zero = Gaussian expectation" is probable.

**Proposition VII.1.1 (regulator removal at order zero).** For $f_1,\dots,f_s$ position tests on $r_1,\dots,r_s$ points, as $m\to\infty$ and for every tuple of basis labels $p$,
$$\Pi^{(0)}_{L,m}(f_i;p)\;\longrightarrow\;\int f_i(x)\,\mathrm{Disc}\big(\text{free Maxwell hierarchy}\big)(p;x)\,dx ,$$
where the integrand is the Wick moment, at the points $x_1,\dots,x_r$, of the images of $p_1,\dots,p_r$ in $\mathcal M_d$. The condition on the profiles is exactly that each one is a continuous compactly supported test with support in $\mathrm{Conf}_r$ ("clean profiles").
*Status:* theorem. It has no hypothesis on the construction: it is a statement about free lattice Gaussian integrals and a continuum Green function.
*Lean:* [`Position.finite_leading`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L13-L16) (the board form; definitions [`finite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L98), [`white`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L103-L104), [`CleanProfiles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L13)); the single-test version is [`Rig.zerothProfile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L59-L69).

**Proposition VII.1.2 (pointwise convergence of the order-zero rows).** Let the period/spacing data be an itinerary: $h_i\to0$, and period$\cdot h_i^{k}\to\infty$ for every $k$. Let $o_i$ be grid points whose rescaled positions $h_i(o_i-\text{center})$ converge to $z\in\mathrm{Conf}_r$, and let the periods be divisible by 4. Then for any $p_1,\dots,p_r$ of degree $\le d$ the order-zero lattice row converges to $\mathrm{Wick}_z(\bar p_1,\dots,\bar p_r)$, with $\bar p_j$ the image of $p_j$ in $\mathcal M_d$.
*Status:* theorem.
*Lean:* [`Warp.row_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L65-L68), via [`poly_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L50-L63), [`mono_single`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L31-L40) and [`earth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Approach.lean#L19-L32).

**Proposition VII.1.3 (corrected two-leg covariance).** Let $a,b$ be jet keys (a Taylor coefficient of the curvature, in a coordinate of the Lie algebra). Let $\kappa_h(x,a;y,b)$ be the lattice orbital covariance of the corresponding finite-difference slopes at sites $x,y$, minus, when the two sites coincide, the explicit local self-contraction. Then at sites $x_i,x_l$ with rescaled limits $z_i\ne z_l$,
$$\kappa_h\to\partial_a\partial_b\,\Gamma\,(z_i-z_l),$$
where $\Gamma$ is the 4D Green kernel (the Taylor form of the leg kernel). When $x_i=x_l$ the corrected covariance tends to $0$.
*Status:* theorem.
*Lean:* [`Align.corrected_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L39-L44) from [`Align.orbit_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L80-L88) and [`orbit_contact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L89-L95); the exact lattice covariance of link forms is [`Orb.covar_link`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Source.lean#L55-L59).

**Proposition VII.1.4 (strict positivity of the free two-point norm; detection).** Let $v$ be a label of degree $d$ with $v\notin\mathcal I_d$. Let $x_1=\text{pole}$ and $x_2=0$ be the two detector points (a fixed pair of distinct points). Then
$$\mathrm{Re}\,\mathrm{Wick}_{(x_1,x_2)}\big(\bar v,\ \overline{\sigma\,\bar{v}^{\,\mathbb R}}\big)>0 ,$$
where $\sigma$ is the reflection acting on label tensors and $\bar v^{\mathbb R}$ the real conjugate. More generally, for every nonzero Wick polynomial $p$, $\mathrm{Re}\,\langle\text{forward}(p),\text{reversed}(\bar p)\rangle>0$.
*Status:* theorem (a statement about the free Maxwell Wick kernel only; no Wilson family is involved).
*Lean:* [`Free.two_detect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L151-L155), [`Free.positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L132-L149).

**Proposition VII.1.5 (Kelvin formula for the free Maxwell kernel).** Let $A$ be a symmetric tensor of rank $j$ on $\mathbb R^4$ whose diagonal polynomial $A(x,\dots,x)$ is harmonic. Then for $x\ne0$
$$A\cdot\partial^{j}\,\Gamma(x)=(-2)^j c_4\,|x|^{-2(j+1)}\,A(x,\dots,x)\quad(\text{up to the paper's normalization of }R(x)^{j+1}),$$
a constant times the Kelvin-inverted harmonic polynomial. Consequently, contracting a rank-$j$ jet of an on-shell colored field at one point with the kernel leaves, at the other point, a positive constant times the inversion $y\mapsto Y(-y/|y|^2)$ of that field. This holds with Lie-algebra colors.
*Status:* theorem.
*Lean:* [`Kelvin.harmonic_Green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Harmonic.lean#L157-L180), [`Kelvin.response_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L172-L176). The exponent in the statement above appears to match the Lean form $R(x)^{j+1}$, with $R=|x|^{-2}$ likely (tentative).

**Proposition VII.1.6 (corrected measuring charts).** Let $G$ be simple. Let $U$ be a construction record (a `Final` on a Wilson family, with table $S$), let $X$ be a family of weak measuring frames to level $D$ along a filter $u$ on $\mathbb N\times\mathbb N$ (a `Portfolio`), and let $T$ be OPE table work items (from VII.4). Then there are linear isomorphisms $p_k(d):\mathcal F_d\to S_d$, $d\le D$, such that eventually in $k$ the family $(p_k(d))_d$ is *graded exact*: it is compatible with the Maxwell filtration, with the signed-axis action, with real structure and with the unit, through level $D$. Moreover $\chi_k(d)^{-1}p_k(d)v\to v$ for every field $v$ of degree $d\le D$, where $\chi_k$ are the raw charts of $X$.
*Status:* theorem, conditional on the inputs named (in particular the two-point convergence `twoC`, of the weak system $X$ to the free pair probe at the detector points, which is part of $X$ and of $T$, not proved here).
*Lean:* [`Weak.Portfolio.tune_grades`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159).

**Proposition VII.1.7 (bookkeeping for interacting ranks and for finite layouts).** Two statements are in the unit; only their statements have been checked, and for the first, only part of the proof has been checked.
(a) For simple $G$, a relay with a slim window and a wait $U$ with that window, there is a thicker wait $W$ with the same window admitting a certified station port.
(b) Finite demands on layouts admit an exact tally with constants $w,C$, such that suitable bounds on the inputs give an "ample armor" bound of a given order.
*Status:* theorem (cost accounting; no analytic content visible from the statement) (tentative).
*Lean:* [`Dense.slim_wait_for`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Slender.lean#L127-L143), [`Dart.coin_pre`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Dart/Seams.lean#L34-L45). A third statement, [`Dense.nearby`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Cover.lean#L155-L165), says that there is an unbounded predecessor-marking map $g$ with $g(k)\le k$ and $S(k)\le S(g(k))+\log P(k)$ eventually. Its proof has not been checked.

## 2. What it uses

**From other units.**
- *The free Maxwell hierarchy* (the table of Wick moments of the labels modulo the equation ideal, the free table with its tags and its Wick kernel). This is the data on the limit side of VII.1.1 and VII.1.2. It is produced in the Maxwell package (`YM/Maxwell`), assigned to VI.2 (free stress and Ward charge). The Lean link is [`Maxwell.equationIdeal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72).
- *Field labels and their lattice representatives* (II.1): the frames, the degree filtration, the lattice slope maps $p\mapsto R_h(p,o)$ (via `YM/Pert/Lattice` and `Bare.slope`), and their compatibility with the label inclusions ([`profile_coherent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L62-L63)).
- *The lattice, the symmetries and the gauge group* (I.1): signed axes, toroidal lattice Laplacian, the link space with its image (reflection) involution. The Gaussian orbital measure and the gauge fixing are in `Pert/Lattice` (`Precision`, `GaugeFix`, `Measure`). Their relation to III.3 (free lattice kernels) and III.4 (Gaussian integration) is not read (see §7).
- *For VII.1.6 and VII.1.7:* the construction record `Final`, the weak scaling systems and the OPE table work items (VII.4, VII.5); the rank and interacting-determinant machinery of III.11; the analytic toolkit (III.16).
- *For the position equations in `Position/Crest`* (not output of this unit): `FirstExtension` (VI.2) and its exact mean theory.

**Standard mathematics.**
- Gaussian integration by parts / Stein's identity (Wick's theorem as a recursion over deleted pairs); Glimm–Jaffe, *Quantum Physics*, Ch. 1 and 6.
- The lattice Green function on the torus and its convergence, with all difference derivatives, to the continuum Green function $\frac1{4\pi^2|x|^2}$ away from the origin. The spacing is $h\to0$ and the volume grows faster than any power of $h^{-1}$. Fourier analysis on $\mathbb Z_N^4$; see e.g. Lawler–Limic, *Random Walk: A Modern Introduction*, Ch. 4.
- Riemann sums of continuous compactly supported functions with a dominated-convergence bound.
- Kelvin transform and the harmonic polynomials: Axler–Bourdon–Ramey, *Harmonic Function Theory*, Ch. 4.
- Finite-dimensional perturbation of injective linear maps (the lower bound $(a-\delta)\|x\|$ in [`Matrix.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Matrix.lean)).

**Imported constants and assumptions.** VII.1.1–VII.1.5 import none. VII.1.6 imports the construction record, the weak scaling system $X$ with its two-point convergence to the free pair probe, and the OPE work items. VII.1.7(a) imports the relay and the wait structures from the rank budget.

## 3. Strategy

The order-zero regulator is the Gaussian lattice theory with the Hessian of the Wilson action in a (gauge-fixed, orbit-averaged) quadratic form. The lattice representatives of a field label are *polynomials* in finite differences of the potential. The order-zero lattice correlator of such polynomials at separated sites is therefore a Wick sum over pairings of leg covariances. After the self-contraction at a site has been subtracted (this subtraction is what the "corrected" covariance does), each leg covariance converges to the corresponding derivative of the continuum Green function. What the code does is organize this as a recursion on the number of legs, following Stein's deletion identity, so that the full Wick sum never has to be written down. The recursion for the lattice quantity and the recursion for the continuum Wick moment have the same shape, and their coefficients converge. The convergence of the tested lattice sum to the integral then follows by Riemann sums with a uniform bound.

The second half of the unit is an algebraic and analytic study of the *free Maxwell side*, needed to read off labels from correlators. The free two-point function of a label $v$ with its reflected conjugate is strictly positive when $v\notin\mathcal I_d$ (by a triangular change of variables that diagonalizes the one-leg kernel, rather than by Fourier analysis), and the Kelvin formula shows that jets of on-shell fields at one point are injectively transported to the other. This gives a finite, explicit family of detectors on the free side. These feed the matrix comparisons that identify measured quantities with labels in the construction.

The proof does not follow Balaban-type renormalization in this unit. It is closest to a lattice perturbation theory argument at order zero (Reisz, *Commun. Math. Phys.* 116 (1988) 81 and 573, for the convergence of lattice Feynman integrals), done for observables that are polynomials in curvature jets rather than for the action's vertices. What is non-standard is the insistence on all labels of bounded degree simultaneously and on the exact identification of the limit with the quotient by the equation ideal.

## 4. Steps

### 4.1 The free lattice covariance

**Lemma VII.1.a (covariance of link forms).** For links $a=(x,i)$, $b=(y,j)$, colors $u,t$, let $\theta_a(A)=\langle A(a),u\rangle$ and $\theta_b(A)=\langle A(b),t\rangle$ be link forms on the space of link configurations modulo the reflection involution. Then
$$\mathrm{Cov}(\theta_a,\theta_b)=\langle u,t\rangle\,\mathbb 1_{i=j}\,\big[\,g(y-x)-g(y+x+e_i)\,\big],$$
where $g$ is the real part of the periodic lattice Green function (the "toroid" kernel).
*Proof sketch.* One writes down the inverse of the quadratic form on the reflection-symmetric configurations ([`inverse_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Source.lean#L40-L54)): the response to a unit forcing at $a$ is the difference of the Green function at $a$ and at its image. The check is $\Delta g=-\delta_0+L^{-4}$ on the torus, so the constant mode produces the additive term $N^{-4}u$ that cancels between the two images. The covariance is then a computation.
*Lean:* [`Orb.covar_link`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Source.lean#L55-L59).

**Lemma VII.1.b (averaged orbital pairing of Taylor slots converges).** Take an itinerary and sites $x_i,y_i$ with $h_i(x_i-y_i)\to z\ne0$, together with dual Taylor test slots $P,Q$ (a finite-dimensional space of linear functionals on jets). The orbital pairing
$$\mathrm{orb}_h(x,y;P,Q)=\mathrm{jointB}\big(P\circ\mathrm{slope}_h(x),\,Q\circ\mathrm{slope}_h(y)\big)$$
(the covariance of the finite-difference slope functionals, averaged over the hypercubic signed axes) converges to the continuum Taylor pairing $\mathrm{tayForm}_z(P,Q)$.
*Proof sketch.* Average over the signed axes, convert to the linear covariance of the "chart" slopes (`orbit_eq`, `duo`), and apply the convergence of the lattice Green function and its finite differences ([`chart_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean) and the `Fourier` folder). The Fourier-analysis proof accounts for most of the lines in the Fourier folder (about 95 lines in that folder itself; the rest is in the Align folder). Its proof has not been checked in detail.
*Lean:* [`Align.orbit_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L80-L88). *(statement only for the Fourier part; the reduction read)*

**Lemma VII.1.c (coincident sites).** For $x_i=y_i$ with $h_i(\cdot)$ bounded, $\mathrm{orb}_h(x,x;P,Q)-\mathrm{shellForm}_h(P,Q)\to0$, where the shell form is the explicit average over the sphere of lattice neighbors. Equivalently, the corrected covariance (the orbital covariance minus the local self-link $\mathrm{link}_h(a,b)$) tends to $0$ at coincident sites.
*Lean:* [`Align.orbit_contact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L89-L95). *(statement read, argument read to the reduction)*

**Lemma VII.1.d (corrected covariance, VII.1.3).** Combine VII.1.b for $z_i\ne z_l$ and VII.1.c for $i=l$ ([`key_orb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L31) identifies the key covariance with the orbital pairing).
*Lean:* [`corrected_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L39-L44).

### 4.2 From covariances to rows (Wick recursion)

**Lemma VII.1.e (deletion identity).** Let $s$ be a finite set of *bare linear legs*, each given by a lattice site and a jet key. Let $E_h(s)$ be the order-zero Gaussian expectation of the product of the legs in $s$, taking the legs at each site as separate factors. Then
$$|s|\,E_h(s)=\sum_{a\in s}\sum_{b\in s\setminus\{a\}}\kappa_h(a,b)\,E_h(s\setminus\{a,b\}).$$
*Proof sketch.* This is the symmetric Stein identity for a centered Gaussian on a finite-dimensional space ([`Exchange.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Exchange.lean), without any nondegeneracy hypothesis). The "corrected" covariance enters because the lattice representatives are normal-ordered at each site.
*Lean:* [`Warp.eq_cancel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Approach.lean#L12-L18). *(proof read as far as the reduction to the exchange lemma)*

**Lemma VII.1.f (convergence of leg products).** At separated limit positions $z\in\mathrm{Conf}_r$, $E_h(s)$ converges to $\mathrm{cut}_z(s)$, the continuum Wick moment built from the indirect covariance $\partial_a\partial_b\Gamma(z_{\mathrm{tag}(a)}-z_{\mathrm{tag}(b)})$ (zero for two legs at the same point).
*Proof sketch.* Strong induction on $|s|$. The set $s$ is empty: both sides equal $1$ (the Gaussian measure is a probability measure). For nonempty $s$, divide the lattice identity of VII.1.e by $|s|$, use VII.1.d for the factors $\kappa_h(a,b)$ and the induction hypothesis for $E_h(s\setminus\{a,b\})$; the continuum quantity satisfies the same identity (`cut_cancel`).
*Lean:* [`Warp.earth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Approach.lean#L19-L32).

**Lemma VII.1.g (monomials, polynomials, fields).** A monomial of degree $\le d$ in the jet variables is a product of bare linear legs (`reach`: it equals the "root" of a family of legs with tags in $\{1,\dots,r\}$), so VII.1.f applies; the extension to linear combinations is by multilinearity, and to field labels by composing with `sections` followed by reduction modulo the equation ideal (`reduceEq`).
*Lean:* [`mono_single`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L31-L40), [`mono_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L41-L47), [`poly_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L50-L63), [`row_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L65-L68) (VII.1.2).

The reduction modulo the equation ideal is where on-shell behaviour appears: the lattice Gaussian does not satisfy the Maxwell equations exactly, but the *limit* of the Wick moment depends only on the class modulo $\mathcal I_d$, because the continuum covariance is a solution of them in each leg. (This is the content of the "matching of the two deletion rules" in [`Warp/Shards.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Shards.lean), read only as a docstring: "actual orbital Gaussian with imaginary counterterm and on-shell Maxwell generalized free".) (probable)

### 4.3 Tested sums

**Lemma VII.1.h (Riemann-sum convergence).** Let $K_m(o)$ be a sequence of lattice kernels (here the order-zero rows), $f$ a continuous function with compact support, and $\omega$ an open set containing $\mathrm{supp} f$. Suppose that along every subsequence and every choice of grid points whose rescaled positions converge to some $z\in\omega$ one has $K_m(o_m)\to G(z)$. Then the tested sums $h_m^{4r}\sum_o f(h_m o)K_m(o)$ converge to $\int f(x)G(x)\,dx$.
*Proof sketch.* Write the sum as an integral of a step function and apply dominated convergence. The domination uses that the kernels are bounded on the compact set $\mathrm{supp} f$ (`bounded_fee`: otherwise there would be a subsequence of points along which the kernel is unbounded, contradicting the pointwise limit). The side of the box grows fast enough to contain the support (`Motion.available`).
*Lean:* [`Rig.grid_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Tested.lean#L23-L52), with the schedule [`Rig.routine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L14-L21) ($h_m=L^{-m}$, period $4L^{m^2+m+1}$).

**Lemma VII.1.i (zeroth profile; VII.1.1).** Apply VII.1.h with $K_m=$ the order-zero row and $G=$ the free Wick moment, using VII.1.2 for the hypothesis; then identify the continuum side with `Ward.disc` of the free table (`Extra.FD.writes`).
*Lean:* [`Rig.zerothProfile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L59-L69), then [`Position.finite_leading`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L13-L16), which applies it componentwise to the board $Q$.

### 4.4 Use of the order-zero comparison in `Position` (not output of this unit)

For orientation only. The same folder contains: the structure [`BoardAttains`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L26-L34), the lemma [`calibrate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L36-L43), the structure [`Crest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L45-L48), the lemma [`credible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L50-L52) and the theorem [`crestTarget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L55-L62). In the page's attribution, `Crest` belongs to VII.3 and `crestTarget` to VIII.1.

- `credible` shows that, given `FirstExtension`, the measured scaled means of the constructed theory minus the order-zero lattice reading tend to $0$. It combines [`measured_tends`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L16-L19) (measured $\to$ free white-noise reading, from VI.2) with `finite_leading`.
- `calibrate` uses [`actual_square`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L44-L56) to solve the finite position equations when the leading Jacobian is invertible (the `square` hypothesis).

VII.1.1 is the input that makes "the lattice reading at order zero equals the continuum reading" available to both.

### 4.5 Detection on the free side

**Lemma VII.1.j (Wick moment after linear substitution).** If the field at the $i$-th point is replaced by a product of linear combinations $\ell_{i,1}\cdots\ell_{i,n_i}$ of order-1 variables, the Wick moment is the sum over matchings (pairings of occurrences at different points) of the products of the pairwise Wick tensor entries.
*Lean:* [`linear_substitution`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Polarize.lean#L108-L119).

**Lemma VII.1.k (diagonalization of the reflected one-leg kernel).** There are linear probe variables $\mathrm{eig}_s$ and $\mathrm{refl}_s$ ($s$ a slot, i.e. a jet index) such that the bilinear pairing between eigen variables and reflected variables for the reflected pair at the detectors is diagonal, $Q(\mathrm{eig}_s,\mathrm{refl}_t)=\delta_{st}\,\mathrm{length}^2(s)$, with $\mathrm{length}^2>0$.
*Proof sketch.* A real position-space triangular change of basis between Taylor jets and the leg kernel (Kelvin formula VII.1.5 gives the triangularity: the leading term of the response of a rank-$j$ jet is the inverted rank-$j$ jet).
*Lean:* [`pairing_var`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Variables.lean#L114-L118).

**Lemma VII.1.l (orthogonality and positivity of the monomial pairing; VII.1.4).** In the monomial basis $m_p$ of Wick polynomials, $\mathrm{pair}(\mathrm{forward}\,m_p,\mathrm{reversed}\,m_q)=\delta_{pq}\sum_{P\in\mathrm{Matchings}(p,p)}\mathrm{amp}(P)$ with $\mathrm{amp}(P)\ge0$, and the sum is $>0$ because the matching pairing each occurrence with its mirror image contributes a product of $\mathrm{length}^2>0$. Hence for $p=\sum c_i m_i\ne0$ the real part $\sum_i|c_i|^2\sum_P\mathrm{amp}(P)>0$. Finally $\bar v\ne0$ in $\mathcal M_d$ means $v\notin\mathcal I_d$.
*Lean:* [`pair_test`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L57-L79), [`wick_orth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L109-L115), [`positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L132-L149), [`two_detect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L151-L155).

**Lemma VII.1.m (Kelvin response; VII.1.5).** The statement is proved by induction on the rank $j$, differentiating the identity of the preceding rank in each direction; the harmonic sum $\sum_i\partial_i(A_i)$ (with $A_i$ the contraction of $A$ with $e_i$) vanishes by harmonicity, and Euler's identity $\sum_i x_iA_i(x)=A(x)$ closes the step.
*Lean:* [`harmonic_Green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Harmonic.lean#L157-L180), [`response_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L172-L176).

**Lemma VII.1.n (perturbation of an injective matrix).** If $H:V\to Z$ is injective on a finite-dimensional space with $a\|x\|\le\|Hx\|$, and $\|H-AX\|+\|(A-AP)X\|\le\delta$, then $(a-\delta)\|x\|\le\|APXx\|$.
*Lean:* [`test_projected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Matrix.lean#L38-L45). *(proof read; elementary)*

### 4.6 Charts and bookkeeping

**Lemma VII.1.o (corrected measuring charts; VII.1.6).**
*Mechanism.* Convergence of the two-point function: by `twoBelow` (from the two-point convergence `twoC` of the weak system, using the OPE work items) the pairing of a draw at degree $d$ with a draw at degree $e$ against the detector converges to the free pair probe $\mathrm{firstProbe}(\text{free})$. Since the free probe map is injective on each degree (VII.1.4, VII.1.5) and finitely many probes suffice (`Work.A04.tendsto_of_fitted`), the raw charts $\chi_k$ are *near* the free filtration structure (`stepFits`: $\chi_k$ intertwines the rise maps of the stage $V$ and of the free scheme $B$ in the limit). A fixed retraction $P$ of the free hierarchy onto its graded pieces then rotates the charts into exactly graded ones (`Extra.WeakScaling.rotateChart`, `retraction`). Real structure, hypercubic symmetry and the unit hold for $k$ large ([`symmetrical`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L124-L136), `drawUnit`).
*Lean:* [`tune_grades`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159), with `twoBelow`, `extraStep`, [`stepFits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L98-L121).

**Lemma VII.1.p (slim waits).** Given the relay $R$ and the rank data (Haar budget, chart ratio), the proof builds a certified station port by induction over the finite index set of the panels (`toursSlim`), enlarging the ready time of the wait at each step to absorb the eventual statements about each panel; the window is unchanged.
*Lean:* [`slim_wait_for`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Slender.lean#L127-L143), [`toursSlim`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Slender.lean#L86-L99). *(proof skimmed; statement and structure read, the estimates not)*

## 5. Where the difficulty lies

*Hard in the Lean, routine mathematically.* VII.1.1 is the lattice-perturbation-theory statement that Feynman integrals of the Gaussian lattice theory converge to their continuum limit when the points are separated. The mathematics is standard. The proof of the convergence of the lattice Green function with all difference derivatives, in the specific "orbital" gauge-fixed form, accounts for the bulk of the 3,275 lines. The Wick recursion (VII.1.e–VII.1.g) is short and clean. The generality is unusual: *all* labels of bounded degree, tested simultaneously, with a limit that is a Wick moment modulo the Maxwell equation ideal.

*New in the formalization.* The reduction mod the equation ideal is carried through the whole chain, so that "free Maxwell" is a statement about a quotient of the jet algebra, not about the potential. The positivity argument for two_detect avoids Fourier analysis (it uses a triangular basis in position space) and works for every nonzero class in $\mathcal M_d$, including products with arbitrarily many legs.

*Unusual or worth checking.*
1. The theorem has no coupling in it: "order zero" is a coefficient of a formal power series, so VII.1.1 says nothing about the interacting lattice theory. The passage to the interacting theory is `FirstExtension` in VI.2, which is *assumed*, as a structure, by `credible`, and produced by `firstTarget` (VIII.1) from the RG part. This is the correct logical split, but the title of the unit suggests more than it proves.
2. The schedule is special: $h_m=L^{-m}$ and period $4L^{m^2+m+1}$, with the test point at the quarter-period center. Convergence along this explicit schedule is what is proved; `Warp.row_limit` itself holds for any itinerary with the stated growth.
3. VII.1.6 and VII.1.7 are not about free fields at all; they are included here because their inputs are the free detectors of VII.1.4–VII.1.5. In particular the `RG08` packages (about 2,600 lines in this unit's count) appear to be estimate infrastructure for a different part of the argument; what they feed cannot be determined from the statements.

## 6. Notation

| object | code name | proposed notation |
|---|---|---|
| lattice at scale $m$ (spacing $L^{-m}$, period $4L^{m^2+m+1}$) | [`Full.topSpacing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L46), `Full.period` | $h_m$, $N_m$ |
| itinerary (period, grid, gap sequences) | [`Align.Itinerary`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Burst.lean#L50-L59) | $(N_i,h_i)$ with $h_i\to0$, $N_ih_i^k\to\infty$ |
| order-zero lattice row of labels $p$ at grid points $o$ | [`Full.row`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L41-L42) (coefficient of order 0) | $\langle R_h(p_1,o_1)\cdots R_h(p_r,o_r)\rangle^{(0)}$ |
| tested lattice profile | [`Full.profile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L55-L56), [`finite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L98) | $\Pi^{(0)}_{L,m}(f;p)$ |
| continuum "white" reading | [`Position.white`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L103-L104) | $\int f\,W_{\mathrm{Maxwell}}$ |
| position board (slots, arities, columns, profiles, linear read-outs) | [`Position.Conditions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L54-L59) | $Q$ |
| clean profiles | [`CleanProfiles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L13) | supports in $\mathrm{Conf}_r$ |
| orbital pairing, corrected covariance, indirect covariance | `Align.orbital`, `Align.corrected`, `Align.indirect` | $\mathrm{orb}_h$, $\kappa_h$, $\partial_a\partial_b\Gamma$ |
| equation ideal (kernel of reduction to on-shell jets) | [`Maxwell.equationIdeal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72) | $\mathcal I_d$ |
| Wick moment (free Maxwell) | `Wick.moment` | $\mathrm{Wick}_x(\cdot)$ |
| Kelvin "shell" (on-shell colored field jets of rank $j$) | `Kelvin.Shell`, `Kelvin.actual` | $\mathrm{Sh}_j$ |
| detector points | [`Free.detectors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L26) | $(x_1,x_2)=(\mathrm{pole},0)$ |
| weak measuring frame, raw chart, tuned chart | `Portfolio`, `Portfolio.chart`, `tune_grades` | $X$, $\chi_k(d)$, $p_k(d)$ |

## 7. What remains unexplained
1. **What "order zero" is.** The definitions (`profile`, `row`, `amplitude`, `vacuumMap`) show only that a `PowerSeries ℂ` appears and that the coefficient of order $0$ is taken. The series variable is believed to be the coupling, with the Gaussian orbital measure as the zeroth term. This should be checked in the Lattice folder (`Series`, `Measure`, `Precision`, `Action`), and the Gaussian measure should be related to III.3/III.4. (probable)
2. **Fourier analysis.** The Fourier folder (about 20 files) and the Align sub-folders Atom, Bilateral, Flux, GroundLines, Recoil and Span have not been checked. The statements of `orbit_limit` and `orbit_contact` rely on convergence of the lattice Green function and its differences in $\ell^\infty$ with the volume growing superpolynomially; the exact estimate is not stated here. (tentative)
3. **The mod-equation-ideal step.** The role of [`Warp/Shards.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Shards.lean) (the docstring says "matching the two deletion rules: actual orbital Gaussian with imaginary counterterm and on-shell Maxwell generalized free") should be read, since it is where $\mathcal I_d$ enters the limit. "Imaginary counterterm" suggests the covariance used in the recursion is not the bare lattice one. (tentative)
4. **Attribution of `FirstExtension`.** The declaration is in VI.2 on the page, and `firstTarget` and `fromBaseline` in VIII.1. Whether the writer wants a statement of the comparison "lattice at order zero vs. interacting theory" in this unit or in VI.2 is a presentational choice. The Lean text of `credible` shows how the two fit.
5. **Position folder: `Board`, `Frame`, `Implicit`, `Parity`, `Four`.** These have not been checked. By the unit table they belong to VII.1 (`Board`, `Detect`, `Actual` are in this unit's count) or to VII.3 (`Crest`, `Four`). Where the finite-position equations and the "parity" statements are described remains to be decided.
6. **`FINITE_DETECTION`.** `TwoPoint`, `Harmonic` and `Matrix` (in part) have been checked; `Top`/`Low` have been checked through their docstrings, as have the docstrings of the other files. `Response`, `Variables`, `Polarize`, `Centered`, `Equivariance`, `NoLinear`, `Crew`, `Roots`, `Pairs`, `Test` are known only by their docstrings. Where the detectors are consumed (`Next.Extract.Detector`, `matches_of_readout`, the "finite rank count" input) has not been traced.
7. **The Dense sub-folder of SharpGram and `RG08`.** `nearby`, `coin_pre`, `slim_wait_for` have the form of resource bookkeeping (waits, windows, station ports, absolute-sum bounds on layouts). Which result of another unit each one feeds cannot be identified from the statements; the "Used by" list (III.2, III.13, VII.2, VIII.1) suggests the interacting-rank budget of III.11/III.15. The `RG08` sub-folders (Ballast, Vale, Quire, Scores, Loom, Curl, …; about 2,600 lines) are not described here beyond `Seams` in the Dart folder. (tentative)
8. **Hypotheses of `tune_grades`.** The weak system `Portfolio` and the table work items contain the hypothesis that makes the two-point function converge to the free pair probe (`X.twoC`). Where that hypothesis is proved has not yet been traced (probably in VII.4 and VI.2). The statement of VII.1.6 should be checked against this.
9. **Exponent in the Kelvin formula.** The relation between `R x ^ (j+1)` in [`harmonic_Green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Harmonic.lean#L157-L180) and powers of $|x|^{-1}$ depends on the definition of `R` (not read); I took $R=|x|^{-2}$.

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

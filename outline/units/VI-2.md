# VI.2. The free Maxwell stress tensor and the local Ward charge

*Part VI — Symmetry: stress tensor and Ward identities.*

Builds the free Maxwell stress tensor and uses comparison data to normalize the interacting Ward identities.

**Status: edited.** Checked against the linked Lean and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [← Previous: VI.1](VI-1.md) · [Next: VII.1 →](VII-1.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** VI, symmetry: stress tensor and Ward identities. **Lean:** [`YM/Next/MAXWELL`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL), [`YM/UVNext/FREE_STRESS_CERTIFICATE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE), [`YM/Next/UV_STRESS`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS), [`YM/Pert`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert). **Size:** 14,179 lines in the source allocation (Maxwell 8.2k, free-stress classification 3.1k, UV stress 2.6k, Pert 0.2k).

</details>

<a id="unit-results"></a>

## 1. What this unit proves

The free Maxwell theory supplies the comparison model for the stress tensor of the Wilson limit. Its local Ward identities fix the sign and normalization of the free stress. For a simple gauge group, a finite-dimensional calculation identifies its centred conserved tensors of degree at most four as a line. Short-distance comparison transfers this line to the interacting limit; the translation Ward identity then fixes the normalization of the interacting stress.

Throughout, $G$ is a gauge group as in I.1, $\mathfrak g$ is its Lie algebra, and $c=1,\dots,\dim\mathfrak g$ indexes an orthonormal colour basis for the invariant inner product. Spacetime indices range over $0,1,2,3$. Inner products of $\mathfrak g$-valued forms include the colour sum.

A *Maxwell wave* on an open set $U\subset\mathbb R^4$ is a smooth $\mathfrak g$-valued antisymmetric field $f_{ab}$ satisfying
$$\partial_af_{bc}+\partial_bf_{ca}+\partial_cf_{ab}=0,\qquad (\mathrm{Div}\,f)_b:=\sum_a\partial_af_{ab}=0.$$
Here $\mathrm{Div}=-d^*$ with the usual Euclidean codifferential convention. The space $\mathrm{Sh}_j$ consists of the homogeneous Taylor coefficients of order $j$ satisfying these linear equations, not the cumulative jets through order $j$. The algebra $\mathcal W$ consists of complex polynomials in coordinates on these spaces; a coordinate from $\mathrm{Sh}_j$ has weight $j+2$. Its *shell sector* $\mathcal P_d$ is the image of labels of degree at most $d$ under substitution of on-shell Taylor coefficients. Equivalently, it consists of the $\mathrm{Ad}(G)$-invariant polynomials of weight at most $d$ ([`sector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Algebra.lean#L108-L116)). A *probe* of order $j$ is a real linear functional on $\mathrm{Sh}_j$; $p(f)(x)$ denotes its value on the order-$j$ Taylor coefficient of $f$ at $x$.

The curvature propagator is
$$\langle F^c_{im}(x)F^{c'}_{ab}(y)\rangle_0=\delta^{cc'}\mathcal C_{im,ab}(x-y),\qquad G_0(x)=\frac1{4\pi^2|x|^2},\qquad-\Delta G_0=\delta,$$
where $\mathcal C$ is the curl–curl of $G_0$. The generated field $f^{p,x}(y)=\langle p(F)(x)F(y)\rangle_0$ is a Maxwell wave off $x$. Correlations of Wick polynomials at distinct sites sum over complete pairings of legs between different sites; there are no contractions within a site.

Write
$$T^{\rm free}_{ab}=\sum_{c,i}F^c_{ai}F^c_{bi}-\frac14\delta_{ab}\sum_{c,i,k}F^c_{ik}F^c_{ik}\in\mathcal P_4.$$
Its polarization and the current associated with a vector field $v$ are
$$\Theta_{ab}(f,g)=\sum_i\bigl(\langle f_{ai},g_{bi}\rangle+\langle f_{bi},g_{ai}\rangle\bigr)-\frac12\delta_{ab}\sum_{i,k}\langle f_{ik},g_{ik}\rangle,\qquad j^v_a(f,g)=\sum_bv_b\Theta_{ab}(f,g).$$
Thus $\Theta(f,f)=2T^{\rm free}(f)$. Both tensors are symmetric and traceless. For a real cutoff $\chi\in C_c^\infty(\mathbb R^4)$, the outward flux is $\Phi_\chi(j)=-\sum_a\int\partial_a\chi\,j_a$.

The free table on a register $L$ is $\mathcal M=\mathrm{Bel}(L)$, with filtered field spaces $\mathcal F^{\rm free}_d$. The Wilson limit table $S$ has spaces $\mathcal F^S_d$. For a lighthouse $\mathcal T$, write $T_0$ for its free stress and $\kappa$ for its Ward constant. Let $\mathrm{Conf}_n$ denote the distinct-point configurations. For $R>0$, set
$$K_{R,n}=\{y\in(\mathbb R^4)^n:\ |y_i-y_j|_\infty\ge R^{-1}\ (i\ne j),\ \|y\|\le R\},$$
where $\|y\|$ is the Euclidean norm of the full configuration.

**Proposition VI.2.1 (the free Maxwell table).** For every register $L$, the free table $\mathcal M=\mathrm{Bel}(L)$ has the following properties.

(a) For every $d\ge0$, substitution of on-shell Taylor coefficients induces a complex linear isomorphism $\iota_d:\mathcal F^{\rm free}_d\to\mathcal P_d$. A label is null exactly when its polynomial vanishes on every on-shell Taylor tower. At distinct points, field correlations equal the Wick moments of their images under $\iota$.

(b) The table satisfies the Euclidean hierarchy of IV.1: permutation symmetry, the unit laws, covariance under signed coordinate permutations, reality, translation invariance, point and smeared reflection positivity, and smoothness on $\mathrm{Conf}_n$. The correlations are in fact real-analytic there. For each fixed tuple of fields and derivative order, there are constants $A\ge0$ and $C\ge0$ bounding that derivative by $Cr^{-A}$ on configurations with mutual sup-distances at least $r$, for $0<r\le1$.

(c) Differentiation of Taylor coefficients induces maps $\partial^{\rm free}_a:\mathcal F^{\rm free}_d\to\mathcal F^{\rm free}_{d+1}$ satisfying the inclusion, derivative and orientation laws. In particular,
$$\langle(\partial^{\rm free}_a B)(x_0)\cdots\rangle^{\rm free}=\partial_{x_0^a}\langle B(x_0)\cdots\rangle^{\rm free}.$$
The action of $O(4)$ on coefficients induces actions $R_g$ on all field spaces and generators $\rho(\omega)$ for $\omega\in\mathfrak{so}(4)$. These satisfy the rotation laws of VI.1: continuity, the group law, extension of signed permutations, reality, preservation of the unit and inclusions, vector covariance of derivatives, and the infinitesimal-generator identity. All free correlations are rotation invariant.

(d) The fields $\iota_4^{-1}(T^{\rm free}_{ab})$, also denoted $T^{\rm free}_{ab}$, are symmetric, real, traceless and centred, and satisfy $\sum_a\partial^{\rm free}_aT^{\rm free}_{ab}=0$ in $\mathcal F^{\rm free}_5$.

*Status:* theorem for every gauge group in the setting of I.1; simplicity is not required.
*Lean:* [`Maxwell.Free.hierarchy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L106-L114), [`fields`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L33-L35), [`no_residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Caps.lean#L90-L113), [`scheme`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L80-L83), [`gear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L153-L170), [`gear_laws`, `gear_motion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Beacon.lean#L54-L61), [`original`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L172), [`realStress`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L176-L179).

**Proposition VI.2.2 (local Ward charge).** Let $U\subset\mathbb R^4$ be open, $x\in U$, and $f$ a Maxwell wave on $U$. Let $v$ be a smooth conformal Killing field on $\mathbb R^4$:
$$\partial_av_b=-\partial_bv_a\quad(a\ne b),\qquad \partial_0v_0=\partial_1v_1=\partial_2v_2=\partial_3v_3.$$
Let $\chi\in C_c^\infty(U;\mathbb R)$ equal one near $x$. Since $df=0$, its Lie derivative is
$$(\mathcal L_vf)_{il}=\sum_b\bigl[\partial_i(v_bf_{bl})-\partial_l(v_bf_{bi})\bigr]=(d\iota_vf)_{il}.$$

(a) For every zero-order component probe $F^c_{il}$,
$$\Phi_\chi\bigl(j^v(f^{F^c_{il},x},f)\bigr)=-(\mathcal L_vf)^c_{il}(x).$$

(b) If $\mathcal L_vf$ is also a Maxwell wave on $U$, then, for every order $j\ge0$ and every probe $p$ of that order,
$$\Phi_\chi\bigl(j^v(f^{p,x},f)\bigr)=-p(\mathcal L_vf)(x).$$
For translations $v=e_a$, this is $-\partial_a[p(f)](x)$. For rotations $v(y)=\omega(y-x)$, it is $-(\omega\cdot p)(f)(x)$, where $\omega\cdot p$ is the infinitesimal label action. For dilation $v(y)=y-x$, it is $-(j+2)p(f)(x)$.

(c) For any two Maxwell waves $f,g$ on a neighbourhood of $\mathrm{supp}\,\chi$, the flux $\Phi_\chi(j^v(f,g))$ vanishes. It also vanishes for two fields $f^{p,x},f^{q,x}$ generated at the same point, provided $v$ is homogeneous about $x$ of degree $e\in\{0,1\}$.

*Status:* theorem, with the propagator, polarization and outward-flux conventions above.
*Lean:* [`Maxwell.Free.local_force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Contact.lean#L137-L156), [`jet_force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Force.lean#L131-L186), [`drift_flux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Affine.lean#L249-L255), [`angular_flux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Angular.lean#L181-L195), [`radial_flux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Affine.lean#L220-L247), [`sourcefree_flux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L239-L250), [`two_flux_zero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Repeat.lean#L63-L128); definitions [`Killing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L140-L143), [`variation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Regulator.lean#L49), [`pulse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Kernel.lean#L101-L102), [`singleFlux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L187).

**Proposition VI.2.3 (Ward identities of the free table).** Let $n\ge0$, $x\in\mathrm{Conf}_{n+1}$, and $p_0,\dots,p_n\in\mathcal W$. Let $\chi\in C_c^\infty(\mathbb R^4;\mathbb R)$ equal one near $x_0$, with $x_1,\dots,x_n\notin\mathrm{supp}\,\chi$. Take one of the pairs
$$(v,D)=(e_a,\partial_a),\qquad (\omega(y-x_0),\rho(\omega)),\qquad (y-x_0,\varepsilon),$$
where $a$ is an axis, $\omega\in\mathfrak{so}(4)$, and $\varepsilon$ multiplies each monomial by its weight. The operators act on $\mathcal W$ by derivations. Then
$$-\sum_{a,b}\int\partial_a\chi(y)\,v_b(y)\,\langle T^{\rm free}_{ab}(y)p_0(x_0)\cdots p_n(x_n)\rangle_0\,dy=-\langle(Dp_0)(x_0)p_1(x_1)\cdots p_n(x_n)\rangle_0.$$
Consequently, for every $\tau\in\mathbb R$, the stress $\tau T^{\rm free}$ satisfies the translation and rotation Ward identities with rows $-\tau\partial^{\rm free}$ and $-\tau\rho$. The stress normalized to give $+\partial^{\rm free}$ in the translation identity is $-T^{\rm free}$.

*Status:* theorem.
*Lean:* [`Maxwell.Free.moment_force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Taxes.lean#L177-L200), [`straight_motion`, `rotational_motion`, `radial_motion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Taxes.lean#L34-L60), [`beacon_signal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Beacon.lean#L74-L136), [`Table.StressLaws`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L90-L97).

**Proposition VI.2.4 (the free stress line).** Suppose $G$ is simple. Let $W$ be a derivative plan on the free table satisfying the derivative and orientation laws. The derivative law determines its derivative maps uniquely as $\partial^{\rm free}$. Define the following real vector spaces:

- $\mathcal Z$ consists of symmetric real tensors $J\in(\mathcal F^{\rm free}_4)^{4\times4}$ that are covariant under signed coordinate permutations and centred: $\langle J_{ab}\rangle=0$.
- $\mathcal V$ consists of real vectors in $(\mathcal F^{\rm free}_5)^4$ covariant under signed coordinate permutations.

The divergence $\mathrm{div}:\mathcal Z\to\mathcal V$, $(\mathrm{div}J)_b=\sum_a W_aJ_{ab}$, is surjective, and
$$\dim_{\mathbb R}\mathcal Z=3,\qquad \dim_{\mathbb R}\mathcal V=2,\qquad \ker\mathrm{div}=\mathbb R T^{\rm free}.$$
Thus a lighthouse with such a derivative plan and stress $\tau T^{\rm free}$, $\tau\ne0$, satisfies (FD): its divergence is onto, its kernel has real dimension one, and its stress is a nonzero centred conserved tensor.

*Status:* theorem.
*Lean:* [`FreeStress.rank_on`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L43-L47), [`line_dim`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L73-L79), [`lighting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L86-L94), [`certificate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L125-L132), [`FreeDiv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Dimension.lean#L153-L158), [`KernelSpace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Tensor.lean#L75-L80), [`Vectors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Tensor.lean#L87-L97), [`currentDiv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Tensor.lean#L117-L119).

**Proposition VI.2.5 (Maxwell data).** Suppose $G$ is simple, let $C$ be a Wilson family for $G$, and let $\tau\in\mathbb R\setminus\{0\}$.

(a) The lighthouse $\mathcal T_\tau=(\partial^{\rm free},R,\tau T^{\rm free},\kappa=-\tau)$ satisfies all lighthouse laws of VI.1. These include the derivative, rotation and Ward laws of VI.2.1–3, a nonzero derivative in degree four, and the following selection property. There is $N$ such that for every $d\ge N$, finitely many derivatives of Ward sums at collinear configurations detect the line $\mathbb R\partial^{\rm free}$ among complex linear maps $t_a:\mathcal F^{\rm free}_d\to\mathcal F^{\rm free}_{d+1}$ satisfying:

- they kill the unit, are real, and transform as a vector under signed permutations;
- for every $e\le d$, $t_a$ maps the image of $\mathcal F^{\rm free}_e$ into the image of $\mathcal F^{\rm free}_{e+1}$.

For component $t_b$, a diagram is an iterated directional derivative of
$$x\longmapsto\sum_i\langle w_1(x_1)\cdots(t_bw_i)(x_i)\cdots w_n(x_n)\rangle^{\rm free},\qquad w_i\in\mathcal F^{\rm free}_d,$$
evaluated at a distinct-point configuration on a coordinate axis perpendicular to $e_b$. The selected diagrams all vanish exactly when $t$ is a real multiple of the derivative tuple.

(b) There exists a Maxwell datum for $C$ with lighthouse $\mathcal T_\tau$. It also contains the free Euclidean hierarchy, the Casimir polynomial data of VI.1, compatible representations of the proper orthochronous Lorentz group on the field spaces and their union, continuous in each degree, and the following Ward-vanishing property. For every $d\ge4$, let $T(u,v)$ be a real-bilinear family of complex linear endomorphisms of $\mathcal F^{\rm free}_d$, with $u,v\in\mathfrak{so}(4)$. Suppose it is alternating, real, equivariant under orientation-preserving signed permutations, kills the unit, and preserves every lower-degree image. If
$$\sum_i\langle w_1(x_1)\cdots(T(u,v)w_i)(x_i)\cdots w_m(x_m)\rangle=0$$
for every $m\ge0$, every $x\in\mathrm{Conf}_m$, every $w_i\in\mathcal F^{\rm free}_d$ and every $u,v$, then $T=0$. The Lorentz representation agrees with $R$ on spatial rotations, commutes with time-reflected conjugation, and has boost generator $-i\rho$ in each time–space plane.

(c) Every Maxwell datum can be replaced by one with the same derivative plan, rotations, hierarchy and Lorentz representation, stress $\tau T^{\rm free}$, full rotation covariance of that stress, and (FD). The Ward constant of any Maxwell datum with stress $\tau T^{\rm free}$ is $-\tau$.

*Status:* theorem. The construction used in III.11 chooses $\tau=1$ and hence $\kappa=-1$.
*Lean:* [`Maxwell.Free.herald`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L29-L34), [`shines`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L36-L42), [`maxwell_supplies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L45-L48), [`erasing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/AwayTeam.lean#L48-L118), [`scanner`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Scenes.lean#L125-L132), [`launched`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Descent.lean#L179-L181), [`FreeStress.fire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L137-L150), [`names`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pressure.lean#L167-L171), [`required`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pressure.lean#L158-L161); records [`Org.MaxwellData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170), [`Org.erases`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L149-L152), [`Climb.Lighthouse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L24-L29), [`Lighthouse.Goes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L34-L42).

**Proposition VI.2.6 (strict reflection positivity).** Fix a coordinate axis $a$, and let $\theta_a$ reflect in $y_a=0$. Let $\vartheta_a$ act on polynomials by the corresponding jet reflection and coefficient conjugation.

(a) For every $x$ with $x_a>0$ and every nonzero $p\in\mathcal W$,
$$\langle(\vartheta_ap)(\theta_ax)p(x)\rangle_0>0.$$
(b) For every finite set of distinct coordinate probes of the spaces $\mathrm{Sh}_j$, the reflected propagator Gram matrix at $(\theta_ax,x)$ is positive definite.

(c) The free table is reflection positive for finite families of words in the positive half-space, with distinct sites within each word.

(d) For every $d\ge0$, a polynomial $p\in\mathcal P_d$ whose correlations with every finite family of spectators from $\mathcal P_d$ vanish at every distinct-point configuration is zero.

*Status:* theorem.
*Lean:* [`detects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Core.lean#L94-L110), [`coordGram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Gram.lean#L82-L105), [`positive_table`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Caps.lean#L137-L155), [`ghosts_out`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Statistic.lean#L80-L99).

**Proposition VI.2.7 (a conserved stress on the limit table).** Let $C$ be a Wilson family satisfying the construction conditions of II.2. Let $F$ be an extraction order with ordered smeared convergence and generic point limits to a table $S$ with Euclidean hierarchy $H$. Let $W$ be a derivative plan on $S$ satisfying the inclusion and derivative laws; its orientation law then follows from IV.1. Let $H_0$ be the free Euclidean hierarchy, and $\mathcal T$ a lighthouse whose plan satisfies the inclusion, derivative and orientation laws and for which (FD) holds. Assume the station property of VI.2.8 and
$$\dim_{\mathbb C}\mathcal F^S_d\le\dim_{\mathbb C}\mathcal F^{\rm free}_d\qquad(d\ge0).$$

(a) There exists a scaling $X=(r_k,\xi_k,U_{k,d})$, where $r_k>0$ decreases strictly to zero, $\xi_k>0$, and $U_{k,d}:\mathcal F^{\rm free}_d\to\mathcal F^S_d$ is a complex linear isomorphism for every $k,d$. It is *approaching*: for each fixed tuple $v=(v_i)$ of free fields, the difference
$$K_k(y)=\langle U_kv_1(r_ky_1)\cdots U_kv_n(r_ky_n)\rangle^S-\langle v_1(y_1)\cdots v_n(y_n)\rangle^{\rm free}$$
satisfies, for every compact $K\subset\mathrm{Conf}_n$,
$$\sup_{\substack{t\in C_c^\infty(\mathrm{Conf}_n;\mathbb C)\\ \mathrm{supp}\,t\subset K,\ \|t\|_\infty\le1}}\left|\int t(y)K_k(y)\,dy\right|\longrightarrow0.$$
It is *stable*: the maps eventually commute with conjugation and signed permutations in each degree, preserve the unit in each degree, and intertwine each fixed inclusion of degrees. The initial choice may have $\xi_k=1$.

(b) For every approaching stable scaling, the divergence $\mathrm{div}^S:\mathcal Z^S\to\mathcal V^S$ is onto and has a one-dimensional real kernel. These spaces are defined as in VI.2.4, using $S$ and $W$.

(c) There exist a nonzero $J\in\mathcal Z^S$ with $\mathrm{div}^S J=0$ and an approaching stable refinement $Y$ of $X$, obtained by taking a subsequence and changing $\xi_k$, such that
$$\xi_k^{-1}U_{k,4}^{-1}(r_k^4J_{ab})\longrightarrow T_{0,ab}\qquad\text{for all }a,b.$$

(d) For every finite arity bound $N$, degree bound $d$, derivative order $m$, and $R\ge1$, a tail of $Y$ is a track: it intertwines symmetries, units and inclusions through degree $\max(d,4)$, satisfies (c), and has convergence of all correlation derivatives of orders $0\le j\le m$ uniformly on $K_{R,n}$ for $n\le N$. The convergence is for each fixed tuple of fields of degrees at most $d$; its tail may depend on that tuple and the error tolerance. In particular, $J$ satisfies the comparison law of VI.1.

*Status:* theorem under these hypotheses. III.11 supplies the station estimates; the rank-corrected widths of the construction give the dimension bound; VI.2.4 gives (FD) for the canonical datum. To obtain the infrared and ultraviolet data used later, III.11 also supplies the shell estimates needed for the Ward rows of $J$.
*Lean:* [`Stations.equivalences`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L132-L181), [`differential_rank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Dimension.lean#L165-L195), [`produce_current`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L129-L167), [`focused`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L197-L202), [`cap_given`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L110-L115); records [`Climb.Scaling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31), [`Scaling.meter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L54-L55), [`Approaches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L52-L53), [`Stable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L121-L125), [`ActLaw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L50-L51), [`Org.IR`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L172-L175), [`Org.UV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L177-L186).

**Proposition VI.2.8 (weak comparison stations).** Fix $C,F,S,H,H_0$ as in VI.2.7. A *station* of depth $D$ consists of $r>0$ and complex linear lifts $A_{N,p,d}:\mathcal F^{\rm free}_d\to\mathrm{Ref}_d$ for $d\le D$ at every lattice cutoff $(N,p)$.

It is *admissible* for arity bound $n_{\max}$, radius $R\ge1$ and tolerance $\varepsilon>0$ if:

- the lifts are eventually uniformly bounded along the extraction order, real and signed-covariant, and preserve the degree-zero unit;
- for every $n\le n_{\max}$, every tuple $v_i$ of degrees at most $D$, every smooth complex test $t$ supported in $K_{R,n}$, every $M>0$ with $\|t\|_\infty\le M$, and every $\eta>0$, eventually along the ordered cutoff tails,
$$\left|\mathcal S_{N,p}\bigl(Av;r^{-4n}t(\cdot/r)\bigr)-\int t(y)\langle v_1(y_1)\cdots v_n(y_n)\rangle^{\rm free}\,dy\right|\le\varepsilon M\prod_i\|v_i\|+\eta.$$
Here $\mathcal S_{N,p}$ is the lattice-smeared correlation of IV.1. The cutoff tail may depend on $v,t,M,\eta$.

The *station property* requires an admissible station with $r\le\delta$ for every $D,n_{\max}$, $R\ge1$ and $\varepsilon,\delta>0$.

(a) An admissible station yields a panel $U_d:\mathcal F^{\rm free}_d\to\mathcal F^S_d$ for $d\le D$. It is real, signed-covariant, preserves the degree-zero unit, and satisfies
$$\left|\int t(y)\bigl[\langle Uv_1(ry_1)\cdots Uv_n(ry_n)\rangle^S-\langle v_1(y_1)\cdots v_n(y_n)\rangle^{\rm free}\bigr]dy\right|\le\varepsilon M\prod_i\|v_i\|$$
for the same tuples and tests.

(b) Quantitative grid, strip and finite-difference estimates satisfying the balance conditions in VI.2.s, for every finite arity bound, degree bound and $R\ge1$, imply the station property.

*Status:* the station and balance conditions are definitions; (a) and (b) are theorems. III.11 supplies the balanced estimates through its complete weak-comparison result.
*Lean:* [`Station`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L68-L71), [`Station.Admissible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L89-L97), [`Stations`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L112-L114), [`harvested`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L132-L180), [`Granular`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L30-L34), [`realizes_stations`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L134-L140), [`MergeProof.East.CompleteWeak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L35).

**Proposition VI.2.9 (the normalized stress and its short-distance law).** Let $C$ be a Wilson family, $F$ an extraction order, $S$ a table with derivative plan $W$, and $M$ a Maxwell datum with lighthouse $\mathcal T$ and Ward constant $\kappa\ne0$. Let $I=(J_0,p^I,Y^I)$ and let $X$ be a scaling. Assume the ultraviolet-data conditions of VIII.1 for $(C,F,S,W,M,I)$. In particular, they give a Euclidean hierarchy on $S$, the orientation law for $W$, a symmetric real conserved signed-covariant $J_0$ with Ward rows $(p^I,Y^I)$, and tracks comparing $J_0$ to $T_0$. Assume also the inclusion and derivative laws for $W$, and the following additional properties: $J_0$ is a nonzero member of $\mathcal Z^S$; $\mathcal T$ satisfies (FD); and $X$ is approaching and stable, with
$$\xi_k^{-1}U_{k,4}^{-1}(r_k^4J_{0,ab})\longrightarrow T_{0,ab}.$$

Let $J\in(\mathcal F^S_4)^{4\times4}$ be symmetric, real, conserved and covariant under signed permutations. Suppose it satisfies the translation Ward identity with rows $W$ and the rotation Ward identity with some rotation rows. Then:

(a) $U_{k,4}^{-1}(r_k^4J_{ab})\to\kappa^{-1}T_{0,ab}$ for every $a,b$.

(b) For every finite tuple of free fields $q_i$, every assignment of slots to either $U_kq_i$ or $r_k^4J_{a_ib_i}$, and every $j\ge0$, the resulting correlations at $r_ky_i$ converge with their order-$j$ derivatives uniformly on compact subsets of $\mathrm{Conf}_n$. The limit is the free correlation with each stress slot replaced by $\kappa^{-1}T_{0,a_ib_i}$.

(c) For the canonical datum with plan $\partial^{\rm free}$ and stress $T^{\rm free}$, $\kappa=-1$. Thus the Ward-normalized physical stress converges to $-T^{\rm free}$ without the factor $\xi_k^{-1}$.

*Status:* theorem. VI.1 supplies a stress $J$ satisfying these Ward laws. The mixed-correlation conclusion follows from (a) and VI.2.u; the linked mixed-correlation theorem states its specialization to that stress.
*Lean:* [`Pert.meter_physical`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L118-L144), [`Pert.mixed_leading`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lifted.lean#L85-L124), [`kappa_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lifted.lean#L65-L74), [`common_stress`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lifted.lean#L38-L49), [`Pert.Supplier`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L22-L32), [`Org.Tab`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L19-L24).

<a id="unit-inputs"></a>

## 2. What it uses

**From other units.**

- III.16 supplies on-shell Taylor spaces, label frames, substitution into curvature polynomials, and the cross-site Wick pairing formula: [`YM.Maxwell.Wick.moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127); [`YM.Maxwell.observable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L66-L67).
- IV.1 supplies tables, quotient fields, ordered cutoff limits and lattice smearing. The derivative and inclusion laws give the orientation law: [`YM.Work.D06.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D06.lean#L137-L139). Its rank-corrected widths give the upper dimension bound used here: [`YM.Next.UVStress.cap_given`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L110-L115).
- V.1 gives smeared reflection positivity from point reflection positivity and derivative bounds from order-zero bounds: [`YM.Work.B08.smear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B08.lean#L193-L203); [`YM.Work.B10.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B10.lean#L95-L105).
- VI.1 supplies local windows, finite separating correlation tests, collinear Ward diagrams, and the derivative, rotation and track laws. Rotation laws follow from invariance: [`YM.Work.A14.laws_of_oriented`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L403-L415). It also supplies the Casimir relations and annihilating polynomials: [`YM.Work.A09.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A09.lean#L85-L90); [`YM.Work.A10.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A10.lean#L113-L115); [`YM.Work.A12.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A12.lean#L323-L336).
- III.10 assembles Maxwell data from these components: [`YM.Bid.masts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Scope.lean#L24-L29).
- III.11 supplies balanced weak-comparison estimates and the shell estimates for the interacting Ward identities. It combines these with the present stress-line construction to obtain the infrared and ultraviolet data: [`YM.MergeProof.East.CompleteWeak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L35); [`YM.MergeProof.Acme.readyA`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L15-L30); [`YM.MergeProof.Acme.emanate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L31-L37).
- VII.5 supplies the comparison of stress and derivative normalizations along tracks and the nontriviality test for a Ward-normalized stress: [`YM.Extra.WeakScaling.tracks_ratio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L43-L54); [`YM.Extra.WeakScaling.flux_nontrivial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Criteria.lean#L64-L70).
- VIII.1 defines the Maxwell, infrared and ultraviolet data: [`YM.Org.MaxwellData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170); [`YM.Org.IR`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L172-L175); [`YM.Org.UV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L177-L186).

**Standard mathematics.** Wick's theorem and the bosonic Fock inner product (Glimm–Jaffe, ch. 6); reflection positivity of Gaussian fields (Osterwalder–Schrader, 1973/75); the Euclidean Green function and Cartan's formula; integration by parts and approximate identities; homogeneous harmonic functions and the Kelvin transform; finite-dimensional rank–nullity, openness of injectivity and surjectivity, compactness of spheres, and uniqueness for linear ODEs. The passage from uniform order-zero test estimates to smooth convergence uses closure under gradients, localization and Fourier inversion (VI.2.u).

**Imported constants and assumptions.** Simplicity of $G$ enters the stress classification and the rigidity arguments for the Maxwell data. It is essential for the one-dimensional stress line: for $\mathfrak g=\mathfrak g_1\oplus\mathfrak g_2$, the two factors have separately invariant conserved Maxwell stresses. The propagator normalization is $c_0=(4\pi^2)^{-1}$. The explicit correlation tests give the integers $-256,-512,128,-128$ in VI.2.l and the factor $256\dim\mathfrak g\,c_0^2$ in VI.2.n. The station estimates and dimension bound enter as hypotheses of the transfer argument, with their discharge stated in VI.2.7–8.

<a id="unit-strategy"></a>

## 3. Strategy

The free table is realized by invariant polynomials in on-shell curvature coefficients with Wick correlations. Translation and rotation covariance, analyticity and polynomial bounds follow from the propagator. Reflection positivity uses a Fock-space factorization. For two polynomials at mirror points, the reflected Gram matrix of their finitely many coordinate probes is positive definite. Factoring it as $L^*L$ identifies their correlation with a Fock inner product after an invertible linear substitution. Strict positivity eliminates further null fields and identifies the free quotient with $\mathcal P_d$.

For the Ward identity, replace the singular propagator by a smooth curl source. Its divergence is a derivative of an approximate identity. Two integrations by parts and removal of the regulator give the local charge $-\mathcal L_vf$. Differentiation in the source point extends the charge to every Taylor order. Wick expansion then leaves three possibilities: both stress legs meet the marked site, giving zero by homogeneity; one meets that site and one a spectator, giving the desired derivation; or both meet spectators, giving a source-free current inside the cutoff.

The free stress line is computed in finite-dimensional spaces. Signed covariance allows three centred symmetric tensors in degree four and at most two vectors in degree five. Two explicit correlation tests prove that divergence has rank two. Its kernel is therefore the line generated by $T^{\rm free}$. A translation Ward test fixes the constant $\kappa=-\tau$ for stress $\tau T^{\rm free}$.

Stations give comparison maps at scales tending to zero. Correct them recursively to intertwine inclusions. Finite separating tests make the corrected maps eventually injective; the dimension bound makes them isomorphisms. Integration by parts and the derivative law show that $r_kU_k^{-1}W_aU_k\to\partial^{\rm free}_a$. The correlation differences, including those with convergent field coefficients, are closed under gradients, so the uniform test estimates improve to smooth local convergence.

Transport the interacting divergence to the free spaces, recentering tensors after transport. It converges to free divergence, so surjectivity and rank–nullity transfer the one-dimensional kernel to $S$. Normalize a nonzero vector in this kernel to a sphere in the free stress space and pass to a subsequence. Its limit is a nonzero centred conserved free tensor, hence a multiple of $T^{\rm free}$; a single sign choice fixes the limit on the entire comparison sequence.

Finally, a Ward-normalized stress $J$ on $S$ has centred part proportional to the constructed stress: $c(J-\langle J\rangle\mathbf1)=J_0$. Comparing the derivative and stress Ward identities along tracks gives $c/\xi_k\to\kappa$. Thus $U_k^{-1}(r_k^4J)\to\kappa^{-1}T_0=-T^{\rm free}$ in the canonical normalization. This obtains the interacting stress from the finite-dimensional conservation law, then fixes its scale by the Ward identity.

<a id="unit-steps"></a>

## 4. Steps

### 4.1 The free table

**Lemma VI.2.a (field spaces and correlations).** For every $d$, the null labels are exactly the kernel of substitution into $\mathcal P_d$, and $\iota_d:\mathcal F^{\rm free}_d\to\mathcal P_d$ is an isomorphism carrying correlations to Wick moments.

*Sketch.* The free table is defined by substitution followed by the Wick moment. A residual polynomial has zero correlations with every family of shell-sector spectators. A nonzero polynomial has positive two-point correlation with its own reflected conjugate by VI.2.b, which remains in the same sector. Thus the residual subspace is zero.
*Lean:* [`fields`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L33-L35), [`no_residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Caps.lean#L90-L113), [`freeTable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L23-L24), [`Wick.moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127).

**Lemma VI.2.b (strict reflection positivity).** For $x_a>0$, the pairing $\langle(\vartheta_ap)(\theta_ax)q(x)\rangle_0$ is a positive-definite Hermitian form on $\mathcal W$.

*Sketch.* Let $s$ be the finite union of coordinate variables appearing in $p$ and $q$. The reflected propagator Gram matrix $M_s$ is positive definite; factor it as $M_s=L^*L$. The Wick pairing between the two sites then equals $\langle T_Lp,T_Lq\rangle_{\rm Fock}$, where $T_L$ substitutes $e_i\mapsto\sum_jL_{ji}e_j$. The Fock form makes monomials orthogonal with squared norms $\alpha!$. Since $L$ is invertible, the form is definite. Taking $q=p$ gives strict positivity; testing a residual polynomial against its reflected conjugate gives VI.2.6(d).
*Lean:* [`detects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Core.lean#L94-L110), [`core`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Core.lean#L44-L92), [`Fock.halves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Fock.lean#L188-L206), [`coordGram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Gram.lean#L82-L105), [`ghosts_out`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Statistic.lean#L80-L99). *(`detects`, `core` and `ghosts_out`: proof read; reflected Gram positivity and Fock pairing factorization: statement checked)*

**Lemma VI.2.c (the Euclidean hierarchy).** The free table is reflection positive, real-analytic on distinct-point configurations, translation invariant, and has polynomial bounds there, including bounds for all derivatives.

*Sketch.* For words with distinct sites in a positive half-space, the multi-site Fock factorization makes the matrix of reflected correlations positive semidefinite. A leg kernel between probes of orders $j,l$ is analytic and harmonic off zero, homogeneous of degree $-(4+j+l)$, and becomes analytic on all of $\mathbb R^4$ after multiplication by $|x|^{2(3+j+l)}$. Its bound on a sphere and homogeneity give a polynomial bound away from zero. Finite Wick sums inherit analyticity and bounds. The derivative law gives bounds for all derivatives; V.1 gives smeared positivity. The propagator depends only on point differences, which gives translation invariance.
*Lean:* [`positive_table`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Caps.lean#L137-L155), [`cabinets_positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Studio.lean#L141-L158), [`kernel_pole`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Pole.lean#L238-L260), [`cap_moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Caps.lean#L69-L75), [`hierarchy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L106-L114). *(proof read; multi-site Fock factorization used as an input)*

**Lemma VI.2.d (derivatives, rotations and conservation).** The Taylor derivations and rotation action give VI.2.1(c), and $T^{\rm free}$ satisfies VI.2.1(d).

*Sketch.* The directional derivative raises the Taylor order by one and the weight by one. Applying it at one insertion differentiates precisely the propagator legs incident to that insertion. Rotation covariance follows from the natural jet action and invariance of the propagator; VI.1 then gives the rotation laws.

To prove conservation as a polynomial identity, evaluate on an arbitrary Taylor tower. Only its orders zero and one occur, so realize them by a wave $f=A_0+A_1$ with homogeneous components of degrees zero and one. The evaluated divergence is $\frac12\sum_a\partial_a\Theta_{ab}(f,f)=\sum_i\langle(\mathrm{Div}\,f)_i,f_{bi}\rangle=0$. Evaluation on all towers separates polynomials. Symmetry, reality, tracelessness and centring follow from the displayed stress polynomial and the absence of one-site contractions.
*Lean:* [`scheme`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L80-L83), [`gear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L153-L170), [`realStress`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L176-L179), [`pol_conservation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Stress.lean#L76-L117), [`polStress`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Stress.lean#L24-L25).

### 4.2 The local Ward charge

**Lemma VI.2.e (divergence of the current).** For smooth closed two-forms $f,g$ on an open set $U$ and a smooth conformal Killing field $v$,
$$\sum_a\partial_aj^v_a(f,g)=\sum_bv_b\sum_i\bigl(\langle(\mathrm{Div}\,f)_i,g_{bi}\rangle+\langle f_{bi},(\mathrm{Div}\,g)_i\rangle\bigr).$$
In particular, the flux vanishes when both fields are Maxwell waves near the cutoff support.

*Sketch.* Apply the product rule. The contraction of $\nabla v$ with $\Theta$ vanishes because $\Theta$ is symmetric and traceless and the symmetric part of $\nabla v$ is scalar. The remaining identity follows by the Bianchi equations. Integrating against the cutoff proves the flux statement.
*Lean:* [`current_div`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L151-L181), [`sourcefree_flux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L239-L250).

**Lemma VI.2.f (regulated source).** Under the hypotheses of VI.2.2, fix $i,l,c$ and $t>0$. Set
$$G_t(y)=c_0(t^2+|y|^2)^{-1},\qquad \rho_t(y)=-\Delta G_t(y)=8c_0t^2(t^2+|y|^2)^{-3},$$
and let $R^t=d\alpha^t\,e_c$, with $\alpha^t_b=\delta_{ib}\partial_lG_t(\cdot-x)-\delta_{lb}\partial_iG_t(\cdot-x)$. Then $R^t$ is closed and
$$(\mathrm{Div}\,R^t)_b=(\delta_{lb}\partial_i\rho_t-\delta_{ib}\partial_l\rho_t)(\cdot-x)e_c.$$
Writing $h_a=(\iota_vf)^c_a$, its flux is
$$\Phi_\chi(j^v(R^t,f))=\int\rho_t(y-x)\bigl[\partial_l(\chi h_i)-\partial_i(\chi h_l)\bigr](y)\,dy.$$

*Sketch.* Apply VI.2.e and integrate $\chi\,\mathrm{div}\,j^v$ by parts. Insert the displayed divergence of $R^t$ and integrate by parts again to move derivatives from $\rho_t$ to $\chi h$.
*Lean:* the regulated-flux identity in [`Contact.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Contact.lean#L56-L98), [`regulated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Regulator.lean#L147-L148).

**Lemma VI.2.g (removing the regulator).** The regulated flux extends continuously to $t=0$ and gives VI.2.2(a).

*Sketch.* On the compact support of $\nabla\chi$, the source point is excluded and $R^t$ is jointly continuous down to zero, where it equals $f^{F^c_{il},x}$. The functions $\rho_t$ form an approximate identity. Hence VI.2.f tends to $(\partial_lh_i-\partial_ih_l)(x)=-(\mathcal L_vf)^c_{il}(x)$, since $\chi=1$ near $x$.
*Lean:* [`local_force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Contact.lean#L137-L156).

**Lemma VI.2.h (charges of higher-order probes).** Under the hypotheses of VI.2.2(b), the flux identity holds in every order. Translations, rotations and dilation give its three stated specializations.

*Sketch.* Probes of order $j+1$ are spanned by directional derivatives of probes of order $j$. Keep $v$ and $\chi$ fixed while differentiating in the source point. The generated fields satisfy $\frac d{ds}f^{p,x+su}=f^{\partial_up,x+su}$, where $\partial_up$ is the probe representing the derivative of $p(f)$. Compact support away from the source justifies differentiation under the flux integral. The right side differentiates as a probe evaluation because $\mathcal L_vf$ is a Maxwell wave.

For a centred affine motion, the order-$j$ coefficient of $\mathcal L_vf$ at the centre depends only on the order-$j$ coefficient of $f$. For rotations it is the derivative of the inverse action on solution coefficients: if that action is $Q_g$, then $(\omega\cdot p)(A)=\frac d{dt}|_{t=0}p(Q_{\exp(-t\omega)}A)$. For dilation, Euler's identity on the homogeneous wave gives the factor $j+2$.
*Lean:* [`jet_force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Force.lean#L131-L186), [`drift_flux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Affine.lean#L249-L255), [`angular_flux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Angular.lean#L181-L195), [`radial_flux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Affine.lean#L220-L247).

**Lemma VI.2.i (two sources at one point).** With $\chi,v$ as in VI.2.2, probes $p,q$ of orders $j,l$, and $v$ homogeneous about $x$ of degree $e\in\{0,1\}$, the flux $Z=\Phi_\chi(j^v(f^{p,x},f^{q,x}))$ vanishes.

*Sketch.* The current is divergence-free off $x$, so changing the cutoff while keeping it equal to one near $x$ preserves its flux. Replace it by $\chi(x+(\cdot-x)/2)$. The two generated fields have homogeneities $-(4+j)$ and $-(4+l)$, so a change of variables gives $Z=2^{3+e-(8+j+l)}Z$. The factor is strictly less than one.
*Lean:* [`two_flux_zero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Repeat.lean#L63-L128).

**Lemma VI.2.j (Ward identities for Wick polynomials).** The three charges of VI.2.h imply VI.2.3 for every tuple of Wick polynomials.

*Sketch.* More generally, take a conformal Killing field $v$ and a polynomial derivation $D$ for which the two-source flux at the marked site vanishes and
$$\Phi_\chi(j^v(f^{p,x_0},f^{q,y}))=-\langle(Dp)(x_0)q(y)\rangle_0\qquad(y\notin\mathrm{supp}\,\chi).$$
The three motions satisfy these conditions by VI.2.h–i. For monomials, expand the two stress legs in the Wick moment. The integrand is one half the sum over ordered pairs of extracted legs of their polarized current times the remaining Wick moment. Two marked legs give zero by VI.2.i; two spectator legs give zero by VI.2.e. The mixed pairs give $D$ on each marked leg, with the two orders cancelling the factor one half. The Leibniz rule reassembles the result as $Dp_0$. Multilinearity gives the identity for all polynomials, and $\iota$ carries it to field-space Ward laws.
*Lean:* [`fees`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Taxes.lean#L115-L172), [`moment_force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Taxes.lean#L177-L200), [`Motion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Taxes.lean#L24-L28), [`beacon_signal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Beacon.lean#L74-L136).

### 4.3 The free stress line and the Ward constant

**Lemma VI.2.k (the tensor and vector spaces).** Assume $G$ is simple. Put
$$Q_{ak,bj}=\sum_cF^c_{ak}F^c_{bj},\qquad P_{ab}=\sum_kQ_{ak,bk},\qquad N=\sum_{b,k}Q_{bk,bk},$$
$$A_{ab}=\delta_{ab}P_{aa},\qquad B_{ab}=\delta_{ab}(N-2P_{aa}),\qquad C_{ab}=(1-\delta_{ab})P_{ab}.$$
Then $A,B,C$ form a real basis of $\mathcal Z$, and $\dim_{\mathbb R}\mathcal V\le2$.

*Sketch.* The simple-group invariant calculation through weight four, followed by sign changes and coordinate permutations, leaves two diagonal coefficients and one off-diagonal coefficient. Centring removes the scalar unit term, and reality makes the coefficients real. The tensors above have zero one-point functions. Their independence follows from the tests in VI.2.l together with a normalized two-point test of the $01$ component against $Q_{02,12}$, whose values on $(A,B,C)$ are $(0,0,-16)$.

For the vector bound, the Bianchi and Maxwell equations reduce the zeroth component to the real span of two fixed curvature–first-derivative combinations. Signed permutations determine every other component from it. Thus projection to the zeroth component embeds $\mathcal V$ into a space of dimension at most two.
*Lean:* [`exhaust`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/StressSpace.lean#L115-L122), [`mixed_space`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L56-L71), [`capped_v`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/VRank.lean#L102-L116). *(proof read; invariant spanning calculations used as inputs)*

**Lemma VI.2.l (rank of free divergence).** Under the hypotheses of VI.2.4, let $s_1,s_2$ test the zeroth component of a vector at $e_0$ against $Q_{01,01}(0)$ and $Q_{12,12}(0)$, respectively, taking real parts and dividing by $\dim\mathfrak g\,c_0^2$. Then
$$(s_1,s_2)(\mathrm{div}A)=(-256,0),\qquad(s_1,s_2)(\mathrm{div}B)=(0,-512),\qquad(s_1,s_2)(\mathrm{div}C)=(128,-128).$$

*Sketch.* Differentiate the explicit two-point curvature correlations and evaluate the finite index sums. The first two columns make $s\circ\mathrm{div}$ onto $\mathbb R^2$. By VI.2.k, $s$ is therefore an isomorphism and divergence is onto. Rank–nullity gives a one-dimensional kernel. The columns also show that $\frac12A-\frac14B+C$ lies in it, and this tensor is $P-\frac14\delta N=T^{\rm free}$.
*Lean:* [`east_column`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pivots.lean#L96-L99), [`west_column`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pivots.lean#L100-L103), [`cross_column`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pivots.lean#L104-L107), [`scope_exact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L33-L41), [`rank_on`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L43-L47), [`line_dim`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L73-L79), [`lighting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L86-L94), [`certificate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L125-L132). *(proof read; underlying differentiated propagator table used as an input)*

**Lemma VI.2.m (canonical choice of stress).** For any Maxwell datum for a simple $G$ and any $\tau\ne0$, one can retain its derivative plan, rotations, hierarchy and Lorentz representation while replacing its stress by $\tau T^{\rm free}$ and obtaining (FD) and full rotation covariance.

*Sketch.* Divide the original stress by its Ward constant to obtain Ward rows $(\partial,\rho)$. Average over $O(4)$ with Haar measure and take the compatible real part. The Ward identities imply symmetry and conservation of the resulting tensor. Centre it by subtracting its expectation times the unit; this preserves its Ward laws and covariance. The centred tensor $j_0$ is nonzero, since otherwise its translation Ward law would make the derivative vanish in degree four. By VI.2.l, $j_0=cT^{\rm free}$ with $c\ne0$. Scaling it by $\tau/c$ gives the desired stress with Ward constant $\tau/c$; VI.2.n identifies this constant as $-\tau$.
*Lean:* [`ignite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L77-L134), [`every_light`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L41-L51), [`fire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L137-L150). *(proof read; Haar averaging and Ward-implied conservation and symmetry: statement checked)*

**Lemma VI.2.n (the Ward constant).** If a Maxwell datum for a simple $G$ has stress $\tau T^{\rm free}$, its Ward constant is $\kappa=-\tau$.

*Sketch.* Test its translation Ward identity in direction zero with $Q_{01,01}$ at $0$ and at $-e_0$. Wick expansion leaves one stress leg at each insertion. The single-contraction flux is $-\partial_0u_{01}(0)$ for a smooth Maxwell wave $u$ on the cutoff support. Evaluating the remaining propagators gives flux $256\tau\dim\mathfrak g\,c_0^2$. The derivative side is $-256\kappa\dim\mathfrak g\,c_0^2$. Since simplicity implies $\dim\mathfrak g>0$, the constants agree only if $\kappa=-\tau$.

There is also a structural proof in the canonical case. If the plan is $\partial^{\rm free}$ and the stress is $T^{\rm free}$, VI.2.3 gives Ward constant $-1$. Comparing translation Ward identities for two constants, using separating correlations, makes their difference times the derivative tuple in degree four zero. That tuple is nonzero, so the constant is unique.
*Lean:* [`negated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pressure.lean#L132-L151), [`required`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pressure.lean#L158-L161), [`single_cross`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Contact.lean#L106-L124), [`battery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/TripleMeter.lean#L63-L80), [`at_tower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pressure.lean#L96-L118), [`kappa_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lifted.lean#L65-L74), [`same_translation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lifted.lean#L57-L63).

### 4.4 The remaining Maxwell data

**Lemma VI.2.o (selection of the derivative).** For simple $G$, there is $d_0$ such that spectators in $\mathcal P_{d_0}$ detect every shell-sector polynomial, of any weight. For every $d\ge\max(d_0,4)$, the admissible vector maps in VI.2.5(a) whose Ward diagrams vanish form the line $\mathbb R\partial^{\rm free}$. Finitely many collinear diagrams suffice.

*Sketch.* For detection, induct on the weight. Mixed contractions lower the weight and constrain derivatives in the highest-order variables. An explicit colour matrix has nonzero determinant as a matrix of polynomials, so these constraints eliminate the high-order variables. The remaining bounded Taylor orders are detected by a fixed finite exterior degree.

For selection, the low-degree classification first gives a scalar multiple of the derivative on degree four. Subtract that multiple. The remainder kills the free stress; the dilation Ward identity and the detection result make it commute with the weight derivation. Vector covariance makes it anticommute with total coordinate inversion. Since inversion acts on weight $w$ by $(-1)^w$, the remainder is zero. Analyticity transports vanishing of all derivatives at collinear configurations to arbitrary configurations. Finite-dimensionality reduces the intersection of all diagram kernels to a finite intersection.
*Lean:* [`exposed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Hidden.lean#L113-L137), [`matrix_meal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Hidden.lean#L66-L87), [`charges_quiet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Magnitude.lean#L142-L181), [`finite_lenses`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Scenes.lean#L92-L123), [`scanner`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Scenes.lean#L125-L132), [`born`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Born.lean#L51-L70). *(proof read; low-degree vector-map classification and bounded-order detection used as inputs)*

**Lemma VI.2.p (the Ward-vanishing test).** The endomorphism family in VI.2.5(b) vanishes for every $d\ge4$.

*Sketch.* Write the family on polynomials. Exact degree-four two-point correlations imply that each endomorphism commutes with coordinate quarter turns on the degree-four image. Equivariance then makes its alternating bilinear dependence on $u,v\in\mathfrak{so}(4)$ invariant under simultaneous conjugation by those turns. The finite quarter-turn calculation forces this alternating form to vanish. In particular, the family kills $T^{\rm free}$.

Apply the local rotational Ward identity to its vanishing Ward sums. The commutator with every $\rho(\omega)$ has zero correlations with degree-$d$ spectators and still lies in $\mathcal P_d$; VI.2.6(d) makes it zero. Uniqueness for the linear rotation ODE gives commutation with quarter turns on all of $\mathcal F^{\rm free}_d$. The same alternating-form calculation now gives $T=0$.
*Lean:* [`erasing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/AwayTeam.lean#L48-L118), [`commute_ghost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Statistic.lean#L104-L150), [`complete_turn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/AwayTeam.lean#L29-L46), [`low_motion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Depth.lean#L162-L181).

**Lemma VI.2.q (assembly of Maxwell data).** For simple $G$ and $\tau\ne0$, the free lighthouse and the remaining data satisfy VI.2.5(a),(b).

*Sketch.* VI.2.d gives the derivative and rotation laws; VI.2.j gives the Ward laws. The derivative is nonzero in every degree $d\ge4$: differentiate a nonconstant invariant quadratic curvature polynomial and use faithfulness of the associated colour pairing. VI.2.o supplies the selection property. The Lorentz action on the free polynomial fields descends compatibly to their union, with boost generator $-i\rho$ and the prescribed spatial rotations. Combine these results with the Casimir statements of VI.1 and the Ward-vanishing test VI.2.p.
*Lean:* [`shines`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L36-L42), [`maxwell_supplies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L45-L48), [`Bid.masts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Scope.lean#L24-L29), [`voyage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Descent.lean#L173-L177). *(assembly and nonzero derivative: proof read; Lorentz and Casimir data: statement checked)*

### 4.5 Comparison with the Wilson limit

**Lemma VI.2.r (panels from a station).** An admissible station under the hypotheses of VI.2.8 yields the panel and estimate of VI.2.8(a).

*Sketch.* The bounded lift maps lie in a fixed finite-dimensional space. Pass to a convergent subfilter and project their limits to the quotient fields of $S$. Reality, signed covariance and the degree-zero unit identity pass to the limit. Ordered smeared convergence also holds for convergent label coefficients, by finite-dimensional multilinearity. The change of variables in the dilated test then turns the admissibility estimate into the panel estimate. The subfilter proves an estimate for the same continuum table; it does not change the physical extraction order.
*Lean:* [`harvested`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L132-L180), [`calibrated_smear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Vary.lean#L62-L71).

**Lemma VI.2.s (balanced estimates give stations).** Fix the extraction hypotheses of VI.2.8 and finite bounds $N,D\ge0$ and $R\ge1$. Suppose stations satisfy $r_k\to0$ and the eventual lift bounds and symmetries of VI.2.8. Let their normalized grid spacings be $s_k>0$ and their strip widths $\sigma_k>0$. For each basis word $w$ of arity $n\le N$ and degrees at most $D$, suppose there are errors $e_k\to0$ and eventually nonnegative costs $A_k,B_k$ with
$$\sigma_k\to0,\qquad4ns_k\le\sigma_k\ \text{eventually},\qquad A_k^n\sigma_k\to0,\qquad B_k^ns_k/\sigma_k\to0.$$
For every sufficiently large fixed $k$ and every convergent subfilter of the lifts along the extraction order, let $Q_k$ be the rescaled continuum correlation of their projected limits. Write $Q_0$ for the free correlation of $w$ and
$$E_\sigma=\{y:\ |y_i^a-y_j^a|>\sigma\ \text{for every }i\ne j,a\}.$$
Assume the following bounds for every such limit:
$$|Q_k|\le A_k^n\quad\text{on }K_{R,n},\qquad \|DQ_k\|\le4nB_k^n/\sigma_k\quad\text{on }K_{2R,n}\cap E_{4\sigma_k},$$
$$|Q_k-Q_0|\le e_k\quad\text{on }(s_k\mathbb Z)^{4n}\cap K_{2R,n}\cap E_0.$$
These bounds for all $N,D,R$ imply the station property. The grid, bulk and finite-difference assumptions of the balanced estimate in III.11 imply precisely these bounds for every cluster limit.

*Sketch.* The excluded band $K_{R,n}\setminus E_{8\sigma_k}$ has volume $O_{n,R}(\sigma_k)$, so its contribution is $O_{n,R}((A_k^n+\|Q_0\|_\infty)\sigma_k)$. Outside the band, rounding to the grid stays in $E_{4\sigma_k}$ and $K_{2R,n}$ for large $k$. Interpolation costs $O_n(B_k^ns_k/\sigma_k)$ plus the free correlation's modulus of continuity. All these terms and $e_k$ tend to zero. A contradiction subfilter with convergent lifts converts the bound into the ordered cutoff estimate. Expansion in the finite product basis, with coefficient sum bounded by a constant times $\prod_i\|v_i\|$, gives admissibility for arbitrary tuples. Costs may depend on the basis word; only finitely many words occur for the fixed bounds.
*Lean:* [`cutoff_balance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Glide.lean#L102-L129), [`pays_film`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Glide.lean#L72-L99), [`Balances`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Glide.lean#L24-L31), [`Wheel.Spots`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Fringe.lean#L38-L42), [`supply_wheel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L121-L128), [`realizes_stations`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L134-L140).

**Lemma VI.2.t (comparison isomorphisms).** Under the hypotheses of VI.2.7, there is an approaching stable scaling, initially with $\xi_k=1$.

*Sketch.* Choose stations of depth and arity bound $k$, radius bound $k+1$, tolerance $(k+1)^{-1}$, and strictly decreasing radii $r_k\le(k+1)^{-1}$. Their panels approach in the test sense of VI.2.7(a). For each consecutive free inclusion choose a real, signed-covariant left inverse $R_d$. Starting with $Q_{k,0}=U_{k,0}$, set
$$Q_{k,d+1}=\mathrm{inc}^S Q_{k,d}R_d+U_{k,d+1}(1-\mathrm{inc}^{\rm free}R_d).$$
These maps intertwine inclusions exactly. Expansion into mixed tuples of lower-degree fields and complementary fields preserves the comparison estimates. Finitely many separating joint tests make $Q_{k,d}$ eventually injective. The dimension bound then makes it bijective. In each degree, fill the finitely many earlier indices with any one of these isomorphisms. This preserves eventual comparison, symmetry and inclusion identities and yields isomorphisms for every $k,d$.
*Lean:* [`Stations.ranging`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L27-L41), [`Stations.build_curve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L55-L73), [`signed_section`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Arrange.lean#L29-L72), [`corrected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Arrange.lean#L78-L81), [`MeterTest.injects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L88-L103), [`Stations.equivalences`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L132-L181), [`DimAbove`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L108).

**Lemma VI.2.u (smooth convergence).** With the hierarchy and derivative laws of VI.2.7, every approaching scaling satisfies
$$r_kU_{k,d+1}^{-1}W_aU_{k,d}\longrightarrow\partial^{\rm free}_a$$
in each finite-dimensional operator space. Its rescaled correlations converge with all derivatives uniformly on compact subsets of $\mathrm{Conf}_n$. This also holds for free field tuples $v_k\to v$ with fixed degrees.

*Sketch.* The chain rule identifies a position derivative of a rescaled correlation with the correlation obtained by inserting the displayed transported derivative. Integrate against tests and move the derivative to the test. Approaching convergence and finitely many separating tests then determine the limit of the operator.

Finite-dimensional multilinearity extends the test estimates to convergent field tuples. The resulting correlation differences are closed under gradients, by operator convergence. After localization, their Fourier transforms tend uniformly to zero: multiplication of a fixed test by any Fourier phase preserves its sup norm. Repeated integration by parts gives arbitrarily high decay in frequency, using the same estimates for gradient descendants. Fourier inversion gives uniform convergence; repeating this for descendants gives every derivative order.
*Lean:* [`scaled_identity`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Focus.lean#L22-L48), [`bend_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Focus.lean#L67-L92), [`closed_path`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Focus.lean#L158-L181), [`travels_jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Focus.lean#L183-L196), [`GradientFamily.jets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Local.lean#L152-L181).

**Lemma VI.2.v (rank transfer).** Every approaching stable scaling under VI.2.7 transfers surjectivity and the one-dimensional divergence kernel to $S$.

*Sketch.* For large $k$, transport a free centred tensor by $U_{k,4}$ and then recenter it in $S$; this defines a real isomorphism $C_k:\mathcal Z^{\rm free}\to\mathcal Z^S$. The inverse transports back and recentres; preservation of the unit makes the two composites identities. Let $V_k:\mathcal V^{\rm free}\to\mathcal V^S$ be transport by $U_{k,5}$. Then
$$Z_k=V_k^{-1}\circ(r_k\,\mathrm{div}^S)\circ C_k\longrightarrow\mathrm{div}^{\rm free}.$$
The centring term disappears on differentiation because the derivative kills the unit. Compose $Z_k$ with a right inverse of free divergence. The result tends to the identity on $\mathcal V^{\rm free}$, hence is eventually invertible. Thus $\mathrm{div}^S$ is onto. The two isomorphisms identify the dimensions of domain and target with the free dimensions, so rank–nullity gives kernel dimension one.
*Lean:* [`differential_rank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Dimension.lean#L165-L195), [`centerEquiv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Dimension.lean#L77-L82).

**Lemma VI.2.w (one current along one comparison sequence).** Under VI.2.7, there are a nonzero centred conserved $J$ and a refinement $Y$ satisfying VI.2.7(c),(d).

*Sketch.* Choose $B\ne0$ in $\ker\mathrm{div}^S$ and normalize its entire transported stress tensor:
$$\xi_k=\frac{\|U_{k,4}^{-1}(r_k^4B)\|}{\|T_0\|},\qquad \beta_k=\xi_k^{-1}U_{k,4}^{-1}(r_k^4B).$$
A subsequence converges on the sphere of radius $\|T_0\|$. The limit is symmetric, real and signed-covariant by closedness. Convergence of one-point functions makes it centred. VI.2.u and the equation $\sum_a(r_kU_{k,5}^{-1}W_aU_{k,4})\beta_{k,ab}=0$ make it conserved. By (FD), it equals $cT_0$ for a real $c$ with $|c|=1$. Choose $J=B$ or $-B$ once so the limit is $T_0$. For each finite set of track requirements, stability holds on a tail and VI.2.u supplies the required derivatives. This tail is a track for the same $J$.
*Lean:* [`produce_current`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L129-L167), [`subsector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L53-L68), [`on_axis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L106-L124), [`center_expect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L88-L104), [`focused_track`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L173-L194), [`focused`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L197-L202).

**Lemma VI.2.x (physical normalization).** Under VI.2.9, there is $c\ne0$ such that
$$c(J-\langle J\rangle\mathbf1)=J_0,\qquad c/\xi_k\longrightarrow\kappa.$$
Consequently VI.2.9(a)–(c) hold and $\xi_k\to c/\kappa\ne0$.

*Sketch.* The centred stress $J_c$ lies in $\ker\mathrm{div}^S$. It is nonzero: otherwise the translation Ward identity would make the derivative tuple in degree four zero. Its transported limit would then contradict the nonzero free derivative. The kernel is a real line, so $cJ_c=J_0$ for some $c\ne0$. Comparing their translation Ward identities gives $p^I=cW$ in degree four.

Along tracks, the transported derivatives tend to $\partial^{\rm free}$, whereas the transported Ward rows of $J_0$, divided by $\xi_k$, tend to $\kappa\partial^{\rm free}$. Since the free derivative is nonzero, a separating linear functional gives $c/\xi_k\to\kappa$. Therefore
$$U_{k,4}^{-1}(r_k^4J_c)=\frac{\xi_k}{c}\bigl[\xi_k^{-1}U_{k,4}^{-1}(r_k^4J_0)\bigr]\longrightarrow\kappa^{-1}T_0.$$
The unit part tends to zero because $r_k^4\to0$ and the maps eventually preserve the unit. VI.2.u applies to these convergent preimages in every combination of slots, giving the mixed-correlation limit. VI.2.n and the equality of the two displayed free-stress constructions give the canonical limit $-T^{\rm free}$.
*Lean:* [`centered_line`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L82-L116), [`ratio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L62-L66), [`meter_physical`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L118-L144), [`mixed_leading`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lifted.lean#L85-L124), [`tracks_ratio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L43-L54).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

The transfer to $S$ depends on exact field-space isomorphisms, not merely comparison maps. Finite separating tests and the upper dimension bound provide them. The derivative law then turns the uniform test estimates into convergence of transported derivatives and smooth correlations. Recentring is necessary before transferring divergence: a field-space isomorphism need not preserve the expectation functional.

The normalization is a separate assertion. Conservation determines a line, while the Ward identity determines a point on it. Comparing that identity along tracks removes the initially unknown factor $\xi_k$ and fixes the negative free-stress limit.

Two algebraic rigidity results support VI.1: detection of arbitrary-weight fields by bounded-degree spectators, and vanishing of alternating internal Ward rows. They require more than reflection positivity alone. The three-dimensional tensor space also reflects the chosen symmetry group: signed coordinate permutations permit three coefficients, and conservation reduces them to one. The local current calculation admits conformal Killing fields, although the polynomial Ward argument uses only translations, rotations and dilation.

<a id="unit-notation"></a>

## 6. Notation

- **object:** free Maxwell table

  **code name:** [`Maxwell.freeTable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L23-L24), [`Climb.Bel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L20), `Maxwell.Free.Model`

  **proposed notation:** $\mathcal M$, fields $\mathcal F^{\rm free}_d$

- **object:** homogeneous on-shell Taylor coefficients, polynomial algebra

  **code name:** [`Shell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L44), [`WickPol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L24)

  **proposed notation:** $\mathrm{Sh}_j$, $\mathcal W$

- **object:** shell sector

  **code name:** [`shellSector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L64)

  **proposed notation:** $\mathcal P_d$

- **object:** field ↔ polynomial

  **code name:** [`fields`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L33-L35), [`address`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L39)

  **proposed notation:** $\iota_d$

- **object:** Wick moment

  **code name:** [`Wick.moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127)

  **proposed notation:** $\langle p_1(x_1)\cdots p_n(x_n)\rangle_0$

- **object:** probe evaluation, generated field, leg kernel

  **code name:** [`sample`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Kernel.lean#L22-L23), [`pulse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Kernel.lean#L101-L102), [`K`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Kernel.lean#L123)

  **proposed notation:** $p(f)(x)$, $f^{p,x}$, $\langle p(x)q(y)\rangle_0$

- **object:** derivative plan, rotations

  **code name:** [`scheme`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L80-L83), [`gear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L153-L170), [`rewired`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Derives.lean#L27-L28) (`glide`, `wheel`, `metric`)

  **proposed notation:** $\partial^{\rm free}_a$; $R_g$, $\rho(\omega)$; $\varepsilon$

- **object:** free Maxwell stress

  **code name:** [`polStress`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Stress.lean#L24-L25), [`original`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L172), [`canonicalStress`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L82), [`torch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L111)

  **proposed notation:** $T^{\rm free}$, $\tau T^{\rm free}$

- **object:** polarized stress, current, flux

  **code name:** [`cross`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L31-L33), [`current`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L145), [`exportFlux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L184-L185)

  **proposed notation:** $\Theta_{ab}$, $j^v$, $\Phi_\chi$

- **object:** conformal Killing field, Lie derivative

  **code name:** [`Killing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L140-L143), [`variation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Regulator.lean#L49)

  **proposed notation:** $v$, $\mathcal L_vf=d\iota_vf$

- **object:** centred stresses, vectors, divergence

  **code name:** [`KernelSpace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Tensor.lean#L75-L80), [`Vectors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Tensor.lean#L87-L97), [`currentDiv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Tensor.lean#L117-L119)

  **proposed notation:** $\mathcal Z$, $\mathcal V$, $\mathrm{div}$

- **object:** free divergence property

  **code name:** [`FreeDiv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Dimension.lean#L153-L158)

  **proposed notation:** (FD)

- **object:** lighthouse, Maxwell data

  **code name:** [`Climb.Lighthouse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L24-L29), [`herald`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L29-L34), [`Org.MaxwellData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170)

  **proposed notation:** $\mathcal T=(\partial^0,R^0,T_0,\kappa)$, $M$

- **object:** null-test space, Ward vanishing

  **code name:** [`ghost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Statistic.lean#L65-L76), [`silence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Statistic.lean#L40-L42)

  **proposed notation:** $\mathcal N_d$; $\sum_i\langle\cdots T p_i\cdots\rangle=0$

- **object:** station, admissibility, estimates

  **code name:** [`Station`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L68-L71), [`Stations`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L112-L114), [`Granular`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L30-L34), [`Balances`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Glide.lean#L24-L31)

  **proposed notation:** $(r,A_{N,p})$

- **object:** panel, scaling, rescaled derivative

  **code name:** [`Panel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L118), [`Climb.Scaling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31), [`tiltScale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Focus.lean#L19-L20)

  **proposed notation:** $U$; $(r_k,\xi_k,U_k)$; $\mathrm{tilt}_k$

- **object:** uniform test convergence, stability, stress limit

  **code name:** [`Approaches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L52-L53), [`Fades`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Weak.lean#L24-L27), [`Stable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L121-L125), [`Scaling.meter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L54-L55)

  **proposed notation:** —


<a id="unit-limitations"></a>

## 7. What remains unexplained
1. **Inputs not checked through all subsidiary proofs.** The reflected Gram positivity and Fock pairing factorization in VI.2.b were checked at statement level. The Haar-averaging and Ward-implied conservation and symmetry results used in VI.2.m were also checked at statement level. The invariant spanning results behind VI.2.k, the differentiated propagator table behind VI.2.l, and the low-degree vector-map classification and bounded-order detection behind VI.2.o remain inputs to the sketches. Their direct applications and hypotheses were checked, but their full derivations were not independently reconstructed.
2. **Lorentz and Casimir data.** The representation, descent and generator statements were checked, together with their use in assembly. The complexified-rotation construction of the representation and the Casimir proofs A09–A12 were not checked in full.
3. **Renormalization-group estimates.** The conversion of balanced grid, bulk and finite-difference estimates into stations was checked here. Their production in III.11, including all parameter choices in the complete weak-comparison result and the shell estimates needed for the interacting Ward rows, remains to be verified in that unit. The excluded region here is precisely a band around coordinate-projection ties; it is not a neighbourhood of the full collision diagonal.
4. **Short-distance normalization.** The comparison of derivative and stress rows uses the track estimates of VI.1. The scalar-ratio argument and its application here were checked; the underlying track Ward estimates A04–A05 remain inputs. The mixed-correlation theorem is stated in Lean for the stress assembled in VI.1; VI.2.9(b) gives the general consequence of the same convergent-preimage argument.

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md), [III.16](III-16.md), [IV.1](IV-1.md), [VI.1](VI-1.md), [II.1](II-1.md), [VIII.1](VIII-1.md).

**Referenced by:** [VIII.1](VIII-1.md), [VII.2](VII-2.md), [III.11](III-11.md), [VII.3](VII-3.md), [VII.6](VII-6.md), [VII.1](VII-1.md).

## Lean source

**Source allocation:** 14,179 attributed lines; 1,690 line-counted declarations; 1,944 assigned declaration names. Of the assigned names, 1,922 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- work package [`YM/Next/MAXWELL/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL) — 8,208 lines.
- work package [`YM/UVNext/FREE_STRESS_CERTIFICATE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE) — 3,148 lines.
- work package [`YM/Next/UV_STRESS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS) — 2,602 lines.
- work package [`YM/Pert/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert) — 221 lines.

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-vi-2-1"></a>

- **K-VI.2.1** [`variation_center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Affine.lean#L180-L218) *(numbered result)* — Centered field weights for a Killing generator pick out a single jet order and act by the transformation on the homogeneous solution.

<a id="k-vi-2-2"></a>

- **K-VI.2.2** [`kernel_pole`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Pole.lean#L238-L260) *(key result)* — The leg kernel between two jet probes is a harmonic multipole of order 4+j+l.

<a id="k-vi-2-3"></a>

- **K-VI.2.3** [`two_flux_zero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Repeat.lean#L63-L128) *(key result)* — For a Killing drive with homogeneity at most one and a cutoff equal to one near x, the double flux of two pulses at x vanishes.

<a id="k-vi-2-4"></a>

- **K-VI.2.4** [`halves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Fock.lean#L188-L206) *(numbered result)* — A pairing cost over a concatenated reflected and original list factors as a bilinear form between two packets under weight compatibility.

<a id="k-vi-2-5"></a>

- **K-VI.2.5** [`classification`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Stabilizer.lean#L145-L179) *(key result)* — Linear maps satisfying the symmetric propagator pairing are all scalar multiples of the canonical feed map.

<a id="k-vi-2-6"></a>

- **K-VI.2.6** [`local_force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Contact.lean#L137-L156) *(key result)* — The flux of the pulse source at the marked leg against a test function equals minus the variation of the action, i.e. the local Ward charge identity.

<a id="k-vi-2-7"></a>

- **K-VI.2.7** [`jet_force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Force.lean#L131-L186) *(main result)* — For a wave-type variation, the single flux of a jet probe pulse equals minus the sample of the variation at the point.

<a id="k-vi-2-8"></a>

- **K-VI.2.8** [`level_detects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Strict.lean#L122-L142) *(key result)* — If a polynomial in jets vanishes at the heat level at a point off the reflection plane, it annihilates every Taylor tower.

<a id="k-vi-2-9"></a>

- **K-VI.2.9** [`coordGram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Gram.lean#L82-L105) *(key result)* — For any finite alphabet of one-point coordinate probes, the reflected Gram matrix at a point off the reflection plane is positive definite.

<a id="k-vi-2-10"></a>

- **K-VI.2.10** [`spot_high`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Grain.lean#L81-L113) *(numbered result)* — A test function pairing with a bounded function is bounded by M times (α·volume plus A·band cost·σ) given a smaller bound near the singular film.

<a id="k-vi-2-11"></a>

- **K-VI.2.11** [`cost_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Annulus.lean#L195-L226) *(numbered result)* — The signed comparison cost passes to the limit along a filter, with coefficients allowed to vary with cutoffs.

<a id="k-vi-2-12"></a>

- **K-VI.2.12** [`single_cross`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Contact.lean#L106-L124) *(key result)* — The single-contraction cross stress flux through a cutoff equal to one near the origin equals minus the derivative of the field component at the origin.

<a id="k-vi-2-13"></a>

- **K-VI.2.13** [`names`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pressure.lean#L167-L171) *(key result)* — For simple gauge group and nonzero τ, any Maxwell data can be replaced by canonical Maxwell data with current torch, κ=-τ, same vacuum, window and kernel, and free divergence property.

<a id="k-vi-2-14"></a>

- **K-VI.2.14** [`exposed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Hidden.lean#L113-L137) *(key result)* — For a simple gauge group there is a single weight bound d such that any polynomial in the shell sector that lies in the ghost (weight ≤ d) space must vanish.

<a id="k-vi-2-15"></a>

- **K-VI.2.15** [`maxwell_supplies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L45-L48) *(key result)* — For a simple gauge group there exists Maxwell data realizing the free-field time evolution and vacuum.

<a id="k-vi-2-16"></a>

- **K-VI.2.16** [`equivalences`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L132-L181) *(key result)* — The weak estimates at stations produce a scaling whose path gives the exact isomorphisms between the two hierarchies.

<a id="k-vi-2-17"></a>

- **K-VI.2.17** [`cutoff_balance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Glide.lean#L102-L129) *(key result)* — The actual cutoff smears differ from the target smears by at most Mε in the upper-limit sense along the ordered filter.

<a id="k-vi-2-18"></a>

- **K-VI.2.18** [`battery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/TripleMeter.lean#L63-L80) *(numbered result)* — The three-point function with a torch insertion equals an explicit product of charge and crossing of bare curls, the only sector needed for the flux coefficient.

<a id="k-vi-2-19"></a>

- **K-VI.2.19** [`moment_one`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Recurse.lean#L123-L145) *(numbered result)* — Multiplying a site's polynomial by a probe symbol equals a sum over contractions of the probe with the other sites.

<a id="k-vi-2-20"></a>

- **K-VI.2.20** [`supply_wheel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L121-L128) *(key result)* — For large scale, the station is admissible: the quantitative payment estimates hold uniformly over all caps and words.

<a id="k-vi-2-21"></a>

- **K-VI.2.21** [`moment_force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Taxes.lean#L177-L200) *(key result)* — For arbitrary Wick polynomials, the shell flux of the composite stress insertion equals minus the moment with the first polynomial rewired by the generator.

<a id="k-vi-2-22"></a>

- **K-VI.2.22** [`triangle_test`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Triangle.lean#L365-L371) *(key result)* — For probes tested at three distinct points with repeated letters at two sites, the triplet Wick moment equals four times a product of leg kernels in a triangle pattern.

<a id="k-vi-2-23"></a>

- **K-VI.2.23** [`produce_current`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L129-L167) *(key result)* — One can construct a nonzero divergence-free current in the kernel, with a coherent scaling along one curve, from the weak comparison.

<a id="k-vi-2-24"></a>

- **K-VI.2.24** [`precise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Layout.lean#L118-L154) *(key result)* — For grid layouts of mixed arrays, there are constants controlling the correlation estimates eventually along the filter, using that cells are distinct on the torus.

<a id="k-vi-2-25"></a>

- **K-VI.2.25** [`scanner`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Scenes.lean#L125-L132) *(key result)* — For a simple gauge group, for all sufficiently large d there is a selection at level d that ensembles the scheme against the hierarchy's spin.

<a id="k-vi-2-26"></a>

- **K-VI.2.26** [`shines`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L36-L42) *(key result)* — For a simple gauge group and nonzero parameter τ, the herald for a register realizes the free hierarchy's spin.

<a id="k-vi-2-27"></a>

- **K-VI.2.27** [`harvested`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L132-L180) *(numbered result)* — An admissible station yields a panel that is straight and approximates the continuum kernels on tests up to the stated error.

<a id="k-vi-2-28"></a>

- **K-VI.2.28** [`commute_ghost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Statistic.lean#L104-L150) *(key result)* — Under a Ward-type vanishing hypothesis, the commutator of the rewiring operator with a stress-annihilating map lies in the ghost ideal at the given degree.

<a id="k-vi-2-29"></a>

- **K-VI.2.29** [`align`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Parity.lean#L88-L103) *(numbered result)* — A vector with a given binary parity character lies in a subspace if it holds on spanning generators of matching aligned parity.

<a id="k-vi-2-30"></a>

- **K-VI.2.30** [`differential_rank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Dimension.lean#L165-L195) *(key result)* — Under stable scaling approximation, the current-divergence map is onto and its kernel is one-dimensional (a single stress line).

<a id="k-vi-2-31"></a>

- **K-VI.2.31** [`charges_quiet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Magnitude.lean#L142-L181) *(key result)* — For vectors of models in the specified color class, the quiet condition holds iff the vector is a real multiple of the leaves vector.

<a id="k-vi-2-32"></a>

- **K-VI.2.32** [`erasing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/AwayTeam.lean#L48-L118) *(key result)* — For a simple gauge group, the free hierarchy's spin structure satisfies the internal finite Ward (erasing) test for the scheme.

<a id="k-vi-2-33"></a>

- **K-VI.2.33** [`capped_v`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/VRank.lean#L102-L116) *(key result)* — The space of vectors in the Bianchi/Maxwell quotient has dimension at most two.

<a id="k-vi-2-34"></a>

- **K-VI.2.34** [`detects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Core.lean#L94-L110) *(key result)* — For a nonzero Wick polynomial and a point at positive distance from the reflection plane, the reflected score is strictly positive.

<a id="k-vi-2-35"></a>

- **K-VI.2.35** [`exhaust`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/StressSpace.lean#L115-L122) *(key result)* — Every element of the kernel space of the stress certificate equals a three-parameter painted stress form.

<a id="k-vi-2-36"></a>

- **K-VI.2.36** [`positive_table`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Caps.lean#L137-L155) *(key result)* — The free table of the Maxwell field is reflection positive.

<a id="k-vi-2-37"></a>

- **K-VI.2.37** [`mixed_leading`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lifted.lean#L85-L124) *(key result)* — On compact separated sets, scaled physical mixed correlators converge in all derivatives to the free mixed-tag correlators built from the Maxwell data.

<a id="k-vi-2-38"></a>

- **K-VI.2.38** [`hierarchy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L106-L114) *(key result)* — The free Maxwell model satisfies the hierarchy axioms of ranks, derivatives and multipole bounds.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

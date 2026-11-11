# VI.2. The free Maxwell stress tensor and the local Ward charge

*Part VI — Symmetry: stress tensor and Ward identities.*

Builds the free Maxwell stress tensor and uses comparison data to normalize the interacting Ward identities.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/VI-2.md) · [← Previous: VI.1](VI-1.md) · [Next: VII.1 →](VII-1.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** VI, symmetry: stress tensor and Ward identities. **Lean:** [`YM/Next/MAXWELL`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL), [`YM/UVNext/FREE_STRESS_CERTIFICATE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE), [`YM/Next/UV_STRESS`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS), [`YM/Pert`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert). **Size:** 14,179 lines in the source allocation (Maxwell 8.2k, free-stress classification 3.1k, UV stress 2.6k, Pert 0.2k).

</details>

<a id="unit-results"></a>

## 1. What this unit proves

Throughout, $G$ satisfies I.1, $\mathfrak g$ is its Lie algebra, spacetime indices run from zero to three, and $c$ indexes an orthonormal colour basis. A Maxwell wave is a smooth $\mathfrak g$-valued two-form satisfying $df=0$ and $\sum_a\partial_af_{ab}=0$. The algebra $\mathcal W$ consists of complex polynomials in homogeneous on-shell Taylor coefficients of order $j$, weighted $j+2$; $\mathcal P_d$ is its $\mathrm{Ad}(G)$-invariant sector of weight at most $d$. Wick correlations contract only between sites, using the curl–curl of $G_0(x)=(4\pi^2|x|^2)^{-1}$. Set
$$T^{\rm free}_{ab}=\sum_{c,i}F^c_{ai}F^c_{bi}-\tfrac14\delta_{ab}\sum_{c,i,k}F^c_{ik}F^c_{ik}.$$
Let $\Theta$ be its bilinear polarization, normalized by $\Theta(f,f)=2T^{\rm free}(f)$; $j^v_a=\sum_bv_b\Theta_{ab}$ and $\Phi_\chi(j)=-\sum_a\int\partial_a\chi\,j_a$.

**Proposition VI.2.1 (free table).** For every register $L$ and $d\ge0$, substitution gives a complex linear isomorphism $\iota_d:\mathcal F^{\rm free}_d\to\mathcal P_d$; a label is null exactly when its polynomial vanishes on every on-shell Taylor tower. Correlations are Wick moments. The table satisfies IV.1's Euclidean hierarchy, including point and smeared reflection positivity, and is real-analytic at distinct points. Each fixed correlation derivative is bounded by $Cr^{-A}$ for mutual sup-distances at least $r$, $0<r\le1$, with $A,C\ge0$. Taylor differentiation gives $\partial^{\rm free}:\mathcal F_d^{\rm free}\to\mathcal F_{d+1}^{\rm free}$ with inclusion, derivative and orientation laws. The $O(4)$ action and generators $\rho$ satisfy VI.1's rotation laws and preserve correlations. The stress is symmetric, real, traceless, centred and conserved in degree five. Simplicity is unnecessary.
*Status:* theorem. *Lean:* [`hierarchy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L106-L114), [`fields`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L33-L35), [`realStress`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L176-L179).

**Proposition VI.2.2 (local charge).** Let $U$ be open, $x\in U$, $f$ a Maxwell wave on $U$, $v$ a smooth conformal Killing field on $\mathbb R^4$, and real $\chi\in C_c^\infty(U)$ equal one near $x$. Put $f^{p,x}(y)=\langle p(F)(x)F(y)\rangle_0$. For each component probe $p=F^c_{il}$,
$$\Phi_\chi(j^v(f^{p,x},f))=-p(\mathcal L_vf)(x),\qquad\mathcal L_vf=d\iota_vf.$$
If $\mathcal L_vf$ is a Maxwell wave, this holds for every probe of every order $j\ge0$. Translations, centred rotations and dilation give respectively $-\partial_a[p(f)]$, $-(\omega\cdot p)(f)$ and $-(j+2)p(f)$ at $x$. Flux vanishes for two Maxwell waves near $\mathrm{supp}\,\chi$, and for two generated fields with source $x$ when $v$ is homogeneous about $x$ of degree zero or one.
*Status:* theorem. *Lean:* [`Maxwell.Free.local_force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Contact.lean#L137-L156), [`jet_force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Force.lean#L131-L186), [`two_flux_zero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Repeat.lean#L63-L128).

**Proposition VI.2.3 (polynomial Ward identities).** For $n\ge0$, distinct $x_0,\ldots,x_n$, $p_i\in\mathcal W$, and real $\chi\in C_c^\infty$ equal one near $x_0$ with spectators outside its support,
$$-\sum_{a,b}\int\partial_a\chi(y)v_b(y)\langle T^{\rm free}_{ab}(y)\prod_i p_i(x_i)\rangle_0\,dy=-\langle(Dp_0)(x_0)\prod_{i>0}p_i(x_i)\rangle_0.$$
Here $(v,D)$ is $(e_a,\partial_a)$, $(\omega(y-x_0),\rho(\omega))$ for $\omega\in\mathfrak{so}(4)$, or $(y-x_0,\varepsilon)$, where $\varepsilon$ multiplies monomials by weight. Thus $\tau T^{\rm free}$ has translation/rotation rows $-\tau\partial^{\rm free},-\tau\rho$ for every real $\tau$; normalization to $+\partial^{\rm free}$ gives $-T^{\rm free}$.
*Status:* theorem. *Lean:* [`Maxwell.Free.moment_force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Taxes.lean#L177-L200).

**Proposition VI.2.4 (free stress line).** Suppose $G$ is simple and $W$ satisfies the free derivative and orientation laws. Its derivative maps are $\partial^{\rm free}$. Let $\mathcal Z$ be the real space of centred symmetric real signed-covariant degree-four tensors, and $\mathcal V$ the real signed-covariant degree-five vectors. Then
$$\mathrm{div}:\mathcal Z\twoheadrightarrow\mathcal V,\quad\dim_{\mathbb R}\mathcal Z=3,\quad\dim_{\mathbb R}\mathcal V=2,\quad\ker\mathrm{div}=\mathbb RT^{\rm free}.$$
Every lighthouse with this plan and stress $\tau T^{\rm free}$, $\tau\ne0$, satisfies (FD).
*Status:* theorem. *Lean:* [`certificate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L125-L132).

**Proposition VI.2.5 (Maxwell data).** For simple $G$, every Wilson family $C$ and real $\tau\ne0$, $(\partial^{\rm free},R,\tau T^{\rm free},-\tau)$ satisfies all lighthouse laws and extends to Maxwell data for $C$. The derivative is nonzero in degree four. For all sufficiently large $d$, finitely many derivatives of Ward sums at distinct collinear configurations perpendicular to the component axis detect exactly $\mathbb R\partial^{\rm free}$ among complex linear vector maps $\mathcal F_d^{\rm free}\to\mathcal F_{d+1}^{\rm free}$ that kill the unit, are real, signed-covariant and preserve every lower-degree image with degree raised by one.

The datum includes the hierarchy, VI.1's Casimir data, and compatible degreewise continuous proper orthochronous Lorentz representations, agreeing with spatial rotations, commuting with time-reflected conjugation and having boost generator $-i\rho$. For every $d\ge4$, any alternating real-bilinear family of complex linear endomorphisms of $\mathcal F_d^{\rm free}$ $T(u,v)$, $u,v\in\mathfrak{so}(4)$, that is real, equivariant under orientation-preserving signed permutations, kills the unit and preserves lower-degree images, vanishes if all its Ward sums vanish for every $u,v$, every arity $m\ge0$, every degree-$d$ field tuple and every distinct-point configuration. Every Maxwell datum can retain its plan, rotations, hierarchy and Lorentz representation while acquiring stress $\tau T^{\rm free}$, full stress rotation covariance and (FD). Its Ward constant is necessarily $-\tau$.
*Status:* theorem. *Lean:* [`maxwell_supplies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L45-L48), [`FreeStress.fire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L137-L150), [`required`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pressure.lean#L158-L161).

**Proposition VI.2.6 (strict positivity).** For every axis $a$, $x_a>0$ and nonzero $p\in\mathcal W$, $\langle(\vartheta_ap)(\theta_ax)p(x)\rangle_0>0$. Every finite set of distinct coordinate probes has positive-definite reflected propagator Gram matrix there. Finite families of positive-half-space words, with distinct sites within each word, satisfy reflection positivity. For every $d\ge0$, a polynomial in $\mathcal P_d$ annihilated by all distinct-point spectator tests from $\mathcal P_d$ is zero.
*Status:* theorem. *Lean:* [`detects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Core.lean#L94-L110), [`ghosts_out`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Statistic.lean#L80-L99).

**Proposition VI.2.7 (limit stress).** Assume II.2's Wilson construction conditions, ordered smeared convergence and generic point limits along $F$ to a table $S$ with Euclidean hierarchy $H$, an inclusion/derivative plan $W$ on $S$, a free hierarchy $H_0$, and a lighthouse with inclusion, derivative, orientation and (FD) laws. Assume VI.2.8's station property and $\dim_{\mathbb C}\mathcal F_d^S\le\dim_{\mathbb C}\mathcal F_d^{\rm free}$ for all $d\ge0$. There exists an approaching stable scaling $X=(r_k,\xi_k,U_{k,d})$, initially with $\xi_k=1$. For every such scaling, interacting divergence $\mathcal Z^S\to\mathcal V^S$, defined as in VI.2.4, is onto with one-dimensional real kernel. There exist $0\ne J\in\mathcal Z^S$ with zero divergence and an approaching stable refinement $Y$ by subsequence and change of $\xi_k$ such that
$$\xi_k^{-1}U_{k,4}^{-1}(r_k^4J_{ab})\to T_{0,ab}.$$
For every finite arity/degree/derivative bound and $R\ge1$, tails give tracks intertwining symmetries, units and inclusions through degree $\max(d,4)$, satisfying the stress limit above, with correlation derivatives converging uniformly on $K_{R,n}$ for each fixed tuple; tails may depend on tuple and tolerance. Thus $J$ satisfies VI.1's comparison law.
*Status:* conditional theorem. *Lean:* [`Stations.equivalences`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L132-L181), [`produce_current`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L129-L167).

**Proposition VI.2.8 (stations).** Fix the extraction data of VI.2.7. A depth-$D$ station consists of $r>0$ and complex linear lattice lifts $A:\mathcal F_d^{\rm free}\to\mathrm{Ref}_d$, $d\le D$. Admissibility requires eventual uniform boundedness, reality, signed covariance and preservation of the degree-zero unit, and, for every tuple of arity $n\le n_{\max}$ and degrees at most $D$, smooth complex test supported in $K_{R,n}$, $M>0$ with $\|t\|_\infty\le M$, and $\eta>0$, eventual lattice/free smeared discrepancy along the ordered cutoff tails at most $\varepsilon M\prod_i\|v_i\|+\eta$, using test $r^{-4n}t(\cdot/r)$. An admissible station yields complex linear continuum maps with the same symmetries and estimate without $\eta$:
$$\left|\int t(y)\left[\langle\prod_i Uv_i(ry_i)\rangle^S-\langle\prod_i v_i(y_i)\rangle_0\right]dy\right|\le\varepsilon M\prod_i\|v_i\|.$$

The cutoff tail may depend on the tuple, test, $M$ and $\eta$. The station property requires these for every $D,n_{\max}\ge0$, $R\ge1$ and $\varepsilon,\delta>0$, with $r\le\delta$. Balanced grid, strip and finite-difference estimates of detailed Lemma VI.2.s, for all finite bounds, imply it.
*Status:* definitions and conditional theorems. *Lean:* [`Station.Admissible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L89-L97), [`harvested`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L132-L180), [`realizes_stations`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L134-L140).

**Proposition VI.2.9 (normalized limit).** Let $C$ be a Wilson family, $F$ an extraction order, $S$ a table with plan $W$, $M$ a Maxwell datum with lighthouse Ward constant $\kappa\ne0$, and $I=(J_0,p^I,Y^I)$. Assume VIII.1's ultraviolet-data conditions for these objects. Assume $W$'s inclusion/derivative laws, $0\ne J_0\in\mathcal Z^S$, (FD), and an approaching stable scaling with $\xi_k^{-1}U_{k,4}^{-1}(r_k^4J_{0,ab})\to T_{0,ab}$. Every symmetric real conserved signed-covariant $J\in(\mathcal F_4^S)^{4\times4}$ satisfying translation Ward rows $W$ and some rotation Ward rows obeys
$$U_{k,4}^{-1}(r_k^4J_{ab})\to\kappa^{-1}T_{0,ab}.$$
For every finite free-field tuple, any mixture of transported fields and rescaled stress slots converges with every derivative uniformly on compact distinct-point sets to the free correlation with every stress slot replaced by $\kappa^{-1}T_0$; the interacting insertions are evaluated at $r_ky_i$. Canonically $\kappa=-1$, so each stress slot tends to $-T^{\rm free}$.
*Status:* conditional theorem. *Lean:* [`Pert.meter_physical`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L118-L144), [`Pert.mixed_leading`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lifted.lean#L85-L124).

<a id="unit-inputs"></a>

## 2. What it uses

- III.16: Taylor spaces and Wick moments; IV.1: quotient fields, extraction and dimension bound.
- V.1: smeared positivity and derivative bounds; VI.1: Ward, rotation, track and Casimir laws.
- III.10: Maxwell assembly; III.11: balanced comparison and shell estimates.
- VII.5: normalization ratios; VIII.1: data conditions.
- Standard results: Wick/Fock factorization, Gaussian reflection positivity, Cartan's formula, approximate identities, rank–nullity, compactness and Fourier inversion.

<a id="unit-strategy"></a>

## 3. Strategy

Strict reflected positivity identifies quotient fields with on-shell polynomials. Local flux gives the Ward identities; finite-dimensional classification gives the conserved stress line. Stations produce comparison isomorphisms. Transporting derivatives and recentering tensors transfers divergence rank to the interacting table. Conservation determines its stress line, and translation Ward identities fix its normalization.

<a id="unit-steps"></a>

## 4. Steps

1. Factor reflected Wick pairings through a positive-definite Gram matrix and the Fock inner product; invertibility excludes residual polynomials. [`core`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Core.lean#L44-L92).
2. Smooth the Green kernel, integrate by parts twice and remove the approximate identity to obtain $-\mathcal L_vf$; differentiate the source for higher probes. [`local_force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Contact.lean#L137-L156), [`jet_force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Force.lean#L131-L186).
3. Split Wick contractions by the destinations of the stress legs. Homogeneity and source-free conservation cancel the unmixed terms. [`fees`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Taxes.lean#L115-L172).
4. Classify three tensors and at most two vectors; two independent propagator tests give divergence rank two. [`rank_on`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L43-L47).
5. Bounded-degree spectators detect arbitrary weights; dilation and inversion eliminate derivative candidates after subtracting a scalar derivative. Rotational Ward identities and quarter turns eliminate alternating internal rows, completing Maxwell data with the Lorentz and Casimir inputs. [`scanner`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Scenes.lean#L125-L132), [`erasing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/AwayTeam.lean#L48-L118).
6. Balanced strip-volume and grid-interpolation errors give stations. Compactness of bounded lifts and ordered smeared convergence produce continuum panels. [`cutoff_balance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Glide.lean#L102-L129), [`harvested`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L132-L180).
7. Correct station panels to preserve inclusions; separating tests give injectivity, and the dimension bound gives isomorphisms. [`Stations.equivalences`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L132-L181).
8. Integration by parts gives $r_kU_{k,d+1}^{-1}W_aU_{k,d}\to\partial_a^{\rm free}$; gradient closure and Fourier inversion give smooth convergence. Recentring then permits rank transfer. [`travels_jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Focus.lean#L183-L196), [`differential_rank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Dimension.lean#L165-L195).
9. Compactness on a normalized stress sphere selects a conserved limit; (FD) identifies it with $T_0$ after one sign choice. Writing $c(J-\langle J\rangle\mathbf1)=J_0$, comparing Ward rows gives $c/\xi_k\to\kappa$ and the physical limit. [`produce_current`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L129-L167), [`meter_physical`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L118-L144).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

Exact isomorphisms and recentering are needed for rank transfer. Bounded-degree detection and alternating Ward-row rigidity require more than positivity. Conservation fixes a line; Ward normalization fixes its scale and sign.

<a id="unit-notation"></a>

## 6. Notation

$\theta_a,\vartheta_a$: reflection in $y_a=0$ and reflected conjugation. A probe of order $j$ is a real linear functional on the homogeneous order-$j$ on-shell Taylor space. $\mathcal F_d^S$: degree-$d$ fields. $T_0,\kappa$: lighthouse stress and Ward constant. $R,\rho$: free rotations and their generators. $\mathrm{div}J=\sum_aW_aJ_{ab}$. (FD): onto divergence, one-dimensional kernel, nonzero centred conserved stress. $K_{R,n}$: configurations of total norm at most $R$ and mutual sup-distance at least $R^{-1}$. Scaling: isomorphisms $U_{k,d}$, strictly decreasing $r_k\to0$, $\xi_k>0$; approaching means, for each fixed field tuple, the rescaled interacting/free correlation difference tends to zero uniformly against smooth complex tests supported in any fixed compact subset of $\mathrm{Conf}_n$ with sup norm at most one; $\mathrm{Conf}_n$ denotes distinct-point configurations; stable means eventual compatibility with reality, signed symmetries, units and inclusions.

<a id="unit-limitations"></a>

## 7. What remains unexplained

Subsidiary Gram/Fock, invariant-spanning, propagator-table, bounded-order detection, averaging, Lorentz and Casimir proofs remain inputs. III.11 must supply balanced estimates and shell bounds; underlying track Ward estimates also remain inputs. Lean's mixed-correlation theorem specializes to VI.1's assembled stress.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/VI-2.md).

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

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`YM.Bid.masts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Scope.lean#L24-L29)
- [`Climb.Lighthouse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L24-L29)
- [`Lighthouse.Goes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L34-L42)
- [`ActLaw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L50-L51)
- [`Climb.Bel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L20)
- [`Climb.Scaling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31)
- [`Scaling.meter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L54-L55)
- [`freeTable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L23-L24)
- [`shellSector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L64)
- [`Table.StressLaws`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L90-L97)
- [`YM.Extra.WeakScaling.flux_nontrivial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Criteria.lean#L64-L70)
- [`YM.Extra.WeakScaling.tracks_ratio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L43-L54)
- [`WickPol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L24)
- [`YM.Maxwell.observable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L66-L67)
- [`Shell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L44)
- [`YM.Maxwell.Wick.moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127)
- [`MergeProof.East.CompleteWeak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L35)
- [`YM.MergeProof.Acme.readyA`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L15-L30)
- [`YM.MergeProof.Acme.emanate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L31-L37)
- [`radial_flux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Affine.lean#L220-L247)
- [`drift_flux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Affine.lean#L249-L255)
- [`sector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Algebra.lean#L108-L116)
- [`angular_flux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Angular.lean#L181-L195)
- [`complete_turn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/AwayTeam.lean#L29-L46)
- [`gear_laws`, `gear_motion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Beacon.lean#L54-L61)
- [`beacon_signal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Beacon.lean#L74-L136)
- [`born`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Born.lean#L51-L70)
- [`cap_moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Caps.lean#L69-L75)
- [`no_residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Caps.lean#L90-L113)
- [`Contact.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Contact.lean#L56-L98)
- [`Killing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L140-L143)
- [`current`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L145)
- [`current_div`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L151-L181)
- [`exportFlux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L184-L185)
- [`singleFlux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L187)
- [`sourcefree_flux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L239-L250)
- [`cross`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L31-L33)
- [`low_motion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Depth.lean#L162-L181)
- [`rewired`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Derives.lean#L27-L28)
- [`voyage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Descent.lean#L173-L177)
- [`launched`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Descent.lean#L179-L181)
- [`matrix_meal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Hidden.lean#L66-L87)
- [`pulse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Kernel.lean#L101-L102)
- [`K`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Kernel.lean#L123)
- [`sample`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Kernel.lean#L22-L23)
- [`Maxwell.Free.herald`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L29-L34)
- [`regulated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Regulator.lean#L147-L148)
- [`variation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Regulator.lean#L49)
- [`finite_lenses`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Scenes.lean#L92-L123)
- [`silence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Statistic.lean#L40-L42)
- [`ghost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Statistic.lean#L65-L76)
- [`polStress`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Stress.lean#L24-L25)
- [`pol_conservation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Stress.lean#L76-L117)
- [`cabinets_positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Studio.lean#L141-L158)
- [`gear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L153-L170)
- [`original`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L172)
- [`address`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L39)
- [`scheme`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L80-L83)
- [`Motion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Taxes.lean#L24-L28)
- [`straight_motion`, `rotational_motion`, `radial_motion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Taxes.lean#L34-L60)
- [`signed_section`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Arrange.lean#L29-L72)
- [`corrected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Arrange.lean#L78-L81)
- [`FreeDiv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Dimension.lean#L153-L158)
- [`centerEquiv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Dimension.lean#L77-L82)
- [`closed_path`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Focus.lean#L158-L181)
- [`tiltScale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Focus.lean#L19-L20)
- [`scaled_identity`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Focus.lean#L22-L48)
- [`bend_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Focus.lean#L67-L92)
- [`Wheel.Spots`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Fringe.lean#L38-L42)
- [`Balances`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Glide.lean#L24-L31)
- [`pays_film`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Glide.lean#L72-L99)
- [`Granular`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L30-L34)
- [`DimAbove`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L108)
- [`cap_given`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L110-L115)
- [`Stable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L121-L125)
- [`MeterTest.injects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L88-L103)
- [`on_axis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L106-L124)
- [`focused_track`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L173-L194)
- [`focused`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L197-L202)
- [`subsector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L53-L68)
- [`center_expect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L88-L104)
- [`GradientFamily.jets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Local.lean#L152-L181)
- [`Stations.ranging`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L27-L41)
- [`Approaches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L52-L53)
- [`Stations.build_curve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L55-L73)
- [`Stations`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L112-L114)
- [`Panel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L118)
- [`Station`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L68-L71)
- [`currentDiv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Tensor.lean#L117-L119)
- [`KernelSpace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Tensor.lean#L75-L80)
- [`Vectors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Tensor.lean#L87-L97)
- [`calibrated_smear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Vary.lean#L62-L71)
- [`Fades`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Weak.lean#L24-L27)
- [`Org.erases`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L149-L152)
- [`Org.MaxwellData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170)
- [`Org.IR`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L172-L175)
- [`Org.UV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L177-L186)
- [`Org.Tab`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L19-L24)
- [`common_stress`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lifted.lean#L38-L49)
- [`same_translation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lifted.lean#L57-L63)
- [`kappa_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lifted.lean#L65-L74)
- [`Pert.Supplier`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L22-L32)
- [`ratio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L62-L66)
- [`centered_line`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L82-L116)
- [`torch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L111)
- [`scope_exact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L33-L41)
- [`mixed_space`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L56-L71)
- [`line_dim`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L73-L79)
- [`canonicalStress`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L82)
- [`lighting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L86-L94)
- [`every_light`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L41-L51)
- [`ignite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L77-L134)
- [`west_column`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pivots.lean#L100-L103)
- [`cross_column`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pivots.lean#L104-L107)
- [`east_column`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pivots.lean#L96-L99)
- [`negated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pressure.lean#L132-L151)
- [`at_tower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pressure.lean#L96-L118)
- [`YM.Work.A09.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A09.lean#L85-L90)
- [`YM.Work.A10.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A10.lean#L113-L115)
- [`YM.Work.A12.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A12.lean#L323-L336)
- [`YM.Work.A14.laws_of_oriented`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L403-L415)
- [`YM.Work.B08.smear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B08.lean#L193-L203)
- [`YM.Work.B10.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B10.lean#L95-L105)
- [`YM.Work.D06.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D06.lean#L137-L139)

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

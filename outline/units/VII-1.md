# VII.1. Free Maxwell fields for the short-distance comparison

*Part VII — Identification as Yang–Mills.*

Builds the free Maxwell correlation functions and detection estimates needed for the short-distance comparison.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/VII-1.md) · [← Previous: VI.2](VI-2.md) · [Next: VII.2 →](VII-2.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

**Reading scope.** This unit supplies the free side of the comparison. The interacting comparison is explained in [VI.2](VI-2.md) and assembled in [VIII.1](VIII-1.md).

<details>
<summary>Source inventory and conventions</summary>

**Part:** VII, identification as Yang–Mills. **Lean:** the chain of [`YM/Pert`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert) (folders `Fourier`, `Align`, `Warp`, `Rig`, the jet stencils of `Lattice`, the statement `Position/Crest.finite_leading`, and `Dense`), [`YM/Push/FINITE_DETECTION`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION), [`YM/SharpGram/Weak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak), [`YM/SharpGram/Dense`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense), [`YM/RG08`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08) (about thirty small sub-folders), [`YM/PertExtension`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PertExtension), [`YM/OPE/Levy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Levy). **Size:** 8,117 lines.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

Fix a compact matrix gauge group $G$ with real simple nonabelian Lie algebra $\mathfrak g$, invariant inner product and orthonormal colour basis. Let $V_d$ be complex $\mathrm{Ad}(G)$-invariant radial-jet polynomials of engineering weight at most $d$, $F_d$ their free-null quotient, $\rho$ restriction to Maxwell jets, $\mathcal I_d=V_d\cap\ker\rho$, and $\omega_d=\rho\circ\mathrm{sec}_d$ for the VII.3 representatives.

**Proposition VII.1.1 (regulator removal).** For every integer $L\ge2$, $d,r\in\mathbb N$, label frames, $p\in F_d^r$ and continuous $f$ with compact closed support in $\mathrm{Conf}_r$, set $h_m=L^{-m}$, $N_m=4L^{m^2+m+1}$. Then
$$\Pi_m(f;p)\longrightarrow\int f(x)\mathcal W_x(\omega_dp_1,\ldots,\omega_dp_r)\,dx.$$
For any position board with smooth compactly supported profiles in $\mathrm{Conf}$, order-zero readings converge slotwise for every basis-label tuple to free readings. *Status:* theorem. *Lean:* [`Rig.zerothProfile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L59-L69), [`Position.finite_leading`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L13-L16).

**Proposition VII.1.2 (pointwise limit).** For every itinerary $(N_i,h_i)$ with $4\mid N_i$, $d,r\in\mathbb N$, $z\in\mathrm{Conf}_r$, sites $o_{i,j}$ homing to $z_j$, and $p\in F_d^r$,
$$\Big\langle\prod_jR_{h_i}(\mathrm{sec}_dp_j,o_{i,j})\Big\rangle^{(0)}_{N_i}\longrightarrow\mathcal W_z(\omega_dp_1,\ldots,\omega_dp_r).$$
*Status:* theorem. *Lean:* [`Warp.row_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L65-L68).

**Proposition VII.1.3 (corrected covariance).** For every such itinerary, any index set $\iota$, injective $z:\iota\to\mathbb R^4$, homing sites $o_{i,j}$, indices $j,l$ and keys $a,b$,
$$\mathrm{Cov}_{\mu_{N_i}}(\ell^{h_i}_{o_{i,j},a},\ell^{h_i}_{o_{i,l},b})-\delta_{jl}S_{h_i}(a,b)\longrightarrow\begin{cases}K_{ab}(z_j-z_l),&j\ne l,\\0,&j=l.\end{cases}$$
*Status:* theorem. *Lean:* [`Align.corrected_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L39-L44).

**Proposition VII.1.4 (detection).** For every $v\in V_d\setminus\mathcal I_d$,
$$\mathrm{Re}\,\mathcal W_{(e_{\mathrm t},0)}(\rho v,\rho(\sigma\bar v))>0.$$
More generally, for the diagonalizing and reflected probe substitutions $\Phi,\Psi$, every nonzero shell polynomial $q$ satisfies $\mathrm{Re}\,\mathcal W_{(e_{\mathrm t},0)}(\Phi q,\Psi\bar q)>0$. Here $\Phi$ is onto and $\rho v=\Phi q$ implies $\rho(\sigma\bar v)=\Psi\bar q$. *Status:* theorem. *Lean:* [`Free.two_detect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L151-L155), [`Free.positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L132-L149).

**Proposition VII.1.5 (Kelvin formulas).** For every real symmetric $j$-tensor $A$ with harmonic diagonal, and $x\ne0$,
$$\frac{A(\partial,\ldots,\partial)\Gamma(x)}{j!}=\frac{(-2)^j}{4\pi^2}|x|^{-2(j+1)}A(x,\ldots,x).$$
For every $\mathfrak g$-valued Maxwell shell tensor $Y\in\mathrm{Sh}_j$, contracting the curvature kernel's first rank-$j$ Taylor leg with $Y$, summing colours, ordered form indices and jet indices without $1/2$, gives $\gamma_j\iota^*Y^\natural(x)$ for $x\ne0$, where $\iota(x)=-x/|x|^2$, $Y^\natural(x)=Y(x,\ldots,x)$ and $\gamma_j=2^j(j+1)(j+2)/\pi^2$. *Status:* theorem. *Lean:* [`Kelvin.harmonic_Green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Harmonic.lean#L157-L180), [`Kelvin.response_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L172-L176).

**Proposition VII.1.6 (corrected charts).** Fix a realized Wilson family, construction record with limit table $S$ and extraction order $f$, VII.4 OPE data, $D\in\mathbb N$, and a nontrivial filter $u$ on $\mathbb N^2$ finer than $f$'s extraction filter. Assume a weak measuring [`Portfolio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L35-L49) through $D$: observable/Haar bounds, Haar chart ratio, three price panels and a dominating label-cost constant; $g(k)\to\infty$ with eventually $g(k)\le k$ and
$$\mathrm{scale}(k)\le\mathrm{scale}(g(k))+\log\hat\beta_k;$$
finite-regulator complex linear label maps eventually satisfying [`Poised`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Plume.lean#L23-L27) simultaneously through $D$ at step $g(k)$ (degree availability, monitor bound, tested equivariant maps and all panel estimates); and rescaled read-outs converging along $u$ to $\Phi_{k,d}$ for every $d\le D$ and reference label. Set $D_{k,d}=\pi_d^S\Phi_{k,d}\lambda_d$, where $\pi_d^S$ projects to $S_d$ and $\lambda_d$ is the fixed equivariant representative of the free quotient in reference label coordinates, and let $\chi_k(d)=D_{k,d}$ when bijective, a fixed isomorphism otherwise. There exist complex linear isomorphisms $p_k(d):F_d\to S_d$ for all $k,d$, eventually in $k$, simultaneously for $d\le D$, unit-preserving, commuting with signed permutations and conjugation, and satisfying
$$p_k(e)\iota^F_{d,e}=\iota^S_{d,e}p_k(d)\quad(d\le e\le D);$$
and $\chi_k(d)^{-1}p_k(d)v\to v$ for $d\le D$, $v\in F_d$.
*Status:* conditional theorem. *Lean:* [`Weak.Portfolio.tune_grades`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159).

**Proposition VII.1.7 (windows and expansions).**

(a) Fix III.2 RG constants, Haar bounds, a Haar chart ratio satisfying the local ratio bounds, and admissible price-panel relay with activation bounds $u_j\le L_j$, eventual activation of every degree, and all comparison/analytic rank bounds. For any wait $U$ with $w_j(t)=\lfloor\log(\bar\beta+c_Gt)/\log L_j\rfloor$, $c_G>0$, there is a wait $W$ with no smaller stage-length/entry bounds and the same window, and panels and dominating costs at every degree. Every realized Wilson family satisfying $W$, prescribed observable bounds and polynomial-representative conditions then, for every $D$, has simultaneous finite-regulator comparison data through $D$ at all sufficiently late steps $k$ whose scale exceeds the stage entry threshold and whose backward window has length at most $k$ and lies in one stage; returned panels satisfy all three comparison inequalities. *Lean:* [`Dense.slim_wait_for`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Slender.lean#L127-L143).

(b) If $U$ has this window and $V$ has no smaller stage-length/entry/window bounds, each $V$ entry at stage $j$ exceeds or equals $U$'s entry at $j+1$, and $\bar\beta+c_Gt\ge c_G$ above that $V$ entry, every trajectory satisfying $V$ admits $g(k)\to\infty$ eventually satisfying the scale inequality in VII.1.6, $g(k)\le k$, and $g(k)$ above its $U$ entry threshold with backward $U$ window of length at most $g(k)$ contained in one stage. *Lean:* [`Dense.nearby`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Cover.lean#L155-L165).

(c) Fix finite $I$, $T\subset I$, $p\in T$, $D,k,E,q\in\mathbb N$, $R\in\mathbb R$, $v>0$, $q\le k+E$. There exist $0<w\le v$, $C_0\ge0$, independent of layout and bound $B$, such that every layout satisfying the prescribed tensor symmetry, rank and analytic realization conditions ([`Sense`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Creek/Step.lean#L16-L20)), depending only on occupied markers, zero on the empty set, with weights $a_i\in\mathbb N$ summing to $k$ on $T$ and anchored $v$-weighted absolute-sum coefficient bounds $B$ through order $E$ at every leg rank, has this expansion: re-root at $x_p$, shift order by $q$, zero terms $q+n<k$; through leg rank $k+E-q$ the coefficients are Taylor coefficients of a finite sum of curvature expressions of ranks $\max(k-q,0),\ldots,k+E-q$. These depend only on $T$, retain symmetry and analytic realization, and have anchored absolute-sum bound $BC_0$ with weight $\exp(w\,\mathrm{girth})$, including relative marker positions. *Lean:* [`Dart.coin_pre`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Dart/Seams.lean#L34-L45). *Status (a–c):* theorems, modulo imported station and curvature-lifting estimates whose full proofs are outside this verification (probable; see §7).

<a id="unit-inputs"></a>

## 2. What it uses

- I.1/II.1: lattice, symmetries, labels and jets; III.16: Maxwell shells and kernel; VI.1/VI.2: hierarchies and free quotient; VII.3: lattice prescription.
- III.2/II.2: RG scales and price panels; III.11: rank-comparison estimates; VII.4/VII.5/VIII.1: OPE data, chart correction, construction record.
- Wick's theorem, Fourier analysis, Riemann sums, dominated convergence, Hobson's formula and Kelvin inversion; finite-dimensional fitting (VI.1).

<a id="unit-strategy"></a>

## 3. Strategy

At order zero the normalized expectation is Gaussian. Independent imaginary Gaussians subtract the infinite-lattice self-contractions at each insertion. Fourier analysis gives Maxwell pairings between distinct insertions and zero limits for corrected self-pairings. The common Wick deletion recursion then gives polynomial moments; compactness and dominated convergence give tested limits.

Translated inversion produces a triangular change of probe variables with diagonal positive reflected pairings. Wick matchings give strict positivity on nonzero shell polynomials. Interacting rank estimates transfer detection to raw charts; fixed equivariant retractions remove their filtration defects recursively.

<a id="unit-steps"></a>

## 4. Steps

1. Invert the gauge-fixed form: covariance is direct torus Green function minus its reflected image. [`Orb.covar_link`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Source.lean#L55-L59).
2. Fourier annuli give separated limits; fixed-offset quadrature controls self-contractions. [`Align.chart_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Bilateral.lean#L75-L83), [`Align.chart_return`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Bilateral.lean#L85-L89).
3. Induct on distinguishable legs using the shared deletion recursion; compactness and dominated convergence give profiles. [`Warp.earth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Approach.lean#L19-L32), [`Rig.grid_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Tested.lean#L23-L52).
4. Kelvin translation makes probes triangular; diagonal positive pairings give positive Wick monomial norms and finite detection. [`Free.pairing_var`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Variables.lean#L114-L118), [`free_injective`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Test.lean#L77-L85).
5. Rank estimates give moving-detector convergence; free detection and recursive retractions yield compatible charts. [`Portfolio.twoC`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L107-L124), [`tune_grades`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159).
6. Raise entry thresholds so all active estimates fit the logarithmic window; near a stage boundary choose the preceding stage's last usable step. [`slim_wait_for`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Slender.lean#L127-L143), [`nearby`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Cover.lean#L155-L165).
7. Re-root and reduce exponential weights, then lift and subtract successive lowest coefficients to obtain local curvature expressions with controlled bounds. [`coin_pre`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Dart/Seams.lean#L34-L45).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

Oscillatory Fourier cancellation must survive differentiation. The chosen volume growth controls the amplified same-insertion errors; quarter-period centring removes reflected images. Detection needs strict positivity, including constants. No optimal volume growth rate is asserted.

<a id="unit-notation"></a>

## 6. Notation

$\mathrm{Conf}_r$: distinct $r$-tuples in $\mathbb R^4$; $\Gamma(x)=(4\pi^2|x|^2)^{-1}$; $K$: Maxwell jet kernel; $\mathcal W$: Wick moments without same-insertion pairings. $\mu_N$: Gaussian on reflection-odd link fields; $\ell^h$: linear radial jet; $S_h$: infinite-lattice self-covariance; $R_h(p,o)=\mathbb E_\xi p(\ell_o^h+i\xi)$ with independent $\xi\sim\mathcal N(0,S_h)$ ([`column`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Blank.lean#L41)); $\langle\cdot\rangle^{(0)}$: coupling-series constant coefficient. $\Pi_m$: centred $h_m^{4r}$-weighted sum of $f$ times the order-zero product correlation. An itinerary has even $N_i$, $h_i>0$, positive integer $N_ih_i\to\infty$, $h_i\to0$, $N_ih_i^n\to\infty$ for every $n\in\mathbb N$; homing means $h_i(o_i-c_{N_i})\to z$, $c_N=(N/4,\ldots,N/4)$, using centred lifts. $\sigma$: time reflection; $e_{\mathrm t}$: time unit vector; $\mathrm{Sh}_j$: symmetric Taylor/antisymmetric form tensors with homogeneous fields solving $dF=d{*}F=0$; Taylor coefficients include $1/j!$. A key $a=(j,\alpha)$ is a coordinate on $\mathfrak g$-valued radial-gauge homogeneous potentials of degree $j+1$, with engineering weight $j+2$; $K_{ab}$ uses these coordinates after inverse curl from the shell. A bar denotes complex conjugation; $\iota^*$: 2-form pullback; $\iota^{F,S}$: filtration inclusions.

<a id="unit-limitations"></a>

## 7. What remains unexplained
Lower Fourier uniformity estimates remain unchecked (probable). Station and curvature-lifting estimates are imported (probable); remaining RG/perturbative-extension packages are unexplained (tentative). The interacting short-distance theorem belongs to VIII.1; this unit gives no all-orders comparison.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/VII-1.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md), [III.16](III-16.md), [VII.3](VII-3.md), [III.7](III-7.md), [IV.1](IV-1.md), [III.1](III-1.md), [III.11](III-11.md), [II.1](II-1.md), [III.2](III-2.md), [II.2](II-2.md), [III.6](III-6.md), [VIII.1](VIII-1.md), [III.5](III-5.md), [VI.2](VI-2.md), [III.4](III-4.md), [III.3](III-3.md), [III.10](III-10.md), [VII.4](VII-4.md), [VI.1](VI-1.md).

**Referenced by:** [III.2](III-2.md), [VIII.1](VIII-1.md), [VII.2](VII-2.md), [III.13](III-13.md).

## Lean source

**Source allocation:** 8,117 attributed lines; 1,626 line-counted declarations; 2,077 assigned declaration names. Of the assigned names, 1,917 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- proof of [`finite_leading`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L13-L16) and the results it chains to — 3,275 lines.
- work package [`YM/Push/FINITE_DETECTION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION) — 1,006 lines.
- work package [`YM/SharpGram/Weak/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak) — 616 lines.
- work package [`YM/RG08/Dart/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Dart) — 538 lines.
- work package [`YM/RG08/Ballast/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Ballast) — 338 lines.
- work package [`YM/SharpGram/Dense/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense) — 316 lines.
- work package [`YM/RG08/Vale/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Vale) — 315 lines.
- work package [`YM/PertExtension/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PertExtension) — 310 lines.
- work package [`YM/RG08/Quire/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Quire) — 160 lines.
- work package [`YM/RG08/Scores/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Scores) — 119 lines.
- work package [`YM/RG08/Loom/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Loom) — 118 lines.
- work package [`YM/SharpGram/Matrix/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Matrix) — 108 lines.
- work package [`YM/RG08/Curl/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Curl) — 97 lines.
- work package [`YM/Pert/Fourier/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier) — 95 lines.
- work package [`YM/RG08/Arc/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Arc) — 71 lines.
- work package [`YM/RG08/Extra/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Extra) — 71 lines.
- work package [`YM/RG08/Germ/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Germ) — 67 lines.
- work package [`YM/RG08/Action/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Action) — 66 lines.
- work package [`YM/OPE/Levy/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Levy) — 63 lines.
- work package [`YM/RG08/Ward/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Ward) — 49 lines.
- work package [`YM/RG08/Wax/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Wax) — 45 lines.
- work package [`YM/SharpGram/Lenses/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Lenses) — 39 lines.
- work package [`YM/RG08/Fields/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Fields) — 38 lines.
- work package [`YM/Pert/Dense/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Dense) — 30 lines.
- work package [`YM/RG08/Pace/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Pace) — 30 lines.
- work package [`YM/RG08/Town/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Town) — 29 lines.
- work package [`YM/RG08/Shade/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Shade) — 26 lines.
- work package [`YM/RG08/Door/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Door) — 16 lines.
- work package [`YM/RG08/Creek/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Creek) — 15 lines.
- work package [`YM/RG08/Peals/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Peals) — 11 lines.
- work package [`YM/RG08/Wallet/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Wallet) — 9 lines.
- work package [`YM/RG08/Needle/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Needle) — 9 lines.
- work package [`YM/RG08/Run/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Run) — 8 lines.
- work package [`YM/RG08/Canon/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Canon) — 7 lines.
- work package [`YM/UVExt/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExt) — 5 lines.
- work package [`YM/RG08/Ratio/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Ratio) — 1 lines.
- work package [`YM/RG08/Origin/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Origin) — 1 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`Test`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Test.lean#L18)
- [`rotateChart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L137-L140)
- [`Graded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L171-L172)
- [`retraction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L35-L55)
- [`adjusted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L61-L66)
- [`ladder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/CORRECTED_LIFT_COEFFICIENTS/Basis.lean#L115-L117)
- [`bareCurl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L20)
- [`reduceEq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L47-L50)
- [`equationIdeal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72)
- [`legKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L161-L162)
- [`Green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L22)
- [`gaugeJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L46-L47)
- [`Wick.moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127)
- [`Ship.diminishes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L34-L37)
- [`Read.full_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Finite.lean#L242-L250)
- [`OPE.Levy.free_positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Levy/Panel.lean#L39-L51)
- [`Itinerary`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Burst.lean#L50-L59)
- [`shell_exact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L108-L113)
- [`orbit_contact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L89-L95)
- [`key_orb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L31)
- [`corrected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L34-L35)
- [`indirect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L36)
- [`Home`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Schedule.lean#L53)
- [`scene_home`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Schedule.lean#L71-L77)
- [`finale_home`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Schedule.lean#L90-L103)
- [`FirstExtension`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L26-L39)
- [`firstTarget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L57-L81)
- [`total`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Adjoint.lean#L62-L71)
- [`toroid_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Fee.lean#L84-L112)
- [`joint_far`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Image.lean#L22-L31)
- [`toroid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Inversion.lean#L19)
- [`lap_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Inversion.lean#L46-L52)
- [`upper_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Power.lean#L63-L70)
- [`wrap_tube`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Return.lean#L56-L81)
- [`joint_casual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Return.lean#L95-L101)
- [`inverse_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Source.lean#L40-L54)
- [`strike_two`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Visits.lean#L29-L46)
- [`action`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Action.lean#L46)
- [`sections`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L35)
- [`row`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L41-L42)
- [`topSpacing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L46)
- [`period`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L49)
- [`center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L52)
- [`profile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L55-L56)
- [`LinkP`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Geometry.lean#L107-L111)
- [`fixedPolynomial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Lifts.lean#L55-L60)
- [`physicalLabel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Lifts.lean#L78)
- [`data`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Measure.lean#L31)
- [`form`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Precision.lean#L76-L78)
- [`seriesLex`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Readers.lean#L32)
- [`weight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Series.lean#L61)
- [`link`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Symbol.lean#L50)
- [`shellCov`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Symbol.lean#L58-L59)
- [`wideLinear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/TopLinear.lean#L33-L35)
- [`slope`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/TopLinear.lean#L38)
- [`CleanProfiles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L13)
- [`measured_tends`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L16-L19)
- [`white`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L103-L104)
- [`Conditions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L54-L59)
- [`finite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L98)
- [`calibrate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L36-L43)
- [`credible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L50-L52)
- [`routine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L14-L21)
- [`Arrives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Moving.lean#L50-L51)
- [`bounded_fee`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Moving.lean#L68-L86)
- [`Warp.eq_cancel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Approach.lean#L12-L18)
- [`ev_next`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Diagonal.lean#L15-L19)
- [`node_wage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Engine.lean#L59-L63)
- [`exchange_s`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Exchange.lean#L68-L91)
- [`mono_single`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L31-L40)
- [`mono_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L41-L47)
- [`poly_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L50-L63)
- [`Warp.amplitude_zero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Initial.lean#L39-L56)
- [`take_line`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Rowdy.lean#L45-L49)
- [`D_kill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Rowdy.lean#L59-L61)
- [`cut_one`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Shards.lean#L26-L48)
- [`cut_cancel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Shards.lean#L49)
- [`packet_cancel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Symmetric.lean#L73-L77)
- [`center_lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Centered.lean#L70-L73)
- [`center_diag`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Centered.lean#L80-L101)
- [`R`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Harmonic.lean#L83)
- [`test_projected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Matrix.lean#L38-L46)
- [`inverted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L64-L65)
- [`gain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L92)
- [`free_criterion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Test.lean#L21-L32)
- [`free_null`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Test.lean#L34-L42)
- [`wick_orth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L109-L115)
- [`detectors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L26)
- [`pair_test`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L57-L79)
- [`forward_full`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Variables.lean#L137-L142)
- [`reversed_observable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Variables.lean#L165-L173)
- [`arose`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Dart/Verge.lean#L62-L86)
- [`LateEnough`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Cover.lean#L27-L28)
- [`symmetrical`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L124-L136)
- [`chart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L76-L79)
- [`chartDraw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L84-L87)
- [`stepFits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L98-L121)
- [`actualRead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Inspect.lean#L80-L99)
- [`certified`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Pairing.lean#L110-L128)
- [`freely`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Pairing.lean#L75-L76)
- [`compareC`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L94-L105)
- [`Ward.disc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L23)
- [`tendsto_of_fitted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A04.lean#L34-L57)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-vii-1-1"></a>

- **K-VII.1.1** [`covar_link`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Source.lean#L55-L59) *(key result)* — The free orbital covariance of two link form elements is the color inner product times a difference of toroidal kernel values if the directions agree, else zero.

<a id="k-vii-1-2"></a>

- **K-VII.1.2** [`harmonic_Green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Harmonic.lean#L157-L180) *(key result)* — Differentiating the 4D Green kernel j times against a symmetric harmonic tensor gives a constant times R^{-(j+1)}... times the diagonal harmonic polynomial, a Kelvin-type formula.

<a id="k-vii-1-3"></a>

- **K-VII.1.3** [`response_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L172-L176) *(key result)* — The colored response of a shell element equals gain times the inverted actual field, extending the scalar computation to Lie-algebra colors.

<a id="k-vii-1-4"></a>

- **K-VII.1.4** [`pairing_var`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Variables.lean#L114-L118) *(key result)* — The bilinear pairing between eigen variables and reflected variables is diagonal with squared-length entries.

<a id="k-vii-1-5"></a>

- **K-VII.1.5** [`nearby`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Cover.lean#L155-L165) *(numbered result)* — There is an unbounded predecessor-marking map g with g(k)≤k, g(k) interior, and S(k)≤S(g(k))+log P(k) eventually.

<a id="k-vii-1-6"></a>

- **K-VII.1.6** [`orbit_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L80-L88) *(key result)* — For separated endpoints, the averaged orbital pairing of dual Taylor test slots converges to the Taylor-form continuum pairing.

<a id="k-vii-1-7"></a>

- **K-VII.1.7** [`finite_leading`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L13-L16) *(key result)* — For clean profiles, the finite-regulator Wilson reading at order zero converges to the continuum white-noise reading as the lattice is refined.

<a id="k-vii-1-8"></a>

- **K-VII.1.8** [`tune_grades`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159) *(key result)* — There exist corrections of the measuring charts that are eventually graded-exact through level D and converge to the identity on every field.

<a id="k-vii-1-9"></a>

- **K-VII.1.9** [`row_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L65-L68) *(key result)* — The order-zero lattice rows of any tuple of fields converge to the Gaussian moment of their reduced sections.

<a id="k-vii-1-10"></a>

- **K-VII.1.10** [`earth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Approach.lean#L19-L32) *(key result)* — After deleting bare-linear legs, the equation price converges to the cut value at a separated configuration.

<a id="k-vii-1-11"></a>

- **K-VII.1.11** [`zerothProfile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L59-L69) *(main result)* — For compactly supported continuous test functions away from coincident points, the order-zero coefficient of the lattice profile converges to the integral against the free discrete correlation.

<a id="k-vii-1-12"></a>

- **K-VII.1.12** [`linear_substitution`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Polarize.lean#L108-L119) *(numbered result)* — The Wick moment of products of linear combinations of variables equals the sum over matchings of products of pairwise Wick tensor entries.

<a id="k-vii-1-13"></a>

- **K-VII.1.13** [`corrected_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L39-L44) *(key result)* — The corrected (subtracted) covariance of lattice sites at separated points converges to the indirect continuum covariance for all key labels.

<a id="k-vii-1-14"></a>

- **K-VII.1.14** [`coin_pre`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Dart/Seams.lean#L34-L45) *(numbered result)* — Finite demands on layouts admit an exact tally with constants such that suitable bounds on inputs yield an ample armor bound for a given order.

<a id="k-vii-1-15"></a>

- **K-VII.1.15** [`two_detect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L151-L155) *(main result)* — For a label outside the equation ideal, the two-point moment of the observable with its reflected conjugate has strictly positive real part.

<a id="k-vii-1-16"></a>

- **K-VII.1.16** [`slim_wait_for`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Slender.lean#L127-L143) *(key result)* — For a simple gauge group and a relay with a slim window, there is a thicker wait with the same window admitting a certified station port.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

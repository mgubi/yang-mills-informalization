# VII.2. The trace of the stress tensor and the trace anomaly

*Part VII — Identification as Yang–Mills.*

Explains the centered trace two-point asymptotic and the resulting exclusions under the stated comparison hypotheses.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/VII-2.md) · [← Previous: VII.1](VII-1.md) · [Next: VII.3 →](VII-3.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** VII, identification as Yang–Mills. **Lean:** [`YM/TraceExtension`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension). **Size:** 20,681 lines.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

Unless stated otherwise, fix a final record over a Wilson family $C$, extraction order $f$ and limit table $S$ (VIII.1), with selected phase $\xi_*$ and Ward-normalized stress tensor $T$ (VI.1). The compact matrix group $G$ has simple nonabelian Lie algebra $\mathfrak g$. Set
$$\kappa_G=\frac{11C_A}{24\pi^2},\qquad d_2=-\frac{\kappa_G}{4},\qquad A_G=\frac{3\dim\mathfrak g}{\pi^4}.$$
Here $\mathcal O=\tfrac14\sum_{a,\mu,\nu}:F^a_{\mu\nu}F^a_{\mu\nu}:$ belongs to the free Maxwell table $\mathsf F$ with $\dim\mathfrak g$ species and propagator $1/(4\pi^2|x|^2)$.

**Proposition VII.2.1 (centered trace).** Define $\Theta=\sum_\mu T_{\mu\mu}-\langle\sum_\mu T_{\mu\mu}\rangle_{\xi_*}\mathbf1\in F_4$. It has zero expectation, is real, $O(4)$-invariant and fixed by the time-reflection adjoint; these conclusions also hold when centering in any phase table respecting $S$. Its reconstructed label $\iota(\Theta)$ is fixed by conjugation $J$ and every Lorentz transformation. For every Schwartz test $h$, its vacuum expectation vanishes and, on the common invariant field domain,
$$\Phi_\Theta(h)=\Phi_{\sum_\mu T_{\mu\mu}}(h)-\Big\langle\sum_\mu T_{\mu\mu}\Big\rangle_{\xi_*}\Big(\int h\Big)\mathrm{id}.$$
If $r^8\log^2(1/r)G_\Theta(r)\to A>0$, then $\iota(\Theta)\ne0$.
*Status:* theorem. *Lean:* [`pinned_scalar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L61-L63), [`center_field`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Link/Identity.lean#L158-L161), [`nonzero_strength`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Sundial/Grand.lean#L23-L27).

**Proposition VII.2.2 (spectral representation).** There is a unique positive Lorentz-invariant measure $\mu_\Theta$ supported in $\bar V_+$ such that:

- Some $C_\mu\ge0$, $k\in\mathbb N_0$ satisfy $\mu_\Theta\{p_0\le R\}\le C_\mu R^k$ for every $R\ge1$.
- For every $s>0$, $e^{-sp_0}\mu_\Theta$ is finite and $G_\Theta(s)=\int e^{-sp_0}d\mu_\Theta$.
- For every Schwartz $\varphi$, the translation spectral measure of $\Phi_\Theta(\varphi)\Omega$ is $|\hat\varphi|^2\mu_\Theta$; for every Schwartz $\phi$ on $(\mathbb R^4)^2$, $W_2(\Theta,\Theta)(\phi)=\int\widehat\phi^{\rm wave}d\mu_\Theta$.

Thus $G_\Theta$ is real, nonnegative and nonincreasing on $(0,\infty)$.
*Status:* theorem. *Lean:* [`traceSpectrum_exists`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L99-L119).

**Proposition VII.2.3 (one-loop certificates).** Let $C$ issue from run data satisfying the RG construction hypotheses in §2, including a chosen bounded block-spin run. For every filter $\mathcal L$ on $\mathbb N^2$ along which both spacing and volume indices $N,p\to\infty$, there are level-5 lattice work items $t_{k,N,p}$ satisfying the lattice certificate for all large $k$, $\mathcal L$-eventually in $(N,p)$. In particular, their Ward darts satisfy, for every color $q$,
$$|\mathrm{midPay}_q(J)+12\kappa_G|\le\hat\beta_k^{-100}.$$
*Status:* theorem. *Lean:* [`agenda`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L23-L35), certificate [`WorthB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Ansel.lean#L30-L40).

**Proposition VII.2.4 (field anomaly; gallery property).** Assume II.1 Wilson consistency, the quantitative RG and VII.6 scaling hypotheses in §2, auxiliary depths $n_k\ge2$ eventually, and degree bounds $z_d$ covering every generator budget of degree at most $d$ and satisfying the degree-$d$ scaling estimates. Let $\mathcal L$ be an ultrafilter finer than the fuse filter of $f$, with work items satisfying VII.2.3's certificate.

For every limit table $S$ along $f$ with ordered Wilson convergence, Euclidean hierarchy, point limits, cell hypothesis and corrected rank estimates, and every field algebra on $S$ satisfying derivative, rotation, conservation and Ward laws, there exist coupling and label-transfer limits $Z$ along $\mathcal L$ and a free Maxwell hierarchy $\mathsf a$, with $Z.\beta(k)=\lim_{\mathcal L}\beta_{N,p}(k)$ and $\hat\beta_k/2\le Z.\beta(k)\le2\hat\beta_k$ for every level $k$.

(i) For every scaling sequence $(r_i,U_i)$ approaching $\mathsf a$ with VII.6 RG lifts and pointwise lattice limits, base levels $k_i\to\infty$ and selected readout levels $\ell_i$, put $w_i=Z.\beta(\ell_i)$. Here $r_i\downarrow0$; the complex-linear identifications $U_i:\mathsf F_d\to F_d$ eventually preserve the unit, reality and signed coordinate actions degreewise, with rescaled correlations converging to $\mathsf a$. Then
$$w_i\to\infty,\qquad \frac{\log(1/r_i)}{w_i}\to\kappa_G^{-1},\qquad r_i^4U_i^{-1}\mathring T_{\mu\nu}\to T^{\rm free}_{\mu\nu}.$$
For every phase hierarchy $T'$ respecting $S$, real sequences $e_i,d_i$ satisfy, eventually,
$$r_i^4U_i^{-1}\Theta_{T'}=e_i\mathbf1+4d_i\mathcal O,\qquad w_ie_i\to0,\quad w_id_i\to d_2.$$
Thus $w_ir_i^4U_i^{-1}\Theta_{T'}\to-\kappa_G\mathcal O$.

(ii) Every sequence $s_j>0$ tending to zero has a subsequence that is the scale sequence of a scaling sequence satisfying (i).
*Status:* theorem; hypotheses discharged in III.2 for the constructed family, recorded in VIII.1. *Lean:* [`gang`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56), [`Store_l`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L63-L68).

**Proposition VII.2.5 (short-distance and spectral laws).** If the gallery property holds for $(C,f)$, then
$$\lim_{r\downarrow0}r^8\log^2(1/r)G_\Theta(r)=A_G>0$$
in $\mathbb C$. For every continuous compactly supported or Schwartz $\varphi$, as $\rho\to\infty$,
$$\rho^{-8}\log^2\rho\int\varphi(p/\rho)d\mu_\Theta(p)\to\frac{A_G}{1536\pi}\int_{V_+}(p^2)^2\varphi(p)d^4p.$$
The limiting measure has Laplace transform $A_Gs^{-8}$. For every Schwartz $\phi$ on $(\mathbb R^4)^2$, setting $\phi_\rho(x,y)=\rho^8\phi(\rho x,\rho y)$, the same cone integral with $\varphi=\widehat\phi^{\rm wave}$ is the limit of $\rho^{-8}\log^2\rho\,W_2(\Theta,\Theta)(\phi_\rho)$.
*Status:* theorem under the gallery property. *Lean:* [`outside`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L77-L88), [`joint_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L216-L222).

**Proposition VII.2.6 (uniqueness of stress).** Let $\mathcal K(S)$ consist of real, symmetric, $S$-centered degree-4 tensors covariant under signed coordinate permutations; let $\mathcal V(S)$ consist of real degree-5 vectors with that covariance. Fix a derivative plan satisfying derivative laws and the orientation condition. The free Maxwell divergence $\mathcal K(\mathsf F)\to\mathcal V(\mathsf F)$ is onto with one-dimensional kernel. In VII.2.4(i)'s setting, $\dim\mathcal K(S)=3$, $\dim\mathcal V(S)=2$, and $\dim\ker\mathrm{div}=1$.
*Status:* theorem. *Lean:* [`free_rank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean#L159-L165), [`ranking`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Masts.lean#L41-L51).

**Proposition VII.2.7 (no finite Wick profile).** Suppose $r^8\log^2(1/r)G_\Theta(r)\to A>0$. For every finite $W(r)=\sum_\alpha c_\alpha\prod_\beta K_{m_{\alpha\beta},q_{\alpha\beta},h_{\alpha\beta}}(r)$, with complex coefficients and
$$K_{m,q,h}(r)=\int_{\mathbb R^3}\frac{E_m(p)^qh(p)}{2E_m(p)}e^{-rE_m(p)}dp,\qquad E_m(p)=\sqrt{m^2+|p|^2},$$
where $m\ge0$, $q\in\mathbb N_0$ and continuous $h:\mathbb R^3\to\mathbb R$ is positively homogeneous of nonnegative integer degree, every $\delta>0$ admits $r\in(0,\delta)$ with $G_\Theta(r)\ne W(r)$. No such collection reproduces the Wightman function by its mass-shell expression on all Schwartz product tests $\varphi\otimes\psi$ with compactly supported wave transform. This also excludes Wick contractions of two finite polynomial fields from any free-mode palette.
*Status:* theorem. *Lean:* [`polynomial_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105).

**Proposition VII.2.8 (free-photon Fock exclusion).** Under VII.2.7's positive law, for every $m\in\mathbb N_0$, let $\mathcal F_m$ be the Fock space of $m$ free-photon species. For every complex-linear isometry $U:\mathcal H\to\mathcal F_m$ preserving the vacuum, taking values in physical transverse waves and intertwining translations with $e^{ib\cdot p_{\rm tot}}$, there exist a compactly supported smooth scalar test $\varphi$ and compactly supported smooth real three-vector tests $h_c$, $1\le c\le m$, each causally separated from $\varphi$, such that
$$\langle W(-h)\Omega_{\mathcal F},U\Phi_\Theta(\varphi)\Omega\rangle\ne\langle U\Phi_\Theta(\bar\varphi)\Omega,W(h)\Omega_{\mathcal F}\rangle.$$
Equality for all such tests would follow from relative locality with the free Weyl operators. The conclusion persists after applying any bounded self-adjoint operator fixing $U\mathcal H$ to both coherent vectors, or averaging over any probability family of inner-product-preserving maps on physical waves fixing $U\mathcal H$. In the averaged version, for every $r>0$, tests can be supported in open $Q,W$ with $\bar Q\subset B(0,r)$ and $\bar Q-\bar W$ spacelike, with $\varphi$ supported in $Q$ and every component of $h$ in $W$.
*Status:* theorem. *Lean:* [`excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L46-L49), [`regions_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Regions.lean#L36-L38).

**Proposition VII.2.9 (position-space coefficient).** For every simple $G$, kernel parameter $b>0$ and extraction order $p$, there exist a consistent Wilson family $C$ with parameter $b$ and refinement $f$ of $p$, admitting final records. For every such final record, there exist a free hierarchy, coupling limits $Z$ and an ultrafilter admitting degree-4 position-space frames. For every admissible pair $P(s),P'(s):\mathsf F_4\to F_4$ with window cutoff $\chi$, real $\kappa,d,e$ satisfy, for sufficiently small $s>0$,
$$P'(s)^{-1}(s^4T_{\mu\nu})=\kappa(s)T^{\rm free}_{\mu\nu}+d(s)\delta_{\mu\nu}\mathcal O+e(s)\delta_{\mu\nu}\mathbf1,\qquad\kappa(s)\to1.$$
Admissibility requires position-space Gram normalization, branch/angular alignment and convergence of prescribed finite off-diagonal jets for $P$; $P'$ positively rescales its centered scalar sector and complement, fixes the unit, and normalizes two shell tests to free values. For every eventually positive $g$ with $\log(1/s)g(s)^2\to\kappa_G^{-1}$, $d(s)/g(s)^2\to d_2$. The test-defined coupling satisfies $g_X/g_W\to1$ and $d-d_2g_X^2=O(g_X^4)$, where $g_W$ is the Wilson coupling from $Z$. Eventually $s^4\Theta=4d(s)\mathrm{center}_{\xi_*}(P'(s)\mathcal O)$ exactly.
*Status:* theorem for the supplementary construction's family and refinement. *Lean:* [`meterQ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Sundial/Noon.lean#L50-L83), [`FieldComparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L37-L64).

<a id="unit-inputs"></a>

## 2. What it uses

- I.1: positive [adjoint Casimir](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184); II.2, III.9: schedule $\hat\beta_k=\bar\beta+\kappa_G\log(1/a_k)$.
- III.4–III.15: bounded block-spin run, eventual-level estimates, stationary criticality, fourth-order classical matching, determinant budgets, cluster/polymer, support and small/large-field bounds; III.7: [logarithmic one-loop momentum integral](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L346-L408). III.2 supplies these run hypotheses.
- IV.1: extraction, point limits, cell hypothesis and chessboard tests; V.1–V.3: [phases and reconstruction](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73); VI.1: field, rotation, derivative, orientation and Ward laws.
- VI.2, VII.1, VII.3: free Maxwell calculus; VII.6: [scaling sequences](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31), RG lifts and pointwise limits along subsequences of every positive null sequence.
- Spectral theorem, Källén–Lehmann representation, holomorphic identity theorem, Laplace continuity/Tauberian results, coherent states and point-supported distributions (Reed–Simon II; Glimm–Jaffe, ch. 19; Feller II, §XIII.1–5; Widder).

<a id="unit-strategy"></a>

## 3. Strategy

The classical stress tensor is traceless; the anomaly comes from the running coupling. In Balaban's RG framework, transport a lattice Ward identity through block-spin steps and extract its coefficient from the background-field one-loop logarithmic pole. The canonical tensor has a divergence diagnostic tending to $-\kappa_G$. Conservation forces the pure-trace improvement coefficient to $d_2$; rank-one uniqueness and Ward normalization identify the conserved candidate with $T$.

Free-field convergence then gives the two-point law. The factor $(\log(1/r_i)/w_i)^2\to\kappa_G^{-2}$ cancels the squared anomaly coefficient, leaving $A_G$. Monotonicity removes lattice rounding; subsequences give the full limit. Laplace convergence gives the spectral law. Finite Wick expansions and relatively local photon Fock realizations each force incompatible short-distance growth.

<a id="unit-steps"></a>

## 4. Steps

1. A sound Ward dart represents the action variation along a displacement field through fourth order. Under the criticality, branch, bound, positive price-gap and classical-matching hypotheses, block-spin transport preserves soundness; repeated transport contracts precision errors by $1/2$ per step. [Soundness](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Badge.lean#L110-L141).
2. Under uniform covariance, resolvent and action bounds, the one-loop action regulated at infrared mass $\mu>0$ has logarithmic coefficient $-12\kappa_G$. A mean-value argument in $\log\mu$, followed by regulated Ward comparison, gives the payoff limit. [`awake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Awake.lean#L32-L53).
3. Under VII.2.4's hypotheses, lattice-to-continuum transfer preserves the divergence diagnostic. Solving the two-dimensional improvement equation forces its scalar coefficient to $d_2$. [`quill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Limits.lean#L68-L80).
4. Rank-one conservation identifies the candidate up to a multiple; comparison of Ward fluxes makes that multiple tend to one. [`year_spec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/North.lean#L28-L65).
5. Free Wick normalization gives $A_G$ along scaling sequences; monotonicity removes lattice rounding and the subsequence principle gives the full limit. [`outside`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L77-L88).
6. Lorentz invariance converts the law to cone Laplace convergence; uniform energy bounds extend compact-test convergence to Schwartz tests. [`joint_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L216-L222).
7. Under the positive trace law, finite Wick power–log expansions cannot produce an inverse logarithm squared. Relative locality in photon Fock space forces point-supported Cauchy data and then momentum-doubling eigencomponents, yielding energy growth at most $R^7$, incompatible with the spectral law. [`no_powerlog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Log.lean#L96-L108), [`saturate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L33-L44).

8. For the supplementary position-space frames, shell normalization gives $d=d_2g_X^2\kappa$ and $\kappa-1=-dQ/B_0$, where $B_0\ne0$ and $Q$ has a finite limit. Hence $\kappa-1=O(g_X^2)$ and $d-d_2g_X^2=O(g_X^4)$. [`meterQ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Sundial/Noon.lean#L50-L83).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

The Ward transport, exact one-loop coefficient and remainders $o(\hat\beta^{-p})$ for every $p\in\mathbb N_0$ carry the anomaly proof. Slower coefficient errors must also defeat growing improvement coefficients. The amplitude uses equality of the independently entering schedule and one-loop slopes. The Wick exclusion concerns finite profiles; continuous-mass generalized free fields are outside its scope. Fock exclusion additionally needs point-supported Cauchy data to force dilation identities.

<a id="unit-notation"></a>

## 6. Notation

$F_d$: degree-$d$ labels; $\mathring T$: $S$-centered stress; $G_\Theta(r)=S^{\xi_*}(\Theta(-re_0/2)\Theta(re_0/2))$. $p^2=p_0^2-|\vec p|^2$; $V_+$ is the open forward cone; $\widehat\phi^{\rm wave}(p)=\int e^{ip\cdot(y-x)}\phi(x,y)d^4x\,d^4y$. $T^{\rm free}$ is the traceless Maxwell stress tensor; $g_W,g_X$ are the Wilson and position-space couplings. $\mathrm{midPay}_q$ is the real coefficient selector on the Haar divergence of the origin-rooted displacement field ([definition](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Leaf.lean#L38)).

For $h=(h_c^a)$, the coherent vector $W(h)\Omega_{\mathcal F}$ has $n$-particle component $e^{-\|\eta\|^2/2}\mathrm{i}^n\eta^{\otimes n}/\sqrt{n!}$, where
$$\eta_c^a(k)=|k|\sum_b\left(\delta_{ab}-\frac{k_ak_b}{|k|^2}\right)\widehat h_c^b(|k|,k),\qquad d\nu(k)=\frac{d^3k}{2|k|}.$$

The exact run predicates for VII.2.3 are `Bolt`, `Bandage`, `Nest`, `Vigil`, `Acclaim`, `supportQ`; for VII.2.4 they are `PostT`, `Stock.Tabs`, `Scrim`, `Sceptre`, `supportQ`, `Moonlit`, `auraQ`, together with `Binding`, `HaarBudget`, `ChartRatio`, generator bounds and `FiresSky`.

<a id="unit-limitations"></a>

## 7. What remains unexplained

Full proofs of RG contraction, covariance/resolvent bounds and fast lattice-to-continuum remainders remain inputs. So do the single massive-mode expansion, point-support and analytic uniqueness theorems for Fock exclusion, and existence and shell-observable formulas for position-space frames.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/VII-2.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md), [III.1](III-1.md), [III.7](III-7.md), [III.16](III-16.md), [IV.1](IV-1.md), [II.1](II-1.md), [VI.1](VI-1.md), [III.6](III-6.md), [III.11](III-11.md), [V.2](V-2.md), [VI.2](VI-2.md), [VIII.1](VIII-1.md), [II.2](II-2.md), [III.9](III-9.md), [III.10](III-10.md), [III.8](III-8.md), [VII.6](VII-6.md), [VII.1](VII-1.md), [VII.5](VII-5.md), [III.3](III-3.md), [V.1](V-1.md), [III.2](III-2.md), [III.4](III-4.md).

**Referenced by:** [III.2](III-2.md), [VIII.1](VIII-1.md).

## Lean source

**Source allocation:** 20,681 attributed lines; 3,833 line-counted declarations; 5,055 assigned declaration names. Of the assigned names, 4,879 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- proof of [`Store_l`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L63-L68) and the results it chains to — 6,437 lines.
- proof of [`agenda`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L23-L35) and the results it chains to — 6,036 lines.
- work package [`YM/TraceExtension/Fock/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock), with [`YM/TraceExtension/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension), [`YM/TraceExtension/Wick/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick), [`YM/TraceExtension/Atlas/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Atlas), [`YM/TraceExtension/Chart/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart), [`YM/TraceExtension/Pith/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Pith), [`YM/TraceExtension/Sundial/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Sundial), [`YM/TraceExtension/Verse/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse), [`YM/TraceExtension/Link/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Link) — 3,581 lines.
- work package [`YM/TraceExtension/Perfect/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect) — 1,298 lines.
- work package [`YM/TraceExtension/Filch/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Filch) — 536 lines.
- work package [`YM/TraceExtension/Det/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Det) — 438 lines.
- work package [`YM/TraceExtension/Shepherd/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shepherd) — 366 lines.
- work package [`YM/TraceExtension/Lamp/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp) — 284 lines.
- work package [`YM/TraceExtension/Pi/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Pi) — 216 lines.
- work package [`YM/TraceExtension/Terrace/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace) — 196 lines.
- work package [`YM/TraceExtension/Turret/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Turret) — 162 lines.
- work package [`YM/TraceExtension/Zn/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Zn) — 155 lines.
- work package [`YM/TraceExtension/Weir/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Weir) — 100 lines.
- work package [`YM/TraceExtension/Fen/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fen) — 98 lines.
- work package [`YM/TraceExtension/Quince/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Quince) — 93 lines.
- work package [`YM/Integration/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration) — 80 lines.
- work package [`YM/TraceExtension/Xo/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Xo) — 79 lines.
- work package [`YM/RG08/Calendar/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar) — 74 lines.
- work package [`YM/TraceExtension/Cask/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Cask) — 73 lines.
- work package [`YM/TraceExtension/Wicket/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wicket) — 69 lines.
- work package [`YM/TraceExtension/Swift/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Swift) — 65 lines.
- work package [`YM/Nonperturbative/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative) — 64 lines.
- work package [`YM/TraceExtension/Margin/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin) — 51 lines.
- proof of [`gang`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56) — 40 lines.
- work package [`YM/TraceExtension/Shunt/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shunt) — 32 lines.
- work package [`YM/TraceExtension/Pills/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Pills) — 29 lines.
- work package [`YM/TraceExtension/Loft/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft) — 21 lines.
- work package [`YM/TraceExtension/Anchor/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Anchor) — 4 lines.
- work package [`YM/TraceExtension/Slate/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate) — 3 lines.
- work package [`YM/TraceExtension/Shelves/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves) — 1 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`profile_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean#L19-L23)
- [`publicTrace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean#L35-L44)
- [`Cells.standard`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L22)
- [`CellHyp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L68-L79)
- [`Climb.Bel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L20)
- [`Climb.Scaling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31)
- [`FreeRanks.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean)
- [`free_closure`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean#L83-L113)
- [`ManuscriptTraceTests.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ManuscriptTraceTests.lean)
- [`Tests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ManuscriptTraceTests.lean#L62-L75)
- [`plentifulWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean)
- [`encamp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Gauge.lean#L219-L220)
- [`HeadlineSpec.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean)
- [`TraceExclusions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L84-L120)
- [`Funded.gallery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L93-L95)
- [`Locals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L34-L43)
- [`odd_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Atlas/Crash.lean#L33-L36)
- [`Crest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Belfry.lean#L16-L30)
- [`crest_ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Belfry.lean#L31-L37)
- [`stressTrace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L17)
- [`euclideanVEV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L34)
- [`centerIn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L63)
- [`theta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L64)
- [`centerIn_vac`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L66-L67)
- [`trace_real`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L69-L71)
- [`trace_turn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L73-L74)
- [`trace_adj`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L76-L78)
- [`scalar_rail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L80-L106)
- [`Litpay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Auth.lean#L30-L34)
- [`BQ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Dray.lean#L42)
- [`pairingD`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Dray.lean#L45-L55)
- [`sizeQ'`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Dray.lean#L57-L61)
- [`transferX`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Dray.lean#L63-L77)
- [`pollen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Laurel.lean#L48)
- [`wend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Limits.lean#L45-L58)
- [`Gallery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L41-L44)
- [`ChoiceK`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Masts.lean#L53-L55)
- [`b0`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L60)
- [`beta_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L61)
- [`d2`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L62)
- [`force_b`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L63)
- [`ZoomValue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L64)
- [`shift_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L69-L72)
- [`july`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L79-L84)
- [`zoom_BQ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Orr.lean#L42-L62)
- [`band_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Orr.lean#L73-L76)
- [`payload`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Scalar.lean#L72-L81)
- [`OScale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L50)
- [`sum_delta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L51-L53)
- [`Year`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L55)
- [`Cloak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L61)
- [`serene`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L64-L65)
- [`yields`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L69-L80)
- [`blossoms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L82-L95)
- [`leaderB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L41-L51)
- [`Scribe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L52-L59)
- [`tub`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Token.lean#L59)
- [`beater`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Token.lean#L61-L68)
- [`mere`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Token.lean#L75-L88)
- [`cone_laplace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/ConeLaplace.lean#L137-L150)
- [`coneMeasure`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/ConeLaplace.lean#L57)
- [`marke`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Det/Port.lean#L62)
- [`lush`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Det/Port.lean#L69)
- [`log_high`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Dyadic.lean#L23-L38)
- [`does_not_fit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Dyadic.lean#L65-L82)
- [`main`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L155-L161)
- [`XScheme`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L29-L34)
- [`HighEnergy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L67-L82)
- [`Result`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L99-L120)
- [`burn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L15-L20)
- [`consumes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L22-L27)
- [`finite_particles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L29-L32)
- [`excludes_projected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L51-L70)
- [`form_exists`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Form.lean#L27-L39)
- [`Comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Identify.lean#L23-L27)
- [`Nfl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Identify.lean#L32-L35)
- [`smell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Occult.lean#L12-L21)
- [`Ambient`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Space.lean#L111)
- [`parts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Weight.lean#L76-L78)
- [`coherent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Weyl.lean#L119)
- [`wick_norm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Constant.lean#L38-L52)
- [`square4`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L66)
- [`mechanical_trace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L67-L69)
- [`rho`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L78-L80)
- [`rho_vector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L81-L84)
- [`molt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Cake.lean#L63)
- [`neap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Keg.lean#L11)
- [`pia`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Lock.lean#L20)
- [`cob`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Lock.lean#L21)
- [`Deb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Taps.lean#L31-L34)
- [`laplace_schwartz`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LaplaceSchwartz.lean#L89-L99)
- [`seaD`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Awake.lean#L10)
- [`coastMark`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Awake.lean#L13-L30)
- [`landPay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Awake.lean#L9)
- [`banana`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Drifts.lean#L32-L35)
- [`ridge_deriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Fluent.lean#L47-L60)
- [`ridge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Fluent.lean#L9)
- [`jury`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Gondola.lean#L31-L35)
- [`Holt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Leaf.lean#L37)
- [`crest_v`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Peak.lean#L15-L29)
- [`wire_mid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Prise.lean#L13-L28)
- [`effect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Skis.lean#L12-L24)
- [`yard`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Tips.lean#L12)
- [`payday`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Tips.lean#L32-L47)
- [`rescaled_energy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L120-L141)
- [`compact_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L151-L157)
- [`spectral_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L163-L167)
- [`Zlog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L20)
- [`relative_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L203-L213)
- [`EuclideanAsymptotic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L74-L75)
- [`transform_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L93-L106)
- [`brass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Beans.lean#L16-L42)
- [`Work items`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L15)
- [`Grant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L16)
- [`Dart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Badge.lean#L22-L27)
- [`Dart.down`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Badge.lean#L75-L80)
- [`Dart.Sound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Badge.lean#L82-L90)
- [`Viz`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Pallas.lean#L15-L23)
- [`cash_viz`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Pallas.lean#L38-L40)
- [`Measures`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Pith/Wall.lean#L13-L14)
- [`StarPath`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L19-L23)
- [`Optics`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Lore.lean#L40-L44)
- [`aprilA`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Lore.lean#L51-L55)
- [`gapC`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Lore.lean#L57-L59)
- [`materialB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Pear.lean#L50)
- [`nearing_h`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Pear.lean#L65-L71)
- [`muteP`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Pear.lean#L73-L77)
- [`BornZ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/April.lean#L27)
- [`tiara`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Limit.lean#L33-L53)
- [`diadem`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Limit.lean#L54-L62)
- [`Shine5`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Spite.lean#L49)
- [`ShellNorm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Sundial/Shade.lean#L20-L22)
- [`Barry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Bang.lean#L23-L37)
- [`Arch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Dusk.lean#L65-L67)
- [`styling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Dusk.lean#L72-L75)
- [`gamut`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Dusk.lean#L89-L95)
- [`Gondola`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Gondola.lean#L18-L21)
- [`gravity`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Gondola.lean#L22-L28)
- [`Lease`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Lease.lean#L22)
- [`Prosper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Lease.lean#L27-L30)
- [`AgeK`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Look.lean#L10)
- [`hrate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Lyre.lean#L8)
- [`monotone_axis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L13-L21)
- [`award_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L23-L27)
- [`border`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L52-L76)
- [`axis_shape`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L18-L37)
- [`clue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L39)
- [`award`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L41)
- [`tagline`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L50-L69)
- [`rounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Round.lean#L16-L23)
- [`rainbow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Round.lean#L51-L63)
- [`Expands`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Expansion.lean#L47)
- [`wick_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Palette.lean#L130-L133)
- [`moments_expand`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/PolynomialField.lean#L116-L125)
- [`Mode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/PolynomialField.lean#L23-L29)
- [`Track`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/PolynomialField.lean#L90-L92)
- [`real_profile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L18-L22)
- [`identifies_euclid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L62-L73)
- [`vev_boundary`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L16-L41)
- [`center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L48)
- [`pinned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L49)
- [`euclidean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L53)
- [`self_adjoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L58-L59)
- [`pinned_centered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L65-L67)
- [`continuation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L69-L78)
- [`TraceSpectrum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L83-L94)
- [`Wave`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Zn/Have.lean#L10)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-vii-2-1"></a>

- **K-VII.2.1** [`cauchy_point`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/TimeData.lean#L86-L115) *(numbered result)* — Under the paired-adjoint identity on remote tests, the Cauchy data vanish on test functions compactly supported away from the origin.

<a id="k-vii-2-2"></a>

- **K-VII.2.2** [`splitParts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Eigen.lean#L44-L83) *(numbered result)* — An element of a submodule stable under dilations that is killed by the relevant polynomials lies in the span of the joint generalized eigen-components.

<a id="k-vii-2-3"></a>

- **K-VII.2.3** [`from_center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Anchor/Book.lean#L33-L76) *(key result)* — Coarse observables pulled back along centered chambers with funding certificates produce late physical equivalence.

<a id="k-vii-2-4"></a>

- **K-VII.2.4** [`axis_advance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Anchor/Derivative.lean#L80-L115) *(numbered result)* — For a fixed stencil width, the finite-difference approximation of the derivative along an axis has error at most C'‖v‖x^8, uniformly over labels.

<a id="k-vii-2-5"></a>

- **K-VII.2.5** [`differentiation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Anchor/Bleed.lean#L81-L144) *(key result)* — If lattice observables converge to fields and their finite-difference stencils match, then the continuum derivative of the limit equals the limit of the next-order fields, up to a fast-decaying error.

<a id="k-vii-2-6"></a>

- **K-VII.2.6** [`recoup`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Relay.lean#L143-L160) *(key result)* — The directional Ward lift is price-matched: derivatives of the fine relay and coarse maps agree to fourth order along analytic perturbations vanishing at the origin.

<a id="k-vii-2-7"></a>

- **K-VII.2.7** [`aroma_transfer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Wicker.lean#L37-L46) *(key result)* — Under criticality, bounds and classical matching, the inherited aroma jets of the two descriptions agree to fourth order at zero.

<a id="k-vii-2-8"></a>

- **K-VII.2.8** [`binds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Branches.lean#L133-L136) *(key result)* — A tempered wave with equal paired and adjoint values on remote tests is annihilated by a power of the dilation operator in every momentum slot.

<a id="k-vii-2-9"></a>

- **K-VII.2.9** [`gang`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56) *(key result)* — The gallery property holds for the cell hypothesis data.

<a id="k-vii-2-10"></a>

- **K-VII.2.10** [`free_rank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean#L159-L165) *(key result)* — The current divergence map is surjective with one-dimensional kernel for a simple gauge group under the derivative tests.

<a id="k-vii-2-11"></a>

- **K-VII.2.11** [`Store_l`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L63-L68) *(numbered result)* — Given a transport datum for the cell hypothesis, a certain scribe property is obtained.

<a id="k-vii-2-12"></a>

- **K-VII.2.12** [`agenda`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L23-L35) *(numbered result)* — Along a filter on pairs of naturals tending to infinity in both coordinates, a certain package of limits holds.

<a id="k-vii-2-13"></a>

- **K-VII.2.13** [`dewWt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Prise.lean#L31-L44) *(key result)* — For large k, along any pair of sequences tending to infinity, an eventual estimate holds for the Wilson-type specialization of the weighted quantity.

<a id="k-vii-2-14"></a>

- **K-VII.2.14** [`reveals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Masts.lean#L58-L65) *(key result)* — The choice property for the data holds.

<a id="k-vii-2-15"></a>

- **K-VII.2.15** [`midAwake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Leaf.lean#L40-L52) *(key result)* — Under the scene, flare and credibility hypotheses, the intermediate-scale payoff converges to the limiting payoff constant for simple gauge groups.

<a id="k-vii-2-16"></a>

- **K-VII.2.16** [`legacy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Garnet.lean#L59-L61) *(key result)* — For every power p, the scaled sequence H^p times s_i of the medium tends to zero.

<a id="k-vii-2-17"></a>

- **K-VII.2.17** [`hullage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Phantom.lean#L37-L50) *(key result)* — There exists a mission (limit object) realizing the origin-coordinate sequence of core fields along the sequence of sides.

<a id="k-vii-2-18"></a>

- **K-VII.2.18** [`crestship`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Ell.lean#L59-L82) *(numbered result)* — For large stage index, a crest estimate holds uniformly in parameters p and N.

<a id="k-vii-2-19"></a>

- **K-VII.2.19** [`treasury`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Pallas.lean#L46-L64) *(main result)* — For all large levels k, along any filter where path lengths and sides tend to infinity, eventually there exist darts at level k satisfying an ε-quantitative property.

<a id="k-vii-2-20"></a>

- **K-VII.2.20** [`through`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Flo.lean#L41-L46) *(key result)* — If nonempty embers exist from level m onward and the path lengths exceed m+n+1, there exist sound darts at level m with the saving property over n+1 levels.

<a id="k-vii-2-21"></a>

- **K-VII.2.21** [`pay_step`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Native.lean#L81-L88) *(key result)* — There exists a family of sound darts at the given level achieving a prescribed saving at each step of the construction.

<a id="k-vii-2-22"></a>

- **K-VII.2.22** [`touring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Toil.lean#L29-L56) *(numbered result)* — Under an aura hypothesis on the terrace levels, a stage estimate holds for all large i uniformly.

<a id="k-vii-2-23"></a>

- **K-VII.2.23** [`trod`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Heli.lean#L39-L51) *(numbered result)* — Under the aura condition at level l, eventually in i a statement about the associated index holds.

<a id="k-vii-2-24"></a>

- **K-VII.2.24** [`saturate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L33-L44) *(main result)* — Contradiction: the assumed fixed vacuum situation is impossible (False is derived).

<a id="k-vii-2-25"></a>

- **K-VII.2.25** [`garnet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shepherd/Folly.lean#L38-L61) *(key result)* — Under expense, separation and weight hypotheses, the root test of the back-transported lens function is bounded by an exponential over w_m squared.

<a id="k-vii-2-26"></a>

- **K-VII.2.26** [`local_eigen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/SpectrumGap.lean#L108-L112) *(key result)* — A tempered wave satisfying evaporation and a pairing–adjoint identity on remote probes vanishes for n≥4 and has a width property, a spectral-gap-type conclusion.

<a id="k-vii-2-27"></a>

- **K-VII.2.27** [`awake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Awake.lean#L32-L53) *(key result)* — Along the limiting sequence, a regularized trace quantity built from the field converges to the limiting land payoff constant of the gauge group.

<a id="k-vii-2-28"></a>

- **K-VII.2.28** [`quaff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Cask/Votive.lean#L42-L67) *(key result)* — Given a decked bound at scale k and matching tile data, the root test of the pulled-back function at level J is bounded by an exponential in the ratio-powered treasury over w_m squared.

<a id="k-vii-2-29"></a>

- **K-VII.2.29** [`saga`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Pious.lean#L97-L127) *(key result)* — Under scene and flare hypotheses, the trace functional has an asymptotic expansion given by the leading mu-squared term plus corrections.

<a id="k-vii-2-30"></a>

- **K-VII.2.30** [`formulate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Laurel.lean#L53-L78) *(key result)* — There exist coefficient sequences with bounded norm, bijective composite and a balance relation, whose first component converges to the force constant of G.

<a id="k-vii-2-31"></a>

- **K-VII.2.31** [`small_means`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Terrain.lean#L26-L51) *(key result)* — For rescaled vectors approximating the swale, the polynomially weighted sequence tends to zero.

<a id="k-vii-2-32"></a>

- **K-VII.2.32** [`local_position`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/VacuumLocal.lean#L95-L139) *(key result)* — Vacuum locality: for remote probes, the paired and adjoint evaluations of the vacuum wave functions agree in relative position variables.

<a id="k-vii-2-33"></a>

- **K-VII.2.33** [`article`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Spite.lean#L32-L46) *(key result)* — For each index and epsilon, eventually most parameter pairs admit a nearby vector whose orbits at both levels coincide with prescribed ones and which preserve the rho-value.

<a id="k-vii-2-34"></a>

- **K-VII.2.34** [`euclidean_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L75-L80) *(key result)* — A Euclidean field with the asymptotic behavior cannot agree eventually in the past with any finite polynomial field description.

<a id="k-vii-2-35"></a>

- **K-VII.2.35** [`welfare`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shepherd/Spindle.lean#L46-L51) *(key result)* — Separated clusters with bounded cover number and bounded functions satisfying an expense hypothesis yield the decked estimate for the associated configuration.

<a id="k-vii-2-36"></a>

- **K-VII.2.36** [`lay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Cask/Common.lean#L17-L54) *(key result)* — Under separation, cover-number, decay and hit hypotheses on a cluster family, the associated expansion satisfies a decked (bounded-activity) estimate.

<a id="k-vii-2-37"></a>

- **K-VII.2.37** [`slopeL`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Samen.lean#L23-L42) *(key result)* — For a simple gauge group, the regulated quantity has a logarithmic pole whose coefficient is 12 times the slope constant, up to a bounded error uniform in the cutoff scale.

<a id="k-vii-2-38"></a>

- **K-VII.2.38** [`penumbra`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Pony.lean#L30-L65) *(key result)* — The shine sequence is bounded by a constant times a controlling rate and its linear functional converges to minus the slope constant.

<a id="k-vii-2-39"></a>

- **K-VII.2.39** [`fawn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Pine.lean#L11-L39) *(key result)* — Along a filter, the coboundary-type observable built from the lush field of the scene converges (in the Rose sense) to a scaled lens observable.

<a id="k-vii-2-40"></a>

- **K-VII.2.40** [`rungs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Garnet.lean#L62-L68) *(key result)* — The sequence s satisfies the Prosper property relative to the given data.

<a id="k-vii-2-41"></a>

- **K-VII.2.41** [`expire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Mortal.lean#L37-L43) *(key result)* — For large i, the Wilson moment of a backward-transported function is bounded by U plus V times support size times exp(-2 prism(hatBeta)).

<a id="k-vii-2-42"></a>

- **K-VII.2.42** [`pages`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/April.lean#L65-L71) *(key result)* — For large scale and large side length, any admissible configuration satisfying the matching conditions has its limiting vector within epsilon of a fixed target vector.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

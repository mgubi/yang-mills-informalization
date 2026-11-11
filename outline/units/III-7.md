# III.7. Matching the Wilson energy to fourth order

*Part III — Ultraviolet construction (renormalization group).*

Matches the effective action to the Wilson energy through fourth order.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/III-7.md) · [← Previous: III.6](III-6.md) · [Next: III.8 →](III-8.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** [`YM/Next/STATIONARY/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY), [`YM/WilsonBulk/Spectral/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral), [`YM/UVExtension/Projection/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Projection), and a few lines of [`YM/UVExtension/Reward/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward). **Size:** 19,945 lines in the source allocation: 19,391 in `Next/STATIONARY`, 286 in `UVExtension/Projection`, 215 in `WilsonBulk/Spectral`, and about 50 elsewhere.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

The leading action and one-loop term are represented by exponentially weighted curvature paths. The leading action matches Wilson at the finest level and the stationary tree action at each step through order four; the one-loop coupling shift has slope $\kappa=11C_G/(24\pi^2)$.

**Proposition III.7.1 (path data, beds, Fourier kernels).** A leg transports the Lie-algebra component $\mathcal F(u)$ of $(u-u^{-1})/2$ from a plaquette along a lattice walk; its length is the walk length plus four. A $k$-atom contracts $k$ legs with a coefficient tensor $a$; it is invariant when the resulting polynomial is $\mathrm{Ad}$-invariant, and its weight is $\|a\|_1e^{\sigma\,\mathrm{length}}$. A path datum $R$ comprises rows $\ell_R(U)_{(x,P)}=\sum_k\lambda_{P,k}\,\mathrm{leg}_{P,k}(U,x)$ for six plaquette orientations and sequences of two-, three- and four-leg atoms. For a clip with $c_{\rm dir}>0$ and absolutely convergent series,
$$\mathrm{main}_{\mathbf c,R}=\frac1{384}\sum_s\left[c_{\rm dir}E_W+\tfrac12\sum_p|\ell_R(U)_p|^2+\sum_{x,k}(\mathcal A_k^{(3)}+\mathcal A_k^{(4)})(U,x)\right]_{U\to sU};$$
$\mathrm{loop}_R$ similarly averages two-leg atoms over signed axis permutations.

$\mathrm{Bounds}(\mathbf c;\sigma,C,\Lambda)$ requires $\sigma>0$, weighted row sums and cubic/quartic sums at most $C$, loop sum at most $\Lambda$, invariant atoms, normalization $c_{\rm dir}\delta_{PQ}+\sum_{P'}\hat\ell_{P'P}(0)\hat\ell_{P'Q}(0)=\delta_{PQ}$, and summable loop coefficients with zero zeroth and first displacement moments for each orientation-colour pair.

A bed $B=(D,\tilde D,H,\tilde H,\rho)$ consists of translation-invariant plaquette kernels; attachment means rows, summed by endpoint plaquette and displacement, give $\rho$. On $\Lambda_n$, $\mathrm{Floor}(B,\mathbf c,n;\varepsilon,C)$ means $D\tilde D=H\tilde H=1$, $\Phi^{\mathsf T}\Phi=H$ for $\Phi=(\sqrt{c_{\rm dir}}\,1;\rho)$, $\hat H(0)=1$, $Hd_1=Dd_1$, and symmetric $H,D$ between $\varepsilon I$ and $CI$. The strip bound is $\sum_y e^{\sigma|y|_1}|K(y)|\le C$ entrywise.

A kernel is strip-analytic of width $\sigma$ and size $K$ if it is holomorphic, $2\pi$-periodic in every scalar momentum coordinate, and bounded by $K$ where $|\mathrm{Im}\,p_{j,a}|<\sigma$. It records the complexified coefficient $D^rF(0)/r!$ with error $\epsilon$ if the coefficient on every tuple of canonical unit plane waves differs by at most $\epsilon$ from $|\Lambda_n|$ times the kernel when momenta sum to zero, and from zero otherwise. For two legs, $\alpha_b$ is twice the real $s^2$-coefficient of $\hat K_{(b,b),(1,1)}(se_0)$; the bed quadratic kernel has $\alpha_b=1$ when its metric has positive strip width and $\hat H(0)=1$.

*Status:* definitions; path specifications are from III.1. *Lean:* [`RG.PathData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L150-L154), [`PathData.Bounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L173-L185), [`Floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68), [`Recorded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Pathways.lean#L491-L492), [`alphaPay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L699).

**Proposition III.7.2 (Wilson jet).** For every gauge group $G$, $\sigma_0>0$ and $A,Z\ge0$, there exist $0<\sigma\le\sigma_0$ and $C\ge0$ such that: if $n_i\to\infty$, $c_{\rm dir}\le Z$, $\rho\in\mathrm{strip}(\sigma_0,A)$, Floor holds for every side with some bounds $a,b$, the bed gauge form is signed-permutation invariant on each $\Lambda_{n_i}$, and $D=1$ there, then a datum $Q$ attached to $B$ has straight-route rows, zero loops, and
$$Q\in\mathrm{Bounds}(\mathbf c;\tau,k,\Lambda)\quad(0<\tau\le\sigma,\ k\ge\max(C,6Ae^{4\sigma_0}),\ \Lambda\ge0).$$
On every $\Lambda_{n_i}$, $\mathrm{main}_{\mathbf c,Q}(e^x)$ and $E_W(e^x)$ are real-analytic at zero with equal derivatives of every order $j\le4$.

*Status:* theorem. *Lean:* [`Stationary.launch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L270-L305).

**Proposition III.7.3 (one-loop slope).** For simple $G$, $\sigma,\varepsilon,\tau>0$ and $C,Z,A\ge0$, there is $D\ge0$ such that, for every odd $L\ge1$, $n_i\to\infty$, clip $c_{\rm dir}\le Z$, bed with $H\in\mathrm{strip}(\sigma,C)$, Floor bounds $(\varepsilon,C)$ on every side and signed-permutation-invariant gauge form on these tori, and every attached $R\in\mathrm{Bounds}(\mathbf c;\tau,A,\Lambda)$ with $\Lambda\in\mathbb R$, the function
$$\Pi_\mu(x)=\tfrac12\log\det(\mathcal H_{\mathbf c,R}(e^x)+d_Ud_U^*+\mathcal M_\mu)-\log\det(d_U^*d_U+\mathfrak m_\mu),\qquad\mu=1/L,$$
has a strip-analytic two-leg recording kernel $\hat Y$ with errors $|\Lambda_{n_i}|e_i$, $e_i\to0$ exponentially in $n_i$ at an $L$-dependent rate, and $|\alpha_b(\hat Y)+\kappa\log L|\le D$ for every colour $b$. Here $\mathcal H(U)$ is the Hessian at $y=0$ of $\mathrm{main}_{\mathbf c,R}(e^yU)$, $(d_U\phi)_e=\phi(e_-)-\mathrm{Ad}(U_e)\phi(e_+)$, $\mathfrak m_\mu=\mu^2[\mu^2(d_U^*d_U+\mu^2)^{-1}]^9$, and $\mathcal M_\mu$ applies it componentwise at initial endpoints.

*Status:* theorem; $D$ is independent of $L$. *Lean:* [`pouring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L17-L52).

**Proposition III.7.4 (one step and iteration).** Fix simple $G$, kernel parameters $K$ with penalty $a>0$, stage $J$, $\varepsilon,w,\delta>0$ and $D,Z,C,Z'\ge0$. There exist output bounds $A_*\ge0,s>0$; for every input $\tau>0,A\ge0$ there exist $d\ge0,\gamma>0,u$ and functions $\Theta_0(L),\Lambda_0(L)$, under these hypotheses:

- Admissible steps $\Lambda_{Lm_i}\to\Lambda_{m_i}$ use kernel $K$ and one stage-$J$ patch, $L\ge u$, $m_i\to\infty$, $m_i>1$, and fine sides at least $100$ times the patch extent.
- Fine/coarse clips satisfy $p_{\rm dir}\le Z,q_{\rm dir}\le Z'$. Fine $H,\rho\in\mathrm{strip}(w,D)$ with Floor $(\varepsilon,D)$ on every side; coarse $H_T,\rho_T\in\mathrm{strip}(\delta,C)$ with Floor $(\varepsilon',C)$ on every side for some real $\varepsilon'$. Both gauge forms have signed-permutation symmetry on their tori.
- A tower satisfies III.1's quadratic interpolation, curl-transport and diagonal-transport identities. Its interpolation kernel obeys strip bounds $(w,D/L^{1+|\nu|})$ for every fine-coordinate difference list $|\nu|\le2$.
- Fine $R\in\mathrm{Bounds}(\mathbf p;\tau,A,\Lambda)$ is attached to $B$, $\Lambda\ge1$. For each $i$, an axial forest $F_i$ and branch $g_i$ with $g_i(0)=0$ are given. The branch and fine action are real-analytic at zero, and $g_i$ is stationary for every block-kernel choice $t$; the free-variable second variation at $(0,0)$ is at least $\eta\sum_e|v_e|^2$ for a common $\eta>0$ and every $t$. Their derivatives are the axial free interpolant minus the copied-field derivative, and their tree-level second jets equal the coarse quadratic form. A local Haar chart ratio $\mathsf J$ is given.

Then there exist $Y$ attached to $T$ with straight-route rows and $\alpha\in\mathbb R$ such that
$$Y\in\mathrm{Bounds}(\mathbf q;\eta',A',\Lambda')\quad(0<\eta'\le s,\ A'\ge A_*,\ \Lambda'\ge\max(\Lambda_0(L),\Lambda/2)),\qquad |\alpha+\kappa\log L|+1\le d.$$
For every $i,t$, the tree action $S_t(x,g_i(x))$ and $\mathrm{main}_{\mathbf q,Y}(e^x)$ have equal jets through order four. Here
$$S_t(x,z)=\mathrm{main}_{\mathbf p,R}(U_{x,z})+a\sum_e\left(1-d_{\rm rep}^{-1}\mathrm{Re}\,\mathrm{tr}(V_e\Pi_t(U_{x,z})_e^{-1})\right),$$
where $V=e^x$, $U_{x,z}$ is the forest lift with free variables $z$, and $\Pi_t$ is the block predictor. The one-loop function
$$\mathrm{th}_{i,t}=\mathrm{loop}_R(U_{x,g_i(x)})+\tfrac12\log\det\mathrm{Hess}_zS_t(x,g_i(x))-\log\prod_e\mathsf J(g_i(x)_e)$$
is analytic at zero, with positive Hessian determinant nearby. For every $\Theta\ge\Theta_0(L)$, $c'\le\gamma$ and coarse real plane waves $v=\mathrm{Re}(e^{ip\cdot x}\xi)$, $w=\mathrm{Re}(e^{ip'\cdot x}\zeta)$ whose direction-colour amplitudes have modulus at most one,
$$\Big|D^2\mathrm{th}_{i,t}(0)[v,w]-D^2\big(\alpha\,\mathrm{quad}_{\mathbf q,Y}+\mathrm{loop}_Y\big)(0)[v,w]\Big|\le|\Lambda_{m_i}|\Theta e^{-c'm_i}.$$
Both one-loop functions are real-analytic at zero; $\mathrm{quad}$ omits cubic/quartic atoms. The drift is independent of $L$; $\Lambda_0=a_0L^4+b_0\log L+c_0$ and $\Theta_0=b_1L^4$ with nonnegative constants.

For iteration, fix positive stage widths/lower bounds, stage amplitudes, $K$ and clip bounds. Choose maximal path widths $\sigma_j$ and minimal amplitudes $A_j$; for every $0<\tau_j\le\sigma_j,A'_j\ge A_j$ choose drifts $d_j\ge0$, rates $\gamma_j>0$, minimal factors $u_j$; for every compatible choice of stage parameters with direct clip coefficients below their prescribed bounds, drifts at least $d_j$ and block-factor lower bounds at least $u_j$, and then every admissible choice of block factors, choose volume thresholds and Hessian bounds $\eta_j>0$; for every admissible protection sequence choose coupling-entry thresholds.

For any subsequent $\Gamma_j\ge1$, $0<c_j\le\gamma_j$, compatible history meeting III.2's thresholds, free-field horizon satisfying III.10's strip, Floor, symmetry, top-identity, interpolation and three-form coercivity conditions, second horizon with identical beds/interpolation/curl kernels, and Haar ratio, there are kinetic data $(\alpha_{N,m},P_{N,m},g_{N,m})$.

Every $P_{N,m}$ is attached with level-$m$ bounds and loop amplitude $\mathrm{loopCap}_m$; $P_{N,N}$ is the Wilson top datum on every volume with zero loops. For every $m<N$, volume and axial forest, the branches satisfy stationarity, the derivative condition, second-variation bound $\eta_{J_{m+1}}$, classical match, $|\alpha_{N,m}+\kappa\log L_m|+1\le\mathrm{drift}_{m+1}$, and the finite bound with $(\Gamma_{J_{m+1}},c_{J_{m+1}})$ at loop amplitude both $\mathrm{loopCap}_{m+1}$ and $1$.

*Status:* step and iteration theorems, conditional on the stated inputs. *Lean:* [`transition_cap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L92-L182), [`geared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L59-L66), [`Kin.Planned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L93-L115).

**Proposition III.7.5 (completed free inverse).** For stage $j$, kernel parameters $K$, $\sigma,\varepsilon>0$, $\Omega\ge0$, there exist $\eta>0$ and, for every $L$, $A_L\ge0$: every admissible stage-$j$ patch and bed with $H\in\mathrm{strip}(\sigma/L,\Omega)$ and Floor $(\varepsilon,D)$ on every side have a completed block-Bloch inverse $\mathcal G_B\in\mathrm{strip}(\eta,A_L)$ satisfying $\mathcal C_B\mathcal G_B=1$ on every step, for any coarse side and kernel choice. The joint free form is $\langle dv,Hdv\rangle+a\|{-}Qv+d_ch\|^2$, completed by $F_{1/L}^{\mathsf T}F_{1/L}$; $F_\mu=d_{\!1}^*P_f+\mathfrak m_\mu X$, with $X$ minus the fine rooted-frame logarithm derivative. Matrices use physical counting bases; $\eta$ is uniform in $L$.

*Status:* theorem. *Lean:* [`WilsonBulk.uniform_backing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Backing.lean#L54-L66).

**Proposition III.7.6 (Faddeev–Popov identity).** For an admissible step, clip $\mathbf p$, $R\in\mathrm{Bounds}(\mathbf p;\sigma,A,\Lambda)$ with $\sigma>0,A,\Lambda\in\mathbb R$, an axial branch $g(0)=0$ analytic and stationary for every kernel choice with second variation bounded below by $\eta\sum_e|v_e|^2$, $\eta>0$, every $\mu>0$, kernel choice $t$ and local Haar chart ratio, for coarse fields $x$ near zero
$$\det\mathcal P_\mu>0,\qquad\mathrm{th}=\mathrm{loop}_R(U_{x,g(x)})+\tfrac12\log\det\mathcal P_\mu-\log\det\mathcal G_\mu.$$
Here $\mathcal P_\mu$ acts on all fine-link and coarse-frame directions: it is the left-coordinate Hessian of
$$\mathscr S_t(V;U,h)=\mathrm{main}_{\mathbf p,R}(U)+a\sum_e\left(1-d_{\rm rep}^{-1}\mathrm{Re}\,\mathrm{tr}\big(V_e[\mathrm{gauge}_h\Pi_t(U)]_e^{-1}\big)\right)$$
at $V=e^x$ and the lifted joint stationary configuration, completed by $F_\mu^{\mathsf T}F_\mu$; $F_\mu=d_U^*P_f+\mathfrak m_\mu X$, where $X$ is the rooted-frame derivative at that configuration, and $\mathcal G_\mu=d_U^*d_U+\mathfrak m_\mu$. The underlying identity is $T^2\det\mathcal P_\mu=\det M(\det\mathcal G_\mu)^2$, with axial Hessian $M$ and Haar Jacobian $T$.

*Status:* theorem. *Lean:* [`tribute`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L177-L202).

<a id="unit-inputs"></a>

## 2. What it uses

- I.1: gauge group, Wilson action and Casimir; [`casimir`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182).
- III.1: path, block-step and kinetic specifications; III.2: compatible histories and constant thresholds, [`Supply.Paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162).
- III.6: analytic stationary branches and free-interpolation derivative, [`Integrated.stationary_scene`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L229-L232).
- III.10: bed symmetry and free-field horizon conditions, [`Craft.Rack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L63-L73); supplied globally by III.4.
- II.1: Haar chart, [`chart_ok`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L84). III.16/III.3: Laurent/Bloch strip calculus.
- Standard results: polarization, lattice Poincaré/Koszul lemma, Schur's lemma, Faddeev–Popov procedure, background-field method, Balaban propagator bounds and rotation-invariant shell integration. No one-loop coefficient is assumed.

<a id="unit-strategy"></a>

## 3. Strategy

After lower jets are matched, gauge invariance makes residual Fourier Taylor kernels transversal. Quantitative lattice Poincaré division factors them through curvature; exponentially decaying Laurent coefficients give cubic and quartic path atoms. This matches Wilson at the top and the stationary tree action at each coarse level.

The Faddeev–Popov identity replaces axial determinants and Haar factors by covariant vector and ghost determinants. Uniform inverse bounds permit comparison with the infrared-regulated fine determinant. Its continuum bubble determines the logarithmic slope; subtracting that multiple of the coarse quadratic kernel leaves a fourth-order momentum zero, represented by loop atoms.

<a id="unit-steps"></a>

## 4. Steps

1. **Fourier kernels and Ward identities.** Local analytic translation sums give strip-analytic kernels; vanishing lower jets and gauge invariance give transversality in the infinite-volume limit. [`gathered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/LocalOracle.lean#L312-L348), [`withdrew`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Ward.lean#L647-L697).
2. **Curvature factorization.** Hadamard division of $e^{ip_j}-1$ solves each leg with controlled strip loss; invariant Laurent coefficients give atoms. Successively remove cubic and quartic residuals. [`allleg`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/ManyLegs.lean#L533-L549), [`assembly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L561-L595).
3. **Determinants and inverses.** Axial determinant factorization and Haar density give III.7.6; real coercivity followed by complex-strip perturbation bounds the completed inverses uniformly in block-scaled norms. [`tribute`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L177-L202), [`post_cert`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/ComplexGap.lean#L330-L353).
4. **Compute the slope.** Vector and ghost bubbles have angular average $-(11/3)C_G|k|^{-4}$; normalized integration over $1/L<|k|\le1$ yields $-\kappa\log L$. The shell error $O(|k|^{-3}+L^{-2}|k|^{-6})$ is integrable with an $L$-independent bound; the infrared ball and outer region also contribute bounded remainders. [`poleSpin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L326-L338), [`absoluteGeode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L346-L408).
5. **Compare and subtract.** Contact terms do not change $\alpha$; coarse/fine determinant comparison costs $O(1)$, and aliasing preserves $\alpha$. The residual two-leg kernel yields loop atoms with zero zeroth and first moments. [`quoting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L67-L96), [`pole_reduced`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L719-L741), [`color_pipe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L394-L435).
6. **Iterate.** Input-dependent classical terms carry $L^{-1}$, inherited loops $L^{-2}$; large $L$ fixes output bounds, and coupling thresholds absorb newly generated $O(L^4)$ loops. Downward induction gives the kinetic data. [`transition_cap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L92-L182), [`geared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L59-L66).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

The coefficient calculation must reach the blocked determinant with error uniform in $L$, through contact cancellation and every Fourier alias. Curvature factorization must preserve decay and previously imposed leg constraints. Output widths and classical amplitudes precede input amplitudes. The auxiliary regulator respects gauge transformations and unsigned permutations; full signed-permutation symmetry is asserted for the blocked action.

<a id="unit-notation"></a>

## 6. Notation

$\Lambda_n$ has $n^4$ sites; $U=e^x$. $E_W(U)=\sum_p(1-d_{\rm rep}^{-1}\mathrm{Re}\,\mathrm{tr}\,U_p)$ in representation dimension $d_{\rm rep}$; $C_G$ is the adjoint Casimir. $\rho,H,D$ are bed roots, metric and diagonal; $d_1$ is the lattice curl, while $d_{\!1}$ is $d_U$ at $U=1$. $P_f$ projects onto fine links, $Q$ is the block average, $d_c$ the coarse gradient. Levels $m=0,\ldots,N$ run from coarse to fine, and $J_{m+1}\in\{J_m,J_m+1\}$. $\mathrm{loopCap}_m$ is the allowed loop amplitude.

<a id="unit-limitations"></a>

## 7. What remains unexplained
Subsidiary quotient, strip-perturbation, tadpole/bubble, determinant/Haar, contact and alias estimates remain partly at statement level. The reason for regulator power nine is unsettled. Global hypotheses have not been checked in every downstream application; the complete compactness and limiting-jet argument belongs to III.13.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/III-7.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md), [III.1](III-1.md), [III.16](III-16.md), [III.6](III-6.md), [III.10](III-10.md), [III.2](III-2.md).

**Referenced by:** [VII.2](VII-2.md), [III.2](III-2.md), [III.13](III-13.md), [III.4](III-4.md), [III.14](III-14.md), [VII.1](VII-1.md), [III.12](III-12.md).

## Lean source

**Source allocation:** 19,945 attributed lines; 3,533 line-counted declarations; 4,156 assigned declaration names. Of the assigned names, 4,108 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- work package [`YM/Next/STATIONARY/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY) — 19,391 lines.
- work package [`YM/UVExtension/Projection/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Projection) — 286 lines.
- work package [`YM/WilsonBulk/Spectral/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral) — 215 lines.
- work package [`YM/UVExtension/Reward/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward) — 30 lines.
- work package [`YM/UVExtension/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension) — 23 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`free/stationary connection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/B70FreeStationaryConnection.lean#L17-L56)
- [`Bid.Retained`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L104-L105)
- [`Bid.one_for_all`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Scope.lean#L35-L43)
- [`Bid.Sworn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55)
- [`Bid.Larger`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L64)
- [`Bid.HeatG`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L83-L84)
- [`slopeConstant_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176)
- [`Gauge.slopeConstant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184)
- [`frontR`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Block/Static.lean#L20)
- [`tip_fuel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L700-L708)
- [`subtract_fee`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L710-L727)
- [`GrantF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L15-L22)
- [`medalCue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L84)
- [`rankCue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L85)
- [`coreCue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L86)
- [`Firm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Infrastructure/Jets.lean#L199)
- [`Rays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Infrastructure/Jets.lean#L28-L29)
- [`noteAt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Infrastructure/Jets.lean#L341)
- [`root_determines`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Completion.lean#L491-L502)
- [`medals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Completion.lean#L59-L60)
- [`postroom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/FourPoint.lean#L221)
- [`certified`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L140-L161)
- [`bounty`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L166-L167)
- [`treasury`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L63-L114)
- [`grenade`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Regulator.lean#L338)
- [`cannonade`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Regulator.lean#L499)
- [`beckon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L101-L105)
- [`Fluent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L115)
- [`claiming`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L122-L143)
- [`BranchRow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L166)
- [`Bubble`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L170-L177)
- [`bump`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L18-L49)
- [`budding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L220-L225)
- [`energized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L254-L285)
- [`FullPaths`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L301-L305)
- [`plowed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L307-L335)
- [`waits_up`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L353-L358)
- [`under_contract`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L366-L391)
- [`clocks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L51-L74)
- [`BasesFine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L93-L99)
- [`transfer_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L105-L113)
- [`rowPath`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L169-L171)
- [`emitBase`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L173-L174)
- [`rowPrice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L176)
- [`symbol_match`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L214-L258)
- [`born`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L76-L103)
- [`HorizCalc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L20-L23)
- [`Hull`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L25)
- [`Scud`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L26-L38)
- [`age_control`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L42-L49)
- [`cap_invoice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L74-L80)
- [`Transition`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L86-L90)
- [`priceDivision`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Koszul.lean#L84)
- [`div_var`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Koszul.lean#L88-L128)
- [`reach_symbol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L122-L159)
- [`draft_pipe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L281-L324)
- [`violet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L343-L376)
- [`achieved`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L377-L386)
- [`bequest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L66-L92)
- [`profit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Fourier.lean#L454-L482)
- [`boundedTip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L24-L41)
- [`fine_alpha`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L670-L705)
- [`Freezer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/UniformMatrix.lean#L270-L272)
- [`poleVec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L125)
- [`haloRate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L127-L141)
- [`keelRay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L155)
- [`Rally.coin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L179-L184)
- [`Rally.shell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L191-L222)
- [`Waves1`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L276)
- [`Waves2`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L277)
- [`astronomy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L278-L292)
- [`amena`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L333)
- [`gemF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L356-L363)
- [`tideMark`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L41-L54)
- [`HouseWord.done`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L451-L456)
- [`saunter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L528-L535)
- [`polar_clock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L136-L159)
- [`polar_m`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L200-L202)
- [`joy_two`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L270-L275)
- [`cartWeight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L28)
- [`joy_heights`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L292-L304)
- [`Wilson_stream`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L312-L326)
- [`Pointwise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L373-L377)
- [`top_Wilson`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L441-L471)
- [`exchangeYield`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Exchange.lean#L407-L415)
- [`matched`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L254-L260)
- [`veneer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L349-L358)
- [`greyson`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L363-L403)
- [`PoleTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/AuxReferences.lean#L138)
- [`rankAux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/AuxReferences.lean#L45)
- [`fineMag`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/AuxReferences.lean#L46)
- [`inch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/Slabs.lean#L189)
- [`SameJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L105-L106)
- [`ClassicalMatch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L108-L109)
- [`Precision.mainTerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L27-L28)
- [`tested`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L81-L84)
- [`thermal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L46-L49)
- [`draft`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L51)
- [`FiniteBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L62-L71)
- [`Kin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L74-L77)
- [`Precision.Bed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L35-L40)
- [`Attached`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L44-L46)
- [`β̂_m`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79)
- [`loopCap_m`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L86)
- [`RG.Clip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139-L146)
- [`metric_zero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L161-L162)
- [`loop_jets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L167-L169)
- [`RG.Slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L38-L40)
- [`RG.Atom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L84-L86)
- [`interview`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Projection/Fumes.lean#L56-L87)
- [`fitting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Projection/Ink.lean#L79-L99)
- [`insideLine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Projection/Lines.lean#L89-L109)
- [`completedM`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Backing.lean#L18-L20)
- [`jointInverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Backing.lean#L22-L23)
- [`completion_choice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Joint.lean#L44-L69)
- [`same_thermal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05.lean#L42-L57)
- [`hessian_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Graphs.lean#L75-L79)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-iii-7-1"></a>

- **K-III.7.1** [`gathered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/LocalOracle.lean#L312-L348) *(key result)* — A summable family of local analytic functionals with weighted bounds sums to an analytic function with uniformly controlled jet bounds, dimension-free.

<a id="k-iii-7-2"></a>

- **K-III.7.2** [`vanish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L611-L625) *(key result)* — For simple gauge group and distinct axes with vanishing leap-tip coefficient, the relevant data function vanishes to order four along the axes.

<a id="k-iii-7-3"></a>

- **K-III.7.3** [`withdrew`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Ward.lean#L647-L697) *(key result)* — Uniform lift conditions transfer along a sequence of analytic forces tending to zero, except for ray vanishing orders.

<a id="k-iii-7-4"></a>

- **K-III.7.4** [`frame`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Chart.lean#L421-L435) *(numbered result)* — The Army property is preserved on composing with frame evaluation components.

<a id="k-iii-7-5"></a>

- **K-III.7.5** [`wedlock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Vertex.lean#L371-L379) *(key result)* — There exists a family of kernels with exponentially decaying bounds and analytic rays that realizes the prescribed generating data.

<a id="k-iii-7-6"></a>

- **K-III.7.6** [`wall_lift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Koszul.lean#L571-L587) *(key result)* — A cycle-valued leg with cost and jet bounds is a coboundary of a leg one degree higher with controlled cost, preserving vanishing on the wall.

<a id="k-iii-7-7"></a>

- **K-III.7.7** [`carry_plan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L255-L278) *(key result)* — Under convergence hypotheses, the limiting row-scape of a sequence of kernels coincides with the carried row from the limit object at real momenta.

<a id="k-iii-7-8"></a>

- **K-III.7.8** [`allleg`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/ManyLegs.lean#L533-L549) *(key result)* — For arity at least three, a contractible family of cost-bounded functions is the curl of a family of cost-bounded potentials, with cost loss by a constant factor.

<a id="k-iii-7-9"></a>

- **K-III.7.9** [`strokes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Pathways.lean#L193-L201) *(numbered result)* — A cost-bounded picture admits a real, color-invariant Laurent representation with controlled cost at fixed arity.

<a id="k-iii-7-10"></a>

- **K-III.7.10** [`colors_align`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Ward.lean#L192-L216) *(key result)* — For an analytic function with controlled recorded data and a shaded picture and skin, the series expansion matches the function to the stated aperture order.

<a id="k-iii-7-11"></a>

- **K-III.7.11** [`scene_gate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L58-L61) *(key result)* — For a given roll and price data there exists a budget gap parameter, from the stationary scene.

<a id="k-iii-7-12"></a>

- **K-III.7.12** [`tribute`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L177-L202) *(key result)* — Near zero, the completed Hessian determinant is positive and the Haar-to-counting Jacobian ratio is controlled inside the exponential patches.

<a id="k-iii-7-13"></a>

- **K-III.7.13** [`stadium`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/RealGap.lean#L647-L664) *(key result)* — For self-adjoint-symmetric tactics with bounded serial norms, the carried matrix of the force operator is stable with a uniform constant on real momenta.

<a id="k-iii-7-14"></a>

- **K-III.7.14** [`filing_ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L231-L234) *(numbered result)* — The filing data are firm with controlled bounds and vanish to order four along axes, and are recorded against the loop series at order zero.

<a id="k-iii-7-15"></a>

- **K-III.7.15** [`launch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L270-L305) *(key result)* — Given input bed data, there is a path datum whose main term agrees to fourth jet order with the Wilson energy and satisfies bounds, uniformly for large volumes.

<a id="k-iii-7-16"></a>

- **K-III.7.16** [`assembly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L561-L595) *(key result)* — Real-analytic extensions with jet control can be matched, up to order-five error, by classical emitted data built from atoms with wall bounds, uniformly along large volumes.

<a id="k-iii-7-17"></a>

- **K-III.7.17** [`extra_curves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/SoftTransfers.lean#L59-L103) *(key result)* — For atom families with wall bounds, classical curvature terms from cubic and quartic vertices are realized by pictures with uniform bounds enabling the induction.

<a id="k-iii-7-18"></a>

- **K-III.7.18** [`quoting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L67-L96) *(key result)* — A grant bound yields footprint bounds for bounded plane-density performances, used for flux, transition and ceiling caps.

<a id="k-iii-7-19"></a>

- **K-III.7.19** [`drift_tip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L789-L818) *(key result)* — For a simple gauge group and screened data, the alpha payment of the profitable cue vanishes for each color index.

<a id="k-iii-7-20"></a>

- **K-III.7.20** [`post_cert`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/ComplexGap.lean#L330-L353) *(key result)* — Under weighted two-end budget conditions, the force-kernel operator built from the tactics satisfies a freezing (coercivity) certificate with constants independent of the patch.

<a id="k-iii-7-21"></a>

- **K-III.7.21** [`uniform_backing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Backing.lean#L54-L66) *(key result)* — For beds with strip metric and floors, the joint inverse is uniformly bounded in the strip norm with constants depending only on the level, and inverts the completed matrix.

<a id="k-iii-7-22"></a>

- **K-III.7.22** [`pouring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L17-L52) *(key result)* — For every simple gauge group, the fluent (annulus) certificate holds.

<a id="k-iii-7-23"></a>

- **K-III.7.23** [`honored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L25-L68) *(key result)* — Given inputs, one can choose convergence widths and constants independent of later kinetic data so that the grant-type bounds hold for all patches and path data along sequences of sides tending to infinity.

<a id="k-iii-7-24"></a>

- **K-III.7.24** [`setWest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/VertexWeights.lean#L357-L382) *(key result)* — For bounded loop data, there are constants such that for all small patches and admissible families, one can construct order-3 and order-4 weighted texts bounding the stationary expansion with explicit constants.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

# III.3. Free lattice kernels and covariances

*Part III — Ultraviolet construction (renormalization group).*

Computes the free lattice kernels and establishes the decay and positivity bounds needed for Gaussian integration.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/III-3.md) · [← Previous: III.2](III-2.md) · [Next: III.4 →](III-4.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** [`YM/Next/FREE_KERNELS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS) (5,450 lines), [`YM/MultiNext/SIGNED_SOURCE_CONTINUATION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION) (1,674), [`YM/Further/FREE_COVARIANCE_KP/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP) (924), [`YM/UVNext/PRICED_KERNELS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS) (533), [`YM/Further/CORRECTED_LIFT_COEFFICIENTS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/CORRECTED_LIFT_COEFFICIENTS) (248), [`YM/Push/CUTOFF_PROJECTORS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/CUTOFF_PROJECTORS) (139), [`YM/ProofPorts/GRID_RENEWED_RESERVES/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProofPorts/GRID_RENEWED_RESERVES) (30). **Size:** 8,998 lines in the source allocation.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

For fine/coarse levels, primes denote coarse data and $V=(\sqrt c\,1,R)$, where $c$ is the direct clip coefficient. The diagonal identities (D) and roll identities (R) are
$$
\begin{aligned}
 d^*HdW&=Q^*d^*H'd,&QW&=1-\kappa^{-1}d^*H'd,\\
 T^*d&=dQ,&TD'd&=DdW;\\
 M_f^*M_f+M_n^*M_n+O^*O&=1,&\sqrt\kappa M_n^*&=V'd,\\
 M_fV'd&=VdW,&M_nV'd&=\kappa^{-1/2}d^*H'd,\\
 OV'd&=0,&M_f^*Vd&=\sqrt\kappa M_n^*Q.
\end{aligned}
$$
The defect identity (Δ) is
$$H'(H'^{-1}-T^*H^{-1}T-\kappa^{-1}dd^*)H'=d_2^*Pd_2.$$
Under (D),(R), for all fine/coarse potentials $A,B$, setting $Z=A-WB$ gives
$$\langle dA,HdA\rangle+\kappa|QA-B|^2=\langle dB,H'dB\rangle+\langle dZ,HdZ\rangle+\kappa|QZ|^2.$$

**Proposition III.3.1 (catalogue).** For every kernel choice $K$, there exist sequences $\alpha_j,\eta_j,\gamma_j>0$, $\Omega_j\in\mathbb R$, $\lambda_j\ge0$, $b_j\in\mathbb N$, $j\in\mathbb N$, depending only on $K$. For every history of index $j\ge4$ and clip coefficient $0<c\le\gamma_j$, its explicit metric data $(D,D^{-1},H,H^{-1},R)$ lie in $\mathcal S(\alpha_j,\Omega_j)$, with
$$H^{-1}=D^{-1}+\lambda_j(d_2D^{-1})^*(d_2D^{-1}).$$
On every torus, $DD^{-1}=HH^{-1}=1$, $c1+R^*R=H$, $\hat H(0)=1$, $Hd=Dd$; $H,D$ are symmetric with bounds $\eta_j1\le H,D\le\Omega_j1$. For every gauge group, $d^*Hd$ is hypercubic invariant; empty histories give $D=1$.

For every flight $(j,t)$, $j,t\ge4$, $t\in\{j-1,j\}$, and difference word $|u|\le j-2$,
$$\nabla_uW\in\mathcal S(\alpha_j,\Omega_jL^{-1-|u|}),\qquad\nabla_uT\in\mathcal S(\alpha_j,\Omega_jL^{-2-|u|}).$$
Its rolled kernel $\mathcal P_{\lambda_j,\lambda_t}\in\mathcal S(\alpha_j,\Omega_j)$; if $L\ge b_j$, its symbol is Hermitian with $\eta_j1\le\hat{\mathcal P}\le\Omega_j1$ at every real momentum.
*Status:* theorem. *Lean:* [`pledges`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L67-L93).

**Proposition III.3.2 (families).** For every gauge group $G$ and kernel choice $K$, a catalogue as above exists such that every sheet $\mathfrak S$ with kernel $K$ admits a second table $(\alpha'_j,\Omega'_j,\eta_j)$. For every trajectory with that kernel and the sheet's stage profile satisfying, at every level and step respectively,
$$c_i\le\gamma_{J(i)},\qquad L_i\ge b_{J(i+1)},$$
there are pre-repair and output families simultaneously for all $N\ge0$, $0\le i\le N$. They share the explicit history metrics with amendments $\lambda_{J(i)}$ and flight kernels $W,T$ of index $(J(i+1),J(i))$ for $i<N$; bare histories are empty and $D^{N,N}=1$. Before repair, III.3.1's bounds and symmetry hold, as do (D) and (Δ) on the schedule torus pairs of each step, with $P\in\mathcal S(\alpha_j,\Omega_j)$ Hermitian and bounded below by $\eta_j$ on $\mathrm{ran}\,\sigma_2$ at real momenta, $j=J(i+1)$. After repair, (D),(R) hold there; metric and difference bounds use the second table, retaining $\eta_j$, and
$$M_n,O\in\mathcal S(\alpha'_j,\Omega'_j),\qquad M_f\in\mathcal S(\alpha'_j,\Omega'_jL_i^{-2}).$$
*Status:* theorem under the credit condition (C1), (C2) as hypothesis. The variant `before_paid` (assigned to III.4) discharges it from the III.9 sheet and the III.2 payment record. *Lean:* [`retained_support`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L134-L145).

**Proposition III.3.3 (all tori).** Every family satisfying III.3.2's output conditions, for any table, satisfies (D),(R) for every $N$, $m<N$ and positive sides $c,f$ with $f=cL_m$, using the same kernels and level clips.
*Status:* theorem. *Lean:* [`complete_roll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Tori.lean#L109-L157).

**Proposition III.3.4 (rolled positivity).** For fixed kernel choice $K$ and integers $j,t\ge4$, there exist $C_0,B>0$ depending only on these data. For every $\lambda\ge C_0$, $\mu\ge0$, there exist $\eta,\sigma,\Omega>0$ such that every flight $(j,t)$ has $\mathcal P_{\mu,\lambda}\in\mathcal S(\sigma,\Omega)$; if $\mu B\le L^2$, its symbol is Hermitian with $\eta1\le\hat{\mathcal P}\le\Omega1$ at all real momenta.
*Status:* theorem. *Lean:* [`Flight.frontier`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L99-L140).

**Proposition III.3.5 (filters).** Define $\mathrm{rail}_M(z)=M^{-1}\sum_{s=0}^{M-1}e^{isz}$ for positive integers $M$, $\mathrm{plank}_M(z)=M^{-1}\sum_{|s|\le(M-1)/2}e^{isz}$ for odd $M$, and $a_L(p)=\prod_a\mathrm{plank}_L(p_a)$. For all sizes where defined and all $z\in\mathbb C$, both line filters satisfy $F_L(Mz)F_M(z)=F_{LM}(z)$ and $|F_M(z)|\le e^{M|\mathrm{Im}\,z|}$; plank is even, $2\pi$-periodic and real on $\mathbb R$. Absolute $c_*,c_1>0$ give $|\mathrm{rail}_M(z)|\ge c_*$ when $M|z|\le3\pi/2$, and $|\mathrm{plank}_M(z)|\ge e^{-c_1M/L}$ for real $z$, $M\le L$, $L|z|\le3\pi/2$. Absolute $B$ bounds both filters at $(q_\ell)_a$, $q_\ell=(p+2\pi\ell)/L$, by $B/(1+|\ell_a|)$ for odd $L$ and $|\mathrm{Re}\,p_a|<5\pi/4$, $|\mathrm{Im}\,p_a|<\pi/4$.
*Status:* theorem. *Lean:* [`plank_bind`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L68-L76), [`principal_plank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L162-L196), [`alias_rail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L200-L245).

**Proposition III.3.6 (curvature covariance).** Fix $\alpha,\eta>0$, $\Omega\in\mathbb R$. A real 2-form kernel $f$ is firm if $f\in\mathcal S(\alpha,\Omega)$, $\hat f(0)=1$, and $\eta|\omega|^2\le\langle\omega,f_n\omega\rangle\le\Omega|\omega|^2$ on every torus; symmetry is not assumed. On $U=\{p\ne0:|p_a|<3\pi/2\}\subset\mathbb R^4$, set
$$\Phi_f=\sigma_1^*\hat f\sigma_1+\sigma_0\sigma_0^*,\qquad G_f=\sigma_1\Phi_f^{-1}\sigma_1^*,\qquad G_\infty=s|p|^{-2}s^*,$$
where $s$ wedges with $ip$. There exist $b>0$ and $C_n\ge0$ for every $n\in\mathbb N$, depending only on $(\alpha,\Omega,\eta)$ and additionally on $n$ for $C_n$, such that for every firm $f$, $p\in U$ and complex 1-form $x$,
$$\mathrm{Re}\langle x,\Phi_fx\rangle\ge b|p|^2|x|^2,\quad\|D^nG_f\|\le C_n|p|^{-n},\quad\|D^n(G_f-G_\infty)\|\le C_n|p|^{1-n}.$$
For scalar $f\in\mathcal S(\alpha,\Omega)$, $\hat f\in C^\infty$ with $\|D^n\hat f\|\le A_n\Omega$ everywhere, $A_0=1$, $A_n=(n/\alpha)^n$ for $n\ge1$.
*Status:* theorems. *Lean:* [`tank_full`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Core.lean#L115-L125), [`gem_quote`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Alloy.lean#L110-L120), [`radial_prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Plain.lean#L101-L133).

**Proposition III.3.7 (nonlinear calculus).** *Status:* theorems.

(a) For $b,k\in\mathbb N$, $k\le b$, there exists $C=C(b,k)\ge1$. If $L\ge1$, $M\ge0$, and $p:\mathbb Z^4\to E$, with $E$ a real normed space, satisfies $\|\nabla_up(x)\|\le ML^{-1-|u|}(1+L^{-1}|x|_1)^b$ for every $x$ and $|u|\le k$, then its degree-at-most-$i$ Newton pieces $P_i(x)=\sum_{|\nu|=i}\binom{x}{\nu}\nabla^\nu p(0)$ obey $\|P_i(x)\|\le CML^{-1-i}(1+|x|_1)^b$ for $i<k$; the remainder $p-\sum_{i<k}P_i$ obeys the same bound with $i=k$. *Lean:* [`capital`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/TownHall.lean#L31-L90).

(b) Let $d\in\mathbb N$ and $f:E\to F$ be $C^d$ at $0$ between real normed spaces, with finitely many continuous linear $p_v:E\to E$, $\sum_vp_v=1$, integer weights $Y_v\ge1$. If all derivatives through $d$ of $f(\sum_vt^{Y_v}p_vz)$ vanish at $0$ for every $z$, then $D^mf(0)(x_1,\ldots,x_m)=0$ for all $m\in\mathbb N$ whenever integers $k_i\ge1$ satisfy $\sum_i k_i\le d$ and $p_vx_i=0$ for $Y_v>k_i$. *Lean:* [`cancel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Weighted.lean#L120-L147).

(c) Let $b,d\in\mathbb N$, $b\le d$, $n\ge2$, $o\in\Lambda_n$, and $X\subset\Lambda_n$ finite with $10\,\mathrm{dist}_\infty(x,o)<n$ for every $x\in X$ (torus distance). Suppose $u:\mathrm{Config}(G,\Lambda_n)\to\mathbb C$ is gauge invariant, depends only on links with both endpoints in $X$, and $u\circ\exp$ is $C^b$ at $0$. If $u(U_{J,o}(t))$ has zero derivatives through $b$ for every radial polynomial connection jet through weight $d$ (degree $r-1$ has weight $r\ge2$), then $D^m(u\circ\exp)(0)(w_1,\ldots,w_m)=0$ for all $m\in\mathbb N$, integers $p_i\ge1$, $\sum_i p_i\le b$, whenever the link field $w_i$ is polynomial of degree $\le p_i-1$ in centred initial-site coordinates on those links; other links are unrestricted. Here $U_{J,o}(t)$ denotes based holonomies with weight-$r$ components multiplied by $t^r$. *Lean:* [`wiped`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/PMOM.lean#L43-L61).

(d) For every $j\in\mathbb N$, every family of homogeneous degree-$(j+1)$ polynomials $Q_a:\mathbb R^4\to\mathfrak g$ ($a=1,\ldots,4$) decomposes as $Q_a=K_a+\partial_ar$, where $r=(j+2)^{-1}\sum_ax_aQ_a$ has degree $j+2$ and $K$ has degree $j+1$ with $\sum_ax_aK_a=0$. *Lean:* [`locale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Averaging.lean#L84-L114).

(e) There exists $C(G)>0$: if $0\le b\le1$, $\tau\ge C(G)b^2$, $v$ is a Lie-algebra link field with $|v_x|\le b$ on links within distance $5$ of $Y$, and plaquettes touching $Y$ have chord distance $\le\tau$ from $1$ under $\exp(v)$, those bounds persist under $\exp(sv)$ for all $0\le s\le1$. *Lean:* [`strings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Safeguard.lean#L148-L177).

<a id="unit-inputs"></a>

## 2. What it uses

- I.1: lattice, gauge group and signed symmetries; III.1: block averages, clips and trajectories; III.2: sheets and payment.
- III.6: positivity, square roots and linear algebra F06–F09; III.10: repair and rigidity; III.16: Fourier kernels and weighted norms.
- Fourier/Bloch decomposition, Schur complements, lattice Koszul exactness, Newton interpolation and radial gauge. The penalty $\kappa>0$ comes from $K$.

<a id="unit-strategy"></a>

## 3. Strategy

Solve the Gaussian block-spin problem by alias sums. Cancel the singular principal-alias poles before inversion; smoothing and geometric dilation along histories give uniform strip bounds. Amend inverse metrics away from exact forms to make the defect positive, then construct the isometry blocks without changing $W,T$ or the quadratic forms on potentials.

<a id="unit-steps"></a>

## 4. Steps

1. History filters have uniform alias decay and a principal-alias lower bound; geometric dilation controls products of filters. [`Train.smooth_upper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L169-L184).
2. Lagrange's identity gives the diagonal curvature metric from the auxiliary covariance; cancelling poles gives analytic invertible symbols. [`Train.bend_firm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L188-L194).
3. Alias algebra gives (D), including zero momentum. [`Flight.tangent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Primal.lean#L63-L118).
4. Koszul exactness factors the defect through $d_2$; amendments replace its 3-form factor by $C+\lambda-\mu S^*S$, with $S^*S=O(L^{-2})$. [`Flight.rebased`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L144-L181).
5. Fix the catalogue, impose the credit bounds and apply F06–F09 to construct (R); periodisation limits extend identities to all tori. [`Bid.pinning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L107-L166), [`Echo.allAcross`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Echo.lean#L105-L116).
6. Coercivity and the resolvent identity give the covariance comparison; weighted Taylor expansion and radial decomposition give the nonlinear vanishing results. [`gem_quote`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Alloy.lean#L110-L120), [`covers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Routes.lean#L63-L127).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

Bounds must hold uniformly over arbitrary history lengths and block sizes. Positivity is established at real momenta before thinning the analytic strip. Harmonic forms require defect identities on all tori. Repair constants depend on direct clip coefficients; cross-kernel decay is measured on the coarse lattice.

<a id="unit-notation"></a>

## 6. Notation

$\Lambda_n=(\mathbb Z/n\mathbb Z)^4$; $d_r$ acts on real $r$-cochains, $d=d_1$, $\sigma_r=\hat d_r$, and $*$ is adjoint. $R\in\mathcal S(\alpha,\Omega)$ means, for every entry, $\sum_ye^{\alpha|y|_1}|R_{ab}(y)|\le\Omega$. $\hat R,R_n$ denote Fourier symbols and periodisations; aliases use centred representatives. $J(i)$ is the stage index and $c_i$ the direct clip coefficient. $D^n$ denotes full Fréchet derivatives with multilinear operator norm; $\nabla_u$ denotes fine forward differences. The cochain inner product counts cells. Histories comprise odd blocks $L\ge3$, stage indices $J\ge4$ dropping by at most one; a flight $(j,t)$ adds one block to an index-$j$ history, giving index $t\in\{j-1,j\}$. $Q$ averages potentials, $W$ minimises the quadratic action, $T$ transports curvature, and $M_f,M_n,O$ are the isometry blocks; $C,S$ denote the unamended 3-form defect and transport. [`Towers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L70-L75).

<a id="unit-limitations"></a>

## 7. What remains unexplained
The iterated Feynman-gauge interpretation remains probable. Gauge and harmonic zero modes, Gaussian determinants and integration-variable changes require further treatment in III.4 and III.10. F06–F07 and analytic coefficient extraction are inputs here. III.3.6 asserts no position-space continuum limit or contact-term statement.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/III-3.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md), [III.16](III-16.md), [III.1](III-1.md), [III.6](III-6.md), [II.1](II-1.md), [III.10](III-10.md), [IV.1](IV-1.md), [III.15](III-15.md).

**Referenced by:** [III.2](III-2.md), [III.13](III-13.md), [III.6](III-6.md), [III.11](III-11.md), [III.10](III-10.md), [III.14](III-14.md), [III.4](III-4.md), [VII.2](VII-2.md), [III.9](III-9.md), [VII.1](VII-1.md).

## Lean source

**Source allocation:** 8,998 attributed lines; 1,377 line-counted declarations; 1,593 assigned declaration names. Of the assigned names, 1,559 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- work package [`YM/Next/FREE_KERNELS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS) — 5,450 lines.
- work package [`YM/MultiNext/SIGNED_SOURCE_CONTINUATION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION) — 1,674 lines.
- work package [`YM/Further/FREE_COVARIANCE_KP/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP) — 924 lines.
- work package [`YM/UVNext/PRICED_KERNELS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS) — 533 lines.
- work package [`YM/Further/CORRECTED_LIFT_COEFFICIENTS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/CORRECTED_LIFT_COEFFICIENTS) — 248 lines.
- work package [`YM/Push/CUTOFF_PROJECTORS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/CUTOFF_PROJECTORS) — 139 lines.
- work package [`YM/ProofPorts/GRID_RENEWED_RESERVES/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProofPorts/GRID_RENEWED_RESERVES) — 30 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`Bid.Retained`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L104-L105)
- [`Donate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L21-L22)
- [`Bleeps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L32)
- [`Reaches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L34-L36)
- [`Funds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L38-L40)
- [`Replaces`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L53-L58)
- [`Craft.Rack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L63-L73)
- [`F06`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L84-L85)
- [`F07`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L90-L91)
- [`F08`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L93-L96)
- [`F09`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L99-L101)
- [`Bid.Sworn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55)
- [`Row`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L22)
- [`Row.strip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L26)
- [`Cross`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L26)
- [`installed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L35)
- [`Screen.reproduces`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/CORRECTED_LIFT_COEFFICIENTS/Original.lean#L134-L146)
- [`garnet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Alloy.lean#L15)
- [`pearl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Alloy.lean#L17)
- [`blade_id`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Core.lean#L41-L57)
- [`fuel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Core.lean#L62)
- [`ion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Core.lean#L68-L79)
- [`Firm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Floor.lean#L17-L21)
- [`real_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Floor.lean#L94-L100)
- [`Gem.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Gem.lean)
- [`Value`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Gem.lean#L17)
- [`Weight.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Weight.lean)
- [`Weight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Weight.lean#L39-L41)
- [`Laurent.Width`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L104)
- [`attenuation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Mediator.lean#L70-L98)
- [`Maps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Mom.lean#L43-L52)
- [`converse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Weighted.lean#L84-L115)
- [`pledge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L30)
- [`amend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L31)
- [`bail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L32)
- [`treble`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L33)
- [`pledge_warm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L41-L59)
- [`insurance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L78-L79)
- [`forced_amend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L80-L94)
- [`obligations`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L95-L127)
- [`entry_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bank.lean#L49-L67)
- [`Train.recover_rho`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L150-L153)
- [`Train.bulb_firm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L160-L163)
- [`Train.bulb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L39)
- [`Train.bend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L43-L44)
- [`Train.rho`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L46)
- [`Train.lift_bend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L88-L100)
- [`Flight.wire_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Cable.lean#L97-L103)
- [`before_paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Calendar.lean#L108-L124)
- [`Willing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Calendar.lean#L28)
- [`credit_from_sheet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Calendar.lean#L95-L102)
- [`zone`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Chip.lean#L21)
- [`domainRadius`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Chip.lean#L24)
- [`meter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Chip.lean#L82)
- [`pink`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Curl.lean#L54)
- [`blue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Curl.lean#L55)
- [`Flight.sale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Curl.lean#L90)
- [`heart_banked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Dispatch.lean#L40-L47)
- [`Flight.ahead_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Docked.lean#L53-L71)
- [`Flight.render`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L23-L25)
- [`Flight.rollFunds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L27-L29)
- [`Flight.netted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L34-L41)
- [`Flight.absorb_before`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L58-L95)
- [`Train.levelNoise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L131)
- [`Train.levelD`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L133-L134)
- [`D_feedback`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L154-L156)
- [`Train.pole_split`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L192-L201)
- [`massFilter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L23)
- [`feed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L62)
- [`full_cover`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Ground.lean#L22-L35)
- [`low_ceiling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Ground.lean#L37-L51)
- [`Defined`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Ground.lean#L54-L58)
- [`bid_bed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Ground.lean#L69-L120)
- [`top_metric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Heart.lean#L140-L155)
- [`vault`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Heart.lean#L20)
- [`pulse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Heart.lean#L22)
- [`Double.duplex`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lifts.lean#L121-L143)
- [`duplex_stock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lifts.lean#L145-L154)
- [`rail_height`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L114-L122)
- [`plank_height`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L127-L133)
- [`rail_lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L140-L152)
- [`plank_lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L154-L155)
- [`rail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L34)
- [`plank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L38)
- [`rail_bind`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L51-L62)
- [`Moderate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Moderate.lean#L105-L106)
- [`pilot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Pilot.lean#L46-L47)
- [`Mag`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L20)
- [`BottomQuote`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L22-L24)
- [`HopQuote`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L25-L28)
- [`Catalog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L29-L33)
- [`buys`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L46-L65)
- [`Flight.duo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Primal.lean#L24-L29)
- [`Flight.scaled_tri`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Primal.lean#L33-L49)
- [`retained_presents`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L121-L126)
- [`diagonal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L44-L56)
- [`check_bleep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L57-L58)
- [`stageHop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L64-L65)
- [`location`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L73)
- [`destination`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L74)
- [`Present`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L82-L85)
- [`Credit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L87-L88)
- [`shelves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L90-L120)
- [`script_main`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Scripts.lean#L122-L139)
- [`script_cross`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Scripts.lean#L141-L156)
- [`script_dual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Scripts.lean#L179-L211)
- [`Flight.intake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Sell.lean#L136-L149)
- [`Flight.dep_zero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Sell.lean#L158-L187)
- [`Flight.banked_dollars`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Sell.lean#L215-L227)
- [`Flight.gap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Sell.lean#L33-L35)
- [`Flight.fund`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Sell.lean#L43)
- [`rotor_law`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signal.lean#L103-L120)
- [`Flight.land`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signal.lean#L35)
- [`hinge_transport`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signal.lean#L60-L63)
- [`sworn_metric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signed.lean#L65-L70)
- [`secure_both`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Strands.lean#L30-L38)
- [`Secured.propels`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Strands.lean#L85-L107)
- [`area`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L18)
- [`Train.smooth_lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L186-L194)
- [`Train`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L22-L24)
- [`Train.smooth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L36)
- [`Train.bind`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L43-L48)
- [`wire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Wire.lean#L63)
- [`ZeroAlias.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/ZeroAlias.lean)
- [`mean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/FrameResponse.lean#L65-L66)
- [`Towers.Deep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L111-L114)
- [`Horizon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L119-L121)
- [`MapPrices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L123-L128)
- [`Horizon.Suffices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L132-L139)
- [`Bed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L35-L40)
- [`Bed.full`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L49-L51)
- [`Floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68)
- [`Towers.Diagonal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L82-L86)
- [`Towers.Roll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L88-L96)
- [`K`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L68-L69)
- [`Inputs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L76-L79)
- [`action`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L93-L103)
- [`panes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Purl.lean#L20-L53)
- [`housing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Dome.lean#L90-L101)
- [`Paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162)
- [`Sheet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35)
- [`Rolls`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L50-L53)
- [`Speeds.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProofPorts/GRID_RENEWED_RESERVES/Speeds.lean)
- [`canon_first`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProofPorts/GRID_RENEWED_RESERVES/Speeds.lean#L37-L49)
- [`spectral_bank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/CUTOFF_PROJECTORS/Bank.lean#L161-L169)
- [`drop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/CUTOFF_PROJECTORS/Frame.lean#L104-L105)
- [`retain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/CUTOFF_PROJECTORS/Frame.lean#L108-L109)
- [`Levels`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131-L134)
- [`KernelChoices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L37-L45)
- [`Clip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139-L146)
- [`testLinks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L74-L75)
- [`Echo.schedule_sides`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Echo.lean#L118-L119)
- [`Echo.Sound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Echo.lean#L38)
- [`Echo.all`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Echo.lean#L77-L81)
- [`universal_diagonal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Tori.lean#L46-L60)
- [`orthogonal_iff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Tori.lean#L87-L98)
- [`F06`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F06.lean#L64-L128)
- [`F07`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07.lean#L180-L201)
- [`F08`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F08.lean#L53-L146)
- [`F09`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F09.lean#L41-L150)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-iii-3-1"></a>

- **K-III.3.1** [`Flight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signal.lean#L22-L29) *(numbered result)* — A structure packaging one orientation of a hop with two stage indices.

<a id="k-iii-3-2"></a>

- **K-III.3.2** [`capital`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/TownHall.lean#L31-L90) *(numbered result)* — Under a drift hypothesis, the first k binomial pieces and the tail are bounded with powers of inverse L, polynomial in size.

<a id="k-iii-3-3"></a>

- **K-III.3.3** [`cancel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Weighted.lean#L120-L147) *(numbered result)* — For a weighted-graded function, mixed derivatives at the origin vanish when total order is within the degree and each input has lower weight than its grade requires.

<a id="k-iii-3-4"></a>

- **K-III.3.4** [`principal_plank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L162-L196) *(numbered result)* — A lower bound on the norm of a plank factor at real argument, of exponential form in the ratio M/L.

<a id="k-iii-3-5"></a>

- **K-III.3.5** [`strings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Safeguard.lean#L148-L177) *(numbered result)* — If a radial endpoint configuration with small increments is healthy at threshold τ, then all rescaled configurations along the ray are healthy.

<a id="k-iii-3-6"></a>

- **K-III.3.6** [`locale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Averaging.lean#L84-L114) *(numbered result)* — A positive-degree homogeneous family splits into a Taylor radial jet plus a gradient of a homogeneous function.

<a id="k-iii-3-7"></a>

- **K-III.3.7** [`pilot_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Docked.lean#L103-L110) *(numbered result)* — A per-alias decay bound for the pilot kernels on the cube.

<a id="k-iii-3-8"></a>

- **K-III.3.8** [`frontier`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L99-L140) *(numbered result)* — There exist constants such that for large scale ratio the strip estimate holds and, when mass is small relative to L squared, the funds condition holds with uniform constants.

<a id="k-iii-3-9"></a>

- **K-III.3.9** [`wiped`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/PMOM.lean#L43-L61) *(key result)* — For a local gauge-invariant function vanishing on test jets to order b, mixed derivatives at the identity of total order up to b with screened direction constraints vanish.

<a id="k-iii-3-10"></a>

- **K-III.3.10** [`retained_support`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L134-L145) *(main result)* — For any kernel choice there exist uniform catalog constants such that for every sheet and compatible levels, a horizon with the rack, retention, sufficiency and sworn properties exists, with prices fixed before the length.

<a id="k-iii-3-11"></a>

- **K-III.3.11** [`complete_roll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Tori.lean#L109-L157) *(key result)* — If a horizon suffices for the map prices, then the all-period output holds at every scale step from c to f along the block structure.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

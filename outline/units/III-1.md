# III.1. The block-spin step and the symmetric gauge fixing

*Part III — Ultraviolet construction (renormalization group).*

Defines one block-spin step and the gauge fixing that preserves the lattice symmetries.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/III-1.md) · [← Previous: II.2](II-2.md) · [Next: III.2 →](III-2.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** [`YM/RG/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG) (Block, Patch, Measurable, Push, Masks, Activities, PathActions, Bounded, History), [`YM/Branch/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch), [`YM/Pressure/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure), [`YM/PREC/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC), [`YM/PCalc/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc), [`YM/Tree/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree), [`YM/Exterior/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Exterior), and the small packages `YM/RG17/`, `YM/Push/CORRECTED_COLUMNS/`, `YM/Planned/CALIBRATED_MIXED_HISTORY/`, `YM/UVNext/ANNULUS_COMPARISON/`, `YM/FullVolume/Train/`, `YM/SectorTools/ACTUAL_SCALAR_LEDGER/`. **Size:** 4,219 lines (693 declarations) in the source allocation.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

Throughout, $N\ge1$, $G\subset U(N)$ is closed, $c\ge1$, $f=cL$, $L\ge3$ is odd, $J\ge4$, $R=(J+3)L$, and $K=(\kappa,\delta,\varepsilon,a)>0$. Branch conditions mean uniqueness of the centre-normalized minimizing frame when every route holonomy in every centre axial gauge has chord $<\delta$ (B1), uniqueness of the minimizing predictor when its minimum price is $<\varepsilon$ (B2), and nonempty eligible axial tags for every configuration (B3).

**Proposition III.1.1 (Markov kernel).** Under (B1)–(B3), for every real $\beta$, $\rho_\beta$ is nonnegative, Borel, bounded and satisfies $\int\rho_\beta(U,V)d\mu_c(V)=1$ for every $U$. For every Banach-valued $F\in L^1(\mu_f)$, $\mathcal P_\beta F(V)=\int\rho_\beta(U,V)F(U)d\mu_f(U)$ exists for every $V$, is integrable, depends linearly on $F$, and preserves its integral. Positivity and integrability in $V$ need no branch conditions. *Status:* theorem. *Lean:* [`isKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L203-L208).

**Proposition III.1.2 (covariance).** Under (B1)–(B3), for every $\beta,U,V$, fine gauge $k$, signed axis permutation $s$ and coarse site $b$,

$$\rho_\beta(k\cdot U,(k\circ\mathrm{embed})\cdot V)=\rho_\beta(U,V)=\rho_\beta(s_{Lb}U,s_bV),\qquad\mathrm{embed}(x)=Lx.$$

A calendar satisfying branch conditions on every patch has block control and Markov kernels at every step. *Status:* theorem. *Lean:* [`covary`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L56-L67); [`channel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L50-L54).

**Proposition III.1.3 (uniform branch constants).** Let $d$ be as in III.1.5 and $r_G>0$ a unique-nearest-point tubular radius of $G$. For every $\kappa>0$, $0<\delta\le d/\sqrt N$, $0<\varepsilon\le r_G^2/(2N)$ and $a\ge16$, (B1)–(B3) hold for every patch. Every configuration and axis ordering admit an eligible root. *Status:* theorem. *Lean:* [`Axial.viable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L137-L142); [`RG.frame_unique`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Uniform.lean#L18-L56); [`RG.predictor_unique`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Uniform.lean#L58-L63).

**Proposition III.1.4 (axial gauge).** For every list $l$ of distinct axes, $r\in\mathbb N$, $o\in B_r$ and configuration $U$ on $\mathbb Z^4$, put $S=\{y\in B_r:y_j=o_j\ (j\notin l)\}$. Some $x\in S$ gives an axial gauge $g_y=T_U(x\to y;l)$ with $E_S(g\cdot U)\le4|l|(2r+1)F_S(U)$. *Status:* theorem. *Lean:* [`Axial.existence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L80-L105).

**Proposition III.1.5 (synchronization uniqueness).** There exists $d(G)\in(0,1/4]$ such that, for all finite nonempty $n,\Lambda$, data $W:n\times n\times\Lambda\to G$ with $W_{xxk}=1$, $W_{yx\sigma(k)}=W_{xyk}^{-1}$ for a permutation $\sigma$, and $\|W_{xyk}-1\|\le d$ have this property: any two global minimizers over $G^n$ of $\mathrm{avg}_{x,y,k}\mathrm{pr}(h_xW_{xyk}h_y^{-1})$ differ by one global left multiple. *Status:* theorem. *Lean:* [`Branch.align`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L232-L272).

**Proposition III.1.6 (frame comparison).** There exists $A(G)>0$ such that, for every patch, $K$, configuration $W$, positive-frame-mass tag, realized frame $h$, and gauge $H:\mathbb Z^4\to G$, some $q\in G$ satisfies

$$\sum_{y\in B_R}\mathrm{ch}(q^{-1}h_yH_y^{-1})\le A(2R+1)[E_{B_R}(H\cdot W)+a(2R+1)F_{B_R}(W)].$$

No branch conditions are needed. *Status:* theorem. *Lean:* [`Pressure.synchronized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Gauge.lean#L135-L162).

**Proposition III.1.7 (common gauge).** Fix $G,K$ and $j\ge4$; set $\ell=2j+15$, $D=16\ell$, $C=A\ell(D+a\ell)$ and $R'=(j+7)L$. For every step with $J=j$, fine $U$, coarse $x$, and tag usable at $x$, there exist $H:\mathbb Z^4\to G$ and $p_y\in G$ for $y\in B_2$ such that, for every such $y$,

$$E_{B_{R'}}(H\cdot U^{(x)})\le DL\,\mathrm{port}(x,U),\qquad\sum_{i\in B_R}\mathrm{ch}(p_y^{-1}h_i^{(x+y)}H_{i+Ly}^{-1})\le CL^2\mathrm{port}(x,U).$$

Every positive-tag-mass tag is usable everywhere. *Status:* theorem. *Lean:* [`Pressure.planting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L72-L122).

**Proposition III.1.8 (coarse curvature).** With III.1.7's constants and $C_8=8\max(1,\varepsilon^{-1})(2C+D)$, for every step with $J=j$, configurations $U,V$, coarse site $x$, tag $t$ usable at $x$, and plane $p$,

$$\mathrm{ch}(Q(U,t)_{(x,p)})\le C_8L^{-2}\mathrm{port}(x,U),\qquad\mathrm{ch}(V_{(x,p)})\le\mathrm{fuel}(Q,V)_{(x,p)}+C_8L^{-2}\mathrm{port}(x,U).$$

*Status:* theorem. *Lean:* [`Pressure.qdc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L210-L252).

**Proposition III.1.9 (densities and histories).** Representations evaluate to an exponential of vacuum minus action and masked regular activities, times the gas. Flags mark sites touched by plaquettes of chord above threshold. Reading links and flags in $X$ requires only links in $X$ and corners of plaquettes meeting $X$. The gas equals $1$ without flags. Every lawful representation (path bounds and valid activities) has bounded Borel evaluation. Selected histories start at the bare Wilson density and obey exact pushes; every selected history satisfies $\int\mathrm{eval}_{N,p,m}d\mu=Z_{N,p}(\beta_{N,p,N})$ for all $m\le N$. *Status:* definitions, with four consequences proved; quantitative construction belongs to III.3–III.10. *Lean:* [`UsesFinal.allReads`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L108-L110); [`gas_one`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L135-L147); [`Rep.envelope`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L195-L198); [`History.partition_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L242-L249).

**Proposition III.1.10 (tube identity).** For every tube, path cutoff, real thresholds and $U,Q,V$, the six works satisfy

$$W_F+W_I+W_C+W_N+W_L+W_D=C_f+P-C_c,$$

where $C_f,C_c$ are truncated crown sums and $P=\sum_b\kappa\,\mathrm{ch}(V_bQ_b^{-1})^2/2$. *Status:* theorem. *Lean:* [`Tube.locates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L145-L163).

**Proposition III.1.11 (energy per seed).** Estimator data require: for every sufficiently large $L$ and then sufficiently large $W$, some $\kappa_0>0$ gives $\kappa_0t^2|A|\le\mathrm{Work}(A)$ at all sufficiently large reference couplings, uniformly over compatible tubes, forests and plots with trivial trunks and $c\ge100(1+\varrho)$. For a directed history satisfying ringing, each $J_0\le i\le j\le i+1$ admits $\mu>0$ such that $\mu t_{m+1}^2|A|\le\mathrm{Work}(A)$ for all $N,m<N,p$ with $(J_{m+1},J_m)=(j,i)$ and every plot at $(\hat\beta_m,F(j,i))$ with trivial trunks. *Status:* requirement, proved in III.10; transfer theorem here. *Lean:* [`Stores.Plot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L51-L58); [`Teller.Grants`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L129-L131); [`Testing.notation_ticket`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L166-L181).

**Proposition III.1.12 (kinetic specification).** Fix levels, a quadratic horizon, Haar-chart density and positive stage constants. Kinetic data assign shifts $\alpha$, path data and free-link maps $\psi$. Stages and factors agree with the fixed choices; rows attach to the horizon and satisfy stage bounds. At level $N$, the unmasked, unclipped action is analytic, matches Wilson derivatives through order four, and has zero loop coefficients. For every $m<N$, volume, forest and tag, let $\mathcal I_t$ be the fine unmasked, unclipped unit-coupling action without loops plus predictor penalty, on fields with trunks $1$ and free links $\exp(b_e)(\iota\exp u)_e$, where $\iota$ copies coarse links across block boundaries. Requirements, for every free field $v$, are

$$D_b^2\mathcal I_t(0,0)[v,v]\ge\eta\sum_{e\ {\rm free}}|v_e|^2,\qquad D_b\mathcal I_t(u,\psi(u))=0$$

near zero: $\psi(0)=0$, both maps are analytic, $D\psi(0)$ is the prescribed background adjusted to tree gauge minus the linearized block copy, and the analytic coarse action matches $\mathcal I_t(u,\psi(u))$ through order four. Writing $H_t(u)=D_b^2\mathcal I_t(u,\psi(u))$ in physical coordinates,

$$T_t=\mathcal L_f^\circ(U_F(u,\psi(u)))+\tfrac12\log\det H_t-\log\prod_{e\ {\rm free}}J(\psi(u)_e),\qquad D=\alpha\mathcal Q_c^\circ(\exp u)+\mathcal L_c^\circ(\exp u).$$

$\mathcal L^\circ,\mathcal Q^\circ$ denote loop and quadratic actions; $J$ is the Haar-chart density. Both $T_t,D$ are analytic, $\det H_t>0$ near zero, and

$$|D^2T_t(0)[a,b]-D^2D(0)[a,b]|\le|\Lambda_c|\Theta\Lambda e^{-\gamma c}$$

for real plane waves with direction-colour amplitudes bounded by $1$; $\Lambda$ is the fine loop bound. Also $|\alpha+\kappa_{\rm slope}\log L_m|+1\le\mathrm{drift}_{m+1}$. Directed histories require paid levels, a sufficient horizon, matching recipe and local Haar-chart formula. Moves require exact push, continuation, retention, lawful coarse data, forced-activity bound $\exp[-g_j\mathrm{monitor}_{m+1}^2]$, and $|\beta_m-\beta_{m+1}-\alpha|\le1$. *Status:* definitions; conditional constructors for simple nonabelian $\mathfrak g$ belong to III.2. *Lean:* [`Kin.Planned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L93-L115); [`Directed.Move`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L49-L55).

**Proposition III.1.13 (tree gauge).** For odd $L$, block forests exist. Inverse tree transport gives a gauge equal to $1$ at roots, depending only on trunks, and trivializing them. Every real-Banach-valued integrable $F$ invariant under gauges trivial at roots satisfies $\int Fd\mu_f=\int F(\mathrm{drape}\,s)d\mu_{\rm free}(s)$. For a kernel satisfying III.1.2(a) and gauge-invariant integrable $F$, the same reduction applies to $\mathcal P_\beta F(V)$. *Status:* theorem. *Lean:* [`Forest.pack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L81-L111); [`Forest.pushing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L114-L120).

**Proposition III.1.14 (linearization).** Under (B1)–(B3), for every tag $t$ and coarse link $b$, $v\mapsto Q_b((\exp v_e)_e,t)$ on fine $\mathfrak g$-valued $1$-forms equals $1$ at $v=0$ and is real analytic nearby, using minimizing branches. Its tag-independent derivative is $\mathcal Qv=\mathcal Mv+d_0\mathcal Fv$, and $\mathcal Qd_0\varphi=d_0(\varphi\circ\mathrm{embed})$ for every fine $0$-form. Frames have derivative $h_y^{(x)\prime}=\tau_x(y)-\tau_x(0)$. The kernel is analytic near $(1,1)$ for fixed $\beta$; neighbourhoods may depend on the step. *Status:* theorem. *Lean:* [`Push.derivative`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Derivative.lean#L38-L68); [`Push.prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Derivative.lean#L147-L160).

<a id="unit-inputs"></a>

## 2. What it uses

- I.1: lattice geometry, Haar invariance, Wilson energy and nearest-point projection.
- III.16: offset lengths; III.2: schedules and directed histories; III.10: energy estimates.
- Tubular neighbourhood theorem, analytic implicit function theorem, Fubini, Jensen, continuity of unique compact minimizers.

<a id="unit-strategy"></a>

## 3. Strategy

Minimize the average route price to fix centre-normalized frames, transport across blocks, and average the connectors. The predictor $Q$ is the nearest group point to their weighted matrix mean on its minimizing branch. The kernel averages $\prod_b Z_\beta^{-1}e^{-\beta\kappa\mathrm{pr}(V_bQ_b^{-1})}$ over tags, with $Z_\beta=\int_Ge^{-\beta\kappa\mathrm{pr}(g)}dg$. Unique minimizers handle small fields; symmetric sampling of curvature-controlled axial frames and connectors handles the remaining configurations. A common macro-box gauge compares neighbouring frames.

<a id="unit-steps"></a>

## 4. Steps

1. **Uniform cutoffs.** Normalize minimizers by nearest centroid points; tangential cancellation makes feedback contract. Slab induction gives eligible axial roots. [`align`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L232-L272); [`existence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L80-L105).
2. **Kernel.** Tag probabilities and Haar noise each have mass one; uniqueness and tag permutations give covariance. [`density_total`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L197-L201); [`channel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L50-L54).
3. **Curvature.** Synchronization costs $L^2$, while $w\le L^{-4}$; four padded links give the plaquette bound. [`indicated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L129-L179); [`qdc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L210-L252).
4. **Local analysis.** The implicit function theorem gives derivatives; Haar invariance removes trunks. Adjointness cancels cross terms and squares in the tube identity. [`scheme`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Pred.lean#L129-L187); [`pack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L81-L111); [`Tube.locates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L145-L163).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

Uniqueness must remain uniform in patch size. Both branches must preserve area scaling. Global regularity is Borel; analyticity is local.

<a id="unit-notation"></a>

## 6. Notation

$B_r=\{-r,\ldots,r\}^4$; $\mathrm{ch}(u)=\|u-1\|/\sqrt N$, $\mathrm{pr}(u)=1-\mathrm{Re\,tr}(u)/N$; $\|\cdot\|$ is Frobenius, $|v|=\|v\|/\sqrt N$. $\mu$ denotes product probability Haar measure; $E_X,F_X$ sum link and plaquette chords. $U^{(x)}$ is the root-centred periodic lift; $\mathrm{port}=F_{B_{R'}}(U^{(x)})$. Usable means positive frame masses on $x+B_2$; fuel sums four link discrepancies with multiplicity. $w$ is the $J$-fold block-uniform convolution. $\tau$ averages negative route integrals, $\mathcal M$ averages straight length-$L$ integrals, $\mathcal Fv(x)=\tau_x(0)-\sum_yw_y\tau_x(y)$, and $d_0$ is forward difference. Here $\tau_x(y)=-\mathrm{avg}_{z\in B_R,o\in S_4}\int_{Lx+y\to Lx+z;o}v$.

$\mathrm{monitor}_m=e^{(\log\log\hat\beta_m)^2}$; $t_m=\mathrm{temp}(\hat\beta_m)$, $\mathrm{temp}(z)=z^{-1/2}e^{(\log\log z)^2}$; $t=\mathrm{temp}(\hat\beta+\kappa_{\rm slope}\log L)$, $\varrho=\lceil(\log\hat\beta)^2\rceil$, $\kappa_{\rm slope}=11C_A/(24\pi^2)$.

A store $A$ comprises fine plaquettes, coarse links and coarse sites; $|A|$ sums their cardinalities. $\mathrm{Work}(A)$ sums local works whose fine bases’ parents or coarse bases lie within distance $2\varrho$ of its locations, with cutoff $\lfloor\varrho/10^5\rfloor$. $F(j,i)>0$ is the assigned wire parameter.

<a id="unit-limitations"></a>

## 7. What remains unexplained

Energy lower bounds and kinetic construction belong to later units. The uses of $B_2$ rather than $B_1$, and $J\ge4$ rather than $J\ge1$, remain unspecified here.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/III-1.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md), [III.2](III-2.md), [III.16](III-16.md).

**Referenced by:** [III.10](III-10.md), [III.4](III-4.md), [III.11](III-11.md), [III.13](III-13.md), [III.12](III-12.md), [III.2](III-2.md), [III.7](III-7.md), [III.6](III-6.md), [III.9](III-9.md), [VII.2](VII-2.md), [III.5](III-5.md), [III.14](III-14.md), [III.15](III-15.md), [II.1](II-1.md), [VII.6](VII-6.md), [VIII.1](VIII-1.md), [III.3](III-3.md), [VII.4](VII-4.md), [III.8](III-8.md), [VII.1](VII-1.md), [V.2](V-2.md), [IV.1](IV-1.md), [II.2](II-2.md).

## Lean source

**Source allocation:** 4,219 attributed lines; 693 line-counted declarations; 1,218 assigned declaration names. Of the assigned names, 1,152 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- work package [`YM/Pressure/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure), with [`YM/PREC/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC), [`YM/PCalc/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc) — 1,551 lines.
- work package [`YM/RG/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG) — 1,142 lines.
- work package [`YM/Branch/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch) — 968 lines.
- work package [`YM/Exterior/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Exterior) — 283 lines.
- work package [`YM/Tree/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree) — 178 lines.
- work package [`YM/Push/CORRECTED_COLUMNS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/CORRECTED_COLUMNS) — 36 lines.
- work package [`YM/Planned/CALIBRATED_MIXED_HISTORY/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/CALIBRATED_MIXED_HISTORY) — 20 lines.
- work package [`YM/UVNext/ANNULUS_COMPARISON/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/ANNULUS_COMPARISON) — 18 lines.
- work package [`YM/FullVolume/Train/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Train) — 13 lines.
- work package [`YM/SectorTools/ACTUAL_SCALAR_LEDGER/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/ACTUAL_SCALAR_LEDGER) — 8 lines.
- work package [`YM/RG17/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17) — 2 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`EBare`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L148)
- [`Bid.pricing_order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L173-L202)
- [`price_diff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Center.lean#L63-L70)
- [`min_iff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Center.lean#L72-L93)
- [`weighted_unique`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Center.lean#L95-L108)
- [`Axial.channels`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Channel.lean#L117-L127)
- [`prediction_channel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L13-L20)
- [`mass_channel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L22-L34)
- [`noise_channel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L36-L48)
- [`Calendar.blocks_go`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L70-L72)
- [`edge_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L107-L113)
- [`Axial.eligible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L119-L134)
- [`vertical`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L22-L41)
- [`total_slab`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L43-L78)
- [`StepData.positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L127-L134)
- [`StepData.negative`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L136-L148)
- [`updateGauged`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L150-L157)
- [`predicts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L23-L35)
- [`bond_pull`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L37-L42)
- [`bond_inv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L44-L52)
- [`bond_gauge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L54-L62)
- [`withinChoice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L88)
- [`window_le`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Slide.lean#L120-L152)
- [`Axial.edges`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Slide.lean#L24)
- [`Axial.faces`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Slide.lean#L32)
- [`faces_pins`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Slide.lean#L49-L58)
- [`squares`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Slide.lean#L60-L70)
- [`variation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Slide.lean#L72-L85)
- [`slide_le`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Slide.lean#L87-L118)
- [`self_consistent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L100-L123)
- [`compare_energy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L127-L156)
- [`cluster`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L158-L170)
- [`closeness`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L172-L188)
- [`changes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L190-L201)
- [`weak_changes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L203-L226)
- [`Pairs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L27-L31)
- [`min_cov`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L64-L98)
- [`min_gauged`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Transport.lean#L106-L109)
- [`frame_gauged`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Transport.lean#L111-L133)
- [`weight_invariant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Transport.lean#L135-L141)
- [`axial_channel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Transport.lean#L30-L32)
- [`min_channel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Transport.lean#L34-L38)
- [`good_channel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Transport.lean#L73-L75)
- [`Exterior.curvature_linear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Exterior/Complex.lean#L99-L116)
- [`Extra.Iteration.planned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Planned.lean#L37-L55)
- [`Roost.companyK`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Linger.lean#L23-L51)
- [`casimir`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182)
- [`Gauge.inner_frob_color`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L56-L62)
- [`Gauge.price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L112)
- [`Gauge.chord`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L115)
- [`nearest_tube`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L141-L153)
- [`focus_deriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L155-L170)
- [`nearest_approximate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L172-L181)
- [`nearest_normal_one`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L43-L63)
- [`Gauge.focus`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L91)
- [`Integrated.pressure_grants`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L222-L225)
- [`FundedCompanySelection.company`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedCompanySelection.lean#L49-L106)
- [`Laurent.size`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L34)
- [`Fluctuations.bare`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Bare.lean#L64-L120)
- [`Next.Fluctuations.grants`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L24)
- [`pressure_pricing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L32-L37)
- [`PriceGap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L100-L101)
- [`ClassicalMatch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L108-L109)
- [`Critical`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L88-L91)
- [`Guessed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L97-L98)
- [`hessian`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L42-L44)
- [`thermal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L46-L49)
- [`FiniteBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L62-L71)
- [`Kin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L74-L77)
- [`Push.settled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Derivative.lean#L113-L116)
- [`Push.prediction_cont`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Derivative.lean#L118-L124)
- [`lips`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Derivative.lean#L95-L111)
- [`tau`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/FrameResponse.lean#L57-L59)
- [`fixRoot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/FrameResponse.lean#L63)
- [`mean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/FrameResponse.lean#L65-L66)
- [`Precision.probe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/FrameResponse.lean#L68)
- [`Precision.root_gradient`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/FrameResponse.lean#L92-L96)
- [`Push.authored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Implicit.lean#L27-L50)
- [`stars`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Pred.lean#L116-L127)
- [`focused`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Pred.lean#L44-L47)
- [`hats_zero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Pred.lean#L79-L87)
- [`Horizon.Suffices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L132-L139)
- [`extracted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L26-L27)
- [`wire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L187)
- [`fuel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L189-L190)
- [`comp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L192-L207)
- [`macroR`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L37)
- [`port`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L60)
- [`usable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L62-L63)
- [`wraps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L65-L69)
- [`Road.strips`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Gauge.lean#L34-L49)
- [`Road.revenue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Gauge.lean#L55-L69)
- [`risks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Gauge.lean#L75-L88)
- [`fallback`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Gauge.lean#L95-L132)
- [`price_query`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Macro.lean#L102-L129)
- [`spread`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Macro.lean#L16-L43)
- [`light`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Macro.lean#L48-L79)
- [`traverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Macro.lean#L81-L100)
- [`route_sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Route.lean#L107-L130)
- [`marginal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Route.lean#L50-L54)
- [`slidings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Route.lean#L56-L60)
- [`Tube.vision`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L104)
- [`workF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L122-L124)
- [`workD`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L138-L140)
- [`toll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L55)
- [`arity`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L86-L89)
- [`Teller.live`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L114-L118)
- [`Teller.cash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L124-L125)
- [`Testing.Stamp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L155-L158)
- [`Testing.Ringing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L161-L163)
- [`radiusB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22)
- [`betaF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23)
- [`temp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L25)
- [`fiery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L26)
- [`Stores`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L34-L37)
- [`Stores.assessed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L85)
- [`price_square`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Single.lean#L37-L64)
- [`income_bounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Single.lean#L66-L75)
- [`Pressure.cluster`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Single.lean#L77-L130)
- [`Paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162)
- [`Valid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L106-L111)
- [`admissible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L114-L116)
- [`gas`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L129)
- [`Activities`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L62-L66)
- [`RegularFamily`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L70-L75)
- [`ForcedFamily`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L77-L84)
- [`StepData.chosen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L123-L136)
- [`noise_mass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L146-L155)
- [`IsKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L158-L163)
- [`density_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L184-L190)
- [`connector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L39-L42)
- [`prediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L44-L45)
- [`likelihood`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L49-L51)
- [`density`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L71-L72)
- [`push`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L77-L79)
- [`Calendar.BlockControl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L120-L128)
- [`Levels`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131-L134)
- [`Levels.budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L141-L156)
- [`Levels.transition_mass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L158-L159)
- [`Rep.eval`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L179)
- [`Calendar.hatBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79)
- [`Calendar.threshold`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L83)
- [`flags`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L34-L36)
- [`frameMass_sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L127-L136)
- [`predictorMass_sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L138-L144)
- [`minArg_cont`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L20-L36)
- [`selected_cont`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L50-L53)
- [`best_cont`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L55-L61)
- [`min_open`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L63-L67)
- [`usesMin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L109-L110)
- [`score`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L114-L115)
- [`eligible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L143-L146)
- [`frameMass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L148-L151)
- [`frame`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L153-L155)
- [`bondCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L159)
- [`predict`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L173-L175)
- [`predictorMass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L177-L179)
- [`radius`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L51)
- [`weight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L87-L88)
- [`PathData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L150-L154)
- [`baseTerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L221-L224)
- [`principal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L236-L238)
- [`inChannels`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L241-L242)
- [`push_slice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Push.lean#L17-L24)
- [`push_integrable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Push.lean#L33-L35)
- [`push_integral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Push.lean#L37-L43)
- [`push_add`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Push.lean#L45-L50)
- [`push_smul`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Push.lean#L52-L55)
- [`foldAt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L21)
- [`Forest.compress`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L32-L37)
- [`Forest.names`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L39-L45)
- [`Tree.Forest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L24-L29)
- [`Tree.select`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L33-L72)
- [`trunks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L77)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-iii-1-1"></a>

- **K-III.1.1** [`BudgetPoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L125-L136) *(numbered result)* — A record of budget parameters used for masks and payloads.

<a id="k-iii-1-2"></a>

- **K-III.1.2** [`KernelChoices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L37-L45) *(numbered result)* — A fixed collection of kernel choices made once, with no measurability assumed.

<a id="k-iii-1-3"></a>

- **K-III.1.3** [`Clip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139-L146) *(numbered result)* — A record of clipping parameters per stage.

<a id="k-iii-1-4"></a>

- **K-III.1.4** [`Stage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L45-L61) *(numbered result)* — A record of stage-indexed parameter choices including a source cone cap.

<a id="k-iii-1-5"></a>

- **K-III.1.5** [`Patch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L29-L34) *(numbered result)* — A structure recording a kernel frame and finite tags on a patch.

<a id="k-iii-1-6"></a>

- **K-III.1.6** [`StepData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L22-L25) *(numbered result)* — Data describing one coarse-graining renormalization step from a fine lattice to a coarse lattice.

<a id="k-iii-1-7"></a>

- **K-III.1.7** [`Calendar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L64-L73) *(numbered result)* — A record of fixed numerical scales and hatted coupling forming a schedule.

<a id="k-iii-1-8"></a>

- **K-III.1.8** [`Moves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L87-L96) *(numbered result)* — A record describing transports of whole labels in the signed convention.

<a id="k-iii-1-9"></a>

- **K-III.1.9** [`Branches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185) *(numbered result)* — A bundle of hypotheses that kernel and frame choices must satisfy on a patch.

<a id="k-iii-1-10"></a>

- **K-III.1.10** [`existence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L80-L105) *(key result)* — For any configuration there is a point in a slab whose axial-gauge transport leaves at most 4·(number of axes)·(layers)·(faces) nonidentity edges.

<a id="k-iii-1-11"></a>

- **K-III.1.11** [`Directions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L115) *(numbered result)* — Defines the space of link-increment directions (colors per oriented edge) on a finite lattice of side n.

<a id="k-iii-1-12"></a>

- **K-III.1.12** [`Rep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L165-L171) *(numbered result)* — A denotational representation of histories with support data.

<a id="k-iii-1-13"></a>

- **K-III.1.13** [`Regular`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L154-L161) *(numbered result)* — A predicate that a function on configurations is cylindrical, Borel and gauge-invariant with a consistent germ.

<a id="k-iii-1-14"></a>

- **K-III.1.14** [`Fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L97-L118) *(numbered result)* — A predicate saying a realized trajectory satisfies the numerical constraints required at each stage of the schedule.

<a id="k-iii-1-15"></a>

- **K-III.1.15** [`Bounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L173-L185) *(numbered result)* — A predicate collecting weight and summability bounds on path data in terms of clip, sigma, C, Lambda.

<a id="k-iii-1-16"></a>

- **K-III.1.16** [`align`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L232-L272) *(key result)* — There is a gauge-dependent cutoff d such that, if transition data are within d of the identity, any two solutions of the patch-gluing system differ by a single global left multiple.

<a id="k-iii-1-17"></a>

- **K-III.1.17** [`frame_unique`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Uniform.lean#L18-L56) *(key result)* — For small enough frame cutoff there is a unique minimizing group element for any patch and configuration using the minimizer.

<a id="k-iii-1-18"></a>

- **K-III.1.18** [`viable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L137-L142) *(key result)* — For any gauge and positive penalty there is a kernel choice with that penalty such that every patch satisfies the branch conditions with thresholds independent of P, L, J.

<a id="k-iii-1-19"></a>

- **K-III.1.19** [`frames_channel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Transport.lean#L77-L94) — Frame mass and frame of a pulled-back configuration equal those of the original with reoriented tag and offset composition.

<a id="k-iii-1-20"></a>

- **K-III.1.20** [`History`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L204-L206) *(numbered result)* — The structure of all represented renormalization histories under one blocking schedule.

<a id="k-iii-1-21"></a>

- **K-III.1.21** [`Selected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L234-L240) *(numbered result)* — A bundle of endpoint history cuts for the renormalization-group scheme.

<a id="k-iii-1-22"></a>

- **K-III.1.22** [`Teller`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L89-L96) *(numbered result)* — A record of prices and inputs supplied in a single call, with prices fixed before L.

<a id="k-iii-1-23"></a>

- **K-III.1.23** [`Tube`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L94-L99) *(numbered result)* — A record of tube parameters attached to a step datum.

<a id="k-iii-1-24"></a>

- **K-III.1.24** [`PostCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L81-L89) *(numbered result)* — A record bundling the post-L cost quantities produced for a given supply.

<a id="k-iii-1-25"></a>

- **K-III.1.25** [`Funds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L101-L109) *(numbered result)* — A predicate collecting estimate fields for a tube around a single oriented sector step.

<a id="k-iii-1-26"></a>

- **K-III.1.26** [`LocalRatio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L28-L38) *(numbered result)* — A predicate collecting local ratio bounds for the chart-based ratio of block integrals.

<a id="k-iii-1-27"></a>

- **K-III.1.27** [`synchronized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Gauge.lean#L135-L162) *(key result)* — On any patch there is a single group element such that the frame is uniformly close to any given gauge H, with error bounded by edge and face energies.

<a id="k-iii-1-28"></a>

- **K-III.1.28** [`planting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L72-L122) *(key result)* — For any usable configuration there are gauge choices on a cover with edge and chord sums bounded by constants times the port cost, uniformly in the sizes.

<a id="k-iii-1-29"></a>

- **K-III.1.29** [`Directed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L26-L36) *(numbered result)* — An adapter structure passing dependent estimates through to the actual transfer stack, with common constants.

<a id="k-iii-1-30"></a>

- **K-III.1.30** [`qdc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L210-L252) *(key result)* — For usable block-spin predictions, there is a uniform constant bounding predicted and actual plaquette chord deviations by fuel plus a port-energy term scaled by 1/L^2.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

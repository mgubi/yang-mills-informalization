# III.5. Cluster expansion of the polymer gas

*Part III — Ultraviolet construction (renormalization group).*

Controls sums of interacting polymer activities by a convergent cluster expansion.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/III-5.md) · [← Previous: III.4](III-4.md) · [Next: III.6 →](III-6.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** work packages [`YM/Push/ABSOLUTE_SUMS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS) (3,624 lines), [`YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS) (3,589), [`YM/Push/SECTOR_MEASURE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE) (1,153), [`YM/SectorNext/VACUUM_NORMALIZATION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION) (935), [`YM/Progress/STATIONARY_SCENES/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES) (445). **Size:** 9,746 lines in 1,097 line-counted declarations in the source allocation.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

All propositions are **theorems** under the stated hypotheses. Infinite nonnegative bounds include summability.

**Proposition III.5.1.** For finite labels, reflexive symmetric incompatibility $R$ and real $w$, put $\ell_m=\sum_{z\in\iota^{m+1}}\phi_R^T(z)\prod_aw_{z_a}/(m+1)!$. If $|\ell_m|\le Cq^m$ for every $m\ge0$, $C\ge0$, $0<q<1$, then $\Xi(w)=\exp(\sum_m\ell_m)$. [`Gas.exact_polynomial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L66-L145)

**Proposition III.5.2.** On every finite graph with a distinguished vertex, the absolute alternating sum over connected spanning subgraphs is bounded by its number of spanning trees. [`Graph.pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Graph.lean#L113-L148)

**Proposition III.5.3.** For arbitrary labels, supports $X_i\subseteq\Lambda_n$, $B\in\mathbb N$, $w\ge0$, $a\ge0$, $R\subseteq$ overlap and $\mathrm{Ready}(w;a,\gamma,\delta,q)$, every site $x$ and $m\ge0$ satisfy
$$\sum_{k\ge m}\sum_{z\in\iota^{k+1}:x\in X(z)}\frac{|\phi_R^T(z)|\prod_aw_{z_a}}{(k+1)!}e^{a\mathrm{cov}_B(X(z))}\le\frac{\gamma q^m}{1-q}.$$
The same bound holds for connected finite sets through $x$ of at least $m+1$ labels, weighted by $\prod_iw_ie^{a\mathrm{cov}_B(X_i)}$. If $Q\subseteq\iota$ has total inflated weight $\sum_{i\in Q}w_ie^{(a+\delta)\mathrm{cov}_B(X_i)}\le b$, the order-$m$ cluster sum marked by $Q$, with individual covering weights, is $\le bq^m$. [`Ursell.log_hit_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L224-L243) [`Ursell.cluster_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L148-L183)

**Proposition III.5.4.** For the same supports, real $w$, reflexive symmetric $R\subseteq$ overlap, $a\ge0$ and $\mathrm{Ready}(|w|;a,\gamma,\delta,q)$, the gas converges absolutely with absolute sum $\le e^{n^4\gamma}$; its cluster series converges absolutely to $\log\Xi(w)$, with absolute sum $\le n^4\gamma/(1-q)$ and order-$m$ bound $n^4\gamma q^m$. In particular $\Xi(w)>0$. [`Gas.price_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Log.lean#L114-L149)

**Proposition III.5.5.** Under III.5.4, with nonempty supports and overlap incompatibility, deleting all polymers meeting any $Y\subseteq\Lambda_n$ gives $\Xi(w^Y)=\Xi(w)e^{-p}$. $p$ sums clusters meeting $Y$; their absolute tail from order $m$ is $\le|Y|\gamma q^m/(1-q)$ for every $m\ge0$. [`Gas.restores_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L69-L95)

**Proposition III.5.6.** On one lattice, let unforced $(X_i,u_i)$ and forced $(Y_k,d_k)$ have nonempty supports, $u,d\ge0$, $R\subseteq$ overlap. Assume $A\ge0$, $\delta'>0$, $t\ge1$, $0\le\sigma<1$, $\mu\ge0$, $\eta>0$, $q'<1$, $\mathrm{Ready}(u;A+\delta',\gamma,\delta,q)$, $\mathrm{Hit}_B(d;A+\delta',c)$, and
$$\frac{te^\mu c+t\gamma/(1-q)}{1-\sigma}\le\eta\le\sigma,\qquad4\mathrm{ball}_B\eta/\delta'\le q'.$$
Atoms are forced polymers and unforced cluster tuples with absolute cluster weights. For every site $x$ and $m\in\mathbb N$, connected atom multisets through $x$, containing a forced atom and total multiplicity $\ge m$, have total weight $e^{A\mathrm{cov}_B(\cup)}\prod_\alpha w_\alpha^{n_\alpha}/n_\alpha!$ at most $t^{-m}e^{-\mu}\eta/(1-q')$. [`OmitClusters.restore`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Omissions.lean#L48-L100)

**Proposition III.5.7.** For a step of block side $L$, $l,B\in\mathbb N$, connected packets with $0\le p_A\le Ce^{(s-g)|A|}$, $a,C\ge0$, and $\rho=K_{\rm step}^2e^{s-g+a(2l+3)^4}\le q<1$ satisfy, for every coarse site $x$ and $m\in\mathbb N$,
$$\sum_{A:x\in D(A),\,|A|\ge m}p_Ae^{a\mathrm{cov}_B(D(A))}\le K_{\rm hit}Cq^{\max(1,m)}/(1-q).$$
This includes variants supported within domes whose total packet weight obeys the same envelope. [`Packets.packet_income`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L66-L105) [`Packets.packet_variants_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L124-L175)

For $\varepsilon,\delta,\gamma_{\rm root}>0$, $a,C,e_s,\mu_s\ge0$, assume the packet condition at $(a+2\varepsilon+\delta,s+2\varepsilon e_s+\mu_s)$ with ratio $q_p<1$, optional polymers $w_i,\lambda_i\ge0$ satisfying $\mathrm{Hit}_B(we^{2\varepsilon\lambda};a+2\varepsilon+\delta,\gamma_{\rm opt})$, and $K_{\rm hit}Cq_p/(1-q_p)+\gamma_{\rm opt}\le\gamma_{\rm root}$, $4\mathrm{ball}_B\gamma_{\rm root}/\delta\le q<1$. Connected mixed sets through $x$, of size $\ge m+1$, seed count $\ge r$ and charge $\mathrm{ch}\ge T$, satisfy
$$\sum_s\prod_{\alpha\in s}w_\alpha(1+\mathrm{ch}(s))^ke^{a\mathrm{cov}_B(D(s))}\le k!\varepsilon^{-k}e^\varepsilon e^{-\varepsilon T-\mu_sr}\gamma_{\rm root}q^m/(1-q)$$
for every $m,k,r\in\mathbb N$, $T\in\mathbb R$. Charge sums individual covering numbers and lengths; packet length is $e_s|A|$. Disconnected packets have weight zero. [`Mixed.mixed_hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L153-L189)

**Proposition III.5.8.** Fix the group, $L,l$, $\mu,u>0$, $a,D\ge0$, $d\in\mathbb N$, $z<2$. Eventually in $x$, whenever $s\le F$, $g\ge M$, $0\le C\le e^F$, where $F=D\mathrm{bill}^dP(\beta_F)^z$, $M=\mu uP(\beta_F)^2$, the packet ratio is $\le q=e^{-M/2}$ and $K_{\rm hit}Cq^{\max(1,m)}/(1-q)\le e^{-M\max(1,m)/4}$ for every $m$. Every $\beta\ge u\beta_F$ gives $\beta\mu t^2\ge M$. [`Delay.fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L165-L214)

For $\varepsilon,\delta>0$, $\beta\ge u\beta_F$, $C,e_s\ge0$, $C\le e^F$, $s+2\varepsilon e_s\le F$, $0\le\gamma_{\rm opt}\le\delta/(16\mathrm{ball}_B)$, the mixed numerical conditions eventually hold with $g=\beta\mu t^2$, $\mu_s=M/2$, $q=1/2$, $\gamma_{\rm root}=e^{-M/8}+\gamma_{\rm opt}$. Actual weight bounds remain hypotheses. For every estimator, choose $L$ sufficiently large, then $W$ sufficiently large: some $\mu>0$, chosen before $l,d,u,a,D,z$, gives the point charge for all sufficiently large $x$ and funded steps of coarse side $\ge100(1+B)$, uniformly in volume. [`Buy.quoted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Buy.lean#L67-L103) [`Grant.order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Grants.lean#L52-L71)

**Proposition III.5.9.** Let $J$ be finite, $\emptyset\ne X_i\subseteq J$, $v\ge0$, $w\ge1$ submultiplicative on overlapping unions, $a\ge0$, $0\le\delta\le1-e^{-a}$, and $\sum_{i:x\in X_i}w(X_i)v_ie^{a|X_i|}\le\delta$ for every $x$. For every real $|u|\le v$, the disjoint-support gas satisfies $Z_u(B)>0$, $Z_u(B)=e^{-\sum_{A\subseteq B}\lambda_u(A)}$, $|\lambda_u|\le\lambda_{-v}$ and $\sum_{A\ni x}w(A)\lambda_{-v}(A)\le a$. Deleting any $Q\subseteq J$ multiplies $Z_u(J)$ by $e^l$, $|l|\le a|Q|$. [`ReLog.catalog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L217-L228)

For countably many local, gauge-invariant Borel $E_i$ bounded by $v_i$ on unflagged supports, mask flagged supports. If $M\in\mathbb N$, $A,a\ge0$, $v\ge0$, $a(2M+1)^4\le1$, $\delta\le1-e^{-a}$ and $\sum_{i:x\in X_i}e^{(A+1)\mathrm{cov}_M(X_i)}v_i\le\delta$ at every site, the masked gas has these identities and a field-independent envelope $|\lambda_P(V)|\le g(P)$, $\sum_{P\ni x}e^{A\mathrm{cov}_M(P)}g(P)\le a$. Raw coefficients are local, gauge-invariant Borel; masked coefficients vanish on flagged regions. [`ReLog.intake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L157-L183)

**Proposition III.5.10.** For finite real matrices $A>0$, $C=C^T$, $S=AC-I$, and $\sum_j|S_{ij}|\le q<1$, $q\ge0$, both $\det C,\det(I+S)>0$, and $\log\det(I+S)=\sum_{k\ge1}(-1)^{k+1}\mathrm{tr}(S^k)/k$ absolutely. [`Round.exact_trace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Round.lean#L149-L155)

**Proposition III.5.11.** Fix a funded step, tube, estimator, threshold $t$, $W,\kappa>0$, adapted lawful representation, coupling $\beta\ge0$, tree-gauge forest and Borel nonnegative allocation summing to one. Require global cell chords $\ge t/4$ on listed seeds, $\le t/2$ otherwise; wire chords $\ge Wt$ on listed bonds, $\le2Wt$ otherwise; and equality of packet sites with coarse flags wherever allocated weight is nonzero. Assume the point charge $\mathcal E_A\ge\kappa t^2|A|$ on every local sector on every tree-gauge slice; local tests use $D_{5B}(A)$ and positive frame mass. Then, for every $V$, $\mathrm{push}_\beta\rho_R(V)=\sum_Ac_A(V)$ and $|c_A(V)|\le\pi_\beta e^{-\beta\kappa t^2|A|}\ell_A(V)$, with bounded Borel sector outputs and remainders. The point charge comes from III.10 or the committed-scale hypothesis of III.1. [`Presented.portionCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L157-L210)

**Proposition III.5.12.** For finite symmetric $M\ge rI>0$ with lattice positions, weighted row and column sums $\le C$ at rate $\eta\ge0$, $0\le\theta\le1$, $\theta C\le r/2$, every $u\ge0$ satisfies
$$e^{\theta\eta d(a_i,a_j)}|(M+uI)^{-1}_{ij}|\le[\min(1,r/2)(1+u)]^{-1}.$$
Hypotheses persist under principal restriction. [`Green.inverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L188-L251)

**Proposition III.5.13.** For finite real symmetric $A\ge rI>0$, fixed positive weighted row/column bounds at positive rate and counting bound $\mathrm{card}\{j:d(y,d_j)\le\rho\}\le U(1+\rho)^4$, windows containing every index within distance $R$ of their addressed index have, uniformly for large $R$, inverse residual and inverse difference $\le Ke^{-cR}<1$ for some $K,c>0$ at a positive rate. Full/windowed inverses are bounded by $K$ throughout $tA+(1-t)I$, $0\le t\le1$. At $t=1$, the symmetrized windowed inverse has positive uniform lower bounds, as does its inverse. [`Win.Promise.receive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L106-L178)

**Proposition III.5.14.** Fix an estimator and patch satisfying branch conditions. For all large $x$, every funded step with that patch, coarse side $\ge100(1+B)$, forest, packet and field with matching flags has completed precision $G=D^TD+I_{\rm inactive}\ge rI$, uniform counting constant $U$, and weighted row/column bound $K$ at half the upper path-decay rate, for some $r,U,K>0$. Endpoint windows of radius $\lfloor B/4\rfloor$ satisfy III.5.13 with error $K_{\rm win}e^{-c_{\rm win}\lfloor B/4\rfloor}<1$. [`Aff.bedrock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L142-L158) [`Aff.install_promises`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Warsaw.lean#L25-L42)

<a id="unit-inputs"></a>

## 2. What it uses

- I.1, II.2: lattice covering bounds and connected supports.
- III.1, III.2: step data, funding, branches, lawful representations and committed-scale energy assumptions.
- III.10: energy grant; III.6: gauge-fixed Poincaré inequality.
- Mayer expansion, Penrose partition, lattice-animal counting, Möbius inversion, Schur test, Combes–Thomas conjugation.

<a id="unit-strategy"></a>

## 3. Strategy

Component decomposition identifies the finite-gas logarithm. Tree estimates give geometric cluster tails; absolute convergence extends the identity to arbitrary labels. Seed energy dominates packet entropy. Deletion gives another logarithm; exponential conjugation and the spectral gap control windowed inverses.

<a id="unit-steps"></a>

## 4. Steps

1. For gas polynomial $P$ and cluster series $L$, splitting the distinguished component gives $P'=L'P$, hence $Pe^{-L}=1$. [`Coef.recurrence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L129-L138)
2. Penrose intervals cancel free edges; parent factorials cost at most $4^mm!$, absorbed by the reserve exponent. [`Graph.pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Graph.lean#L113-L148) [`Trees.trees_afford`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Weigh.lean#L192-L228)
3. Count packets by spanning walks and compare their entropy with $P(\beta_F)^2$. [`Packets.stores_count`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L260-L269) [`Delay.fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L165-L214)
4. Deletion induction bounds Möbius logarithm pieces by negative-envelope pieces. [`ReLog.swept`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L224-L233)
5. Sum allocations, then extract the orientation-averaged point charge. [`Oriented.turn_charge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L267-L297)
6. Poincaré and background comparison give the spectral gap; conjugation gives decay, and window residuals occur beyond $R$. [`Aff.surplus`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L72-L113) [`Windows.window_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L146-L169)

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

The bounds retain pins, covering weights and repeated labels. Global seed tests survive orientations. The sector remainder has no volume-uniform bound here.

<a id="unit-notation"></a>

## 6. Notation

$\Lambda_n=(\mathbb Z/n\mathbb Z)^4$, $n\ge1$; $d$ is maximum distance; $\mathrm{cov}_B$ is connected ball-cover number; $\mathrm{ball}_B=(2B+1)^4$. $\mathrm{Hit}_B(w;a,\gamma)$ means every site sum of $w_ie^{a\mathrm{cov}_B(X_i)}$ is $\le\gamma$. $\mathrm{Ready}$ adds $\gamma,\delta>0$, $4\mathrm{ball}_B\gamma/\delta\le q<1$, using exponent $a+\delta$.

$\Xi$ sums compatible finite sets; $\phi^T$ is the connected spanning alternating sum on the occurrence graph (edges require mutual $R$); singleton coefficient $1$; $X(z)=\cup_aX_{z_a}$. Order $m$ means $m+1$ occurrences. Seeds are fine cells, coarse bonds or sites; packets are finite seed sets; $D_r(A)$ is the radius-$r$ neighbourhood of seed locations (projected cell vertices, bond endpoints, or site). Skins are individual radius-$lB$ neighbourhoods; $D(A)$ is their union, connectedness their overlap connectivity. $\tau_L=L^4\mathrm{card}\{\text{plaquette orientations}\}+5$, $K_{\rm hit}=(2lB+3)^4\tau_L$, $K_{\rm step}=(4lB+5)^4\tau_L$.

$\beta_F=x+b\log L$, $B=\lceil(\log x)^2\rceil$, $P(s)=e^{(\log\log s)^2}$, $t=\beta_F^{-1/2}P(\beta_F)$, $\mathrm{bill}=1+B+(\log\beta_F)^2$. $\lambda_u$ denotes Möbius pieces of $-\log Z_u$. $\mathcal E_A$ assesses energy anchored in $D_{2B}(A)$ with truncated walks. $\pi_\beta$ is the inverse product of single-bond normalizations; $\ell_A$ is the remaining absolute sector integral. $D$ is the transported flat row matrix, using truncated curl/path rows and linearized block constraints, replica transport and centred path gauges in every orientation. Keep row centres outside $D_{8B}(A)$ and nontrunk columns with projected endpoints outside $D_{10B}(A)$; normalize by the square root of the orientation count. Its range is $\lfloor B/100000\rfloor+R_{\rm pred}+2$. Weighted sums at rate $\eta$ use factors $e^{\eta d(a_i,a_j)}$. A windowed inverse uses column $j$ of the principal inverse on $P(j)$, extended by zero.

<a id="unit-limitations"></a>

## 7. What remains unexplained

Imported energy and Poincaré proofs, supporting counts and local Gaussian comparisons remain inputs. Raw logarithm coefficients are local; masked coefficients additionally inspect flags. The transported flat matrix is not identified with the nonlinear derivative.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/III-5.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md), [III.1](III-1.md), [III.10](III-10.md), [II.2](II-2.md), [III.16](III-16.md), [III.6](III-6.md).

**Referenced by:** [III.10](III-10.md), [III.13](III-13.md), [III.4](III-4.md), [III.11](III-11.md), [III.12](III-12.md), [III.2](III-2.md), [III.15](III-15.md), [VII.1](VII-1.md), [III.14](III-14.md), [III.9](III-9.md).

## Lean source

**Source allocation:** 9,746 attributed lines; 1,097 line-counted declarations; 1,408 assigned declaration names. Of the assigned names, 1,340 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- work package [`YM/Push/ABSOLUTE_SUMS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS) — 3,624 lines.
- work package [`YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS) — 3,589 lines.
- work package [`YM/Push/SECTOR_MEASURE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE) — 1,153 lines.
- work package [`YM/SectorNext/VACUUM_NORMALIZATION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION) — 935 lines.
- work package [`YM/Progress/STATIONARY_SCENES/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES) — 445 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`Ac.Spark`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L49)
- [`Ac.Hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13)
- [`Ac.cover`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L59-L82)
- [`Aff.derivative`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Affine.lean#L116-L118)
- [`Aff.Dmat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Affine.lean#L125-L127)
- [`Aff.gram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Affine.lean#L145-L147)
- [`Aff.decomposes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L134-L139)
- [`Aff.inflow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L27-L69)
- [`Win.Promise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L22-L30)
- [`Promise.Served`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L36-L37)
- [`Turns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L71-L83)
- [`Turns.Takes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L91-L101)
- [`Aff.stencil`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/IndexCost.lean#L120-L159)
- [`Mint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Mint.lean#L22-L28)
- [`Aff.cert`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Odometer.lean#L23-L24)
- [`Rates.allowance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Rate.lean#L27)
- [`Win.planePrice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Schur.lean#L69-L70)
- [`Aff.received`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Speed.lean#L138-L155)
- [`Aff.Alongside`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Station.lean#L71-L78)
- [`Aff.shifted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Stint.lean#L100-L121)
- [`Aff.velocity`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Stint.lean#L44-L97)
- [`Aff.unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Through.lean#L29-L30)
- [`Aff.Reserve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Veil.lean#L34-L39)
- [`Aff.reserves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Veil.lean#L41-L49)
- [`Windows.inverse_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L124-L141)
- [`covariance_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L171-L188)
- [`covariance_floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L191-L202)
- [`Win.Windows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L28-L30)
- [`within`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L36-L37)
- [`error`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L39)
- [`Windows.stitched`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L51-L69)
- [`cov`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L73)
- [`Corona.pays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L129-L131)
- [`Corona.meets_sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Halo.lean#L14-L30)
- [`separation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L81)
- [`coverNumber`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L69-L71)
- [`zLin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Defs.lean#L53-L55)
- [`Next.Fluctuations.grants`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L24)
- [`Sector.peel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Sector.lean#L229-L259)
- [`Sector.prefactor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Sector.lean#L71-L72)
- [`Teller.Funds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L101-L109)
- [`Testing.proceeds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L147-L152)
- [`notation_ticket`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L166-L181)
- [`radiusB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22)
- [`betaF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23)
- [`fiery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L26)
- [`Stores`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L34-L37)
- [`dome`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L44)
- [`shares`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L46)
- [`Plot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L51-L58)
- [`assessed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L85)
- [`Teller`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L89-L96)
- [`Green.diminishing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L135-L147)
- [`Green.schur`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L149-L168)
- [`Green.Rows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L26-L27)
- [`Green.Both`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L29-L30)
- [`Green.Bottom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L32-L33)
- [`Green.Rows.restrict`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L78-L88)
- [`Green.Bottom.restrict`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L93-L113)
- [`Response.response_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Response.lean#L242-L259)
- [`Gas.cut`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L24)
- [`Gas.missing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L25)
- [`Gas.missing_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L40-L63)
- [`Animals.animals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Animals.lean#L122-L137)
- [`ballCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Animals.lean#L148)
- [`Basic.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Basic.lean)
- [`Breadth.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Breadth.lean)
- [`ratioCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L28-L29)
- [`fit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L34-L35)
- [`totalCharge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L37-L38)
- [`Packets.cover_income`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L42-L53)
- [`Ursell.cluster_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L185-L192)
- [`Ursell.connected_pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L194-L211)
- [`Ursell.Tests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L59)
- [`Coef.gasRow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L19)
- [`Coef.logRow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L20)
- [`Coef.unbased`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L71-L76)
- [`Coef.discrete`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L79-L125)
- [`Multiple.Reps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L26)
- [`manyW`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L28-L29)
- [`Multiple.buy_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L60-L72)
- [`Delay.step_delay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L128-L156)
- [`Delay.comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L43-L52)
- [`Delay.monitor_pays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L74-L101)
- [`Trees.touch_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Distinct.lean#L245-L276)
- [`Gas.total`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L22)
- [`Gas.term`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L24)
- [`Gas.logSum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L26)
- [`Gas.absolute_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L35-L51)
- [`Gas.absolute`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L53-L57)
- [`Trees.Ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Forest.lean#L31-L32)
- [`Trees.forest_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Forest.lean#L46-L56)
- [`Gas.sums`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Gas.lean#L128-L137)
- [`Gas.row`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Gas.lean#L69-L120)
- [`Grant.credit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Grants.lean#L48)
- [`Labels.together`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Labels.lean#L83-L96)
- [`Gas.finite_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Log.lean#L29-L41)
- [`Mixed.Accounts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L84-L89)
- [`Mixed.ready_vertices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L95-L122)
- [`Packets.cover_support`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L171-L176)
- [`typesAt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L181)
- [`hitCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L215)
- [`stepCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L216)
- [`Packets.connected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L77)
- [`fanout_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Parent.lean#L184-L189)
- [`Trees.parent_fanout`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Parent.lean#L191-L193)
- [`Partition.allMass_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Partition.lean#L23-L28)
- [`Product.everyone_ne`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Product.lean#L43-L51)
- [`Product.set_products`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Product.lean#L53-L64)
- [`Reserves.reserve_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Reserves.lean#L34-L56)
- [`Reserves.sets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Reserves.lean#L97-L135)
- [`blocked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Ursell.lean#L22)
- [`Ursell.pot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Ursell.lean#L32-L33)
- [`Ursell.coefficient`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Ursell.lean#L35)
- [`degreePrice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Weigh.lean#L52)
- [`Seeded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Cells.lean#L51-L59)
- [`Alive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Cells.lean#L62)
- [`earn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Grant.lean#L28-L29)
- [`Oriented.enters_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L185-L208)
- [`Oriented.mean_pays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L210-L219)
- [`PointCharge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L29-L32)
- [`points_grant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L37-L51)
- [`push_columns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Output.lean#L102-L114)
- [`leftOver`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L140-L143)
- [`cutEntry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L145-L148)
- [`PortionCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L151-L155)
- [`Presented.expel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L40-L56)
- [`Presented.use_gap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L66-L78)
- [`Allocation.hard`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L68-L78)
- [`SumBudget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L59-L60)
- [`StepData.push`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L77-L79)
- [`Rep.Lawful`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L181-L183)
- [`Branches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185)
- [`ReLog.retest_meas`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L104-L114)
- [`ReLog.retain_mask`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L118-L143)
- [`ReLog.native_rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L26-L32)
- [`Fund`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L43-L49)
- [`ReLog.permits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L51-L65)
- [`Tags`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L72-L77)
- [`ReLog.retest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L99-L101)
- [`ReLog.leash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L180-L211)
- [`Deletion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L31-L34)
- [`Receipt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L39-L43)
- [`locker`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L46)
- [`ReLog.matures`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L75-L106)
- [`fumes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L122)
- [`Sufficient`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L168-L173)
- [`ReLog.stock_deletion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L68-L114)
- [`ReLog.crop_glue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L118-L134)
- [`lamp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L161)
- [`ReLog.lamp_shed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L169-L176)
- [`ReLog.lamp_cropped`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L178-L196)
- [`ReLog.lamp_mono`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L197-L209)
- [`glue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L36)
- [`shed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L38)
- [`crop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L40)
- [`Rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L45-L47)
- [`Round.twins`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Round.lean#L74-L93)
- [`Round.twin_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Round.lean#L95-L144)
- [`pieces`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Sprig.lean#L23-L28)
- [`Tree.Forest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L24-L29)
- [`Vac.Numbers.P`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L72)
- [`Work.F01.link_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L63-L108)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-iii-5-1"></a>

- **K-III.5.1** [`canonical`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L95-L101) *(numbered result)* — A canonical choice of sector-cost allocation profile.

<a id="k-iii-5-2"></a>

- **K-III.5.2** [`budget_count_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Basic.lean#L143-L163) *(numbered result)* — If the number of live labels of degree k grows like A B^k and weights decay like C r^k with B r<1, then tails of the sum are geometrically bounded.

<a id="k-iii-5-3"></a>

- **K-III.5.3** [`inverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L188-L251) *(key result)* — A Hermitian matrix with a spectral gap and off-diagonal exponential decay has an inverse with pointwise exponential decay, uniformly in a spectral parameter.

<a id="k-iii-5-4"></a>

- **K-III.5.4** [`window_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L146-L169) *(numbered result)* — For a Hermitian matrix with a bottom eigenvalue bound and off-diagonal decay, the layered price estimates hold within one window system with small error.

<a id="k-iii-5-5"></a>

- **K-III.5.5** [`Buy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L47-L58) *(numbered result)* — A named sufficient condition on a cost function for charging a connected result pointwise.

<a id="k-iii-5-6"></a>

- **K-III.5.6** [`partition`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Partition.lean#L219-L237) *(key result)* — The total mass of a hard-core potential decomposes by splitting off the connected component of a chosen position, as the component coefficient times the mass of the complement.

<a id="k-iii-5-7"></a>

- **K-III.5.7** [`recurrence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L129-L138) *(numbered result)* — The gas coefficients and log coefficients satisfy the standard recurrence (m+1)g_{m+1}=Σ(k+1)l_k g_{m-k}.

<a id="k-iii-5-8"></a>

- **K-III.5.8** [`exact_polynomial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L66-L145) *(key result)* — If the log series coefficients decay geometrically, the exponential of the full log series equals the finite polynomial sum of values over subsets.

<a id="k-iii-5-9"></a>

- **K-III.5.9** [`pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Graph.lean#L113-L148) *(key result)* — The absolute value of the Ursell (overlap graph) mass is bounded by the number of tree-compatible assignments.

<a id="k-iii-5-10"></a>

- **K-III.5.10** [`substochastic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Parent.lean#L44-L126) *(numbered result)* — For a ranked parent function and a substochastic kernel, the sum over all label assignments of the product of kernel entries along the forest is at most 1.

<a id="k-iii-5-11"></a>

- **K-III.5.11** [`trees_afford`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Weigh.lean#L192-L228) *(numbered result)* — The sum over forests of size m and label choices in a finite set is bounded by a currency factor times a degree price to the power m.

<a id="k-iii-5-12"></a>

- **K-III.5.12** [`estimates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L135-L169) *(key result)* — Sums over unordered repeated-label multisets with connected footprint have an exponential-tail budget bounded by a geometric factor.

<a id="k-iii-5-13"></a>

- **K-III.5.13** [`cluster_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L148-L183) *(key result)* — Ursell cluster sums over tuples containing a marked occurrence satisfy an absolute summability bound geometric in the tuple length.

<a id="k-iii-5-14"></a>

- **K-III.5.14** [`restore`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Omissions.lean#L48-L100) *(key result)* — After merging, a weighted hit bound with geometric tail holds for every required copy-cut, combining exponential recovery with seed and degree costs.

<a id="k-iii-5-15"></a>

- **K-III.5.15** [`price_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Log.lean#L114-L149) *(key result)* — On hard overlap graphs, absolute-bound hypotheses give absolute convergence of both the value and term series, with exp(log-sum) equal to the positive total and its log equal to the log-sum.

<a id="k-iii-5-16"></a>

- **K-III.5.16** [`restores_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L69-L95) *(key result)* — Ratio estimate for a polymer gas with a deleted set of labels, expressed via the logarithm with sign retained and an upper bound with absorption cost.

<a id="k-iii-5-17"></a>

- **K-III.5.17** [`fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L165-L214) *(numbered result)* — For large parameter x, tree-vertex price constants fit the required inequalities for all per-packet combinatorial tests uniformly.

<a id="k-iii-5-18"></a>

- **K-III.5.18** [`quoted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Buy.lean#L67-L103) *(numbered result)* — For large parameter values, explicit numeric conditions on constants suffice to satisfy the hypotheses for the packet estimates.

<a id="k-iii-5-19"></a>

- **K-III.5.19** [`packet_income`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L66-L105) *(numbered result)* — Weights bounded by a per-seed income yield a summability budget for packet sums with an explicit total charge.

<a id="k-iii-5-20"></a>

- **K-III.5.20** [`bundle_hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Path.lean#L182-L201) *(numbered result)* — Winding path bundles with complete path coefficients satisfy a hit bound at common anchors with a tail decaying in true length.

<a id="k-iii-5-21"></a>

- **K-III.5.21** [`Allocation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L30-L36) *(numbered result)* — A partition of unity subordinate to seed prerequisites, as a data structure.

<a id="k-iii-5-22"></a>

- **K-III.5.22** [`plots_column`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Decompose.lean#L120-L126) *(numbered result)* — The sum over sectors of integrals restricted to each sector's own plots equals the column integral.

<a id="k-iii-5-23"></a>

- **K-III.5.23** [`tap_open`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Draught.lean#L92-L114) *(numbered result)* — For large x, the minimizing choice on a patch satisfies uniform opening bounds.

<a id="k-iii-5-24"></a>

- **K-III.5.24** [`escape`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Station.lean#L222-L241) *(numbered result)* — The tree tangent hits every orientation channel on the one field simultaneously.

<a id="k-iii-5-25"></a>

- **K-III.5.25** [`shelf`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L144-L163) — For disjoint-family sums with summable weights, the negative-log piece satisfies the deletion property.

<a id="k-iii-5-26"></a>

- **K-III.5.26** [`swept`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L224-L233) *(key result)* — Under a receipt condition, the re-log of any signed activity dominated by the envelope satisfies an absolute budget applied against the envelope's ceiling.

<a id="k-iii-5-27"></a>

- **K-III.5.27** [`catalog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L217-L228) *(key result)* — For countably addressed signed integrated coefficients, the log is exactly defined and obeys an absolute budget with a common envelope.

<a id="k-iii-5-28"></a>

- **K-III.5.28** [`omitted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L235-L271) *(numbered result)* — Deleting arbitrary sites after re-log gives a common ratio multiplying a forced family, with controlled sign of the omitted log contribution.

<a id="k-iii-5-29"></a>

- **K-III.5.29** [`intake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L157-L183) *(key result)* — Integrated gas coefficients admit absolute support price bounds with a common envelope for all configurations, without global small l¹ hypothesis.

<a id="k-iii-5-30"></a>

- **K-III.5.30** [`turn_charge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L267-L297) *(numbered result)* — Sector payment inequality extends to the orientation-averaged cut rows with a multiplicative earn constant.

<a id="k-iii-5-31"></a>

- **K-III.5.31** [`portionCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L157-L210) *(key result)* — For a lawful representation with a point charge and funds, every forest and allocation satisfies the portion cost estimate.

<a id="k-iii-5-32"></a>

- **K-III.5.32** [`bought`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Consumer.lean#L42-L65) *(key result)* — At any committed height pair, a single positive constant κ works uniformly across inputs for the sector-measure consumer estimate.

<a id="k-iii-5-33"></a>

- **K-III.5.33** [`charged_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Grant.lean#L61-L66) *(numbered result)* — A pointwise inequality on sector points implies the sector charge condition.

<a id="k-iii-5-34"></a>

- **K-III.5.34** [`pre_center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Through.lean#L70-L122) *(numbered result)* — A framed patch over the actual field predicts remote no-hole behaviour from curved precision before derivative tests.

<a id="k-iii-5-35"></a>

- **K-III.5.35** [`unfrozen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Odometer.lean#L130-L163) *(numbered result)* — The predicted affine energy bounds the local row estimate even for arbitrary formal fields away from frozen regions.

<a id="k-iii-5-36"></a>

- **K-III.5.36** [`perturb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/DCompare.lean#L190-L207) *(key result)* — The affine matrix D changes by a controlled amount under local perturbations satisfying a stencil bound, with cost polynomial in the stencil.

<a id="k-iii-5-37"></a>

- **K-III.5.37** [`arc_bill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Ground.lean#L51-L130) *(numbered result)* — On a real weak patch, the affine approximation error of the local rows is bounded uniformly pointwise in sector.

<a id="k-iii-5-38"></a>

- **K-III.5.38** [`guard_δ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Breath.lean#L83-L132) *(numbered result)* — Given a displacement size δ along the central chart, one can choose ε so that trigger disappearance is guaranteed on the same read.

<a id="k-iii-5-39"></a>

- **K-III.5.39** [`bedrock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L142-L158) *(key result)* — For large x, the Gram matrix of the step is served by a fixed window promise uniformly over all admissible step data.

<a id="k-iii-5-40"></a>

- **K-III.5.40** [`night`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Hour.lean#L55-L116) *(key result)* — For a funded patch with a reserve and wedge conditions, there is ε>0 such that for large scale the plateau tests (Keys) hold.

<a id="k-iii-5-41"></a>

- **K-III.5.41** [`gram_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/IndexCost.lean#L165-L181) *(key result)* — There is a uniform constant such that the Gram cost of the counted array is bounded across all admissible step data.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

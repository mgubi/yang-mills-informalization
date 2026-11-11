# VII.6. Scaling variants and fixed-field estimates

*Part VII — Identification as Yang–Mills.*

Adapts observable estimates to prescribed scale sequences and gives a separate low-degree field estimate.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/VII-6.md) · [← Previous: VII.5](VII-5.md) · [Next: VIII.1 →](VIII-1.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** VII, identification as Yang–Mills. **Lean:** [`YM/TraceExtension/Prom/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom), with outputs in `Trace2`, `FREE_STRESS_CERTIFICATE` and `SharpGram`. **Size:** 4,205 lines in 374 declarations.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

**Setting.** Let $G$ be a compact matrix group with simple Lie algebra, $C$ a Wilson family with its construction record, and $F$ an extraction order with ordered-tail filter $\Phi_F$ on cutoff pairs $(N,p)$. Let $S$ be its limit table, with ordered smeared and generic point limits and Euclidean hierarchy $H$; the free Maxwell reference has hierarchy $H_0$. Write $\mathcal F^S_d=\mathrm{Label}_d/\mathrm{Null}_d(S)$, projection $\pi_d$ and unit $\mathbf1_d$, and similarly $\mathcal F^{\rm free}_d$. Fix the RG-history binding, Haar budget and chart ratio of III.11. Its one-step cost assumption is (S), and $c_d=2(w_d+1)$, where $w_d$ is the degree-$d$ label-frame polynomial degree plus $4$.

A scaling consists of positive radii $r_k$ strictly decreasing to zero, positive constants $\xi_k$, and complex-linear isomorphisms $U_k(d):\mathcal F^{\rm free}_d\to\mathcal F^S_d$. It is *approaching* when, for every arity and free fields $v_i\in\mathcal F^{\rm free}_{d_i}$, the smooth kernels
$$K_k(x)=\langle U_kv_1(r_kx_1)\cdots U_kv_n(r_kx_n)\rangle^S-\langle v_1(x_1)\cdots v_n(x_n)\rangle^{\rm free}$$
satisfy: for every compact $K\subset\mathrm{Conf}_n$ and $M,\varepsilon>0$, eventually $|\int tK_k|\le\varepsilon$ for every smooth $t$ supported in $K$ with $\|t\|_\infty\le M$.

**Proposition VII.6.1 (prescribed null sequences).** Assume (S), real $z_d\ge c_i$ for every $i\le d$, the uniform-band property $\mathrm{Fire}_d(z_d)$ for every $d$, and $\dim\mathcal F^S_d\le\dim\mathcal F^{\rm free}_d$ for every $d$. Let $\mathcal L$ be an ultrafilter on $\mathbb N^2$ finer than $\Phi_F$. For every positive null sequence $s_i$, there exist strictly increasing $f:\mathbb N\to\mathbb N$ and an approaching scaling with $r_k=s_{f(k)}$ and $\xi_k=1$. For each $d$, eventually $U_k(d)$ is real, covariant under signed coordinate permutations between $H_0,H$, and unit-preserving. There are depth-$k$ vanes $V_k$, checked at level $k$, whose stages tend to infinity and whose radii equal $r_k$; for each $d$, eventually their full lift tuples through degree $k$ converge along $\mathcal L$ to $Y_k$, with $U_k(d)=\pi_d\circ Y_{k,d}$.

*Status:* theorem conditional on the stated inputs. III.2 supplies the uniform-band property; VI.2 supplies the dimension cap from IV.1's corrected rank widths in the construction used by VII.2. *Lean:* [`pays_sky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31).

**Proposition VII.6.2 (checked vanes).** Assume (S), $z_d\ge c_i$ for $i\le d$, and $\mathrm{Fire}_d(z_d)$ for every $d$. Retain the ordered and generic point limits, smoothness of $S$, and $H_0$; the full hierarchy $H$ is unnecessary. For every positive null sequence $s$, there exist strictly increasing $p:\mathbb N\to\mathbb N$, with $s\circ p$ strictly decreasing, and depth-$d$ vanes $V_d$ of stage $\ge d$, checked at level $d$, with radius $s_{p(d)}$.

*Status:* theorem. *Lean:* [`wakesSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L75-L87).

**Proposition VII.6.3 (moving-band chessboard bound).** Assume (S). Fix $d\in\mathbb N$, $z\ge c_i$ for $i\le d$, Taylor order $\Delta\in\mathbb N$, real exponent $e$, real band ceiling $u_0$, and degree-$\le d$ stage packages $P_k$ with order $\Delta$, exponent $e$ and bands $b_k\le u_0$. Fix $n,m\in\mathbb N$ with $n\ge2$, $m+1\le n$, labels $g_i\in\mathrm{Label}_{d_i}$ with $d_i\le d$ for $0\le i\le m$, and compact $K\subset\mathrm{Conf}_{m+1}$. For all sufficiently large $k$, take any:

- stage-$k$ cost record for $P_k$ with exponent $-3$, mark exponent $z$ and arity bound $n$;
- cutoff $N>k$, period $p$, and compatible stage-$k$ RG representative along the same history;
- configuration whose stage-$k$ rounding, in units of $\ell(b_k,k)$, lies in $K$ and fits the stopping stage;
- order-$\Delta$ polynomial lifts $T_i$ for that representative and labels $f_i\in\mathrm{Label}_{d_i}$ whose images under $T_i$ and the coupling dilation equal $g_i$ weighted by $\ell(b_k,k)/a_k$.

For every nonempty $s\subset\{0,\ldots,m\}$,
$$\rho_{\mathcal T}(\Phi_s)\le\mu_k^{-1/(16n)},\qquad \Phi_s=[\eta_s]\left(e^{-D}\prod_{i=0}^m(1+\eta_iO_i)\right).$$
Here the commuting markers satisfy $\eta_i^2=0$, $\eta_s=\prod_{i\in s}\eta_i$, $O_i$ is the probe labelled $f_i$, and $D$ is the free cumulant polynomial of $g_i$ at the rounded rescaled points. The exponential is finite. The root uses coupling $\beta_{N,p}$ and width-stage cells. The threshold depends on $(d,z,\Delta,e,u_0,g,K,n)$, with band dependence only through $u_0$.

*Status:* theorem. *Lean:* [`earningsSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Tael.lean#L56-L91).

**Proposition VII.6.4 (fixed-field supply).** Let $Y$ be a final record for $(C,F,S)$, $\varphi$ a filter finer than $\Phi_F$, $d\in\mathbb N$ with $d\le3$, and $x\in\mathrm{Label}_d$. There is $p\in\mathbb N$ such that, for all large $k$, there are $y\in\mathrm{Label}_d$ and cutoff labels $q$ with $\pi_dy=\pi_dx$, $q\to y$ along $\varphi$, and $\mathrm{quota}_k^{N,p'}(q_{N,p'})\le\hat\beta_k^p$ eventually along $\varphi$. One can take $p=1$ and $q$ constant.

*Status:* theorem. *Lean:* [`inletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L126-L129).

**Proposition VII.6.5 (degrees below four).** For every $d\in\mathbb N$ with $d<4$, $\dim\mathcal F^{\rm free}_d=1$. If $Y$ is a final record for $(C,F,S)$, every $u\in\mathcal F^S_d$ equals $t\mathbf1_d$ for some $t\in\mathbb C$.

*Status:* theorem. *Lean:* [`dim_before`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L51-L54), [`first_grade`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Trace2/Transfer.lean#L31-L37).

<a id="unit-inputs"></a>

## 2. What it uses

- III.2: uniform-band construction; III.9–III.11: RG histories and stage estimates, including (S).
- IV.1: extraction, limit tables, reflection positivity and corrected rank widths.
- VI.1–VI.2: free Maxwell comparison, stations, eventual injectivity and dimension cap.
- VIII.1: final record, comparator isomorphisms and nonzero unit.
- Intermediate value theorem, diagonal subsequences, finite-dimensional ultrafilter limits, Wilson chessboard estimates, and invariant theory for simple Lie algebras.

<a id="unit-strategy"></a>

## 3. Strategy

Varying the reading band over a unit interval makes successive reading intervals overlap, so they cover every sufficiently small radius. Uniform stage estimates across one block-factor change then permit exact prescribed radii. Chessboard comparison and two auxiliary bands control coincidence strips and Riemann sums; diagonal selection and ultrafilter limits produce approaching maps. Eventual injectivity and the dimension cap make them isomorphisms. Low-degree supply follows separately from the comparator and unit coordinates.

<a id="unit-steps"></a>

## 4. Steps

1. Dynamic stopping windows allow two neighbouring price indices. Under the block-factor bound supplied by poised stages, continuity gives overlapping reading intervals and exact radii. [Reading intervals](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L32-L43).
2. Uniform probe and lift bounds propagate source expansions to the width stage; affordability there gives VII.6.3. [Root estimate](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Port/Soft/Denarii.lean#L31-L62).
3. Two auxiliary bands make the strip and interpolation errors vanish; station admissibility follows. [Balanced estimates](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Medal.lean#L39-L90).
4. Diagonal choice gives checked vanes; bounded lifts converge along the common ultrafilter. Projection preserves symmetry and the unit; eventual injectivity plus the dimension cap gives bijectivity. [Lift limits](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Pepper.lean#L11-L60), [isomorphisms](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Mast.lean#L32-L58).
5. Below degree four, the comparator transfers one-dimensionality. Constant unit representatives have quota $|t|a_k^d\le\hat\beta_k$ eventually. [Unit supply](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L54-L61).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

The stage threshold must be uniform over the entire band interval. Two neighbouring price indices replace constant-factor plateaus. The dimension cap supplies surjectivity; weak convergence alone does not give the downstream trace argument. Scaling compatibility across degrees and stress-tensor normalization are not asserted.

<a id="unit-notation"></a>

## 6. Notation

$a_k\downarrow0$ is the stage spacing, with block factors $a_k/a_{k+1}\ge2$; $\hat\beta_k=\bar\beta+c_G\log a_k^{-1}$, $c_G>0$; $\mu_k=\exp((\log\log\hat\beta_k)^2)$; $\ell(b,k)=a_k\mu_k^b$. Quota means stage-coordinate coefficient size; $\mathrm{Conf}_n$ is the configuration space of distinct points.

The [coupling dilation](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Matrices.lean#L104) multiplies a frame vector with $q$ curvature factors by $s_{k,N,p}^q$, where $s_{k,N,p}=\beta_{N,p;k}^{-1/2}/(\hat\beta_k^{-1/2}\mu_k)$ and $\beta_{N,p;k}$ is the actual stage coupling. Position weighting multiplies an engineering-degree-$h$ frame vector by the corresponding scale to power $h$.

A degree-$D$ package has band $b\ge D+6$, Taylor order $\theta\ge D$, exponent $e$ and price-index cost parameters with credit at least $bD+D+2$. [Poised stages](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Plume.lean#L23-L28) have reached the reference stages, both neighbouring block factors are at most $\mu_k$, and their tables preserve the unit, reality and signed covariance, with relative coordinate errors at most $1/2$ and $\mu_k^{-1/2}$. Each package has a cost record with exponent $-3$, the specified mark and arity bounds, and compatible representatives and polynomial lifts realizing those tables for every $N>k,p$.

The [uniform-band property](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L29-L32) $\mathrm{Fire}_d(z)$ requires three package families with bands $b_i+s$, $s\in[0,1]$, fixed Taylor orders and exponents, and $\kappa<0$ satisfying
$$b_1+6<b_0,\quad b_2+5<b_0+\kappa,\quad (b_0-b_1)d(d+2)+\kappa<0,\quad (b_0-b_2)d(d+2)-b_0-\kappa<0.$$
One threshold makes every triple poised for every $s\in[0,1]$, with arity bound $d+2$ and mark exponent $z$.

A depth-$D$ [vane](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L65-L69) records stage $k$, band $b$, strip exponent and complex-linear cutoff tables on labels through degree $D$. [Checked at level $j$](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L42-L47) requires $5<b\le\log\log\hat\beta_k$, reference stages reached through degree $D$, and the table bounds above for every $N>k,p$. All generic rescaled lattice pairs of norm at most $100$ fit; every degree-$\le D$ free basis pair has recentred chessboard roots at most $1/(j+1)$ on the fitted radius-$100$ window. Its station is admissible through arity $j$, at window radius $j+1$ and tolerance $1/(j+1)$.

<a id="unit-limitations"></a>

## 7. What remains unexplained


Constituent one-step estimates and eventual feasibility of the nonlinear small-field bounds remain in III.11. Paying all numerical requests belongs to III.2. The checked two-point bounds' role in deriving the trace anomaly belongs to VII.2.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/VII-6.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [III.11](III-11.md), [I.1](I-1.md), [III.1](III-1.md), [II.2](II-2.md), [II.1](II-1.md), [IV.1](IV-1.md), [III.4](III-4.md), [VI.2](VI-2.md), [III.16](III-16.md), [V.2](V-2.md), [III.10](III-10.md), [VI.1](VI-1.md).

**Referenced by:** [III.2](III-2.md), [VII.2](VII-2.md), [VIII.1](VIII-1.md).

## Lean source

**Source allocation:** 4,205 attributed lines; 374 line-counted declarations; 616 assigned declaration names. Of the assigned names, 598 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- proof of [`pays_sky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31) and the results it chains to — 3,601 lines.
- work package [`YM/TraceExtension/Prom/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom) — 561 lines.
- proof of [`inletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L126-L129) — 43 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`Cells.RankWidths`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L138)
- [`Cells.standard`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L22)
- [`rootTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226-L227)
- [`Bel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L20)
- [`Climb.Scaling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31)
- [`freeTable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L23-L24)
- [`ladder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/CORRECTED_LIFT_COEFFICIENTS/Basis.lean#L115-L117)
- [`plentifulWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean#L26-L81)
- [`Frame.scaled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L58-L61)
- [`Scrim`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Biscuit.lean#L29-L34)
- [`raises`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L14-L22)
- [`trays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L25)
- [`ladd`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Ladle.lean#L17-L19)
- [`podium`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Largo.lean#L21-L29)
- [`Checks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Medal.lean#L23-L28)
- [`aspect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Medal.lean#L36-L76)
- [`wok`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Pint.lean#L25-L31)
- [`Poised`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Plume.lean#L23-L27)
- [`lava_v`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Reach.lean#L27-L42)
- [`generator`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SteamW.lean#L18)
- [`tremor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SteamW.lean#L19-L41)
- [`winter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Tender.lean#L11)
- [`earnings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Tael.lean#L58-L90)
- [`Ship.budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L28)
- [`Ship.rebate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L95-L128)
- [`Read.cumulants`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Finite.lean#L226)
- [`Read.full_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Finite.lean#L242-L250)
- [`Read.cylinder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Finite.lean#L99)
- [`moneys`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Insiders.lean#L50)
- [`weightTag`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Matrices.lean#L89-L92)
- [`Tapes.Panel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Prepaid.lean#L37-L47)
- [`Perch.bill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L25)
- [`middle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L44)
- [`mag`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L47)
- [`Station.gap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L49)
- [`hat_rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L55-L56)
- [`gap_rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L60-L88)
- [`Allowed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L93-L96)
- [`tested`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Tuning.lean#L24)
- [`supply_wheel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L121-L128)
- [`Granular`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L30-L34)
- [`DimAbove`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L108)
- [`cap_given`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L110)
- [`cap_given`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L110-L115)
- [`Stations.equivalences`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L132-L181)
- [`MeterTest.injects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L88-L103)
- [`quota`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Least.lean#L20-L21)
- [`Zoom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L15-L19)
- [`Approaches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L52-L53)
- [`harvested`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L132-L180)
- [`Station.Admissible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L89-L97)
- [`finite_extract`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Vary.lean#L74-L80)
- [`Fades`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Weak.lean#L24-L27)
- [`plentiful`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Bardo.lean#L24-L77)
- [`hatBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79)
- [`monitor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L81)
- [`YM/SharpGram/Clauses.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean)
- [`outletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L120-L124)
- [`Supplies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L18-L21)
- [`Releases`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L23-L26)
- [`Kills`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L28-L29)
- [`quota_smul`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L33-L37)
- [`quota_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L38-L48)
- [`coreRead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L65-L85)
- [`physicalRelease`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L87-L117)
- [`Spec.Final`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73)
- [`vacuum_truncation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Trace2/Transfer.lean#L94-L111)
- [`Gallery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L41-L44)
- [`gang`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56)
- [`merano`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Made/Bardo.lean#L25-L76)
- [`traySky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Karin.lean#L26)
- [`platterSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Karin.lean#L27)
- [`LegacyCostSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Lys.lean#L38-L45)
- [`ActumSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Tael.lean#L40-L42)
- [`yardSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Allowance.lean#L26-L28)
- [`invoiceSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Allowance.lean#L40-L41)
- [`gainSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L15-L16)
- [`middleSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L31)
- [`widthSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L32)
- [`AllowedSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L42-L46)
- [`FitSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Tuning.lean#L15-L17)
- [`readySky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Tuning.lean#L20-L38)
- [`embalms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L33-L50)
- [`LeapSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L56-L60)
- [`agendasSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L61-L67)
- [`fliesSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L68-L84)
- [`podiumSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Largo.lean#L24-L34)
- [`thirdSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Latch.lean#L52-L77)
- [`w_rightSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Pint.lean#L37-L57)
- [`stagingSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Plume.lean#L30-L53)
- [`tide_mode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L14-L18)
- [`near_skies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L19-L26)
- [`gap_curve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L27-L31)
- [`gap_orders`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L45-L53)
- [`ArcSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Reach.lean#L21-L24)
- [`open_readSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Suds.lean#L34-L48)
- [`sightSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Suds.lean#L51-L95)
- [`screensSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Port/Emulation.lean#L33-L71)
- [`await`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean)
- [`SeqPair`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L21-L29)
- [`await`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L31-L39)
- [`boatsSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L49-L62)
- [`Vane.wheel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L71)
- [`Vane.checked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L72)
- [`breadSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Mast.lean#L13-L31)
- [`StarPath`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L19-L23)
- [`span_four`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Low.lean#L133-L143)
- [`four_size`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L112-L114)
- [`just_one`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L29-L44)
- [`below`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L46-L49)
- [`Cells.RankWidths`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UV_STRESS)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-vii-6-1"></a>

- **K-VII.6.1** [`laminateSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Port/Rail.lean#L95-L127) *(key result)* — A nonlinear observable bound on the actual stencil: given sufficient pose and payments, the observable is valid on the fine patch and close to the critical bias on the coarse field.

<a id="k-vii-6-2"></a>

- **K-VII.6.2** [`pays_sky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31) *(main result)* — If the firing property holds in all dimensions under simple group, scrim, and dimension-above hypotheses, then for any sequence of scales tending to zero there is a subsequence along which a scaling limit star-path exists.

<a id="k-vii-6-3"></a>

- **K-VII.6.3** [`wakesSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L75-L87) *(key result)* — From the firing property one extracts a subsequence of scales and vanes with checked properties and radii equal to the prescribed decreasing scales.

<a id="k-vii-6-4"></a>

- **K-VII.6.4** [`earningsSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Tael.lean#L56-L91) *(key result)* — Variant of the earnings estimate allowing parameters that vary with the sequence index within bounds.

<a id="k-vii-6-5"></a>

- **K-VII.6.5** [`y_readySky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Lys.lean#L51-L71) *(numbered result)* — A dynamic-stop variant of the readiness estimate bounding a root-test quantity by a budget.

<a id="k-vii-6-6"></a>

- **K-VII.6.6** [`lava_vSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Reach.lean#L34-L50) *(key result)* — The uniform endpoint estimate on compact sets holds for the dynamic-stops poised notion.

<a id="k-vii-6-7"></a>

- **K-VII.6.7** [`attireSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Delft.lean#L30-L38) *(numbered result)* — Under spacing, fit and stake hypotheses, a surviving-configuration property (Chast) holds for the dynamic-stops variant.

<a id="k-vii-6-8"></a>

- **K-VII.6.8** [`sweepSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Karin.lean#L34-L57) *(key result)* — Under support conditions, the tray functions are integrable and the assembled functional differs from the reference platter by at most the summed budget grantS.

<a id="k-vii-6-9"></a>

- **K-VII.6.9** [`inletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L126-L129) *(major result)* — For inputs of grade at most three, the projected input supplies the required fixed-field estimate.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

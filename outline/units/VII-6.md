# VII.6. Scaling variants and fixed-field estimates

*Part VII — Identification as Yang–Mills.*

Adapts observable estimates to prescribed scale sequences and gives a separate low-degree field estimate.

**Status: edited.** Checked against the linked Lean and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [← Previous: VII.5](VII-5.md) · [Next: VIII.1 →](VIII-1.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** VII, identification as Yang–Mills. **Lean:** [`YM/TraceExtension/Prom/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom) contains the "Sky" files, 133 files with "dynamic stops". Other outputs are [`Trace.first_grade`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Trace2/Transfer.lean#L31-L37) and [`FreeStress.dim_before`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L51-L54). Also included are [`SharpGram.inletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L126-L129) and its helpers in [`YM/SharpGram/Clauses.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean). **Size:** 4,205 lines in 374 declarations:

- about 3,600 lines in the chain of [`pays_sky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31);
- about 560 further lines in the dynamic-stop files;
- 43 lines in the chain of the supply theorem.

The unit has two parts.

- **(A) Scaling sequences at prescribed radii.** The ultraviolet construction (III.11) compares the lattice theory with the free field at reading scales $\ell(b,k)=a_k\mu_k^b$. Varying the band $b$ over a unit interval makes these scales cover every sufficiently small radius. The stage estimates remain valid across one change of block factor. They produce an approaching scaling of the limit theory along a subsequence of any prescribed positive null sequence.
- **(B) Degrees below four.** In the limit theory every field of degree at most $3$ is a multiple of the unit. It has a constant family of lattice representatives whose stage-$k$ coefficient size is at most $\hat\beta_k$ on an ordered cutoff tail, for every sufficiently large $k$.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

**Setting.**

*The family and its stages.*

- $G$ is a compact matrix group with simple Lie algebra $\mathfrak g$, and $C$ is a Wilson family with its construction record (II.2, III.13).
- Its RG stages $k$ have spacings $a_k\downarrow0$ and block factors $L_k=a_k/a_{k+1}\ge2$.
- The running inverse coupling is $\hat\beta_k=\bar\beta+c_G\log a_k^{-1}$, where $c_G>0$. Put
$$\mu_k=\exp\big((\log\log\hat\beta_k)^2\big),$$
which grows faster than every positive power of $\log\hat\beta_k$ and slower than every positive power of $\hat\beta_k$ (III.11).

- For a real band $b$, the *reading scale* of stage $k$ is $\ell(b,k)=a_k\mu_k^{\,b}$. For fixed $b$ it tends to $0$.

*The limit theory and the free reference.*

- $F$ is an extraction order and $\Phi_F$ its filter of ordered cutoff tails on pairs $(N,p)$ (IV.1).
- $S$ is a limit table of $C$ along $F$ (ordered smeared limits and generic point limits), with a Euclidean hierarchy $H$.
- $\mathcal F^S_d=\mathrm{Label}_d/\mathrm{Null}_d(S)$ is the filtered field space of degree at most $d$, $\pi_d:\mathrm{Label}_d\to\mathcal F^S_d$ is the projection, and $\mathbf 1_d$ is the unit.
- The reference is the free Maxwell table of VI.2: gauge-invariant Wick polynomials in a free $\mathfrak g$-valued field. Its field spaces are $\mathcal F^{\rm free}_d$, its unit is $\mathbf 1^{\rm free}_d$ and its hierarchy is $H_0$.
- Correlation kernels on $\mathrm{Conf}_n$ are written $\langle\phi_1(x_1)\cdots\phi_n(x_n)\rangle^S$ and $\langle\cdots\rangle^{\rm free}$.

*Scalings.* A *scaling* (VI.1) consists of

- radii $r_k>0$ strictly decreasing to $0$,
- constants $\xi_k>0$,
- complex-linear isomorphisms $U_k(d):\mathcal F^{\rm free}_d\to\mathcal F^S_d$.

It is *approaching* (VI.2.7(a)) if the following holds for every $n$ and all $v_i\in\mathcal F^{\rm free}_{d_i}$. Put
$$K_k(x)=\langle U_kv_1(r_kx_1)\cdots U_kv_n(r_kx_n)\rangle^S-\langle v_1(x_1)\cdots v_n(x_n)\rangle^{\rm free}.$$
The kernels $K_k$ are smooth on $\mathrm{Conf}_n$ and tend to zero locally with an order-zero bound: for every compact $K\subset\mathrm{Conf}_n$ and all $M,\varepsilon>0$, eventually $|\int tK_k|\le\varepsilon$ for every smooth test function $t$ supported in $K$ and satisfying $\|t\|_\infty\le M$.

*Fixed data.*

- $B$ is a binding of the RG history to its price lists, $O$ a Haar budget and $J$ a chart ratio (III.11).
- (S) is the one-step cost package of III.11.
- $c_d=2(w_d+1)$ are the mark exponents of III.11, where $w_d$ is the polynomial degree of the degree-$d$ label frame plus $4$.
- Write $J_k$ for the price index of stage $k$, $\Lambda_j$ for its block-factor list, and $T_d$ for the reference stage of degree $d$. Thus $L_k=\Lambda_{J_{k+1}}$. Stage packages, poised stages, the uniform-band property $\mathrm{Fire}_d(z)$, vanes and checked vanes are defined in §4.

**Proposition VII.6.1 (approaching scalings along a subsequence of any null sequence).** Assume:

- (i) $G$ is simple and (S) holds for $C$;
- (ii) $(z_d)$ are reals with $z_d\ge c_i$ for all $i\le d$;
- (iii) $\mathrm{Fire}_d(z_d)$ holds for every $d$ (Definition VII.6.d);
- (iv) $\dim\mathcal F^S_d\le\dim\mathcal F^{\rm free}_d$ for every $d$;
- (v) $\mathcal L$ is an ultrafilter on $\mathbb N^2$ finer than $\Phi_F$.

Let $s_i>0$ with $s_i\to0$. Then there are a strictly increasing $f:\mathbb N\to\mathbb N$ and a scaling with $r_k=s_{f(k)}$ and $\xi_k=1$ such that:

- (a) the scaling is approaching;
- (b) for every $d$ and all large $k$, $U_k(d)$ is real and covariant under signed coordinate permutations between $H_0$ and $H$, and $U_k(d)\mathbf 1^{\rm free}_d=\mathbf 1_d$;
- (c) there are vanes $V_k$ of depth $k$ with the following properties:
  - their stages tend to infinity;
  - $V_k$ is checked at level $k$;
  - its radius is $\ell(V_k)=r_k$;
  - for every $d$ and all large $k$, the full lift tuple of $V_k$ in degrees $\le k$ converges along $\mathcal L$ to a tuple $Y_k$, and $U_k(d)=\pi_d\circ Y_{k,d}$.

*Status:* theorem, with (iii) and (iv) carried as hypotheses. Both are supplied inside the construction run, where VII.2 applies this result:

- (iii) is produced by the uniform-band construction (III.2);
- (iv) is the rank-width bound (VI.2), applied to the corrected rank widths of the seed (IV.1).

*Lean:* [`pays_sky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31). Conclusions (a)–(c) are the structure [`StarPath`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L19-L23).

**Proposition VII.6.2 (checked vanes at prescribed radii).** Assume (i)–(iii) of VII.6.1. Use the ordered and generic point limits from the setting. Only smoothness of $S$, rather than its full hierarchy, is needed here; the free hierarchy $H_0$ is still assumed. Let $s_i>0$ with $s_i\to0$. Then there are

- a strictly increasing $p:\mathbb N\to\mathbb N$ with $s\circ p$ strictly decreasing, and
- for each $d\in\mathbb N$, a vane $V_d$ of depth $d$ with stage $\ge d$, checked at level $d$, with $\ell(V_d)=s_{p(d)}$.

*Status:* theorem.

*Lean:* [`wakesSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L75-L87), with [`Vane`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L65-L69) and [`TimberSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L42-L47).

**Proposition VII.6.3 (stage-$k$ chessboard bound with a moving band).** Assume (i) of VII.6.1, let $d\in\mathbb N$, and let $z\ge c_i$ for $i\le d$. Fix the following data:

- $\Delta\in\mathbb N$, $e,u_0\in\mathbb R$, and stage packages $P_k$ of degree $\le d$ with Taylor order $\Delta$, exponent $e$ and bands $b_k\le u_0$;
- $n\ge2$ and $m+1\le n$;
- labels $g_i\in\mathrm{Label}_{d_i}$ with $d_i\le d$, for $0\le i\le m$;
- a compact $K\subset\mathrm{Conf}_{m+1}$.

Then the following holds for all large $k$. Take:

- a stage-$k$ cost record $L$ of $P_k$ with exponent $-3$, mark exponent $z$ and arity bound $n$;
- $N>k$, a period $p$, and a stage-$k$ RG representative $V$ compatible with $L$ along the same RG history;
- $x$ whose rounding to the stage-$k$ lattice, in units of $\ell(b_k,k)$, lies in $K$ and fits the stopping stage;
- stage-$k$ polynomial lift data $T_i$ of Taylor order $\Delta$ for $V$, and labels $f_i\in\mathrm{Label}_{d_i}$, satisfying the rescaling equation: after applying $T_i$ and the coupling dilation of VII.6.n, the result is $g_i$ weighted by $\ell(b_k,k)/a_k$.

Then for every nonempty subset $s\subset\{0,\ldots,m\}$,
$$\rho_{\mathcal T}(\Phi_s)\ \le\ \mathrm{bud}_n(k):=\mu_k^{-1/(16n)}.$$
To define $\Phi_s$, introduce commuting markers $\eta_i$ with $\eta_i^2=0$. If $O_i$ is the lattice probe with label $f_i$, and $D$ is the free cumulant polynomial of the $g_i$ at the rounded, rescaled points, then
$$\Phi_s=[\eta_s]\left(e^{-D}\prod_{i=0}^{m}(1+\eta_i O_i)\right),\qquad \eta_s=\prod_{i\in s}\eta_i.$$
The exponential is a finite polynomial in the marker algebra. $\rho_{\mathcal T}$ is the chessboard root at coupling $\beta_{N,p}$ over the tiling by cells of the width stage $m_0(b_k,k)$.

*Status:* theorem. The threshold in $k$ depends on $(d,z,\Delta,e,u_0,g,K,n)$ and on the bands only through $u_0$. This uniformity is the difference with the fixed-band [`earnings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Tael.lean#L58-L90) of III.11.

*Lean:* [`earningsSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Tael.lean#L56-L91). The form for poised families is [`lava_vSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Reach.lean#L34-L50).

**Proposition VII.6.4 (fixed-field supply in degrees $\le3$).** Let $Y$ be a final record for $(C,F,S)$ (VIII.1) and $G$ simple. Let $\varphi$ be a filter on $\mathbb N^2$ finer than $\Phi_F$, let $d\le3$ and let $x\in\mathrm{Label}_d$. Then $\pi_dx$ is *supplied along $\varphi$*. That is, there is $p\in\mathbb N$ such that for all large $k$ there are $y\in\mathrm{Label}_d$ and labels $q_{N,p'}\in\mathrm{Label}_d$ with:

- $\pi_dy=\pi_dx$;
- $q\to y$ along $\varphi$;
- $\mathrm{quota}_k^{N,p'}(q_{N,p'})\le\hat\beta_k^{\,p}$ eventually along $\varphi$.

Here $\mathrm{quota}_k^{N,p'}(u)$ is the coefficient size of $u$ at cutoff $(N,p')$, written in stage-$k$ coordinates ([`quota`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Least.lean#L20-L21)). One can take $p=1$ and $q$ constant.

*Status:* theorem.

*Lean:* [`inletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L126-L129), [`Supplies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L18-L21).

**Proposition VII.6.5 (fields of degree below four).** Let $G$ be simple and let $d\in\mathbb N$ satisfy $d<4$.

- (a) $\dim\mathcal F^{\rm free}_d=1$.
- (b) If $Y$ is a final record for $(C,F,S)$, then every $u\in\mathcal F^S_d$ is of the form $t\,\mathbf 1_d$ with $t\in\mathbb C$.

*Status:* theorem. Used by VII.6.4 and by [`vacuum_truncation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Trace2/Transfer.lean#L94-L111).

*Lean:* (a) [`dim_before`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L51-L54); (b) [`first_grade`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Trace2/Transfer.lean#L31-L37).

<a id="unit-inputs"></a>

## 2. What it uses

**From other units.**

- **III.11 (interacting rank).** The stage estimates and numerical bounds:
  - The fixed-band estimates underlying the moving-band argument:
    - [`earnings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Tael.lean#L58-L90), [`lava_v`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Reach.lean#L27-L42);
    - [`Poised`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Plume.lean#L23-L27), [`aspect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Medal.lean#L36-L76), [`podium`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Largo.lean#L21-L29).
  - The reading-scale arithmetic:
    - [`Station.gap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L49), [`mag`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L47);
    - the rounding [`tested`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Tuning.lean#L24);
    - the rates [`hat_rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L55-L56) and [`gap_rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L60-L88).
  - The budget [`Ship.budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L28) and the pattern of the root bound [`Ship.rebate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L95-L128) (III.11, Lemma 4.7).
  - The step from root bounds to a pointwise comparison, [`Read.full_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Finite.lean#L242-L250).
  - The one-step cost package [`Scrim`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Biscuit.lean#L29-L34).
  - The band inequalities [`Checks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Medal.lean#L23-L28) and the vane lift [`wok`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Pint.lean#L25-L31).
- **III.2 (choice of constants).** Production of the uniform-band property by [`embalms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L33-L50), [`stagingSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Plume.lean#L30-L53) and the package extension of III.2. Also the construction runs [`plentifulWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean#L26-L81), [`plentiful`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Bardo.lean#L24-L77) and [`merano`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Made/Bardo.lean#L25-L76). These runs:
  - choose $z_d=\sum_{i\le d}c_i$;
  - choose an ultrafilter $\mathcal L$ finer than $\Phi_F$;
  - invoke the uniform-band construction and then the gallery theorem of VII.2.
- **III.9, III.10, III.11.** The RG history, background fields and one-step bounds used in VII.6.g.
- **IV.1.**
  - Extraction orders and limit tables.
  - The chessboard estimate (Lemma IV.1.b; reflection positivity of the Wilson action).
  - The corrected rank widths [`Cells.RankWidths`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L138) that give hypothesis (iv).
- **VI.1, VI.2.** The scaling record [`Climb.Scaling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31). The free Maxwell table [`freeTable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L23-L24). The rest of the station machinery:
  - stations and admissibility [`Station.Admissible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L89-L97) (VI.2.8);
  - balanced estimates give stations: [`Granular`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L30-L34), [`supply_wheel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L121-L128) (VI.2.s);
  - [`Approaches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L52-L53) and [`Fades`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Weak.lean#L24-L27);
  - eventual injectivity [`MeterTest.injects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L88-L103);
  - the dimension cap [`DimAbove`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L108) and its proof [`cap_given`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L110-L115);
  - the fixed-radius analogue [`Stations.equivalences`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L132-L181) (VI.2.t);
  - the free labels of degree $<4$: [`just_one`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L29-L44), [`below`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L46-L49), [`span_four`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Low.lean#L133-L143).
- **VIII.1.** The final record [`Spec.Final`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73). Part B uses three of its fields:
  - the construction record;
  - the hierarchy laws, giving $\mathbf 1_d\ne0$;
  - the comparator, a linear isomorphism $\mathcal F^S_d\cong\mathcal F^{\rm free}_d$ for each $d$.
- **VII.2 (consumer).** [`gang`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56) proves the last clause of [`Gallery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L41-L44) from VII.6.1. That clause says: for every null sequence $s$ there are a subsequence and a scaling with radii $s\circ f$ carrying the trace-comparison witness.

**Standard mathematics.**

- Reflection positivity of the Wilson action (Osterwalder–Seiler, Ann. Phys. 110 (1978)) and chessboard estimates (Fröhlich–Israel–Lieb–Simon, CMP 62 (1978)).
- Bałaban's block-spin renormalization group with background fields (CMP, 1983–1989). It is used only through the stage estimates of III.9–III.11.
- The intermediate value theorem and recursive (diagonal) choice of subsequences.
- Ultrafilter limits in finite-dimensional spaces (bounded sequences converge along any ultrafilter).
- For simple $\mathfrak g$: the adjoint representation has no nonzero invariant vectors, and invariant symmetric bilinear forms on $\mathfrak g$ are multiples of the Killing form. Both are used only through VI.2.

**Imported constants and assumptions.**

- Hypotheses carried by VII.6.1: (S), the uniform-band property, the dimension cap and the ultrafilter. Their discharge is described above.
- The budget $\mathrm{bud}_n(k)=\exp(-\log\mu_k/(16n))$. The cost-record exponent $-3$.
- The mark exponents $c_d=2(w_d+1)$ ([`generator`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SteamW.lean#L18), [`winter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Tender.lean#L11)).
- Bands at least $d+6$, and the inequalities between three bands in VII.6.d.
- Arity bound $d+2$ for degree $d$ ([`trays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L25)).
- In the stopping rule: the margin $\mu_k^2$ and the depth $\lceil(\log\hat\beta_k)^2\rceil^{10}$.
- In the checked condition: tolerance $1/(j+1)$ with window radius $j+1$, and window radius $100$ for the two-point bound.
- The error $\hat\beta_i^{-1/32}$ in Lemma VII.6.j.

<a id="unit-strategy"></a>

## 3. Strategy

For fixed $b$, the reading scales $\ell(b,k)$ form a discrete null sequence. The fixed-band argument of III.11 also requires a plateau of constant block factor across its RG window. These restrictions do not ensure that its radii meet a prescribed null sequence. VII.2 needs such a sequence to test the trace anomaly at arbitrary short distances.

Let the band vary over $[b_0,b_0+1]$, with $b_0\ge0$. Eventually $\mu_k\le\mu_{k+1}$ and $L_k\le\mu_{k+1}$, so
$$\ell(b_0,k)=a_{k+1}L_k\mu_k^{b_0}\le a_{k+1}\mu_{k+1}^{b_0+1}=\ell(b_0+1,k+1).$$
The reading intervals therefore overlap and cover all sufficiently small positive radii. Continuity in the band gives exact equality with each target radius. The stage estimates must now be uniform over a unit interval of bands, and their stopping rule must allow a change of block factor. The uniform-band input comes from III.2; the modified estimates occupy most of this unit.

The chessboard bound gives a pointwise comparison with free correlations. Two auxiliary bands control the strip near the coincidence sets and the Riemann-sum error on its complement. These bounds yield admissible stations at the target radii. A diagonal choice makes their depth and arity increase while their tolerance tends to zero. Their bounded lift tuples converge along a single ultrafilter; projection to the limit field spaces gives approaching linear maps. Free test functionals make these maps eventually injective, and the dimension cap makes them isomorphisms. For degrees below four, a separate argument transports the one-dimensional free field spaces through the final comparator. Multiples of the unit then have constant lattice representatives with the required coefficient bound.

<a id="unit-steps"></a>

## 4. Steps

### 4.1 Reading scales and dynamic stops

**Lemma VII.6.a (stopping stages and fit).** Fix a band $b$ and a stage $k$. The middle stage $m_1(b,k)$ is the largest $j\le k$ for which $a_j\ge\mu_k^2\ell(b,k)$, with value $0$ if no such $j$ exists. Put $Q_k=\lceil(\log\hat\beta_k)^2\rceil$. The width stage $m_0(b,k)$ is the largest $j\le m_1$ for which $a_j\ge Q_k^{10}a_{m_1}$, again with value $0$ if the set is empty.

The pair $(b,k)$ is *allowed* when both defining inequalities hold at the selected stages,
$$\min(\Lambda_{J_k},\Lambda_{J_k-1})\ge2,\qquad J_m\ge J_k-1\quad(m_0\le m\le k).$$
Monotonicity also gives $J_m\le J_k$. Thus each block factor in this window is at least $\lambda_k=\min(\Lambda_{J_k},\Lambda_{J_k-1})$, and
$$\lambda_k^{j-m}\le a_m/a_j\qquad(m_0\le m\le j\le k).$$

Round $x$ to the stage-$k$ lattice in units of $\ell(b,k)$, and multiply by $\ell(b,k)$ to obtain its physical configuration. It *fits* if that configuration is generic and every coordinate has absolute value at most $a_{m_1}/8$. For fixed $b>0$ and generic $x$, it fits for every sufficiently large allowed $k$. More uniformly, for each $R\in\mathbb R$ and arity $n$, every generic rescaled lattice configuration of norm at most $R$ fits for sufficiently large allowed $k$, uniformly in $b$.

*Proof sketch.* The stopping indices are maxima of finite sets. The allowed conditions give the two scale margins. Since $J_m\in\{J_k-1,J_k\}$, multiplying the lower block-factor bound gives the ratio estimate. Rounding converges for a fixed positive band; the margin $\mu_k^2\to\infty$ then absorbs each fixed configuration. For rescaled lattice configurations, rounding is exact, so the same margin absorbs $R$ uniformly in the band.

On an allowed plateau of III.11, the maximum definitions agree with its ceiling-based stopping stages: $a_j/a_k=L^{k-j}$ turns the defining inequalities into the same ceiling inequalities.

Inputs: [`readySky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Tuning.lean#L20-L38), [`open_readSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Suds.lean#L34-L48).

*Lean:* [`gainSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L15-L16), [`middleSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L31), [`widthSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L32), [`AllowedSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L42-L46), [`FitSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Tuning.lean#L15-L17); fixed versions [`middle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L44), [`Allowed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L93-L96). *(proof read; stopping definitions read)*

**Lemma VII.6.b (overlapping reading intervals).** Let $G$ be simple, $b\ge0$, and assume $\max(\Lambda_{J_k},\Lambda_{J_k-1})\le\mu_k$ for all sufficiently large $k$. Then eventually $\ell(b,k)\le\ell(b+1,k+1)$. For every $J\in\mathbb N$ there is $r>0$ such that each $s\in(0,r]$ equals $\ell(b+c,k)$ for some $k\ge J$ and $c\in[0,1]$.

*Proof sketch.* Eventually $\hat\beta_k\ge e$ and $\mu_k\le\mu_{k+1}$. The factor $L_k$ is among the two factors controlled at stage $k+1$, so $L_k\le\mu_{k+1}$. This gives overlap. Choose a sufficiently large $i\ge J$ and put $r=\ell(b,i)$. For $0<s\le r$, take the least $k>i$ with $\ell(b,k)\le s$. Then
$$\ell(b,k)\le s\le\ell(b,k-1)\le\ell(b+1,k).$$
Continuity of $c\mapsto\ell(b+c,k)$ gives $c$.

*Lean:* [`tide_mode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L14-L18), [`near_skies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L19-L26), [`gap_curve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L27-L31), [`gap_account`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L32-L43).

**Lemma VII.6.c (a null sequence is realized at increasing stages).** Under the hypotheses of VII.6.b, let $s_j>0$ with $s_j\to0$, and let $J\in\mathbb N$. Then there are strictly increasing $K,P:\mathbb N\to\mathbb N$ and $c_j\in[0,1]$ with $P_j\ge J$ and $s_{K_j}=\ell(b+c_j,P_j)$.

*Proof sketch.* Recursion: apply VII.6.b with threshold $\max(J,P_{j-1})+1$, and pick $K_j>K_{j-1}$ with $s_{K_j}\le r$.

*Lean:* [`gap_orders`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L45-L53).

### 4.2 The uniform-band property

**Definition VII.6.d (packages, poised stages and the uniform-band property).** A package of degree $\le D$ consists of a band $b\ge D+6$, a Taylor order $\theta\ge D$, an exponent $e$, and a purse of numerical cost parameters at each price index. Every purse has band $b$, Taylor order $\theta$, exponent $e$, and credit at least $bD+D+2$.

A finite family of packages is *poised at stage $k$*, with arity bound $n$, mark exponent $z$ and tables $R_{N,p,d}\in\mathrm{End}_{\mathbb C}(\mathrm{Label}_d)$ for $d\le D$, when:

- $T_d\le k$ for every $d\le D$;
- $\max(\Lambda_{J_k},\Lambda_{J_k-1})\le\mu_k$;
- for every $N>k$ and $p$, the tables send the reference unit label to its frame unit vector, preserve the real structure, commute with signed coordinate permutations, and approximate the actual stage-$k$ coordinate maps to relative coefficient-size error at most $1/2$;
- the sharper relative error bound $\mu_k^{-1/2}$ also holds;
- for each package there is a stage-$k$ cost record with exponent $-3$, mark exponent $z$ and arity bound $n$; for every $N>k$ and $p$, it has a compatible RG representative and polynomial lift data realizing the same tables.

The cost record also contains the allowed stopping stages of VII.6.a, numerical and background-field bounds along the RG window, room bounds for each arity at most $n$, and the one-step estimates used in VII.6.g.

The *uniform-band property* $\mathrm{Fire}_d(z)$ asserts that there are package families $P_s^{(i)}$, $i=0,1,2$, base bands $b_0,b_1,b_2$, and $\kappa<0$, satisfying
$$b_1+6<b_0,\quad b_2+5<b_0+\kappa,\quad (b_0-b_1)d(d+2)+\kappa<0,\quad (b_0-b_2)d(d+2)-b_0-\kappa<0.$$
For $s\in[0,1]$, the bands are $b_i+s$, and each family's Taylor order and exponent are independent of $s$. There is a single $k_0$ such that, for every $k\ge k_0$ and every $s\in[0,1]$, the triple is poised at stage $k$ with arity bound $d+2$ and mark exponent $z$, for some tables.

*Production in III.2.* Starting from its package and block-size requests, a local chart ratio and nonnegative mark exponents, the construction enlarges a waiting window so that every family paid on the enlarged window, with the required covariance of its coordinate maps and a binding to the same prices, satisfies $\mathrm{Fire}_d(z_d)$ for every $d$. Packages chosen at bands $b_i+1$ are lowered to $b_i+s$ without changing their Taylor orders or exponents. The poised-stage threshold is uniform in $s\in[0,1]$.

*Lean:* [`Tapes.Panel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Prepaid.lean#L37-L47), [`PoisedSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Plume.lean#L23-L28), [`LegacyCostSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Lys.lean#L38-L45), [`FiresSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L29-L32), [`Checks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Medal.lean#L23-L28), [`raises`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L14-L22), [`embalms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L33-L50). *(definitions read; production proof read)*

**Lemma VII.6.e (leaps).** Let $G$ be simple and assume $\mathrm{Fire}_d(z)$ with base bands $b_0,b_1,b_2$. Then $b_0>5$, and the following holds for every $s_i>0$ with $s_i\to0$. There are:

- a strictly increasing $f$;
- strictly increasing stages $k_i\ge k_0$;
- offsets $e_k\in[0,1]$;
- tables $Y_i$;

such that the triple $P_{e_{k_i}}$ is poised at stage $k_i$ with $Y_i$, and $s_{f(i)}=\ell(b_0+e_{k_i},k_i)$.

*Proof sketch.*

1. $b_0\ge d+6$.
2. The poised condition gives $\max(\Lambda_{J_k},\Lambda_{J_k-1})\le\mu_k$, which is the hypothesis of VII.6.b.
3. Apply VII.6.c with base $b_0$ and threshold $k_0$. Put $e_{P_j}=c_j$ and $e=0$ elsewhere.
4. $\mathrm{Fire}_d$ at $s=c_j$ gives poised data at stage $P_j\ge k_0$. Here the threshold must not depend on $s$.

*Lean:* [`fliesSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L68-L84), [`LeapSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L56-L60), [`ArcSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Reach.lean#L21-L24).

### 4.3 Stage estimates with a moving band

**Lemma VII.6.f (= Proposition VII.6.3).**

*Proof sketch.* Follow the fixed-band argument of III.11 with three uniform estimates and the modified stopping stages.

1. The local probe bounds hold uniformly for bands $\le u_0$.
2. The polynomial lifts of the $g_i$ have bounds independent of the band.
3. The mark exponent $z\ge c_{d_i}$ converts normalized coefficient bounds on the $f_i$ into source-expansion bounds ([`tremor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SteamW.lean#L19-L41)).
4. Per-site affordability holds from some stage $u$ on. It is needed at the width stage $m_0$.
5. $u\le m_0$ for large $k$. If $m_0<u$, the bracket condition of VII.6.a would give $J_k-1\le J_{m_0}\le J_u$, contradicting $J_k>J_u+1$. In the fixed version the plateau is used here, with $J_k>J_u$.
6. Lemma VII.6.g then gives the bound.

*Lean:* [`earningsSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Tael.lean#L56-L91), [`ActumSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Tael.lean#L40-L42).

**Lemma VII.6.g (root bound at one stage).** Fix a cost record of degree bound $D$, band $b\ge0$, purse exponent $e$, mark exponent $z$ and arity bound $u\ge2$. Fix $N\ge k$ and a period $p$, let $d_i\le D$ for $0\le i\le m$, and assume $m+1\le u$, $T_D\le k$ and $T_{d_i}\le k$. Take an RG history from the cutoff to $m_0(b,k)$ satisfying the cost record, the per-site affordability bound at $m_0$, the required local work items, and the implication from the stage-$k$ seal to its covariance model. Let $g_i,f_i\in\mathrm{Label}_{d_i}$ and polynomial lift data satisfy the rescaling equation of VII.6.3. Assume the configuration fits, its rounded position belongs to the specified compact set, and the uniform local probe bounds hold there. Write $\gamma$ for the purse credit and $M_{k,N,p,d}$ for the normalized stage-coordinate coefficient size multiplied by the stage multiplicity bound. Finally assume:

- $\mu_k^e\,M_{k,N,p,d_i}(f_i)\le\mu_k^{-8}$ for each probe;
- its lifted polynomial has coefficient sum at most $\mu_k^\gamma$;
- separation of the probe seats implies the source-expansion bound with weight $g_k^z$, where $g_k=\hat\beta_k^{-1/2}$.

Then $\rho_{\mathcal T}(\Phi_s)\le\mathrm{bud}_u(k)$ for every nonempty $s$.

*Proof sketch.* The history gives compatible background fields and marker estimates at each stage. The covariance model supplies the free comparison data, and VII.6.h supplies the source expansion at the middle stage. Propagating that expansion to the width stage gives a marker estimate with allowance $A=e^{2I}$, where $I=\log\mu_k/(16u)$. The per-site affordability and allocated cost imply
$$\rho_{\mathcal T}(\Phi_s)\le e^I/A^{|s|}\le e^{-I}=\mathrm{bud}_u(k).$$

Root estimate: [`couponSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Port/Soft/Denarii.lean#L31-L62); fixed-band counterpart: [`Ship.rebate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L95-L128).

*Lean:* [`y_readySky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Lys.lean#L51-L71), [`yardSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Allowance.lean#L26-L28), [`invoiceSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Allowance.lean#L40-L41), [`Ship.budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L28).

**Lemma VII.6.h (source expansion at the middle stage).** Fix the history, polynomial lift data and labels of VII.6.g. Assume its launch and survivor data, the compatible background-field record, the room bound for $m+1$ probes at depth $k-m_1$, and the leading and nonleading marker estimates along the window. If the configuration fits, its probe seats are separated, and the normalized coefficient, polynomial coefficient and source-expansion bounds of VII.6.g hold, then the marked probe product has the required source expansion at $m_1$.

More precisely, for every admissible middle-stage numerical bound, there are finite source and background families and a distinguished source for each cell and nonempty mode subset. They reproduce the propagated marked product exactly. Each distinguished source has the prescribed support and mode set; on a healthy background it differs from the corresponding free-cumulant expression by at most $\mu_k^{-3/2}$, after the permitted covariance adjustment.

*Proof sketch.* The polynomial coefficient bound controls the probe family. The launch and survivor data give the marked-source representation. The room, fit and marker estimates propagate it to the middle stage, where the support and comparison bounds give the stated expansion.

*Lean:* [`attireSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Delft.lean#L30-L38).

**Lemma VII.6.i (assembly of weighted words).** In a fixed one-step stage configuration, assume the background is healthy, the room and one-step bounds hold with size constant $B\ge1$, and $0<\varepsilon\le1$. Let $P_u$ be polynomials in the mode variables invariant under simultaneous gauge rotations, each of total degree at most $D$ and coefficient sum at most $r\ge0$, with all variables in the permitted probe regions. Let $S$ be a finite list of pairs $(c,w)$, where $c\in\mathbb R$ and $w$ is a word of allowed modes, each supported in the selected cell. Then the assembled chart integrands are integrable, and
$$\left|\mathcal A\left(\sum_{(c,w)\in S}c\prod_{u\in w}P_u\right)-\mathcal R\left(\sum_{(c,w)\in S}c\prod_{u\in w}P_u\right)\right|\le\sum_{(c,w)\in S}|c|\,E(B,\varepsilon,r,D,|w|).$$
Here $\mathcal A$ is the chart assembly, $\mathcal R$ is the corresponding reference reading with the same cell-orientation test, and $E$ is the one-word error bound from III.11.

*Proof sketch.* Induct on the list. Integrability is preserved by addition and scalar multiplication. Linearity and the triangle inequality add the one-word errors, with the factor $|c|$ for each word.

*Lean:* [`sweepSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Karin.lean#L34-L57).

**Lemma VII.6.j (one step at a change of block factor).** Fix a step $i+1\to i$ with $i<N$, a coarse-field pose $(o,W,V,v)$, a width multiplier $w\in\mathbb N$, and its auxiliary block-spin choices, forest and fluctuation data. Assume the one-step coupling bounds, with the larger of $\Omega_{J_{i+1}},\Omega_{J_i}$ and the smaller of $\alpha_{J_{i+1}},\alpha_{J_i}$. Assume also the small-field and Hessian-control bounds on the patch. Put $x=\hat\beta_i$, let $\widetilde x$ be the auxiliary reference coupling used in the stationary-field data, let $y$ be the fine reference coupling, and set $L=wB(y)$, where $B$ is the block radius of III.11.

Let $r$ be a fine-lattice site. Assume the fluctuation guards on the enlarged patch about $r$,
$$2(L+1)<\mathrm{side}_{i+1,p},\qquad 100(1+R_B(\widetilde x))\le\mathrm{side}_{i,p},$$
and, for every guarded fine bond $e$, require its parent to lie inside the pose with the margin
$$\mathrm{dist}(o,\mathrm{parent}(e))+B(x)+2\le W.$$
Then the fine configuration $U$ constructed by the background-field map is healthy at the small-field threshold $\tau(y)$ on the radius-$L$ patch. For every $f$ and gauge transformation $t$ with $t\cdot f=U$, and every coloured incidence $j$ with $\mathrm{dist}(r,j)+2\le L$,
$$\left|\mathcal O_j(f,t;r,g)-\bigl(\mathrm{Re}\,m_j+(DZ)_j\bigr)\right|\le\hat\beta_i^{-1/32}.$$
Here $R_B(s)=\lceil(\log s)^2\rceil$, $g$ is the step coupling, and $\mathcal O_j$ is the colour component of $g^{-1}$ times the plaquette curvature, in tree gauge rooted at $r$ and rotated by the adjoint action of $t(r)$. The mean $m$ and linear fluctuation correction $DZ$ use the same coordinates.

*Proof sketch.* The Hessian-control bound and guards give link estimates throughout the enlarged patch. A four-bond estimate makes every tested plaquette small, proving health. The link estimate and stationary-field curl identity give the displayed error on incidences two lattice units inside the patch.

*Lean:* [`laminateSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Port/Rail.lean#L95-L127), used by [`screensSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Port/Emulation.lean#L33-L71).

**Lemma VII.6.k (poised families supply the stage bound).** Assume (S), simplicity of $G$, and $z\ge c_i$ for $i\le D$. Let $P_k$ be a finite family of degree-$D$ packages whose bands are $q_\alpha+e_k$, with $e_k\in[0,1]$, and whose Taylor orders and exponents are independent of $k$. Fix a package index $\alpha$, labels $y_i\in\mathrm{Label}_{d_i}$ with $d_i\le D$, a compact $K\subset\mathrm{Conf}_{m+1}$, and $2\le n$, $m+1\le n$. For every sufficiently large $k$, every table with which $P_k$ is poised, every $N>k$ and $p$, and every fitted configuration whose rounded position belongs to $K$, the bound of VII.6.3 holds for the probes obtained by the vane lift from $y_i$.

*Proof sketch.* Apply VII.6.3 with band ceiling $q_\alpha+1$. The poised data supply the cost record, RG representative and polynomial lifts. Inverting the charted table gives the rescaling equation.

*Lean:* [`lava_vSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Reach.lean#L34-L50).

**Lemma VII.6.l (pointwise comparison).** Under the hypotheses of VII.6.k, fix an extraction order $F$, a package index $\alpha$, a strip exponent $\chi$, $R>0$, and a free word of arity $m\le n$ with degrees at most $D$. Assume the free table is smooth. There is $C$ such that, for every sufficiently large $k$ and every poised table, the lattice $m$-point function of the lifted probes differs from the free function by at most $C\,\mathrm{bud}_n(k)$ in the ordered upper-limit sense, at each generic stage-$k$ lattice configuration in the rescaled window of radius $2R$.

Thus, for each configuration and each $\eta>0$, the difference is eventually at most $C\,\mathrm{bud}_n(k)+\eta$ along $F$; no common cutoff threshold over all configurations is asserted.

*Proof sketch.* VII.6.k bounds every nonempty recentred part. The chessboard inequality and moment–cumulant identity bound the difference of moments by the budget times the sum of absolute coefficients of the free moment polynomial. Smoothness bounds that finite sum on the compact window. At arity zero both moments equal $1$.

Inputs: [`Read.full_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Finite.lean#L242-L250).

*Lean:* [`sightSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Suds.lean#L51-L95).

**Lemma VII.6.m (balanced estimates).** Under the hypotheses of VII.6.k, suppose three base bands $q_x,q_y,q_w$ and $c<0$ satisfy
$$q_y+6<q_x,\quad q_w+5<q_x+c,\quad(q_x-q_y)Dn+c<0,\quad(q_x-q_w)Dn-q_x-c<0.$$
Assume the free hierarchy is given. Let $f(i)\to\infty$, and let $Y_i$ be tables for which $P_{f(i)}$ is poised. Then the stations at stage $f(i)$, main band $q_x+e_{f(i)}$ and strip exponent $c$ satisfy the balanced estimates of VI.2 for arity at most $n$ and every window radius $R>0$.

*Proof sketch.* Write $k=f(i)$. The pointwise error is $O(\mathrm{bud}_n(k))\to0$. The auxiliary package at band $q_y+e_k$ supplies the strip bound
$$A_k=O\bigl(\mu_k^{(q_x-q_y)D}\bigr),$$
and the package at $q_w+e_k$ supplies the bound used for interpolation off the strip,
$$B_k=O\bigl(\mu_k^{(q_x-q_w)D}\bigr).$$
Each auxiliary package supplies both types of local bound; its designated role is chosen in the balancing argument. Their stopping stages fit inside the main geometric window by the first two inequalities. With $\sigma_k=\mu_k^c$ and normalized spacing $h_k=\mu_k^{-(q_x+e_k)}\le\mu_k^{-q_x}$, the last two inequalities give
$$A_k^n\sigma_k\to0,\qquad B_k^n h_k/\sigma_k\to0.$$
The radii tend to zero, and the lift bounds and symmetries hold on ordered tails. VI.2's station theorem gives eventual admissibility with any positive tolerance.

Inputs: [`thirdSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Latch.lean#L52-L77), [`w_rightSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Pint.lean#L37-L57), [`supply_wheel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L121-L128).

*Lean:* [`aspectSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Medal.lean#L39-L90), [`podiumSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Largo.lean#L24-L34).

### 4.4 Checked vanes

**Definition VII.6.n (vanes and checked vanes).** A *vane of depth $D$* consists of a stage $k$, band $b$, strip exponent $c$, and complex-linear tables $R_{N,p,d}$ on $\mathrm{Label}_d$ for $d\le D$.

Its station has radius $\ell(b,k)$, strip width $\mu_k^c$, and lifts
$$A_{N,p,d}=R_{N,p,d}^{-1}\circ D_{k,N,p,d}^{-1}\circ W_{\mu_k^b,d}\circ\iota_d.$$
Here $\iota_d:\mathcal F^{\rm free}_d\to\mathrm{Label}_d$ is the canonical equivariant section, $W$ applies the position scaling weight, and $D$ is the coupling dilation. On a frame vector of bidegree $(h,q)$, $W_{\rho,d}$ multiplies by $\rho^h$, where $h$ is the engineering degree, while $D_{k,N,p,d}$ multiplies by $s_{k,N,p}^{q}$, where $q$ is the number of curvature factors and
$$s_{k,N,p}=\frac{\beta_{N,p;k}^{-1/2}}{\hat\beta_k^{-1/2}\mu_k}.$$
Here $\beta_{N,p;k}$ is the actual coupling at stage $k$. If $R_{N,p,d}$ is not bijective, the lift is zero. Charting ensures bijectivity on the cutoff tails used below.

The vane is *checked at level $j$* when:

1. $5<b\le\log\log\hat\beta_k$;
2. $T_u\le k$ for every $u\le D$;
3. for every $N>k$ and $p$, its tables obey the charting and sharper coordinate bounds in VII.6.d;
4. every generic rescaled stage-$k$ lattice pair of norm at most $100$ fits; for every $w\le D$, every pair of free basis vectors in degree $w$, every $N>k$ and $p$, and every fitted pair whose rounded configuration is in the radius-$100$ window, all nonempty recentred parts have chessboard root at most $1/(j+1)$;
5. its station is admissible for arity at most $j$, window radius $j+1$, and tolerance $1/(j+1)$.

*Lean:* [`Vane`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L65-L69), [`Vane.wheel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L71), [`wok`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Pint.lean#L25-L31), [`ladd`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Ladle.lean#L17-L19), [`ladder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/CORRECTED_LIFT_COEFFICIENTS/Basis.lean#L115-L117), [`SeqPair`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L21-L29), [`TimberSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L42-L47), [`Vane.checked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L72). *(definitions read)*

**Lemma VII.6.o (a checked vane below any radius).** Assume simplicity, (S), $z\ge c_i$ for $i\le d$, $\mathrm{Fire}_d(z)$, and the limit-table hypotheses of VII.6.2. Let $l\le d+2$, $s_i>0$ with $s_i\to0$, $Y\in\mathbb N$ and $\theta>0$. There are an index $i\ge Y$, a stage $k\ge Y$, and a vane of depth $d$, stage $k$, checked at level $l$, with
$$\ell(b,k)=s_i<\theta.$$

*Proof sketch.* VII.6.e gives increasing stages realizing a subsequence of $s$ at bands in $[b_0,b_0+1]$. The two-point condition follows from VII.6.k applied to basis pairs, with arity budget $d+2$, together with uniform fitting and $\mathrm{bud}_{d+2}(k)\to0$. There are only finitely many degrees and basis pairs. VII.6.m and the station theorem give admissibility through arity $d+2$, hence through arity $l$, at window radius $l+1$ and tolerance $1/(l+1)$. Choose a stage beyond the reference stages and band ceiling, with both indices at least $Y$ and radius below $\theta$.

Inputs: [`await`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L31-L39).

*Lean:* [`boatsSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L49-L62).

**Lemma VII.6.p (= Proposition VII.6.2).**

*Proof sketch.*

1. For each $d$, $N$ and $y>0$, VII.6.o with $l=d$, $Y=\max(d,N+1)$ and $\theta=y$ gives $k>N$ with $s_k<y$, and a vane of depth $d$, stage $\ge d$, checked at level $d$, with radius $s_k$.
2. Choose recursively $p(d+1)>p(d)$ with $s_{p(d+1)}<s_{p(d)}$.
3. The stages are $\ge d$, so they tend to infinity.

*Lean:* [`wakesSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L75-L87).

### 4.5 Limits along the ultrafilter

**Lemma VII.6.q (limits of station lifts).** Under the ordered-limit and hierarchy hypotheses of VII.6.1, let a station of depth $D$, with radius $r>0$, be admissible through arity $n_{\max}$, on the radius-$R$ window, with tolerance $\varepsilon$. Let $\mathcal L$ be an ultrafilter finer than $\Phi_F$. Assume its degree-$d$ lift sends $\mathbf 1_d^{\rm free}$ to the scalar label eventually along $\Phi_F$, for every $d\le D$. Then the lift tuple converges along $\mathcal L$ to
$$Y\in\prod_{d\le D}\mathrm{Hom}_{\mathbb C}(\mathcal F_d^{\rm free},\mathrm{Label}_d).$$
The maps $U_d=\pi_d\circ Y_d$ are real, signed-covariant and unit-preserving for $d\le D$. For $n\le n_{\max}$, $d_i\le D$, $v_i\in\mathcal F^{\rm free}_{d_i}$, $M>0$, and every smooth test $t$ supported in the radius-$R$ window with $\|t\|_\infty\le M$,
$$\left|\int t(x)\left(\langle Uv_1(rx_1)\cdots Uv_n(rx_n)\rangle^S-\langle v_1(x_1)\cdots v_n(x_n)\rangle^{\rm free}\right)\,dx\right|\le\varepsilon M\prod_i\|v_i\|.$$

*Proof sketch.*

1. The lifts are eventually bounded, so a nontrivial filter $\mathfrak b$ finer than $\mathcal L$ along which they converge exists ([`finite_extract`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Vary.lean#L74-L80)).
2. Since $\mathcal L$ is an ultrafilter, $\mathfrak b=\mathcal L$.
3. Symmetry and unit identities pass to the limit, as in VI.2's [`harvested`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L132-L180), and ordered smeared convergence gives the displayed estimate. The extra unit hypothesis covers every degree through $D$.

*Lean:* [`harvestedSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Pepper.lean#L11-L60).

**Lemma VII.6.r (vanes give approaching maps).** Under the ordered-limit and hierarchy hypotheses of VII.6.1, let $r_k$ be a strictly decreasing null sequence. Let $V_k$ be vanes of depth $k$ whose stages tend to infinity, checked at level $k$, with $\ell(V_k)=r_k$, and let $\mathcal L$ be an ultrafilter finer than $\Phi_F$. Then there are complex-linear maps $U_k(d):\mathcal F_d^{\rm free}\to\mathcal F_d^S$ such that:

- $(r_k,U_k)$ is approaching;
- $U_k(d)$ is real, signed-covariant and unit-preserving for $d\le k$;
- $U_k(d)=\pi_d\circ Y_{k,d}$ for $d\le k$, where $Y_k$ is the $\mathcal L$-limit of the lifts of $V_k$.

*Proof sketch.*

1. Conditions 2–3 of VII.6.n give unit preservation of the lifts in every degree through $k$. VII.6.q then applies to each $V_k$.
2. Fix $n$, $v$, a compact $K\subset\mathrm{Conf}_n$, and $M,\varepsilon$. For $k\ge n$, $k\ge\max d_i$, $K$ contained in the radius-$(k+1)$ window, and $\prod\|v_i\|M/(k+1)\le\varepsilon$, the estimate at tolerance $1/(k+1)$ bounds $|\int tK_k|$ by $\varepsilon$.

*Lean:* [`breadSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Mast.lean#L13-L31).

**Lemma VII.6.s (isomorphisms).** Assume in addition the dimension cap (iv). Then there is a scaling with radii $r_k$ and $\xi_k=1$ such that:

- $U_k(d)$ coincides with the map of VII.6.r for all large $k$ (for each $d$);
- (a)–(c) of VII.6.1 hold.

*Proof sketch.*

1. The maps are eventually injective in each degree by VI.2. Finitely many free test functionals separate $\mathcal F^{\rm free}_d$, their rescaled versions converge by the approaching property, and injectivity is an open condition.
2. Injectivity and $\dim\mathcal F^S_d\le\dim\mathcal F^{\rm free}_d$ give bijectivity.
3. Where the map is not yet bijective, one of the later isomorphisms in that degree is substituted. This does not affect any eventual property.

*Lean:* [`dockedSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Mast.lean#L32-L58).

**Lemma VII.6.t (= Proposition VII.6.1).**

*Proof sketch.* VII.6.p gives $p$ and $V$. The radii $s\circ p$ form a strictly decreasing null sequence. VII.6.s then gives the scaling, with $f=p$.

*Lean:* [`pays_sky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31).

*Consumer.* [`gang`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56) (VII.2) applies VII.6.1 with:

- the seed's ordered limits, hierarchy and point limits;
- the free hierarchy supplied by the free-field comparison theorem;
- hypothesis (iv) from the rank-width bound.

It selects the lift limits and applies the trace-comparison theorem of VII.2. The run [`merano`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Made/Bardo.lean#L25-L76), together with the other runs cited in §2, supplies the rest:

- $z_d=\sum_{i\le d}c_i$;
- $\mathrm{Fire}_d(z_d)$ from the uniform-band construction;
- $\mathcal L$ from the existence of an ultrafilter finer than $\Phi_F$.

### 4.6 Degrees below four

**Lemma VII.6.u (= Proposition VII.6.5).**

*Proof sketch.*

- (a) For simple $G$, every free polynomial label of degree $d<4$ is $c\cdot1$. The label included in the degree-$4$ filtration is $c\cdot1+Q$, where $Q$ lies in the span of the quadratic invariants and is homogeneous of weight $4$ (by the degree-four classification). A label of degree $<4$ has no weight-$4$ part, so $Q=0$. Since labels map onto $\mathcal F^{\rm free}_d$ and the unit is nonzero, $\dim\mathcal F^{\rm free}_d=1$. For comparison, $\dim\mathcal F^{\rm free}_4=22$ ([`four_size`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L112-L114)).
- (b) The comparator of the final record is an isomorphism $\mathcal F^S_d\cong\mathcal F^{\rm free}_d$, so $\dim\mathcal F^S_d=1$. Since $\mathbf 1_d\ne0$, $\mathcal F^S_d=\mathbb C\mathbf 1_d$.

*Lean:* [`dim_before`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L51-L54), [`first_grade`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Trace2/Transfer.lean#L31-L37).

**Lemma VII.6.v (the unit is supplied).** Assume the construction record for $C$, let $\varphi$ be finer than $\Phi_F$, let $G$ be simple, and fix $d\in\mathbb N$ and $t\in\mathbb C$. Then $t\mathbf 1_d$ is supplied along $\varphi$ with $p=1$.

*Proof sketch.* Let $e_d^{\mathrm{ref}}$ be the reference unit label. Take the constant family $q\equiv y=t\,e_d^{\mathrm{ref}}$, for which $\pi_dy=t\mathbf 1_d$. For $k\ge T_d$ and $N\ge k$, the quota is homogeneous and the unit has stage-$k$ coordinate $a_k^d e_0$; this follows from the construction record. Hence the quota is $|t|\,a_k^d$. Along $\varphi$ the cutoff eventually exceeds $k$, and for large $k$ both $a_k\le1$ and $\hat\beta_k\ge|t|$ hold.

*Lean:* [`supplyUnit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L54-L61), [`quota_smul`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L33-L37), [`quota_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L38-L48).

**Lemma VII.6.w (= Proposition VII.6.4).**

*Proof sketch.* By VII.6.u(b), $\pi_dx=t\mathbf 1_d$. Then VII.6.v applies, with the construction record taken from the final record.

*Lean:* [`inletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L126-L129).

*Companion statements (VII.4).* The same file contains the dual "release" bounds:

- [`coreRead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L65-L85);
- [`physicalRelease`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L87-L117), which supplies an exponent $p$ such that, for all large $k$, every nontrivial finer filter along which $q\to x$ and $\mathrm{quota}_k(q)\le z$ eventually satisfies $|L(\pi_dx)|\le\hat\beta_k^{\,p}a_k^{-(d-w)}z$. It assumes construction and work item data, simplicity of $G$, $w\le3$, and $L(\mathbf 1_d)=0$ when $w>0$;
- [`outletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L120-L124), where $L$ vanishes on the images of $\mathcal F^S_e$, $e<w$, under the inclusions of the derivative plan.

These results belong to VII.4.

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

The analytic work extends the estimates of III.11 across a window with two neighbouring price indices. The smaller block factor controls the stopping depth; the larger and smaller neighbouring price parameters control the one-step estimates. At the final root estimate, affordability is charged at the width stage itself. These distinctions replace uses of constant-factor plateaus.

The interval covering argument requires one stage threshold for every band in a unit interval. Without that uniformity, the band selected by the target radius could escape the available estimates. The subsequent diagonal choice preserves exact equality with the prescribed radii.

The scaling maps are real, signed-covariant and unit-preserving eventually in each degree. This result does not assert compatibility with inclusions between degrees or stress-tensor normalization. The dimension cap supplies surjectivity. The ultrafilter keeps all lift limits on the same cutoff filter, and the checked tolerances give local order-zero convergence without an explicit rate in the prescribed radius. The fixed-field supply argument uses the comparator and the unit coefficient identity; it requires none of the moving-band estimates.

<a id="unit-notation"></a>

## 6. Notation

- **object:** scaling (radii, constants, isomorphisms)

  **code name:** [`Climb.Scaling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31); radii only: [`Zoom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L15-L19)

  **proposed notation:** $(r_k,\xi_k,U_k)$

- **object:** approaching; weak vanishing on compacts

  **code name:** [`Approaches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L52-L53), [`Fades`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Weak.lean#L24-L27)

  **proposed notation:** $K_k\to0$ locally with an order-zero bound

- **object:** scaling sequence along $\mathcal L$ (VII.6.1 (a)–(c))

  **code name:** [`StarPath`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L19-L23)

  **proposed notation:** scaling sequence along $\mathcal L$

- **object:** free Maxwell reference table

  **code name:** [`freeTable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L23-L24), [`Bel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L20), [`Cells.standard`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L22)

  **proposed notation:** $\mathcal F^{\rm free}_d$, $H_0$

- **object:** running coupling; growth scale

  **code name:** [`hatBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79), [`monitor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L81), [`Perch.bill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L25)

  **proposed notation:** $\hat\beta_k$; $\mu_k$; $\mu_k^{a}$

- **object:** band; reading scale

  **code name:** `Panel.arc`, `Purse.band`; [`Station.gap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L49)

  **proposed notation:** $b$; $\ell(b,k)=a_k\mu_k^b$

- **object:** middle and width stages; allowed; fit

  **code name:** [`middleSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L31), [`widthSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L32), [`AllowedSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L42-L46), [`FitSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Tuning.lean#L15-L17)

  **proposed notation:** $m_1(b,k)$, $m_0(b,k)$

- **object:** position weight; coupling dilation

  **code name:** [`weightTag`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Matrices.lean#L89-L92), [`Frame.scaled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L58-L61), [`shrink`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Matrices.lean#L104)

  **proposed notation:** $W_{\rho,d}$; $D_{k,N,p,d}$; $s_{k,N,p}$

- **object:** normalized probe size

  **code name:** [`moneys`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Insiders.lean#L50)

  **proposed notation:** $M_{k,N,p,d}$

- **object:** stage package

  **code name:** [`Tapes.Panel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Prepaid.lean#L37-L47)

  **proposed notation:** $(b,\theta,e,\text{purses})$

- **object:** stage-$k$ cost record; poised

  **code name:** [`LegacyCostSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Lys.lean#L38-L45), [`PoisedSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Plume.lean#L23-L28)

  **proposed notation:** poised at stage $k$

- **object:** uniform-band property

  **code name:** [`FiresSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L29-L32)

  **proposed notation:** $\mathrm{Fire}_d(z)$

- **object:** leap; packages with moving band

  **code name:** [`LeapSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L56-L60), [`ArcSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Reach.lean#L21-L24)

  **proposed notation:** —

- **object:** budget; chessboard root

  **code name:** [`Ship.budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L28), [`rootTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226-L227)

  **proposed notation:** $\mathrm{bud}_n(k)=\mu_k^{-1/(16n)}$; $\rho_{\mathcal T}$

- **object:** recentred probe product

  **code name:** [`Read.cylinder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Finite.lean#L99), [`Read.cumulants`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Finite.lean#L226)

  **proposed notation:** $\Phi_s$

- **object:** mark exponents

  **code name:** [`generator`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SteamW.lean#L18)

  **proposed notation:** $c_d=2(w_d+1)$

- **object:** one-step cost package

  **code name:** [`Scrim`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Biscuit.lean#L29-L34)

  **proposed notation:** (S)

- **object:** vane; its station; checked

  **code name:** [`Vane`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L65-L69), [`wok`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Pint.lean#L25-L31), [`TimberSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L42-L47), [`SeqPair`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L21-L29)

  **proposed notation:** $V=(k,b,c,R)$; checked at level $j$

- **object:** dimension cap

  **code name:** [`DimAbove`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L108)

  **proposed notation:** $\dim\mathcal F^S_d\le\dim\mathcal F^{\rm free}_d$

- **object:** gallery property (VII.2)

  **code name:** [`Trace.Over.Gallery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L41-L44)

  **proposed notation:** —

- **object:** stage-$k$ coefficient size

  **code name:** [`quota`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Least.lean#L20-L21)

  **proposed notation:** $\mathrm{quota}_k^{N,p}(u)$

- **object:** supply; release; killing lower degrees

  **code name:** [`Supplies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L18-L21), [`Releases`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L23-L26), [`Kills`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L28-L29)

  **proposed notation:** $x$ supplied along $\varphi$; $L$ released at weight $w$


<a id="unit-limitations"></a>

## 7. What remains unexplained

- **Internal analytic packages.** VII.6.g–j retain the room, background-field, source-expansion, small-field and Hessian-control hypotheses from III.9–III.11. Their direct implications and the final root estimate are verified, but the numerical definitions and proofs of all constituent one-step estimates have not been expanded here. In particular, the small-field input explicitly bounds the combined nonlinear errors by $x^{-1/32}$; the eventual feasibility of that input remains part of III.11. The formula and guarded domain of VII.6.j are verified.

- **Downstream trace argument.** The checked two-point bound is retained when the vanes and their lift limits are passed to VII.2. Its subsequent analytic use in deriving the trace anomaly is outside this unit. No such conclusion is inferred from the weak convergence alone.

- **Construction inputs.** The passage from an enlarged paid waiting window and covariant coordinate maps to the uniform-band property is verified at the cited interfaces. The full construction that pays every numerical request belongs to III.2; it is not an additional conclusion of VII.6.1.


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

- [`cap_given`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L110)
- [`traySky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Karin.lean#L26)
- [`platterSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Karin.lean#L27)
- [`agendasSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L61-L67)
- [`await`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean)
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

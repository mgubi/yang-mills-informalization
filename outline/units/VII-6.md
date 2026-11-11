# VII.6. Scaling variants and fixed-field estimates

*Part VII — Identification as Yang–Mills.*

Adapts observable estimates to prescribed scale sequences and gives a separate low-degree field estimate.

**Status: checked.** Checked against the linked Lean and rewritten; final editing remains. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [← Previous: VII.5](VII-5.md) · [Next: VIII.1 →](VIII-1.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** VII, identification as Yang–Mills. **Lean:** [`YM/TraceExtension/Prom/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom) contains the "Sky" files, 133 files with "dynamic stops". The unit also contains [`Trace.first_grade`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Trace2/Transfer.lean#L31-L37) in `YM/Trace2/Transfer.lean` and [`FreeStress.dim_before`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L51-L54) in `YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean`. Finally it contains [`SharpGram.inletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L126-L129) and its helpers in [`YM/SharpGram/Clauses.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean). **Size:** 4,205 lines in 374 declarations:
- about 3,600 lines in the chain of [`pays_sky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31);
- about 560 further lines in `Prom/`;
- 43 lines in the chain of `inletFirst`.

The unit has two independent parts.

- **(A) Scaling sequences at prescribed radii.** The ultraviolet construction (III.11) compares the lattice theory with the free field at reading scales $\ell(b,k)=a_k\mu_k^{\,b}$. Here $k$ is an RG stage and $b$ a real band. Part A does four things:
  - It lets the band range over a unit interval and shows that every small radius is a reading scale.
  - It re-proves the stage estimates of III.11 with a band that depends on $k$, and with a stopping rule that allows one change of block factor.
  - It builds checked stations at the prescribed radii.
  - From these stations it produces a scaling of the limit theory that approaches the free Maxwell theory, along a subsequence of any prescribed null sequence of radii.
- **(B) Degrees below four.** In the limit theory every field of degree $d\le3$ is a multiple of the unit. Such a field is therefore represented, at every large stage $k$, by a lattice label whose stage-$k$ coefficients are at most $\hat\beta_k$.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

**Setting.**

*The family and its stages.*
- $G$ is a compact matrix group with simple Lie algebra $\mathfrak g$, and $C$ is a Wilson family with its construction record (II.2, III.13).
- Its RG stages $k$ have spacings $a_k\downarrow0$ and block factors $L_k=a_k/a_{k+1}\ge2$.
- The running inverse coupling is $\hat\beta_k=\bar\beta+c_G\log a_k^{-1}$. Put
$$\mu_k=\exp\big((\log\log\hat\beta_k)^2\big),$$
which grows faster than every power of $\log\hat\beta_k$ and slower than every power of $\hat\beta_k$ (III.11).
- For a real band $b$, the *reading scale* of stage $k$ is $\ell(b,k)=a_k\mu_k^{\,b}$. For fixed $b$ it tends to $0$.

*The limit theory and the free reference.*
- $F$ is an extraction order and $\Phi_F$ its filter of ordered cutoff tails on pairs $(N,p)$ (IV.1).
- $S$ is a limit table of $C$ along $F$ (ordered smeared limits and generic point limits), with a Euclidean hierarchy $H$.
- $\mathcal F^S_d=\mathrm{Label}_d/\mathrm{Null}_d(S)$ is the field space of degree $d$, $\pi_d:\mathrm{Label}_d\to\mathcal F^S_d$ is the projection, and $\mathbf 1_d$ is the unit.
- The reference is the free Maxwell table of VI.2: gauge-invariant Wick polynomials in a free $\mathfrak g$-valued field. Its field spaces are $\mathcal F^{\rm free}_d$, its unit is $\mathbf 1^{\rm free}_d$ and its hierarchy is $H_0$.
- Correlation kernels on $\mathrm{Conf}_n$ are written $\langle\phi_1(x_1)\cdots\phi_n(x_n)\rangle^S$ and $\langle\cdots\rangle^{\rm free}$.

*Scalings.* A *scaling* (VI.1) consists of
- radii $r_k>0$ strictly decreasing to $0$,
- constants $\xi_k>0$,
- linear isomorphisms $U_k(d):\mathcal F^{\rm free}_d\to\mathcal F^S_d$.

It is *approaching* (VI.2.7(a)) if the following holds for every $n$ and all $v_i\in\mathcal F^{\rm free}_{d_i}$. Put
$$K_k(x)=\langle U_kv_1(r_kx_1)\cdots U_kv_n(r_kx_n)\rangle^S-\langle v_1(x_1)\cdots v_n(x_n)\rangle^{\rm free}.$$
Then $K_k\to0$ weakly on compacts: for every compact $K\subset\mathrm{Conf}_n$ and all $M,\varepsilon>0$, eventually $|\int tK_k|\le\varepsilon$ for every smooth $t$ supported in $K$ with $\|t\|_\infty\le M$.

*Fixed data.*
- $B$ is a binding of the RG history to its price lists, $O$ a Haar budget and $J$ a chart ratio (III.11).
- (S) is the one-step cost package of III.11.
- $c_d=2(w_d+1)$ are the mark exponents of III.11, where $w_d$ is the polynomial degree of the degree-$d$ label frame plus $4$.
- Stage packages, poised stages, the uniform-band property $\mathrm{Fire}_d(z)$, vanes and checked vanes are defined in §4.

**Proposition VII.6.1 (approaching scalings along a subsequence of any null sequence).** Assume:
- (i) $G$ is simple and (S) holds for $C$;
- (ii) $(z_d)$ are reals with $z_d\ge c_i$ for all $i\le d$;
- (iii) $\mathrm{Fire}_d(z_d)$ holds for every $d$ (Definition VII.6.d);
- (iv) $\dim\mathcal F^S_d\le\dim\mathcal F^{\rm free}_d$ for every $d$;
- (v) $\mathcal L$ is an ultrafilter on $\mathbb N^2$ finer than $\Phi_F$.

Let $s_i>0$ with $s_i\to0$. Then there are a strictly increasing $f$ and a scaling with $r_k=s_{f(k)}$ and $\xi_k=1$ such that:
- (a) the scaling is approaching;
- (b) for every $d$ and all large $k$, $U_k(d)$ is real and covariant under signed coordinate permutations between $H_0$ and $H$, and $U_k(d)\mathbf 1^{\rm free}_d=\mathbf 1_d$;
- (c) there are vanes $V_k$ of depth $k$ with the following properties:
  - their stages tend to infinity;
  - $V_k$ is checked at level $k$;
  - its radius is $\ell(V_k)=r_k$;
  - for every $d$ and all large $k$, the lattice lifts of $V_k$ converge along $\mathcal L$ to some $Y_k$, and $U_k(d)=\pi_d\circ Y_{k,d}$.

*Status:* theorem, with (iii) and (iv) carried as hypotheses. Both are supplied inside the construction run, where VII.2 applies this result:
- (iii) is produced by `embalms` (III.2);
- (iv) is `cap_given` (VI.2), applied to the corrected rank widths of the seed (IV.1).

*Lean:* [`pays_sky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31). Conclusions (a)–(c) are the structure [`StarPath`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L19-L23).

**Proposition VII.6.2 (checked vanes at prescribed radii).** Assume (i)–(iii) of VII.6.1. Assume also that $S$ is a smooth limit table along $F$ (ordered and generic point limits) and that $H_0$ is given. Let $s_i>0$ with $s_i\to0$. Then there are
- a strictly increasing $p$ with $s\circ p$ strictly decreasing, and
- for each $d\in\mathbb N$, a vane $V_d$ of depth $d$ with stage $\ge d$, checked at level $d$, with $\ell(V_d)=s_{p(d)}$.

*Status:* theorem.
*Lean:* [`wakesSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L75-L87), with [`Vane`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L65-L69) and [`TimberSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L42-L47).

**Proposition VII.6.3 (stage-$k$ chessboard bound with a moving band).** Assume (i) of VII.6.1, let $d\in\mathbb N$, and let $z\ge c_i$ for $i\le d$. Fix the following data:
- $\Delta\in\mathbb N$, $e,u_0\in\mathbb R$, and stage packages $U_k$ of degree $\le d$ with Taylor order $\Delta$, exponent $e$ and bands $b_k\le u_0$;
- $n\ge2$ and $m+1\le n$;
- labels $g_i\in\mathrm{Label}_{d_i}$ with $d_i\le d$, for $0\le i\le m$;
- a compact $K\subset\mathrm{Conf}_{m+1}$.

Then the following holds for all large $k$. Take:
- a stage-$k$ cost record $L$ of $U_k$ with exponent $-3$, mark exponent $z$ and arity bound $n$;
- $N>k$, a period $p$, and a stage-$k$ RG representative $V$ compatible with $L$ (`ActumSky`);
- $x$ whose rounding to the stage-$k$ lattice, in units of $\ell(b_k,k)$, lies in $K$ and fits the stopping stage;
- stage-$k$ lifts $T_i$ and labels $f_i\in\mathrm{Label}_{d_i}$ such that $T_if_i$ is $g_i$ rescaled to $\ell(b_k,k)$.

Then for every nonempty set $s$ of modes,
$$\rho_{\mathcal T}(\Phi_s)\ \le\ \mathrm{bud}_n(k):=\mu_k^{-1/(16n)}.$$
Here $\Phi_s$ is the $s$-part of the product of the probes $f_i$ at the chosen lattice sites, recentred by the free cumulants of the $g_i$ at the rounded points. $\rho_{\mathcal T}$ is the chessboard root at coupling $\beta_{N,p}$ over the tiling by cells of the width stage $m_0(b_k,k)$.

*Status:* theorem. The threshold in $k$ depends on $(d,z,\Delta,e,u_0,g,K,n)$ and on the bands only through $u_0$. This uniformity is the difference with the fixed-band [`earnings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Tael.lean#L58-L90) of III.11.
*Lean:* [`earningsSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Tael.lean#L56-L91). The form for poised families is [`lava_vSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Reach.lean#L34-L50).

**Proposition VII.6.4 (fixed-field supply in degrees $\le3$).** Let $Y$ be a final record for $(C,F,S)$ (VIII.1) and $G$ simple. Let $\varphi$ be a filter on $\mathbb N^2$ finer than $\Phi_F$, let $d\le3$ and let $x\in\mathrm{Label}_d$. Then $\pi_dx$ is *supplied along $\varphi$*. That is, there is $p\in\mathbb N$ such that for all large $k$ there are $y\in\mathrm{Label}_d$ and labels $q_{N,p'}\in\mathrm{Label}_d$ with:
- $\pi_dy=\pi_dx$;
- $q\to y$ along $\varphi$;
- $\mathrm{quota}_k^{N,p'}(q_{N,p'})\le\hat\beta_k^{\,p}$ eventually along $\varphi$.

Here $\mathrm{quota}_k^{N,p'}(u)$ is the coefficient size of $u$ at cutoff $(N,p')$, written in stage-$k$ coordinates ([`quota`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Least.lean#L20-L21)). One can take $p=1$ and $q$ constant.

*Status:* theorem. No declaration of the development uses it. It is one of the headline theorems listed in `verification/headlines.txt`.
*Lean:* [`inletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L126-L129), [`Supplies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L18-L21).

**Proposition VII.6.5 (fields of degree below four).** Let $G$ be simple and $d<4$.
- (a) $\dim\mathcal F^{\rm free}_d=1$.
- (b) If $Y$ is a final record for $(C,F,S)$, then every $u\in\mathcal F^S_d$ is of the form $t\,\mathbf 1_d$ with $t\in\mathbb C$.

*Status:* theorem. Used by VII.6.4 and by [`vacuum_truncation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Trace2/Transfer.lean#L94-L111).
*Lean:* (a) [`dim_before`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L51-L54); (b) [`first_grade`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Trace2/Transfer.lean#L31-L37).

<a id="unit-inputs"></a>

## 2. What it uses

**From other units.**
- **III.11 (interacting rank).** This unit copies or invokes the following from III.11.
  - The fixed-band chain that the Sky files copy, with the same plan of proof:
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
- **III.2 (choice of constants).** Production of the uniform-band property by [`embalms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L33-L50), [`stagingSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Plume.lean#L30-L53) and `forwardSky`. Also the construction runs [`plentifulWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean#L26-L81), [`plentiful`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Bardo.lean#L24-L77) and [`merano`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Made/Bardo.lean#L25-L76). These runs:
  - choose $z_d=\sum_{i\le d}c_i$;
  - choose an ultrafilter $\mathcal L$ finer than $\Phi_F$;
  - invoke `embalms` and then VII.2's `gang`.
- **III.9, III.10, III.11.** The RG history from the cutoff to stage $k$, the background field, and the one-step bounds. They enter through the Sky copies of `y_ready` (Lemma VII.6.g).
- **IV.1.**
  - Extraction orders and limit tables.
  - The chessboard estimate (Lemma IV.1.b; reflection positivity of the Wilson action).
  - The corrected rank widths [`Cells.RankWidths`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UV_STRESS) that give hypothesis (iv).
- **VI.1, VI.2.** The scaling record [`Climb.Scaling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31). The free Maxwell table [`freeTable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L23-L24). The rest of the station machinery:
  - stations and admissibility [`Station.Admissible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L89-L97) (VI.2.8);
  - balanced estimates give stations: [`Granular`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L30-L34), [`supply_wheel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L121-L128) (VI.2.s);
  - [`Approaches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L52-L53) and [`Fades`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Weak.lean#L24-L27);
  - eventual injectivity [`MeterTest.injects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L88-L103);
  - the dimension cap [`DimAbove`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L108) and its proof [`cap_given`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L110-L115);
  - the fixed-radius analogue [`Stations.equivalences`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L132-L181) (VI.2.t);
  - the free labels of degree $<4$: [`just_one`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L29-L44), [`below`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L46-L49), [`span_four`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Low.lean#L133-L143).
- **VIII.1.** The final record [`Spec.Final`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73). Part B uses three of its fields:
  - the construction record (`room.cutoff`);
  - the hierarchy laws, giving $\mathbf 1_d\ne0$ (`room.kernel.laws`);
  - the comparator, a linear isomorphism $\mathcal F^S_d\cong\mathcal F^{\rm free}_d$ for each $d$ (`phase.transport.comparator`).
- **VII.2 (consumer).** [`gang`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56) proves the last clause of [`Gallery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L41-L44) from VII.6.1. That clause says: for every null sequence $s$ there are a subsequence and a scaling $J$ with $J.r=s\circ f$ that carries a trace witness `Scribe`.

**Standard mathematics.**
- Reflection positivity of the Wilson action (Osterwalder–Seiler, Ann. Phys. 110 (1978)) and chessboard estimates (Fröhlich–Israel–Lieb–Simon, CMP 62 (1978)).
- Bałaban's block-spin renormalization group with background fields (CMP, 1983–1989). It is used only through the stage estimates of III.9–III.11.
- The intermediate value theorem and recursive (diagonal) choice of subsequences.
- Ultrafilter limits in finite-dimensional spaces (bounded sequences converge along any ultrafilter).
- For simple $\mathfrak g$: there are no nonzero invariant vectors, and invariant symmetric bilinear forms are multiples of the Killing form. Both are used only through VI.2.

**Imported constants and assumptions.**
- Hypotheses carried by VII.6.1: (S), the uniform-band property, the dimension cap and the ultrafilter. Their discharge is described above.
- The budget $\mathrm{bud}_n(k)=\exp(-\log\mu_k/(16n))$. The cost-record exponent $-3$.
- The mark exponents $c_d=2(w_d+1)$ ([`generator`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SteamW.lean#L18), [`winter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Tender.lean#L11)).
- Bands at least $d+6$, and the inequalities `Checks` between three bands.
- Arity bound $d+2$ for degree $d$ ([`trays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L25)).
- In the stopping rule: the margin $\mu_k^2$ and the depth $\lceil(\log\hat\beta_k)^2\rceil^{10}$.
- In the checked condition: tolerance $1/(j+1)$ with window radius $j+1$, and window radius $100$ for the two-point bound.
- The error $\hat\beta_i^{-1/32}$ in Lemma VII.6.j.

None of these is new to this unit.

<a id="unit-strategy"></a>

## 3. Strategy

**Why a new construction is needed.** For fixed $b$, the reading scales $\ell(b,k)$, $k\in\mathbb N$, form a discrete sequence; consecutive ratios are at least about $L_k$. The fixed-band chain of III.11 works only at levels where the block factor is constant across the RG window. VI.2 (`Stations.equivalences`) turns this into an approaching scaling, but only along radii of its own choosing. VII.2 instead needs, for every null sequence $s_i$, a scaling whose radii are exactly a subsequence of $s_i$. This is the gallery property, which feeds the trace anomaly.

**Letting the band vary.** The fix is to let the band run over $[b_0,b_0+1]$.
- If $L_k\le\mu_{k+1}$ eventually, then $\ell(b_0,k)=a_{k+1}L_k\mu_k^{b_0}\le a_{k+1}\mu_{k+1}^{\,b_0+1}=\ell(b_0+1,k+1)$.
- So the intervals $[\ell(b_0,k),\ell(b_0+1,k)]$ cover $(0,\ell(b_0,k_0)]$.
- Since $c\mapsto\ell(b_0+c,k)$ is continuous, every small $s$ equals $\ell(b_0+c,k)$ for some stage $k$ and some $c\in[0,1]$.

This trick has two analytic costs.
- The stage estimates must hold for all bands in a unit interval, beyond a single stage threshold. This is the uniform-band property $\mathrm{Fire}_d$, produced in III.2.
- The stage $k$ is now imposed by the target radius. It can no longer be chosen inside a plateau of constant block factor. The Sky files therefore define the stopping stages directly from the spacings, allowing one change of block factor in the window ("dynamic stops"). They then re-prove the III.11 chain with this rule and with a band that may depend on $k$.

The scales at stage $k$ are ordered as follows (probable reading of the stopping rule and of the fit condition):
- the lattice spacing $a_k$;
- the reading scale $\ell=a_k\mu_k^b$;
- the middle-stage spacing $a_{m_1}\ge\mu_k^2\ell$; the configuration sits inside $1/8$ of one middle cell;
- the width-stage spacing $a_{m_0}$, coarser by $\lceil(\log\hat\beta_k)^2\rceil^{10}$; the chessboard tiling uses cells of this stage.

**From stage estimates to a scaling.** Asymptotic freedom enters through the stage estimate VII.6.3. It is the Sky copy of III.11's root bound: probe products at the reading scale, recentred by free cumulants, have chessboard roots at most $\mu_k^{-1/(16n)}$. The chain then runs as follows.
1. By the chessboard estimate and a moment–cumulant expansion, lattice $n$-point functions at stage-$k$ points are within $O(\mu_k^{-1/(16n)})$ of the free ones.
2. Two auxiliary bands, tied to the main one by `Checks`, give crude and finite-difference bounds. These turn the pointwise comparison into the balanced estimates of VI.2.s.
3. VI.2 converts balanced estimates into admissible stations: weak comparison with the free table at radius $\ell$, with arbitrarily small tolerance.
4. A diagonal choice gives, for each $d$, a station of depth $d$, tolerance $1/(d+1)$, and radius exactly $s_{p(d)}$.
5. The lattice lifts are bounded in a finite-dimensional space, so they converge along one fixed ultrafilter $\mathcal L$. The limits give maps $U_k=\pi\circ Y_k$, and the weak estimates pass to the limit table. This is `Approaches`.
6. As in VI.2, finitely many free test functionals separate $\mathcal F^{\rm free}_d$. Hence $U_k(d)$ is eventually injective, and the dimension cap makes it an isomorphism.

**Part B.** Part B does not use the RG.
- For simple $\mathfrak g$ the only gauge-invariant local polynomial of dimension $<4$ is the constant. Hence $\dim\mathcal F^{\rm free}_d=1$ for $d<4$.
- The comparator of the final record transports this to $\mathcal F^S_d$.
- The unit label has stage-$k$ coefficient size $a_k^d\le1$, so every field of degree $\le3$ is supplied with exponent $1$.

<a id="unit-steps"></a>

## 4. Steps

### 4.1 Reading scales and dynamic stops

**Lemma VII.6.a (stopping stages; fit).** Fix a band $b$ and a stage $k$.
- The *middle stage* $m_1(b,k)$ is the largest $j\le k$ with $a_j\ge\mu_k^{2}\,\ell(b,k)$.
- The *width stage* $m_0(b,k)$ is the largest $j\le m_1$ with $a_j\ge\lceil(\log\hat\beta_k)^2\rceil^{10}a_{m_1}$.

The pair is *allowed* if four conditions hold:
- both inequalities are attained;
- the block factors of the current and of the previous stage index are both $\ge2$;
- the stage index takes only the values $J_k-1$ and $J_k$ on $[m_0,k]$;
- the derived properties hold: blocks of the window are $\ge$ the smaller of these two factors, and $a_m/a_j$ equals the product of the block factors between $m$ and $j$.

A configuration $x$ is rounded to the stage-$k$ lattice in units of $\ell(b,k)$. It *fits* if the physical image of the rounded configuration is generic and has all coordinates at most $a_{m_1}/8$. For fixed generic $x$, fitting holds for all large allowed $k$, and every pair of lattice points within radius $R$ fits eventually ([`open_readSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Suds.lean#L34-L48)).

III.11 instead uses $m_1=k-\mathrm{height}$, $m_0=m_1-\mathrm{surplus}$, and a plateau on which the block factor is constant. On such a plateau the two definitions agree (probable; immediate from $a_j/a_k=L^{k-j}$).
*Lean:* [`gainSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L15-L16), [`middleSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L31), [`widthSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L32), [`AllowedSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L42-L46), [`FitSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Tuning.lean#L15-L17); fixed versions [`middle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L44), [`Allowed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L93-L96). *(definitions read; `open_readSky` proof read)*

**Lemma VII.6.b (consecutive reading intervals overlap).** Let $G$ be simple, $b\ge0$, and assume $L_k\le\mu_{k+1}$ for all large $k$.
- Then eventually $\ell(b,k)\le\ell(b+1,k+1)$.
- Hence for every $J$ there is $r>0$ such that every $s\in(0,r]$ equals $\ell(b+c,k)$ for some $k\ge J$ and $c\in[0,1]$.

*Proof sketch.*
1. Since $\hat\beta_k$ increases and eventually exceeds $e$, $\mu_k\le\mu_{k+1}$ eventually. With $a_k=a_{k+1}L_k$ this gives the first claim.
2. Take $r=\ell(b,i)$ for a large $i\ge J$. Given $s\le r$, let $k>i$ be the least stage with $\ell(b,k)\le s$; it exists because $\ell(b,\cdot)\to0$.
3. Then $s\le\ell(b,k-1)\le\ell(b+1,k)$.
4. The function $c\mapsto a_k\mu_k^{b+c}$ is continuous, so the intermediate value theorem gives $c$.

*Lean:* [`tide_mode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L14-L18), [`near_skies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L19-L26), [`gap_curve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L27-L31), [`gap_account`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L32-L43).

**Lemma VII.6.c (a null sequence is realized at increasing stages).** Under the hypotheses of VII.6.b, let $s_j>0$ with $s_j\to0$, and let $J\in\mathbb N$. Then there are strictly increasing $K,P:\mathbb N\to\mathbb N$ and $c_j\in[0,1]$ with $P_j\ge J$ and $s_{K_j}=\ell(b+c_j,P_j)$.
*Proof sketch.* Recursion: apply VII.6.b with threshold $\max(J,P_{j-1})+1$, and pick $K_j>K_{j-1}$ with $s_{K_j}\le r$.
*Lean:* [`gap_orders`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L45-L53).

### 4.2 The uniform-band property

**Definition VII.6.d (stage packages, poised stages, $\mathrm{Fire}_d$).**

*Stage package.* A stage package of degree $\le D$ (III.11; Lean "panel") consists of:
- a band $b\ge D+6$;
- a Taylor order $\theta\ge D$;
- a real exponent $e$;
- for each stage index, a purse of numerical cost parameters whose band is $b$ and whose credit is at least $bD+D+2$.

The roles of the purse fields are the ones fixed in III.2 and III.11 (probable).

*Poised.* A finite family of packages $P$ is *poised at stage $k$* (arity bound $n$, mark exponent $z$) with lift tables $t_{N,p}(d)\in\mathrm{End}(\mathrm{Label}_d)$, $d\le D$, if:
- $\mathrm{ref}(d)\le k$ for all $d\le D$;
- the block factors of the stage indices $J_k$ and $J_k-1$ are at most $\mu_k$;
- for every $N>k$ and $p$, the tables are charted and invoiced at stage $k$;
- each package has a stage-$k$ cost record with exponent $-3$, and this record includes that the stopping stages of Lemma VII.6.a are allowed;
- for every $N>k$ and $p$, there is a compatible stage-$k$ RG representative whose stage-$k$-to-cutoff lifts are the tables $t_{N,p}$.

*Uniform-band property.* $\mathrm{Fire}_d(z)$ holds if there are three one-parameter families of packages $P_s^{(i)}$ ($i=0,1,2$, $s\in[0,1]$), base bands $b_0,b_1,b_2$ and $\kappa<0$, such that:
- $\mathrm{Checks}(b_0,b_1,b_2,\kappa;d+2,d)$ holds, that is, $b_1+6<b_0$, $b_2+5<b_0+\kappa$, $(b_0-b_1)d(d+2)+\kappa<0$, and $(b_0-b_2)d(d+2)-b_0-\kappa<0$;
- the bands are $b_i+s$, and the Taylor order and exponent do not depend on $s$;
- there is one stage $k_0$ such that for every $k\ge k_0$ and every $s\in[0,1]$ the triple $P_s$ is poised at stage $k$ (arity $d+2$, mark exponent $z$) for some tables.

*Production.* `embalms` (III.2) proves $\mathrm{Fire}_d(z_d)$ for every $d$, for every family paid on its waiting window that satisfies `ParadeX`:
- `forwardSky` supplies packages with bands $a_{d,i}+1$;
- `curb` lowers the band to $a_{d,i}+\min(1,\max(0,s))$;
- `stagingSky` produces the poised data at one threshold for all $s$.

*Lean:* [`Tapes.Panel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Prepaid.lean#L37-L47), [`PoisedSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Plume.lean#L23-L28), [`LegacyCostSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Lys.lean#L38-L45), [`FiresSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L29-L32), [`Checks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Medal.lean#L23-L28), [`raises`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L14-L22), [`embalms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L33-L50). *(definitions read; `embalms` and `stagingSky` proofs read in outline, `forwardSky` statement only)*

**Lemma VII.6.e (leaps).** Let $G$ be simple and assume $\mathrm{Fire}_d(z)$ with base bands $b_0,b_1,b_2$. Then $b_0>5$, and the following holds for every $s_i>0$ with $s_i\to0$. There are:
- a strictly increasing $f$;
- strictly increasing stages $k_i\ge k_0$;
- offsets $e_k\in[0,1]$;
- tables $Y_i$;

such that the triple $P_{e_{k_i}}$ is poised at stage $k_i$ with $Y_i$, and $s_{f(i)}=\ell(b_0+e_{k_i},k_i)$.

*Proof sketch.*
1. $b_0\ge d+6$.
2. The poised condition gives $L\le\mu_k$ for the current and the previous block factor, which is the hypothesis of VII.6.b.
3. Apply VII.6.c with base $b_0$ and threshold $k_0$. Put $e_{P_j}=c_j$ and $e=0$ elsewhere.
4. $\mathrm{Fire}_d$ at $s=c_j$ gives poised data at stage $P_j\ge k_0$. Here the threshold must not depend on $s$.

*Lean:* [`fliesSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L68-L84), [`LeapSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L56-L60), [`ArcSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Reach.lean#L21-L24).

### 4.3 Stage estimates with a moving band

**Lemma VII.6.f (= Proposition VII.6.3).**
*Proof sketch.* As in III.11's `earnings`, with the following changes.
1. The "walls" of the configuration are produced uniformly for bands $\le u_0$ (`mural_castSky`).
2. The stamp duties of the $g_i$ are priced independently of the band (`procureSky`).
3. The mark exponent $z\ge c_{d_i}$ converts money bounds on the $f_i$ into stake bounds ([`tremor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SteamW.lean#L19-L41)).
4. Per-site affordability holds from some stage $u$ on (`Ship.banking`). It is needed at the width stage $m_0$.
5. $u\le m_0$ for large $k$. If $m_0<u$, the bracket condition of VII.6.a would give $J_k-1\le J_{m_0}\le J_u$, contradicting $J_k>J_u+1$. In the fixed version the plateau is used here, with $J_k>J_u$.
6. Lemma VII.6.g then gives the bound.

*Lean:* [`earningsSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Tael.lean#L56-L91), [`ActumSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Tael.lean#L40-L42). *(proof read in outline; the reduction lemmas statement only)*

**Lemma VII.6.g (root bound at one stage, dynamic stops).** Fix a stage-$k$ cost record $L$ (purse of band $b\ge0$, arity bound $u\ge2$, $m+1\le u$). Fix $N\ge k$, an RG history $P$ from the cutoff to the width stage $m_0(b,k)$ satisfying the record's bounds, and per-site affordability at $m_0$. Assume work items, the seal-to-model implication at stage $k$, the walls, a fitted configuration $x$, and lifts $T_i$ with $T_if_i=g_i$ rescaled. Assume finally money and coin bounds on the $f_i$ and the stake implication. Then $\rho_{\mathcal T}(\Phi_s)\le\mathrm{bud}_u(k)$ for every nonempty $s$.
*Proof sketch.* The proof composes five pieces.
1. The background field along the history (`embroideredSky`).
2. The marker estimate along the course (`billing_XSky`).
3. The stage-$k$ optics (`y_supplySky`).
4. The survivor condition of Lemma VII.6.h.
5. The final root estimate (`tenderlySky`).

The last piece follows the pattern of [`Ship.rebate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L95-L128) (III.11, Lemma 4.7): $\rho_{\mathcal T}(\Phi_s)\le e^{I}/A^{|s|}\le e^{-I}$ with $I=\log\mu_k/(16u)$ and allowance $A=e^{2I}$ (probable for the Sky version).
*Lean:* [`y_readySky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Lys.lean#L51-L71), [`yardSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Allowance.lean#L26-L28), [`invoiceSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Allowance.lean#L40-L41), [`Ship.budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L28). *(proof read as a composition; components not opened)*

**Lemma VII.6.h (survivors).** The following hypotheses:
- the launch and survivor data of the record;
- the room condition for $u$ points at depth $k-m_1(b,k)$;
- the Plessey and fit conditions;
- spacing of the probe seats on the stage-$k$ lattice;
- money and coin bounds on the $f_i$;
- the stake condition at weight $g_k^{\,z}$, where $g_k$ is the stage coupling (tentative);

imply the survivor condition `ChastSky` for the probe configuration.
*Lean:* [`attireSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Delft.lean#L30-L38). *(proof read: a composition of `legionSky`, `staunchSky` and `admitsXSky`, which were not opened)*

**Lemma VII.6.i (word-by-word assembly).**
- *Setting.* Let $S$ be a finite list of weighted words in the mode polynomials $P_u$. Each polynomial has total degree $\le D$ and coin size $\le r$, and its variables lie in the allowed spots.
- *Integrability.* The word integrands on each chart are integrable.
- *Estimate.* The assembled functional differs from the reference value, which reads the polynomial $\sum_tc_t\prod P$ through the stage-$k$ chart, by at most the sum of the per-word budgets $\mathrm{grantS}(S,B,\varepsilon,r,D)$.

*Proof sketch.* Induction on the list. The step uses linearity of the assembly in the integrand and of the reference reading, the triangle inequality, and the one-word estimate `wordAnswerSky`.
*Lean:* [`sweepSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Karin.lean#L34-L57).

**Lemma VII.6.j (one block step across a change of block factor).** At one block step $i+1\to i$, assume:
- a steady coupling window $(\beta,\beta')$ for the block factor $L_i$, using the worse of the price parameters of the two stage indices $J_{i+1}$ and $J_i$ (larger $\Omega$, smaller $\alpha$);
- an enlightened and strongly scoped patch;
- a pose $(o,W,V,v)$ with the guard, separation and size conditions around a coarse site $r$.

Then two conclusions hold.
- (1) The gauged background $U$ is small (healthy) on the patch of radius $L=w\cdot\mathrm{walls}(\cdot)$ around $r$.
- (2) Let $t$ be a gauge transformation and $f$ a fine configuration with $\mathrm{gauge}(t,f)=U$, and let $j$ be a link within distance $L-2$ of $r$. Then the rigid coloured link variable at $j$ is within $\hat\beta_i^{-1/32}$ of the real part of the stationary mean plus the linear fluctuation correction.

This is the Sky form of the small-field step of the background-field method (probable).
*Lean:* [`laminateSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Port/Rail.lean#L95-L127), used by [`screensSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Port/Emulation.lean#L33-L71). *(statement and docstring read; the proof is a composition of `ships`, `slide_link`, `checkingMaskSky` and `throughout`, not opened)*

**Lemma VII.6.k (poised families supply the stage bound).** Let $P_k$ be triples of packages with bands $a_i+e_k$, $e_k\in[0,1]$, and with exponent and Taylor order independent of $k$. Let $K\subset\mathrm{Conf}_{m+1}$ be compact, $2\le n$ and $m+1\le n$. Then for all large $k$ the bound of VII.6.3 holds for every table $T$ with which $P_k$ is poised. The lifted probes are $v_i=\mathrm{ladd}(T_{N,p})(y_i)$.
*Proof sketch.* Apply VII.6.3 with $u_0=a_x+1$. The poised record supplies the cost record, the RG representative and the stamp duties. The lifts solve the rescaling equation (`poured`).
*Lean:* [`lava_vSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Reach.lean#L34-L50).

**Lemma VII.6.l (pointwise comparison at stage-$k$ points).** Fix a package index $x$, a constant $\chi$, $R>0$ and a free word $w$ of arity $m\le n$. Then there is $\kappa$ such that the following holds for all large $k$ and all poised tables $Y$. At every generic stage-$k$ lattice configuration whose rescaled position lies in the window $(2R,m)$, the lattice $m$-point function of the lifted probes differs from the free $m$-point function by at most $\kappa\,\mathrm{bud}_n(k)$, in the upper limit along $F$.
*Proof sketch.*
1. VII.6.k bounds the chessboard root of every nonempty recentred part.
2. [`Read.full_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Finite.lean#L242-L250) (III.11) turns these bounds into the difference of moments. It uses the chessboard estimate and the moment–cumulant expansion against the free profile, with constant equal to the coefficient sum of the free profile.
3. That coefficient sum is bounded on the compact window by continuity.

*Lean:* [`sightSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Suds.lean#L51-L95). *(proof read; `full_cost` statement only)*

**Lemma VII.6.m (balanced estimates).** Let $P_k$ be as in VII.6.k, with base bands satisfying $\mathrm{Checks}(q_x,q_y,q_w,c;n,D)$. Let $f\to\infty$, and let $Y_i$ be tables with which $P_{f(i)}$ is poised at stage $f(i)$. Then the vane stations $i\mapsto\mathrm{wok}(f(i),\mathrm{band}_x,c,Y_i)$ satisfy the balanced estimates (`Granular`) of VI.2.s for arity $\le n$ and every window $R$.
*Proof sketch.*
1. *Pointwise errors.* The comparison errors are $e_k=\kappa\,\mathrm{bud}_n(k)\to0$, by VII.6.l.
2. *Crude and finite-difference bounds.* The auxiliary bands give a crude bound $A_k=O(\mu_k^{(q_x-q_y)D})$ and a finite-difference bound $B_k=O(\mu_k^{(q_x-q_w)D})$ ([`thirdSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Latch.lean#L52-L77)). Their stopping stages supply the coarse stage required by the crude estimate.
3. *Strip and spacing.* The strip width is $\sigma_k=\mu_k^{c}$ and the normalized spacing is $\mu_k^{-\mathrm{band}}\le\mu_k^{-q_x}$.
4. *Balance.* `Checks` gives $A_k^n\sigma_k\to0$ (strip contribution) and $B_k^n\mu_k^{-q_x}/\sigma_k\to0$ (Riemann-sum contribution). The radii $\ell\to0$ by `gap_rate`.
5. *Lift bounds and symmetries* come from [`w_rightSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Pint.lean#L37-L57).

VI.2's [`supply_wheel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L121-L128) then makes these stations eventually admissible with any tolerance.
*Lean:* [`aspectSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Medal.lean#L39-L90), [`podiumSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Largo.lean#L24-L34). *(proof read; `thirdSky` statement only; the assignment of $A_k$ and $B_k$ to strip and complement is probable)*

### 4.4 Checked vanes

**Definition VII.6.n (vanes; the checked condition).**

*Vanes.* A *vane of depth $D$* is $V=(k,b,c,R)$:
- a stage $k$;
- a band $b$;
- a strip exponent $c$;
- lift tables $R_{N,p}(d)\in\mathrm{End}(\mathrm{Label}_d)$ for $d\le D$.

Its station has radius $\ell(V)=\ell(b,k)$, strip $\sigma=\mu_k^c$, and lifts $A_{N,p,d}=\mathrm{ladd}_{N,p,d}\circ\iota_d$. Here $\iota_d:\mathcal F^{\rm free}_d\to\mathrm{Label}_d$ is the canonical equivariant section (`ladder`). The map $\mathrm{ladd}$ weights the label by the scale factor $\ell/a_k=\mu_k^b$, rescales it from stage $k$ to the cutoff, and inverts $R_{N,p}(d)$ (probable).

*Checked condition.* $V$ is *checked at level $j$* if:
1. $5<b\le\log\log\hat\beta_k$;
2. $\mathrm{ref}(u)\le k$ for all $u\le D$;
3. for all $N>k$ and $p$, the tables $R_{N,p}$ are charted and invoiced at stage $k$;
4. two-point bound at tolerance $1/(j+1)$:
   - every generic pair of stage-$k$ points within radius $100$ (in units of $\ell$) fits;
   - for every $w\le D$, every pair of basis vectors of $\mathcal F^{\rm free}_w$, every $N>k$, and every fitted pair in the window of radius $100$, the chessboard roots of all nonempty recentred parts of the lifted pair are $\le1/(j+1)$;
5. the station of $V$ is admissible (VI.2.8) for $(F,H_0)$ with arity bound $j+1$, window radius $j+1$ and tolerance $1/(j+1)$.

*Lean:* [`Vane`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L65-L69), [`Vane.wheel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L71), [`wok`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Pint.lean#L25-L31), [`ladd`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Ladle.lean#L17-L19), [`ladder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/CORRECTED_LIFT_COEFFICIENTS/Basis.lean#L115-L117), [`SeqPair`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L21-L29), [`TimberSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L42-L47), [`Vane.checked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L72). *(definitions read)*

**Lemma VII.6.o (one checked vane below any radius).** Assume (i), (ii) up to degree $d$, $\mathrm{Fire}_d(z)$, and the limit-table hypotheses of VII.6.2. Let $l\le d+2$, let $s_i>0$ with $s_i\to0$, and let $Y\in\mathbb N$ and $\theta>0$. Then there are:
- an index $i\ge Y$ with $s_i<\theta$;
- a stage $k\ge Y$;
- $b$, $c$ and $R$;

such that $s_i=\ell(b,k)$ and the vane $(k,b,c,R)$ of depth $d$ is checked at level $l$.
*Proof sketch.*
1. VII.6.e gives a leap $(f,k_i,e,Y_i)$ with bands $\le b_0+1$.
2. The private lemma [`await`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean) proves condition 4 of VII.6.n eventually. It combines VII.6.k with $n=d+2$ points, `open_readSky`, and $\mathrm{bud}_{d+2}(k)\to0$.
3. VII.6.m and `supply_wheel` give condition 5 eventually, with arity $d+2$, window $l+1$ and tolerance $1/(l+1)$. Arity $d+2$ covers arity $l+1$, since $l\le d+2$.
4. Choose one index $i$ large enough that all of the following hold at once: $f(i),k_i\ge Y$, $\log\log\hat\beta_{k_i}\ge b_0+1$, $k_i\ge\mathrm{ref}(u)$ for $u\le d$, and $s_{f(i)}<\theta$.

*Lean:* [`boatsSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L49-L62). *(proof read, with `await`; `podiumSky` and `supply_wheel` as in VII.6.m)*

**Lemma VII.6.p (= Proposition VII.6.2).**
*Proof sketch.*
1. For each $d$, $N$ and $y>0$, VII.6.o with $l=d$, $Y=\max(d,N+1)$ and $\theta=y$ gives $k>N$ with $s_k<y$, and a vane of depth $d$, stage $\ge d$, checked at level $d$, with radius $s_k$.
2. Choose recursively $p(d+1)>p(d)$ with $s_{p(d+1)}<s_{p(d)}$.
3. The stages are $\ge d$, so they tend to infinity.

*Lean:* [`wakesSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L75-L87).

### 4.5 Limits along the ultrafilter

**Lemma VII.6.q (panels along an ultrafilter).** Let a station of depth $D$ be admissible for $(n_{\max},R,\varepsilon)$, let $\mathcal L$ be an ultrafilter finer than $\Phi_F$, and assume that its lifts send $\mathbf 1^{\rm free}_d$ to the scalar label eventually along $\Phi_F$. Then the lifts converge along $\mathcal L$ to some $Y\in\prod_{d\le D}\mathrm{Hom}(\mathcal F^{\rm free}_d,\mathrm{Label}_d)$. Moreover $U_d=\pi_d\circ Y_d$ has the following properties:
- it is real, covariant under signed coordinate permutations, and unit-preserving for $d\le D$;
- it satisfies the weak estimate of VI.2.8(a) at radius $r$, with $\varepsilon M\prod\|v_i\|$.

*Proof sketch.*
1. The lifts are eventually bounded, so a filter $\mathfrak b$ finer than $\mathcal L$ along which they converge exists ([`finite_extract`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Vary.lean#L74-L80)).
2. Since $\mathcal L$ is an ultrafilter, $\mathfrak b=\mathcal L$.
3. The remaining claims are VI.2's [`harvested`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L132-L180), with all degrees unit-preserving.

*Lean:* [`harvestedSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Pepper.lean#L11-L60).

**Lemma VII.6.r (the vanes give approaching panels).** Let $r_k$ be a strictly decreasing null sequence. Let $V_k$ be vanes of depth $k$, checked at level $k$, with $\ell(V_k)=r_k$, and let $\mathcal L$ be finer than $\Phi_F$. Then there are panels $U_k$ such that:
- $(r_k,U_k)$ is approaching;
- $U_k(d)$ is real, signed-covariant and unit-preserving for $d\le k$;
- $U_k=\pi\circ Y_k$, where $Y_k$ is the $\mathcal L$-limit of the lifts of $V_k$.

*Proof sketch.*
1. Conditions 2–3 of VII.6.n give unit preservation of the lifts (`pure_start`). VII.6.q then applies to each $V_k$.
2. Fix $n$, $v$, a compact $K\subset\mathrm{Conf}_n$, and $M,\varepsilon$. For $k\ge n$, $k\ge\max d_i$, $K\subset$ window$(k+1,n)$ and $\prod\|v_i\|M/(k+1)\le\varepsilon$, the estimate at tolerance $1/(k+1)$ bounds $|\int tK_k|$ by $\varepsilon$.

*Lean:* [`breadSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Mast.lean#L13-L31).

**Lemma VII.6.s (isomorphisms).** Assume in addition the dimension cap (iv). Then there is a scaling with radii $r_k$ and $\xi_k=1$ such that:
- $U_k(d)$ coincides with the panel of VII.6.r for all large $k$ (for each $d$);
- (a)–(c) of VII.6.1 hold.

*Proof sketch.*
1. By `MeterTest.injects`, the panels are eventually injective in each degree. Finitely many free meter tests separate $\mathcal F^{\rm free}_d$, their rescaled versions converge by `Approaches`, and injectivity is an open condition.
2. Injectivity and $\dim\mathcal F^S_d\le\dim\mathcal F^{\rm free}_d$ give bijectivity.
3. Where the panel is not yet bijective, an arbitrary isomorphism is substituted. This does not affect any eventual property.

*Lean:* [`dockedSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Mast.lean#L32-L58). *(proof read; `injects` as in VI.2)*

**Lemma VII.6.t (= Proposition VII.6.1).** VII.6.p gives $p$ and $V$. The radii $s\circ p$ form a strictly decreasing null sequence. VII.6.s then gives the scaling, with $f=p$.
*Lean:* [`pays_sky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31).

*Consumer.* [`gang`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56) (VII.2) applies VII.6.1 with:
- the seed's ordered limits, hierarchy and point limits;
- the free hierarchy supplied by `Litpay`;
- hypothesis (iv) from `cap_given`.

It then obtains `Gondola` data (`gravity`) and the trace witness (`Store_l`). The run [`merano`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Made/Bardo.lean#L25-L76), and likewise `plentiful` and `plentifulWithPrediction`, supplies the rest:
- $z_d=\sum_{i\le d}c_i$;
- $\mathrm{Fire}_d(z_d)$ from `embalms`;
- $\mathcal L$ from the existence of an ultrafilter finer than $\Phi_F$.

### 4.6 Degrees below four

**Lemma VII.6.u (= Proposition VII.6.5).**
*Proof sketch.*
- (a) VI.2 shows that every free label of degree $d<4$ is $c\cdot1$ (`just_one`). The label raised to degree $4$ is $c\cdot1+Q$, where $Q$ lies in the span of the quadratic invariants and is homogeneous of weight $4$ (`span_four`, which uses simplicity). A label of degree $<4$ has no weight-$4$ part, so $Q=0$. Since labels map onto $\mathcal F^{\rm free}_d$ and the unit is nonzero, $\dim\mathcal F^{\rm free}_d=1$. For comparison, $\dim\mathcal F^{\rm free}_4=22$ ([`four_size`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L112-L114)).
- (b) The comparator of the final record is an isomorphism $\mathcal F^S_d\cong\mathcal F^{\rm free}_d$, so $\dim\mathcal F^S_d=1$. Since $\mathbf 1_d\ne0$, $\mathcal F^S_d=\mathbb C\mathbf 1_d$.

*Lean:* [`dim_before`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L51-L54), [`first_grade`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Trace2/Transfer.lean#L31-L37). *(proof read; `just_one` read, `span_four` statement only)*

**Lemma VII.6.v (the unit is supplied).** Let $\varphi$ be finer than $\Phi_F$, $G$ simple and $t\in\mathbb C$. Then $t\mathbf 1_d$ is supplied along $\varphi$ with $p=1$.
*Proof sketch.* Take the constant family $q\equiv y=t\cdot\mathrm{refUnit}_d$, for which $\pi_dy=t\mathbf 1_d$. For $k\ge\mathrm{ref}(d)$ and $N\ge k$, the quota is homogeneous and the unit has stage-$k$ coordinate $a_k^d e_0$; this uses the calibration of the family. Hence the quota is $|t|\,a_k^d$. Along $\varphi$ the cutoff eventually exceeds $k$, and for large $k$ both $a_k\le1$ and $\hat\beta_k\ge|t|$ hold.
*Lean:* [`supplyUnit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L54-L61), [`quota_smul`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L33-L37), [`quota_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L38-L48).

**Lemma VII.6.w (= Proposition VII.6.4).** By VII.6.u(b), $\pi_dx=t\mathbf 1_d$. Then VII.6.v applies, with the construction record taken from the final record.
*Lean:* [`inletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L126-L129).

*Companion statements (VII.4).* The same file contains the dual "release" bounds:
- [`coreRead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L65-L85);
- [`physicalRelease`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L87-L117), which gives $|L(\pi_dx)|\le\hat\beta_k^{\,p}a_k^{-(d-w)}z$ whenever the quota is $\le z$, for $w\le3$ and $L(\mathbf 1_d)=0$ when $w>0$;
- [`outletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L120-L124), where $L$ vanishes on the images of $\mathcal F^S_e$, $e<w$, under the inclusions of the derivative plan.

The unit table files all three in VII.4. `outletFirst` is, like `inletFirst`, a headline theorem.

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

*Routine but long.* About 120 Sky files are copies of III.11 files ("Variant of … for dynamic stops"). They differ from the originals in four places:
- the stopping stages (VII.6.a: defined from the spacings, with one change of block factor allowed instead of a plateau);
- the poised condition (two block factors bounded by $\mu_k$);
- packages indexed by $k$ with bands in a unit interval (`ArcSky`);
- the one-step estimate VII.6.j (worst of two neighbouring price parameters).

No new analytic estimate is visible in what was read. The new structural content is in two places:
- the covering lemma VII.6.b–c, which needs $L_k\le\mu_{k+1}$ and the threshold of $\mathrm{Fire}_d$ to be uniform in the band;
- the assembly VII.6.o–t.

*Points to note.*
- The radii of VII.6.1 equal the prescribed ones exactly, not approximately; `Gallery` uses $J.r=s\circ f$.
- The ultrafilter is used in an essential way. All $Y_k$ are limits along one $\mathcal L$, which is what clause (c) records. With a mere filter one would need a $k$-dependent extraction.
- The scaling of VII.6.1 is not claimed to intertwine the inclusions between degrees, nor to normalize the stress tensor. VI.2's `Stable` scalings do both. A code comment says so ("not Stable.rise and not claiming meter").
- The approach rate is the tolerance $1/(k+1)$ chosen in the checked condition; no quantitative rate is inherited.
- The dimension cap (iv) is used only for surjectivity of $U_k(d)$.
- The uniform-band property is a hypothesis of VII.6.1 and VII.6.2. All its analytic content (uniform poised data for a unit interval of bands) is produced in III.2.
- VII.6.4 is short: its exponent is $p=1$ and its content is VII.6.5. The verification inventory checks that no declaration `SharpGram.FixedPrice` or `SharpGram.DynamicalCost` exists, and lists `inletFirst` and `outletFirst` as headlines. This suggests these clauses were once hypotheses (tentative).
- There is a single definition of `StarPath`. Its uses in `Atlas`, `Slate` and `Shelves` differ only in the names of the arguments.

<a id="unit-notation"></a>

## 6. Notation

- **object:** scaling (radii, constants, isomorphisms)

  **code name:** [`Climb.Scaling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31); radii only: [`Zoom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L15-L19)

  **proposed notation:** $(r_k,\xi_k,U_k)$

- **object:** approaching; weak vanishing on compacts

  **code name:** [`Approaches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L52-L53), [`Fades`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Weak.lean#L24-L27)

  **proposed notation:** $K_k\to0$ weakly on compacts

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

- **The analytic core of VII.6.3.** The components of Lemma VII.6.g were not opened: `embroideredSky`, `billing_XSky`, `y_supplySky`, `tenderlySky`, and those of VII.6.h. They are presumably III.11's Lemmas 4.7 and 4.14 with the dynamic stops. The writer should locate where the bracket condition (one change of block factor) and the lower bound "blocks $\ge$ the smaller factor" replace the plateau equalities. If the Sky chain contains the fixed chain as the plateau case (VII.6.a), the two chains could be written once.

- **Purses and the named conditions.** The fields of a purse (credit, exponent, Taylor order) are read from types and uses only. The same holds for the conditions charted, invoiced, walls, stake, survivors and Plessey. The interpretation of the stake weight as a power of $g_k=\hat\beta_k^{-1/2}$ is tentative.

- **Auxiliary bands.** The statement of `thirdSky` was read only in part. The assignment of the crude bound to band $b_1$ and the finite-difference bound to band $b_2$ (VII.6.m) is probable.

- **Recentring.** $\Phi_s$ is the $s$-coefficient of the product of the probes, multiplied by the formal exponential of minus the free cumulants (`Read.cylinder`, `Poly.pass`). This reading is probable; the explicit formula was not expanded.

- **One step across a change of block factor (VII.6.j).** The origin of the exponent $1/32$ and the conditions steady, enlightened, strongly scoped and guards were not traced. Its consumer is `screensSky`.

- **The two-point bound.** Condition 4 of VII.6.n (window radius $100$, tolerance $1/(j+1)$) is part of the record passed to VII.2. Its use there (`Gondola`, `Scribe`) was not traced.

- **Production of $\mathrm{Fire}_d$.** `embalms` requires a family paid on the window it returns, and `ParadeX`. Where these are verified inside `merano`, `plentiful` and `plentifulWithPrediction` belongs to III.2. The unit table does not assign `merano` or `plentiful`.

- **Headline status of VII.6.4.** The reading of the inventory exclusions (`FixedPrice`, `DynamicalCost`) as earlier hypotheses is tentative.


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

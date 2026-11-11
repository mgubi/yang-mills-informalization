# III.13. Alternative construction: one Wilson family for all labels

*Part III — Ultraviolet construction (renormalization group).*

Explains an alternative ultraviolet construction that puts all field labels into one Wilson family.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/III-13.md) · [← Previous: III.12](III-12.md) · [Next: III.14 →](III-14.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

**Reading scope.** This is the alternative construction for `habitat`. The Wilson family used by `YangMills.constructed` comes from the run in [III.14](III-14.md); see [VIII.1](VIII-1.md) for its assembly. The two families are not identified here.

<details>
<summary>Source inventory and conventions</summary>

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** [`YM/SharpGram/Common.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean), [`YM/SharpGram/Measured.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean), [`YM/SharpGram/Assembly/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly), [`YM/UVExtension/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension). **Size:** about 22,100 lines in the unit inventory.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

Throughout, $G$ is a compact matrix group with simple nonabelian real Lie algebra and $b>0$ is the Gaussian block-spin penalty. Levels run from the coarsest, $0$, to the cutoff, $N$; $p$ indexes periods. Notation is collected in §6.

**Proposition III.13.1 (one ultraviolet and logarithmic family).** There exists a Wilson family $C$, with penalty $b$, satisfying all the following.

1. It is calibrated: one full choice of constants and a directed history generate its history, with the per-step estimates of III.9–III.12.
2. It is consistent: the trajectory is selected, local sections are sound, and, for every degree $d$, $d+3\le J(\mathrm{ref}(d))$, $d+1\le\mathrm{order}_m$ and $d\le\mathrm{power}_m$ for $m\ge\mathrm{ref}(d)$. Every degree-$d$ stencil point satisfies $20(|x_i|+1)\le\mathrm{side}(N,p)$ in each coordinate whenever $N\ge\mathrm{ref}(d)$. Placed basis sections are regular on their footprints, with the prescribed derivative bounds of size $\mathrm{columns}_N\theta_N^q$ for factor degree $q$; transfer is calibrated from $\mathrm{ref}(d)$ onwards.
3. For every $d$ and $R,\varepsilon>0$, there is $A\ge0$ such that, for every $m\ge\mathrm{ref}(d)$ and all sufficiently large $N$, every $p$ and every $v\in\mathcal L_d$ with $\|v\|\le R$, the observable at every site is supported in its centred level-$m$ reflection cell and its chessboard root is at most $Aa_m^{-d-\varepsilon}$. Here $N\ge\mathrm{ref}(d)$ is required.
4. It is the centre of the analytic shooting family of III.13.7.
5. The OPE entrance conditions hold: for every $d,D,h$ with $D+h=d+4$, there exist $t>1$ and $j(i)\to\infty$ with $\sigma_{j(i)}/\sigma_i\to t$ for which the III.11 shell bounds hold for every choice of labels and extraction order; cover sizes satisfy $\mathrm{cs}_{i+1}^2\le2\mathrm{cs}_i^2$ and for every $\varepsilon>0$, $(L_i\mathrm{cs}_i^2)^4(\text{vacuum cost})\le\varepsilon\sigma_{i+1}$ eventually; positive radii satisfy $\log\rho_i/\sigma_i\to-1$.
6. There exist coefficient-map bounds $W$, allowances $r:\mathbb N\to\mathbb N$ and transfer data giving the logarithmic OPE package: III.11 transfer/remainder estimates, triangular label steps, auxiliary comparisons, separation bounds, product sup bounds and VII.4 arity bounds. Also $L_m,\mathrm{columns}_m,\mathrm{columns}_{m+1}\le\hat\beta_m$, $r\to\infty$, and the support exponent is $100$.
7. For these data and every $d,N,p,m$ with $\mathrm{ref}(d)\le m<N$, there is a linear isomorphism $T$ with
   $$\|x_m(v)-T(V_{L_m}x_{m+1}(v))\|_1\le\mathrm{barunit}(L_m)\|\mathrm{core}(x_{m+1}(v))\|_1\quad(v\in\mathcal L_d).$$
   On a basis vector of engineering grade $e$ and factor degree $q$, the only output of grade $\le e$ is that vector times $(\theta_m/\theta_{m+1})^q$; no lower factor degree occurs. The map preserves the unit, commutes with core projection and lattice symmetries, and $\|T\|_1,\|T^{-1}\|_1\le K(J(m+1))$, where $K$ comes from $W$.
8. Coverage holds: some $g(k)\to\infty$, $g(k)\le k$, satisfies $a_{g(k)}\le\hat\beta_ka_k$ eventually, with three depth-$d$ probe panels poised at level $g(k)$ for every $d$ and all large $k$.
9. Along every extraction order satisfying IV.1's cell hypotheses, grid approximation holds at arbitrarily fine fixed levels for bounded degrees and III.11's allowed reflection pairs. Along each such order, complete weak comparison systems exist for every finite demand and degree horizon, positive radius bound and real-spin structure on the smooth free comparison table.
10. Every extraction order $f$ has a refinement $g$, extraction base tables $A,(L_k),T$, a bin and derivative plan along $f\circ g$, and a seed for $(C,f\circ g,T)$ with Maxwell ranks for $T$.

*Status:* theorem. *Lean:* [`uv_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130).

**Proposition III.13.2 (coordinated family).** There exists one $C$ of penalty $b$, consistent, calibrated and floral, with the chessboard bound above, III.13.5's fixed-volume limits, the logarithmic package, calibrated label steps, coverage and complete weak comparison systems along every extraction order satisfying the cell hypotheses. For every extraction order $F$, there exist a refinement $g$ and table $T$ giving the ordered limit along the full mesh sequence and the periods of $F\circ g$, VII.4's OPE services, and a II.2 construction record for $(C,F\circ g,T)$.

*Status:* theorem; $C$ precedes $F$. *Lean:* [`coordination`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L16-L37).

**Proposition III.13.3 (all phases).** For every extraction order $f$, there exist $C$, a refinement $g$, a table $T$, a construction record $F$ for $(C,f\circ g,T)$, and a V.3 reconstruction record $\mathcal A$ for every phase of $F$, satisfying III.13.2 and completed reconstruction: Wightman realization, surjective comparison maps onto the Osterwalder–Schrader Hilbert spaces, unique vacuum, phase-uniform light-cone and heat-kernel bounds, trivial commutant, continued stress tensor, continuous phase dependence of boundary correlations, and barycentre identities. The derivative sector has a prescription $P$ satisfying VII.4's estimates for every fixed finite cluster tree and separated spectators, with arbitrary positive power loss.

*Status:* theorem; $C$ follows $f$ in the statement, but the proof uses III.13.2's common choice. *Lean:* [`common`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L41-L60).

**Proposition III.13.4 (moving-frame Gram limits).** For every extraction order $f$, there exist $C,g,T,F,\mathcal A,P$ satisfying III.13.3, with coverage at the cutoff of $F$. For every ultrafilter $\mathcal U$ finer than the filter of $f\circ g$ (period large, then mesh large) and every depth $D$:

- Depth-$D$ portfolios exist: levels $k'(k)\to\infty$, $k'\le k$, eventually satisfy $a_k\le a_{k'}\le\hat\beta_ka_k$, with three poised panels for all sufficiently large $k$, and label-matrix limits along $\mathcal U$ for every sufficiently large $k$.
- For every portfolio $X$, there are isomorphisms $Y_k(d)$ from the free Maxwell degree-$d$ field space onto that of $T$, for all $d\le D$ and $k$. Eventually they respect grading through $D$; for each $d\le D$, their Gram forms are bounded and coercive uniformly for all sufficiently large $k$.
- For each $d\le D$, some $q_d\in\mathbb N$ gives, for every sufficiently large $k$ and every field $x$, representatives $v_{N,p}\to v$ along $\mathcal U$, projecting to $x$, with eventual source cost at most $\hat\beta_k^{q_d}a_k^d\|Y_k(d)^{-1}x\|$. Conversely, some $K_d\ge0$ gives $\|Y_k(d)^{-1}x\|\le K_da_k^{-d}z$ for every convergent representative family of cost at most $z$ along any nontrivial filter finer than $\mathcal U$, for all sufficiently large $k$.
- For each $d\le D$, the Gram form of $X$ in basis $Y_k(d)$ converges, as $k\to\infty$, to the free Maxwell Gram form.

*Status:* theorem. *Lean:* [`habitat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean#L11-L36).

**Proposition III.13.5 (fixed-volume derivative limits).** For $C$ as in III.13.1 and every $d,k\in\mathbb N$, all sufficiently large $p$ (depending on $d,k$), every $n$ and labels $v_i$ of degrees $\le d$, there exists $g:(\mathbb R^4)^n\to\mathbb C$, continuous on $\Omega_p^n$, such that the following hold along the whole sequence $N\to\infty$.

- Periodic correlations, extended as step functions by coordinatewise ceiling projection, converge to $g$ uniformly on separated compact sets.
- Normalized forward differences of every coordinate word $u$ of length $\le k$ converge there to $\partial_ug$. Multilinear interpolation gives the same limits for fixed words of length $\le k$ of normalized differences with positive integer steps and fixed integer stencil offsets, including backward and centred differences.
- $\partial_a\partial_ug=\partial_{(a,u)}g$ for $|u|<k$ on $\Omega_p^n$.
- For every admissible test $t$, $tg$ is integrable and
  $$a_N^{4n}\sum_r t(r)\Big\langle\prod_iO_{v_i}^{N,p}(r_i)\Big\rangle_{N,p}\longrightarrow\int tg,$$
  summing over centred torus representatives.

*Status:* theorem. *Lean:* [`Poppy.blossoms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Fountain.lean#L96-L108), [`Poppy.Margins`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Fountain.lean#L16-L21).

**Proposition III.13.6 (separated lattice points).** Fix $p$ and a member $C^{\mathbf s}$ of III.13.7 whose shifts satisfy $s_{N,p}\to s$, $|s|<r_*$. Assume its chessboard bound, slow growth, label-transfer and remainder bounds. For every $J$, every finite label list $u_i$ with $\mathrm{ref}(\deg u_i)\le J$, and pairwise distinct level-$J$ torus sites $o_i$, the correlations $\langle\prod_iO_{u_i}^{N,p}(o_i)\rangle_{N,p}$ converge as $N\to\infty$. III.13.7 supplies these bounds for every shift assignment; the centre has zero shifts.

*Status:* theorem. *Lean:* [`Hearth.food`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L87-L112).

**Proposition III.13.7 (analytic shooting family).** For $C$ of III.13.1 there exist a full choice of per-step constants, a shooting structure with an arc, a label-transfer bundle and reference levels such that:

1. Some $r_*>0$, depending only on those constants, works for every $N,p$: each real $|s|<r_*$ determines exactly one Wilson coupling whose fixed-recursion trajectory stays in the prescribed scalar bands and reaches $\bar\beta+s$ at level $0$. Assignments $|s_{N,p}|<r_*$ define $C^{\mathbf s}$ with the bundle's labels, sections and reference levels, and $C=C^{\mathbf0}$.
2. For $m\le N$, $\beta_m(N,p;s)$ and normalized activity readings extend holomorphically to $|s|<r_*$, bounded by $3\hat\beta_m$ and $\mathrm{soft}=\mathrm{rim}/8$, respectively. For fixed $m,p$, they converge locally uniformly with every shift derivative as $N\to\infty$.
3. The centre has the calibration package with constant allowance, priced sup bounds and extraction base data. Every $C^{\mathbf s}$ has label-transfer, remainder and chessboard bounds.
4. Some common disc $|z|<a$ lies in the shooting domain and carries holomorphic coefficient and transfer data, including inverse terminal label maps, for all $d,N,p$ with $\mathrm{ref}(d)\le N$.
5. Fix $d,m$. For all large $p$, every $n$ and labels of degree $\le d$, there exist $b'>0$, holomorphic lattice correlations $W_N(z,x)$ on $|z|<b'$ and limits $f(z,x)$. At real $s$, $W_N$ equals the correlation whenever $s_{N,p}=s$ and all reference levels fit. For every complex $z$, $f(z,\cdot)$ has continuous iterated coordinate derivatives through order $m$ on $\Omega_p^n$; step differences and interpolated differences converge to them with every $z$ derivative, uniformly on products of separated spatial compacts and disc compacts. Real-shift limits agree with constant-shift fixed-volume limits. For admissible $t$, $\int tf(z,\cdot)$ is holomorphic and smeared lattice correlations converge to it locally uniformly with every $z$ derivative.

*Status:* theorem, included in III.13.1. *Lean:* [`Oasis.Floral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Flora.lean#L55-L71).

<a id="unit-inputs"></a>

## 2. What it uses

- I.1; II.1–II.2: Wilson measures, labels, observables, extraction orders and construction records.
- III.1–III.2; III.4–III.12: kernels, order of constants, chessboard and per-step estimates, selected trajectories and histories; III.7 supplies the one-loop annulus coefficient.
- III.15–III.16: label costs and analytic tools; IV.1: extraction, cell hypotheses and Arzelà–Ascoli.
- V.3; VII.1, VII.3–VII.4; VIII.1: phase reconstruction, coverage, Gram comparison, OPE services and construction records.
- Balaban block-spin renormalization; Banach contraction; Vitali–Porter and the identity principle; Arzelà–Ascoli; dominated convergence; reflection-positive chessboard estimates; ultrafilters.

<a id="unit-strategy"></a>

## 3. Strategy

Choose constants in their required order, raising thresholds while preserving earlier estimates. Increasing Taylor orders and powers accommodate each label degree from its reference level onwards. Shooting gives trajectories with prescribed coarse coupling; uniform contraction and decay of dependence on remote ultraviolet levels give full-sequence limits at each fixed level. Uniform holomorphic bounds then permit Vitali's theorem.

Approximate each renormalized observable by a conditional average of a coarse observable with convergent coefficients. Exponential improvement beats subexponential coefficient costs, and chessboard estimates control products. Dense-grid convergence and large-period slicing yield derivative limits. Extraction, OPE and reconstruction results then apply to the same family.

<a id="unit-steps"></a>

## 4. Steps

1. **Choose constants.** For simple $G$, combine the per-step estimates, then raise thresholds for shooting, label transfer, logarithmic OPE and weak comparison. Instantiate first stage $4$, Taylor order $6+i$, power $2+i$, support exponent $100$, allowances $1$ and $j+1$, and target rate $-7/16$; the final wait also supplies coverage. [`uv_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130).
2. **Take fixed-level limits.** For the constructed arc, contraction has rate $1/2$ uniformly in cutoff; continuity and kinematic convergence give convergence of each iterate. Dependence on levels above $m+v$ decays as $\mathrm{soft}^v$, giving real-shift limits, then Vitali gives every complex-shift derivative. [`Camp.artistry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Pear.lean#L70-L71), [`Camp.viva`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Veto.lean#L64-L69) *(proofs read; contraction and decay estimates used as stated)*.
3. **Pass to correlations.** For convergent real shifts and the bundle bounds, effective densities converge uniformly and partition integrals stay positively bounded below. The RG identity and coarse approximation reduce separated products to convergent effective expectations; chessboard errors tend to zero, proving the Cauchy property. [`Hearth.food`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L87-L112).
4. **Obtain derivatives and analyticity.** Large-period slicing bounds lattice differences through one extra order; dense-grid convergence and Arzelà–Ascoli give spatial derivatives and smearing. Holomorphic transfer bounds and Vitali give the analytic correlation limits. [`Poppy.blossoms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Fountain.lean#L96-L108), [`Beach.sparksP`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Beach/Under.lean#L43-L63) *(proofs read through stated transfer estimates)*.
5. **Assemble common outputs.** Uniqueness identifies full-mesh smeared limits with extracted limits. Apply OPE services, every-phase reconstruction and Gram comparison; coverage supplies portfolios along every finer ultrafilter. [`coordination`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L16-L37), [`common`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L41-L60), [`habitat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean#L11-L36) *(report proofs read)*.

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

Uniform control over arbitrarily many ultraviolet levels and the balance between coarse-approximation gains and coefficient costs are the main analytic difficulties. Derivative limits require large periods; plain smeared limits hold at every fixed period. The coupling/activity disc is uniform in cutoff and period, whereas the correlation disc may depend on labels and period.

<a id="unit-notation"></a>

## 6. Notation

$\mathcal L_d$ is the degree-$d$ label space; $\mathrm{ref}(d)$ its reference level. $a_0=1$, $a_{m+1}=a_m/L_m$, $\sigma_m=\log(1/a_m)$; $\ell_p$ is the torus side. $\Omega_p^n\subset(\mathbb R^4)^n$ consists of configurations distinct modulo $\ell_p\mathbb Z^4$; admissible tests are complex-valued, smooth, compactly supported on distinct configurations, with closed support inside $(-\ell_p/2,\ell_p/2)^{4n}$. $O_v^{N,p}$ denotes the renormalized observable and brackets Wilson expectation. $\bar\beta$ is the central coarse coupling, $\hat\beta_m$ the reference coupling, $\theta_m$ the threshold, $J(m)$ the stage. $x_m$ are coefficient maps; $V_L$ multiplies grade $e$ by $L^{d-e}$. $f\circ g$ denotes refinement of an extraction order. A chessboard root is the absolute reflected-product expectation to the reciprocal number of cells.

<a id="unit-limitations"></a>

## 7. What remains unexplained
Quantitative transfer, remainder, shell and comparison contracts remain those of III.7, III.11 and VII.4. Internal proofs of several constant choices, contraction/remote-level decay, one-step label estimates and auxiliary estimates were used as stated; moving-frame proofs belong to VII.1/VII.3. The penalty's normalization relative to Balaban's parameter remains unverified. The main theorem uses III.14's separate construction: equality of its family with this one, or transfer of III.13.5 to it, is not established.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/III-13.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [III.1](III-1.md), [III.10](III-10.md), [I.1](I-1.md), [VIII.1](VIII-1.md), [II.1](II-1.md), [III.9](III-9.md), [III.16](III-16.md), [III.7](III-7.md), [III.5](III-5.md), [III.2](III-2.md), [IV.1](IV-1.md), [III.11](III-11.md), [II.2](II-2.md), [III.3](III-3.md), [III.15](III-15.md), [III.8](III-8.md), [III.6](III-6.md), [V.2](V-2.md), [VII.1](VII-1.md), [VII.4](VII-4.md), [III.4](III-4.md).

**Referenced by:** none above the threshold.

## Lean source

**Source allocation:** 22,100 attributed lines; 3,224 line-counted declarations; 4,212 assigned declaration names. Of the assigned names, 4,113 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- proof of [`multitude`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Expenditures.lean#L31-L79) — 3,983 lines.
- proof of [`uv_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130) and the results it chains to — 3,662 lines.
- proof of [`multitude_foot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Expenditures.lean#L84-L93) — 2,722 lines.
- work package [`YM/UVExtension/Lamppost/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lamppost), with [`YM/UVExtension/Concert/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Concert), [`YM/UVExtension/Wick/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Wick), [`YM/UVExtension/Payroll/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Payroll) — 1,219 lines.
- work package [`YM/UVExtension/Wren/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Wren) — 1,058 lines.
- work package [`YM/UVExtension/Lacing/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing) — 961 lines.
- work package [`YM/UVExtension/Wet/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Wet) — 820 lines.
- work package [`YM/UVExtension/Span/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Span) — 819 lines.
- work package [`YM/UVExtension/Fallow/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Fallow) — 619 lines.
- work package [`YM/UVExtension/Steady/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Steady) — 578 lines.
- work package [`YM/UVExtension/Rainfall/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Rainfall) — 530 lines.
- work package [`YM/UVExtension/Camp/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp), with [`YM/UVExtension/Spire/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire) — 500 lines.
- work package [`YM/UVExtension/Eyelet/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Eyelet) — 387 lines.
- work package [`YM/UVExtension/Strata/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Strata) — 365 lines.
- work package [`YM/UVExtension/Hearth/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth) — 340 lines.
- work package [`YM/UVExtension/Guild/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Guild) — 327 lines.
- work package [`YM/UVExtension/Poppy/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy) — 324 lines.
- work package [`YM/UVExtension/Mast/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Mast) — 259 lines.
- work package [`YM/UVExtension/Bud/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Bud) — 257 lines.
- work package [`YM/UVExtension/Whirl/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Whirl) — 234 lines.
- work package [`YM/UVExtension/Oriel/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oriel) — 233 lines.
- work package [`YM/UVExtension/Yard/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Yard) — 207 lines.
- work package [`YM/UVExtension/Dales/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Dales) — 202 lines.
- work package [`YM/UVExtension/Tabernacle/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Tabernacle) — 199 lines.
- work package [`YM/UVExtension/Copse/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Copse) — 172 lines.
- work package [`YM/UVExtension/Crown/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Crown) — 167 lines.
- work package [`YM/UVExtension/Harvest/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Harvest) — 117 lines.
- work package [`YM/UVExtension/Forest/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Forest) — 114 lines.
- work package [`YM/UVExtension/Orchard/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Orchard) — 103 lines.
- work package [`YM/UVExtension/Linden/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Linden) — 100 lines.
- proof of [`habitat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean#L11-L36) and the results it chains to — 97 lines.
- work package [`YM/UVExtension/Rafter/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Rafter) — 91 lines.
- work package [`YM/UVExtension/Case/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Case) — 77 lines.
- proof of [`coordination`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L16-L37) — 51 lines.
- work package [`YM/UVExtension/Gale/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Gale) — 49 lines.
- work package [`YM/UVExtension/Oasis/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis) — 33 lines.
- work package [`YM/UVExtension/Free/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Free) — 30 lines.
- work package [`YM/UVExtension/Upland/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland) — 30 lines.
- work package [`YM/UVExtension/Above/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Above) — 29 lines.
- work package [`YM/UVExtension/Beach/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Beach) — 17 lines.
- work package [`YM/UVExtension/Willow/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Willow) — 7 lines.
- work package [`YM/UVExtension/Cloud/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Cloud) — 6 lines.
- work package [`YM/UVExtension/Reports/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports) — 5 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`YangMills.constructed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L40)
- [`Bid.vowel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L63)
- [`Axial.viable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L137-L142)
- [`Maxwell.Ranks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L135-L139)
- [`Test`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Test.lean#L18)
- [`EveryPhase.Completed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L51-L71)
- [`all_characters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L75-L80)
- [`EveryPhase.Almanac`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L117-L132)
- [`Heading.leads`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/LocalDebt.lean#L77-L81)
- [`centeredBudget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L21-L23)
- [`Extraction.Wcmain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L38-L40)
- [`Extraction.Order.Ordered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L32-L35)
- [`Extraction.suitable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Patch.lean#L31)
- [`Extraction.growFrom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Tame.lean#L35-L97)
- [`constructionRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28)
- [`Chateau`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Almandine.lean#L24-L36)
- [`posters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L29-L33)
- [`East.CompleteWeak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L35)
- [`sponsored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L38-L51)
- [`Acme.emanate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L31-L37)
- [`Velour`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Bonus.lean#L34-L36)
- [`Ribbons.laurelE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Economist.lean#L23-L32)
- [`stockK`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/South/Dine.lean#L27)
- [`Bandage.fly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Stove.lean#L37)
- [`stakes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Strudel.lean#L21)
- [`Acme.glistens`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Summit.lean#L17-L30)
- [`Acme.Aroma`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Ozone.lean#L16-L19)
- [`Next.Extract.Base`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L42-L51)
- [`Stationary.pouring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L17-L52)
- [`Fluent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L115)
- [`HorizCalc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L20-L23)
- [`OPE.Facilities`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/ElementaryLog.lean#L12-L13)
- [`OPE.Log.aux_delay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Log/Plans.lean#L19-L25)
- [`LogPackage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Log/Plans.lean#L29-L33)
- [`OPE.halo_delay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Rough/Gate.lean#L45-L54)
- [`Prescription.chosen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Legacy.lean#L20-L31)
- [`OPE.AllShapes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Subpower.lean#L39-L45)
- [`Org.Grill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L121-L123)
- [`GridApprox.backTo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L24-L25)
- [`GridApprox.back`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L21-L22)
- [`GridApprox.tariff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Telescope.lean#L34-L78)
- [`KernelChoices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L37-L45)
- [`Run.extractible17`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L60-L90)
- [`jointOffers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L36-L66)
- [`Dense.Coverage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Passes.lean#L16-L24)
- [`Dense.covered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Passes.lean#L26-L33)
- [`slim_wait_for`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Slender.lean#L127-L143)
- [`PricedIn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/InContext.lean#L29-L37)
- [`attains`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/InContext.lean#L65-L71)
- [`CalibratedStep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Matrix/Leading.lean#L19-L27)
- [`TrueSteps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Matrix/Leading.lean#L29-L32)
- [`Weak.Portfolio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L35-L49)
- [`fromCoverage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L66-L67)
- [`Family`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L24-L30)
- [`Family.Makes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62)
- [`Spec.Seed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26)
- [`Spec.Calibrated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L58-L61)
- [`Spec.Final`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73)
- [`Beach.Shoal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Beach/Under.lean#L32-L36)
- [`Camp.Sign`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Buckles.lean#L40-L41)
- [`Camp.trim`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Buckles.lean#L43-L49)
- [`Camp.income`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Pear.lean#L31-L35)
- [`Camp.climb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Pear.lean#L62-L68)
- [`Camp.SummitUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Veto.lean#L62)
- [`Fallow.reaped`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Fallow/Plow.lean#L66-L70)
- [`Mast.signs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Forest/Coda.lean#L47-L52)
- [`Gale.Circuit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Gale/Flange.lean#L43-L50)
- [`Harvest.Barn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Harvest/Barn.lean#L20-L23)
- [`Barn.ripe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Harvest/Barn.lean#L27-L30)
- [`Harvest.Slicing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Harvest/Oats.lean#L34-L36)
- [`Hearth.tasting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Dine.lean#L40)
- [`Hearth.scaledK`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Dine.lean#L42-L52)
- [`Hearth.seating`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Dine.lean#L58-L62)
- [`Hearth.arrival`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Dine.lean#L65-L72)
- [`Hearth.peeling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Spices.lean#L64-L68)
- [`Hearth.seatingM`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L37-L59)
- [`Hearth.banquet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L63-L80)
- [`Hearth.closet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L82-L84)
- [`strippedOn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Trail.lean#L82-L84)
- [`zPositive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Trail.lean#L85-L97)
- [`Mast.Cellar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Mast/Rig.lean#L29-L37)
- [`Cellar.gate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Mast/Rig.lean#L59)
- [`Cellar.yard`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Mast/Rig.lean#L60)
- [`Oasis.Spring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Flora.lean#L41-L49)
- [`Oasis.spring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Flora.lean#L51-L53)
- [`Oasis.fruition`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Fruition.lean#L33-L41)
- [`Pier.mounted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Pier/Heath.lean#L28-L50)
- [`Poppy.coveringR`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Fountain.lean#L40-L69)
- [`Poppy.nourishing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Sparrow.lean#L42-L48)
- [`Poppy.mature`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Sparrow.lean#L61-L62)
- [`Poppy.bravo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Summit.lean#L19-L22)
- [`Beach.Realizes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Prefixes.lean#L35-L39)
- [`Beach.keep_prefix`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Prefixes.lean#L78-L112)
- [`Reports.ultraviolet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Ultraviolet.lean#L101-L112)
- [`Reports.full_tests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Ultraviolet.lean#L50-L58)
- [`Reports.useFull`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Ultraviolet.lean#L62-L69)
- [`Spire.Uses`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Spark.lean#L37-L41)
- [`Upland.Arc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland/Plinth.lean#L33-L38)
- [`Arc.uv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland/Plinth.lean#L62-L70)
- [`Arc.exists_trial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland/Plinth.lean#L71-L75)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-iii-13-1"></a>

- **K-III.13.1** [`forge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lamppost/Blossom.lean#L20-L70) *(numbered result)* — Prescribed jets given by bump-type data can be realized by a germ holomorphic in the parameter and smooth in the variable, matching the given jets.

<a id="k-iii-13-2"></a>

- **K-III.13.2** [`tangled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Copse/Spring.lean#L106-L114) *(key result)* — The full Ursell sum over clusters with union cover satisfies a budget b/(1-q).

<a id="k-iii-13-3"></a>

- **K-III.13.3** [`common`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L41-L60) *(key result)* — For simple G and any penalty b>0, one Wilson family simultaneously carries calibration, UV, OPE-margin, log, coverage, reconstruction and completed-phase properties.

<a id="k-iii-13-4"></a>

- **K-III.13.4** [`sailsV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Case/Wing.lean#L95-L154) *(main result)* — For a simple gauge and branching kernel choices, there exists a sheet with the given kernel and cost/parameter choices such that for all tariffs and scopes, a sequence of scale parameters makes all required purchased estimates hold.

<a id="k-iii-13-5"></a>

- **K-III.13.5** [`habitat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean#L11-L36) *(main result)* — On one Wilson family, with OPE, reconstruction and complete phases, the moving-frame Gram estimates hold and every ultrafilter limit of portfolios converges to the model.

<a id="k-iii-13-6"></a>

- **K-III.13.6** [`uv_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130) *(main result)* — For any positive penalty b there is a family with that kernel penalty that is calibrated, satisfies UV and log OPE packages, dense coverage, and extraction base data with Maxwell ranks.

<a id="k-iii-13-7"></a>

- **K-III.13.7** [`havens_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/SameFactory.lean#L60-L137) *(key result)* — Under support exponent at least 100, there is a sheet, price map and threshold with kernel K and stage v satisfying the log-purchase conclusion.

<a id="k-iii-13-8"></a>

- **K-III.13.8** [`multitude_foot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Expenditures.lean#L84-L93) *(numbered result)* — Existence of a sheet and price map with kernel K satisfying the simultaneous UV/log assembly property.

<a id="k-iii-13-9"></a>

- **K-III.13.9** [`survives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Flora.lean#L81-L87) *(key result)* — The floral property survives for the cellar yard built from the rose data at all sides L, for the fixed-volume coarse reference.

<a id="k-iii-13-10"></a>

- **K-III.13.10** [`snow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Gale/Pots.lean#L20-L26) *(numbered result)* — There exists a sequence of integers making a steepness condition hold for the given sheet and kernel data.

<a id="k-iii-13-11"></a>

- **K-III.13.11** [`lives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Linden/Seasons.lean#L38-L85) *(key result)* — For a connected-activity target with an expense bound, there is a threshold M such that for all sides L≥M and admissible parameters, the target worth estimate holds eventually as x→∞.

<a id="k-iii-13-12"></a>

- **K-III.13.12** [`sheaf`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Gale/Flange.lean#L57-L67) *(key result)* — There is a radius a>0 within the analytic domain such that circuits exist for all indices d,N,n with t d ≤ N.

<a id="k-iii-13-13"></a>

- **K-III.13.13** [`ticket`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Lights.lean#L74-L78) *(main result)* — Under paid-weight and local-ratio hypotheses, there exist a kinematic path structure with full paths realizing the given endpoint data.

<a id="k-iii-13-14"></a>

- **K-III.13.14** [`pocketbook`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Gale/Sheets.lean#L69-L79) *(numbered result)* — Under scale and cost hypotheses, there is a family of banner functions forming a rotor consistent with the tide values and growth conditions.

<a id="k-iii-13-15"></a>

- **K-III.13.15** [`profiles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Free/Lease.lean#L171-L182) *(key result)* — For a kernel choice there exist price and rate data such that every compatible sheet admits horizons satisfying rack, retention, sufficiency and report conditions.

<a id="k-iii-13-16"></a>

- **K-III.13.16** [`sparksP`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Beach/Under.lean#L43-L63) *(key result)* — There exist a radius b and data W, f forming a shoal of order m on the ball.

<a id="k-iii-13-17"></a>

- **K-III.13.17** [`turning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Tides.lean#L103-L116) *(key result)* — There is a path structure with full paths and approximants that converge to a limiting coin sequence satisfying the one-step conditions.

<a id="k-iii-13-18"></a>

- **K-III.13.18** [`inlet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Beach/Rolls.lean#L37-L54) *(key result)* — There is a radius b such that turn families are uniformly bounded on a ball for large N, along with bounds on derivatives on compacts.

<a id="k-iii-13-19"></a>

- **K-III.13.19** [`uv_commerce`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Case/Trading.lean#L22-L50) *(key result)* — The UV extension theorem: an existence statement for programs, targets and registers with alloys satisfying budget and sheltered conditions at all large levels.

<a id="k-iii-13-20"></a>

- **K-III.13.20** [`office`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Clocks.lean#L43-L108) *(key result)* — Parameters can be chosen before learning the data L so that, after L is revealed, only waiting is required and the target mint estimates hold.

<a id="k-iii-13-21"></a>

- **K-III.13.21** [`food`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L87-L112) *(key result)* — Under the main-convergence hypothesis, multi-point correlators evaluated at injectively placed lattice locations converge as N tends to infinity.

<a id="k-iii-13-22"></a>

- **K-III.13.22** [`compose`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Circles.lean#L13-L47) *(key result)* — Compatible single-scale step data compose into a global multi-scale history with prescribed top-level voice satisfying all step estimates.

<a id="k-iii-13-23"></a>

- **K-III.13.23** [`ceilings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Heal.lean#L24-L114) *(key result)* — For a simple gauge and given tolerances, there exist constants such that every horizontal calculation admits choices of rates and cost parameters satisfying the required inequalities.

<a id="k-iii-13-24"></a>

- **K-III.13.24** [`repriseQ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Reprise.lean#L45-L258) *(key result)* — A single shared linear column-family step: one scale of the RG recursion maps a voice and column data to a lower-scale one with format, cost and remainder bounds.

<a id="k-iii-13-25"></a>

- **K-III.13.25** [`forestation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Wick/Tolls.lean#L27-L61) *(key result)* — Under a rate hypothesis with room below a negative exponent, there exist a constant and a rate-zero function bounding quantities for all configurations in the Bower class, uniformly over tubes and steps.

<a id="k-iii-13-26"></a>

- **K-III.13.26** [`antilles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Couplet.lean#L57-L89) *(key result)* — Given a coefficient X at level m with format and remainder bounds, there is a family of solutions down through levels with explicit coefficient and density relations to the played tones.

<a id="k-iii-13-27"></a>

- **K-III.13.27** [`colorReady`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Choices.lean#L137-L178) *(key result)* — For a simple gauge, there exist constants such that, along a sequence of scales tending to infinity, the colored recorded data lift to path data with controlled leading terms and estimates.

<a id="k-iii-13-28"></a>

- **K-III.13.28** [`roomR`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Pier/Plates.lean#L68-L87) *(key result)* — Denominator observables are uniformly bounded and their integrals are uniformly bounded below by a positive constant for large N.

<a id="k-iii-13-29"></a>

- **K-III.13.29** [`basisE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Concert/Vines.lean#L22-L50) *(key result)* — For a connected-activity target, for large side lengths there is a rate function such that smoothness and a estimate exist for all budget points, uniformly in the data.

<a id="k-iii-13-30"></a>

- **K-III.13.30** [`rootwards`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Harvest/Oats.lean#L59-L61) *(key result)* — If snapshots converge and every extraction admits a further refinement with projected structure, then the slicing condition at order d holds for all large base scales p.

<a id="k-iii-13-31"></a>

- **K-III.13.31** [`acclaim`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Chunk.lean#L34-L138) *(key result)* — A renormalization-group step: given a coefficient configuration at level i+1 satisfying the guard conditions, there exists one at level i compatible with it, with the response and accord estimates.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

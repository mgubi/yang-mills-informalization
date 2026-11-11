# IV.1. Infinite volume: extraction of a subsequence and the Euclidean axioms of the limit

*Part IV — Infinite volume.*

Extracts an infinite-volume limit from fixed-volume correlation functions and establishes its Euclidean axioms.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/IV-1.md) · [← Previous: III.16](III-16.md) · [Next: V.1 →](V-1.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

**Reading scope.** For the main theorem, the Wilson family is supplied by [III.14](III-14.md). [III.13](III-13.md) describes an alternative family; it is not substituted into that route here.

<details>
<summary>Source inventory and conventions</summary>

**Part:** IV, infinite volume (the related units). **Lean:** [`YM/Extraction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction), [`YM/Cells`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells), [`YM/Slice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice), [`YM/Euclid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid), [`YM/Dash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash), [`YM/Next/EXTRACTION`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION), [`YM/Lane`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lane); D01–D06. **Size:** 7,444 lines in 1,049 line-counted declarations in the source allocation.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

Let $C$ be a Wilson family for a compact matrix gauge group. **(H1)** is its specification (II.1–II.2, III.13; [`Family.Makes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62)). **(H2)** comprises fixed-volume centered budgets, ordered-tail power budgets, reflection positivity and chessboard inequalities, including root subadditivity ([`CenterPort`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L30-L34)). Extractions select strictly increasing spacing and volume indices; ordered tails mean $k$ large, then $j$ large depending on $k$. For every fixed $p$ and label $v$, at every sufficiently fine scale $m$, (H2) gives a constant bounding all centered roots and the interior condition for all sites and large $j$, with $N_j\ge\max(m,\mathrm{ref}(d))$. For every degree $d$, $R>0$ and $\varepsilon>0$, it also gives $m_0\ge\mathrm{ref}(d)$ and $A\ge0$ such that, for every $m\ge m_0$ and $\eta>0$, eventually along ordered tails with $N\ge m$, all labels $\|v\|\le R$ and sites satisfy the centered interior condition and root bound $Aa_m^{-d-\varepsilon}+\eta$. Positivity and chessboard laws hold at every cutoff and volume.

**Proposition IV.1.1 (raw limits).** Under (H1)–(H2) along any extraction $f$, there exist a refinement $((N_j),(p_k))$ and multilinear tables $S,P_p$ such that, for every arity $n$ and label list $v$:

(a) For every $p$, $P_p(v;\cdot)$ is continuous on $\mathrm{Gen}^{(p)}_n$. For every compact $K$ therein and $\varepsilon>0$, eventually in $j$, $|\mathcal C_{N_j,p}(v;r)-P_p(v;a_{N_j}r)|<\varepsilon$ for all lifted lattice tuples $r$ with $a_{N_j}r\in K$.

(b) $S(v;\cdot)$ is continuous on $\mathrm{Gen}_n$, and $P_{p_k}\to S$ locally uniformly there.

(c) For every $t\in\mathcal D_n$, $t$ is eventually admissible at $p_k$; at every admissible $p$, $V_p=\lim_j\mathcal C_{N_j,p}(v;t)$ exists, and $V_{p_k}\to\int tS(v;\cdot)$.

(d) $tS(v;\cdot)$ is integrable for every $t\in\mathcal D_n$.

*Status:* theorem. *Lean:* [`Extraction.crops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Held.lean#L136-L137).

**Proposition IV.1.2 (label derivatives).** Suppose $S$ satisfies IV.1.1(c)–(d), with (H1)–(H2) along $f$. Assume the relay properties of §2 for every degree, projections $\pi_d(N,p)$ on $\mathrm{Label}_d$ converging in operator norm along ordered tails to projections $\pi_d$, and $\dim\mathrm{Null}_d(S)\le\dim\ker\pi_d$. Then $\ker\pi_d=\mathrm{Null}_d(S)$, and there exist linear maps $\kappa_{d,e}:\mathrm{Label}_d\to\mathrm{Label}_e$ for every $d\le e$, and $\tau_{d,a}:\mathrm{Label}_d\to\mathrm{Label}_{d+1}$ for every axis, such that for all arities, slots, labels and $t\in\mathcal D_n$,

$$\int tS(v_{i\to\kappa v_i})=\int tS(v),\qquad \int tS(v_{i\to\tau_av_i})=-\int(\partial_{x_i^a}t)S(v).$$

*Status:* conditional theorem. *Lean:* [`Work.D04.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D04.lean#L212-L240), [`lifts_model`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L71-L87).

**Proposition IV.1.3 (smooth limit).** If $S$ satisfies IV.1.1 along an extraction where IV.1.2 applies, there exists $T$, smooth on every $\mathrm{Conf}_n$, equal to $S$ on $\mathrm{Gen}_n$, satisfying IV.1.1(a)–(d) with the same extraction and $P_p$, and the basic identities below. The maps descend to $\mathrm{rise}_{d,e}:F_d\to F_e$ and $\partial_{d,a}:F_d\to F_{d+1}$. For every arity, label list, slot and $x\in\mathrm{Conf}_n$,

$$T(\dots,\mathrm{rise}\,u,\dots)=T(\dots,u,\dots),\qquad T(v_{i\to\partial_av_i};x)=\partial_{x_i^a}T(v;x).$$

The smooth ordered limit on $\mathrm{Conf}_n$ along a given extraction is unique. *Status:* theorem. *Lean:* [`Org.Arrives.serves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L101-L109).

**Proposition IV.1.4 (Euclidean hierarchy).** Assume (H1), IV.1.1(a)–(c) for $T$ along $f$, and smoothness on every $\mathrm{Conf}_n$. Then, for every arity, degree list and labels, on $\mathrm{Conf}_n$:

- **(E1)** Simultaneous permutations preserve $T$; the empty correlation is $1$; inserting $1_d$ deletes that slot.
- **(E2)** $T(\rho(s)v;sx)=T(v;x)$ for every $s\in H_4$, and $T(\bar v;x)=\overline{T(v;x)}$.
- **(E3)** $T(v;x+b)=T(v;x)$ for every $b\in\mathbb R^4$.
- **(E4)** For every axis $a$, finite collection of words $w_i$ with distinct points within each word and $x^a>0$, and $c\in\mathbb C^m$, $\sum_{i,j}\bar c_ic_jT(\Theta_aw_iw_j)$ is real and nonnegative.
- **(E5)** The same holds for smeared words $(v^{(i)},t_i)$, $t_i\in\mathcal D_{n_i}$ supported where all $x_k^a>0$, with entries $\iint\overline{t_i(y)}t_j(z)T(\Theta_a(v^{(i)},y)(v^{(j)},z))$; these integrals converge absolutely.

With **(E7)**, this gives (E1)–(E7): **(E6)** is smoothness; **(E7)** requires, for every arity, degree list, labels and $j\ge0$, some $A\in\mathbb N,C\ge0$ with $\|D^jT(v;x)\|\le Cr^{-A}$ for all $0<r\le1$ and all $r$-separated configurations. The constants are independent of $r,x$; $D^j$ has its real Fréchet operator norm. *Status:* theorem, conditional on (E7) for assembly. *Lean:* [`Order.assembles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Harvest.lean#L62-L65).

**Proposition IV.1.5 (short-distance bound).** Assume (H1)–(H2) along $f$, smoothness of $T$ for every arity and labels, and IV.1.1(a)–(b). For every arity, degree list $(d_i)$ and labels $v$, some $C\ge0$, independent of $r,x$, satisfies $|T(v;x)|\le Cr^{-4n(1+\max_i d_i)}$ for all $0<r\le1$ and $r$-separated $x$. The empty maximum is $0$. With IV.1.3, B10 (V.1) supplies (E7). *Status:* theorem. *Lean:* [`Work.D05.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean#L160-L180).

**Proposition IV.1.6 (symmetries of derivatives).** For smooth, permutation-symmetric $T$ satisfying (E2), let $(\mathrm{rise},\partial)$ satisfy IV.1.3's identities. For every $d\le e$, axis and $s\in H_4$, these maps commute with conjugation, $\mathrm{rise}$ commutes with $\rho(s)$, and

$$\rho_{d+1}(s)\partial_b=\sum_a s_{ab}\partial_a\rho_d(s).$$

*Status:* theorem. *Lean:* [`Work.D06.compat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D06.lean#L98-L135).

<a id="unit-inputs"></a>

## 2. What it uses

- II.1–II.2, III.13: Wilson family specification (H1).
- III.11: centered budgets (H2), supplied by [`MergeProof.Accent.gardena`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Gardens.lean#L19-L40).
- III.10–III.11: relay approximations to differences and inclusions, null-label detection and the separate dimension comparison ([`MergeProof.Scotia`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Eureka.lean#L16-L20), [`savings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L19-L47)).
- III.16: positive-kernel trace Lipschitz estimates. I.1, III.2, V.1: gentle scales and subpolynomial column products. V.1: B10.
- Osterwalder–Seiler positivity; chessboard estimates; Schatten Hölder, three-lines and Cauchy estimates; Arzelà–Ascoli, dominated convergence and Fourier regularity.

The relay hypotheses require bounded projections at each fixed volume and along ordered tails; degree-$(d+1)$ approximants to degree-$d$ forward differences and degree-$e$ approximants to degree-$d$ labels for $d\le e$, with subpolynomial cutoff coordinates; and a null-label detector. For each approximation error there must be one rate $y(N,p)\to0$: for every integer $q\ge0$ and lower scale $m$, some $k\ge m$ gives, eventually along ordered tails with $N\ge k$, interior errors with roots $\le y(N,p)$ in every translated bond cell of side $a_k$, at relative lattice coordinates satisfying $M\le z^a$ and $z^a+M+1\le a_k/a_N$, where $M=\lfloor(a_k/a_N)/(8(q+1))\rfloor$. Projection-kernel labels with subpolynomial growth must be chessboard-close to bounded measurable observables whose separated spectator correlations vanish exactly, eventually along ordered tails. Subpolynomial means $\|B_{d,N,p}^{-1}w(N,p)\|\le a_N^{-\varepsilon}$ eventually for every $\varepsilon>0$, where $B$ is the terminal transfer to reference coordinates. The dimension comparison is an additional hypothesis ([`RelayBin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L46-L52)).

<a id="unit-strategy"></a>

## 3. Strategy

Chessboard bounds control separated correlations. Transfer kernels turn movement of an insertion into movement between gaps; complex interpolation gives equicontinuity. Two compactness arguments select spacing and volume subsequences. Relay approximations give distributional derivatives as raised-label kernels, hence smoothness. Lattice symmetries and positivity pass to the limit; scale estimates give polynomial bounds.

<a id="unit-steps"></a>

## 4. Steps

1. Under (H1), reflection positivity and repeated Cauchy–Schwarz give chessboard estimates; translation log-convexity transfers centered bounds to interior positions. [`Around.interior_from`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Around.lean#L95-L129).
2. Under (H1)–(H2), translated cells separate insertions and bound correlations on distinct-point compact sets. [`Around.size_done`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Held.lean#L120-L132).
3. Under the same hypotheses, slab traces and chessboard column moments give equicontinuity on generic compact sets through interpolation and Cauchy's estimate. [`Difference.completed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L181-L214).
4. Two Arzelà–Ascoli extractions give IV.1.1(a)–(b); domination gives (c)–(d). [`first_surface`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L166-L184), [`Order.ordinary`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L115-L153).
5. Under IV.1.2's hypotheses, summation by parts identifies weak derivatives; small chessboard errors vanish. Normalized projected approximants and the dimension count give fixed derivative labels. [`Work.D03.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D03.lean#L244-L249), [`Dash.brace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Limits.lean#L69-L111).
6. Iterating these identities gives rapid localized Fourier decay and the smooth representative. [`Dash.awake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Slew.lean#L26-L58).
7. Under IV.1.4's hypotheses, density passes symmetries; limiting Gram matrices pass positivity. Under IV.1.5's hypotheses, two scale choices give its bound. The derivative plan then promotes it to (E7). [`Order.realPositive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Harvest.lean#L46-L60), [`Work.D05.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean#L160-L180), [`Work.B10.capped_tags`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B10.lean#L72-L90).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

Uncentered roots and transfer-kernel equicontinuity require the main estimates. Fixed derivative labels require normalized remainders and the separate rank comparison. Equicontinuity holds on generic configurations; smoothness extends to all distinct-point configurations. The label maps are determined only modulo null labels, while their quotient maps are intrinsic. Continuous rotation symmetry comes later.

<a id="unit-notation"></a>

## 6. Notation

$\mathrm{Label}_d$ is the finite-dimensional complex label space; $F_d=\mathrm{Label}_d/\mathrm{Null}_d$, where null labels have zero smeared kernels in every arity and slot against all spectator labels and tests. $\mathrm{Conf}_n$ means distinct points; $\mathrm{Gen}_n$ means separation in every coordinate, modulo $L_p$ for $\mathrm{Gen}^{(p)}_n$. $\mathcal D_n=C_c^\infty(\mathrm{Conf}_n)$; admissibility means support inside $(-L_p/2,L_p/2)^{4n}$. $a_N\downarrow0$ and $L_p\uparrow\infty$ are spacings and periods. $\mathcal C_{N,p}(v;r)=\langle\prod_iI_{N,p}(v_i,r_i)\rangle$; smearing sums against $t(\widehat r)$ with weight $a_N^{4n}$, where $\widehat r$ is the physical site position. Lifted tuples are reduced modulo $L_p/a_N$ for evaluation. $v_{i\to w}$ replaces slot $i$ by $w$. Separation uses the supremum norm. $\rho_d$ acts on labels and their quotients. $H_4$ consists of signed coordinate permutations, with matrices $(s_{ab})$; $s_a$ reverses axis $a$; $\Theta_a$ reverses words, reflects points and replaces $v$ by $\rho(s_a)\bar v$.

<a id="unit-limitations"></a>

## 7. What remains unexplained

The upstream relay, rank and full fixed-volume kernel arguments remain unexplained, as does the budget's relation to III.12. Extraction is subsequential in both indices; III.13 supplies the full-spacing upgrade ([`UVExtension.Reports.useFull`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Ultraviolet.lean#L62-L69)). Independence from the volume subsequence is not asserted.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/IV-1.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md), [II.1](II-1.md), [III.16](III-16.md), [III.1](III-1.md), [III.10](III-10.md).

**Referenced by:** [VIII.1](VIII-1.md), [VII.4](VII-4.md), [VI.2](VI-2.md), [VI.1](VI-1.md), [VII.2](VII-2.md), [V.1](V-1.md), [III.11](III-11.md), [V.2](V-2.md), [V.3](V-3.md), [III.13](III-13.md), [III.6](III-6.md), [VII.3](VII-3.md), [III.10](III-10.md), [III.12](III-12.md), [VII.6](VII-6.md), [VII.1](VII-1.md), [II.1](II-1.md), [VII.5](VII-5.md), [III.8](III-8.md), [III.3](III-3.md), [III.2](III-2.md).

## Lean source

**Source allocation:** 7,444 attributed lines; 1,049 line-counted declarations; 1,464 assigned declaration names. Of the assigned names, 1,385 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- work package [`YM/Extraction/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction), with [`YM/Slice/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice), [`YM/Cells/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells) — 4,642 lines.
- work package [`YM/Euclid/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid) — 1,079 lines.
- work package [`YM/Dash/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash) — 530 lines.
- work package [`YM/Next/EXTRACTION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION) — 249 lines.
- work package [`YM/Lane/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lane) — 101 lines.
- work package [`YM/Further/DENSE_MIXED_KERNELS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/DENSE_MIXED_KERNELS) — 12 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`wilsonLimit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L44-L56)
- [`WilsonFamily.Converges`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L85-L90)
- [`YM/Bid/Drops.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean)
- [`dollar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L18-L19)
- [`close`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L25)
- [`vet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L39)
- [`heighten`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L43-L44)
- [`Bid.D01`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L54)
- [`Bid.D02`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L57-L58)
- [`Bid.D03`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L61-L62)
- [`Bid.D04`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L65-L67)
- [`Bid.D05`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L70-L71)
- [`Bid.healthy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L91-L97)
- [`Bid.B10`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L101-L102)
- [`Bid.OneCap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L97-L98)
- [`Cells.Seam`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L14-L19)
- [`Tiling.adds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Chess.lean#L108-L131)
- [`Tiling.maximize`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Chess.lean#L32-L63)
- [`Cells.Positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L116-L117)
- [`Cells.Cut`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L40-L45)
- [`Tiling.planted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Embedded.lean#L25-L38)
- [`Cells.center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L34-L40)
- [`CellHyp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L68-L79)
- [`Tiling.fits_together`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Proximity.lean#L53-L66)
- [`Tiling.trip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Slide.lean#L60-L86)
- [`Tiling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L19-L25)
- [`Tiling.copy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L221-L224)
- [`Tiling.rootTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226-L227)
- [`Holder.estimation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L124-L165)
- [`Holder.finite_lip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L170-L229)
- [`Holder.leap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L22-L24)
- [`Holder.convexStrip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Holder.lean#L130-L132)
- [`Bin.Upper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L24-L26)
- [`Bin.shortage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L39)
- [`Bin.exactC`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L41-L42)
- [`Spans`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L55-L60)
- [`MonitorOps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L63-L65)
- [`MonitorOps.Wakes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L67-L69)
- [`Wakes.through_ties`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L89-L96)
- [`repair`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Regular.lean#L62-L71)
- [`aggregate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Regular.lean#L91-L113)
- [`Dash.monitor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Scope.lean#L108)
- [`Dash.Bin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Scope.lean#L119)
- [`closeBy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Slew.lean#L17-L18)
- [`currents`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Twist.lean#L58-L59)
- [`Hidden`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Twist.lean#L94-L95)
- [`arises`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Twist.lean#L98-L115)
- [`DiffPlan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L20-L22)
- [`Inclusions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L58-L60)
- [`Derivatives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L61-L64)
- [`DiffPlan.Orientation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L66-L72)
- [`Table.null`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L34)
- [`Table.Field`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L74)
- [`Pairing.at_point`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/RPPeak.lean#L126-L131)
- [`Pairing.nearGram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/RPPeak.lean#L16-L33)
- [`Register.Token`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Register.lean#L88)
- [`Register.one`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Register.lean#L90)
- [`Register.reflectedToken`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Register.lean#L93)
- [`Table`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L55-L56)
- [`Basic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L75-L78)
- [`RealSpin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L80-L84)
- [`Homogeneous`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L86)
- [`Smooth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L88-L89)
- [`Capped`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L97-L99)
- [`Test`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Test.lean#L18)
- [`RP`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L123-L124)
- [`RPSmear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L136-L138)
- [`Spin.uses`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Around.lean#L42-L50)
- [`Around.swept`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Around.lean#L57-L93)
- [`Banks.plane`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Banks.lean#L19)
- [`Banks.kept`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Banks.lean#L94-L102)
- [`centeredBudget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L21-L23)
- [`CenteredBook`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L25-L28)
- [`Wcmain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L38-L40)
- [`Wcmain.projects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L42-L56)
- [`CenterPort.book`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L58-L66)
- [`Difference.chrono`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Difference.lean#L24-L35)
- [`Difference.stars`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Difference.lean#L37-L49)
- [`Difference.reading`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Difference.lean#L51-L87)
- [`comparable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L115-L163)
- [`permits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L51-L64)
- [`stepTotal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L66-L103)
- [`Gaps.allGrows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Gaps.lean#L119-L127)
- [`Gaps.someGrows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Gaps.lean#L129-L137)
- [`Gaps.some`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Gaps.lean#L63-L80)
- [`Gaps.all`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Gaps.lean#L82-L93)
- [`Around.fits_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Held.lean#L73-L114)
- [`Order.spin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L124-L149)
- [`Order.limits_basic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L151-L193)
- [`fuse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L27)
- [`Order.inPatch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L39-L44)
- [`Order.equal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L48-L51)
- [`Order.homogeneous`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L83-L112)
- [`Order.poses`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L155-L158)
- [`Bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L25-L30)
- [`Order.intraperiod`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L66-L95)
- [`Order.ring_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L98-L113)
- [`Family.book`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/LatticeFamily.lean#L20)
- [`Family.numeric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/LatticeFamily.lean#L68-L69)
- [`Order.smears`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L26-L27)
- [`Order.Ordered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L32-L35)
- [`Order.determined`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L47-L50)
- [`Order.Meshes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L57-L62)
- [`Order.VolumePoints`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L64-L66)
- [`PointLimits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L68)
- [`volume_oscillates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L116-L138)
- [`RawLimits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L156-L160)
- [`RawLimits.ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L194-L202)
- [`TransferLip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L26-L30)
- [`each_oscillates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L51-L68)
- [`setMeshes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L78-L105)
- [`Order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L34-L36)
- [`refine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L40)
- [`late`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L47)
- [`Order.limits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L61-L64)
- [`Banks.at_cut`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Pairs.lean#L104-L125)
- [`NoHit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Patch.lean#L25-L26)
- [`Cyclic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Patch.lean#L28-L29)
- [`suitable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Patch.lean#L31)
- [`simultaneous`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Simultaneous.lean#L21-L32)
- [`fitted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Stencil.lean#L69-L70)
- [`localAscoli`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Tame.lean#L100-L114)
- [`oscillation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Tame.lean#L20-L21)
- [`almostGeneric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Ties.lean#L44-L49)
- [`Lease.rents`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lane/Lease.lean#L20-L22)
- [`Lease.gain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lane/Lease.lean#L54-L55)
- [`Lease.take`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lane/Lease.lean#L57-L124)
- [`Schedule.Gentle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L129-L130)
- [`mesh_inequality`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L133-L162)
- [`MergeProof.Accent.rated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L48-L71)
- [`common`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L111-L122)
- [`Next.Extract.Base`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L42-L51)
- [`Base.null`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L72-L74)
- [`Next.Extract.finish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L79-L92)
- [`RelayCosts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L115-L119)
- [`Projected.ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L178-L181)
- [`Presentation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L39-L41)
- [`Affordable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L46-L48)
- [`include_projections`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L86-L93)
- [`Beam.arriving_seed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Beam.lean#L153-L180)
- [`OS.thickness`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Halves.lean#L29-L39)
- [`Org.Cleaner.stay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L113-L114)
- [`Org.Assembly.wcmain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L75-L76)
- [`Org.Arrives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L83-L86)
- [`Org.Cleaner`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L90-L96)
- [`Time.partition_seen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Calendar.lean#L34-L38)
- [`Slice.portPos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Gate.lean#L94-L102)
- [`Time.selects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Resident.lean#L74-L87)
- [`constant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L100-L102)
- [`Family`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L24-L30)
- [`Family.O`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L42)
- [`reality`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L74-L86)
- [`rotated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L88-L98)
- [`conf`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L63)
- [`generic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L66)
- [`TimeKernel.learns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L109-L119)
- [`TimeKernel.passage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L76-L106)
- [`UVExtension.Mast.calibrated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Forest/Glue.lean#L35-L36)
- [`full_tests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Ultraviolet.lean#L50-L58)
- [`Work.B10.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B10.lean#L95-L105)
- [D01](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D01.lean)
- [`Work.D01.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D01.lean#L127-L134)
- [`columnLogs_le`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D01.lean#L34-L63)
- [`terminal_ball`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D01.lean#L92-L125)
- [D02](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D02.lean)
- [`Work.D02.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D02.lean#L24-L84)
- [D03](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D03.lean)
- [`error_sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D03.lean#L185-L242)
- [`on_lattice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D03.lean#L71-L77)
- [D04](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D04.lean)
- [D05](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean)
- [`scales`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean#L132-L158)
- [`image_power`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean#L43-L68)
- [`separated_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean#L95-L128)
- [D06](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D06.lean)
- [`Work.D06.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D06.lean#L137-L139)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-iv-1-1"></a>

- **K-IV.1.1** [`Interior`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L109-L113) *(numbered result)* — A structure packaging a measurable local assignment on a set of sites with a uniform bound independent of the continuum limit.

<a id="k-iv-1-2"></a>

- **K-IV.1.2** [`enumerate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L74-L99) — The copy map for a cell sends the base chamber into the chamber of that cell.

<a id="k-iv-1-3"></a>

- **K-IV.1.3** [`existence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Flood.lean#L110-L128) *(numbered result)* — For a fold-closed predicate satisfied by some assignment, some constant assignment also satisfies it.

<a id="k-iv-1-4"></a>

- **K-IV.1.4** [`Hierarchy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L141-L148) *(key result)* — A bundle of Euclidean-covariance-type properties (axioms) of a Schwinger-function table, required before establishing continuous rotation invariance.

<a id="k-iv-1-5"></a>

- **K-IV.1.5** [`awake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Slew.lean#L26-L58) *(key result)* — Given a live, suitably regular family of distributions with enough derivatives, there is a smooth table matching it on the regular part.

<a id="k-iv-1-6"></a>

- **K-IV.1.6** [`pathway`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Slide.lean#L89-L101) *(numbered result)* — If a function along a sequence of translates has bounded root-test at both endpoints and all are interior, then it is bounded at all intermediate offsets.

<a id="k-iv-1-7"></a>

- **K-IV.1.7** [`fold_both`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Polar.lean#L94-L102) *(key result)* — Cauchy–Schwarz-type fold estimate: the square of the root power of a mixed assignment is bounded by the product of the two homogeneous ones.

<a id="k-iv-1-8"></a>

- **K-IV.1.8** [`tiles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Chess.lean#L80-L105) *(main result)* — Chessboard estimate: the root power of a product of cell-localized functions is bounded by the product of single-function root tests.

<a id="k-iv-1-9"></a>

- **K-IV.1.9** [`physical`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D03.lean#L117-L138) *(numbered result)* — For large period and small mesh, evaluating a shifted test function at lattice cells after a one-slot jump equals evaluating at the translated point, with no wrapping.

<a id="k-iv-1-10"></a>

- **K-IV.1.10** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D03.lean#L244-L249) *(key result)* — Forward differences in a single slot are controlled in the ordered extraction.

<a id="k-iv-1-11"></a>

- **K-IV.1.11** [`step_positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Positive.lean#L81-L91) *(key result)* — For nonnegative β, the temporal heat-kernel transfer step of the Wilson lattice is a nonnegative (positive-type) kernel.

<a id="k-iv-1-12"></a>

- **K-IV.1.12** [`enough`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Present.lean#L76-L111) *(key result)* — For a reflection-symmetric brick tiling, the p-th root-power of the norm of the column moment is bounded by the common root-test bound A of the function and its reflection.

<a id="k-iv-1-13"></a>

- **K-IV.1.13** [`reflected_positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Reflection.lean#L98-L114) *(key result)* — The Wilson lattice measure is reflection positive across a seam for nonnegative β.

<a id="k-iv-1-14"></a>

- **K-IV.1.14** [`laws`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L21-L24) *(key result)* — For nonnegative coupling, the cell reflection-positivity seam property holds for all sizes.

<a id="k-iv-1-15"></a>

- **K-IV.1.15** [`seamless`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L81-L84) *(key result)* — For a family satisfying the makes condition, the torus tiling at every side and coupling scale has the seam property.

<a id="k-iv-1-16"></a>

- **K-IV.1.16** [`assembles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Harvest.lean#L62-L65) *(main result)* — An ordered extraction with point limits, smooth and capped, yields a full Euclidean-positive hierarchy of limiting correlation functions.

<a id="k-iv-1-17"></a>

- **K-IV.1.17** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean#L160-L180) *(key result)* — The D05 requirement holds: the extraction order's evaluation, with tie handling and cofinal sequences, is established for the construction.

<a id="k-iv-1-18"></a>

- **K-IV.1.18** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D04.lean#L212-L240) *(key result)* — Transfer from match rents to the all-shot monitor holds, discharging a required hypothesis for the extraction.

<a id="k-iv-1-19"></a>

- **K-IV.1.19** [`uniqueLift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Union.lean#L62-L83) *(key result)* — Compatible finite-degree linear maps lift uniquely to a linear map on the union (colimit) space.

<a id="k-iv-1-20"></a>

- **K-IV.1.20** [`powering`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Calendar.lean#L72-L102) *(key result)* — Shifting a length l of time between two bricks changes the moment by at most the product of column bounds times l/r.

<a id="k-iv-1-21"></a>

- **K-IV.1.21** [`organized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Ordered.lean#L68-L115) *(numbered result)* — For well-separated time points, cyclic gap arithmetic reorganizes the product of column moments with a bound in terms of the K_i.

<a id="k-iv-1-22"></a>

- **K-IV.1.22** [`primitive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Difference.lean#L90-L145) *(key result)* — Lattice correlation functions have a Lipschitz bound for a single-point shift in one axis, with constant given by a product of root-test bounds divided by the separation scale r.

<a id="k-iv-1-23"></a>

- **K-IV.1.23** [`completed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L181-L214) *(key result)* — Centered bounds on lattice data give Lipschitz equicontinuity of the transfer from the exact cell estimates.

<a id="k-iv-1-24"></a>

- **K-IV.1.24** [`crops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Held.lean#L136-L137) *(key result)* — From centered bounds on the projected data one can extract a subsequence with raw continuum limits.

<a id="k-iv-1-25"></a>

- **K-IV.1.25** [`compat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D06.lean#L98-L135) *(key result)* — For a smooth symmetric table with real spin and a differential plan with derivatives and inclusions, the plan is compatible with orientation.

<a id="k-iv-1-26"></a>

- **K-IV.1.26** [`Valid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L98-L118) *(numbered result)* — A validity predicate bundling conditions on a common aligned series of coefficients for detecting sets at each weight.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

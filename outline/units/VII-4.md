# VII.4. Operator product expansion and contact extensions

*Part VII — Identification as Yang–Mills.*

Describes the finite-order operator product expansion and extensions of correlations across coincident points.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/VII-4.md) · [← Previous: VII.3](VII-3.md) · [Next: VII.5 →](VII-5.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** VII, identification as Yang–Mills. **Lean:** [`YM/OPE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE), [`YM/Contacts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts). **Size:** about 10,200 lines, 2,035 declarations.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

For VII.4.1–4 assume (RG): grid approximants, simple gauge Lie algebra, per-step and cluster RG estimates, and the continuum extraction record. Fix any coherent prescription and its real covariant Reader on the final record; VIII.1 supplies these data. Its strata $E_j\subset F_j$ have bases $O_{j,\kappa}$ fixed by conjugation, with coefficients $c_{j,\kappa}$.

An $(r,M,\eta)$-cluster satisfies $|x_i-o|\le Mr$, $|x_i-x_{i'}|\ge\eta r$ for $i\ne i'$. Spectators are $c$-clear if $|y_j-o|\ge c$, $|y_j-y_{j'}|\ge c$ for $j\ne j'$. Small-radius thresholds are uniform in configurations and states.

**Proposition VII.4.1 (separated OPE).** Fix finite label lists $a,b$, $M\ge0$, $\eta,c,\varepsilon>0$, and $D\in\mathbb N$. For all sufficiently small $r$, every such cluster and clear spectator configuration gives separated $(x,y)$ and $(o,y)$ and
$$\|\mathcal E_D\|_{\mathcal A}\le r^{D+1-w(a)-\varepsilon},\qquad
\mathcal E_D=M(a,x;b,y)-\sum_{j\le D,\kappa}c_{j,\kappa}(a;x,o)M((j,O_{j,\kappa}),o;b,y).$$
The same bound holds in every phase and the mixed state. For each fixed channel $(j,\kappa)$, $|c_{j,\kappa}|\le r^{j-w(a)-\varepsilon}$ uniformly on clusters for sufficiently small $r$. Coefficients are independent of spectators, state and $D$.
*Status:* theorem. *Lean:* [`Orbits.Foundation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L62-L64).

**Proposition VII.4.2 (integrated remainder).** With VII.4.1's fixed data, let $K$ be a measurable space, $\mu$ a positive measure, $q\in L^1(\mu;\mathbb C)$, $\int|q|\,d\mu\le B$, $B\ge0$. Let configurations be a.e.-measurable and satisfy the geometry a.e. on $\{q\ne0\}$. For all sufficiently small $r$, for the mixed state or any a.e.-measurable phase map, the weighted correlation, truncation and remainder are integrable, and $|\int q\,s(\mathcal E_D)\,d\mu|\le Br^{D+1-w(a)-\varepsilon}$. The pointwise threshold works for every $K,B$; every probability mixture of phases satisfies the remainder bound of VII.4.1.
*Status:* theorem. *Lean:* [`estimates_weighted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Profile.lean#L98-L108).

**Proposition VII.4.3 (nested OPE).** Fix a finite rooted tree with inner root, leaf labels $v$, output $(m,\kappa)$, inner truncations $D_p$, $M\ge0$, $\eta,\varepsilon>0$. A plot assigns leaf points and inner anchors $z_p$; positive radii satisfy $s_{\mathrm{root}}=r$, $s_p\le s_{\mathrm{parent}(p)}$. Every subtree lies within $Ms_p$ of $z_p$; positions in different children are separated by $\eta s_p$. Put $\rho_p=s_p/s_{\mathrm{parent}(p)}$, and let $w_p$ be the degree below $p$. Over non-root inner nodes define
$$\mathrm{toll}_m=r^{m-w(v)-\varepsilon}\prod_p\rho_p^{-w_p-\varepsilon},\qquad \mathrm{nest}_D=\sum_p\rho_p^{D_p+1}.$$
Writing $c_{m,\kappa}=c_{m,\kappa}(v;z_{\mathrm{leaves}},z_{\mathrm{root}})$, for all sufficiently small $r$, $|c_{m,\kappa}|\le\mathrm{toll}_m$ and $|c_{m,\kappa}-c^{(D)}_{m,\kappa}|\le\mathrm{toll}_m\mathrm{nest}_D$. Here $c^{(D)}$ recursively multiplies node coefficients and sums inner-child channels through $D_p$, leaving leaves unchanged; the root output is fixed and $D_{\mathrm{root}}$ is unused. For fixed spectators $b$ and $\delta>0$, separated mutually and from every plot point by $\delta$, the degree-$m$ remainder has norm, and absolute value in every state, at most $\mathrm{toll}_{m+1}$.

For a.e.-measurable plots and spectators satisfying this geometry a.e. on $\{q\ne0\}$, VII.4.2's integration conclusion holds: direct and composed coefficients are integrable after weighting, with $|\int qc\,d\mu|\le B\mathrm{toll}_m$ and $|\int q(c-c^{(D)})\,d\mu|\le B\mathrm{toll}_m\mathrm{nest}_D$. Weighted tested correlations, truncations and remainders are integrable, with remainder bound $B\mathrm{toll}_{m+1}$ for the mixed state or any a.e.-measurable phase map. Radii remain fixed during integration; thresholds are uniform in radii, measures, weights, $B$ and configuration maps.
*Status:* theorem. *Lean:* [`Nesting.Uniform`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Endpoint.lean#L17-L27).

**Proposition VII.4.4 (contacts).** Fix contact devices sharing the Reader's prescription and the final record's rotations. For $k$ labels $a_i\in F_{d_i}$, any state $s$, and $0<s_0\le B_0/2$, $B_0=\min(1,\mathrm{cl}(w(a)))$, the forest kernel defines a distribution $\mathcal D_a^s$ of order at most $(2+w(a))k$: on each compact $K$, its absolute integral is bounded by $C_K\|f\|_{C^{(2+w(a))k}}$. It equals $\int fS^s(a;x)\,dx$ for tests supported on distinct configurations. Distributions also exist on slices $o+P(E)$, with $P$ a linear isometry whose range contains a group diagonal's normal space, and $o$ on that diagonal.

Shell and iterated forest sums give the pairing, with integrable kernels and summable $L^1$ norms, under these stage-family hypotheses: a partition $Q$ of $g$; affine isometric placements based on block diagonals and containing their normals; positive subtraction lengths $s$; $R_i\in(0,1]$; common ceiling $2s\le B\le\min(1,\mathrm{cl}(\sum_i d_i))$. A common frame scales each block normal by $R_i$ and preserves its orthogonal complement. Closed stages are bounded in frame coordinates and within normal distance $B$; nonsingleton blocks satisfy $R_i\le C_1s$. Original and spectator labels have uniform norm bounds; spectator positions and labels are continuous on stages and constant in block normal directions. All nonempty subgroup centroids of different blocks and all spectators are uniformly separated. Constants may depend on the fixed family.

For $Q=\{g\}$, $g\ne\emptyset$, pure normal dilation $R\in(0,1]$, and $f_R(x)=R^{-4(|g|-1)}f(R^{-1}x_{K_g}+x_{K_g^\perp})$, assume rescaled-stage support and $\|f\|_{C^N}\le H$, $N=(2+\sum_i d_i)(|g|-1)$. For every $\varepsilon>0$, the absolute kernel integral is $\le CHR^{u-w(a_g)-\varepsilon}$: $u=0,n,n+1$ for full, weight-$n$, and degree-$n$ remainder. The latter two require stages within normal distance $\mathrm{cl}(n)$ of the $g$-diagonal. For $|g|>1$, tests away from its diagonal agree with the expression retaining proper-subcluster subtractions.

Device strata have bases fixed by conjugation, containing the unit in degree zero. Every positive sequence $f_n$ admits $0<t_n\le f_n$, $4t_{n+1}<t_n$, $t_n\to0$, $2(n+1)t_n\le\mathrm{cl}(n)$.
*Status:* theorem. *Lean:* [`provided`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L65-L69).

**Proposition VII.4.5 (slab bound).** Assume construction properties, ordered generic point extraction, Euclidean hierarchy, IV.1's corrected field estimates, and the cell hypothesis: reflection positivity and chessboard inequalities at every cutoff, with centred one-field bounds $\le Aa_m^{-d-\varepsilon}+\eta$ late in the extraction, as in IV.1. For every $D\in\mathbb N$, $R>0$, there is $C_0>0$, with $P=4(D+1)$, such that every nonempty word $w$, degrees $\le D$, coefficient norms $\le R$, $r$-buffered in $(0,d)$, $d>0$, $0<r\le1$, admits a level $b$ and width $0<s\le d$, $s\in a_b\mathbb N$, containing $w$ in $(0,s)$. Every positive-time exterior word $v$ then has $B_v$ with
$$|S(\Theta v_n\cdot v_n)|\le B_v\rho^{4n}\quad(n\in\mathbb N),\qquad \rho=C_0^{|w|}(|w|/r)^{P|w|},$$
where $v_n$ precedes $v$ by $2n$ consecutive width-$s$ slabs holding alternately $w$ and its reflection. Iterated Schwarz gives $\|T_s(w)\|\le\rho$ in V.1.
*Status:* theorem. *Lean:* [`seats`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Seats.lean#L154-L160).

**Proposition VII.4.6 (prescription).** A probe is a finite separated token configuration, anchored at its first point. The correlation maps $\mathrm{sp}_n$ of anchored fields against probes are injective and inclusion-compatible. For modes indexing bases of $F_n/\iota(F_{n-1})$, $F_{-1}=0$, there exist vectors $u_i\in F_{\deg i}$ and finitely supported complex probe weights $\lambda_i$, such that for every $n$, $\lambda_i^{(n)}(\iota u_j)=\delta_{ij}$ for degrees $\le n$, and $\phi=\sum_{\deg i\le n}\lambda_i^{(n)}(\phi)\iota u_i$ for every $\phi\in F_n$. Here $\lambda_i^{(n)}=\sum_p\lambda_i(p)\mathrm{sp}_n(\cdot)(p)$. Higher-degree tests vanish on $F_n$; one prescription serves every truncation.
*Status:* theorem. *Lean:* [`Prescription.chosen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Legacy.lean#L20-L31).

<a id="unit-inputs"></a>

## 2. What it uses

- II.2, III.13: cutoff construction; III.11 and Part III: RG estimates, assembled in VIII.1 ([`Services`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Arrangement.lean#L56-L60)).
- IV.1: corrected fields, extraction, centred chessboard bounds; V.1–V.3: ground algebra and phases; VI.1: derivatives, rotations, reality.
- Gelfand isometry, reflection positivity, iterated Schwarz, Haar averaging, Taylor subtraction and Zimmermann forests.

<a id="unit-strategy"></a>

## 3. Strategy

Probes reconstruct finite-degree fields. RG replaces clusters by fields plus controlled remainders; translated chessboard moments give ground-algebra norm bounds, hence estimates in every phase. Exact reconstruction of replacement fields gives the grid OPE. Derivative induction extends it to arbitrary configurations, and bringing auxiliary scale heights together gives arbitrary $\varepsilon$-loss. Recursive replacements yield trees; weight-dependent normal Taylor subtraction makes contact kernels integrable, with partial collisions treated by finer partitions.

<a id="unit-steps"></a>

## 4. Steps

1. Extend biorthogonal probes degree by degree; average rotations and conjugations and remove lower degrees. [`Reader`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L17-L23).
2. Fuse nearby RG groups, retaining separated groups; obtain a degree-$t$ replacement with remainder gain $(a_m/a_k)^{t+1/16}$. [`funding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Prices/Circuit.lean#L64-L87).
3. Bound translated moments by chessboard roots; full phase support and Gelfand give norm control. [`Cards.carrying`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards/Pressure.lean#L98-L104).
4. Descend in degree from crude high-degree bounds; grid distance compensates the derivative degree increase. [`interpolated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Interpolate/Corridor.lean#L34-L47).
5. Telescope replacements over trees, merging children at the parent's rate and expanding others to sufficiently high auxiliary degree. This controls each node's truncation. [`Fusion.tariff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Fusion.lean#L97-L104).
6. Subtract weight-dependent normal Taylor jets; finer-partition induction handles partial collisions and sums dyadic shells. With $d_h=\sum_{i\in h}d_i$, $q_h=4(|h|-1)$, and $L_h=\max(0,d_h+1-q_h)$, subtraction leaves shell exponent $q_h+L_h-d_h\ge1$. [`glues_total`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Skies.lean#L59-L79).
7. Apply two-scale chessboard bounds to reflection-positive slab trains; choose levels with $a_k\ge c(r/|w|)^4$ to obtain $P=4(D+1)$. Iterated Schwarz removes the exterior cost. [`replicas`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Seats.lean#L119-L151).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

The $1/16$ gain margin comes from RG transport. Norm control ensures spectator and state uniformity; partial collisions require more than radial integrability. Estimates allow arbitrary $\varepsilon$-loss, without identifying logarithmic corrections.

<a id="unit-notation"></a>

## 6. Notation

$w(a)=\sum_i d_i$; $F_d$: degree-$d$ fields; $\mathcal A$: ground algebra; $M$: compressed word; $S^s$: correlation for $s\in X\sqcup\{\mathrm{mix}\}$, with $X$ the phase spectrum; $a_k$: lattice spacing; $\mathrm{cl}(n)$: device clearance; $K_g$: normal space of the $g$-diagonal.

<a id="unit-limitations"></a>

## 7. What remains unexplained

The internal polymer estimates and their constants, rotated comparisons, high-horizon tree replacement and partial-collision sector induction need fuller accounts. Device projections are not identified with Reader coefficients. Uniqueness, extraction independence, infinite-order convergence, contact positivity, contact Ward identities and perturbative agreement are not asserted.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/VII-4.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md), [IV.1](IV-1.md), [III.11](III-11.md), [III.1](III-1.md), [II.1](II-1.md), [II.2](II-2.md), [VIII.1](VIII-1.md), [III.16](III-16.md), [III.10](III-10.md), [V.1](V-1.md), [V.2](V-2.md), [III.9](III-9.md), [III.2](III-2.md).

**Referenced by:** [VIII.1](VIII-1.md), [III.2](III-2.md), [III.13](III-13.md), [VII.1](VII-1.md).

## Lean source

**Source allocation:** 10,243 attributed lines; 2,035 line-counted declarations; 2,808 assigned declaration names. Of the assigned names, 2,686 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- work package [`YM/OPE/Grouping/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Grouping), with [`YM/OPE/Replicas/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Replicas), [`YM/OPE/Columns/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Columns), [`YM/OPE/Trees/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Trees), [`YM/OPE/Sweep/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Sweep), [`YM/OPE/Eye/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye), [`YM/OPE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE), [`YM/OPE/Splitting/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting), [`YM/OPE/Prices/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Prices), [`YM/OPE/Schemes/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes), [`YM/OPE/Interpolate/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Interpolate), [`YM/OPE/Exchange/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange), [`YM/OPE/Rough/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Rough), [`YM/OPE/Log/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Log) — 4,584 lines.
- work package [`YM/Next/PHASE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE) — 838 lines.
- work package [`YM/Contacts/Harvest/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Harvest) — 687 lines.
- work package [`YM/Contacts/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts) — 676 lines.
- work package [`YM/Contacts/Normal/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Normal) — 658 lines.
- work package [`YM/OPE/Orbits/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits) — 579 lines.
- work package [`YM/Contacts/Score/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Score) — 568 lines.
- work package [`YM/Contacts/Layers/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Layers) — 459 lines.
- work package [`YM/Contacts/Solstice/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice) — 356 lines.
- work package [`YM/OPE/Cards/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards) — 274 lines.
- proof of [`outletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L120-L124) — 145 lines.
- work package [`YM/MultipleContact/Panel/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultipleContact/Panel) — 138 lines.
- work package [`YM/MultipleContact/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultipleContact) — 109 lines.
- work package [`YM/SharpGram/Prices/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Prices) — 103 lines.
- work package [`YM/MultipleContact/Multi/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultipleContact/Multi) — 38 lines.
- work package [`YM/Contacts/Transport/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Transport) — 31 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`Hierarchy.OperatorProductExpansion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L70-L80)
- [`constructed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L40)
- [`contactDistribution`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactBridge.lean#L14-L49)
- [`Hierarchy.Contacts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactSpec.lean#L12-L14)
- [`publicOPE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L68-L77)
- [`Bid.Bench`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L21-L24)
- [`Bid.Seats`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L27)
- [`CellHyp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L68-L79)
- [`Devices.clearance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Coherent.lean#L137-L139)
- [`stairs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Harvest/Aperture.lean#L25)
- [`Route.Authority`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Harvest/Reader.lean#L57)
- [`Route`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Harvest/Route.lean#L24-L45)
- [`Normal.taylor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Normal/Subtractions.lean#L68)
- [`Score/Formula.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Score/Formula.lean)
- [`takeRight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Score/Tape.lean#L56-L60)
- [`Thresholds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Gates.lean#L23-L28)
- [`installs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Gates.lean#L30-L36)
- [`sees`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Projection.lean#L28)
- [`Annulus`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Puncture.lean#L53)
- [`Resolution`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L23-L31)
- [`Sunshine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L33-L40)
- [`commissions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L44-L45)
- [`MultipleLight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L52-L63)
- [`celestial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L78-L79)
- [`Claim`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Scaling.lean#L61)
- [`totalTestOrder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Skies.lean#L48)
- [`Backdrop.Eligible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Strict.lean#L48-L52)
- [`Charge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Venue.lean#L30-L31)
- [`majorKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Venue.lean#L59)
- [`global_charge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Venue.lean#L62-L63)
- [`Devices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Tomography.lean#L17-L26)
- [`Transport.harmonic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Transport/Blend.lean#L70-L71)
- [`SystemBasis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Transport/Register.lean#L47-L51)
- [`real_basis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Transport/Register.lean#L52-L61)
- [`Independent.Core.point`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L49-L63)
- [`detector_exists`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultipleContact/Detector.lean#L28-L35)
- [`Next/EXTRACTION/Base.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean)
- [`Next.Phase.vacuum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Assembly.lean#L69-L73)
- [`Gapped`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Passage.lean#L84-L87)
- [`Next.Phase.Single`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Roots.lean#L25-L26)
- [`rates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Seats.lean#L55-L77)
- [`contacts_on`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L14-L24)
- [`NestedOPE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L128-L138)
- [`WilsonExistence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L143-L155)
- [`SeparatedOPE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L24-L48)
- [`Cards.plant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards/Literal.lean#L107-L127)
- [`Cards.PaidAt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards/Literal.lean#L28-L31)
- [`Cards.Hall`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards/Mix.lean#L45-L51)
- [`Cards.mixed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards/Mix.lean#L57-L94)
- [`Cards.pressure`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards/Pressure.lean#L89-L92)
- [`groundError`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Arrangement.lean#L26-L27)
- [`ground_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Arrangement.lean#L49-L52)
- [`arrangement_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Arrangement.lean#L68-L71)
- [`refine_geometry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Regime.lean#L17-L22)
- [`WithinRoom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Regime.lean#L24-L26)
- [`ClearOf`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Regime.lean#L28-L30)
- [`loglife`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Regime.lean#L35-L37)
- [`room_regime`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Regime.lean#L38-L42)
- [`free_clear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Regime.lean#L43-L47)
- [`mirrorMatch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Admire.lean#L47-L62)
- [`civic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Civic.lean#L32-L46)
- [`viewing_admits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Civic.lean#L63-L87)
- [`see_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Extract.lean#L64-L66)
- [`admitted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Fast.lean#L22-L31)
- [`phase_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Fast.lean#L49-L54)
- [`viewer_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Fast.lean#L55-L57)
- [`Survival`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Remit.lean#L42-L44)
- [`price_plot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Remit.lean#L47-L65)
- [`glance_contract`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Views.lean#L67-L68)
- [`Height`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Height.lean#L18-L20)
- [`found`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Height.lean#L58-L64)
- [`leap_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Interpolate/Leap.lean#L20-L27)
- [`cloud_jump`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Interpolate/Leap.lean#L39-L49)
- [`Tree.toll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Actual.lean#L18-L19)
- [`Composite.stacked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Composite.lean#L115)
- [`Composite.token`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Composite.lean#L33-L35)
- [`Composite.nShot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Composite.lean#L93-L95)
- [`Nesting.uniform`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Endpoint.lean#L31-L36)
- [`Tree.Tapered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Geometry.lean#L21-L23)
- [`Tree.Relative`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Grove.lean#L99-L103)
- [`CoefIntegral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Integration.lean#L66-L71)
- [`Quantified.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Quantified.lean)
- [`Accept`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Quantified.lean#L15-L18)
- [`Limits.coe_power`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Quantified.lean#L43-L51)
- [`Limits.tested_power`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Quantified.lean#L54-L71)
- [`Tree.nestPrice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Weights.lean#L102-L103)
- [`averageV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Average.lean#L22)
- [`knife`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L49)
- [`cutTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L51)
- [`reconstruct`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L66-L68)
- [`kills_lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L70-L79)
- [`stratum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L83)
- [`fresh_bridge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Fee.lean#L45-L50)
- [`fresh`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Fresh.lean#L15)
- [`fresh_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Gain.lean#L21-L30)
- [`balance_rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Gain.lean#L57-L72)
- [`probability_mixtures`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L52-L58)
- [`Orbits.produce`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L67-L68)
- [`Orbits.foundation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L70-L77)
- [`FitsOn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Profile.lean#L17)
- [`JointEstimate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Profile.lean#L53-L57)
- [`checkReal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Real.lean#L37-L39)
- [`checkValue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Real.lean#L43-L44)
- [`checkReal_fixed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Real.lean#L81-L84)
- [`coefficient_rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Separated.lean#L17-L22)
- [`algebra_rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Separated.lean#L30-L35)
- [`coefficient_separated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Separated.lean#L64-L69)
- [`quantitative_separated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Separated.lean#L71-L85)
- [`Reader.basis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Stars.lean#L81)
- [`coef`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/System.lean#L18-L19)
- [`algebraError`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/System.lean#L61-L63)
- [`PriceAt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Prices/Circuit.lean#L52-L59)
- [`RateLE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Rate.lean#L23-L24)
- [`Package`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Replicas/Budget.lean#L13-L16)
- [`TableTickets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Rough/Factory.lean#L18-L27)
- [`coefficient_rough`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Corridor.lean#L22-L25)
- [`common_rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Corridor.lean#L37-L41)
- [`grid_coeff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Ladder.lean#L34-L42)
- [`grid_remainder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Ladder.lean#L53-L73)
- [`at_grade`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Read.lean#L37-L52)
- [`det_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Read.lean#L68-L80)
- [`group_coeff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Travel.lean#L24-L30)
- [`group_remainder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Travel.lean#L31-L41)
- [`through_final`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Single.lean#L32-L37)
- [`SingleSubpower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Single.lean#L40-L51)
- [`reachReads`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Basis.lean#L37-L42)
- [`Prescription`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Basis.lean#L44-L46)
- [`SignedOff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Basis.lean#L59-L61)
- [`Coherent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Basis.lean#L63)
- [`Prescription.ope`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Detector.lean#L80)
- [`highVan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Legacy.lean#L32-L35)
- [`startRows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Needle.lean#L44-L53)
- [`sumAll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Observe.lean#L27-L31)
- [`AllShapes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Subpower.lean#L39-L45)
- [`Spread.radius`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L109)
- [`producer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Train.lean#L116-L123)
- [`Drive.against`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Train.lean#L20-L60)
- [`OS.QRead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Train.lean#L70-L71)
- [`Org.Grill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L121-L123)
- [`Retain.bit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Detect.lean#L22-L58)
- [`R2IGoals.fromFunded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L150-L167)
- [`Run.extractible17`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L60-L90)
- [`Seed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26)
- [`B17.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B17.lean#L71-L90)
- [`YM/SharpGram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-vii-4-1"></a>

- **K-VII.4.1** [`compact_deviation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Normal/ShellTest.lean#L43-L72) *(numbered result)* — Uniform jet bound for the projection deviation of a rescaled test function on a compact set in terms of the original jet budget.

<a id="k-vii-4-2"></a>

- **K-VII.4.2** [`nextRows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Needle.lean#L57-L92) *(numbered result)* — Any prescription signed off at level n extends to one signed off at level n+1 by adding a ring of tests.

<a id="k-vii-4-3"></a>

- **K-VII.4.3** [`cutoff_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Roots.lean#L125-L179) *(key result)* — On coextensive coarse and fine link tilings, the lattice moment of products of main and exterior factors in separated cells is bounded by A^{#main} B^{#exterior}.

<a id="k-vii-4-4"></a>

- **K-VII.4.4** [`point_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Passage.lean#L187-L229) *(key result)* — For gapped configurations, the continuum correlation of a point word is bounded by A to the number of main insertions times B to the number of exterior insertions.

<a id="k-vii-4-5"></a>

- **K-VII.4.5** [`travel_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Trains.lean#L273-L304) *(key result)* — The Gram pairing of a reflected train of a main word repeated 4q times with an exterior word is bounded by B^{2|v|} A^{4q|w|}, independent of q in exterior cost.

<a id="k-vii-4-6"></a>

- **K-VII.4.6** [`hitB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Grouping/Shift.lean#L54-L93) *(numbered result)* — Hit-budget bounds persist under replacing contents by enlarged sets, at a multiplied cost factor.

<a id="k-vii-4-7"></a>

- **K-VII.4.7** [`outletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L120-L124) *(major result)* — A functional killing the sector derivatives to the given order releases estimates for outputs of weight at most three.

<a id="k-vii-4-8"></a>

- **K-VII.4.8** [`seats`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Seats.lean#L154-L160) *(key result)* — The quantum read estimate holds on covered positive sub-widths chosen before the exterior, establishing the Seats property.

<a id="k-vii-4-9"></a>

- **K-VII.4.9** [`funding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Prices/Circuit.lean#L64-L87) *(numbered result)* — At ordered heights there exist rate functions such that the subpower price estimate holds eventually.

<a id="k-vii-4-10"></a>

- **K-VII.4.10** [`joins`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Sweep/Camp.lean#L54-L94) *(numbered result)* — Under suitable smallness and spacing hypotheses, a product of several observables at scales on a multiscale path has a label at which the combined configuration function lies in the interior of the chamber.

<a id="k-vii-4-11"></a>

- **K-VII.4.11** [`Ballet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Sweep/Ballet.lean#L35-L76) *(key result)* — Across a compact window of scales, there is a coefficient with format and remainder bounds serving the product of replicated pieces, giving the main estimate.

<a id="k-vii-4-12"></a>

- **K-VII.4.12** [`for_plot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Extract.lean#L25-L32) *(numbered result)* — At suitable heights and separated grid points, there exist rates and labels such that survival of a configuration holds eventually with controlled exponential decay.

<a id="k-vii-4-13"></a>

- **K-VII.4.13** [`early_rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Corridor.lean#L68-L74) *(numbered result)* — The difference between the actual observable and its truncated expansion to order N has a rate bound given by a linear exponent in N.

<a id="k-vii-4-14"></a>

- **K-VII.4.14** [`provided`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L65-L69) *(key result)* — If the rotation matches the sector turns and services hold, the multiple-collision light (distributional) property holds.

<a id="k-vii-4-15"></a>

- **K-VII.4.15** [`carrying`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards/Pressure.lean#L98-L104) *(numbered result)* — If the deck norms are bounded by c^{2m} for all m eventually, then the cluster norm is at most c.

<a id="k-vii-4-16"></a>

- **K-VII.4.16** [`everything`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Subpower.lean#L47-L48) *(key result)* — Services together with a coherent prescription imply all fixed-horizon shape demands.

<a id="k-vii-4-17"></a>

- **K-VII.4.17** [`ranch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Replicas/Antique.lean#L33-L46) *(key result)* — Under many hypotheses on slots and cells, an arc structure holds for the pushed-forward system with replicated slots.

<a id="k-vii-4-18"></a>

- **K-VII.4.18** [`inductionLive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Sweep/Induct.lean#L93-L117) *(key result)* — Across intermediate scales one can regroup indices so a live structure persists with compensated progress bounded by the product of weights.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

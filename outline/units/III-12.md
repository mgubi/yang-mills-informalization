# III.12. Bounds uniform in the volume and convergence as the spacing tends to zero

*Part III — Ultraviolet construction (renormalization group).*

Combines bounds uniform in volume with fixed-volume convergence as the lattice spacing tends to zero.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/III-12.md) · [← Previous: III.11](III-11.md) · [Next: III.13 →](III-13.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** unit III.12, [`YM/FullVolume/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume). **Size:** 18,973 lines in the source allocation.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

**Proposition III.12.1 (kernel bounds uniform in the volume).** Let $R$ be a run for a simple gauge group $G$, with Wilson family $C$. Fix $n$, labels $v_i\in\mathrm{Lab}_{d_i}$, a finite list $\lambda$ of pairs (slot, axis), and $r>0$. There are $B\ge0,N_0$ such that, for every $N\ge N_0$, every $p$ and every integer configuration $x$ with $a_N\mathrm{dist}(x_i,x_j)\ge r$ for $i\ne j$,
$$\left|\Delta_\lambda\mathbb E_{N,p}\prod_{i=1}^nO_{N,p}(v_i;x_i)\right|\le B.$$
Each difference acts in its indicated slot; distance is periodic $\ell^\infty$ distance. Constants may depend on $R,n,(v_i),\lambda,r$, but not $p$.
*Status:* theorem for every run. *Lean:* [`genuine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L62).

**Proposition III.12.2 (derivative closure).** For a run with simple $G$, every sequence $w_{N,p}\in\mathrm{Lab}_d$ bounded by some $K\ge0$ eventually in the mesh, and every finite axis list $l$, the trial $\Delta_lO(w)$ is funded.
*Status:* theorem. *Lean:* [`Run.financed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L24-L33).

**Proposition III.12.3 (closure lemma).** Fix $d$. Assume a consistent Wilson family $C$ and:

1. the centred budget;
2. the scale-selection data;
3. sound sections $V_e$ and linear automorphisms $W_e$ of abstract labels for every degree $e$, satisfying the section, symmetry and exact local identities described below, with [`Portfolio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L51-L58);
4. a presentation $\pi$ and the full [`section-comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Canopy.lean#L30-L32) data, including quantitative comparison with $V_e$, identification of $\ker\pi$ with the dressed equation ideal, and $\sup_{N,p}\|\pi_{N,p}\|<\infty$ in each degree;
5. degree-$d$ detector rows with the placement and bounded-lift conditions and short-distance comparison of [`VitalRank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L49-L52).

If $F$ is funded, every $F_{N,p}(o)$ is continuous in the gauge field, $l$ is an axis list, and $x$ is a degree-$d$ coin with $O(x)-\Delta_lF$ owed at cost $u_{N,p}\to0$ in the mesh, then $\Delta_lF$ is funded.
*Status:* conditional theorem; a run's ties and short-distance estimates supply these hypotheses. *Lean:* [`improved`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L69-L78).

**Proposition III.12.4 (uniform rank detection).** Under hypotheses 1–5 of III.12.3, fix $l$. For all large $k$ and all sufficiently small $b>0$, there is $Z\ge0$ such that, eventually in the mesh,
$$\|\pi_{N,p}x\|\le Z\|\mathcal P_{k,b,l;N,p}(\pi_{N,p}x)\|\quad(x\in\mathrm{Lab}_d).$$
The detector takes correlations with fixed partners and successively averages the first slot in the directions of $l$ over lengths between $b$ and $2b$; repeated axes give repeated averages.
*Status:* conditional theorem. *Lean:* [`trained`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L51-L91).

**Proposition III.12.5 (negligible equation labels).** Assume consistency of $C$ and hypotheses 2–4 of III.12.3. Every degree-$d$ coin $x$ with $\pi_{N,p}x_{N,p}=0$ for all $(N,p)$ has $O(x)$ owed at cost $a_N^{1/32}$.
*Status:* theorem. *Lean:* [`banked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Silent.lean#L105-L115).

**Proposition III.12.6 (coupling power-series bounds).** Let $R$ be a run with a [`Campaign`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stage/Crests.lean#L20-L27), [`Pillars`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Vendee.lean#L22-L27) and bounds [`Sky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Oz.lean#L22-L28). Let $\bar\beta$ be the target level-0 coupling and $w>0$ the fan width. Fix $p$, an $n$-tuple of labels $V_0$ and $r>0$. There exist $b,m\in\mathbb N$, $m\ge1$, $B\ge0$ and $c\in(0,1]$ such that the following holds for every $m\le j<N$ and $a\in[-1,1]$.

Take any family $F(s)$, $s\in[-1,1]$, of admissible campaign members with common block sequence, sections and labels, whose level-0 inverse coupling at $(N,p)$ is $\bar\beta+was$. For every $r$-separated configuration $o$ in $\Lambda_{j+1,p}$ embedded into $\Lambda_{N,p}$,
$$\mathbb E^{F(cs/2)}_{N,p}\prod_iO(V_{0,i};o_i)=\sum_{i\ge0}P_is^i,\qquad \sum_i|P_i|\le B a_{j+1}^{-b}\quad(s\in[-1,1]).$$
Expectation and representatives belong to the attached auxiliary transfer family; its correlations agree with the successful trajectory at positive cutoffs. Constants depend only on campaign data, $p,V_0,r$.
*Status:* conditional theorem; VIII.1 supplies the campaign records. *Lean:* [`Face.financed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Scrap.lean#L40-L51).

**Proposition III.12.7 (fixed-volume Cauchy property).** Fix simple $G$, one RG construction with stationary-path bounds, free amplification, observable-transfer bounds and common reference sections, and assume its uniform perturbation estimates. Fix $p$. Let $C_n$ come from histories at cutoffs $f(n)\to\infty$. Assume:

- Each history is a selected branch from level $k$, agreeing with a fixed kinetic path; stationary kinetic paths converge with strict reserve in their admissible bounds. At every fixed $i\ge k$, inverse couplings are Cauchy and activities have Cauchy representatives in the common weighted space.
- Each degree used has reference level $t(d)\ge k$ with $d+3\le J(t(d))$; transfer data are based at its reference section and compose branch transfers.
- For every sufficiently large base level $r$, multiscale remainder bounds hold for all sufficiently large $n$. Label allowances $\zeta(d,r)$ are eventually positive for each degree used; occupancy allowances are at least $1$ at every level.

For every finite label list and every configuration $x$ with $x_i-x_j\notin L_p\mathbb Z^4$ for $i\ne j$, lying exactly on some common lattice $x=a_rz$, $z$ integer, the cutoff-$f(n)$ correlations at coordinatewise ceiling addresses of $x$ are Cauchy.
*Status:* conditional theorem. A run with campaign, pillars, fixed-level convergence and uniform perturbation estimates gives $C_n=C$, $f(n)=n$. *Lean:* [`Rising.cinema`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Seat.lean#L37-L45).

**Proposition III.12.8 (positional ultraviolet limit).** Let $C$ be a Wilson family and $e$ a strictly increasing mesh sequence. Assume the kernel-bound conclusion of III.12.1 and that ceiling-address correlations are Cauchy along $e$ whenever $x_{i\mu}-x_{j\mu}\notin L_p\mathbb Z$ for every $i\ne j$ and axis $\mu$. For every $p,n$ and label list there is a function $f$ on $(\mathbb R^4)^n$, smooth on $\mathrm{NoHit}_p=\{x:x_i-x_j\notin L_p\mathbb Z^4\ (i\ne j)\}$, with these properties:

- For every smooth compactly supported $t$ supported off collisions and strictly inside the centred period cell in every coordinate, smeared lattice sums converge along $e$ to $\int tf$.
- Fix any finite list of coordinate directions (slot, axis), with integers $q_-,q_+\ge0$, $q_-+q_+>0$ in each direction, using the stencil $[F(x+q_+e_\mu)-F(x-q_-e_\mu)]/[(q_-+q_+)a_N]$. Write $g$ for the corresponding iterated derivative of $f$. Along $e(s_i)$ for every $s_i\to\infty$, these differences at lattice configurations whose physical positions converge to $x\in\mathrm{NoHit}_p$ converge to $g(x)$. Their multilinear interpolations converge locally uniformly there. For every test $t$ above, $tg$ is integrable and smeared differences converge to $\int tg$.

*Status:* conditional theorem; the run hypotheses following III.12.7 give the full sequence $e(s)=s$. *Lean:* [`positioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L42-L47); full-sequence instance [`Campaign.realUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L45).

<a id="unit-inputs"></a>

## 2. What it uses

- **II.1–II.2, III.14:** labels, representatives, consistency and the [`Run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48) record, whose ties supply the inputs of III.12.3.
- **III.2, III.11:** numerical parameters, scale selection, section comparisons, regularity, local matching and short-distance estimates; the centred budget [`Wcmain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L38-L40) states: for every degree $d$, $R>0$ and $\varepsilon>0$, there is $A\ge0$ such that for every $m\ge t(d)$, eventually in the mesh, every $\|v\|\le R$ and site $o$ give an observable localized in the cell centred at $o$, with root at most $A a_m^{-d-\varepsilon}$.
- **IV.1:** [`Seam`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L14-L19) gives chessboard and root triangle inequalities; positional Lipschitz bounds and dense-set convergence. (The offset comparison comes from II.1.)
- **III.6, III.8–III.10:** histories, selected branches, stationary paths and transfer estimates. **VIII.1:** [`Winter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glide/Vac.lean#L31-L63) supplies fixed-level convergence, kinetic reserve and free amplification; assembly supplies uniform perturbation inputs.
- **Standard results:** Wilson reflection positivity (Osterwalder–Seiler); chessboard estimates and seminorm (Fröhlich–Israel–Lieb–Simon, Fröhlich–Lieb, Shlosman, Biskup); summation by parts, finite-dimensional injectivity stability, Arzelà–Ascoli, Taylor's theorem, absolutely convergent power series and dominated convergence. Volume-uniform control of effective actions: Balaban (1984–1989).

The section hypotheses require the prescribed polynomial realization and finite regularity bounds; dressings commute with signed lattice symmetries and conjugation. Dressed equation labels have zero Wilson expectation against every bounded measurable spectator depending only on links beyond a fixed lattice distance, for every nonzero inverse coupling and sufficiently large torus; spectators need not be gauge invariant.

Full section-comparison data include terminal-coordinate automorphisms $A_{d;N,p}$, auxiliary columns and sub-power $E_d(N)$. Eventually, uniformly in $p$, $A_{d;N,p}$ is the symmetry-averaged column map and its inverse increases coefficient size by at most $2$. For each column and its signed or conjugated versions, the centred root of the auxiliary-minus-chosen section evaluation is at most $C_d(m,k)E_d(N)a_N^{1/8}$ for every admissible $k<N$ and $m\le N$; scale selection chooses $k$ for each large $m$. The kernel is the image of the Maxwell equation ideal under dressing, threshold rescaling, terminal map and $A_{d;N,p}$. Projection symmetries and finite-cutoff equation and difference comparisons are also required.

Detector rows use test configurations with distinct projections on every axis in a box of side $a_{\mathrm{width}(k)}$, and lifted partner labels bounded uniformly in $N,p$ and finite indices for fixed $k$. Their short-distance cumulant comparisons approach the prescribed free Maxwell tests.

<a id="unit-strategy"></a>

## 3. Strategy

Normalized differences introduce $a_N^{-1}$, beyond the centred budget for bounded labels. Local matching replaces each differenced observable by a primary with sub-power inverse terminal coordinates and vanishing root error. Averaged partner correlations bound its projected physical label through an injective free Maxwell detector; equation labels contribute a vanishing root. This funds differences, and chessboard estimates bound their separated products.

At fixed volume, compare full correlations with scalar-normalized correlations at an intermediate level. Fixed-level convergence makes the latter Cauchy, while an exponentially small tail in the budget radius tends to zero. Positional bounds extend convergence from common-lattice configurations; Taylor estimates identify derivatives. For coupling dependence, polynomial coefficient bounds and smaller parameter intervals turn level differences into summable coefficient errors.

<a id="unit-steps"></a>

## 4. Steps

1. **Match differences.** For a run with simple $G$ and an eventually bounded degree-$d$ label sequence $w$, normalized differences preserve regularity with sub-power bounds after increasing degree. Local matching gives a degree-$(d+|l|)$ coin $x$ with $O(x)-\Delta_lO(w)$ owed at $a_N^{1/16}$. [`prepared_rows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Paid.lean#L47-L49).
2. **Remove equation labels.** Under III.12.5's hypotheses, auxiliary equation sections have zero root: their exact distant-spectator identity annihilates the reflected product. Section comparison leaves cost $a_N^{1/32}$. [`banked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Silent.lean#L105-L115).
3. **Detect projected labels.** Under III.12.3's hypotheses, averaging differences telescopes and bounds tests by $(2/b)^{|l|}$ times undifferenced correlations. Short-distance comparison approaches the injective free Maxwell matrix; finite-dimensional stability and the rank bound give III.12.4. [`trained`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L51-L91).
4. **Close the budget.** Under III.12.3's hypotheses, set $X=\pi x$. Apply negligible-equation control to $(x-X)/(1+\|X\|)$, obtaining $\|X\|\le Zc+\tfrac12(1+\|X\|)$. Thus $X$ is bounded; the centred budget funds $O(X)$, and vanishing errors fund the desired difference. [`cap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L23-L63), [`improved`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L69-L78).
5. **Bound kernels.** Once all fixed-label differences are funded, place separated insertions in distinct cells with interior margins; offset comparison and the chessboard inequality bound products. Slot differences act on their insertions, giving III.12.1. [`funding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L42-L61).
6. **Control coupling series.** Under III.12.6's campaign hypotheses, composed transfer bounds give coefficient sums polynomial in $a_{j+1}^{-1}$. With fixed-level convergence and perturbation inputs, interval reduction converts real $O(a_j)$ level differences to summable $C\sqrt{a_j}$ coefficient bounds. For fixed $p$, labels, compact $K\subset\mathrm{NoHit}_p$ and $q\in\mathbb N$, this gives a positive parameter width independent of cutoff and a neighbourhood of $K$ with limits $C^q$ in position and analytic in the complex parameter; kernels with spatial stencils of length at most $q$, their interpolations and admissible smeared sums have analytic continuations whose parameter derivatives of every fixed order converging uniformly on compact subdiscs and compact spatial subsets. [`Fan.standing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Atlas.lean#L94-L104).
7. **Take the mesh limit.** Under III.12.7's hypotheses, fixed-level effective insertions and normalized densities are uniformly Cauchy; Haar integration and positive partition-function bounds give Cauchy correlations. For large fixed $j$, the full correlation differs by at most $2F_0e^{-B_j/64}$, uniformly in sufficiently large cutoffs, with $F_0$ independent of $j$ and cutoff and $B_j\to\infty$. [`Sever.echoes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Peat.lean#L41-L64), [`Rising.arrives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L73-L103).
8. **Recover spatial derivatives.** Under III.12.8's hypotheses, equicontinuity extends dense-set convergence. Taylor comparison with differences over a fixed physical interval identifies successive derivative limits; stencil averaging, multilinear interpolation and dominated convergence give the remaining conclusions. [`positioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L42-L47).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

Matching controls inverse terminal coordinates; rank detection must bound physical labels while section comparison controls the projection kernel. Bounds are volume-uniform, but convergence fixes $p$ first. Every derivative order is fixed before choosing the cutoff threshold; analytic widths may depend on volume, compact spatial set and derivative order. The additive action scalar need not converge. Collision extension belongs to VII.4.

<a id="unit-notation"></a>

## 6. Notation

- $a_N=(\ell_0\cdots\ell_{N-1})^{-1}$; $\Lambda_{N,p}$ has physical period $L_p$. $O(v;o)$ represents $v\in\mathrm{Lab}_d$; $\mathbb E_{N,p}$ is Wilson expectation.
- Eventually in the mesh: all $N\ge N_0$, all $p$; $N_0$ may depend on a fixed coarse level. Sub-power growth means $\|w_{N,p}\|\le a_N^{-\varepsilon}$ eventually for every $\varepsilon>0$. A [`Coin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L146-L147) is a label sequence $x$ with $\|\tau_{d;N,p}^{-1}x_{N,p}\|$ of sub-power growth, where $\tau$ is the terminal coordinate isomorphism.
- $\Delta_\mu F(o)=[F(o+e_\mu)-F(o)]/a_N$; lists indicate iteration. A trial is a site-indexed family of gauge-field functions; it is local if eventually translation covariant, gauge invariant, measurable, bounded and supported on one fixed finite link stencil.
- $R_m(H)$ is the absolute reflected-product expectation to power $1/(L_p/a_m)^4$ on centred cells of physical side $a_m$, conjugating odd reflections. A local trial is **funded** if, for all large $m$, eventually in the mesh, its value at $0$ is localized in the central cell and has root at most $u(m)$ independent of $N,p$; **owed** replaces $u(m)$ by a cost $v(N,p)$ independent of $m$.
- $\pi_{N,p}$ is an idempotent label map; its dressed-equation kernel is an additional hypothesis. Ceiling addresses are $\alpha_N(x)_{i\mu}=\lceil x_{i\mu}/a_N\rceil$. $B_j=\lceil(\log\hat\beta_j)^2\rceil$ is the budget radius.

<a id="unit-limitations"></a>

## 7. What remains unexplained

The local matching estimate, construction of auxiliary equation sections and relation to lattice Schwinger–Dyson identities remain imported or unverified here. One-step transfer capacity, intermediate weighted analytic estimates, spatial derivative identification for analytic limits, and multiscale remainder and omission bounds need their source analyses.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/III-12.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [III.1](III-1.md), [III.10](III-10.md), [I.1](I-1.md), [VIII.1](VIII-1.md), [II.1](II-1.md), [III.2](III-2.md), [III.16](III-16.md), [III.11](III-11.md), [III.9](III-9.md), [II.2](II-2.md), [III.5](III-5.md), [IV.1](IV-1.md), [III.15](III-15.md), [III.6](III-6.md), [III.7](III-7.md), [V.2](V-2.md), [III.4](III-4.md).

**Referenced by:** [VIII.1](VIII-1.md), [III.2](III-2.md), [III.14](III-14.md).

## Lean source

**Source allocation:** 18,973 attributed lines; 3,138 line-counted declarations; 4,449 assigned declaration names. Of the assigned names, 4,315 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- proof of [`pricedB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/BarsP.lean#L79-L96) and the results it chains to — 3,547 lines.
- work package [`YM/FullVolume/Panel/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Panel), with [`YM/FullVolume/Umbra/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Umbra), [`YM/FullVolume/Rank/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rank) — 1,761 lines.
- work package [`YM/FullVolume/E6/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/E6) — 1,564 lines.
- work package [`YM/FullVolume/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume) — 1,519 lines.
- work package [`YM/FullVolume/Spiral/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral) — 1,049 lines.
- work package [`YM/FullVolume/Mark/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Mark) — 948 lines.
- work package [`YM/FullVolume/Florid/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Florid) — 919 lines.
- work package [`YM/FullVolume/Luna/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Luna) — 766 lines.
- work package [`YM/FullVolume/Sector/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sector) — 743 lines.
- work package [`YM/FullVolume/Sym/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sym) — 676 lines.
- work package [`YM/FullVolume/Fields/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields) — 648 lines.
- work package [`YM/FullVolume/Amp/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Amp) — 640 lines.
- work package [`YM/FullVolume/Ray/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Ray) — 554 lines.
- work package [`YM/FullVolume/Glitz/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glitz) — 535 lines.
- work package [`YM/FullVolume/Table/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Table) — 371 lines.
- work package [`YM/FullVolume/Shroud/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Shroud) — 369 lines.
- work package [`YM/FullVolume/Poesy/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Poesy) — 351 lines.
- work package [`YM/FullVolume/Gain/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gain) — 280 lines.
- work package [`YM/FullVolume/Orbit/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Orbit) — 263 lines.
- work package [`YM/FullVolume/C/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/C) — 259 lines.
- work package [`YM/FullVolume/Renew/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Renew) — 188 lines.
- work package [`YM/FullVolume/Canvas/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas) — 144 lines.
- work package [`YM/FullVolume/Gables/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables) — 140 lines.
- work package [`YM/FullVolume/Auvi/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Auvi) — 117 lines.
- work package [`YM/FullVolume/Relay/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay) — 110 lines.
- work package [`YM/FullVolume/Artes/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Artes) — 97 lines.
- work package [`YM/FullVolume/Rise/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rise) — 96 lines.
- work package [`YM/FullVolume/Roll/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll) — 76 lines.
- work package [`YM/FullVolume/Tess/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess) — 52 lines.
- work package [`YM/FullVolume/Nectar/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Nectar) — 51 lines.
- work package [`YM/FullVolume/Regent/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Regent) — 42 lines.
- work package [`YM/FullVolume/Dusk/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Dusk) — 29 lines.
- work package [`YM/FullVolume/Fares/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares) — 28 lines.
- work package [`YM/FullVolume/Reel/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Reel) — 16 lines.
- work package [`YM/FullVolume/Stage/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stage) — 11 lines.
- work package [`YM/FullVolume/Antenna/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Antenna) — 9 lines.
- work package [`YM/FullVolume/Phases/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Phases) — 5 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`laws`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L21-L24)
- [`Columns.Trials`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L53-L66)
- [`center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L34-L40)
- [`seamless`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L81-L84)
- [`rootTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226-L227)
- [`centeredBudget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L21-L23)
- [`stepTotal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L66-L103)
- [`NoHit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Patch.lean#L25-L26)
- [`address`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Round.lean#L18)
- [`growFrom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Tame.lean#L35-L97)
- [`Amp.give`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Amp/Blank.lean#L16-L39)
- [`cohort`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cohort.lean#L39-L66)
- [`FullVolume.financed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cohort.lean#L68-L71)
- [`Run.ramp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L55-L60)
- [`Run.Ties`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L65-L71)
- [`Run.again`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L73-L75)
- [`realized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L83-L95)
- [`gKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L15-L16)
- [`actuate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L27-L45)
- [`FixedBounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L50-L52)
- [`Confluence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Basin.lean#L10-L12)
- [`Rising`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L19-L22)
- [`Rising.flooded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L31-L35)
- [`hail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L57-L61)
- [`creditP`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L62-L63)
- [lies exactly on a common lattice](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Eves.lean#L12)
- [`Campaign.sees`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L30-L38)
- [`Campaign.purchased`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L40-L44)
- [`absolute`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Seat.lean#L31-L33)
- [`brisk`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Sever.lean#L16)
- [`limitVault`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L29-L33)
- [`ships`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L51-L53)
- [`Rising.latter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L57-L66)
- [`Spending`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Atlas.lean#L85-L91)
- [`from_spec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L117-L126)
- [`Final.Jewel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L133-L149)
- [`Final.july`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L154-L164)
- [`bareTrial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L70-L77)
- [`Travel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L84-L99)
- [correlations agree with those of the auxiliary transfer families](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Real.lean#L71-L73)
- [`Hearthside`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fire.lean#L17-L20)
- [`dagger`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Forge.lean#L28-L49)
- [`ahead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Forge.lean#L60-L72)
- [`Helmet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Honors.lean#L30-L35)
- [`Branch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Major.lean#L30-L33)
- [`ask`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gain/Resolve.lean#L72)
- [`offers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glide/Vac.lean#L65-L89)
- [`farther`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L16-L17)
- [`hops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L19-L21)
- [`Stencil`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L29)
- [`Tucked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L47-L49)
- [`Tucked.up`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L60-L75)
- [`Tucked.farther`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L77-L95)
- [`Tucked.hops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L97-L101)
- [`sweep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L17-L19)
- [`weighed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L21-L47)
- [`display`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L50)
- [`focus`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L21)
- [`gaugesFull`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L24-L46)
- [`siblingsPrice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L80-L83)
- [`warded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L86-L101)
- [`fixed_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L65-L67)
- [`ocean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Ocean.lean#L41-L75)
- [`studded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Paid.lean#L23-L29)
- [`readyCoin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Paid.lean#L35-L46)
- [`interpolated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Panes.lean#L52-L53)
- [`PositionsUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L25-L36)
- [`printed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L52-L57)
- [`Ray.sun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Ray/Gain.lean#L22)
- [`localLip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Region.lean#L42-L54)
- [`taylor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Region.lean#L58-L77)
- [`intervalClock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Budget.lean#L34)
- [`aperture`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Summary.lean#L62-L68)
- [the same file](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean)
- [`Affords.recurses`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L107-L110)
- [`Funded.sub`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L116-L118)
- [`Funded.primaries`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L119-L128)
- [`Affords`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L19-L22)
- [`Owed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L24)
- [`Funded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L28)
- [`Affords.every`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L39-L60)
- [`Affords.enlarged`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L61-L62)
- [`Affords.sub`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L63-L79)
- [`Affords.scalar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L80-L87)
- [`hole`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Silent.lean#L61-L90)
- [`same_delta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Skein.lean#L40-L45)
- [`rounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Skein.lean#L77-L87)
- [`reserve_abs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Skein.lean#L89-L101)
- [`mesh`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L13)
- [`Sluggish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L37-L38)
- [`slash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Chrome.lean#L58)
- [`verso`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Chrome.lean#L65)
- [`PaidBeam`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Dome.lean#L31-L32)
- [`firm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stand.lean#L20-L39)
- [`rank_upper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stand.lean#L42-L56)
- [`true_lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stand.lean#L73-L83)
- [`Cluster`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Strings.lean#L55-L58)
- [`reachable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Strings.lean#L90-L92)
- [`traceS`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Lease.lean#L88-L96)
- [A polynomial coefficient estimate](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Pier.lean#L25-L42)
- [`astronomer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Stream.lean#L54-L77)
- [`charted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Tan.lean#L104-L109)
- [Cauchy convergence of the real values](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Zoom.lean#L43-L48)
- [`returns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L21-L31)
- [`circulating`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L38-L54)
- [`Purchased`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L56-L58)
- [`established`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L60-L61)
- [`from_previous`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L71-L125)
- [`rampant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Unlatch.lean#L38-L76)
- [`monitor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L14)
- [`scores_hops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L43-L51)
- [`assay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L86)
- [`probe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L88)
- [`slopeConstant_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176)
- [`scale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L115)
- [`tent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Balloon.lean#L22-L47)
- [`coastwise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Baskets.lean#L36-L67)
- [`gardena`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Gardens.lean#L19-L40)
- [`Presentation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L39-L41)
- [`Purchases`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bought.lean#L68-L84)
- [scale-selection conditions](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Overlay/Prior.lean#L15-L18)
- [`gamma`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Estimate.lean#L68)
- [`offset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L232-L270)
- [`flight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Rates.lean#L40)
- [`charged`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L121-L126)
- [`offmask`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L133-L151)
- [`unpriced`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L25-L26)
- [`clothed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L28-L29)
- [`section_bounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L90-L118)
- [`Local`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Stencils.lean#L20-L22)
- [`MicroAt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Micro.lean#L29-L31)
- [`jewelOf17`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L102-L111)
- [`radiusB_tendsto`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E01.lean#L210-L211)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-iii-12-1"></a>

- **K-III.12.1** [`stage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Amp/Blank.lean#L42-L43) — A function analytic along a dense isometric leg has a multilinear power-series expansion with geometric norm bounds converging on a ball.

<a id="k-iii-12-2"></a>

- **K-III.12.2** [`stays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Master.lean#L50-L53) *(numbered result)* — For m at least r, a certain defined sequence stays within the authorized class.

<a id="k-iii-12-3"></a>

- **K-III.12.3** [`pricedB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/BarsP.lean#L79-L96) *(key result)* — For any list of motions, swell beams are paid-for with polynomial bound in the interval clock, eventually in j, uniformly on compact tags.

<a id="k-iii-12-4"></a>

- **K-III.12.4** [`financed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Scrap.lean#L40-L51) *(numbered result)* — ∃ b m:ℕ, ∃ (B c:ℝ)(hb:c∈Ray.sun),0 < c ∧ 0≤ B ∧ ∀ j N:ℕ,∀ (h:m ≤ j)(ht:j<N),∀ (a:ℝ)(hp:a∈Ray.sun) (F:Ray.sun→ Face T W), (∀ s:Ray.sun, evalV T W (F s) p N= Muse.Contest.ask (P) (slash a hp s).val) → …

<a id="k-iii-12-5"></a>

- **K-III.12.5** [`polynomial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Income.lean#L67-L72) *(numbered result)* — PaidBeam (fun s:Ray.sun=> scoreItem T W N p F B d x ℓ o k (Muse.slash c hb s)) ((denomination R T p m (Fintype.card I))* intervalClock R (j+1)^ (debt b k.val.card))

<a id="k-iii-12-6"></a>

- **K-III.12.6** [`storms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Summary.lean#L72-L74) *(numbered result)* — PaidBeam (fun s:Ray.sun=> scoreItem T W N p F B d x ℓ o k (Muse.slash b hb s)) ((2* (FullVolume.Retreat.till L! m p)⁻¹)* (outCharge R T p m (Fintype.card I) v₀/Poly.toll w k))

<a id="k-iii-12-7"></a>

- **K-III.12.7** [`cruise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Vault.lean#L83-L98) *(numbered result)* — ∃ ν, Furl T W N p m F Θ (hp.trans_lt hj) B d x ℓ o w (u m) ν ∧ ∀ i,PaidBeam (fun s:Ray.sun=>ν s i) (quoteUnit T j (d i) ‖x i‖)

<a id="k-iii-12-8"></a>

- **K-III.12.8** [`lobby`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Pavilion.lean#L185-L202) *(numbered result)* — Primary probe evaluations are uniformly approximated locally near grid points at all periods, including period zero.

<a id="k-iii-12-9"></a>

- **K-III.12.9** [`design`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Mark/Slate.lean#L29-L104) *(numbered result)* — Applying the coupon to packed addresses before shrinking yields a bound for the plate with unit amplitude untouched.

<a id="k-iii-12-10"></a>

- **K-III.12.10** [`arrives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L73-L103) *(key result)* — For k ≤ r, the pilot quantities along the sequence of families form a Cauchy sequence.

<a id="k-iii-12-11"></a>

- **K-III.12.11** [`dashF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Luna/Table.lean#L180-L191) *(numbered result)* — A local property of table entries holds for each index under entry hypotheses.

<a id="k-iii-12-12"></a>

- **K-III.12.12** [`cinema`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Seat.lean#L37-L45) *(key result)* — The numeric values of the family sequence at the given data form a Cauchy sequence, so the limit exists.

<a id="k-iii-12-13"></a>

- **K-III.12.13** [`stencilH`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Luna/YardP.lean#L153-L172) *(numbered result)* — Under an entry hypothesis, an Epics estimate holds at the next level.

<a id="k-iii-12-14"></a>

- **K-III.12.14** [`invites`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L104-L139) *(key result)* — For small b, the average detector is bounded on funded trials and tends to zero on owed trials with vanishing cutoff.

<a id="k-iii-12-15"></a>

- **K-III.12.15** [`tiers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Pole.lean#L50-L59) *(key result)* — The matrix T' m hr has the Ritzy property.

<a id="k-iii-12-16"></a>

- **K-III.12.16** [`cams`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rank/Tracks.lean#L79) *(numbered result)* — Differences of income and spends between two sequences of data tend to zero.

<a id="k-iii-12-17"></a>

- **K-III.12.17** [`linters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rank/Stitch.lean#L104-L130) *(numbered result)* — For each index, two sequences of shot coordinates built from coin uses satisfy a Hue relation relative to holonomy data.

<a id="k-iii-12-18"></a>

- **K-III.12.18** [`grow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L55-L56) *(key result)* — Level-d coefficients and associated coins along the sequence are Cauchy, with coins compatible with the capture of data.

<a id="k-iii-12-19"></a>

- **K-III.12.19** [`Run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48) *(numbered result)* — A data structure recording one fixed campaign of the multi-scale scheme with retained startup and support data.

<a id="k-iii-12-20"></a>

- **K-III.12.20** [`program`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Nectar/Laid.lean#L85-L102) *(key result)* — There exist data E and K satisfying the pulse hypothesis for the given parameters, an existence statement for the construction.

<a id="k-iii-12-21"></a>

- **K-III.12.21** [`many`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Pulse.lean#L101-L104) *(key result)* — Combining many ships indexed by sites, under token and attic hypotheses, yields a single consistent extraction of kernel data.

<a id="k-iii-12-22"></a>

- **K-III.12.22** [`improved`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L69-L78) *(main result)* — If a family of lattice quantities satisfies a full-volume bound and a vanishing-mesh condition, then the family of its canonical differences also satisfies the full-volume bound.

<a id="k-iii-12-23"></a>

- **K-III.12.23** [`destination`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Brace.lean#L61-L78) *(key result)* — Coefficient maps are paid-beam bounded with linear constant, and the beam bound propagates from level m to m+1 with a multiplicative factor.

<a id="k-iii-12-24"></a>

- **K-III.12.24** [`projects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Florid/Gild.lean#L57-L101) *(key result)* — For rate at most -7/16, for large side lengths, a budget-point estimate (Jam) holds eventually in x for every tuned configuration on tubes over a branching patch.

<a id="k-iii-12-25"></a>

- **K-III.12.25** [`linked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Dais.lean#L64-L80) *(key result)* — Assuming beam bounds at the next level, beam bounds hold at level m and propagate to level m+1 with the block-size factor.

<a id="k-iii-12-26"></a>

- **K-III.12.26** [`primaryJG`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glitz/RockG.lean#L81-L129) *(key result)* — A primary-step estimate for the multiscale induction, given suitable scale conditions and acceptance.

<a id="k-iii-12-27"></a>

- **K-III.12.27** [`trained`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L51-L91) *(key result)* — For large k and small b, step sizes are uniformly bounded by a constant times the probe norm over the mesh, giving uniform rank detection.

<a id="k-iii-12-28"></a>

- **K-III.12.28** [`composeT`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Mark/Vega.lean#L47-L78) *(key result)* — Single-step constructions satisfying cost and affordability conditions at each scale from k' to N can be composed into a full history ending at a given top configuration.

<a id="k-iii-12-29"></a>

- **K-III.12.29** [`motor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Mark/Wheels.lean#L38-L247) *(key result)* — A single step of the shared linear column-family construction produces, from a tool with a capacity bound, a new tool with controlled bounds at the next scale.

<a id="k-iii-12-30"></a>

- **K-III.12.30** [`composing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Major.lean#L53-L63) *(key result)* — There exists transfer data based on the holonomy structure that satisfies the required composed property.

<a id="k-iii-12-31"></a>

- **K-III.12.31** [`earned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Shroud/Plateau.lean#L53-L67) *(key result)* — A small perturbation of a representation by a parameter keeps it lawful with slightly weakened constants while leaving its evaluation unchanged, uniformly for small perturbation size.

<a id="k-iii-12-32"></a>

- **K-III.12.32** [`laven`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Ivy.lean#L37-L39) *(key result)* — If a quantity is bounded below eventually and functions are measurable, the sequence of mid-values is Cauchy.

<a id="k-iii-12-33"></a>

- **K-III.12.33** [`probesUp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L57-L78) *(key result)* — For small b and fine mesh, the probe at boosted inputs is within epsilon of the monitor of the upper extension.

<a id="k-iii-12-34"></a>

- **K-III.12.34** [`attic_close`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Attic.lean#L50-L88) *(key result)* — Under weighted analytic budget hypotheses on multisource arrays, the Attic weighted analytic bound closes with the stated constants.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

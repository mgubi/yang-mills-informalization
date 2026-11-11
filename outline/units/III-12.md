# III.12. Bounds uniform in the volume and convergence as the spacing tends to zero

*Part III — Ultraviolet construction (renormalization group).*

Combines bounds uniform in volume with fixed-volume convergence as the lattice spacing tends to zero.

**Status: edited.** Checked against the linked Lean and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [← Previous: III.11](III-11.md) · [Next: III.13 →](III-13.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** unit III.12, [`YM/FullVolume/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume). **Size:** 18,973 lines in the source allocation.

**Scope.** This unit proves volume-uniform bounds and takes the ultraviolet limit at each fixed volume. It has three outputs:

- (a) Bounds on lattice correlation functions of composite observables and of their finite differences at separated points. The bounds are uniform in the volume and eventually uniform in the cutoff.
- (b) Convergence of these correlation functions as $N\to\infty$ at each fixed volume, with smooth limits.
- (c) Power-series bounds on their dependence on the renormalized coupling. The assembly uses these.

**Notation.**

- $N$ is the mesh index. The lattice spacing is $a_N=1/D_N$, where $D_N=\ell_0\cdots\ell_{N-1}$ is a product of odd block sizes.
- $p$ is the volume index. $\Lambda_{N,p}$ is the torus of physical side $L_p$, with $L_pD_N$ sites per axis. The block size $\ell_j$ and the physical period $L_p$ are different quantities.
- $m,j,k$ are renormalization-group levels. $\beta_{N,p}$ is the bare inverse coupling, $\mathbb E_{N,p}$ the Wilson expectation, and $\hat\beta_j$ the renormalized inverse coupling at level $j$.
- $\mathrm{Lab}_d$ is the finite-dimensional space of labels of degree $d$. $O_{N,p}(v;o)$ is the lattice representative of $v\in\mathrm{Lab}_d$ at the site $o$ (II.1).
- $\mathcal N_d\subset\mathrm{Lab}_d$ is the equation ideal of the free Maxwell field, and $F_d=\mathrm{Lab}_d/\mathcal N_d$.
- *Eventually in the mesh* means: there is $N_0$ such that the statement holds for all $N\ge N_0$ and all $p$ (the filter [`mesh`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L13)). In statements of the form “for all large $m$, eventually in the mesh,” $N_0$ may depend on $m$.
- A sequence $w_{N,p}$ in a normed space has *sub-power growth* if for every $\varepsilon>0$, eventually in the mesh, $\|w_{N,p}\|\le a_N^{-\varepsilon}$ ([`Sluggish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L37-L38)). The quantity [`flight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Rates.lean#L40) $(\varepsilon)$ equals $a_N^{-\varepsilon}$, because [`scale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L115) $(N)=\log a_N^{-1}$.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

**Definitions.**

- A *trial* $F$ is a family of complex functions $F_{N,p}(o)$ of the gauge field on $\Lambda_{N,p}$, indexed by a site $o$. It is *local* if, eventually in the mesh, it is translation covariant and each $F_{N,p}(o)$ is gauge invariant, measurable, bounded and depending only on links within $o+X$, for one fixed finite $X\subset\mathbb Z^4$ ([`Local`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Stencils.lean#L20-L22), [`Stencil`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L29)).
- *Chessboard root at scale $m$.* For $m\le N$, $T_m(o)$ is the tiling of $\Lambda_{N,p}$ by cubes of physical side $a_m$ with one cell centred at $o$ ([`center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L34-L40)). Let $G$ be bounded, measurable and gauge invariant, localized in the central cell. Then $R_m(G)=\big|\mathbb E_{N,p}\prod_{c}G^{(c)}\big|^{1/\sharp\text{cells}}$. Here $G^{(c)}$ is obtained by reflecting $G$ into the cell $c$ through the cell walls, and is complex conjugated after an odd number of reflections. The number of cells is $\sharp\text{cells}=(L_p/a_m)^4$ ([`rootTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226-L227)).
- $F$ is *affordable at cost* $u(m,N,p)$ if $F$ is local and the following holds for all large $m$, eventually in the mesh: $F_{N,p}(0)$ is localized in the central cell of $T_m(0)$ and $R_m(F_{N,p}(0))\le u(m,N,p)$.
  - $F$ is *owed at cost* $v(N,p)$ if it is affordable at a cost independent of $m$.
  - $F$ is *funded* if it is affordable at a cost $u(m)$ independent of $(N,p)$.

  Lean: [`Affords`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L19-L22), [`Owed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L24), [`Funded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L28).
- *Normalized differences:* $(\Delta_\mu F)_{N,p}(o)=a_N^{-1}\big(F_{N,p}(o+e_\mu)-F_{N,p}(o)\big)$, and $\Delta_l=\Delta_{\mu_1}\cdots\Delta_{\mu_k}$ for a list $l=(\mu_1,\dots,\mu_k)$ of axes ([`farther`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L16-L17), [`hops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L19-L21)).
- A *coin* of degree $d$ is a sequence $x=(x_{N,p})$ in $\mathrm{Lab}_d$ whose inverse terminal coordinates have sub-power growth ([`Coin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L146-L147)). Thus, if $\tau_{d;N,p}$ is the terminal coordinate isomorphism, $\|\tau_{d;N,p}^{-1}x_{N,p}\|\le a_N^{-\varepsilon}$ eventually for every $\varepsilon>0$. Under the consistency conditions on the family, bounded label sequences are coins. $O(x)$ denotes the trial $O_{N,p}(x_{N,p};\cdot)$.
- A *presentation* is, for each $d$ and each $(N,p)$, an idempotent linear map $\pi_{N,p}$ on $\mathrm{Lab}_d$ ([`Presentation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L39-L41), IV.1). The kernel condition is an additional hypothesis.
- For a real configuration $x$, write $\alpha_N(x)_{i\mu}=\lceil x_{i\mu}/a_N\rceil$ for its coordinatewise ceiling address ([`address`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Round.lean#L18)). This is the right endpoint convention. Interpolation means multilinear interpolation on the corresponding cubes ([`interpolated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Panes.lean#L52-L53)).

**Proposition III.12.1 (kernel bounds uniform in the volume).** Let $R$ be a run (§2) for a simple gauge group $G$, with Wilson family $C$. Fix $n$, labels $v_i\in\mathrm{Lab}_{d_i}$ ($1\le i\le n$), a finite list $\lambda$ of pairs (slot $i$, axis $\mu$), and $r>0$. Then there are $B\ge 0$ and $N_0$ with the following property. For all $N\ge N_0$, $p$ and integer configurations $x$ satisfying $a_N\,\mathrm{dist}(x_i,x_j)\ge r$ for $i\ne j$,
$$\Big|\Delta_\lambda\,\mathbb E_{N,p}\big[O_{N,p}(v_1;x_1)\cdots O_{N,p}(v_n;x_n)\big]\Big|\le B .$$
Here $\Delta_{(i,\mu)}$ is the normalized forward difference in $x_i$ along $e_\mu$, and $\mathrm{dist}$ is the periodic $\ell^\infty$ lattice distance. $N_0$ and $B$ may depend on $R,n,(v_i),\lambda,r$, but not on $p$.
*Status:* theorem, for every run; the run supplies all inputs (§2).
*Lean:* [`FixedBounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L50-L52) (statement), [`gKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L15-L16) (the differenced kernel), [`genuine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L62) (theorem), [`funding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L42-L61) (reduction to III.12.2).

**Proposition III.12.2 (derivative closure of the chessboard budget).** Let $R$ be a run for a simple $G$. Let $w=(w_{N,p})$ be a sequence in $\mathrm{Lab}_d$ with $\|w_{N,p}\|\le K$ eventually in the mesh, for some $K\ge0$, and let $l$ be a list of axes. Then $\Delta_lO(w)$ is funded: for some $u(m)$ and all large $m$, eventually in the mesh it is localized in the central cell and $R_m(\Delta_lO(w)_{N,p}(0))\le u(m)$.
*Status:* theorem.
*Lean:* [`Run.financed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L24-L33).

**Proposition III.12.3 (closure lemma).** Fix a degree $d$. Let $C$ be a Wilson family satisfying its consistency conditions and the following hypotheses:

1. the centred budget (§2);
2. the scale-selection data of §2;
3. sound section data $V_e$ and linear automorphisms $W_e$ of the abstract labels, for every degree $e$, satisfying the section, symmetry and exact local identities described in §2;
4. a presentation $\pi$ and the full section-comparison data of §2, including the quantitative comparison with $V_e$, identification of $\ker\pi_{N,p}$ with a dressed equation ideal, and a bound $\sup_{N,p}\|\pi_{N,p}\|<\infty$ for each degree;
5. degree-$d$ detector rows satisfying the placement and bounded-lift conditions of Lemma 4.6 and the short-distance comparison of Lemma 4.8 ([`VitalRank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L49-L52)).

Let $F$ be a funded trial whose values $F_{N,p}(o)$ are continuous functions of the gauge field, and let $l$ be a list of axes. Let $x$ be a coin of degree $d$ such that $O(x)-\Delta_lF$ is owed at a cost $u_{N,p}\to0$ in the mesh. Then $\Delta_lF$ is funded.
*Status:* theorem under the stated hypotheses. For a run, these follow from its ties, with the detector comparison obtained from its short-distance estimates (§2).
*Lean:* [`improved`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L69-L78), [`cap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L23-L63).

**Proposition III.12.4 (uniform rank detection).** Assume hypotheses 1–5 of III.12.3 and fix a list $l$ of axes. For all large $k$ and all sufficiently small $b>0$ there is $Z\ge0$ such that, eventually in the mesh,
$$\|\pi_{N,p}x\|\le Z\,\big\|\mathcal P_{k,b,l;N,p}(\pi_{N,p}x)\big\|\qquad\text{for all }x\in\mathrm{Lab}_d .$$
Here $\mathcal P_{k,b,l;N,p}:\mathrm{Lab}_d\to\mathbb C^J$ is the linear detector of Lemma 4.6: correlations with fixed partners, averaged successively in the directions of $l$ over lengths between $b$ and $2b$. Repeated axes give repeated averages.
*Status:* theorem (conditional on 1–5).
*Lean:* [`trained`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L51-L91), [`probe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L88).

**Proposition III.12.5 (labels in the equation ideal give negligible observables).** Assume the consistency conditions on $C$ and hypotheses 2–4 of III.12.3. Let $x$ be a coin of degree $d$ with $\pi_{N,p}x_{N,p}=0$ for all $(N,p)$. Then $O(x)$ is owed at cost $a_N^{1/32}$: it is local, and for all large $m$, eventually in the mesh, $R_m(O(x)_{N,p}(0))\le a_N^{1/32}$.
*Status:* theorem.
*Lean:* [`sweep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L17-L19), [`banked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Silent.lean#L105-L115).

**Proposition III.12.6 (polynomial bounds on the dependence on the coupling).** Let $R$ be a run, $T$ a [campaign](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stage/Crests.lean#L20-L27) for $R$ with [pillars](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Vendee.lean#L22-L27) $W$, and assume the bounds [`Sky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Oz.lean#L22-L28). Let $\bar\beta$ be the target level-0 coupling and $w>0$ the fan width ([`ask`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gain/Resolve.lean#L72)). Fix $p$, labels $V_0$ (an $n$-tuple) and $r>0$. Then there are $b,m\in\mathbb N$ with $m\ge1$, $B\ge0$ and $c\in(0,1]$ with the following property.

Take $m\le j<N$ and $a\in[-1,1]$. Take a family $s\mapsto F(s)$, $s\in[-1,1]$, of admissible campaign members, with the same block sequence, sections and labels, whose level-0 inverse coupling at $(N,p)$ is $\bar\beta+w\,a\,s$. Use the expectation and representatives of the attached auxiliary transfer family; their correlations agree with those of the actual successful trajectory at these positive cutoffs (Lemma 4.18). Take an $r$-separated configuration $o$ of sites of $\Lambda_{j+1,p}$, embedded into $\Lambda_{N,p}$. Then the correlation
$$s\longmapsto \mathbb E^{F(cs/2)}_{N,p}\Big[\prod_i O(V_{0,i};o_i)\Big],\qquad s\in[-1,1],$$
equals $\sum_{i\ge0}P_is^i$ with $\sum_i|P_i|\le B\,a_{j+1}^{-b}$. The constants depend only on the campaign data, $p$, the labels and $r$.
*Status:* theorem, conditional on the campaign records. These are supplied on the main-theorem route by the assembly (VIII.1).
*Lean:* [`Face.financed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Scrap.lean#L40-L51), [`PaidBeam`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Dome.lean#L31-L32), [`Ray.sun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Ray/Gain.lean#L22) ($=[-1,1]$), [`intervalClock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Budget.lean#L34) ($=a_{j+1}^{-1}$ at level $j+1$), [`slash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Chrome.lean#L58), [`verso`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Chrome.lean#L65).

**Proposition III.12.7 (Cauchy property in the mesh at fixed volume).** Fix a simple gauge group and one renormalization-group construction, with its stationary-path bounds, free amplification, observable-transfer bounds and common reference sections. Assume the uniform perturbation estimates for that construction (§2). Fix $p$. Let $(C_n)$ be families formed from histories in this construction at cutoffs $f(n)\to\infty$. Assume:

- (i) [`Rising`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L19-L22): each history is a selected branch from a level $k$ on, and agrees with a fixed kinetic path. The stationary kinetic paths converge with a strict reserve in their admissible bounds. For every fixed level $i\ge k$, the inverse couplings are Cauchy and the polymer activities admit Cauchy representatives in the common weighted space ([`Helmet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Honors.lean#L30-L35)).
- (ii) For each label degree used below, its reference level $t(d)$ satisfies $k\le t(d)$ and $d+3\le J(t(d))$. The transfer data are based at the reference section at $t(d)$ and are obtained by composing the branch transfers of Lemma 4.16.
- (iii) For every sufficiently large base level $r$, the multiscale remainder bounds hold for all sufficiently large sequence indices $n$. Their label allowances $\zeta(d,r)$ are eventually positive for each degree used, and their occupancy allowances are at least $1$ at every level.

Fix a finite label list $(v_i)_{i=1}^s$ and a configuration $x\in(\mathbb R^4)^s$ with $x_i-x_j\notin L_p\mathbb Z^4$ for $i\ne j$. Assume that $x$ [lies exactly on a common lattice](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Eves.lean#L12) of some level $r$: $x=a_r z$ for an integer configuration $z$. Then the correlations of $C_n$ at cutoff $f(n)$, evaluated at the coordinatewise ceiling lattice points of $x$, form a Cauchy sequence in $n$.
*Status:* theorem under these hypotheses. For a run equipped with a campaign, pillars, fixed-level convergence data and the uniform perturbation estimates (§2), it applies with $C_n=C$ and $f(n)=n$.
*Lean:* [`Rising.cinema`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Seat.lean#L37-L45), [`Rising.arrives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L73-L103); run instance [`Campaign.sees`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L30-L38).

**Proposition III.12.8 (positional ultraviolet limit).** Let $C$ be a Wilson family and $e$ a strictly increasing sequence of mesh indices. Assume:

- the conclusion of III.12.1 ([`FixedBounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L50-L52));
- the lattice correlations at coordinatewise ceiling lattice points are Cauchy along $e$ at every configuration satisfying $x_{i\mu}-x_{j\mu}\notin L_p\mathbb Z$ for every $i\ne j$ and every axis $\mu$ ([`Purchased`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L56-L58)).

Then for every $p$, $n$ and $v_1,\dots,v_n$ there is a function $f$ on $(\mathbb R^4)^n$, $C^\infty$ on $\mathrm{NoHit}_p=\{x:\ x_i-x_j\notin L_p\mathbb Z^4\ (i\neq j)\}$ ([`NoHit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Patch.lean#L25-L26)), such that:

- (a) for every smooth compactly supported test function $t$ whose support avoids collisions and lies strictly inside the centred period cell in every coordinate, the smeared lattice sums converge along $e$ to $\int tf$;
- (b) fix any finite list of coordinate directions (slot, axis), and in each direction choose integers $q_-,q_+\ge0$ with $q_-+q_+>0$. Use the stencil $(F(x+q_+e)-F(x-q_-e))/((q_-+q_+)a_N)$. If $g$ is the corresponding iterated coordinate derivative of $f$, then:
  - along $e(s_i)$ for every sequence $s_i\to\infty$, the difference quotients at lattice configurations whose physical positions converge to $x\in\mathrm{NoHit}_p$ converge to $g(x)$ ([`Cluster`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Strings.lean#L55-L58));
  - their multilinear interpolations converge locally uniformly on $\mathrm{NoHit}_p$;
  - $tg$ is integrable and the smeared sums of the differences converge to $\int tg$ for every test $t$ as in (a).

*Status:* theorem under the two displayed hypotheses. For a run with a campaign, pillars, fixed-level convergence and uniform perturbation estimates, the full-sequence instance $e=(0,1,2,\dots)$ is [`Campaign.realUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L45). Its pointwise Cauchy hypothesis is derived from III.12.7 in [`Campaign.purchased`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L40-L44).
*Lean:* [`PositionsUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L25-L36), [`positioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L42-L47). [`printed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L52-L57) is a variant along an extraction order and is not on the main-theorem route.

**Use in the assembly.** The record [`Final.Jewel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L133-L149) is produced by [`jewelOf17`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L102-L111). Its fields take the outputs of this unit:

- The kernel-bound conclusion is III.12.1.
- The full-mesh conclusion is III.12.8 on the full sequence. This is (D5); through [`from_spec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L117-L126) it gives the ordered limit with the full ultraviolet sequence, (D4).
- The analytic-family conclusion uses III.12.6, through the chain of §4.4 ending in [`Fan.standing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Atlas.lean#L94-L104) and [`Travel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L84-L99).

<a id="unit-inputs"></a>

## 2. What it uses

**The run and its ties.** A [`Run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48) (II.2, III.14) fixes the block sizes and numerical bounds, bare history, interlevel gauge maps and observable transfers. Its degree-$d$ reference level satisfies $J(t(d))\ge d+3$, and its Wilson family satisfies the consistency conditions.

[`Run.again`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L73-L75), proved through [`ahead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Forge.lean#L60-L72) gives an extracted hierarchy and reconstruction after refining any extraction order, together with [`Run.Ties`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L65-L71), which has these fields:

- The centred budget [`Wcmain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L38-L40) for the family. For every $d$, every $R>0$ and every $\varepsilon>0$ there is $A\ge0$ such that, for every $m\ge t(d)$, eventually in $N$, for all $p$, all $v\in\mathrm{Lab}_d$ with $\|v\|\le R$ and all sites $o$: $O_{N,p}(v;o)$ is localized in the cell of $T_m(o)$ centred at $o$, and its chessboard root is at most $A\,a_m^{-d-\varepsilon}$ ([`centeredBudget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L21-L23)).
- The [scale-selection conditions](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Overlay/Prior.lean#L15-L18).
- Remainder and regularity estimates for observables (III.11).
- Section data $V_d$, dressings $W_d$ satisfying [`Portfolio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L51-L58), a presentation, and [`Hearthside`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fire.lean#L17-L20).
- For every limit table and every degree $d$, detector rows ([`Columns.Trials`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L53-L66)) with the short-distance data [`Purchases`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bought.lean#L68-L84).

Under the section hypotheses of III.12.3, the section is sound, has the prescribed polynomial realization and finite regularity bounds, and its dressing commutes with signed lattice symmetries and conjugation. Dressed equation labels satisfy the distant-spectator identity of Lemma 4.10.

The [section-comparison estimates](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Canopy.lean#L30-L32) include cutoff-dependent automorphisms $A_{d;N,p}$ on terminal coordinates, auxiliary comparison columns, and a sub-power sequence $E_d(N)$. Eventually, uniformly in $p$, $A_{d;N,p}$ is the symmetry-averaged map determined by these columns and its inverse increases coefficient size by at most a factor $2$. For every comparison column and every signed or conjugated version, the centred root of the difference between the auxiliary section evaluation and the chosen section evaluation is bounded by
$$C_d(m,k)E_d(N)a_N^{1/8}.$$
This holds for every admissible auxiliary level $k<N$ and centred scale $m\le N$; $C_d(m,k)$ is the comparison constant from III.11. The scale-selection data choose such a $k$ for each sufficiently large $m$. The kernel of $\pi_{N,p}$ is the image of $\mathcal N_d$ under the dressing, threshold rescaling, terminal map and $A_{d;N,p}$. The data also retain the projection symmetries and the finite-cutoff equation and difference comparisons needed by extraction.

Other existence formulations are [`Run.ramp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L55-L60), [`realized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L83-L95), [`dagger`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Forge.lean#L28-L49), [`rampant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Unlatch.lean#L38-L76), [`Final.july`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L154-L164).

**From other units.**

- **III.11.**
  - The centred budget for the run's family is [`gardena`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Gardens.lean#L19-L40), via [`coastwise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Baskets.lean#L36-L67) and [`tent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Balloon.lean#L22-L47). The centred logarithmic root bound is eventually at most $(d+\varepsilon)\log a_i^{-1}$.
  - The short-distance estimates for detector lifts compare their cumulant polynomials with the free Maxwell profile in chessboard norm. The lifts are bounded and admissibly placed, and the rescaled test configurations converge.
  - The remainder comparison for normalized local observables and their regularity constants is the input of [`prepared_rows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Paid.lean#L47-L49).
- **II.1.** Labels and representatives. The normalized observables $a_N^dF$ ([`unpriced`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L25-L26)) and their regularity class ([`clothed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L28-L29), [`section_bounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L90-L118), [`offmask`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L133-L151)). [`offset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L232-L270): the root on a coarse tiling at any interior offset is bounded by the centred root at a finer scale. The matching rate [`gamma`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Estimate.lean#L68) $=1/8$.
- **II.2.** The Wilson family, its consistency conditions (translation covariance, locality of the representatives, continuity) and the run record.
- **IV.1.** Tilings, chessboard roots and localized observables. [`Seam`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L14-L19) holds for every $\beta\ge0$ ([`laws`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L21-L24)) and gives two inequalities:
  - the chessboard inequality $|\mathbb E\prod_cG_c^{(c)}|\le\prod_cR(G_c)$;
  - the triangle inequality $R(G+G')\le R(G)+R(G')$.

  [`seamless`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L81-L84) gives $\beta_{N,p}\ge0$. Also: [`stepTotal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L66-L103) (Lipschitz bound in the positions for correlations at separated points, derived from centred budgets); [`growFrom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Tame.lean#L35-L97) (Cauchy on a dense set plus asymptotic equicontinuity gives locally uniform convergence).
- **III.2.** Existence of the section-comparison data and the numerical parameter sequence.
- **III.6, III.8, III.9, III.10.** Histories and selected branches; stationary-branch records (used in [`Rising.flooded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L31-L35)). The running coupling satisfies $\hat\beta_j=\mathrm{const}+\kappa_G\log a_j^{-1}$ with $\kappa_G>0$ ([`slopeConstant_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176)). The large-field radius grows without bound in $\hat\beta$ ([`radiusB_tendsto`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E01.lean#L210-L211)).
- **VIII.1.** [`Winter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glide/Vac.lean#L31-L63), proved by [`offers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glide/Vac.lean#L65-L89), gives fixed-level convergence of the inverse couplings and normalized activities for sequences of successful trajectories whose level-0 couplings converge. It includes the kinetic-path reserve, free amplification and analytic versions of the limits. The activity norm includes regular derivatives, forced terms and support weights; the scalar part of the effective action is excluded. The assembly supplies its stationary-path, free-amplification and uniform perturbation inputs; the pillars identify the run's transfers with the branch transfers. The bare coupling's analytic extension is [`bareTrial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L70-L77).

**Standard mathematics.**

- Reflection positivity of the Wilson action: Osterwalder–Seiler, *Ann. Phys.* 110 (1978).
- Chessboard estimates: Fröhlich–Israel–Lieb–Simon, *Comm. Math. Phys.* 62 (1978) and *J. Stat. Phys.* 22 (1980); Shlosman, *Russian Math. Surveys* 41 (1986).
- The chessboard seminorm (triangle inequality for $R$): Fröhlich–Lieb, *Comm. Math. Phys.* 60 (1978); Biskup, *Reflection positivity and phase transitions in lattice spin models* (2009).
- Summation by parts. Stability of injectivity of a linear map under small perturbations. The dimension count for a linear map of known rank.
- Arzelà–Ascoli type arguments. Taylor's theorem with remainder.
- Absolutely convergent power series, uniqueness from their values on a real interval, polynomial coefficient estimates and dominated convergence for series.
- The renormalization-group control of effective actions uniformly in the volume: Balaban, *Comm. Math. Phys.* 1984–1989 (references as in III.9).

**Imported constants and assumptions.**

- The exponent $-d-\varepsilon$ in the centred budget. III.12.2 uses it with $\varepsilon=1$.
- The matching chain: rate $\gamma=1/8$, giving an owed cost $a_N^{1/16}$ in Lemma 4.14; the equation-ideal estimate gives $a_N^{1/32}$ (III.12.5).
- The tail factor $e^{-B_j/64}$ ([`brisk`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Sever.lean#L16)), where $B_j$ is the budget radius at level $j$. Positions must have mutual lattice distance at least $B_j^2$ at level $j$.
- All numerical thresholds of the run (III.2).

<a id="unit-strategy"></a>

## 3. Strategy

The centred budget applies to primaries with bounded physical labels. A normalized difference carries the divergent factor $a_N^{-1}$, so it needs a separate argument. The local regularity estimates and the matching theorem of III.11 write $\Delta_lO(w)$ as a degree-$(d+|l|)$ primary $O(x)$ with an error of root cost $a_N^{1/16}$. The inverse terminal coordinates of $x$ have only sub-power control. To bound $\pi x$, test against fixed partner observables and average in the differenced directions. Summation by parts bounds these tests by $(2/b)^{|l|}$ times an undifferenced correlation bound. At short distances the detector approaches a free Maxwell matrix that separates the quotient by the equation ideal. Finite-dimensional stability then bounds $\pi x$. The auxiliary equation sections have zero chessboard root by their distant-spectator identity; section comparison makes $O(x-\pi x)$ negligible. Thus $\Delta_lO(w)$ is funded, and the chessboard inequality bounds products at separated points (III.12.1–III.12.5).

For convergence, fix the volume and an intermediate level $j$. Fixed-level convergence of the couplings, normalized activities and effective insertions makes the scalar-normalized level-$j$ correlation Cauchy as the cutoff grows. The full correlation differs from it by at most $2F_0e^{-B_j/64}$ for all sufficiently large cutoffs, where $F_0$ is independent of the cutoff and $j$. Since $B_j=\lceil(\log\hat\beta_j)^2\rceil\to\infty$, the full correlations are Cauchy at configurations lying on a common lattice. Positional Lipschitz bounds extend convergence from this dense set to every non-collision configuration. Taylor bounds identify limits of differences with derivatives, giving smoothness and the smeared limits (III.12.7–III.12.8).

For dependence on the coupling, vary the level-0 value in a family parametrized by $\bar\beta+ws$. After reducing the parameter interval, the lattice correlations have absolutely convergent power series whose coefficient norms grow polynomially in $a_j^{-1}$, uniformly in the cutoff (III.12.6). Their real level-to-level differences are $O(a_j)$. A polynomial coefficient estimate after a further interval reduction makes the differences summable in coefficient norm. Fixed-level Cauchy convergence of the series then gives analytic continuum correlations on a complex disc. This uses the same fixed-level convergence input as the preceding paragraph, together with the additional analytic estimates.

<a id="unit-steps"></a>

## 4. Steps

### 4.1 Calculus of the chessboard budget

Throughout §§4.1–4.3, the family satisfies its consistency conditions. In §4.2, assume hypotheses 1–5 of III.12.3, with the same detector rows and presentation throughout.

**Lemma 4.1 (closure properties).** For trials $F,H$ and costs $u,v$:

- $\mathrm{Aff}(F,u)$ and $\mathrm{Aff}(H,v)$ imply $\mathrm{Aff}(F\pm H,u+v)$.
- $\mathrm{Aff}(F,u)$ implies $\mathrm{Aff}(cF,|c|u)$ for any $c=c_{N,p}\in\mathbb C$.
- $\mathrm{Aff}(0,0)$, and finite sums behave the same way.
- Affordability is monotone in the cost.
- It is unchanged if $F$ is modified off a tail of the mesh.

Hence funded trials form a vector space.
*Sketch:* linear combinations preserve locality; the root is homogeneous and satisfies the chessboard triangle inequality.
*Lean:* [`Affords.sub`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L63-L79), [`Affords.scalar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L80-L87), [`Affords.enlarged`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L61-L62), [`Affords.recurses`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L107-L110), [`Funded.sub`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L116-L118); negation, addition, the zero trial and finite sums are treated in [the same file](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean).

**Lemma 4.2 (all offsets).** Let $F$ be affordable at cost $u$. For every $m$ and every integer $J\ge1$ there is $k\ge m$ with the following property, eventually in the mesh. For every tiling of physical cell side $a_m$ and every site $x$ in its central cell at least one $J$-th of the cell side from each wall, $F_{N,p}(x)$ is localized in that cell and its root on the tiling is at most $u(k,N,p)$.
*Sketch:* choose $k$ with $3Ja_k\le a_m$ and apply the offset comparison (II.1), using translation covariance.
*Lean:* [`Affords.every`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L39-L60). *(proof read; offset comparison imported from II.1)*

**Lemma 4.3 (bounded primaries are funded).** Under the centred budget, let $v_{N,p}\in\mathrm{Lab}_d$ satisfy $\|v_{N,p}\|\le Y$ eventually in the mesh for some fixed $Y$. Then $O(v)$ is funded, with $u(m)=A\,a_m^{-d-1}$.
*Sketch:* apply the centred budget with $\varepsilon=1$ and $R=\max(1,Y)$, at the offset $0$.
*Lean:* [`Funded.primaries`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L119-L128).

**Lemma 4.4 (products at separated points).** Let $F_1,\dots,F_n$ be affordable at costs $u_1,\dots,u_n$, and let $r>0$. For all large $k$, eventually in the mesh, every configuration $z$ with $a_N\,\mathrm{dist}(z_i,z_j)\ge r$ satisfies
$$\Big|\mathbb E_{N,p}\prod_iF_i(z_i)\Big|\le\prod_iu_i(k,N,p).$$
If all $F_i$ are funded, the left side is bounded uniformly, eventually in the mesh.
*Sketch:*

- Choose $l$ with $a_l<r$, and $k$ with $6n\,a_k<a_l$.
- Translate the tiling of side $a_l$ so that each $z_i$ lies in the interior margin of width $3a_k$ of its cell. Distinct points lie in distinct cells, since their distance exceeds the cell side.
- Write each $F_i(z_i)$ as the reflected copy of an observable localized in the central cell. The centred estimate at scale $k$ and the offset comparison bound its root by $u_i(k,N,p)$.
- Apply the chessboard inequality. The remaining cells carry the constant $1$, whose root is $1$.

*Lean:* [`cohort`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cohort.lean#L39-L66), [`FullVolume.financed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cohort.lean#L68-L71).

**Lemma 4.5 (III.12.1 from III.12.2).** Suppose $\Delta_lO(v)$ is funded for every fixed label $v$, in every degree, and every list $l$. Then the bounds of III.12.1 hold for $C$.
*Sketch:* induction on the list $\lambda$ of pairs (slot, axis). Differencing slot $i$ differences its insertion ([`actuate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L27-L45)), by linearity of expectation. Thus the differenced kernel is a correlation of $\Delta_{l_i}O(v_i)$, each funded. Conclude by Lemma 4.4. Then [`genuine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L62) applies III.12.2 to constant sequences.
*Lean:* [`funding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L42-L61).

### 4.2 Detectors, rank detection and the closure lemma

**Lemma 4.6 (detectors; summation by parts).** A detector row $j$ at test scale $k$ consists of:

- a test configuration $y_{k,j}\in(\mathbb R^4)^{1+e_j}$, with distinct projections on every coordinate axis and contained in a box of side $a_{\mathrm{width}(k)}$;
- partner labels $w_{k,j,u}$ (lifted basis labels whose norms, for fixed $k$, are bounded uniformly in $N,p$ and the finite indices).

For a trial $F$, the *monitor* is the correlation $M_j(F)(x)=\mathbb E_{N,p}\big[F(x_0)\prod_uO(w_{k,j,u};x_u)\big]$ ([`monitor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L14)). The *assay* averages the first slot over $n_b=\lceil b/a_N\rceil$ consecutive sites in each direction of $l$, starting at the prescribed lattice approximation of $y_{k,j}$ ([`assay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L86)). The detector is $\mathcal P_{k,b,l}(x)_j=\mathrm{assay}_j(O(x))$. For each fixed $k,l$, there is $b_0>0$ such that, for every $0<b<b_0$, the following hold:

- (a) if $F$ is funded with continuous values, then $\|\mathrm{assay}(\Delta_lF)\|\le v$ eventually in the mesh, for some constant $v$ depending on $F,k,b,l$;
- (b) if $F$ is owed at a cost $u_{N,p}\to0$, then $\mathrm{assay}(F)\to0$.

*Sketch:*

- [`scores_hops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L43-L51): $M_j(\Delta_lF)$ is the $a_N$-normalized lattice difference of $M_j(F)$ in the first slot.
- [`same_delta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Skein.lean#L40-L45): averaging $n$ consecutive normalized differences telescopes to $(na_N)^{-1}\big(f(x+ne_\mu)-f(x)\big)$, with $na_N\in[b,2b]$. Iterating gives [`reserve_abs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Skein.lean#L89-L101): $|\mathrm{assay}(\Delta_lF)|\le(2/b)^{|l|}\sup|M_j(F)|$ near the test point.
- [`warded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L86-L101): near a generic test point, $|M_j(F)|\le u(w)\cdot A$. This is Lemma 4.4 applied to $F$ and the partners, which are funded by Lemma 4.3 ([`siblingsPrice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L80-L83)).
- For (b), averaging does not increase the bound ([`rounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Skein.lean#L77-L87)).

*Lean:* [`invites`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L104-L139).

**Lemma 4.7 (averaging is harmless on primaries).** For every $\varepsilon>0$ and $k$, for small $b$ and eventually in the mesh, $|\mathcal P_{k,b,l}(\beta_c)_j-M_j(O(\beta_c))(y_{k,j})|\le\varepsilon$ for all rows $j$ and all lifted basis labels $\beta_c$.
*Sketch:* [`lobby`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Pavilion.lean#L185-L202) gives a radius $t>0$ such that correlations of labels of bounded norm vary by less than $\varepsilon$ within distance $t$ of the test configuration. This follows from the positional Lipschitz bound derived from the centred budget (IV.1), uniformly in $p$. Then choose $2|l|b\le t$.
*Lean:* [`probesUp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L57-L78). *(proof read; the single-step Lipschitz bound is an input from IV.1)*

**Lemma 4.8 (short distances: the free Maxwell values).** For every $\varepsilon>0$, eventually in $k$, eventually in the mesh, simultaneously for all rows $j$ and basis indices $c$: $|M_j(O(\beta_c))(y_{k,j})-\phi_{jc}|<\varepsilon$. Here $\phi_{jc}$ is the value of the $j$-th test of the free Maxwell table on the $c$-th basis vector of $F_d$ ([`focus`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L21)).
*Sketch:* the short-distance comparison of III.11 makes the lattice correlation approach the free Maxwell correlation at the rescaled test configuration. The latter configurations converge to the prescribed free tests, whose correlations are continuous there.
*Lean:* [`gaugesFull`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L24-L46), packaged as [`VitalRank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L49-L52). *(proof read; short-distance estimates imported from III.11)*

**Lemma 4.9 (rank detection; III.12.4).** The matrix $(\phi_{jc})$ is injective on $F_d$ ([`true_lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stand.lean#L73-L83)): the free tests separate the quotient.
*Sketch:*

- [`firm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stand.lean#L20-L39) gives $\delta,L>0$: every linear map whose matrix is $\delta$-close to $(\phi_{jc})$ satisfies $\|y\|\le L\|\cdot\, y\|$.
- Take $\varepsilon=\delta/4$. The entries of $\mathcal P(\pi\beta_c)$ are within $\delta$ of $\phi_{\cdot c}$, by three estimates: Lemma 4.7; Lemma 4.8; and $\mathcal P(\beta_c-\pi\beta_c)\to0$, which holds by Lemma 4.10 and Lemma 4.6(b).
- $\mathrm{rank}\,\pi_{N,p}\le\dim F_d$ ([`weighed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L21-L47)). Indeed $\ker\pi_{N,p}$ is the dressed image of $\mathcal N_d$, and $\mathcal N_d$ is the null space of the free table by the exact free-field projection.
- [`rank_upper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stand.lean#L42-L56): the map $y\mapsto\pi(\sum_cy_c\beta_c)$ is injective by the previous steps, hence onto $\mathrm{ran}\,\pi$ by dimension. This gives $\|\pi x\|\le Z\|\mathcal P(\pi x)\|$ with $Z=A\,(\dim F_d)\,V\,L$. Here $A$ bounds $\|\pi\|$ and $V$ bounds $\|\beta_c\|$.

*Lean:* [`trained`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L51-L91).

**Lemma 4.10 (equation terms; III.12.5).** Let $x$ be a coin with $\pi x=0$. Then $O(x)$ is owed at cost $a_N^{1/32}$.
*Sketch:* undo the section-comparison automorphism and terminal map to obtain a terminal-coordinate row $y$ of sub-power growth whose associated abstract labels belong to the dressed equation ideal. The inverse coefficient-size bound in §2 controls this change of coordinates.

- [`ocean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Ocean.lean#L41-L75): $O(x)-H(y)$ is owed at $a_N^{1/32}$. Here $H(y)_{N,p}(o)$ is the bare lattice evaluation of the section data at $o$, scaled by $a_N^{-d}$. The proof goes through [`studded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Paid.lean#L23-L29), a bound by a constant times a sub-power factor times $a_N^{1/8}$.
- [`hole`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Silent.lean#L61-L90): $H(y)$ is owed at cost $0$. By the section hypotheses, the evaluation of a dressed element of $\mathcal N_d$ is [`MicroAt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Micro.lean#L29-L31): for every $\beta\neq0$ and every large torus, its Wilson expectation against any bounded measurable observable depending only on links at lattice distance $>s$ vanishes. The spectator need not be gauge invariant. Once the cell side exceeds $2s+2$ lattice units, the copies in the other cells are such observables. So the chessboard product has expectation $0$ and $R_m=0$.

The auxiliary equation sections are an input from II.1 (§7).
*Lean:* [`sweep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L17-L19), [`banked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Silent.lean#L105-L115).

**Lemma 4.11 (a priori bound on $\pi x$).** Under the hypotheses of III.12.3, there is a constant $A$ such that $\|\pi_{N,p}x_{N,p}\|\le A$ eventually in the mesh.
*Sketch:*

- By Lemma 4.6, $\|\mathcal P(x)\|=\|\mathrm{assay}(O(x))\|\le\|\mathrm{assay}(\Delta_lF)\|+\|\mathrm{assay}(O(x)-\Delta_lF)\|\le c$.
- Put $X=\pi x$, $\theta=(1+\|X\|)^{-1}$ and $z=\theta(x-X)$. Since $|\theta|\le1$, $\theta x$ is a coin. Since $\|\theta X\|\le1$, $\theta X$ is a coin too. Thus $z$ is a coin and $\pi z=0$, so $Z\|\mathcal P(z)\|\le\frac12$ eventually by Lemmas 4.10 and 4.6(b).
- Hence $\|X\|\le Z\|\mathcal P(X)\|\le Z\|\mathcal P(x)\|+Z\|\mathcal P(x-X)\|\le Zc+\tfrac12(1+\|X\|)$.

Rearrange to obtain $A=2Zc+1$.
*Lean:* [`cap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L23-L63).

**Lemma 4.12 (closure lemma; III.12.3).** $O(\pi x)$ is funded by Lemmas 4.11 and 4.3. $O(x-\pi x)$ is owed at $a_N^{1/32}\to0$ by Lemma 4.10, hence funded: a cost tending to $0$ is eventually below $1$ ([`fixed_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L65-L67)). So $O(x)$ is funded. Finally $\Delta_lF=O(x)-\big(O(x)-\Delta_lF\big)$ is funded, by Lemma 4.1.
*Lean:* [`improved`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L69-L78).

### 4.3 Differences of primaries (III.12.2)

**Lemma 4.13 (regularity under normalized differences).** Call $F$ *tucked of degree $d$* if the following holds. There are a stencil containing $0$ and sequences $c_{N,p},b_{N,p}$ of sub-power growth. Eventually in the mesh, for every site $o$, $a_N^dF_{N,p}(o)$ is regular on the stencil around $o$, its field-derivative bounds are at most $c_{N,p}$, and its sup norm is at most $b_{N,p}$. Then:

- for a simple gauge group, $O(w)$ is tucked of degree $d$ for every coin $w$;
- if $F$ is tucked of degree $d$ and the constants for shifting the field-derivative bounds by one lattice site have sub-power growth, then $\Delta_\mu F$ is tucked of degree $d+1$. The run's remainder data supply these shift bounds.

*Sketch:* $a_N^{d}O(w)$ is the section evaluation at the threshold-scaled coefficients ([`charged`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L121-L126), II.1); the bounds come from the regularity and supremum estimates for section evaluations. For the difference, $a_N^{d+1}\Delta_\mu F(o)=a_N^dF(o+e_\mu)-a_N^dF(o)$. The stencil grows by one step, and the derivative bounds pick up the sub-power shift cost.
*Lean:* [`Tucked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L47-L49), [`Tucked.up`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L60-L75), [`Tucked.farther`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L77-L95), [`Tucked.hops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L97-L101).

**Lemma 4.14 (matching a local observable by a primary).** Assume a simple gauge group, the scale-selection data and the observable remainder and regularity bounds of III.11 (§2). Let $F$ be tucked of degree $d$, local, and continuous as a function of the gauge field at the insertion site $0$, eventually in the mesh. Then there is a coin $v$ of degree $d$ such that $O(v)-F$ is owed at cost $a_N^{1/16}$.
*Sketch:* apply the local regularity comparison of III.11 to $a_N^dF$. After undoing this normalization, the centred root of $O(v)-F$ at scale $m$ is at most a constant (depending on $m$ and an auxiliary level chosen by the scale-selection conditions) times a sub-power factor times $a_N^{\gamma}$, with $\gamma=1/8$. [`readyCoin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Paid.lean#L35-L46) and the sub-power absorption estimate absorb the sub-power factor into $a_N^{1/8-1/16}$.
*Lean:* [`prepared_rows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Paid.lean#L47-L49). *(statement and reduction read; the III.11 inputs statement only)*

**Lemma 4.15 (proof of III.12.2).** In a run for a simple gauge group, let $w$ be eventually bounded in the mesh and set $F=O(w)$. Lemma 4.3 funds $F$. By Lemma 4.13, $\Delta_lF$ is tucked of degree $d+|l|$; it is also local and continuous in the gauge field. Lemma 4.14 gives a coin $x$ of that degree with $O(x)-\Delta_lF$ owed at $a_N^{1/16}\to0$. The run's ties supply hypotheses 1–5 at degree $d+|l|$, so III.12.3 funds $\Delta_lF$.
*Lean:* [`Run.financed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L24-L33).

### 4.4 Observable transfer and coupling dependence

The analytic transfer bounds use III.12.6's campaign data; analytic continuum convergence also uses III.12.7's fixed-level convergence and perturbation inputs.

**Lemma 4.16 (composition of observable transfers).** Fix a simple gauge group, a branch from level $k$ to cutoff $N$, the observable-transfer bounds and compatible intermediate representations of §2. Fix $k\le r\le N$ and $d+3\le J(r)$. There are degree-$d$ transfer data based at the reference section at $r$, obtained by composing the one-step transfers along the branch.
*Sketch:* a one-step transfer tool with its capacity estimate acts on an observable at level $m+1$ and produces an observable at level $m$ whose density is the exact renormalization-group pushforward with the degree-dependent block normalization. It preserves linearity and symmetry and supplies coefficient, remainder and response bounds ([`motor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Mark/Wheels.lean#L38-L247)). These steps compose with the prescribed top observable ([`composeT`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Mark/Vega.lean#L47-L78)). The branch includes selectedness, available coefficient spaces and the one-step transfer data ([`Branch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Major.lean#L30-L33)); its estimates provide the required capacities.
*Lean:* [`Branch.composing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Major.lean#L53-L63). Fixed-level convergence follows from [`Branch.stays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Master.lean#L50-L53), using the stability of the step maps under two cutoff subsequences ([`Branch.tiers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Pole.lean#L50-L59)) (Lemma 4.19). *(proof read for composition and fixed-level reduction; one-step capacity estimate statement only)*

**Lemma 4.17 (power series in the tuning parameter, level by level).** Assume the campaign data and estimates of III.12.6. Write $f\in\mathrm{PB}(t)$ if $f(s)=\sum_iP_is^i$ on $[-1,1]$ with $\sum\|P_i\|\le t$. This class is closed under sums ($\mathrm{PB}(t)+\mathrm{PB}(t')\subset\mathrm{PB}(t+t')$) and under rescaling $s\mapsto as$ with $|a|\le1$.

- The one-step analytic capacity estimates bound the remainder map, applied to a coefficient vector $x$, by $\mathrm{PB}(\nu\|x\|)$. Here $\nu$ is the prescribed one-step bound in the completed remainder norm; the parameter interval has already been reduced by a factor $2$.
- A bound $\mathrm{PB}(t)$ at level $m$ propagates to level $m+1$ as $\mathrm{PB}(\ell_m t)$ ([`linked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Dais.lean#L64-L80)), or as $\mathrm{PB}(2v_T\chi_d t)$ ([`destination`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Brace.lean#L61-L78)).
- Here $v_T$ is the prescribed transfer bound and $\chi_d$ the finite-dimensional coefficient constant. Since $\prod_{m=0}^j\ell_m=a_{j+1}^{-1}$, iterating gives bounds polynomial in $a_{j+1}^{-1}$.

[`cruise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Vault.lean#L83-L98) gives per-label bounds. [`polynomial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Income.lean#L67-L72) bounds a correlation item at $s\mapsto cs$ by $B_0a_{j+1}^{-b_0}$ for fixed $B_0,b_0$. Here $c$ is fixed by [`aperture`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Summary.lean#L62-L68) so that $|c|\,Q/Z_*\le\frac12$, where $Q$ bounds the source contribution and $Z_*>0$ bounds the scalar-normalized partition function from below; see also [`storms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Summary.lean#L72-L74). [`Face.financed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Scrap.lean#L40-L51) identifies the item for the full mode with the correlation ([`absolute`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Seat.lean#L31-L33)), which gives III.12.6.
The weighted analytic bounds for the parameter-dependent effective densities ([`attic_close`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Attic.lean#L50-L88), [`many`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Pulse.lean#L101-L104), [`program`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Nectar/Laid.lean#L85-L102)) belong to this fan analysis. [`Amp.give`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Amp/Blank.lean#L16-L39) and [`Amp.stage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Amp/Blank.lean#L42-L43) extend a multilinear series from a dense isometric image, with geometric bounds; this builds the series on real jets without complexifying the field. *(proof read for the power-series calculus, parameter rescaling, interval selection and final correlation bound; intermediate analytic estimates statement only)*

**Lemma 4.18 (analytic continuum correlations).** Assume a campaign and pillars, the analytic estimates of III.12.6, fixed-level convergence and the uniform perturbation estimates of §2. Fix $p$, finitely many labels, a compact $K\subset\mathrm{NoHit}_p$ and $q\in\mathbb N$. There is a positive parameter width, independent of the cutoff, and an open neighbourhood $\Omega$ of $K$ within $\mathrm{NoHit}_p$, on which the limiting kernels are $C^q$ in position and analytic in the complex parameter. For each spatial stencil list of length at most $q$, the lattice kernels, their multilinear interpolations and their admissible smeared sums have analytic continuations whose parameter derivatives of every fixed order converge uniformly on compact subdiscs and compact spatial subsets of $\Omega$.
*Sketch:* [`pricedB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/BarsP.lean#L79-L96) gives coefficient-norm bounds $B a_j^{-b}$ for differenced kernels on a fixed compact set. [`traceS`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Lease.lean#L88-L96) chooses series representing these kernels. Their real values at consecutive levels differ by $O(a_j)$. [A polynomial coefficient estimate](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Pier.lean#L25-L42) after a fixed reduction of the parameter interval turns this into a coefficient-norm bound $C\sqrt{a_j}$, summable in $j$. For each fixed $j$, [Cauchy convergence of the real values](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Zoom.lean#L43-L48) gives Cauchy convergence of the series in the cutoff after another interval reduction ([`astronomer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Stream.lean#L54-L77)). Thus the series converge uniformly in position ([`charted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Tan.lean#L104-L109)). Their absolutely convergent complex power series give analytic limits and convergence of all parameter derivatives on smaller discs. The width may depend on $p,K,q$.
The final identification uses the actual successful Wilson trajectories, whose [correlations agree with those of the auxiliary transfer families](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Real.lean#L71-L73) at every positive cutoff. This is the content of the analytic spatial statement [`Spending`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Atlas.lean#L85-L91) and its theorem [`Fan.standing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Atlas.lean#L94-L104), used by the assembly's analytic family. *(proof read for the series-convergence and final assembly reductions; spatial derivative identification statement only)*

**Additional estimates in this folder.**

- Under the connected-activity hypotheses of III.8, the large-field step estimate applies when its rate parameter is at most $-7/16$ ([`projects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Florid/Gild.lean#L57-L101), namespace of the connected-activity bounds, III.8).
- Under the one-step source, degree, threshold and release hypotheses of III.10, the primary insertion satisfies its step estimate ([`primaryJG`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glitz/RockG.lean#L81-L129), III.10).
- Fix $g<e$, $w<w'$, $w\le1$, a torus with at least four sites per axis, and a budget point and clipping parameter satisfying the admissibility and kinetic-width conditions. There is $t>0$ such that every $|a|\le t$ sends a representation with bounds $(\sigma,C,\Lambda,g,w)$ to one with bounds $(\sigma,C,\Lambda,e,w')$, preserving its evaluation ([`earned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Shroud/Plateau.lean#L53-L67)).
- Comparisons of rank data between two cutoff sequences ([`cams`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rank/Tracks.lean#L79), [`linters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rank/Stitch.lean#L104-L130)).
- The connected-activity and stationary-branch results used by these estimates.

These are inputs to the transfer and analytic estimates, not additional convergence assertions. Their full hypotheses and proofs belong to III.8–III.10; see §7.

### 4.5 Convergence in the mesh

**Lemma 4.19 (fixed-level convergence).** In the setting of III.12.7, fix $m\ge k$ and above the reference levels of all labels used. Then:

- the inverse couplings and weighted activities are Cauchy ([`flooded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L31-L35), by the fixed-level convergence input);
- the level-$m$ coefficients and coins of each label converge ([`grow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L55-L56), by stability of the composed transfers);
- the effective observable and its polymer parts converge uniformly ([`hail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L57-L61)). The property [`Confluence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Basin.lean#L10-L12) means eventual uniform boundedness and uniform Cauchy convergence.

*Sketch:* the kinetic-path reserve and activity convergence control the normalized density. Stability of the composed transfers gives Cauchy coefficients and remainders; evaluation preserves their uniform Cauchy bounds. *(proof read for these reductions; transfer stability estimates statement only)*

**Lemma 4.20 (correlations computed at a fixed level converge).** Let the level-$j$ data be as in Lemma 4.19. Assume the effective insertions and their polymer components are measurable, and that the scalar-normalized partition function is eventually bounded below by $a>0$. Then the level-$j$ value
$$C_j^I(n)=Z_{j,n}^{-1}\int Q_{j,n}^I(U)\,d\mu_{\mathrm{Haar}}(U)$$
is Cauchy in $n$ for every fixed label subset $I$. Here $Q_{j,n}^I$ is the coefficient indexed by $I$ in the scalar-normalized effective polynomial obtained by retaining the vacuum and singleton source data; $Z_{j,n}$ is its vacuum normalization, and $\mu_{\mathrm{Haar}}$ is the product Haar probability measure.
*Sketch:* uniform convergence passes through the Haar integral. The normalizations have a positive limit, so the quotients converge. The additive action scalar cancels.
*Lean:* [`Confluence.laven`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Ivy.lean#L37-L39), [`Rising.latter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L57-L66), with the uniform bounds [`ships`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L51-L53) and [`limitVault`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L29-L33).

**Lemma 4.21 (tail bound uniform in the cutoff).** In the setting of III.12.7, fix a non-collision configuration lying exactly on a lattice of some level. Choose a sufficiently large base level $r$, above the reference levels and with distinct insertion sites. Fix positive label weights so that their weighted coefficient costs are within the allowances at $r$; these weights exist by [`creditP`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L62-L63). For every fixed subset $I$ of the labels, there is $F_0\ge0$, independent of $j$ and the cutoff, such that for each sufficiently large $j>r$, eventually in $n$,
$$|p_n^I-C_j^I(n)|\le 2F_0e^{-B_j/64}.$$
Here $p_n^I$ is the product correlation at cutoff $f(n)$ and $C_j^I(n)$ is its scalar-normalized level-$j$ approximation. The lower threshold on $j$ ensures separation by $B_j^2$ lattice units, support exponent at least $2$, and $e^{B_j/64}>2$. The threshold on $n$ may depend on $j$.
*Sketch:* propagate the exact polynomial density of the inserted observables down the renormalization group. The weighted remainder estimate controls its part of degree at least two. Separation forces a nonzero such term to occupy enough blocks to gain the factor $e^{-B_j/64}$. The remaining omission estimate divides by a uniformly positive scalar-normalized partition function. Uniform bounds on the effective insertions at $r$ and $j$ follow from Lemma 4.19; the final numerator depends only on the data at $r$.
*Lean:* [`Sever.echoes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Peat.lean#L41-L64). *(proof read for the exact-density, remainder and omission reduction; underlying multiscale estimates are inputs)*

**Lemma 4.22 (Cauchy property).** Under the hypotheses of Lemma 4.21, $p_n^I$ is Cauchy for every fixed subset $I$ of the labels.
*Sketch:* $B_j=\lceil(\log\hat\beta_j)^2\rceil$, so $g(j)=e^{B_j/64}\to\infty$ because $\hat\beta_j=\mathrm{const}+\kappa_G\log a_j^{-1}\to\infty$. Choose $j$ with $g(j)>2$ and $2F_0/g(j)\le\varepsilon/4$. Lemma 4.21 bounds $|p_n^I-C_j^I(n)|$ by $\varepsilon/4$ for large $n$. Lemma 4.20 gives the Cauchy property of $C_j^I(n)$. Conclude with the triangle inequality.
*Lean:* [`Rising.arrives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L73-L103).

**Lemma 4.23 (III.12.7).** Under the hypotheses of III.12.7, take the subset containing all labels. The full-subset quantity is the correlation itself ([`absolute`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Seat.lean#L31-L33)). The positions are $o_N=\mathrm{wrap}(\alpha_N(x))$. For $x\in\mathrm{NoHit}_p$ lying exactly on a lattice of some level, these satisfy the separation $B_j^2$ for all large $j$ by the lattice-ancestry estimates, and they are injective at the base level.
*Lean:* [`Rising.cinema`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Seat.lean#L37-L45).

**Lemma 4.24 (all non-collision points, full sequence).** For a run with a campaign, pillars, fixed-level convergence and uniform perturbation estimates, III.12.7 holds on the full sequence of cutoffs ([`Campaign.sees`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L30-L38), with the same cutoff-dependent history family repeated for every sequence index and $f(n)=n$). Configurations lying exactly on some lattice are dense. III.12.1 gives a local Lipschitz bound ([`localLip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Region.lean#L42-L54)), hence asymptotic equicontinuity on compact subsets of $\mathrm{NoHit}_p$ ([`circulating`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L38-L54)). The dense-set convergence theorem (IV.1) then gives locally uniform convergence on $\mathrm{NoHit}_p$, in particular the Cauchy property on the subset with no coordinate ties.
*Lean:* [`Campaign.purchased`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L40-L44).

**Lemma 4.25 (positional limits; III.12.8).** Assume the two hypotheses of III.12.8.

- [`established`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L60-L61): the kernels converge locally uniformly on $\mathrm{NoHit}_p$ to a continuous $f$. The argument is the one of Lemma 4.24.
- [`from_previous`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L71-L125): if the $l$-differences converge, so do the differences with one additional coordinate direction $a$. Fix $q=\min(t/2,r/3,\varepsilon/(8(B+1)))>0$, where $t$ is a neighbourhood radius and $r,B$ are the Taylor constants. Choose integers $n_N$ with $k_N=n_Na_N\in[q,2q]$ and $k_N\to q$. If $a_Nx_N\to x$, compare the unit difference $D_N$ with $W_N=k_N^{-1}(F_N(x_N+n_Ne_a)-F_N(x_N))$. Both endpoint values converge ([`returns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L21-L31)), so $W_N$ converges. The Taylor estimate $|F_N(x_N+n_Ne_a)-F_N(x_N)-k_ND_N|\le Bk_N^2$ ([`taylor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Region.lean#L58-L77)) gives $|W_N-D_N|\le\varepsilon/4$ eventually. Hence $D_N$ is Cauchy.
- Limits of differences are derivatives of $f$, so $f\in C^\infty(\mathrm{NoHit}_p)$ ([`reachable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Strings.lean#L90-L92)).
- Every fixed forward/backward interval stencil is a finite average of translates of a unit forward difference. These translates approach the same physical point, so they have the same derivative limit. Multilinear interpolation preserves this limit. For admissible tests, the corresponding piecewise constant Riemann sums have an integrable bound on a fixed compact set, and dominated convergence gives the smeared limits.

Under the hypotheses of Lemma 4.24, the run instance is [`Campaign.realUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L45): III.12.8 applied to III.12.1 and Lemma 4.24.
*Lean:* [`positioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L42-L47). *(proof read for equicontinuity, Taylor comparison, derivative convergence, stencil averaging, interpolation and smearing)*

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

Matching controls only inverse terminal coordinates. Rank detection must bound the projected physical labels, while the equation-section comparison controls the projection kernel. These estimates precede every limit.

The estimates of III.12.1–III.12.5 are uniform in every admitted volume. The convergence results III.12.7–III.12.8 fix the volume first. Their thresholds may depend on the period, labels, compact spatial set, derivative order and test function. The parameter width in Lemma 4.18 may also depend on these data.

All positional limits are off collisions on the torus, including configurations with coordinate ties and configurations crossing the boundary of a period cell. Extension across collisions belongs to VII.4. Every derivative order or stencil is fixed before the cutoff threshold is chosen.

Sub-power factors are absorbed by the positive error exponents. Fixed-level convergence uses a positive lower bound on the scalar-normalized partition function; the additive action scalar need not converge.

<a id="unit-notation"></a>

## 6. Notation

- **Written proof:** eventually in the mesh

  **Lean (glossary):** [`mesh`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L13)

  **Meaning:** for $N\ge N_0$ and all $p$

- **Written proof:** sub-power growth

  **Lean (glossary):** [`Sluggish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L37-L38), [`flight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Rates.lean#L40)

  **Meaning:** $\|w\|\le a_N^{-\varepsilon}$ for all $\varepsilon>0$; flight $(\varepsilon)=a_N^{-\varepsilon}$

- **Written proof:** trial $F$, local

  **Lean (glossary):** `Trial`, [`Stencil`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L29)

  **Meaning:** site-indexed lattice observables on a fixed stencil

- **Written proof:** $T_m(o)$, $R_m$

  **Lean (glossary):** [`center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L34-L40), [`rootTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226-L227)

  **Meaning:** centred tiling of side $a_m$; chessboard root

- **Written proof:** affordable, owed, funded

  **Lean (glossary):** [`Affords`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L19-L22), [`Owed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L24), [`Funded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L28)

  **Meaning:** centred root bound by $u(m,N,p)$, $v(N,p)$, $u(m)$

- **Written proof:** $\Delta_\mu$, $\Delta_l$

  **Lean (glossary):** [`farther`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L16-L17), [`hops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L19-L21)

  **Meaning:** $a_N$-normalized forward differences

- **Written proof:** tucked of degree $d$

  **Lean (glossary):** [`Tucked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L47-L49)

  **Meaning:** $a_N^dF$ regular with sub-power bounds

- **Written proof:** coin; $O(x)$

  **Lean (glossary):** [`Coin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L146-L147), `Bid.upper`

  **Meaning:** label sequence with sub-power inverse terminal coordinates; its representative

- **Written proof:** $\pi_{N,p}$

  **Lean (glossary):** [`Presentation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L39-L41), [`display`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L50)

  **Meaning:** idempotent with kernel the dressed equation ideal

- **Written proof:** $M_j$, detector $\mathcal P_{k,b,l}$

  **Lean (glossary):** [`monitor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L14), [`assay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L86), [`probe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L88)

  **Meaning:** test correlation; iterated directional average

- **Written proof:** $\phi_{jc}$

  **Lean (glossary):** [`focus`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L21)

  **Meaning:** free Maxwell value of test $j$ on basis vector $c$

- **Written proof:** centred budget

  **Lean (glossary):** [`Wcmain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L38-L40)

  **Meaning:** root $\le A\,a_m^{-d-\varepsilon}$

- **Written proof:** kernel bounds

  **Lean (glossary):** [`FixedBounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L50-L52)

  **Meaning:** III.12.1

- **Written proof:** run, ties

  **Lean (glossary):** [`Run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48), [`Run.Ties`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L65-L71)

  **Meaning:** record of one construction; its inputs for this unit

- **Written proof:** fan parameter $s\in[-1,1]$

  **Lean (glossary):** [`Ray.sun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Ray/Gain.lean#L22), [`ask`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gain/Resolve.lean#L72)

  **Meaning:** level-0 coupling $\bar\beta+ws$

- **Written proof:** $\mathrm{PB}(t)$

  **Lean (glossary):** [`PaidBeam`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Dome.lean#L31-L32)

  **Meaning:** power series on $[-1,1]$ with $\ell^1$ coefficient norm $\le t$

- **Written proof:** $a_j^{-1}$

  **Lean (glossary):** [`intervalClock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Budget.lean#L34)

  **Meaning:** $D_j=\ell_0\cdots\ell_{j-1}$

- **Written proof:** campaign, pillars, sky

  **Lean (glossary):** [`Campaign`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stage/Crests.lean#L20-L27), [`Pillars`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Vendee.lean#L22-L27), [`Sky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Oz.lean#L22-L28)

  **Meaning:** records carrying the fan and its bounds

- **Written proof:** fixed-level convergence; function convergence

  **Lean (glossary):** [`Helmet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Honors.lean#L30-L35), [`Confluence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Basin.lean#L10-L12)

  **Meaning:** Cauchy couplings and weighted activities; eventual uniform boundedness and uniform Cauchy convergence of functions

- **Written proof:** point-Cauchy property

  **Lean (glossary):** [`Purchased`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L56-L58)

  **Meaning:** Cauchy correlations at ceiling addresses when no coordinate projections tie

- **Written proof:** positional limit

  **Lean (glossary):** [`PositionsUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L25-L36)

  **Meaning:** III.12.8; (D5) of the main statement


<a id="unit-limitations"></a>

## 7. What remains unexplained
1. **Local matching and equation sections.** Lemma 4.14 imports the local-to-primary estimate of III.11; only its reduction to a coin and an $a_N^{1/16}$ root bound is checked here. The construction of the auxiliary sections from the Maxwell equation ideal, and its relation to a lattice Schwinger–Dyson identity, remain unverified. Lemma 4.10 uses their exact distant-spectator identity, without identifying it with the Wilson action's naive equation of motion.
2. **One-step observable transfer.** The capacity estimate used by Lemma 4.16 remains at statement level. Its coefficient and remainder constants require the one-step analysis.
3. **Analytic estimates.** The intermediate weighted estimates in Lemma 4.17 and the identification of spatial derivatives of the analytic limit in Lemma 4.18 remain at statement level. The outer series-convergence argument is checked.
4. **Additional estimates in §4.4.** The large-field and primary-step results and the two transfer comparisons retain their full hypotheses in III.8–III.10. Their proofs, and the detailed small-shift lawfulness estimate, are not checked here.
5. **Fixed-level convergence and tails.** The analytic trajectory-convergence theorem and the multiscale remainder and omission estimates remain imported inputs; their applications are checked. The tail argument needs only $B_j=\lceil(\log\hat\beta_j)^2\rceil\to\infty$, not geometric decay in $j$.

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

# III.12. Bounds uniform in the volume and convergence as the spacing tends to zero

*Part III — Ultraviolet construction (renormalization group).* 18,973 lines of Lean in 3,138 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is **checked** against the Lean and rewritten by a second model; a final editing round is in progress. It is updated as it improves.


**Part:** III, Ultraviolet construction (renormalization group). **Lean:** chapter 30, [`YM/FullVolume/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume). The root files (`Rent`, `Hits`, `Sluggish`, `Cohort`, `Skein`, `Windows`, `Pavilion`, `Maintain`, `Stand`, `Lit`, `Silent`, `Ocean`, `Paid`, `Moneys`, `Discrete`, `Literal`, `Cross`, `Forge`, `Region`, `Tuned`, `Strings`, `Profiles`) hold the analytic argument. The work packages (`Fields`, `Gables`, `Mark`, `Spiral`, `Relay`, `Nectar`, `Tess`, `Fares`, `Ray`, `Amp`, `Shroud`, `Finale`, `Florid`, `Glitz`, `E6`, `Sector`, `Rank`, …) hold the convergence argument, the parameter dependence and estimates filed here from other chapters. **Size:** 18,973 lines in the main-theorem closure.

**Scope.** The folder name is misleading: this chapter does not take the infinite-volume limit. It proves three outputs of the ultraviolet construction.

- (a) Bounds on lattice correlation functions of composite observables and of their finite differences at separated points. The bounds are uniform in the volume and eventually uniform in the cutoff.
- (b) Convergence of these correlation functions as $N\to\infty$ at each fixed volume, with smooth limits.
- (c) Power-series bounds on their dependence on the renormalized coupling. The assembly uses these.

A sizable part of the folder serves none of these purposes:

- connected-activity and large-field estimates (III.8, III.10);
- stationary-branch records (III.6);
- price lists (III.2);
- the record of the whole construction, the *run*.

Several theorems proved in this folder (`Run.financed`, `genuine`, `positioned`, `prepared_rows`, `Campaign.purchased`, `Campaign.realUV`) are listed under VIII.1 in the declaration-to-unit map. They are described here because their proofs are the content of this chapter.

**Notation.**

- $N$ is the mesh index. The lattice spacing is $a_N=1/D_N$, where $D_N=L_0\cdots L_{N-1}$ is a product of odd block sizes.
- $p$ is the volume index. $\Lambda_{N,p}$ is the torus of physical side $L_p$, with $L_pD_N$ sites per axis.
- $m,j,k$ are renormalization-group levels. $\beta_{N,p}$ is the bare inverse coupling, $\mathbb E_{N,p}$ the Wilson expectation, and $\hat\beta_j$ the renormalized inverse coupling at level $j$.
- $\mathrm{Lab}_d$ is the finite-dimensional space of labels of degree $d$. $O_{N,p}(v;o)$ is the lattice representative of $v\in\mathrm{Lab}_d$ at the site $o$ (II.1).
- $\mathcal N_d\subset\mathrm{Lab}_d$ is the equation ideal of the free Maxwell field, and $F_d=\mathrm{Lab}_d/\mathcal N_d$.
- *Eventually in the mesh* means: there is $N_0$ such that the statement holds for all $N\ge N_0$ and **all** $p$ (the filter [`mesh`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L13); its docstring reads "Tails uniform in ALL admitted periods"). It is not an iterated limit.
- A sequence $w_{N,p}$ has *sub-power growth* if for every $\varepsilon>0$, eventually in the mesh, $|w_{N,p}|\le a_N^{-\varepsilon}$ ([`Sluggish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L37-L38)). The Lean quantity [`flight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Rates.lean#L40) $(\varepsilon)$ equals $a_N^{-\varepsilon}$, because [`scale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L115) $(N)=\log a_N^{-1}$.

## 1. What this unit proves

**Definitions.**

- A *trial* $F$ is a family of complex functions $F_{N,p}(o)$ of the gauge field on $\Lambda_{N,p}$, indexed by a site $o$. It is *local* if, eventually in the mesh, $F_{N,p}(o)$ depends only on links in $o+X$ for a fixed finite $X\subset\mathbb Z^4$ ([`Stencil`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L29)).
- *Chessboard root at scale $m$.* For $m\le N$, $T_m(o)$ is the tiling of $\Lambda_{N,p}$ by cubes of physical side $a_m$ with one cell centred at $o$ ([`center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L34-L40)). Let $G$ be bounded, measurable and gauge invariant, localized in the central cell. Then $R_m(G)=\big|\mathbb E_{N,p}\prod_{c}G^{(c)}\big|^{1/\sharp\text{cells}}$. Here $G^{(c)}$ is obtained by reflecting $G$ into the cell $c$ through the cell walls, and is complex conjugated after an odd number of reflections. The number of cells is $\sharp\text{cells}=(L_p/a_m)^4$ ([`rootTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226-L227)).
- $F$ is *affordable at cost* $u(m,N,p)$ if $F$ is local and the following holds for all large $m$, eventually in the mesh: $F_{N,p}(0)$ is localized in the central cell of $T_m(0)$ and $R_m(F_{N,p}(0))\le u(m,N,p)$.
  - $F$ is *owed at cost* $v(N,p)$ if it is affordable at a cost independent of $m$.
  - $F$ is *funded* if it is affordable at a cost $u(m)$ independent of $(N,p)$.
  
  Lean: [`Affords`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L19-L22), [`Owed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L24), [`Funded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L28).
- *Normalized differences:* $(\Delta_\mu F)_{N,p}(o)=a_N^{-1}\big(F_{N,p}(o+e_\mu)-F_{N,p}(o)\big)$, and $\Delta_l=\Delta_{\mu_1}\cdots\Delta_{\mu_k}$ for a list $l=(\mu_1,\dots,\mu_k)$ of axes ([`farther`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L16-L17), [`hops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L19-L21)).
- A *coin* of degree $d$ is a sequence $x=(x_{N,p})$ in $\mathrm{Lab}_d$ whose coordinates at the top level have sub-power growth ([`Coin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L146-L147)). Bounded sequences are coins. $O(x)$ denotes the trial $O_{N,p}(x_{N,p};\cdot)$.
- A *presentation* is, for each $d$ and each $(N,p)$, an idempotent linear map $\pi_{N,p}$ on $\mathrm{Lab}_d$ ("equations belong to the kernel"; [`Presentation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L39-L41), IV.1).

**Proposition III.12.1 (kernel bounds uniform in the volume).** Let $R$ be a run (§2) for a simple gauge group $G$, with Wilson family $C$. Fix $n$, labels $v_i\in\mathrm{Lab}_{d_i}$ ($1\le i\le n$), a finite list $\lambda$ of pairs (slot $i$, axis $\mu$), and $r>0$. Then there are $B\ge 0$ and $N_0$ with the following property. For all $N\ge N_0$, all $p$, and all $x\in(\mathbb Z^4)^n$ whose images in $\Lambda_{N,p}$ satisfy $a_N\,\mathrm{dist}(x_i,x_j)\ge r$ for $i\ne j$,
$$\Big|\Delta_\lambda\,\mathbb E_{N,p}\big[O_{N,p}(v_1;x_1)\cdots O_{N,p}(v_n;x_n)\big]\Big|\le B .$$
Here $\Delta_{(i,\mu)}$ is the normalized forward difference in $x_i$ along $e_\mu$, and $\mathrm{dist}$ is the lattice distance on the torus. $N_0$ and $B$ do not depend on $p$.
*Status:* theorem, for every run; the run supplies all inputs (§2).
*Lean:* [`FixedBounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L50-L52) (statement), [`gKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L15-L16) (the differenced kernel), [`genuine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L62) (theorem), [`funding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L42-L61) (reduction to III.12.2).

**Proposition III.12.2 (derivative closure of the chessboard budget).** Let $R$ be a run for a simple $G$. Let $w=(w_{N,p})$ be a sequence in $\mathrm{Lab}_d$ with $\|w_{N,p}\|\le K$ eventually in the mesh, and let $l$ be a list of axes. Then $\Delta_l O(w)$ is funded. That is, there is $u:\mathbb N\to\mathbb R$ such that for all large $m$, eventually in the mesh, $\Delta_lO(w)_{N,p}(0)$ is localized in the central cell of $T_m(0)$ and $R_m\big(\Delta_lO(w)_{N,p}(0)\big)\le u(m)$.
*Status:* theorem.
*Lean:* [`Run.financed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L24-L33).

**Proposition III.12.3 (closure lemma).** Let $C$ be a Wilson family satisfying its consistency conditions (`Makes`) and the following:

1. the centred budget (§2);
2. the scale-selection data `Stock.Tabs`;
3. section data $V_d$ and linear automorphisms $W_d$ of $\mathrm{Lab}_d$ ("dressings"), such that the lattice evaluation of each element of $W_d(\mathcal N_d)$ satisfies the exact local identity of Lemma 4.10;
4. a presentation $\pi$ with the data `Hearthside`: $\ker\pi_{N,p}$ is a dressed copy of $\mathcal N_d$, and $\sup_{N,p}\|\pi_{N,p}\|<\infty$;
5. detector trials of degree $d$ for which the short-distance comparison with the free Maxwell field holds ([`VitalRank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L49-L52)).

Let $F$ be a funded trial whose values $F_{N,p}(o)$ are continuous functions of the gauge field, and let $l$ be a list of axes. Let $x$ be a coin of degree $d$ such that $O(x)-\Delta_lF$ is owed at a cost $u_{N,p}\to0$ in the mesh. Then $\Delta_lF$ is funded.
*Status:* theorem. Hypotheses 1–5 are fields of `Run.Ties` (§2).
*Lean:* [`improved`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L69-L78), [`cap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L23-L63).

**Proposition III.12.4 (uniform rank detection).** Assume hypotheses 1–5 of III.12.3 and fix a list $l$ of axes. For all large $k$ and all sufficiently small $b>0$ there is $Z\ge0$ such that, eventually in the mesh,
$$\|\pi_{N,p}x\|\le Z\,\big\|\mathcal P_{k,b,l;N,p}(\pi_{N,p}x)\big\|\qquad\text{for all }x\in\mathrm{Lab}_d .$$
The detector $\mathcal P_{k,b,l;N,p}:\mathrm{Lab}_d\to\mathbb C^J$ is linear; its $J$ entries are defined in Lemma 4.6. Entry $j$ is the correlation of $O(x)$ with fixed partner observables at a test configuration of scale $k$, averaged over a box of physical side $b$ in the directions of $l$.
*Status:* theorem (conditional on 1–5).
*Lean:* [`trained`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L51-L91), [`probe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L88).

**Proposition III.12.5 (labels in the equation ideal give negligible observables).** Assume `Makes`, `Tabs`, and hypotheses 3–4 of III.12.3. Let $x$ be a coin of degree $d$ with $\pi_{N,p}x_{N,p}=0$ for all $(N,p)$. Then $O(x)$ is owed at cost $a_N^{1/32}$: for all large $m$, eventually in the mesh, $R_m(O(x)_{N,p}(0))\le a_N^{1/32}$.
*Status:* theorem.
*Lean:* [`sweep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L17-L19), [`banked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Silent.lean#L105-L115).

**Proposition III.12.6 (polynomial bounds on the dependence on the coupling).** Let $R$ be a run, $T$ a [campaign](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stage/Crests.lean#L20-L27) for $R$ with [pillars](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Vendee.lean#L22-L27) $W$, and assume the bounds [`Sky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Oz.lean#L22-L28). Let $\bar\beta$ be the target level-0 coupling and $w>0$ the fan width ([`ask`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gain/Resolve.lean#L72)). Fix $p$, labels $V_0$ (an $n$-tuple) and $r>0$. Then there are $b,m\in\mathbb N$, $B\ge0$ and $c\in(0,1]$ with the following property.

Take $m\le j<N$ and $a\in[-1,1]$. Take a one-parameter family $s\mapsto F(s)$, $s\in[-1,1]$, of members of the fan (Wilson theories with the same schedule, sections and labels) whose level-0 inverse coupling at $(N,p)$ is $\bar\beta+w\,a\,s$. Take an $r$-separated configuration $o$ of sites of $\Lambda_{j+1,p}$, embedded into $\Lambda_{N,p}$. Then the correlation
$$s\longmapsto \mathbb E^{F(cs/2)}_{N,p}\Big[\prod_i O(V_{0,i};o_i)\Big],\qquad s\in[-1,1],$$
equals $\sum_{i\ge0}P_is^i$ with $\sum_i|P_i|\le B\,a_{j+1}^{-b}$. The bound is uniform in $N$, in $a$ and in the family $F$.
*Status:* theorem, conditional on the campaign records. These are supplied on the main-theorem route by the assembly (VIII.1).
*Lean:* [`Face.financed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Scrap.lean#L40-L51), [`PaidBeam`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Dome.lean#L31-L32), [`Ray.sun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Ray/Gain.lean#L22) ($=[-1,1]$), [`intervalClock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Budget.lean#L34) ($=a_{j+1}^{-1}$ at level $j+1$), [`slash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Chrome.lean#L58), [`verso`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Chrome.lean#L65).

**Proposition III.12.7 (Cauchy property in the mesh at fixed volume).** Let $(C_n)$ be Wilson families with common schedule, sections and labels, built from histories at cutoffs $f(n)\to\infty$. Assume:

- (i) [`Rising`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L19-L22): each history is a selected branch from a level $k$ on, and agrees with a fixed kinetic path. For every fixed level $i\ge k$, the inverse coupling and the polymer activities at level $i$ of the cutoff-$f(n)$ history are Cauchy in $n$, the activities in their weighted norm ([`Helmet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Honors.lean#L30-L35)).
- (ii) Each label degree is carried by transfer data based at its reference level (`Tenable`).
- (iii) The budget conditions `Ponds` hold eventually.

Fix $p$, labels $v_1,\dots,v_n$, and a point $x$ of the non-collision set $\{x_i-x_j\notin L_p\mathbb Z^4\}$ that lies in the dense set of points with separated ancestry. Then the correlations of $C_n$ at cutoff $f(n)$, evaluated at the lattice points nearest to $x$, form a Cauchy sequence in $n$.
*Status:* theorem (conditional on (i)–(iii)). For the run, (i)–(iii) hold with $C_n$ the run's family and $f(n)=n$. The fixed-level convergence in (i) comes from the record `Winter` (VIII.1).
*Lean:* [`Rising.cinema`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Seat.lean#L37-L45), [`Rising.arrives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L73-L103); run instance [`Campaign.sees`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L30-L38).

**Proposition III.12.8 (positional ultraviolet limit).** Let $C$ be a Wilson family and $e$ an increasing sequence of mesh indices. Assume:

- the conclusion of III.12.1 ([`FixedBounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L50-L52));
- the lattice correlations at nearest lattice points are Cauchy along $e$ at every configuration whose points have pairwise distinct coordinates modulo $L_p$ ([`Purchased`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L56-L58)).

Then for every $p$, $n$ and $v_1,\dots,v_n$ there is a function $f$ on $(\mathbb R^4)^n$, $C^\infty$ on $\mathrm{NoHit}_p=\{x:\ x_i-x_j\notin L_p\mathbb Z^4\ (i\neq j)\}$ ([`NoHit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Patch.lean#L25-L26)), such that:

- (a) the smeared lattice sums converge along $e$ to $\int tf$ for every admissible test function $t$;
- (b) for every finite list of difference stencils, with $g$ the corresponding derivative of $f$:
  - the lattice difference quotients at lattice points converging to $x\in\mathrm{NoHit}_p$ converge to $g(x)$ ([`Cluster`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Strings.lean#L55-L58));
  - their interpolations converge locally uniformly on $\mathrm{NoHit}_p$;
  - the smeared sums of the differences converge to $\int tg$.

*Status:* theorem. The run instance on the full sequence $e=(0,1,2,\dots)$ is [`Campaign.realUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L45). Its hypothesis `Purchased` is derived from III.12.7 in [`Campaign.purchased`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L40-L44).
*Lean:* [`PositionsUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L25-L36), [`positioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L42-L47). [`printed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L52-L57) is a variant along an extraction order and is not on the main-theorem route.

**Consumers.** The assembly record [`Final.Jewel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L133-L149) is produced by [`jewelOf17`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L102-L111). Its fields take the outputs of this unit:

- `deployed` is III.12.1.
- `fullMesh` is III.12.8 on the full sequence. This is item (D5) of the main statement. Through [`from_spec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L117-L126) it gives the ordered limit with the full ultraviolet sequence, (D4).
- `serves` uses III.12.6, through the chain of §4.4 ending in [`Fan.standing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Atlas.lean#L94-L104) and [`Travel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L84-L99).

III.12.2–III.12.5 are internal to this unit. No declaration of `YM/Extraction` or `YM/Spec` refers to III.12.1 or III.12.8. The infinite-volume unit IV.1 consumes the centred budget and the chessboard inequality instead.

## 2. What it uses

**The run and its ties.** A run ([`Run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48); see II.2, III.14) records one complete choice of the construction:

- the constants and block sizes;
- the bare history;
- the gauge doors between levels;
- the transfer data of each degree, which define the representatives $O_{N,p}$;
- reference levels $t(d)$ with smoothness index $J(t(d))\ge d+3$;
- the consistency conditions `Makes` of its family;
- the purchase `bought`.

[`Run.again`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L73-L75), proved through [`ahead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Forge.lean#L60-L72) from `bought`, returns two things. First, a refinement with `Spec.Final` for every extraction order. Second, [`Run.Ties`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L65-L71), which has these fields:

- `control`: the centred budget [`Wcmain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L38-L40) for the family. For every $d$, every $R>0$ and every $\varepsilon>0$ there is $A\ge0$ such that, for every $m\ge t(d)$, eventually in $N$, for all $p$, all $v\in\mathrm{Lab}_d$ with $\|v\|\le R$ and all sites $o$: $O_{N,p}(v;o)$ is localized in the cell of $T_m(o)$ centred at $o$, and its chessboard root is at most $A\,a_m^{-d-\varepsilon}$ ([`centeredBudget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L21-L23)).
- `tabs`: scale-selection data.
- `scrim`, `fridge`: budget records for observables (III.11).
- `receipts`: section data $V_d$, dressings $W_d$ satisfying [`Portfolio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L51-L58), a presentation, and [`Hearthside`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fire.lean#L17-L20).
- `detectors`: for every limit table and every degree $d$, detector rows ([`Columns.Trials`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L53-L66)) with the short-distance data [`Purchases`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bought.lean#L68-L84).

On the main-theorem route the run, campaign and pillars are hypotheses of `jewelOf17`, supplied by the assembly. The existence statements of this folder ([`Run.ramp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L55-L60), [`realized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L83-L95), [`dagger`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Forge.lean#L28-L49), [`rampant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Unlatch.lean#L38-L76), [`Final.july`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L154-L164)) are parallel versions outside the main-theorem closure.

**From other units.**

- **III.11.**
  - The centred budget for the run's family is [`gardena`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Gardens.lean#L19-L40), via [`coastwise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Baskets.lean#L36-L67) and [`tent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Balloon.lean#L22-L47). The centred root of a primary at scale $i$ is $\exp(\text{expense})$, and the expense is eventually below $(d+\varepsilon)\log a_i^{-1}$.
  - `Purchases`: the cumulants of lifted labels at short-distance test configurations are close, in chessboard norm, to the free Maxwell cumulant profile. This is used for rank detection.
  - The remainder comparison (`Cream`, `pudding`, `cider`, `Scrim`, `Fridge`) is the input of [`prepared_rows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Paid.lean#L47-L49).
- **II.1.** Labels and representatives. The normalized observables $a_N^dF$ ([`unpriced`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L25-L26)) and their regularity class ([`clothed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L28-L29), [`section_bounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L90-L118), [`offmask`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L133-L151)). [`offset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L232-L270): the root on a coarse tiling at any interior offset is bounded by the centred root at a finer scale. The matching rate [`gamma`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Estimate.lean#L68) $=1/8$.
- **II.2.** The Wilson family, its consistency conditions `Makes` (translation covariance, locality of the representatives, continuity) and the run record.
- **IV.1.** Tilings, chessboard roots and localized observables. [`Seam`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L14-L19) holds for every $\beta\ge0$ ([`laws`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L21-L24)) and gives two inequalities:
  - the chessboard inequality $|\mathbb E\prod_cG_c^{(c)}|\le\prod_cR(G_c)$;
  - the triangle inequality $R(G+G')\le R(G)+R(G')$.
  
  [`seamless`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L81-L84) gives $\beta_{N,p}\ge0$. Also from IV.1: the presentation and the detector rows; [`stepTotal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L66-L103) (Lipschitz bound in the positions for correlations at separated points, derived from centred budgets); [`growFrom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Tame.lean#L35-L97) (Cauchy on a dense set plus asymptotic equicontinuity gives locally uniform convergence).
- **III.2.** Existence of the Hearthside data (`hearthstone`, `fireplace`) and the price schedule.
- **III.6, III.8, III.9, III.10.** Histories and selected branches; stationary-branch records (used in [`Rising.flooded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L31-L35)). The running coupling satisfies $\hat\beta_j=\mathrm{const}+\kappa_G\log a_j^{-1}$ with $\kappa_G>0$ ([`slopeConstant_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176)). The large-field radius grows without bound in $\hat\beta$ ([`radiusB_tendsto`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E01.lean#L210-L211)).
- **VIII.1.** [`Winter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glide/Vac.lean#L31-L63) (proved by [`offers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glide/Vac.lean#L65-L89)): at every fixed level, the couplings and activities of the cutoff-$N$ histories converge as $N\to\infty$. This is the `Helmet` hypothesis of III.12.7 for the run. VIII.1 also supplies the campaign, pillars and `Sky` records, and the analytic bare coupling [`bareTrial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L70-L77).

**Standard mathematics.**

- Reflection positivity of the Wilson action: Osterwalder–Seiler, *Ann. Phys.* 110 (1978).
- Chessboard estimates: Fröhlich–Israel–Lieb–Simon, *Comm. Math. Phys.* 62 (1978) and *J. Stat. Phys.* 22 (1980); Shlosman, *Russian Math. Surveys* 41 (1986).
- The chessboard seminorm (triangle inequality for $R$): Fröhlich–Lieb, *Comm. Math. Phys.* 60 (1978); Biskup, *Reflection positivity and phase transitions in lattice spin models* (2009).
- Summation by parts. Stability of injectivity of a linear map under small perturbations. The dimension count for a linear map of known rank.
- Arzelà–Ascoli type arguments. Taylor's theorem with remainder.
- Absolutely convergent power series on $[-1,1]$; the Vitali–Montel theorem for the analytic continuation in the coupling (probable).
- The renormalization-group control of effective actions uniformly in the volume: Balaban, *Comm. Math. Phys.* 1984–1989 (references as in III.9).

**Imported constants and assumptions.**

- The exponent $-d-\varepsilon$ in the centred budget. III.12.2 uses it with $\varepsilon=1$.
- The matching chain: rate $\gamma=1/8$, giving an owed cost $a_N^{1/16}$ in `prepared_rows`; the equation-ideal estimate gives $a_N^{1/32}$ (`sweep`).
- The tail factor $e^{-B_j/64}$ ([`brisk`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Sever.lean#L16)), where $B_j$ is the budget radius at level $j$. Positions must have mutual lattice distance at least $B_j^2$ at level $j$.
- All numerical thresholds of the run (III.2).

## 3. Strategy

**Derivative bounds without differentiating estimates.** The centred budget bounds the chessboard root of a primary observable by $A\,a_m^{-d-\varepsilon}$, uniformly in the volume and the cutoff. A normalized difference carries the divergent factor $a_N^{-1}$, so the budget says nothing about it directly. The argument identifies the difference with a composite observable of higher degree and shows that its coefficients stay bounded modulo the equations of motion. It has four steps.

- (1) $a_N^{d+|l|}\Delta_lO(w)$ is again a local observable with sub-power bounds. The remainder comparison of III.11 writes it as a primary $O(x)$ of degree $d+|l|$, up to an error with chessboard root at most $a_N^{1/16}$. The coefficient sequence $x$ is only known to grow sub-power, so the centred budget does not bound $O(x)$.
- (2) *Weak derivatives are bounded.* Average the $a_N$-normalized difference of a correlation function over a box of physical side $b$. It telescopes to a coarse difference quotient over a distance between $b$ and $2b$. The averaged quantity is therefore bounded by $(2/b)^{|l|}$ times a chessboard bound, uniformly in $N$ and $p$. Hence the detector of $\Delta_lO(w)$, and with it that of $O(x)$, is bounded.
- (3) *Equation terms are invisible.* Labels in the dressed equation ideal of the free Maxwell field give observables of chessboard root at most $a_N^{1/32}$. Their lattice evaluation satisfies an exact local identity that makes the chessboard product vanish.
- (4) *The detector is injective on the quotient, uniformly.* As the test scale $k\to\infty$, the tested correlations approach those of the free Maxwell field, whose tests separate $F_d$ (III.11). A perturbation argument in finite dimension then bounds $\|\pi x\|$ by the detector.

Together these give: $\pi x$ is bounded, so $O(\pi x)$ is funded; $O(x-\pi x)$ is negligible; hence $\Delta_lO(w)$ is funded (III.12.2–III.12.5). The chessboard inequality then bounds correlations of funded trials at separated points by the product of their costs (III.12.1).

**Convergence as the spacing tends to zero.** Fix the volume. At each fixed coarse level $j$, the effective density and the effective observables computed from cutoff $N$ converge as $N\to\infty$. This is the hypothesis `Helmet`, supplied for the run by `Winter`. The level-$j$ expression of a correlation, a ratio of two integrals against Haar measure, therefore converges. The true correlation at cutoff $N$ differs from its level-$j$ expression by at most $2F_0e^{-B_j/64}$, uniformly in $N$. The budget radius $B_j\to\infty$ because $\hat\beta_j\to\infty$ (asymptotic freedom). An $\varepsilon/3$ argument gives the Cauchy property at points of a dense set (III.12.7). Three further inputs extend it:

- the Lipschitz bounds from III.12.1 extend it to all non-collision points;
- Taylor bounds from III.12.1 give convergence of difference quotients to derivatives;
- differences to arbitrary order give smoothness of the limit (III.12.8).

**Parameter dependence.** The theory is embedded in a one-parameter *fan*, parametrized by its level-0 coupling $\bar\beta+ws$. The correlations at separated points are absolutely convergent power series in $s$, with $\ell^1$ norm of the coefficients polynomial in $a_{j+1}^{-1}$ and uniform in $N$ (III.12.6). The bound is propagated level by level; each level costs a factor of order the block size. This feeds the analytic dependence of the continuum correlations on the coupling, which is part of the assembly record. The fan is not used for the Cauchy property of III.12.7. The boundary analysis (U5) attributes that property to the fan, but `Rising.arrives` uses only the fixed-level convergence and the tail bound.

**Relation to the literature.** The control of the effective actions follows Balaban's program. What is different here:

- correlations at separated points are bounded by the chessboard estimate from centred local bounds, so no expansion of the observables in large volume is needed;
- derivative bounds come from the rank-detection argument of the first paragraph. We do not know a published analogue (probable).

## 4. Steps

### 4.1 Calculus of the chessboard budget

**Lemma 4.1 (closure properties).** For trials $F,H$ and costs $u,v$:

- $\mathrm{Aff}(F,u)$ and $\mathrm{Aff}(H,v)$ imply $\mathrm{Aff}(F\pm H,u+v)$.
- $\mathrm{Aff}(cF,|c|u)$ holds for any $c=c_{N,p}\in\mathbb C$.
- $\mathrm{Aff}(0,0)$, and finite sums behave the same way.
- Affordability is monotone in the cost.
- It is unchanged if $F$ is modified off a tail of the mesh.

Hence funded trials form a vector space.
*Sketch:* localization is preserved by linear combinations. The root is homogeneous, and satisfies the triangle inequality of `Seam` (the chessboard seminorm property, a consequence of reflection positivity).
*Lean:* [`Affords.sub`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L63-L79), [`Affords.scalar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L80-L87), [`Affords.enlarged`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L61-L62), [`Affords.recurses`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L107-L110), [`Funded.sub`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L116-L118); `neg`, `add`, `zero` and `sum` are in [the same file](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean).

**Lemma 4.2 (all offsets).** Let $F$ be affordable at cost $u$. For every $m$ and every $J\ge1$ there is $k$ with the following property, eventually in the mesh. For every tiling of cell side $a_m$ and every offset $x$ in the margin of width $(\text{side})/J$ of a cell, $F_{N,p}(x)$ is localized in that cell and its root on the tiling is at most $u(k,N,p)$.
*Sketch:* choose $k$ with $3Ja_k\le a_m$ and apply `offset` (II.1), using translation covariance.
*Lean:* [`Affords.every`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L39-L60). *(proof read, except `offset`)*

**Lemma 4.3 (bounded primaries are funded).** Under the centred budget, let $\|v_{N,p}\|\le Y$ eventually in the mesh. Then $O(v)$ is funded, with $u(m)=A\,a_m^{-d-1}$.
*Sketch:* apply the centred budget with $\varepsilon=1$ and $R=\max(1,Y)$, at the offset $0$.
*Lean:* [`Funded.primaries`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L119-L128).

**Lemma 4.4 (products at separated points).** Let $F_1,\dots,F_n$ be affordable at costs $u_1,\dots,u_n$, and let $r>0$. For all large $k$, eventually in the mesh, every configuration $z$ with $a_N\,\mathrm{dist}(z_i,z_j)\ge r$ satisfies
$$\Big|\mathbb E_{N,p}\prod_iF_i(z_i)\Big|\le\prod_iu_i(k,N,p).$$
If all $F_i$ are funded, the left side is bounded uniformly, eventually in the mesh.
*Sketch:*

- Choose $l$ with $a_l<r$, and $k$ with $6n\,a_k<a_l$.
- Translate the tiling of side $a_l$ so that each $z_i$ lies in the interior margin of width $3a_k$ of its cell. Distinct points lie in distinct cells, since their distance exceeds the cell side.
- Write each $F_i(z_i)$ as the reflected copy of an observable localized in the central cell. By Lemma 4.2, its root is at most $u_i(k)$.
- Apply the chessboard inequality. The remaining cells carry the constant $1$, whose root is $1$.

*Lean:* [`cohort`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cohort.lean#L39-L66), [`FullVolume.financed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cohort.lean#L68-L71).

**Lemma 4.5 (III.12.1 from III.12.2).** Let $C$ be a family in which $\Delta_lO(v)$ is funded for every fixed label $v$ and every list $l$. Then $C$ satisfies `FixedBounds`.
*Sketch:* induction on the list $\lambda$ of pairs (slot, axis). The difference in slot $i$ of a correlation equals the correlation in which the $i$-th trial is differenced ([`actuate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L27-L45)); this is linearity of the expectation. So $\Delta_\lambda$ of the kernel is the correlation of trials $\Delta_{l_i}O(v_i)$, each funded. Conclude by Lemma 4.4. Then [`genuine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L62) applies III.12.2 to constant sequences.
*Lean:* [`funding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L42-L61).

### 4.2 Detectors, rank detection and the closure lemma

**Lemma 4.6 (detectors; summation by parts).** A detector row $j$ at test scale $k$ consists of:

- a test configuration $y_{k,j}\in(\mathbb R^4)^{1+e_j}$, generic and contained in a box of side $a_{\mathrm{width}(k)}$;
- partner labels $w_{k,j,u}$ (lifted basis labels, uniformly bounded in norm).

For a trial $F$, the *monitor* is the correlation $M_j(F)(x)=\mathbb E_{N,p}\big[F(x_0)\prod_uO(w_{k,j,u};x_u)\big]$ ([`monitor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L14)). The *assay* is the average of $M_j(F)$ over the first slot, over $n_b=\lceil b/a_N\rceil$ consecutive sites in each direction of $l$, taken at the lattice point of $y_{k,j}$ ([`assay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L86)). The detector is $\mathcal P_{k,b,l}(x)_j=\mathrm{assay}_j(O(x))$. For small $b$, the following hold eventually in the mesh:

- (a) if $F$ is funded with continuous values, then $|\mathrm{assay}(\Delta_lF)|\le v$ for some constant $v$;
- (b) if $F$ is owed at a cost $u_{N,p}\to0$, then $\mathrm{assay}(F)\to0$.

*Sketch:*

- [`scores_hops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L43-L51): $M_j(\Delta_lF)$ is the $a_N$-normalized lattice difference of $M_j(F)$ in the first slot.
- [`same_delta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Skein.lean#L40-L45): averaging $n$ consecutive normalized differences telescopes to $(na_N)^{-1}\big(f(x+ne_\mu)-f(x)\big)$, with $na_N\in[b,2b]$. Iterating gives [`reserve_abs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Skein.lean#L89-L101): $|\mathrm{assay}(\Delta_lF)|\le(2/b)^{|l|}\sup|M_j(F)|$ near the test point.
- [`warded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L86-L101): near a generic test point, $|M_j(F)|\le u(w)\cdot A$. This is Lemma 4.4 applied to $F$ and the partners, which are funded by Lemma 4.3 ([`siblingsPrice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L80-L83)).
- For (b), averaging does not increase the bound ([`rounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Skein.lean#L77-L87)).

*Lean:* [`invites`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L104-L139).

**Lemma 4.7 (averaging is harmless on primaries).** For every $\varepsilon>0$ and $k$, for small $b$ and eventually in the mesh, $|\mathcal P_{k,b,l}(\beta_c)_j-M_j(O(\beta_c))(y_{k,j})|\le\varepsilon$ for all rows $j$ and all lifted basis labels $\beta_c$.
*Sketch:* [`lobby`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Pavilion.lean#L185-L202) gives a radius $t>0$ such that correlations of labels of bounded norm vary by less than $\varepsilon$ within distance $t$ of the test configuration. This holds eventually in the mesh and at every period, including $p=0$. It follows from the single-step Lipschitz bound `stepTotal` (IV.1), which rests on the centred budget. Then choose $2|l|b\le t$.
*Lean:* [`probesUp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L57-L78). *(proof read; `lobby` read, `stepTotal` statement only)*

**Lemma 4.8 (short distances: the free Maxwell values).** For every $\varepsilon>0$, eventually in $k$, eventually in the mesh: $|M_j(O(\beta_c))(y_{k,j})-\phi_{jc}|<\varepsilon$. Here $\phi_{jc}$ is the value of the $j$-th test of the free Maxwell table on the $c$-th basis vector of $F_d$ ([`focus`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L21)).
*Sketch:* `Purchases` (III.11) supplies two facts. First, the lattice correlation of the lifted labels at the scale-$k$ test configuration differs from the free Maxwell value at the tested configuration by at most a gap that goes to $0$ (`Read.full_cost`). Second, the tested configurations converge to the expected one. Continuity of the free correlations then gives the limit $\phi_{jc}$.
*Lean:* [`gaugesFull`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L24-L46), packaged as [`VitalRank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L49-L52). *(proof read; `Purchases` statement only)*

**Lemma 4.9 (rank detection; III.12.4).** The matrix $(\phi_{jc})$ is injective on $F_d$ ([`true_lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stand.lean#L73-L83)): the free tests separate the quotient.
*Sketch:*

- [`firm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stand.lean#L20-L39) gives $\delta,L>0$: every linear map whose matrix is $\delta$-close to $(\phi_{jc})$ satisfies $\|y\|\le L\|\cdot\, y\|$.
- Take $\varepsilon=\delta/4$. The entries of $\mathcal P(\pi\beta_c)$ are within $\delta$ of $\phi_{\cdot c}$, by three estimates: Lemma 4.7; Lemma 4.8; and $\mathcal P(\beta_c-\pi\beta_c)\to0$, which holds by Lemma 4.10 and Lemma 4.6(b).
- $\mathrm{rank}\,\pi_{N,p}\le\dim F_d$ ([`weighed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L21-L47)). Indeed $\ker\pi_{N,p}$ is the dressed image of $\mathcal N_d$, and $\mathcal N_d$ is the null space of the free table (`Maxwell.projectionExact`).
- [`rank_upper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stand.lean#L42-L56): the map $y\mapsto\pi(\sum_cy_c\beta_c)$ is injective by the previous steps, hence onto $\mathrm{ran}\,\pi$ by dimension. This gives $\|\pi x\|\le Z\|\mathcal P(\pi x)\|$ with $Z=A\,(\dim F_d)\,V\,L$. Here $A$ bounds $\|\pi\|$ and $V$ bounds $\|\beta_c\|$.

*Lean:* [`trained`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L51-L91).

**Lemma 4.10 (equation terms; III.12.5).** Let $x$ be a coin with $\pi x=0$. Then $O(x)$ is owed at cost $a_N^{1/32}$.
*Sketch:* write $x$ as the dressed version of a label sequence $y$ in the equation ideal, still of sub-power growth.

- [`ocean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Ocean.lean#L41-L75): $O(x)-H(y)$ is owed at $a_N^{1/32}$. Here $H(y)_{N,p}(o)$ is the bare lattice evaluation of the section data at $o$, scaled by $a_N^{-d}$. The proof goes through [`studded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Paid.lean#L23-L29), a bound by a constant times a sub-power factor times $a_N^{1/8}$.
- [`hole`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Silent.lean#L61-L90): $H(y)$ is owed at cost $0$. By `Portfolio`, the evaluation of a dressed element of $\mathcal N_d$ is [`MicroAt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Micro.lean#L29-L31): for every $\beta\neq0$ and every large torus, its Wilson expectation against any bounded gauge-invariant observable supported at lattice distance $>s$ vanishes. Once the cell side exceeds $2s+2$ lattice units, the copies in the other cells are such observables. So the chessboard product has expectation $0$ and $R_m=0$.

The identity is an exact lattice relation encoding the free equations of motion (probable; see §7).
*Lean:* [`sweep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L17-L19), [`banked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Silent.lean#L105-L115). *(proof read for `sweep`, `banked`, `hole`; `ocean` statement only)*

**Lemma 4.11 (a priori bound on $\pi x$).** Under the hypotheses of III.12.3, $\|\pi_{N,p}x_{N,p}\|\le 2Zc+1$ eventually in the mesh.
*Sketch:*

- By Lemma 4.6, $|\mathcal P(x)|=|\mathrm{assay}(O(x))|\le|\mathrm{assay}(\Delta_lF)|+|\mathrm{assay}(O(x)-\Delta_lF)|\le c$.
- Put $X=\pi x$, $\theta=(1+\|X\|)^{-1}$ and $z=\theta(x-X)$. Then $z$ is a coin, since $\theta x$ and $\theta X$ are. Also $\pi z=0$, so $Z|\mathcal P(z)|\le\frac12$ eventually by Lemmas 4.10 and 4.6(b).
- Hence $\|X\|\le Z|\mathcal P(X)|\le Z|\mathcal P(x)|+Z|\mathcal P(x-X)|\le Zc+\tfrac12(1+\|X\|)$.

The rescaling by $\theta$ converts the absolute decay of Lemma 4.10 into a relative bound.
*Lean:* [`cap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L23-L63).

**Lemma 4.12 (closure lemma; III.12.3).** $O(\pi x)$ is funded by Lemmas 4.11 and 4.3. $O(x-\pi x)$ is owed at $a_N^{1/32}\to0$ by Lemma 4.10, hence funded: a cost tending to $0$ is eventually below $1$ ([`fixed_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L65-L67)). So $O(x)$ is funded. Finally $\Delta_lF=O(x)-\big(O(x)-\Delta_lF\big)$ is funded, by Lemma 4.1.
*Lean:* [`improved`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L69-L78).

### 4.3 Differences of primaries (III.12.2)

**Lemma 4.13 (normalized differences of primaries are local of degree $d+|l|$).** Call $F$ *tucked of degree $d$* if the following holds. There are a stencil containing $0$ and sequences $c_{N,p},b_{N,p}$ of sub-power growth. Eventually in the mesh, $a_N^dF_{N,p}(o)$ is regular on the stencil around $o$, its field-derivative bounds are at most $c_{N,p}$, and its sup norm is at most $b_{N,p}$. Then:

- $O(w)$ is tucked of degree $d$ for every coin $w$;
- if $F$ is tucked of degree $d$, then $\Delta_\mu F$ is tucked of degree $d+1$.

*Sketch:* $a_N^{d}O(w)$ is the section evaluation at the threshold-scaled coefficients ([`charged`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean), II.1); the bounds come from `section_bounds` and `offmask`. For the difference, $a_N^{d+1}\Delta_\mu F(o)=a_N^dF(o+e_\mu)-a_N^dF(o)$. The stencil grows by one step, and the derivative bounds pick up the sub-power shift cost.
*Lean:* [`Tucked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L47-L49), [`Tucked.up`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L60-L75), [`Tucked.farther`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L77-L95), [`Tucked.hops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L97-L101).

**Lemma 4.14 (matching a local observable by a primary).** Let $F$ be tucked of degree $d$, local, and continuous at the origin. Then there is a coin $v$ of degree $d$ such that $O(v)-F$ is owed at cost $a_N^{1/16}$.
*Sketch:* the remainder comparison of III.11 (`newPersist`, `pudding`) writes the normalized local observable as a primary plus a remainder. Its centred root at scale $m$ is at most a constant (depending on $m$ and an auxiliary level chosen by `Tabs`) times a sub-power factor times $a_N^{\gamma}$, with $\gamma=1/8$. [`readyCoin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Paid.lean#L35-L46) and `studded` absorb the sub-power factor into $a_N^{1/8-1/16}$.
*Lean:* [`prepared_rows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Paid.lean#L47-L49). *(statement and reduction read; the III.11 inputs statement only)*

**Lemma 4.15 (proof of III.12.2).** Let $w$ be bounded and set $F=O(w)$, which is funded by Lemma 4.3. By Lemma 4.13, $\Delta_lF$ is tucked of degree $d+|l|$. Lemma 4.14 gives a coin $x$ of degree $d+|l|$ with $O(x)-\Delta_lF$ owed at $a_N^{1/16}\to0$. The run's ties supply hypotheses 1–5 at degree $d+|l|$. III.12.3 then gives that $\Delta_lF$ is funded. The closure lemma is applied once, with the full list $l$; no induction on $|l|$ is needed.
*Lean:* [`Run.financed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L24-L33).

### 4.4 The second renormalization pass and the fan

These packages were read at the level of statements. The roles are (tentative) unless marked otherwise.

**Lemma 4.16 (observables carried through the levels).** One step of the linear transfer of an inserted observable from level $m+1$ to level $m$ turns a transfer tool with a capacity bound into one at the next scale ([`motor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Mark/Wheels.lean#L38-L247)). The steps compose from a base level up to $N$ ([`composeT`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Mark/Vega.lean#L47-L78)). Along a selected branch ([`Branch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Major.lean#L30-L33)) this produces the transfer data of each degree, based at its reference level ([`Branch.composing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Major.lean#L53-L63)). These transfer data define the representatives $O_{N,p}$ of the run (probable).
The level-$d$ coefficients and their coins converge along a sequence of cutoffs ([`Branch.stays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Master.lean#L50-L53), used in Lemma 4.20). [`Branch.tiers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Pole.lean#L50-L59) is part of the same bookkeeping. *(statement only; `composing` proof read)*

**Lemma 4.17 (power series in the tuning parameter, level by level).** Write $f\in\mathrm{PB}(t)$ if $f(s)=\sum_iP_is^i$ on $[-1,1]$ with $\sum\|P_i\|\le t$. This class is closed under sums ($\mathrm{PB}(t)+\mathrm{PB}(t')\subset\mathrm{PB}(t+t')$) and under rescaling $s\mapsto as$ with $|a|\le1$.

- The coefficient maps of the parameter-dependent transfer are in $\mathrm{PB}(\nu\|x\|)$.
- A bound $\mathrm{PB}(t)$ at level $m$ propagates to level $m+1$ as $\mathrm{PB}(L_m t)$ ([`linked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Dais.lean#L64-L80)), or as $\mathrm{PB}(2v_T\chi t)$ ([`destination`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Brace.lean#L61-L78)).
- Since $\prod_{m\le j}L_m=a_{j+1}^{-1}$, iterating gives bounds polynomial in $a_{j+1}^{-1}$.

[`cruise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Vault.lean#L83-L98) gives per-label bounds. [`polynomial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Income.lean#L67-L72) bounds a correlation item at $s\mapsto cs$ by $\mathrm{const}\cdot a_{j+1}^{-\mathrm{debt}}$. Here $c$ is fixed by [`aperture`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Summary.lean#L62-L68) so that $|c|\cdot(\text{charge})\cdot(\text{till})^{-1}\le\frac12$; see also [`storms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Summary.lean#L72-L74). [`Face.financed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Scrap.lean#L40-L51) identifies the item for the full mode with the correlation ([`absolute`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Seat.lean#L31-L33)), which gives III.12.6.
The weighted analytic bounds for the parameter-dependent effective densities ([`attic_close`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Attic.lean#L50-L88), [`many`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Pulse.lean#L101-L104), [`program`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Nectar/Laid.lean#L85-L102)) belong to this fan analysis. [`Amp.give`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Amp/Blank.lean#L16-L39) and [`Amp.stage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Amp/Blank.lean#L42-L43) extend a multilinear series from a dense isometric image, with geometric bounds; this builds the series on real jets without complexifying the field. *(proof read: `PaidBeam` calculus, `slash`, `aperture`, `Face.financed`; the rest statement only)*

**Lemma 4.18 (from the fan bound to analytic continuum correlations).** The following chain feeds the field `serves` of the assembly record (VIII.1):

- [`pricedB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/BarsP.lean#L79-L96): the differenced correlations at level $j\le N$ on a compact set are in $\mathrm{PB}(B\,a_j^{-b})$.
- [`traceS`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Lease.lean#L88-L96) and [`astronomer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Stream.lean#L54-L77): series-valued correlations $U_{j,N}(x)$, with summable level-to-level differences and $N\mapsto U_{j,N}(x)$ Cauchy for each $j$. This is the analytic analogue of §4.5.
- [`charted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Tan.lean#L104-L109), then [`Fan.standing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Atlas.lean#L94-L104): continuum correlations analytic in the complex coupling on a disc, with locally uniform convergence of all parameter derivatives ([`Spending`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Atlas.lean#L85-L91)).



**Lemma 4.19 (estimates filed here from other chapters).**

- A large-field estimate for rate at most $-7/16$ ([`projects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Florid/Gild.lean#L57-L101), namespace of the connected-activity bounds, III.8).
- A primary-step estimate ([`primaryJG`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glitz/RockG.lean#L81-L129), III.10).
- A small shift $|a|\le t$ of a representation keeps it lawful with weakened constants and does not change its evaluation ([`earned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Shroud/Plateau.lean#L53-L67)).
- Comparisons of rank data between two cutoff sequences ([`cams`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rank/Tracks.lean#L79), [`linters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rank/Stitch.lean#L104-L130)).
- The packages `E6`, `Sector` (connected-activity records) and `Stationary.*` (stationary branch).

*(statement only; roles tentative)*

### 4.5 Convergence in the mesh

**Lemma 4.20 (fixed-level convergence).** In the setting of III.12.7, fix $m\ge k$. Then:

- the effective densities at level $m$ of the cutoff-$f(n)$ histories converge in their weighted norm ([`flooded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L31-L35), from `Helmet`);
- the level-$m$ coefficients and coins of each label converge ([`grow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L55-L56), via `Branch.stays`);
- the effective observable and its polymer parts at level $m$ converge uniformly and stay uniformly bounded ([`hail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L57-L61)). In Lean this is the notion [`Confluence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Basin.lean#L10-L12): a uniformly bounded, uniformly Cauchy sequence of functions.

*(statements read; `Branch.stays` statement only)*

**Lemma 4.21 (correlations computed at a fixed level converge).** Let the level-$j$ data be as in Lemma 4.20, and let the normalization be bounded below by $a>0$. Then the level-$j$ value
$$\mathrm{Cresting}_j(n)=\frac{\int(\text{effective density}\times\text{effective observables})\,d\,\mathrm{Haar}}{\text{normalization}}$$
is Cauchy in $n$.
*Sketch:* the integrand converges uniformly with a uniform bound. The normalizations converge to a positive limit. The quotient converges.
*Lean:* [`Confluence.laven`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Ivy.lean#L37-L39), [`Rising.latter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L57-L66), with the uniform bounds [`ships`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L51-L53) and [`limitVault`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L29-L33).

**Lemma 4.22 (tail bound uniform in the cutoff).** Let $r<j<N$. Assume the positions satisfy the level-$j$ separation $\mathrm{dist}\ge B_j^2$ in level-$j$ lattice units, and that their nearest points are consistent across levels. Let the weights at the base level $r$ be chosen from the uniform bound on the coefficients ([`creditP`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean)). Then
$$\big|\mathbb E_{N,p}\big[\textstyle\prod O\big]-\mathrm{Cresting}_j\big|\le \frac{F_0}{\tfrac12 e^{B_j/64}} .$$
$F_0$ depends on the base-level data, not on $j$ or $N$.
*Lean:* [`Sever.echoes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Peat.lean#L41-L64). *(statement read; its proof, through `Frost.upper` and `omissions`, not read)*

**Lemma 4.23 (Cauchy property of the pilot quantities).** For every mode (subset of labels), the correlations $p_n$ at cutoff $f(n)$ are Cauchy.
*Sketch:* $g(j)=e^{B_j/64}\to\infty$, because $B_j$ is the budget radius at $\hat\beta_j$ and $\hat\beta_j=\mathrm{const}+\kappa_G\log a_j^{-1}\to\infty$. Choose $j$ with $g(j)>2$ and $2F_0/g(j)\le\varepsilon/4$. Lemma 4.22 bounds $|p_n-\mathrm{Cresting}_j(n)|$ by $\varepsilon/4$ for large $n$. Lemma 4.21 gives the Cauchy property of $\mathrm{Cresting}_j(n)$. Conclude with the triangle inequality.
*Lean:* [`Rising.arrives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L73-L103).

**Lemma 4.24 (III.12.7).** For the mode containing all labels, the pilot quantity is the correlation itself ([`absolute`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Seat.lean#L31-L33)). The positions are the nearest lattice points $o_N=\mathrm{wrap}\circ\mathrm{address}(a_N,x)$. For $x\in\mathrm{NoHit}_p$ with separated ancestry, these satisfy the separation $B_j^2$ for all large $j$ (`Eves`), and they are injective at the base level.
*Lean:* [`Rising.cinema`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Seat.lean#L37-L45).

**Lemma 4.25 (all generic points, full sequence).** For the run, III.12.7 holds on the full sequence of cutoffs ([`Campaign.sees`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L30-L38), with a constant history and $f=\mathrm{id}$). Points with separated ancestry are dense. III.12.1 gives a local Lipschitz bound ([`localLip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Region.lean#L42-L54)), hence asymptotic equicontinuity on compact subsets of $\mathrm{NoHit}_p$ ([`circulating`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L38-L54)). `growFrom` (IV.1) then gives locally uniform convergence on $\mathrm{NoHit}_p$, in particular the Cauchy property at every generic point.
*Lean:* [`Campaign.purchased`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L40-L44).

**Lemma 4.26 (positional limits; III.12.8).** Assume `FixedBounds` and `Purchased`.

- [`established`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L60-L61): the kernels converge locally uniformly on $\mathrm{NoHit}_p$ to a continuous $f$. The argument is the one of Lemma 4.25.
- [`from_previous`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L71-L125): if the $l$-differences converge, so do the $(a{::}l)$-differences. Fix $q=\min(t/2,r/3,\varepsilon/(8(B+1)))$. Compare the lattice quotient $D$ with the coarse quotient $W=k^{-1}\big(F(x+ke_a)-F(x)\big)$, $k\in[q,2q]$. $W$ converges, because $F$ converges at both points ([`returns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L21-L31)). The Taylor bound $|F(x+ke_a)-F(x)-kD|\le Bk^2$ from `FixedBounds` ([`taylor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Region.lean#L58-L77)) gives $|W-D|\le\varepsilon/4$.
- Limits of differences are derivatives of $f$, so $f\in C^\infty(\mathrm{NoHit}_p)$ ([`reachable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Strings.lean#L90-L92)).
- Smeared sums converge by locally uniform convergence and integrability against admissible tests.

The run instance is [`Campaign.realUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L45): `positioned` applied to `genuine` and Lemma 4.25.
*Lean:* [`positioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L42-L47). *(proof read for `circulating`, `returns`, `from_previous`, `established`, `positioned`; `taylor`, `localLip` statement only)*

## 5. Where the difficulty lies

- **The derivative closure is new and short.** Lemmas 4.1–4.15 take about 1,500 lines. The idea is to identify a difference quotient with a composite operator of higher degree. Its coefficients are then bounded modulo equations of motion, using detectors (weak derivatives, which are automatically bounded) and short-distance injectivity. This replaces any smoothness estimate of the effective action in the positions. The hard analytic inputs lie elsewhere:
  - the centred budget, `Purchases` and the remainder comparison (III.11);
  - the exact equation identities (`Portfolio`);
  - the fixed-level convergence `Winter` (VIII.1).
- **Coins, not bounded sequences.** The closure lemma needs only sub-power growth of the coefficients of $x$. The matching of Lemma 4.14 produces nothing better, and Lemma 4.11 is exactly what removes the growth.
- **Small exponents.** The negligible costs are $a_N^{1/16}$ and $a_N^{1/32}$, and the centred budget carries the loss $a_m^{-\varepsilon}$. Any positive power suffices here.
- **Uniformity.** III.12.1–III.12.5 are uniform in the volume (thresholds independent of $p$). III.12.7–III.12.8 are at fixed $p$, with thresholds depending on $p$ (docstring of `Profiles.lean`: "N threshold can depend on ALL those quantities"). The main statement (D5) is per volume, so the weaker form suffices.
- **Limits only off collisions.** Convergence is asserted on $\mathrm{NoHit}_p$ for fixed finite label and stencil lists. Contact terms are treated in VII.4.
- **The fan's role.** III.12.6 serves the analytic dependence on the coupling, not the Cauchy property (§3).
- **Duplication.** The existence argument occurs in several near-identical copies (`Unlatch`, `Fares/Nov`, `Phases/Nov`, `Stage/Unfound`, `Roll/Novena`). Parallel endpoints (`july`, `Run.ramp`, `realized`, `printed`) lie outside the main-theorem closure. A written proof should follow the route `jewelOf17` → `Jewel`.

## 6. Notation

| Written proof | Lean (glossary) | Meaning |
|---|---|---|
| eventually in the mesh | [`mesh`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L13) | for $N\ge N_0$ and all $p$ |
| sub-power growth | [`Sluggish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L37-L38), [`flight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Rates.lean#L40) | $\lvert w\rvert\le a_N^{-\varepsilon}$ for all $\varepsilon>0$; flight $(\varepsilon)=a_N^{-\varepsilon}$ |
| trial $F$, local | `Trial`, [`Stencil`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L29) | site-indexed lattice observables on a fixed stencil |
| $T_m(o)$, $R_m$ | [`center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L34-L40), [`rootTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226-L227) | centred tiling of side $a_m$; chessboard root |
| affordable, owed, funded | [`Affords`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L19-L22), [`Owed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L24), [`Funded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L28) | centred root bound by $u(m,N,p)$, $v(N,p)$, $u(m)$ |
| $\Delta_\mu$, $\Delta_l$ | [`farther`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L16-L17), [`hops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L19-L21) | $a_N$-normalized forward differences |
| tucked of degree $d$ | [`Tucked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L47-L49) | $a_N^dF$ regular with sub-power bounds |
| coin; $O(x)$ | [`Coin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L146-L147), `Bid.upper` | label sequence of sub-power growth; its representative |
| $\pi_{N,p}$ | [`Presentation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L39-L41), [`display`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L50) | idempotent with kernel the dressed equation ideal |
| $M_j$, detector $\mathcal P_{k,b,l}$ | [`monitor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L14), [`assay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L86), [`probe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L88) | test correlation; its box average |
| $\phi_{jc}$ | [`focus`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L21) | free Maxwell value of test $j$ on basis vector $c$ |
| centred budget | [`Wcmain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L38-L40) | root $\le A\,a_m^{-d-\varepsilon}$ |
| kernel bounds | [`FixedBounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L50-L52) | III.12.1 |
| run, ties | [`Run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48), [`Run.Ties`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L65-L71) | record of one construction; its inputs for this unit |
| fan parameter $s\in[-1,1]$ | [`Ray.sun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Ray/Gain.lean#L22), [`ask`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gain/Resolve.lean#L72) | level-0 coupling $\bar\beta+ws$ |
| $\mathrm{PB}(t)$ | [`PaidBeam`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Dome.lean#L31-L32) | power series on $[-1,1]$ with $\ell^1$ coefficient norm $\le t$ |
| $a_j^{-1}$ | [`intervalClock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Budget.lean#L34) | $D_j=L_0\cdots L_{j-1}$ |
| campaign, pillars, sky | [`Campaign`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stage/Crests.lean#L20-L27), [`Pillars`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Vendee.lean#L22-L27), [`Sky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Oz.lean#L22-L28) | records carrying the fan and its bounds |
| fixed-level convergence | [`Helmet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Honors.lean#L30-L35), [`Confluence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Basin.lean#L10-L12) | Cauchy couplings and activities at each level; uniformly Cauchy and bounded |
| point-Cauchy property | [`Purchased`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L56-L58) | correlations at nearest points Cauchy at generic points |
| positional limit | [`PositionsUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L25-L36) | III.12.8; (D5) of the main statement |
| "price", "cost", "fund", "owe" | numerical bounds | not economic (glossary, item 1) |

## 7. Open points for the writer

1. **The matching step (Lemma 4.14).** `prepared_rows` reduces to III.11 (`newPersist`, `pudding`, `Cream`, `cider`), which was not read. A written proof should state it as a theorem: every local observable of dimension $d$ with sub-power bounds equals a renormalized primary of degree $d$ up to $O(a_N^{\gamma})$ in chessboard norm. The exponent chain $1/8\to1/16\to1/32$ was read from the statements.
2. **The exact identity behind Lemma 4.10.** `MicroAt` (vanishing against observables supported at distance $>s$, for every $\beta\neq0$) is a property of the section evaluation of dressed equation-ideal labels (`Portfolio.rank`, produced by `Push.Mark.commissioned`). It was not checked how this identity arises: a lattice Schwinger–Dyson relation, or a property of the chosen sections. Because it holds for every $\beta\neq0$, it is not the naive equation of motion of the Wilson action.
3. **Fixed-level convergence.** The heart of the ultraviolet convergence is `Helmet`, supplied for the run by `Winter` (proved by `offers` in `Glide/Vac`, listed under VIII.1). This was not read. An exposition should place it with III.9–III.10 (convergence of the effective action at fixed scale as the cutoff is removed).
4. **The tail bound (Lemma 4.22).** Only the statement of `Sever.echoes` was read; its proof (`Frost.upper`, `omissions`, `desal`) was not. The decay is $e^{-B_j/64}$, where $B_j$ is the budget radius at $\hat\beta_j$. How fast $B_j$ grows with $j$ (through `radiusB`) was not traced. Since $\hat\beta_j$ grows like $\log a_j^{-1}$, the decay in $j$ may be slower than geometric.
5. **The fan chain (Lemma 4.18).** Read at the level of statements. Still to check: whether the passage from real $s$ to the complex disc uses Vitali's theorem or direct series bounds, and where the bare coupling's analyticity (`bareTrial`) enters.
6. **Hypothesis table.** For III.12.3–III.12.5, the hypotheses come from `Run.Ties`: `control`, `tabs`, `receipts` and `detectors`. For III.12.6–III.12.8 they are `Campaign`, `Pillars`, `Sky`, `Winter`, `Locrian` and `Jams.Wild`, discharged in the assembly; where exactly was not traced. A written proof needs this table.
7. **Roles not understood.** The packages `Luna` (`dashF`, `stencilH`), `Umbra`, `Panel`, `Sym`, `Sector`, `E6`, `Rank` (`cams`, `linters`) and `Shroud` (`earned`); see Lemma 4.19.
8. **Boundary analysis U3/U5.** The boundary analysis attributes the centred budget to `UVExtension.Poppy.acme` and `uv_whole`, and attributes the Cauchy property to the fan. Neither attribution matches the main-theorem route: the centred budget there is `gardena` (III.11), and the Cauchy property is Lemmas 4.20–4.24. `Poppy.acme` and `uv_whole` are outside the main-theorem closure.

**Builds on:** [III.10](III-10.md), [III.1](III-1.md), [II.1](II-1.md), [I.1](I-1.md), [III.11](III-11.md), [III.9](III-9.md), [II.2](II-2.md), [VIII.1](VIII-1.md), [III.16](III-16.md), [III.5](III-5.md), [III.2](III-2.md), [IV.1](IV-1.md), [III.15](III-15.md), [III.7](III-7.md), [III.6](III-6.md), [V.2](V-2.md), [III.4](III-4.md).

**Used by:** [VIII.1](VIII-1.md), [III.2](III-2.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| proof of [`pricedB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/BarsP.lean#L79-L96) and the results it chains to | 3,547 |
| work package [`YM/FullVolume/Panel/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Panel), with [`YM/FullVolume/Umbra/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Umbra), [`YM/FullVolume/Rank/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rank) | 1,761 |
| work package [`YM/FullVolume/E6/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/E6) | 1,564 |
| work package [`YM/FullVolume/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume) | 1,519 |
| work package [`YM/FullVolume/Spiral/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral) | 1,049 |
| work package [`YM/FullVolume/Mark/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Mark) | 948 |
| work package [`YM/FullVolume/Florid/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Florid) | 919 |
| work package [`YM/FullVolume/Luna/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Luna) | 766 |
| work package [`YM/FullVolume/Sector/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sector) | 743 |
| work package [`YM/FullVolume/Sym/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sym) | 676 |
| work package [`YM/FullVolume/Fields/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields) | 648 |
| work package [`YM/FullVolume/Amp/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Amp) | 640 |
| work package [`YM/FullVolume/Ray/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Ray) | 554 |
| work package [`YM/FullVolume/Glitz/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glitz) | 535 |
| work package [`YM/FullVolume/Table/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Table) | 371 |
| work package [`YM/FullVolume/Shroud/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Shroud) | 369 |
| work package [`YM/FullVolume/Poesy/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Poesy) | 351 |
| work package [`YM/FullVolume/Gain/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gain) | 280 |
| work package [`YM/FullVolume/Orbit/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Orbit) | 263 |
| work package [`YM/FullVolume/C/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/C) | 259 |
| work package [`YM/FullVolume/Renew/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Renew) | 188 |
| work package [`YM/FullVolume/Canvas/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas) | 144 |
| work package [`YM/FullVolume/Gables/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables) | 140 |
| work package [`YM/FullVolume/Auvi/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Auvi) | 117 |
| work package [`YM/FullVolume/Relay/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay) | 110 |
| work package [`YM/FullVolume/Artes/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Artes) | 97 |
| work package [`YM/FullVolume/Rise/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rise) | 96 |
| work package [`YM/FullVolume/Roll/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll) | 76 |
| work package [`YM/FullVolume/Tess/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess) | 52 |
| work package [`YM/FullVolume/Nectar/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Nectar) | 51 |
| work package [`YM/FullVolume/Regent/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Regent) | 42 |
| work package [`YM/FullVolume/Dusk/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Dusk) | 29 |
| work package [`YM/FullVolume/Fares/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares) | 28 |
| work package [`YM/FullVolume/Reel/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Reel) | 16 |
| work package [`YM/FullVolume/Stage/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stage) | 11 |
| work package [`YM/FullVolume/Antenna/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Antenna) | 9 |
| work package [`YM/FullVolume/Phases/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Phases) | 5 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **III.12.1** [`stage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Amp/Blank.lean#L42-L43) — A function analytic along a dense isometric leg has a multilinear power-series expansion with geometric norm bounds converging on a ball.
- **III.12.2** [`stays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Master.lean#L50-L53) *(numbered result)* — For m at least r, a certain defined sequence stays within the authorized class.
- **III.12.3** [`pricedB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/BarsP.lean#L79-L96) *(key result)* — For any list of motions, swell beams are paid-for with polynomial bound in the interval clock, eventually in j, uniformly on compact tags.
- **III.12.4** [`financed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Scrap.lean#L40-L51) *(numbered result)* — ∃ b m:ℕ, ∃ (B c:ℝ)(hb:c∈Ray.sun),0 < c ∧ 0≤ B ∧ ∀ j N:ℕ,∀ (h:m ≤ j)(ht:j<N),∀ (a:ℝ)(hp:a∈Ray.sun) (F:Ray.sun→ Face T W), (∀ s:Ray.sun, evalV T W (F s) p N= Muse.Contest.ask (P) (slash a hp s).val) → …
- **III.12.5** [`polynomial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Income.lean#L67-L72) *(numbered result)* — PaidBeam (fun s:Ray.sun=> scoreItem T W N p F B d x ℓ o k (Muse.slash c hb s)) ((denomination R T p m (Fintype.card I))* intervalClock R (j+1)^ (debt b k.val.card))
- **III.12.6** [`storms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Summary.lean#L72-L74) *(numbered result)* — PaidBeam (fun s:Ray.sun=> scoreItem T W N p F B d x ℓ o k (Muse.slash b hb s)) ((2* (FullVolume.Retreat.till L! m p)⁻¹)* (outCharge R T p m (Fintype.card I) v₀/Poly.toll w k))
- **III.12.7** [`cruise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Vault.lean#L83-L98) *(numbered result)* — ∃ ν, Furl T W N p m F Θ (hp.trans_lt hj) B d x ℓ o w (u m) ν ∧ ∀ i,PaidBeam (fun s:Ray.sun=>ν s i) (quoteUnit T j (d i) ‖x i‖)
- **III.12.8** [`lobby`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Pavilion.lean#L185-L202) *(numbered result)* — Primary probe evaluations are uniformly approximated locally near grid points at all periods, including period zero.
- **III.12.9** [`design`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Mark/Slate.lean#L29-L104) *(numbered result)* — Applying the coupon to packed addresses before shrinking yields a bound for the plate with unit amplitude untouched.
- **III.12.10** [`arrives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L73-L103) *(key result)* — For k ≤ r, the pilot quantities along the sequence of families form a Cauchy sequence.
- **III.12.11** [`dashF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Luna/Table.lean#L180-L191) *(numbered result)* — A local property of table entries holds for each index under entry hypotheses.
- **III.12.12** [`cinema`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Seat.lean#L37-L45) *(key result)* — The numeric values of the family sequence at the given data form a Cauchy sequence, so the limit exists.
- **III.12.13** [`stencilH`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Luna/YardP.lean#L153-L172) *(numbered result)* — Under an entry hypothesis, an Epics estimate holds at the next level.
- **III.12.14** [`invites`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L104-L139) *(key result)* — For small b, the average detector is bounded on funded trials and tends to zero on owed trials with vanishing cutoff.
- **III.12.15** [`tiers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Pole.lean#L50-L59) *(key result)* — The matrix T' m hr has the Ritzy property.
- **III.12.16** [`cams`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rank/Tracks.lean#L79) *(numbered result)* — Differences of income and spends between two sequences of data tend to zero.
- **III.12.17** [`linters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rank/Stitch.lean#L104-L130) *(numbered result)* — For each index, two sequences of shot coordinates built from coin uses satisfy a Hue relation relative to holonomy data.
- **III.12.18** [`grow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L55-L56) *(key result)* — Level-d coefficients and associated coins along the sequence are Cauchy, with coins compatible with the capture of data.
- **III.12.19** [`Run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48) *(numbered result)* — A data structure recording one fixed campaign of the multi-scale scheme with retained startup and support data.
- **III.12.20** [`program`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Nectar/Laid.lean#L85-L102) *(key result)* — There exist data E and K satisfying the pulse hypothesis for the given parameters, an existence statement for the construction.
- **III.12.21** [`many`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Pulse.lean#L101-L104) *(key result)* — Combining many ships indexed by sites, under token and attic hypotheses, yields a single consistent extraction of kernel data.
- **III.12.22** [`improved`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L69-L78) *(main result)* — If a family of lattice quantities satisfies a full-volume bound and a vanishing-mesh condition, then the family of its canonical differences also satisfies the full-volume bound.
- **III.12.23** [`destination`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Brace.lean#L61-L78) *(key result)* — Coefficient maps are paid-beam bounded with linear constant, and the beam bound propagates from level m to m+1 with a multiplicative factor.
- **III.12.24** [`projects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Florid/Gild.lean#L57-L101) *(key result)* — For rate at most -7/16, for large side lengths, a budget-point estimate (Jam) holds eventually in x for every tuned configuration on tubes over a branching patch.
- **III.12.25** [`linked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Dais.lean#L64-L80) *(key result)* — Assuming beam bounds at the next level, beam bounds hold at level m and propagate to level m+1 with the block-size factor.
- **III.12.26** [`primaryJG`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glitz/RockG.lean#L81-L129) *(key result)* — A primary-step estimate for the multiscale induction, given suitable scale conditions and acceptance.
- **III.12.27** [`trained`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L51-L91) *(key result)* — For large k and small b, step sizes are uniformly bounded by a constant times the probe norm over the mesh, giving uniform rank detection.
- **III.12.28** [`composeT`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Mark/Vega.lean#L47-L78) *(key result)* — Single-step constructions satisfying cost and affordability conditions at each scale from k' to N can be composed into a full history ending at a given top configuration.
- **III.12.29** [`motor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Mark/Wheels.lean#L38-L247) *(key result)* — A single step of the shared linear column-family construction produces, from a tool with a capacity bound, a new tool with controlled bounds at the next scale.
- **III.12.30** [`composing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Major.lean#L53-L63) *(key result)* — There exists transfer data based on the holonomy structure that satisfies the required composed property.
- **III.12.31** [`earned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Shroud/Plateau.lean#L53-L67) *(key result)* — A small perturbation of a representation by a parameter keeps it lawful with slightly weakened constants while leaving its evaluation unchanged, uniformly for small perturbation size.
- **III.12.32** [`laven`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Ivy.lean#L37-L39) *(key result)* — If a quantity is bounded below eventually and functions are measurable, the sequence of mid-values is Cauchy.
- **III.12.33** [`probesUp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L57-L78) *(key result)* — For small b and fine mesh, the probe at boosted inputs is within epsilon of the monitor of the upper extension.
- **III.12.34** [`attic_close`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Attic.lean#L50-L88) *(key result)* — Under weighted analytic budget hypotheses on multisource arrays, the Attic weighted analytic bound closes with the stated constants.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

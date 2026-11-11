# II.2. Polymer activities, norms, the Wilson family, the construction record, reflection-positive cells

*Part II — Data of the construction.* 3,691 lines of Lean in 793 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is **checked** against the Lean and **edited** in three rounds by three models. It is updated as it improves.


**Part:** II, Data of the construction. **Lean:** [`YM/Marker/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker), [`YM/Ac/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac), [`YM/Ovens/Coffee.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean), [`YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean), [`YM/Extra/MULTISOURCE_TRAJECTORIES/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES), [`YM/Push/GRID_APPROXIMATION/Nil.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Nil.lean), [`YM/MergeProof/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof), [`YM/Next/RANK/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK), [`YM/Vac/Treasury.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean). **Size:** 3,691 lines in 793 declarations used by the main theorem.

This unit supplies the algebraic, combinatorial and numerical estimates used to multiply and sum polymer activities in Part III, especially in the Gaussian comparison of III.11. The activity format is defined in III.1; the Wilson family and construction record in II.1; reflection-positive cells in IV.1.

The results fall into five groups: marker algebra (II.2.1–II.2.4), polymer combinatorics and forced-activity fusion (II.2.5–II.2.8), switching (II.2.9), Gaussian polynomial calculus (II.2.10–II.2.11), and numerical scale comparisons (II.2.12–II.2.13). They are used in III.8–III.13, III.15, VII.2, VII.4 and VII.6; the vacuum-energy estimate also enters V.2.

## 1. What this unit proves

**Conventions.**

- $\Lambda$ is a four-dimensional periodic lattice.
- A *support* is a finite subset of $\Lambda$, and $\mathrm{dist}$ is the lattice separation.
- For $M\in\mathbb N$ and a support $X$, the **cover number** $\mathrm{cov}_M(X)$ is the least cardinality of a set $D\subseteq\Lambda$ such that the union $B_M(D)$ of the balls of radius $M$ around $D$ contains $X$ and is connected for nearest-neighbour steps ([`coverNumber`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L69-L71), [`covers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L52-L55), I.1).
- The parameters of the polymer norms are $P=(r,q,e_P,B,t_P)$, with $r,q,B\in\mathbb N$, $r\ge6$, $q\ge2$, $B\ge1$, $e_P>0$ and $0<t_P\le1$: smoothness order, power, support exponent, cover size and threshold. The mass of an envelope $c$ on support $X$ is $e^{e_P\mathrm{cov}_B(X)}c$.
- Two facts from I.1 are used:
  - $|X|\le(2M+1)^4\,\mathrm{cov}_M(X)$ ([`Corona.pays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L129-L131));
  - $\mathrm{cov}_M(X\cup Y)\le\mathrm{cov}_M(X)+\mathrm{cov}_M(Y)$ if $X\cap Y\neq\emptyset$ ([`Corona.meets_sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Halo.lean#L14-L30)).

### A. Marker algebra

**Proposition II.2.1 (marker algebra).** Let $V$ be a finite set and $R$ a *census* on $V$: a finite family of finite subsets of $V$ that contains $\emptyset$ and all singletons and is closed under taking subsets. Let $\mathcal A_R$ be the space of functions $a:R\to\mathbb C$, written $a=\sum_{x\in R}a(x)\delta_x$, with product
$$(ab)(z)=\sum_{x,y\in R:\ x\cap y=\emptyset,\ x\cup y=z}a(x)\,b(y)\qquad(z\in R).$$
Then:

1. $\mathcal A_R$ is a commutative unital $\mathbb C$-algebra with unit $\delta_\emptyset$.
2. $\delta_x\delta_y=\delta_{x\cup y}$ if $x\cap y=\emptyset$ and $x\cup y\in R$, and $\delta_x\delta_y=0$ otherwise. So every marker $\delta_{\{v\}}$ squares to zero, and products that leave $R$ vanish.
3. $(ab)(\emptyset)=a(\emptyset)\,b(\emptyset)$.
4. If $a(\emptyset)=0$, then $a^k(x)=0$ whenever $|x|<k$; in particular, $a^k=0$ for $k>|V|$.

*Status:* theorem.
*Lean:* [`Marker.Census`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L22-L26), [`Poly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L40), [`Poly.prod`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L68), [ring structure](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean), [`Poly.quiet_mul`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L28), [`Poly.high`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L10-L22), [`Poly.stops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L26-L27).

**Proposition II.2.2 (weighted $\ell^1$ norm).** For $w:V\to(0,\infty)$ put $w^x=\prod_{v\in x}w_v$ and $\|a\|_w=\sum_{x\in R}w^x|a(x)|$. Then $\|1\|_w=1$, $\|c\,\delta_x\|_w=w^x|c|$, and
$$\|ab\|_w\le\|a\|_w\|b\|_w,\qquad \Big\|\prod_{i\in T}a_i\Big\|_w\le\prod_{i\in T}\|a_i\|_w,\qquad \|a^k\|_w\le\|a\|_w^k .$$
Set $\mathrm{Exp}(a)=\sum_{k=0}^{|V|}a^k/k!$.

- $\|\mathrm{Exp}(a)\|_w\le e^{\|a\|_w}$ for every $a$.
- If a countable family satisfies $\|f_i\|_w\le b_i$ with $\sum_ib_i<\infty$, then $\sum_if_i$ converges in $\mathcal A_R$, $\|\sum_if_i\|_w\le\sum_ib_i$, and coefficients of the sum are sums of coefficients.
- $\max_x|a(x)|\le(\min_{x\in R}w^x)^{-1}\|a\|_w$.

The multiplicative and exponential bounds have constant $1$, independently of $R$ and $|V|$. The norm-comparison constant is used to establish convergence.

*Status:* theorem.
*Lean:* [`Poly.toll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L74), [`Poly.price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L76), [`multiplication`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L139-L146), [`multiple`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L148-L152), [`powers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L154-L157), [`Poly.pass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L29), [`pass_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L39-L46), [`budgeted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L51-L58), [`share`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L60), [`equivalent_norm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L102-L112).

**Proposition II.2.3 (exponential and connected polynomial).** Use the marker algebra and exponential of II.2.1–II.2.2.

(a) If $a(\emptyset)=b(\emptyset)=0$, then $\mathrm{Exp}(a+b)=\mathrm{Exp}(a)\,\mathrm{Exp}(b)$ and $\mathrm{Exp}(-a)\,\mathrm{Exp}(a)=1$. More generally, $\mathrm{Exp}(\sum_{i\in s}a_i)=\prod_{i\in s}\mathrm{Exp}(a_i)$ for a finite family with all $a_i(\emptyset)=0$. The zero-constant-term hypotheses are necessary for these identities in general.

(b) If $x\neq\emptyset$, then $\mathrm{Exp}(c\,\delta_x)=1+c\,\delta_x$. Hence, for a finite family of nonempty $x_i\in R$ (not necessarily distinct),
$$\mathrm{Exp}\Big(\sum_{i\in s}c_i\delta_{x_i}\Big)=\prod_{i\in s}(1+c_i\delta_{x_i}).$$

(c) If $F(\emptyset)=1$, there is exactly one $C\in\mathcal A_R$ with $C(\emptyset)=0$ and $\mathrm{Exp}(C)=F$: the **connected polynomial** of $F$. It is obtained by iteration:

- $C_0=0$ and $C_{k+1}=C_k+F-\mathrm{Exp}(C_k)$;
- $F-\mathrm{Exp}(C_k)$ vanishes on all marker sets with at most $k$ elements, so $C=C_{|V|}$;
- each $C_k$ is a polynomial, hence continuous, function of $F$.

(d) If $C(\emptyset)=0$ and $\mathrm{Exp}(C)=F$, then $F\,\mathrm{Exp}(-C)\,P=P$ for every $P$.

*Status:* theorem.
*Lean:* [`Exponential.pass_add`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L56-L88), [`pass_neg`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L90), [`pass_sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L92-L100), [`Trajectories.pass_send`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L113-L122), [`Trajectories.pass_sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L124-L134), [`Expands`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L126), [`roll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L130-L132), [`rolls`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L133-L149), [`roll_cont`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L151-L156), [`Expands.uniq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L161-L174), [`connected_spec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L179-L180), [`correct`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L184-L185).

**Proposition II.2.4 (tagged products; repacking).** Use positive weights $w$ as in II.2.2.

(a) Let $\tau:\iota\to R$ and let $s\subseteq\iota$ be finite. Say that **$s$ fits** if the sets $\tau(i)$, $i\in s$, are pairwise disjoint and their union lies in $R$.

- If $s$ fits, then $\prod_{i\in s}c_i\delta_{\tau(i)}=(\prod_{i\in s}c_i)\,\delta_{\bigcup_{i\in s}\tau(i)}$ and $w^{\bigcup_{i\in s}\tau(i)}=\prod_{i\in s}w^{\tau(i)}$.
- Conversely, if $\prod_{i\in s}c_i\delta_{\tau(i)}\neq0$, then $s$ fits.

(b) Let:

- $\sigma:\iota\to\kappa$ assign a *slot* to each entry;
- "admissible" be any property of finite sets of slots;
- $F:\iota\to\mathcal A_R$ satisfy $\sum_i\|F_i\|_w<\infty$.

For finite $s\subseteq\iota$ put $\mathrm{val}(s)=\prod_{i\in s}F_i$ if $\sigma$ is injective on $s$ and $\sigma(s)$ is admissible, and $\mathrm{val}(s)=0$ otherwise. Then $\mathrm{val}$ is summable over finite subsets of $\iota$, and
$$\sum_{s}\mathrm{val}(s)=\sum_{S\subseteq\kappa\text{ finite, admissible}}\ \prod_{k\in S}\ \sum_{i:\,\sigma(i)=k}F_i .$$

*Status:* theorem.
*Lean:* [`Trajectories.Fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L44-L45), [`tagged_prod`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L57-L69), [`fits_of_tagged_prod`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L71-L87), [`toll_union`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L89-L90), [`Packets.summable_value`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Packets.lean#L30-L38), [`Packets.repack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Packets.lean#L114-L124).

### B. Polymer combinatorics

**Proposition II.2.5 (connected components).** Let $X:\iota\to\{\text{supports}\}$ and let $s\subseteq\iota$ be finite.

- Two labels of $s$ are *chained in $s$* if they are joined by a sequence of labels of $s$ whose successive supports intersect.
- A **spark** is a nonempty $s$ in which all labels are chained.
- $\mathrm{Parts}(s)$ is the set of chain classes of $s$, and $X(p)=\bigcup_{i\in p}X_i$.

Then:

1. The parts of $s$ are sparks, pairwise disjoint, with union $s$ and with pairwise disjoint supports $X(p)$.
2. If $S$ is a finite set of sparks with pairwise disjoint supports, then $\mathrm{Parts}(\bigcup S)=S$.
3. If $s$ is a spark and $i\in s$, every label of $s\setminus\{i\}$ is chained in $s\setminus\{i\}$ to a label whose support meets $X_i$.
4. If every label of $s$ is chained in $s$ to a label meeting a support $Y$ (call $s$ a **pack for $Y$**), then every part of $s$ contains a label meeting $Y$.

The same component statements hold when the supports are finite subsets of any set.

*Status:* theorem.
*Lean:* [`Ac.Spark`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L49), [`Parts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L55), [`reconstruct`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L60-L63), [`separate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L72-L77), [`separates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L79-L101), [`excise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L103-L113), [`packHits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L115-L118), [`Collide.uncluttered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L91-L111).

**Proposition II.2.6 (tree bound in cover-number weights).** Let:

- $\iota$ be any set of labels and $X:\iota\to\{\text{supports}\}$;
- $M\in\mathbb N$, $f:\iota\to[0,\infty)$, $a\ge0$ and $\gamma\ge0$ with $(2M+1)^4\gamma\le1$.

Assume the **hit condition with exponent $a+1$**: for every site $x$ the family $\big(\mathbf 1[x\in X_i]\,f_i\,e^{(a+1)\mathrm{cov}_M(X_i)}\big)_i$ is summable, with sum at most $\gamma$. Then for every site $x$,
$$\sum_{s\ \text{spark},\ x\in X(s)}e^{a\,\mathrm{cov}_M(X(s))}\prod_{i\in s}f_i\ \le\ e^{\gamma}-1 .$$
The sum runs over finite sets of labels, so each label is used at most once, and the family is summable.

*Status:* theorem. Used by III.9–III.13, VII.2 and VII.6.
*Lean:* [`Ac.Hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13), [`Ac.roots`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L84-L85), [`Ac.forest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L89-L127).

**Proposition II.2.7 (unique recovery for two kinds of overlap).** A **kiln** on a set $I$ of labels consists of:

- finite sets $\mathrm{men}(i)\subseteq V$ ("mentions");
- finite sets $\mathrm{wall}(i)\subseteq W$ ($W$ another set);
- a set of *dirty* labels.

For finite $s\subseteq I$:

- a label $i\in s$ is **hot in $s$** if it is joined to a dirty label of $s$ by a chain in $s$ of overlapping mentions;
- the **fuel** of $i$ in $s$ is the subset of $V\sqcup W$ consisting of its mentions in the $V$ component and, only when $i$ is hot, its walls in the $W$ component;
- $s$ is a **mole** if it is a spark for fuel overlap;
- the **slabs** of $s$ are its parts for fuel overlap.

Then:

1. Every slab $p$ of $s$ is a mole, and the fuel of its labels computed in $p$ equals the fuel computed in $s$. Distinct slabs have disjoint mention-unions. Distinct slabs that contain a dirty label have disjoint wall-unions. (In a mole, containing a dirty label is equivalent to all labels being hot.)
2. Conversely, let $S$ be a finite set of moles with pairwise disjoint mention-unions, and with pairwise disjoint wall-unions among the members that contain a dirty label. Then the slabs of $\bigcup S$ are exactly the members of $S$.
3. By 1 and 2, $s\mapsto\mathrm{slabs}(s)$ and $S\mapsto\bigcup S$ are inverse bijections between finite sets of labels and such finite sets of moles.
4. Suppose the walls are supports and, inside a mole $s$, overlapping mentions imply overlapping walls. Then $s$ is a spark for the walls. Thus a family of moles can be estimated by II.2.6 whenever its wall supports and weights satisfy that proposition’s hypotheses.

*Status:* theorem. Used by III.11 and VII.4.
*Lean:* [`Kiln`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L123-L126), [`Kiln.Hot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L131), [`fuel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L132), [`Mole`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L133), [`good`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L165-L169), [`fuel_comp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L163-L164), [`clubs_away`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L190-L196), [`walls_away`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L197-L205), [`takes_mole`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L183-L187), [`Kiln.undo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L210-L240), [`Kiln.attends`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L242-L253).

**Proposition II.2.8 (fused gas of forced activities: definitions).** Fix a gauge group $G$ and a periodic lattice $\Lambda$.

*Data.*

- **Pipes**: regular addresses $(\mathrm{reg}_i)$; forced addresses $(\mathrm{ker}_i)$, each with a support, a nonempty inventory contained in it, and an extra test on configurations; nonempty "softer" supports $(Y_i)$, for $i\in\mathbb N$.
- **Tap** $d$: three families of real-valued functions of the configuration, namely regular coefficients $E_i$, forced coefficients $K_i$ and logarithmic coefficients $\ell_i$.
- **Labels** are $\mathbb N\sqcup\mathbb N$: *left* labels are forced kernels, *right* labels are logarithms.
  - The *patch* of a left label $i$ is $\mathrm{supp}(\mathrm{ker}_i)$; that of a right label $i$ is $Y_i$.
  - The *reach* of a left label is $K_i(U)$; that of a right label is $e^{\ell_i(U)}-1$.
- A **pellet** is a finite set of labels that contains at least one left label, is a spark for patch overlap, and whose left labels have pairwise disjoint kernel supports. Pellets form a countably infinite set.

*Fused activities.* Fix a activity parameter point $P$ and a bijective enumeration $F$ of the pellets. Eligibility is always tested at the threshold of $P$. The fused activities keep the regular part $(\mathrm{reg}_i,E_i)$. Their forced part is indexed by pellets:

- address of $F(i)$: support = union of the patches, inventory = union of the left inventories, extra test = all left kernels eligible;
- value
$$\mathrm{solid}_i(U)=\mathbf 1[\text{the address of }F(i)\text{ is eligible at }U]\ \prod_{j\in F(i)}\mathrm{reach}_j(U).$$

The unit also defines the hypotheses under which the fused gas is used. Below, $B$ is the cover size of $P$.

- **Digest condition at $(d,P,\delta,b)$**:
  1. the unfused activities $(\mathrm{reg},\mathrm{ker},E,K)$ are valid at $P$ with regular and forced bounds $\delta,b$;
  2. $\ell_i(U)\neq0$ only if $Y_i$ meets the large-field set of $U$;
  3. $|\ell_i(U)|\le B_i$ for every $i,U$, with $\sum_iB_i<\infty$;
  4. each $\ell_i$ is gauge invariant and measurable, and has the same value on two configurations that agree on links internal to $Y_i$ and have the same large-field flags on $Y_i$;
  5. lattice affine maps permute the $\ell_i$ covariantly.
- **Fusion bounds at $(d,P,\kappa,\gamma)$**:
  1. $\gamma,\kappa\ge0$ and $(2B+1)^4\gamma\le1$;
  2. there is a label weight $f\ge0$, independent of $U$, with $|\mathrm{reach}|\le e^{-\kappa}f$ on left labels and $|\mathrm{reach}|\le f$ on right labels;
  3. $f$ satisfies the hit condition of II.2.6 for the patches, with exponent (support exponent of $P$) $+1$ and bound $\gamma$.
- For a parameter set $T\subseteq\mathbb R$ and taps $d_a$, $a\in T$, the parametric conditions mean:
  1. for each label $j$, $a\mapsto\mathrm{reach}_j(d_a)$ is continuous in the supremum over configurations, relative to $T$;
  2. one common choice of $\kappa,\gamma,f$ satisfies the reach and hit bounds for every $a\in T$;
  3. the fused values are continuous in the norm $\sum_i e^{e_P\mathrm{cov}_B(S_i)}\sup_U|K_i(U)|$, where $e_P$ is the support exponent and $S_i$ the fused support.

*Status:* definitions, plus one theorem (an enumeration exists). The properties of the fused gas are the work items H01–H04, stated in [`YM/Bid/Kitchen.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean) and proved in III.10:

- **H01** (under the digest condition and fusion bounds): $\mathrm{gas}_{\mathrm{fused}}(U)=\mathrm{gas}_{\mathrm{unfused}}(U)\exp\sum_i\ell_i(U)$ for every configuration $U$.
- **H02** (under the digest condition and fusion bounds): the fused forced activities satisfy the K-bound $v$ whenever $e^{-\kappa}(e^{\gamma}-1)\le v$.
- **H03** (under the digest condition): they form a forced family with the lattice moves.
- **H04**: if the unfused representations form a continuous parameter curve, conditions 1 and 2 above imply that the fused representations form such a curve. The path data, cutoff and parameters $P$ are fixed along the curve.

At startup in III.9, the digest and fusion bounds follow from clip compatibility, threshold and coupling bounds, and the packet estimates in the cited results ([`Start.digests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Cake.lean#L27-L36), [`Loan.buys`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Funds.lean#L120-L123)).
*Lean:* [`Ovens.Pipes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L23-L27), [`Tap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L32-L35), [`reach`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L48), [`contains`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L57-L58), [`addr`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L72), [`solid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L74-L76), [`fused`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L78), [`Digests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L81-L90), [`Buys`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L94-L98), [`invariantJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L105-L107), [`little`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L109-L112), [`retakes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L115-L117), [`encoding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L121-L133); the obligations [`Bid.H01`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L15-L16)–[`H04`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L33-L35), proved by [`Work.H01.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H01.lean#L253-L255), [`H02.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H02.lean#L17-L80), [`H03.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H03.lean#L332-L334), [`H04.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H04.lean#L155-L161) (III.10).

### C. Switching

**Proposition II.2.9 (switching).** Let $\iota$ be finite. For $x\in\mathbb R$ and $g:2^\iota\to\mathbb R$ put $\mathrm{val}_x(g)(r)=\sum_{i\subseteq r}x^{|i|}g(i)$. This is the value at $x\mathbf 1_r\in\{0,x\}^\iota$ of the multilinear polynomial $\sum_ig(i)\prod_{v\in i}X_v$.

(a) For $x>0$, $\mathrm{val}_x$ is a linear bijection of $\mathbb R^{2^\iota}$.

(b) Let $(f_x)_{x\in[0,1]}$ be functions on $2^\iota$. Say $(g_x)$ **models** $f$ if $\mathrm{val}_x(g_x)=f_x$ for $x\in[0,1]$ and $g_x\to g_0$ as $x\downarrow0$. In that case $\mathrm{jet}(f):=\lim_{x\downarrow0}\mathrm{val}_x^{-1}(f_x)$ exists and equals $g_0$.

(c) A family $(f^u)_u$ is **paid at cost $c$** if there is $b\ge0$ on $2^\iota$ with $\sum_ib(i)\le c$ such that, for each $u$, some model $g^u$ of $f^u$ satisfies $|g^u_x(i)|\le b(i)$ for all $x\in[0,1]$. Then:

- $|f^u_x(r)|\le c$ for every $u$, $r$ and $x\in[0,1]$;
- paid families are closed under finite sums (costs add), finite products (costs multiply), scalar multiples (cost multiplied by the absolute value), and restriction by zero outside a set of parameters. Families of paid functions with summable costs may also be added, and their jets sum to the jet of the sum. Products of models obey the rule $X_v^2=xX_v$: $\mathrm{val}_x$ turns the product $(p\ast_xq)(k)=\sum_{i\cup j=k}x^{|i\cap j|}p(i)q(j)$ into the pointwise product;
- a monomial $u\mapsto c(u)\,\mathbf 1[i\subseteq r]\,x^{|i|}$ with $|c|\le b$ is paid at cost $b$.

(d) If $f$ has a model and $f_x(r)=f_x(r\setminus\{v\})$ for every $r$ and $x\in[0,1]$, then $\mathrm{jet}(f)(i)=0$ whenever $v\in i$. For a paid family on a measurable parameter space, if $u\mapsto f^u_x(r)$ is measurable for each fixed $x\in[0,1]$ and $r$, then $u\mapsto\mathrm{jet}(f^u)(i)$ is measurable for every $i$.

(e) For $\rho:\iota\to\mathcal A_R$ put $\mathrm{snd}_\rho(f)=\sum_{i\subseteq\iota}\mathrm{jet}(f)(i)\prod_{v\in i}\rho_v$.

- If $(f^u)$ is paid at cost $d$ and $\|\rho_v\|_w\le1$ for all $v$, then the coefficients of $\mathrm{snd}_\rho(f^u)$ are dominated, uniformly in $u$, by a nonnegative array of $w$-norm at most $d$.
- If $\rho_v(\emptyset)=0$ for all $v$, the coefficient of $\mathrm{snd}_\rho(f)$ on a singleton $\{p\}$ is $\sum_v\mathrm{jet}(f)(\{v\})\,\rho_v(\{p\})$.

*Status:* theorem. For square-zero $\rho_v$, $\mathrm{snd}_\rho$ is multiplicative on functions with models. For paid families with summable costs, it commutes with sums; for paid $f$, it sends $e^f$ to the exponential series of $\mathrm{snd}_\rho(f)$ ([`mul_sounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchCost.lean#L64-L65), [`soundSum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchCost.lean#L81-L87), [`soundExp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchCost.lean#L88-L91)).
*Lean:* [`Switch.value`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L26), [`entire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L33-L42), [`jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L46), [`Models`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L48-L50), [`Models.exact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L58-L63), [`Paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L56), [`Paid.tasting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L77-L79), [`Paid.add`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L88-L93), [`Paid.sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L116-L119), [`paidClick`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L108-L112), [`comb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchProd.lean#L10), [`Paid.mul`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchProd.lean#L46-L50), [`Paid.prod`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchProd.lean#L52-L55), [`jet_erase`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Digits.lean#L27-L36), [`Paid.jet_meas`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Digits.lean#L38-L49), [`mapScores`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchCost.lean#L33-L36), [`sound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchCost.lean#L60), [`Accent.crystal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Jetty.lean#L13-L19), [`Accent.quality`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Jetty.lean#L29-L35).

### D. Gaussian polynomial calculus

**Conventions.**

- $\mathbb C[X]=\mathbb C[X_v:v\in V]$. The variable set $V$ need not be finite; each polynomial uses finitely many variables.
- $\|p\|_1$ is the sum of the absolute values of the coefficients of $p$.
- For $b\in\mathbb C^V$, $\partial_b$ is the derivation with $\partial_bX_v=b_v$.
- A *covariance* is a symmetric $Q:V\times V\to\mathbb C$; no positivity is assumed.
- $\pi(B,d)=(2B(d+1))^d$.

**Proposition II.2.10 (algebraic Gaussian expectations).** Let $Q$ be a covariance. The operators $X_v+\partial_{Q_{v\cdot}}$ on $\mathbb C[X]$ commute; define $\mathcal G_Qp=p(X+\partial_Q)\,1$.

(a) $\mathcal G_Q$ satisfies:

- $\mathcal G_Q1=1$ and $\mathcal G_Q(X_vp)=X_v\,\mathcal G_Qp+\partial_{Q_{v\cdot}}\mathcal G_Qp$;
- $\mathcal G_0=\mathrm{id}$ and $\mathcal G_P\mathcal G_Q=\mathcal G_{P+Q}$;
- $\partial_b\mathcal G_Q=\mathcal G_Q\partial_b$.

(Equivalently $\mathcal G_Q=\exp(\tfrac12\sum_{v,w}Q_{vw}\partial_v\partial_w)$, so $\mathcal G_{-M}$ is Wick ordering with respect to $M$. On each polynomial the derivative sum and exponential series have only finitely many nonzero terms.)

(b) For $m\in\mathbb C^V$ put $\mathbb E_{Q,m}(p)=(\mathcal G_Qp)(m)$. This is a linear functional with $\mathbb E_{Q,m}(1)=1$, and it satisfies, for every finite set $s$ and choice of variables $z_j$, the Wick recursion
$$\mathbb E_{Q,m}\Big(X_v\prod_{j\in s}X_{z_j}\Big)=m_v\,\mathbb E_{Q,m}\Big(\prod_{j\in s}X_{z_j}\Big)+\sum_{j\in s}Q_{vz_j}\,\mathbb E_{Q,m}\Big(\prod_{k\in s\setminus\{j\}}X_{z_k}\Big).$$

(c) *Change of variables.* For a matrix $A=(A_{vz})$ with finitely supported rows, define the linear substitution $p\mapsto p\circ A$ by $X_v\mapsto\sum_zA_{vz}X_z$. If $Q$ is a covariance and $m$ a mean on the new variables, then:

- $\mathcal G_Q(p\circ A)=(\mathcal G_{AQA^{T}}p)\circ A$;
- $\mathbb E_{Q,m}(p\circ A)=\mathbb E_{AQA^{T},Am}(p)$.

(d) *Identification.* Let $\xi$ be a random vector in $\mathbb R^V$ under a probability measure. Assume all polynomial moments of $\xi$ are finite and $\mathbb E[\xi_v\,q(\xi)]=\mathbb E[(\partial_{Q_{v\cdot}}q)(\xi)]$ for every polynomial $q$ (Gaussian integration by parts). Then $\mathbb E[q(m+\xi)]=\mathbb E_{Q,m}(q)$ for every $m\in\mathbb R^V$.

(e) *Bounds.* Let $B\ge1$, $|m_v|\le B$, $|Q_{vw}|\le B$ and $\deg p\le d$. Then
$$|\mathbb E_{Q,m}(p)|\le\|p\|_1\,\pi(B,d).$$
If $(Q',m')$ obeys the same bounds and each corresponding entry of the means and covariances differs by at most $E\ge0$, then $|\mathbb E_{Q,m}(p)-\mathbb E_{Q',m'}(p)|\le\|p\|_1\,E\,\pi(B,d)$. In the first bound, and in the second when $m=m'$, it suffices to assume the hypotheses for entries indexed by the variables of $p$.

*Status:* theorem. Used by III.11 and VII.6.
*Lean:* [`Normal.Symmetric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L21-L23), [`slit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L40), [`cream_comm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L64-L65), [`milk`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L77), [`feeds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L82), [`skims`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L83-L88), [`froze`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L89-L94), [`warms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L96-L102), [`blend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L106), [`spring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTrack.lean#L31-L35), [`prepared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussSubst.lean#L76-L81), [`wets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussSubst.lean#L83-L84), [`VMeasure`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/ParticleMoment.lean#L21-L25), [`payment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/ParticleMoment.lean#L61-L78), [`Common.priced`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean#L36), [`Common.width`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean#L121-L123), [`Common.differs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean#L124-L126), [`Tapes.bound_v`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L44), [`Tapes.differently`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L36-L43).

**Proposition II.2.11 (estimates for Gaussian polynomial steps).** All polynomial degrees below are total degrees.

(a) *Weighted coefficient norms.* For $w:V\to\mathbb N$ and $r\ge0$, the quantity $\|p\|_{w,r}=\sum_\alpha r^{w\cdot\alpha}|c_\alpha|$ is submultiplicative, and $\|\cdot\|_1=\|\cdot\|_{0,1}$. It is a norm when $r>0$ and may be a seminorm at $r=0$. For a linear substitution $X_v\mapsto e_v$ with $\|e_v\|_{w,r}\le c$ and $c\ge1$,
$$\|p\circ e\|_{w,r}\le\|p\|_1\,c^{\deg p}.$$

(b) *Smoothing near the identity.* If $0\le e\le1$, $|Q_{vw}|\le e$ and $\deg p\le D$, then $\|\mathcal G_Qp-p\|_1\le\|p\|_1\,e\,(2(D+2))^D$ and $\deg\mathcal G_Qp\le D$.

(c) *One step.* Let $T_{H,Q}p=(\mathcal G_Qp)\circ H$, where $H=(H_v)$ are linear forms in new variables and $Q$ is a covariance.

- If $C\ge1$, $\|H_v\|_1\le C$, $|Q_{vw}|\le C$ and $\deg p\le d$, then $\|T_{H,Q}p\|_1\le\|p\|_1(2(d+2)C)^d$ and $\deg T_{H,Q}p\le d$.
- For two such pairs, assume $\varepsilon\ge0$, $\|H_v-H'_v\|_1\le\varepsilon$ and $|Q_{vw}-Q'_{vw}|\le\varepsilon$. The difference bound is $\|p\|_1\,\varepsilon\,(2(d+2)C)^d$ ([`crossing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L125-L126)).
- If $Q$ vanishes between the variables of $P$ and those of $R$, then $T_{H,Q}(PR)=T_{H,Q}(P)\,T_{H,Q}(R)$.

(d) *Linearization of a rescaled substitution.* Let:

- $f_v$ be linear forms and $A_v$ polynomials with no terms of degree $<2$, with $\|f_v\|_1,\|A_v\|_1\le B$ and $B\ge1$;
- $0<t\le1$, and $\Phi_t$ the algebra map $X_v\mapsto f_v+t^{-1}A_v(tX)$;
- $K$ is a covariance, $0\le\varepsilon\le1$, $|K_{vw}|\le\varepsilon$ and $\deg P\le n$.

Then
$$\big\|\Phi_t(P)-(\mathcal G_KP)\circ f\big\|_1\le\|P\|_1\big(n\,tB(2B)^n+\varepsilon(2(n+2))^nB^n\big).$$

(e) *Guards and second moments.* Call $g$ an **$\eta$-guard** for $\mu$ if $g$ is measurable, $0\le g\le1$, and $\int(1-g)\,d\mu\le\eta$.

- For a finite measure $\mu$, the product of an $\eta$-guard and an $\varepsilon$-guard is an $(\eta+\varepsilon)$-guard.
- For a probability measure, measurable $f$ with integrable $|f|^2$ and $\int|f|^2d\mu\le B$, and an $\eta$-guard $g$: $\big|\int gf\,d\mu-\int f\,d\mu\big|\le\varepsilon'B+\eta/\varepsilon'$ for every $\varepsilon'>0$.
- Under II.2.10(d), if $\deg p\le d$, $B\ge1$ and $|m_v|,|Q_{vw}|\le B$ on the variables of $p$, then $|p(m+\xi)|^2$ is integrable and $\int|p(m+\xi)|^2\le\|p\|_1^2\,\pi(B,2d)$.

(f) *Coefficients from values.*

- For finite $V$, $d\in\mathbb N$ and $\varepsilon>0$, there are a finite nonempty set $T\subseteq[-\varepsilon,\varepsilon]^V$ and $C\ge0$ such that $\|p\|_1\le C\max_{x\in T}|p(x)|$ for all $p$ of degree $\le d$.
- A polynomial is determined by its values on a real cube of positive side length.
- If $\deg p\le D$, $B\ge1$, $v,w\in\mathbb R^V$, $\delta\ge0$, $|v_i|,|w_i|\le B$ and $|v_i-w_i|\le\delta$, then $|p(v)-p(w)|\le\|p\|_1\,DB^D\delta$.

*Status:* theorem. Used by III.11 and VII.6.
*Lean:* [`Rise.cents`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Rise.lean#L13), [`Rise.funds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Rise.lean#L33-L37), [`Rise.rise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Rise.lean#L51-L66), [`LiftMark.bounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ample.lean#L79-L96), [`Normal.pipe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTags.lean#L113), [`Tapes.Valve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L14-L16), [`Valve.Fair`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L20-L23), [`crest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L37), [`crux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L119-L124), [`bridge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Crust.lean#L59), [`LiftMark.garnish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Pin.lean#L29-L30), [`LiftMark.stock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Pin.lean#L66-L84), [`Guarded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L69-L73), [`guards_mul`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L79-L88), [`escaped`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L108-L125), [`squareFits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L90-L105), [`Spindle.molds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/SpectrumReal.lean#L56-L81), [`Spindle.listen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/SpectrumReal.lean#L22-L28), [`Spindle.amove`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Spirals.lean#L20-L41).

### E. Numbers

**Proposition II.2.12 (scale functions).** For $s>e$ put
$$y=\log\log s,\quad \Pi=e^{y^2},\quad \theta=s^{-1/2}\Pi,\quad h=e^{y^{3/2}},\quad j=h^{1/5},\quad \omega=e^{-\frac7{10}j},\quad M=\lceil(\log s)^2\rceil,\quad W=M^2,$$
all as functions of $s$. Here $\theta$ is the original small-field threshold. Then:

1. For every $b\in\mathbb R$ and $p>0$, eventually $\Pi(s)^b\le s^p$.
2. Eventually $s\theta^2=\Pi^2$, $s\theta^3\le1$, $s\theta^4\le1$, and $2\Pi^v\theta^2\le1$ for every $v\le1$.
3. For all $a>0$, $k\in\mathbb N$ and $c\in\mathbb R$, eventually:
   - $W(s)^k\le\Pi(s)^a$ and $h(s)\le\Pi(s)^a$;
   - $c\log W(s)\le a\,y(s)^2$;
   - $y(s)^2\le a\,W(s/2)$ and $y(s)^2\le a\,j(s/2)$;
   - $j(s)\le h(s/2)$ and $y(s)\le y(s/2)+1$.
4. For every $c\in\mathbb R$ and $a<b$, $c\,\Pi^a\le\Pi^b$ eventually.

Here $f\ll g$ means $f/g\to0$ as $s\to\infty$. For every fixed $a,p>0$, $y^2\ll j\ll h\ll\Pi^a\ll s^p$; also $W(s)\sim(\log s)^4$.

*Status:* theorem. Item 2 is used in III.10, III.11 and V.2 (the per-site vacuum-energy bound [`treasury_stage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L115-L150)); item 3 is used in III.11.
*Lean:* [`Numbers.monitor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L67-L69), [`Hat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L71), [`P`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L72), [`theta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L73), [`cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L74-L78), [`uniform_loop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L83-L108), [`Perch.bill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L25), [`walls`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L28), [`hot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L30), [`join`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L31), [`w`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L32), [`logspan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L59-L69), [`rate_wall`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L71-L90), [`rate_inverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L94-L108), [`rate_fire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L110-L122), [`fire_stretch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L127-L137), [`Spindle.hotter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Spirals.lean#L127-L134), [`Paint.q_power`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/NoSpill.lean#L98-L101), [`Glimmer.transports`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Planck.lean#L34-L36).

**Proposition II.2.13 (numerical conditions for the rank comparison).** Use the scales of II.2.12, and write $\Pi=\Pi(s)$, $y=y(s)$ in formulas involving both $s$ and $u$.

(a) *Shelf conditions.* Fix $m,Q\in\mathbb N$, $e,U,V\ge0$ and $a>0$. Put $A_Q=(2Q+1)^4$ and $G(u)=e^{-a h(u)^2}$. For all sufficiently large $s$, the following ten inequalities hold simultaneously for every $u\in[s/2,s]$:
$$\begin{aligned}
8&\le W(u),\\
W(u)^2+2QW(u)&\le M(s)^{10},\\
64(mU+1)y^2&\le W(u),\\
64(mU+4\cdot2^m)y^2&\le W(u),\\
2^m\Pi^{-25/32}+\Pi^{-1}+\Pi^{-2}&\le\Pi^{-3/4},\\
e^{mUy^2+4\cdot2^m y^2+2j(u)}G(u)+2^m\Pi^{-3}&\le\Pi^{-1},\\
(2W(u)+1)^4\Pi^{-1}&\le1,\\
e^{eA_Q}\Pi^{1/8}\Pi^{-31/32}&\le\Pi^{-25/32},\\
e^{(e+1)A_Q}\Pi^{1/8}\Pi^{1/4}&\le\Pi,\\
e^{-2j(u)}(e^{\Pi^{-1}}-1)&\le\Pi^{-3/4}\omega(u).
\end{aligned}$$
The fifth line uses $e^{mVy^2}\Pi^{-mV-2}=\Pi^{-2}$. The seventh is the geometric hypothesis of II.2.6 with cover size $W(u)$ and hit bound $\Pi^{-1}$.

(b) *Tally conditions.* For the same data, fix $\alpha\ge1$ and $L>1$, and put
$$n(L,s)=\left\lceil\frac{10\log M(s)}{\log L}\right\rceil.$$
For all sufficiently large $s$,
$$(\alpha+1)^{n(L,s)}\Pi(s)^{-3/4}\le\Pi(s)^{-1/2},$$
and (a) holds for every $u\in[s/2,s]$. Moreover,
$$G(u)\le\Pi(s)^{-3/4}\omega(v)\qquad(u,v\in[s/2,s]).$$

(c) *Gaussian prices.* For $k,n\in\mathbb N$, set $\phi=1/(4(nk+k+1))$. For every fixed $A\ge1$, eventually in $s$,
$$n\Pi^{-2}(A+\Pi^{-2})^n\pi(\Pi^\phi,nk)+A^n\Pi^{-2}\pi(\Pi^\phi,nk)\le\Pi^{-3/2}.$$
Thus the error parameters $\xi=\Pi^{-2}$, covariance error $\Pi^{-2}$, mean and covariance bound $\Pi^\phi$, and reference norm bound $A$ satisfy the polynomial comparison condition with error $\Pi^{-3/2}$.

(d) *Iteration parameters.* A parameter record consists of an era $(Q,e,U,V,a,\alpha)$ as above, integers $t,g,H_0\ge0$, and real numbers $b,c,f,F,K$ satisfying
$$c\ge1,\quad K\ge1,\quad F\ge0,\quad f+c\le-8,\quad g\ge6,\quad U=V,\quad f=\tfrac1{16}-U,\quad 2V+2\le g-1.$$
Here $t$ is the Taylor order, $g$ the target order, $H_0$ a support parameter, $b$ an exponent, $c$ a coefficient exponent, and $F$ an error exponent. Write $C_d=(2(d+2)K)^d$. At scale $s$ and integer height $H$, the iteration conditions are
$$(\alpha+2)^H\le\Pi,\qquad C_t^H\le\Pi,\qquad C_{2t}^H\le\Pi,\qquad \Pi^{2c+1}+\Pi^{2c+2}\le\Pi^{2c+3},\qquad H\le\Pi.$$
They imply, for every integer $0\le r\le H$,
$$(\alpha+2)^r\Pi^{-g}\le\Pi^{1-g}\le\Pi^{-4}.$$
For $b\ge0$, the block-size conditions
$$L>1,\qquad \log L\ge2(b+2)\log q\quad(q\in\{\alpha+2,C_t,C_{2t}\})$$
hold for all sufficiently large $L$. For any such fixed $L$, the iteration conditions hold for all sufficiently large $s$ at height
$$H(L,s)=\left\lceil\frac{(b+2)y(s)^2}{\log L}\right\rceil$$
([`racetrack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Odometer.lean#L56-L61)).

(e) *Moment and fusion errors.* Define $R_Q(z)=e^{zA_Q}$ and the following polynomial error function. For $B,\varepsilon,w\ge0$ and $D\in\mathbb N$, put
$$\begin{aligned}
q_0&=w\pi(B,D),& d_0&=wDB^D\varepsilon,\\
q_1&=d_0+\varepsilon w^2\pi(B,2D)+\varepsilon+w\varepsilon\pi(B,D),\\
q_2&=2q_0d_0+\varepsilon w^4\pi(B,4D)+2\varepsilon+w^2\varepsilon\pi(B,2D),\\
\mathcal Q(B,\varepsilon,w,D)&=q_1+q_2+(q_0+q_1)q_1+q_1q_0.
\end{aligned}$$
For a parameter record in (d), set $\tau(s)=3h(s)$. The remaining numerical conditions are
$$\begin{aligned}
1\le\tau(s)&\le\Pi-1,& \pi(\tau(s),2t)&\le\Pi,\\
K\pi(\tau(s),1)&\le\Pi,& K+\Pi^{-F}&\le\Pi,\\
4R_Q(e+2)\Pi^{-6}&\le\Pi^{-4},\\
4R_Q(e+2)\mathcal Q(\Pi,\Pi^{-F},\Pi^{2c+3},2t)&\le\Pi^{-g}.
\end{aligned}$$
For every $u\in[s/2,s]$ they also require
$$\begin{aligned}
\tau(u)&\le\tau(s),\\
G(u)+2\Pi^{-2}R_Q(e+3)&\le\Pi^{-1},\\
(2W(u)+1)^4\Pi^{-1}&\le1,& e^{\Pi^{-1}}-1&\le1.
\end{aligned}$$
In the second line, $G(u)=e^{a h(u)^2}G(u)^2$, as in the source definition. All these conditions hold for sufficiently large $s$ whenever
$$g+10Z+10\le F,\qquad Z=2c+8t+13$$
([`funding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Purchased.lean#L49-L56)).

*Status:* theorems and numerical definitions. The constants entering the block-size inequalities in (d) are fixed before $L$. The lower bound on $s$ may depend on all the fixed parameters and on $L$.
*Lean:* [`Perch.Demand`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bird.lean#L21-L31), [`Shelf`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bird.lean#L39-L49), [`mint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bird.lean#L145-L158), [`Era`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Stepped.lean#L37-L40), [`Tally`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Stepped.lean#L55-L58), [`on_time`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Stepped.lean#L81-L89), [`Glimmer.fuel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Planck.lean#L21), [`collected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Planck.lean#L39-L62), [`shed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Planck.lean#L68-L69), [`Tapes.Purse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L20-L38), [`Purse.budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Joule.lean#L41), [`Racer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L64-L69), [`Racer.pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L113-L119), [`Faring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L92-L110), [`torque`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L61), [`Digits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Odometer.lean#L30-L35), [`pulse_ok`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Odometer.lean#L41-L42), [`Panel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Prepaid.lean#L37-L47), [`rentQ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Canal.lean#L30), [`load`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/LedgerGate.lean#L101), [`capZ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Cabal.lean#L38), [`defect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Cabal.lean#L39), [`grant₁`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Combing.lean#L51), [`grant₂`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Combing.lean#L52), [`grant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Festoon.lean#L46-L49), [`Paint.trib`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Fleet.lean#L62), [`Station.more`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L38), [`Station.bump`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L37).

## 2. What it uses

- **III.1, activity format.**
  - [`Activities`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L62-L66) consists of regular addresses (a site belonging to the support), [forced addresses](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L42-L47) (support, inventory, extra test) and coefficient functions.
  - [Eligibility](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L54-L55) of a forced address: support ∩ large-field set = inventory, and the extra test holds.
  - [`Valid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L106-L111) requires regularity and vanishing conditions for the regular coefficients, gauge invariance, measurability, final-field dependence and eligibility for the forced coefficients, affine covariance, and the prescribed regular and forced bounds. The K-bound $v$ requires nonnegative envelopes $b_i\ge\sup_U|K_i(U)|$ whose masses have a summable hit bound $v$ at each site. The [gas](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L129) sums products of forced coefficients over finite selections with disjoint supports and inventories whose union is exactly the large-field set.
  - [`SumBudget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L59-L60) (nonnegative, summable, sum ≤ bound).
  - [`BudgetPoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L125-L136) (order, power, support exponent, cover size $B$, threshold).
  - The large-field set [`flags`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L34-L36), [`Healthy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L41), [`UsesFinal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L84-L85), [`Dominated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/ActivityBounds.lean#L12-L13).
  - II.2.8 uses this format; II.2.6 uses its notion of a nonnegative summable bound.
- **I.1, lattice.** Sites, supports, separation, [`halo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L43-L44), cover numbers, and the cardinality and intersecting-union bounds quoted at the head of §1. The digest condition also uses gauge invariance and lattice affine maps.
- **Standard mathematics.**
  - Polymer gases and the Mayer expansion; the Kotecký–Preiss criterion and its inductive proof (R. Kotecký, D. Preiss, *Comm. Math. Phys.* 103 (1986); R. L. Dobrushin, *AMS Transl.* 177 (1996)); D. Brydges, *A short course on cluster expansions* (Les Houches 1984); Glimm–Jaffe, *Quantum Physics*, cluster expansions.
  - Cover-number (connected block-count) weights for polymers in the style of Bałaban's renormalization-group papers.
  - Exponential and logarithm on the nilpotent ideal of a commutative algebra. Connected parts as logarithms of generating functions; Möbius inversion on the Boolean lattice (G.-C. Rota 1964) for the triangular inversion in II.2.9.
  - Gaussian integration by parts, Wick recursion and Wick ordering (Glimm–Jaffe; B. Simon, *The $P(\varphi)_2$ Euclidean (Quantum) Field Theory*, Ch. I). Gaussian convolution $e^{\frac12\Delta_C}$ on polynomials in the renormalization group (D. Brydges, Park City lectures 2009; Brydges–Slade, *J. Stat. Phys.* 159 (2015)).
  - Equivalence of norms on finite-dimensional spaces (II.2.11(f)).
- **Imported bounds and assumptions.**
  - The tree bound needs $(2M+1)^4\gamma\le1$ and the exponent $a+1$ in the hit condition. These are hypotheses of each application. In the rank comparison they come from II.2.13(a), (e) with $M=W(u)$ and $\gamma=\Pi(s)^{-1}$; in the fused gas, from the fusion bounds with $M=B$ and exponent $e_P+1$.
  - Fusion requires the digest and hit bounds in II.2.8. Their startup hypotheses are stated in III.9; their verification in every subsequent application belongs to the corresponding RG step.
  - Given one compatible set of stage parameters for each index, a sequence of numerical records can be chosen with common exponent $b\ge d+6$, common Taylor order $t\ge d$, common $f$, and coefficient exponents $c_i\ge bd+d+2$. This is the parameter selection used in III.4 ([`preSheet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Prepaid.lean#L91-L109)).

## 3. Strategy

Products of local activities are represented in a finite commutative algebra of square-zero markers. The allowed marker sets determine which products vanish. The exponential converts sums of nonconstant monomials into products, and a triangular correction constructs the unique connected polynomial whose exponential is a given polynomial with constant term $1$. The weighted $\ell^1$ norm controls these operations without a loss depending on the number of markers. Switching connects scalar functions of activity parameters to this algebra: for positive switch size $x$, coefficients are recovered from values at $0/x$ configurations. A convergent model supplies their limit as $x\downarrow0$, while a uniform majorant controls that limit. The relation $X_v^2=xX_v$ then becomes the square-zero relation.

Connected-component decompositions reduce polymer sums to sums over packs attached to a support. A Kotecký–Preiss induction bounds the latter by $e^{\mathrm{cov}_M(Y)}$. Attaching $X_i$ costs $e^{\mathrm{cov}_M(X_i)}$, paid by the extra unit in the hit exponent $a+1$. The geometric input is $|Y|\le(2M+1)^4\mathrm{cov}_M(Y)$. For two interactions, mentions always connect, while walls connect only hot labels. Hotness is unchanged on restriction to a component, so the component decomposition can be recovered uniquely. The forced-activity fusion uses ordinary patch components; its density identity and bounds are proved in III.10.

The Gaussian comparison in III.11 uses algebraic convolution on polynomials with complex symmetric covariances. Wick recursion gives coefficient-norm and moment bounds depending on the degree and entrywise bounds, independently of the number of variables. Gaussian integration by parts identifies this algebraic functional with an actual expectation when a measure is supplied. The numerical inequalities then absorb the errors and iteration losses. There are two iteration lengths: $n(L,s)=O(y(s)/\log L)$ and $H(L,s)=O(y(s)^2/\log L)$ at fixed $L$. The first gives losses $\Pi(s)^{o(1)}$; the second requires the explicit lower bounds on $L$ in II.2.13(d). The constants in those block-size inequalities are chosen before $L$; all remaining constants must be fixed before the lower bound on $s$ is chosen.

## 4. Steps

### 4.1 Marker algebra

**Lemma 4.1 (associativity).** $\mathcal A_R$ is a commutative unital ring.
*Sketch:*

1. On basis elements, $(\delta_a\delta_b)\delta_c\neq0$ iff $a,b,c$ are pairwise disjoint and $a\cup b\cup c\in R$.
2. This condition is symmetric in $a,b,c$. Downward closure ensures that both intermediate unions are allowed whenever the total union is allowed.
3. Extend by bilinearity.

*Lean:* [`Console.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean).

**Lemma 4.2 (norm).** $\|ab\|_w\le\|a\|_w\|b\|_w$.
*Sketch:* $\|c\delta_x\cdot c'\delta_y\|_w\le w^x|c|\,w^y|c'|$, with equality when the product is nonzero, because $w^{x\cup y}=w^xw^y$ on disjoint unions. Expand $a,b$ in the basis and use the triangle inequality.
*Lean:* [`binary`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L124-L137), [`multiplication`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L139-L146).

**Lemma 4.3 (nilpotency; norm of $\mathrm{Exp}$).** If $a(\emptyset)=0$, then $a^k$ vanishes on sets with fewer than $k$ elements. For arbitrary $a$, $\|\mathrm{Exp}(a)\|_w\le\sum_{k\le|V|}\|a\|_w^k/k!\le e^{\|a\|_w}$.
*Sketch:* in $a^{k+1}=a^k\cdot a$, each factor $a$ contributes a nonempty disjoint marker set (induction on $k$). The norm bound follows from Lemma 4.2. Summable families are handled by comparing with the sup norm (equivalent norms) for convergence, and by passing the triangle inequality to the limit for the bound.
*Lean:* [`high`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L10-L22), [`pass_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L39-L46), [`budgeted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L51-L58).

**Lemma 4.4 (additivity of $\mathrm{Exp}$).** II.2.3(a)–(b).
*Sketch:*

1. Apply the binomial theorem to $(a+b)^n/n!$.
2. Terms $a^ib^j$ with $i+j>|V|$ vanish by Lemma 4.3, so the truncation at $|V|$ is consistent on both sides.
3. For (b): $(c\delta_x)^2=0$ when $x\neq\emptyset$, and induction over $s$.

A second proof, via the exponential of commuting nilpotent elements in Mathlib, is in [`Trajectories.pass_add`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean).
*Lean:* [`Exponential.pass_add`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L56-L88), [`Trajectories.pass_sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L124-L134).

**Lemma 4.5 (logarithm by iteration).** II.2.3(c)–(d).
*Sketch:* say $u$ vanishes below order $m$ if $u(x)=0$ for $|x|<m$.

1. **Key estimate.** If $c(\emptyset)=0$ and $u$ vanishes below order $m\ge1$, then $\mathrm{Exp}(c+u)-\mathrm{Exp}(c)-u=(\mathrm{Exp}(c)-1)\,u+\mathrm{Exp}(c)\,(\mathrm{Exp}(u)-1-u)$ vanishes below order $m+1$.
2. **Existence.** With $u=F-\mathrm{Exp}(C_k)$, the key estimate gives that $F-\mathrm{Exp}(C_{k+1})$ vanishes below order $k+2$. After $|V|$ steps it vanishes identically.
3. **Uniqueness.** For two solutions $C,D$, additivity gives $\mathrm{Exp}(C-D)=1$. If $\mathrm{Exp}(p)=1$ and $p(\emptyset)=0$, then $\mathrm{Exp}(p)$ agrees with $1+p$ one order beyond the vanishing order of $p$. So $p$ vanishes to every order, i.e. $p=0$.
4. **(d)** follows from $\mathrm{Exp}(-C)\,\mathrm{Exp}(C)=1$.

*Lean:* [`roll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L130-L132), [`rolls`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L133-L149), [`roll_cont`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L151-L156), [`Expands.uniq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L161-L174), [`correct`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L184-L185).

**Lemma 4.6 (majorant arrays; first-order coefficients).**

- For nonnegative arrays $A,B$ on $R$ define the product $(A\ast B)(z)=\sum_{x\sqcup y=z}A(x)B(y)$. Then $|a|\le A$ and $|b|\le B$ coefficientwise imply $|ab|\le A\ast B$, and $\sum_zw^z(A\ast B)(z)\le(\sum w^xA(x))(\sum w^yB(y))$. These are the uniform-in-configuration majorants used in III.8.
- Every $p$ decomposes as $p(\emptyset)1+\sum_vp(\{v\})\delta_{\{v\}}+(\text{terms of order}\ge2)$.
- $\mathrm{Exp}(F)$ and $F$ have the same singleton coefficients when $F(\emptyset)=0$.
- For a finite family, singleton coefficients satisfy
$$(\prod_{i\in s}a_i)(\{v\})=\sum_{i\in s}a_i(\{v\})\prod_{j\in s\setminus\{i\}}a_j(\emptyset).$$
*Sketch:* apply the triangle inequality to each disjoint-union coefficient sum. The weights factor on each surviving product. Splitting coefficients by marker-set size gives the decomposition. A singleton can receive a nonempty marker set from only one factor; powers of order at least two therefore make no singleton contribution to the exponential.

*Lean:* [`Nil.combine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Nil.lean#L79), [`merged_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Nil.lean#L93-L109), [`Accent.ballots`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Pitch.lean#L58-L62), [`whisper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Pitch.lean#L35-L40), [`shockProd`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Pitch.lean#L29-L33).

**Lemma 4.7 (repacking).** II.2.4(b).
*Sketch:*

1. Sum $\mathrm{val}$ fibrewise over the slot set $S=\sigma(s)$.
2. For admissible $S$, the selected sets in the fibre are in bijection with sections $S\ni k\mapsto i_k\in\sigma^{-1}(k)$.
3. The sum over sections of $\prod_kF_{i_k}$ is the limit over finite truncations of $\prod_{k\in S}\sum_{i\in\sigma^{-1}(k)}F_i$.
4. The majorant $\prod_{i\in s}\|F_i\|_w$ is summable over finite sets $s$ because $\sum_i\|F_i\|_w<\infty$. II.2.2 then gives summability of the algebra-valued terms.

*Lean:* [`Packets.repack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Packets.lean#L114-L124).

### 4.2 Components and the tree bound

**Lemma 4.8 (components).** II.2.5.
*Sketch:* "chained in $s$" is the reflexive–transitive closure of "supports meet" restricted to $s$. Its classes are the parts. A chain cannot leave a member of a family with disjoint supports, which gives item 2. For item 3, follow a chain from $j$ to $i$ and stop immediately before the first visit to $i$.
*Lean:* [`separates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L79-L101), [`excise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L103-L113).

**Lemma 4.9 (root decomposition).** For finite $D\subseteq\iota$ and a support $Y$, let $\mathrm{film}(D,Y)=\sum\prod_{i\in s}f_i$, the sum over packs $s\subseteq D$ for $Y$ (including $s=\emptyset$). For $f\ge0$,
$$\mathrm{film}(D,Y)\le\prod_{i\in D,\ X_i\cap Y\neq\emptyset}\big(1+f_i\,\mathrm{film}(D\setminus\{i\},X_i)\big).$$
*Sketch:*

1. Each part of a pack contains a label meeting $Y$ (II.2.5, item 4). Fix one such label for each part, its *root*; distinct parts have distinct roots.
2. Removing the root from its part leaves a pack for $X_{\mathrm{root}}$ inside $D\setminus\{\mathrm{root}\}$ (II.2.5, item 3).
3. The map $s\mapsto$ (for each candidate root: nothing, or the remainder of the part it roots) is injective, and the weight factorizes.
4. The right-hand side sums over all such assignments with nonnegative terms.

No sum over cuts or orderings occurs, and no label is repeated inside a part.
*Lean:* [`Ac.pouch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Table.lean#L20), [`film`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Table.lean#L79), [`lookup`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Table.lean#L81-L106).

**Lemma 4.10 (cover number of a spark).** If $s$ is a spark, then $\mathrm{cov}_M(X(s))\le\sum_{i\in s}\mathrm{cov}_M(X_i)$.
*Sketch:* enumerate $s$ so that each new label meets the union of the previous ones (possible since $s$ is connected), and use the intersecting-union bound from I.1 at each step. Subadditivity is not claimed for disjoint unions.
*Lean:* [`Ac.cover`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L59-L82).

**Lemma 4.11 (Kotecký–Preiss induction).** Under the hypotheses of II.2.6, put $p_i=f_ie^{a\,\mathrm{cov}_M(X_i)}$. Then for every finite $D$ and every support $Y$,
$$\mathrm{film}_p(D,Y)\le e^{\mathrm{cov}_M(Y)}.$$
*Sketch:* strong induction on $D$. By Lemma 4.9 and the induction hypothesis for $D\setminus\{i\}$,
$$\mathrm{film}_p(D,Y)\le\prod_{i\in D,\ X_i\cap Y\neq\emptyset}\big(1+f_ie^{(a+1)\mathrm{cov}_M(X_i)}\big)\le\exp\Big(\sum_{i\in D,\ X_i\cap Y\neq\emptyset}f_ie^{(a+1)\mathrm{cov}_M(X_i)}\Big)\le e^{|Y|\gamma}.$$
The last step sums the hit condition over the sites of $Y$. Finally $|Y|\gamma\le(2M+1)^4\gamma\,\mathrm{cov}_M(Y)\le\mathrm{cov}_M(Y)$.
*Lean:* [`demand`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L15-L27), [`Tree.lean` (`step`, `all_pack`)](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean).

**Lemma 4.12 (tree bound).** II.2.6.
*Sketch:*

1. Take a finite family of sparks whose supports contain $x$, and let $A$ be the union of their labels.
2. Each such spark is a nonempty pack for $\{x\}$ inside $A$.
3. By Lemma 4.10 and $a\ge0$, $e^{a\,\mathrm{cov}_M(X(s))}\prod_{i\in s}f_i\le\prod_{i\in s}p_i$.
4. The bound $e^{|Y|\gamma}$ in the proof of Lemma 4.11 with $Y=\{x\}$ (so $|Y|=1$) gives $\mathrm{film}_p(A,\{x\})\le e^{\gamma}$.
5. Subtract the empty pack. Uniform bounds on finite partial sums give summability.

*Lean:* [`Ac.forest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L89-L127).

### 4.3 Two kinds of overlap

**Lemma 4.13 (hotness is local).**

- Let $p$ be a slab of $s$ and $i\in p$. Then $i$ is hot in $p$ iff it is hot in $s$, and its fuel in $p$ equals its fuel in $s$.
- In a mole, containing a dirty label is equivalent to all labels being hot.
- Hotness spreads along fuel chains.

*Sketch:* a mention chain is a fuel chain, so it stays inside the slab. A wall link joins only hot labels.
Moles are also invariant under label permutations compatible with bijections of mentions and walls that preserve dirtiness ([`Kilner.molecule`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Harbor.lean#L29-L53)).
*Lean:* [`hot_comp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L149-L162), [`fuel_comp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L163-L164), [`takes_mole`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L183-L187).

**Lemma 4.14 (recovery).** II.2.7, items 1–3.
*Sketch:* let $s=\bigcup S$.

1. A mention chain in $s$ cannot leave a member of $S$, since mention-unions are disjoint. So hotness in $s$ equals hotness in the member, and fuels agree.
2. The fuel-unions of distinct members are disjoint: the mention components by hypothesis; the wall components because only members containing a dirty label have hot labels, and their wall-unions are disjoint.
3. Apply II.2.5, item 2 to the fuel overlap.
4. For slabs of a given set, use Lemma 4.13 to identify their internal fuels. Disjoint fuel-unions imply disjoint mention-unions; when both slabs contain a dirty label, all their labels are hot, so their wall-unions are disjoint as well.

*Lean:* [`Kiln.undo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L210-L240), [`clubs_away`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L190-L196), [`walls_away`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L197-L205).

**Lemma 4.15 (moles are wall-sparks).** II.2.7, item 4.
*Sketch:* a fuel overlap is either a mention overlap, which implies a wall overlap by hypothesis, or a wall overlap between hot labels.
*Lean:* [`Kiln.attends`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L242-L253), [`Collide.spark_ac`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L113-L117).

**Lemma 4.16 (pellets).** Pellets are countably infinite.
*Sketch:* every singleton $\{\text{left }i\}$ is a pellet, and finite subsets of $\mathbb N\sqcup\mathbb N$ form a countable set.
*Lean:* [`Pipes.encoding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L121-L133).

### 4.4 Switching

**Lemma 4.17 (triangular inversion).** For $x>0$, $\mathrm{val}_x$ is injective.
*Sketch:* strong induction on $r$: $\mathrm{val}_x(g)(r)=x^{|r|}g(r)+\sum_{i\subsetneq r}x^{|i|}g(i)$ and $x^{|r|}\neq0$. This is Möbius inversion on the Boolean lattice, scaled by $x^{|i|}$. Hence $\mathrm{val}_x$ is a linear bijection of a finite-dimensional space.
*Lean:* [`entire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L33-L42), [`Digits.lean` (`vane`, `decodes`)](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Digits.lean).

**Lemma 4.18 (jets; products).**

- If $g$ models $f$, then $\mathrm{val}_x^{-1}(f_x)=g_x$ for $0<x\le1$, so the jet is $g_0$.
- If $g,g'$ model $f,f'$, then $x\mapsto g_x\ast_xg'_x$ models $ff'$, since $\mathrm{val}_x(p\ast_xq)=\mathrm{val}_x(p)\,\mathrm{val}_x(q)$.
- Bounds: $|p\ast_xq|\le|p|\ast_1|q|$ for $x\in[0,1]$, and $\sum(b\ast_1b')=\sum b\cdot\sum b'$.

*Lean:* [`Models.exact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L58-L63), [`Paid.mul`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchProd.lean#L46-L50); the model product [`value_comb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchProd.lean#L15-L25), [`Models.mul`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchProd.lean#L28-L34).

**Lemma 4.19 (absent markers; measurability).** II.2.9(d).
*Sketch:* $\mathrm{val}_x(g)(r)-\mathrm{val}_x(g)(r\setminus\{v\})=\sum_{v\in i\subseteq r}x^{|i|}g(i)$. If $f$ does not see $v$, this vanishes for all $r$, so $g_x(i)=0$ for $v\in i$ by induction, for every $0<x\le1$. Let $x\downarrow0$.
Measurability: the jet is the pointwise limit of $\mathrm{val}_x^{-1}(f_x)$, and $\mathrm{val}_x^{-1}$ is a continuous linear map.
*Lean:* [`jet_erase`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Digits.lean#L27-L36), [`Paid.jet_meas`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Digits.lean#L38-L49).

**Lemma 4.20 (transfer bound).** II.2.9(e).
*Sketch:*

1. The coefficient of $\mathrm{snd}_\rho(f^u)$ at $z$ is bounded by $\sum_ib(i)\,|(\prod_{v\in i}\rho_v)(z)|$, using $|g_0(i)|\le b(i)$.
2. The $w$-norm of this majorant array is at most $\sum_ib(i)\,\|\prod_{v\in i}\rho_v\|_w\le\sum_ib(i)\le d$, by II.2.2.

*Lean:* [`Accent.crystal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Jetty.lean#L13-L19).

### 4.5 Gaussian calculus

**Lemma 4.21 (construction of $\mathcal G_Q$).** II.2.10(a)–(b).
*Sketch:*

1. $[X_v+\partial_{Q_v},X_w+\partial_{Q_w}]=Q_{vw}-Q_{wv}=0$ by symmetry, and derivations commute.
2. The commutative subalgebra they generate receives an algebra map from $\mathbb C[X]$; apply it to $1$.
3. The semigroup law and commutation with $\partial_b$ follow by induction on polynomials from the recursion. Applying evaluation at $m$ gives the moment functional and its Wick recursion. The terminating series $e^{\Delta_Q/2}$ satisfies the same polynomial recursion, giving the equivalent heat-operator formula.

*Lean:* [`cream_comm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L64-L65), [`make`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L73-L74), [`feeds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L82), [`warms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L96-L102), [`spring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTrack.lean#L31-L35).

**Lemma 4.22 (size of moments).** II.2.10(e).
*Sketch:*

1. By linearity it suffices to treat monomials, each written as $\prod_{j\in s}X_{z_j}$ with $|s|\le d$. The coefficient sum gives the factor $\|p\|_1$.
2. Let $c_d$ bound the moments of degree $\le d$. The Wick recursion gives $c_{d+1}\le B\,c_d+d\,B\,c_d$, and $c_d\le(2B(d+1))^d$ by induction.
3. For differences, apply $|xv-yw|\le|x||v-w|+|x-y||w|$ to each term of the recursion.
4. Localization: restrict $Q$ and $m$ to the variables of $p$ by a change of variables.

*Lean:* [`Common.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean), [`width`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean#L121-L123), [`differs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean#L124-L126), [`Guard.lean` (`pinned`)](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean).

**Lemma 4.23 (change of variables; factorization).** II.2.10(c) and II.2.11(c), last clause.
*Sketch:* both sides of II.2.10(c) satisfy the same recursion in $X_v$. One uses $\partial_m(p\circ A)=(\partial_{Am}p)\circ A$ and the fact that $\mathcal G_Q$ applied to $(A\text{-linear form})\cdot q$ obeys the Wick rule with covariance $AQA^T$.
If $Q$ vanishes between the variables of $P$ and $R$, then $\partial_{Q_{v\cdot}}\mathcal G_QR=0$ for every variable $v$ of $P$. The Leibniz rule then gives $\mathcal G_Q(PR)=(\mathcal G_QP)(\mathcal G_QR)$; linear substitution preserves this identity.
Related results:

- if $Q$ is block diagonal, Gaussian expectations of products over blocks factorize ([`bridge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Crust.lean#L59); [`Particle.tide`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/BoundParticle.lean#L29-L36) for marginals);
- applying Wick ordering separately at each vertex subtracts its chosen covariance from the diagonal block ([`lodge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTags.lean#L106-L109)), and two steps compose as $T_{P,R}T_{H,Q}=T_{HP,\,HRH^T+Q}$ ([`piped`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTags.lean#L115-L122)).

*Lean:* [`prepared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussSubst.lean#L76-L81), [`wets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussSubst.lean#L83-L84).

**Lemma 4.24 (identification with a true expectation).** II.2.10(d).
*Sketch:*

1. Substituting $X\mapsto X+m$ turns integration by parts into the recursion $\mathbb E[(m+\xi)_vq(m+\xi)]=m_v\mathbb E[q(m+\xi)]+\mathbb E[(\partial_{Q_v}q)(m+\xi)]$.
2. Both $q\mapsto\mathbb E[q(m+\xi)]$ and $\mathbb E_{Q,m}$ are linear, equal $1$ on $1$, and satisfy the Wick recursion on monomials.
3. Induction on the degree.

*Lean:* [`payment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/ParticleMoment.lean#L61-L78).

**Lemma 4.25 (step bounds).** II.2.11(a)–(d).
*Sketch:*

- **(a)**: expand in monomials. Submultiplicativity bounds the image of a degree-$k$ monomial by $c^k\le c^{\deg p}$.
- **(b)**: induction on the degree, using $\mathcal G_Q(X_vq)-X_vq=X_v(\mathcal G_Qq-q)+\sum_jQ_{vj}\,\mathcal G_Q(\partial_jq)$.
- **(c)**: the same recursion with $X_v$ replaced by the linear form $H_v$; each step multiplies the bound by at most $C(1+d)\le2(d+2)C$. For the difference bound, subtract the two recursions and split each product difference into the change in one factor at a time.
- **(d)**: write $\Phi_t(P)-(\mathcal G_KP)\circ f=[\Phi_t(P)-P\circ f]+[(P-\mathcal G_KP)\circ f]$.
  - First term: $\|t^{-1}A_v(tX)\|_1\le tB$, since $A_v$ has no terms of degree $<2$, and $\|U(p)-T(p)\|_1\le\|p\|_1\,d\,B'A^{d}$ for algebra maps that are $B'$-close on generators (bounded by $A$).
  - Second term: (b) followed by (a).

*Lean:* [`Rise.rise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Rise.lean#L51-L66), [`LiftMark.puff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ample.lean#L35-L77), [`LiftMark.bounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ample.lean#L79-L96), [`crux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L119-L124), [`LiftMark.message`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Instructions.lean#L29-L53), [`LiftMark.stock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Pin.lean#L66-L84).

**Lemma 4.26 (guards; second moment).** II.2.11(e).
*Sketch:*

- $1-gz\le(1-g)+(1-z)$ for $g,z\in[0,1]$.
- $|gf-f|=(1-g)|f|\le\varepsilon'|f|^2+(1-g)/\varepsilon'$, using $0\le1-g\le1$; integrate.
- Second moment: $|p(m+\xi)|^2=(p\bar p)(m+\xi)$, where $\bar p$ conjugates the coefficients. Apply II.2.10(d)–(e) to $p\bar p$, which has degree at most $2d$ and $\|p\bar p\|_1\le\|p\|_1^2$.

*Lean:* [`guards_mul`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L79-L88), [`escaped`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L108-L125), [`squareFits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L90-L105).

**Lemma 4.27 (reading coefficients).** II.2.11(f).
*Sketch:*

1. Evaluation at all points of the cube is injective on polynomials of degree $\le d$, since a polynomial vanishing on a product of infinite sets is zero.
2. In finite dimension, a finite subfamily of evaluations is already injective: minimize the kernel dimension.
3. Take a left inverse and bound its $\ell^1$ operator norm.

The Lipschitz bound follows by telescoping over monomials. A version with explicit dimension dependence and constant $(|V|+1)^dT_{d,\varepsilon}$ is proved in III.11 ([`ball_count`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/SpectrumReal.lean#L145-L156)). For polynomials of degree at most $n$, an $o(t^n)$ difference at $0$ forces equality; for $C^n$ functions it forces equality of their Taylor polynomials through order $n$ ([`Spindle.decipher`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Peano.lean#L99-L102), [`trill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/SolveRay.lean#L160-L167)).
*Lean:* [`listen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/SpectrumReal.lean#L22-L28), [`molds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/SpectrumReal.lean#L56-L81), [`amove`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Spirals.lean#L20-L41).

### 4.6 Numbers

**Lemma 4.28 (loop bounds).** II.2.12, items 1–2.
*Sketch:*

1. $(\log\log s)^2=o(\log s)$, so $b\,y^2\le p\log s$ eventually; this is item 1.
2. Then $s\theta^2=\Pi^2$ exactly.
3. $s\theta^3=\Pi^3s^{-1/2}\le1$ by item 1 with $b=3$, $p=\tfrac12$.
4. Item 1 with $b=1$, $p=1/2$ gives $\theta\le1$ eventually, hence $s\theta^4\le s\theta^3$.
5. $s\cdot2\Pi^v\theta^2\le2\Pi^3\le2\sqrt s\le s$ for $s\ge4$.

*Lean:* [`cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L74-L78), [`uniform_loop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L83-L108).

**Lemma 4.29 (comparison of scales).** II.2.12, items 3–4.
*Sketch:*

- $\log W(s)\le6y(s)$ eventually, so fixed powers of $W$ are bounded by $\Pi^a$. The ceiling inequalities $(\log s)^2\le M(s)<(\log s)^2+1$ also give $W(s)\sim(\log s)^4$. Also $\log h=y^{3/2}=o(y^2)$.
- If $a<b$, then $c\Pi^{a-b}\to0$, proving item 4.
- $y(s)\le y(s/2)+1$, since $\log s=\log(s/2)+\log2$.
- $y^2e^{-y}\to0$ handles $y(s)^2\le a\,W(s/2)$ and $y(s)^2\le a\,j(s/2)$; for the latter use $j(s/2)=e^{y(s/2)^{3/2}/5}\ge e^{y(s/2)}$ once $y(s/2)\ge25$.
- Eventually $y(s)\le2y(s/2)$; then $2^{3/2}\le5$ gives $j(s)\le h(s/2)$.

*Lean:* [`rate_wall`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L71-L90), [`rate_inverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L94-L108), [`rate_fire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L110-L122), [`fire_stretch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L127-L137).

**Lemma 4.30 (feasibility of the shelf and tally conditions).** II.2.13(a)–(b).
*Sketch:*

1. Use $y(s)^2\ll W(s/2)$ for the two linear lower bounds on $W(u)$. Since $W(u)\le W(s)=M(s)^2$, the support-size inequality follows once $M(s)$ is large compared with $Q$. Fixed powers of $W$ are $o(\Pi)$, giving the geometric condition.
2. The purely exponential terms reduce to fixed constants times powers of $\Pi$ with strictly smaller exponents than the target; for example, $1/8-31/32=-27/32<-25/32$. For the sixth shelf inequality, uniformly in $u\in[s/2,s]$,
$$\big(mU+4\cdot2^m+2\big)y(s)^2+2j(s)\le a h(u)^2$$
eventually. Hence its first term is at most $\Pi^{-2}$. The reserve inequality follows from $j(s/2)\gg y(s)^2$ and $e^{\Pi^{-1}}-1\le\exp(1)$.
3. The ceiling formula gives $n(L,s)\log(\alpha+1)=O(y(s))\le y(s)^2/4$ eventually. The same uniform tail estimate, with coefficients $3/4$ and $7/10$, gives $G(u)\le\Pi^{-3/4}\omega(v)$.
4. Uniformity uses $W(s/2)\le W(u)\le W(s)$, $h(u)\ge h(s/2)$ and $j(u)\le j(s)$. Intersect the finitely many eventual conditions.

*Lean:* [`mint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bird.lean#L145-L158), [`force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bird.lean#L67-L77), [`on_time`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Stepped.lean#L81-L89).

**Lemma 4.31 (numerical parameter bounds).** II.2.13(c)–(e).
*Sketch:*

- The block-size conditions are finitely many lower bounds on $\log L$. At height $H(L,s)$, each logarithmic loss is at most $y(s)^2$ for large $s$.
- For $r\le H$, $(\alpha+2)^r\le(\alpha+2)^H\le\Pi$; combine this with $g\ge6$.
- For (c), $\pi(\Pi^\phi,nk)\le(2(nk+1))^{nk}\Pi^{1/4}$ and $\Pi^{-2}\le1$. The left side is therefore at most a fixed constant times $\Pi^{-7/4}$, which is eventually at most $\Pi^{-3/2}$.
- For (e), fixed-degree moments of $\tau=3h$ are bounded by arbitrarily small positive powers of $\Pi$. With $Z=2c+8t+13$, the error function in its sixth inequality is $O(\Pi^{-F+6Z})$. The condition $g+10Z+10\le F$ makes this at most $\Pi^{-g}$ after multiplication by the fixed factor. The remaining tail bound uses $G(u)\le\Pi^{-2}$ uniformly on $[s/2,s]$, and the geometric bound follows from $W(s)^4\ll\Pi$.

*Lean:* [`pulse_ok`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Odometer.lean#L41-L42), [`Racer.pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L113-L119), [`collected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Planck.lean#L39-L62), [`shed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Planck.lean#L68-L69).

## 5. Where the difficulty lies

The tree estimate must preserve the connected cover weight. Cover numbers are subadditive along intersecting unions, whereas a disconnected union may require an additional connecting region. The induction therefore uses connected components and spends exactly one extra cover exponent on each attachment. It counts finite sets of labels; it does not estimate Mayer coefficients with arbitrary repeated labels.

For two interactions, the graph itself depends on the selected set, through hotness. Unique recovery requires both locality of hotness and the asymmetric separation conditions: all components separate through mentions, while only components containing a dirty label separate through walls.

Switching requires convergence as well as a bound. Bounded coefficients alone need not have a limit as $x\downarrow0$. The model supplies convergence, and the common majorant allows sums and coefficient estimates to pass to the limit. The Gaussian bounds allow complex covariances without positivity; their constants grow like $d^d$ up to exponential factors at fixed entry bounds. The degree is fixed before $L$ and $s$.

The numerical conditions establish feasibility for fixed parameters. They do not supply the analytic estimates to which those numbers are applied. The two iteration lengths in §3 must remain distinct.

The source contains duplicate exponential and component constructions. Its second trajectory logarithm and [`Candle.small`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L72-L89) are absent from the main theorem’s dependency set. The latter bounds a restarted threshold by $3h(\hat\beta)\beta^{-1/2}$.

## 6. Notation

| Written proof | Lean | Meaning |
|---|---|---|
| $R$, census | [`Marker.Census`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L22-L26) | finite downward-closed family of allowed marker sets |
| $\mathcal A_R$ | [`Marker.Poly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L40) | marker algebra |
| $c\,\delta_x$ | [`Poly.send`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L51) | monomial with marker set $x$ |
| $w^x$, $\lVert a\rVert_w$ | [`toll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L74), [`price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L76) | weight of a marker set; weighted $\ell^1$ norm |
| $\mathrm{Exp}$ | [`Poly.pass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L29) | exponential truncated at order $\lvert V\rvert$ |
| connected polynomial $\mathrm{Log}\,F$ | [`Exponential.connected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L177), [`Expands`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L126) | $C$ with $C(\emptyset)=0$, $\mathrm{Exp}(C)=F$ |
| majorant array | [`Nil.Sheet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Nil.lean#L75) | nonnegative coefficient bound |
| $\mathrm{cov}_M(X)$ | [`coverNumber`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L69-L71) | connected cover number (I.1) |
| spark, $\mathrm{Parts}(s)$ | [`Ac.Spark`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L49), [`Ac.Parts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L55) | connected label set; components |
| pack for $Y$, $\mathrm{film}(D,Y)$ | [`Ac.Pack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L18), [`Ac.film`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Table.lean#L79) | label set attached to $Y$; its weighted count |
| hit condition | [`Ac.Hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13) | site-wise summability of $f\,e^{a\,\mathrm{cov}}$ |
| kiln, hot, fuel, mole, slab | [`Kiln`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L123-L126), [`Hot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L131), [`fuel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L132), [`Mole`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L133), [`slabs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L135) | two-interaction polymer data and components |
| pipes, tap, pellet, reach | [`Ovens.Pipes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L23-L27), [`Tap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L32-L35), [`contains`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L57-L58), [`reach`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L48) | data and pieces of the fused gas |
| $\mathrm{val}_x$, model, jet, paid | [`Switch.value`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L26), [`Models`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L48-L50), [`jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L46), [`Paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L56) | switching objects |
| $\mathrm{snd}_\rho$ | [`Switch.sound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchCost.lean#L60) | jets inserted into the marker algebra |
| $\lVert p\rVert_1$, $\lVert p\rVert_{w,r}$ | [`Rise.coin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Rise.lean#L47), [`Rise.cents`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Rise.lean#L13) | coefficient norm; weighted coefficient seminorm |
| $\mathcal G_Q$, $\mathbb E_{Q,m}$ | [`Normal.milk`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L77), [`Normal.blend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L106) | Gaussian smoothing; algebraic expectation |
| $\partial_b$ | [`Normal.slit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L40) | derivation $X_v\mapsto b_v$ |
| $p\circ A$ | [`Normal.exchange`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussSubst.lean#L14) | linear substitution |
| $T_{H,Q}$ | [`Normal.pipe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTags.lean#L113), [`Valve.read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L18) | one Gaussian polynomial step |
| $\pi(B,d)$ | [`Common.priced`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean#L36) | $(2B(d+1))^d$ |
| $\eta$-guard | [`Guarded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L69-L73) | $[0,1]$-valued cutoff of small defect |
| $\Pi(s)$, $\Pi(s)^a$ | [`Numbers.P`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L72), [`Perch.bill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L25) | $e^{(\log\log s)^2}$ and its powers |
| $\theta(s)$ | [`Numbers.theta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L73) | $s^{-1/2}\Pi(s)$, small-field threshold |
| $h,\ j,\ \omega,\ W$ | [`hot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L30), [`join`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L31), [`w`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L32), [`walls`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L28) | $e^{y^{3/2}}$, $h^{1/5}$, $e^{-0.7j}$, $\lceil(\log s)^2\rceil^2$ |
| parameter record $(t,g,H_0,b,c,f,F,K)$ | [`Tapes.Purse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L20-L38) | `taylor`, `goal`, `horizon`, `band`, `credit`, `f`, `foil`, `L` |
| iteration conditions at height $H$ | [`Racer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L64-L69) | five inequalities in II.2.13(d) |
| moment and fusion conditions | [`Faring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L92-L110) | inequalities in II.2.13(e) |

## 7. Open points for the writer

1. **Restarted thresholds.** The original threshold is $s^{-1/2}\Pi(s)$; the restarted Gaussian comparison uses $s^{-1/2}h(s)$ and cover size $W(s)$ ([`Perch.Candle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Stepped.lean#L93-L96), III.11). Their ratio $h(s)/\Pi(s)$ tends to zero. The numerical estimates here do not establish the existence of restarted representations satisfying the required density and trajectory identities. That construction must be explained in III.11.
2. **Analytic inputs to the numerical conditions.** The shelf, tally and moment conditions are explicit in II.2.13. Their use still requires the one-step estimates with the stated supports, covariances and constants. The verification of those analytic hypotheses along the actual RG trajectories, including every later application of the digest and fusion bounds, is outside this unit.
3. **Auxiliary declarations.** The additional regrouping results in `EventBale` and the cost estimates in `MergeProof/West`, `North` and `East` are not formulated above, apart from the cited permutation result. Their full role in III.11 remains to be traced.

**Builds on:** [I.1](I-1.md), [III.1](III-1.md).

**Used by:** [III.11](III-11.md), [VII.6](VII-6.md), [III.12](III-12.md), [III.10](III-10.md), [VII.4](VII-4.md), [III.2](III-2.md), [III.5](III-5.md), [III.15](III-15.md), [III.13](III-13.md), [III.4](III-4.md), [VII.2](VII-2.md), [III.9](III-9.md), [VII.1](VII-1.md), [III.8](III-8.md), [VIII.1](VIII-1.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| shared machinery (Exponential · Bird · Weight) | 3,291 |
| work package [`YM/Ac/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac) | 286 |
| work package [`YM/Ovens/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens) | 71 |
| work package [`YM/Further/SHELL_BIRTH_49/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49) | 43 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **II.2.1** [`undo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L210-L240) *(numbered result)* — Under disjointness hypotheses, the decomposition of a union of supports into pieces can be uniquely recovered.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

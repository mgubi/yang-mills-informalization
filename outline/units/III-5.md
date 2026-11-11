# III.5. Cluster expansion of the polymer gas

*Part III — Ultraviolet construction (renormalization group).*

Controls sums of interacting polymer activities by a convergent cluster expansion.

**Status: edited.** Checked against the linked Lean and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [← Previous: III.4](III-4.md) · [Next: III.6 →](III-6.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** work packages [`YM/Push/ABSOLUTE_SUMS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS) (3,624 lines), [`YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS) (3,589), [`YM/Push/SECTOR_MEASURE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE) (1,153), [`YM/SectorNext/VACUUM_NORMALIZATION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION) (935), [`YM/Progress/STATIONARY_SCENES/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES) (445). **Size:** 9,746 lines in 1,097 line-counted declarations in the source allocation.

**Conventions.**

- $\Lambda_n=(\mathbb Z/n\mathbb Z)^4$, with $n\ge1$, is the periodic lattice with the maximum distance $d$. A *support* is a subset of $\Lambda_n$.
- $\mathrm{cov}_B(X)$ is the least number of $d$-balls of radius $B$ whose union is connected and covers $X$ ([`coverNumber`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L69-L71)). Two properties are used throughout (I.1):
  - $|X|\le \mathrm{ball}_B\,\mathrm{cov}_B(X)$, with $\mathrm{ball}_B=(2B+1)^4$;
  - $\mathrm{cov}_B$ is subadditive on unions of overlapping sets.
- A family of supports is *connected* if it is nonempty and its overlap graph is connected.
- For $f\ge0$ on an arbitrary index set, $\mathrm{SB}(f;C)$ means: $f$ is summable and $\sum f\le C$ ([`SumBudget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L59-L60)).
- For polymers $(X_i,w_i)_{i\in\iota}$ with $w\ge0$, the *site-sum condition* $\mathrm{Hit}_B(w;a,\gamma)$ means $\mathrm{SB}\big(i\mapsto \mathbf 1[x\in X_i]\,w_i\,e^{a\,\mathrm{cov}_B(X_i)};\gamma\big)$ for every site $x$ ([`Ac.Hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13), II.2).
- All weights are real. An upper bound on an infinite sum of nonnegative terms includes summability, as in $\mathrm{SB}$.
- For a relation $R$ that is not symmetric, the graph used below has an edge between distinct occurrences $a,b$ exactly when both $R(z_a,z_b)$ and $R(z_b,z_a)$ hold. The coefficient of a one-vertex tuple is $1$.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

The unit consists of five packages.

- **(A) Mayer expansion.**
  - The Mayer expansion of a hard-core polymer gas, with absolute bounds, and its re-exponentiation after forced polymers (III.5.1–III.5.6).
  - The verification of the smallness condition for gases of large-field seeds of a block-spin step (III.5.7–III.5.8).
- **(B) Vacuum normalization.** A second, graph-free construction of the logarithm by deletion identities (III.5.9), and a trace-log formula (III.5.10).
- **(C) Sector decomposition.** The decomposition of one block-spin integral into sectors labelled by packets of seeds, with a Gaussian gain per seed (III.5.11).
- **(D) Inverse decay.** A Combes–Thomas bound (III.5.12).
- **(E) Gaussian bounds.** Windowed inverses (III.5.13), and a uniform spectral gap and uniform decay for the precision matrix of the small-field Gaussian of a step (III.5.14).

III.5.1–III.5.7, III.5.9, III.5.10, III.5.12 and III.5.13 are general implications. III.5.8(c), III.5.11 and III.5.14 concern the block-spin step under the funding hypotheses of III.1; III.5.14 also fixes a patch satisfying its branch conditions.

**Proposition III.5.1 (Mayer identity for a finite gas).**

- *Data.* Let $\iota$ be finite, $R$ a reflexive symmetric relation on $\iota$ ("incompatible"), and $w:\iota\to\mathbb R$. Let $\Xi(w)=\sum_s\prod_{i\in s}w_i$, the sum over subsets $s\subseteq\iota$ of pairwise compatible labels.
- *Ursell coefficient.* For $z=(z_0,\dots,z_m)\in\iota^{m+1}$, let $G_R(z)$ be the graph on $\{0,\dots,m\}$ with an edge $\{a,b\}$, $a\neq b$, whenever $R(z_a,z_b)$. Put $\phi^T_R(z)=\sum_G(-1)^{|G|}$, the sum over connected spanning subgraphs $G\subseteq G_R(z)$.
- *Claim.* Let $\ell_m=\frac1{(m+1)!}\sum_{z\in\iota^{m+1}}\phi^T_R(z)\prod_a w_{z_a}$. If $|\ell_m|\le Cq^m$ for all $m$, with $C\ge0$ and $0<q<1$, then $\exp\big(\sum_{m\ge0}\ell_m\big)=\Xi(w)$.

*Status:* theorem.
*Lean:* [`Gas.exact_polynomial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L66-L145); coefficient identities [`Coef.recurrence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L129-L138), [`Partition.partition`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Partition.lean#L219-L237).

**Proposition III.5.2 (tree-graph bound).** Let $T$ be a graph on a finite vertex set with a distinguished vertex. Then $\big|\sum_G(-1)^{|G|}\big|$, summed over the connected spanning subgraphs $G\subseteq T$, is at most the number of spanning trees of $T$. In particular $|\phi^T_R(z)|$ is at most the number of spanning trees of $G_R(z)$.
*Status:* theorem. Spanning trees are counted as acyclic parent maps towards the distinguished vertex.
*Lean:* [`Graph.pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Graph.lean#L113-L148).

**Proposition III.5.3 (pinned cluster bounds).**

- *Data.* $\iota$ is any set; $X:\iota\to$ supports of $\Lambda_n$; $B\in\mathbb N$; $w:\iota\to[0,\infty)$; $a\ge0$; $R$ is a relation on $\iota$ with $R(i,j)\Rightarrow X_i\cap X_j\neq\emptyset$. $R$ need not be symmetric.
- *Smallness condition.*
$$\mathrm{Ready}(w;a,\gamma,\delta,q):\qquad \gamma>0,\quad\delta>0,\quad 4\,\mathrm{ball}_B\,\gamma/\delta\le q<1,\quad \mathrm{Hit}_B(w;\,a+\delta,\,\gamma).$$

- *Notation.* $X(z)=\bigcup_aX_{z_a}$ for a tuple $z$.

Then, for every site $x$ and every integer $m\ge0$:

- (a) $\displaystyle\sum_{m'\ge m}\ \sum_{z\in\iota^{m'+1}:\ x\in X(z)}\frac{|\phi^T_R(z)|}{(m'+1)!}\prod_a w_{z_a}\ e^{a\,\mathrm{cov}_B(X(z))}\ \le\ \frac{\gamma\,q^m}{1-q}$.
- (b) The same bound holds for $\sum_s\prod_{i\in s}\big(w_i e^{a\,\mathrm{cov}_B(X_i)}\big)$. The sum runs over finite sets $s\subseteq\iota$ with $|s|\ge m+1$ whose supports form a connected family containing $x$.
- (c) (Marked form.) Suppose $Q\subseteq\iota$ and $\mathrm{SB}\big(i\mapsto\mathbf1[i\in Q]w_ie^{(a+\delta)\mathrm{cov}_B(X_i)};b\big)$. Then the sum over $z\in\iota^{m+1}$ with some $z_a\in Q$ of $|\phi^T_R(z)|\prod_{j=0}^m\big(w_{z_j}e^{a\,\mathrm{cov}_B(X_{z_j})}\big)/(m+1)!$ is at most $bq^m$.

Each displayed bound is a summability statement of the form $\mathrm{SB}$.
*Status:* theorem. Form (a) is used in III.2, III.10, III.11, III.12, III.13 and III.15.
*Lean:* [`Ursell.log_hit_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L224-L243), [`Trees.touch_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Distinct.lean#L245-L276), [`Ursell.cluster_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L148-L183), [`Ursell.cluster_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L185-L192); hypothesis [`Trees.Ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Forest.lean#L31-L32).

**Proposition III.5.4 (convergence and logarithm of the gas).** Let $X,B$ be as in III.5.3, $R$ reflexive and symmetric with $R(i,j)\Rightarrow X_i\cap X_j\neq\emptyset$, $w:\iota\to\mathbb R$ and $a\ge0$. Assume $\mathrm{Ready}(|w|;a,\gamma,\delta,q)$. Then:

- $\Xi(w)=\sum_s\prod_{i\in s}w_i$, over finite pairwise compatible $s\subseteq\iota$, converges absolutely, with $\sum_s\prod_{i\in s}|w_i|\le e^{n^4\gamma}$.
- The cluster series $\sum_{m\ge0}\sum_{z\in\iota^{m+1}}\phi^T_R(z)\prod_aw_{z_a}/(m+1)!$ converges absolutely. Its absolute sum is at most $n^4\gamma/(1-q)$, and at most $n^4\gamma q^m$ over the clusters of $m+1$ labels.
- $\Xi(w)>0$, and $\log\Xi(w)$ equals the cluster series.

*Status:* theorem. Used in III.10.
*Lean:* [`Gas.price_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Log.lean#L114-L149), [`Gas.absolute`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L53-L57), [`Gas.absolute_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L35-L51).

**Proposition III.5.5 (removing the polymers that meet a region).** In III.5.4, take for $R$ the overlap relation ($R(i,j)$ iff $i=j$ or $X_i\cap X_j\neq\emptyset$), with nonempty supports. For $Y\subseteq\Lambda_n$ let $w^Y_i=w_i\,\mathbf 1[X_i\cap Y=\emptyset]$. Then
$$\Xi(w^Y)=\Xi(w)\,e^{-p},\qquad |p|\le\frac{|Y|\,\gamma}{1-q},$$
where $p$ is the sum of the cluster terms with $X(z)\cap Y\neq\emptyset$.

- Hence $e^{-C|Y|}\Xi(w)\le\Xi(w^Y)\le e^{C|Y|}\Xi(w)$ with $C=\gamma/(1-q)$, uniformly in $n$.
- The clusters of at least $m+1$ labels that meet $Y$ contribute at most $|Y|\gamma q^m/(1-q)$ in absolute value.

*Status:* theorem. Used in III.10.
*Lean:* [`Gas.restores_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L69-L95), [`Gas.missing_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L40-L63).

**Proposition III.5.6 (re-exponentiation with forced polymers).** Fix $B\in\mathbb N$ and a common lattice $\Lambda_n$.

- *Data.* "Unforced" polymers $(X_i,u_i)_{i\in\iota}$ and "forced" polymers $(Y_k,d_k)_{k\in\kappa}$, all with nonempty supports, $u,d\ge0$; $R$ a relation on $\iota$ contained in the overlap relation.
- *Atoms.* The atoms are of two kinds:
  - the forced labels $k$, with support $Y_k$ and weight $d_k$;
  - the tuples $z\in\iota^{m+1}$, with support $X(z)$ and weight $|\phi^T_R(z)|\prod_au_{z_a}/(m+1)!$.
- *Constants.* $A\ge0$, $\delta'>0$, $t\ge1$, $0\le\sigma<1$, $\mu\ge0$, $\eta>0$, $q'<1$.
- *Hypotheses.* $\mathrm{Ready}(u;A+\delta',\gamma,\delta,q)$, $\mathrm{Hit}_B(d;A+\delta',c)$, and
$$\frac{t\,e^{\mu}c}{1-\sigma}+\frac{t\,\gamma}{(1-\sigma)(1-q)}\ \le\ \eta\ \le\ \sigma,\qquad 4\,\mathrm{ball}_B\,\eta/\delta'\le q'.$$

Fix a site $x$ and $m\ge0$. Consider finite sets $s$ of atoms with multiplicities $n_\alpha\ge1$ such that:

- $s$ contains at least one forced label;
- $\sum_\alpha n_\alpha\ge m$;
- the supports of the atoms in $s$ form a connected family containing $x$.

Summed over all such pairs $(s,(n_\alpha)_{\alpha\in s})$, the quantity
$$e^{A\,\mathrm{cov}_B(\bigcup_{\alpha\in s}\mathrm{supp}\,\alpha)}\ \prod_{\alpha\in s}\frac{\mathrm{wt}(\alpha)^{n_\alpha}}{n_\alpha!}$$
is at most $t^{-m}e^{-\mu}\,\eta/(1-q')$.

*Status:* theorem. The general form, with an arbitrary selection predicate, is [`Multiple.estimates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L135-L169). Used in III.2, III.10, III.11 and III.13.
*Lean:* [`OmitClusters.restore`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Omissions.lean#L48-L100).

**Proposition III.5.7 (gases of seed packets).**

*Setting.* Let $S$ be a block-spin step (III.1) from $\Lambda_f$ to $\Lambda_c$ with block side $L$, and let $l,B\in\mathbb N$.

- A *seed* is a fine cell, a coarse bond or a coarse site. Its location is the projection of the cell’s vertices, the bond’s two endpoints, or the site itself. Each location lies within distance $1$ of its anchor.
- A *packet* $A$ ([`Stores`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L34-L37)) is a finite set of seeds; $|A|$ is its number of seeds.
- Let $D_0(A)$ be the union of its seed locations and $D_r(A)$ its radius-$r$ neighbourhood. The *skins* are the radius-$lB$ neighbourhoods of the individual seed locations; their union is the *dome* $D(A)=D_{lB}(A)$. The packet is *connected* if its skins form a connected family. The sector and matrix estimates below use $D_r(A)$ directly, rather than neighbourhoods of $D(A)$.
- Put
$$\tau_L=L^4\,\mathrm{card}\{\text{plaquette orientations}\}+5,\qquad K_{\rm hit}=(2lB+3)^4\,\tau_L,\qquad K_{\rm step}=(4lB+5)^4\,\tau_L .$$

**(a) Packet sums.** Assume $a,C\ge0$, $0\le p_A\le C\,e^{(s-g)|A|}$ for every connected $A$, and $\rho:=K_{\rm step}^2\,e^{\,s-g+a(2l+3)^4}\le q<1$. Then for every coarse site $x$ and every $m\ge0$,
$$\sum_{A\ \mathrm{connected},\ x\in D(A),\ |A|\ge m}p_A\,e^{a\,\mathrm{cov}_B(D(A))}\ \le\ K_{\rm hit}\,C\,\frac{q^{\max(1,m)}}{1-q}.$$
The same bound holds for an arbitrary family of variants with nonnegative weights, each nonzero variant assigned to a connected packet and supported in its dome, provided the sum of the variant weights of each packet is at most $Ce^{(s-g)|A|}$. For variants, the sum is pinned by the actual support and uses its covering number.

**(b) Mixed words.**

- *Alphabet.* Add optional polymers $(X_i,w_i)_{i\in\iota}$ on $\Lambda_c$ with $w\ge0$ and lengths $\lambda_i\ge0$. A packet has footprint $D(A)$ and length $e_s|A|$.
- *Hypotheses* (with $\varepsilon,\delta,\gamma_{\rm root}>0$ and $a,C,e_s,\mu_s\ge0$):
  - $0\le p_A\le Ce^{(s-g)|A|}$ on connected packets;
  - (a) holds with $a+2\varepsilon+\delta$ in place of $a$, $s+2\varepsilon e_s+\mu_s$ in place of $s$, and some $q_p<1$;
  - $\mathrm{Hit}_B(w\,e^{2\varepsilon\lambda};\,a+2\varepsilon+\delta,\,\gamma_{\rm opt})$;
  - $K_{\rm hit}Cq_p/(1-q_p)+\gamma_{\rm opt}\le\gamma_{\rm root}$;
  - $4\,\mathrm{ball}_B\,\gamma_{\rm root}/\delta\le q<1$.
- *Notation.* For a finite set $s$ of packets and optional labels, $D(s)$ is the union of the footprints, and $\mathrm{ch}(s)=\sum_{\alpha\in s}\big(\mathrm{cov}_B(\text{footprint of }\alpha)+\text{length of }\alpha\big)$.
- *Claim.* For all $m,k,r\in\mathbb N$, $T\in\mathbb R$ and every site $x$,
$$\sum_s\ \left(\prod_{\alpha\in s}\mathrm{wt}(\alpha)\right)\big(1+\mathrm{ch}(s)\big)^k\,e^{a\,\mathrm{cov}_B(D(s))}\ \le\ \frac{k!\,e^{\varepsilon}}{\varepsilon^{k}}\;e^{-\varepsilon T-\mu_s r}\;\frac{\gamma_{\rm root}\,q^m}{1-q},$$
the sum over connected $s$ with $x\in D(s)$, $|s|\ge m+1$, at least $r$ seeds in total, and $\mathrm{ch}(s)\ge T$. Packets that are not connected have weight $0$.

*Status:* theorem. The hypotheses of (b) are the records [`Mixed.Costs.Buy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L47-L58) and [`Mixed.Accounts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L84-L89). (b) is used in III.2 and III.10–III.13.
*Lean:* [`Packets.packet_income`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L66-L105), [`Packets.packet_variants_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L124-L175), [`Mixed.mixed_hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L153-L189), [`Mixed.ready_vertices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L95-L122).

**Proposition III.5.8 (the numerical conditions hold at large coupling).**

*Notation.* Fix the gauge group. In (a) and (b), also fix the block side $L$ and $l\in\mathbb N$. For the coarse coupling $x$ put:

- $\beta_F=x+b\log L$, with $b$ a constant of the group;
- $B=\lceil(\log x)^2\rceil$;
- $P(s)=e^{(\log\log s)^2}$;
- $t=\beta_F^{-1/2}P(\beta_F)$, the small-field threshold;
- $\mathrm{bill}(x)=1+B+(\log\beta_F)^2$;
- for $\mu,u>0$, $M=\mu u\,P(\beta_F)^2$.

**(a)** Let $a,D\ge0$, $d\in\mathbb N$ and $z<2$. For all sufficiently large $x$ the following holds. Whenever $s\le D\,\mathrm{bill}^d P(\beta_F)^z$, $g\ge M$ and $0\le C\le \exp(D\,\mathrm{bill}^dP(\beta_F)^z)$:

- the numerical condition $\rho\le q<1$ of III.5.7(a) holds with $q=e^{-M/2}$;
- $K_{\rm hit}Cq^{\max(1,m)}/(1-q)\le e^{-M\max(1,m)/4}$ for every $m$.

If $\beta\ge u\beta_F$, then $\beta\mu t^2\ge M$.

**(b)** Let in addition $\varepsilon,\delta>0$. For all large $x$, all $\beta\ge u\beta_F$, and all $C,e_s\ge0$, $s\in\mathbb R$, and $\gamma_{\rm opt}$ with
$$C\le e^{\rm fee},\qquad s+2\varepsilon e_s\le{\rm fee}:=D\,\mathrm{bill}^dP(\beta_F)^z,\qquad 0\le\gamma_{\rm opt}\le\delta/(16\,\mathrm{ball}_B),$$
the numerical inequalities of III.5.7(b) hold with:

- gain $g=\beta\mu t^2$;
- mark $\mu_s=\mu uP(\beta_F)^2/2$ (half of the guaranteed gain is extracted per seed);
- $q=1/2$;
- $\gamma_{\rm root}=e^{-\mu uP(\beta_F)^2/8}+\gamma_{\rm opt}$.

The packet envelope and optional site-sum estimate in III.5.7(b) remain hypotheses on the actual weights.

**(c)** For a step-estimator $\mathcal T$ (III.1), there is $n$ such that for every $L\ge n$ and all sufficiently large $W$ there is $\mu>0$, chosen before $l,d,u,a,D,z$, with the following property for every choice of $l,d,u,a,D,z$ satisfying (a). For all sufficiently large $x$, every funded step with block side $L$ and coarse side $\ge100(1+B)$ satisfies the point charge of III.5.11 with constant $\mu$. For every $\beta\ge u\beta_F$, the numerical conclusions of (a) hold with $g=\beta\mu t^2$. The threshold in $x$ may depend on the fixed numerical parameters but not on the volume.

*Status:* theorem. (c) takes the energy grant per seed from III.10. Used in III.10.
*Lean:* [`Delay.fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L165-L214), [`Delay.comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L43-L52), [`Buy.quoted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Buy.lean#L67-L103), [`Grant.order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Grants.lean#L52-L71).

**Proposition III.5.9 (logarithm by deletion).**

**(a) Abstract form.**

- *Data.* $J$ finite; $X:\iota\to$ nonempty subsets of $J$ ($\iota$ any set); $v:\iota\to[0,\infty)$; a weight $w$ on subsets of $J$ with $w\ge1$ and $w(P\cup P')\le w(P)w(P')$ whenever $P\cap P'\neq\emptyset$; $a\ge0$; $0\le\delta\le1-e^{-a}$.
- *Site condition.* For every $x\in J$,
$$\sum_{i:\,x\in X_i}w(X_i)\,v_i\,e^{a|X_i|}\le\delta .$$

- *Gas and its pieces.* For $u:\iota\to\mathbb R$ with $|u_i|\le v_i$, let $Z_u(B)=\sum_Q\prod_{i\in Q}u_i$ ($B\subseteq J$), the sum over finite families $Q$ of labels with pairwise disjoint supports contained in $B$. Let $\lambda_u$ be the Möbius pieces of $-\log Z_u$.
- *Claim.*
  - $Z_u(B)>0$ and $Z_u(B)=\exp\big(-\sum_{A\subseteq B}\lambda_u(A)\big)$ for every $B$.
  - $|\lambda_u(A)|\le\lambda_{-v}(A)$, and $\sum_{A\ni x}w(A)\,\lambda_{-v}(A)\le a$ for every $x$.
  - For every $Q\subseteq J$, $Z_u(J\setminus Q)=Z_u(J)\,e^{l}$, with $l=\sum_{A\cap Q\neq\emptyset}\lambda_u(A)$ and $|l|\le a|Q|$.

**(b) At a coarse field.**

- *Data.* Let $\iota$ be countable, with nonempty supports $X_i$. Let $E_i(V)$ ($i\in\iota$) be functions of the gauge field on $\Lambda_n$. Each is local in $X_i$, gauge invariant and Borel, with $|E_i(V)|\le v_i$ whenever no site of $X_i$ is flagged. Let $\tilde E_i$ be $E_i$ set to $0$ when $X_i$ contains a flagged site.
- *Hypotheses.* $M\in\mathbb N$, $A,a\ge0$, $v_i\ge0$, $a(2M+1)^4\le1$, $\delta\le1-e^{-a}$, and $\sum_{i:\,x\in X_i}e^{(A+1)\mathrm{cov}_M(X_i)}v_i\le\delta$ for every $x$.
- *Claim.* The gas $Z_V$ of $\tilde E(V)$ satisfies, for every $V$ and every $Q$:
  - $Z_V(Q)>0$ and $Z_V(Q)=\exp\big(-\sum_{P\subseteq Q}\lambda_P(V)\big)$;
  - $|\lambda_P(V)|\le g(P)$, with $g$ independent of $V$, and $\sum_{P\ni x}e^{A\,\mathrm{cov}_M(P)}g(P)\le a$;
  - $Z_V(\Lambda_n\setminus Q)=Z_V(\Lambda_n)e^{l}$ with $l=\sum_{P\cap Q\ne\emptyset}\lambda_P(V)$ and $|l|\le a|Q|$;
  - there are gauge-invariant Borel functions $\lambda_P^{\rm raw}$, local in the links with both endpoints in $P$, such that $\lambda_P(V)=\mathbf1[P\text{ contains no flagged site}]\lambda_P^{\rm raw}(V)$. Thus the masked coefficients also use the flag tests on $P$.

*Status:* theorem. (b) is used in III.11.
*Lean:* [`ReLog.catalog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L217-L228), [`ReLog.omitted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L235-L271), [`ReLog.swept`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L224-L233), [`ReLog.intake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L157-L183), [`ReLog.retest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L99-L101), [`ReLog.retain_mask`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L118-L143).

**Proposition III.5.10 (trace-log of a near-identity product).** Let $A$ be positive definite and $C$ symmetric (real matrices), and $S=AC-1$ with $0\le q<1$ and $\sum_j|S_{ij}|\le q$ for every $i$. Then:

- $\det C>0$ and $\det(1+S)>0$;
- $\sum_{n\ge1}\frac{(-1)^{n+1}}{n}\,\mathrm{tr}\,S^n$ converges absolutely, and its sum is $\log\det(1+S)$.

*Status:* theorem. Used in III.4.
*Lean:* [`Round.exact_trace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Round.lean#L149-L155), [`Round.twin_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Round.lean#L95-L144).

**Proposition III.5.11 (sector decomposition of a block-spin step; gain per seed).**

*Setting.* Fix a step $S$ with block side $L$, a step-estimator $\mathcal T$, a tube $T$ with $\mathrm{Funds}(S,T)$ (III.1), a coarse coupling $x$ with threshold $t$, and constants $W,\kappa>0$.

*Sector of a packet.* Say $(U,k,V)$ satisfies the sector prerequisites of $A$ when:

- each fine cell whose projected vertices meet $D_{5B}(A)$ has plaquette chord $\ge t/4$ if listed in $A$, and $\le t/2$ otherwise;
- each coarse bond with an endpoint in $D_{5B}(A)$ has predicted wire chord $\ge Wt$ if listed in $A$, and $\le2Wt$ otherwise;
- on $D_{5B}(A)$, the sites listed in $A$ are exactly the sites flagged by $V$ at the coarse threshold $t_C=x^{-1/2}e^{(\log\log x)^2}$;
- the frame tag has positive frame mass at each site of $D_{5B}(A)$.

*Point charge.* For every tree-gauge forest $F$, every fine field $U$ equal to $1$ on the trunks of $F$, every frame tag $k$, every coarse field $V$ and every packet $A$ such that $(U,k,V)$ satisfies these prerequisites:
$$\mathcal E_A(U,V)\ \ge\ \kappa\,t^2\,|A| .$$
Here $\mathcal E_A$ is the *assessed energy* of $A$: the sum of the fine, block-constraint, coarse and cross terms of III.1 with anchors in $D_{2B}(A)$, using walks truncated at $\lfloor B/100000\rfloor$.

*Claim.* Let $R$ be a lawful representation of the fine density (III.1) adapted to $T$: its path data and clip are those of the upper stage of $T$, and its threshold is $t$. Let its coupling satisfy $\beta\ge0$. Let $F$ be any tree-gauge forest and $D=(D_A)_A$ any allocation: $D_A(k,U,V)\ge0$ is Borel, $\sum_A D_A=1$, and $D_A\ne0$ implies the two seed tests above for every fine cell and coarse bond, together with equality of the flag sets on the whole coarse lattice. Positive likelihood then implies the local sector prerequisites. This global support condition is needed to apply the point charge in every lattice orientation. Then for every coarse field $V$
$$(\mathrm{push}_\beta\,\rho_R)(V)=\sum_A c_A(V),\qquad |c_A(V)|\ \le\ \pi_\beta\;e^{-\beta\kappa t^2|A|}\;\ell_A(V),$$
where:

- $c_A$ is the $A$-th sector output;
- $\pi_\beta=Z_{\rm bond}(\beta)^{-|\mathrm{Bond}(\Lambda_c)|}$, where $Z_{\rm bond}(\beta)$ is the single-bond penalty integrated against probability Haar measure;
- $\ell_A(V)$ is the remaining sector integral, including the coarse factor $\mathrm{sieve}(V)$, with the orientation-averaged assessed energy removed and absolute values on the exposed density;
- $c_A$ and $\ell_A$ are bounded Borel functions.

*Uniformity.*

- At a committed pair of scales of the run, a single $\kappa>0$ serves all volumes, all steps of that pair, and all lawful representations produced by the run whose coupling lies in the admissible band.
- For a fixed step-estimator, choose $L$ sufficiently large, then $W$ sufficiently large, then $\kappa>0$. The point charge holds for all sufficiently large $x$ and all funded steps of coarse side $\ge100(1+B)$, uniformly in their volumes.

*Status:* theorem, conditional on $\mathrm{Funds}$ and the point charge. The point charge is discharged in two ways:

- in general, from the Teller's energy grant (III.10);
- at committed scales, from the committed-scale energy hypothesis of the run, through [`notation_ticket`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L166-L181) (III.1).

Used in III.4 and III.10.
*Lean:* [`Presented.portionCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L157-L210) (conclusion [`PortionCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L151-L155)), [`Consumer.bought`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Consumer.lean#L42-L65), [`points_grant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L37-L51); definitions [`Seeded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Cells.lean#L51-L59), [`Alive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Cells.lean#L62), [`PointCharge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L29-L32), [`earn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Grant.lean#L28-L29), [`Allocation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L30-L36).

**Proposition III.5.12 (Combes–Thomas bound).** Let $M$ be a real symmetric matrix on a finite index set, with positions $a_i\in\Lambda_n$. Assume $M\ge r>0$, $\eta\ge0$, and
$$\sup_i\sum_je^{\eta d(a_i,a_j)}|M_{ij}|\le C,\qquad \sup_j\sum_ie^{\eta d(a_i,a_j)}|M_{ij}|\le C .$$
If $0\le\theta\le1$ and $\theta C\le r/2$, then for every $u\ge0$ the matrix $M+uI$ is invertible and
$$e^{\theta\eta\,d(a_i,a_j)}\,\big|(M+uI)^{-1}_{ij}\big|\le\big(\min(1,r/2)\,(1+u)\big)^{-1}\quad\text{for all }i,j .$$
The hypotheses pass to principal submatrices.
*Status:* theorem.
*Lean:* [`Green.inverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L188-L251), [`Green.Bottom.restrict`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L93-L113), [`Green.Rows.restrict`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L78-L88).

**Proposition III.5.13 (windowed inverses).**

*Setting.*

- A finite index set, positions $d_j\in\Lambda_n$, and $U\ge0$ such that $\mathrm{card}\{j:d(y,d_j)\le\rho\}\le U(1+\rho)^4$ for every $y$ and every $\rho\in\mathbb N$.
- $A,r,C,\eta,\theta$ as in III.5.12, with $C\ge0$ and $\eta,\theta>0$; and $0\le\mu<\nu<\theta\eta$.
- A radius $R\in\mathbb N$ and windows $P(j)\ni j$ such that $d(d_i,d_j)\le R\Rightarrow i\in P(j)$.

*Objects.*

- $\mathrm{within}(A)_{ij}=\big((A|_{P(j)})^{-1}\big)_{ij}$ for $i\in P(j)$, and $0$ otherwise.
- $E=A\,\mathrm{within}(A)-1$ and $\mathrm{cov}=\tfrac12(\mathrm{within}+\mathrm{within}^T)$.
- $\Pi_U(\eta)=U\,4!\,(2/\eta)^4\,e^{\eta/2}/(1-e^{-\eta/2})$, $Y=\Pi_U(\theta\eta-\nu)/\min(1,r/2)$, and $s=e^{-(\nu-\mu)R}(CY+1)$.

**(a)** Weighted row and column sums at rate $\mu$ satisfy:

- $A^{-1}$ and $\mathrm{within}(A)$: at most $Y$;
- $E$: at most $s$;
- $\mathrm{within}(A)-A^{-1}$: at most $Ys$.

At any rate $0\le\xi\le\eta$, if $\mathrm{within}-A^{-1}$ has row and column bounds $s'\ge0$ and $\mathrm{within}$ has bounds $Y'\ge0$, then $\mathrm{cov}$, $\mathrm{cov}-A^{-1}$ and $A\,\mathrm{cov}-1$ have bounds $Y'$, $s'$ and $Cs'$, respectively. If also $C,Y'>0$ and $s'\le1/(2C)$, then $\mathrm{cov}\ge1/(2C)$ and $\mathrm{cov}^{-1}\ge(Y')^{-1}$.

**(b)** Fix positive bounds on the weighted row and column sums, spectral gap, rate $\alpha$, and counting constant. There are $0<e\le\alpha$ and $K,c,c_1,c_2>0$, depending only on these data, such that for all sufficiently large integer $R$ the following holds uniformly for all such matrices and windows with room $R$. At rate $e$, the full and windowed inverses of $tA+(1-t)I$ have bounds $K$, and their residual and inverse difference have bounds $Ke^{-cR}<1$, for every $t\in[0,1]$. At $t=1$, the covariance has bound $K$, its difference from $A^{-1}$ and the residual $A\,\mathrm{cov}-I$ have bounds $Ke^{-cR}$, and $\mathrm{cov}\ge c_1$, $\mathrm{cov}^{-1}\ge c_2$.

*Status:* theorem.
*Lean:* [`Win.Windows.window_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L146-L169), [`covariance_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L171-L188), [`covariance_floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L191-L202), [`Win.Promise.receive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L106-L178).

**Proposition III.5.14 (precision matrix of the small-field Gaussian of a step).**

*Setting.* Fix a step-estimator $\mathcal T$ and a patch $\mathcal D$ (block side $L$, order $J$) satisfying the branch conditions for its kernel and gauge group. For a step with patch $\mathcal D$, tube $T$, coupling $x$, tree-gauge forest $F$, packet $A$ and coarse field $V$, define $D$ as follows:

- *Rows.* Use the flat plaquette-curl and upper path-sum rows, with walks truncated at $\lfloor B/100000\rfloor$, and the flat linearized block-constraint rows.
- *Transport.* Transport the input Lie-algebra field by the replica of $V$ and a fixed path gauge centred at each row, in every lattice orientation.
- *Restriction.* Keep rows whose oriented centres lie outside $D_{8B}(A)$, and columns on *active* fine bonds: bonds outside the trunks of $F$ whose projected endpoints lie outside $D_{10B}(A)$. Set all other entries to zero.
- *Normalization.* Write Lie-algebra coordinates and multiply each row by the inverse square root of the number of lattice orientations.

This is a transported flat linearization. Its equality to the derivative of the nonlinear cut rows at $V$ is not asserted.

Let $\mathrm{gram}=D^TD+\mathrm{diag}(\mathbf 1_{\rm inactive})$, with positions the coarse parents of the bonds.

*Claim.* There are constants $r,K,U,\alpha>0$, with $\alpha$ half the decay rate of the upper path data, such that the following holds for all large $x$. For every step with patch $\mathcal D$ and $\mathrm{Funds}$, coarse side $\ge100(1+B)$, every $F$, and every $A,V$ for which the flags of $A$ are the flagged sites of $V$:

- $\mathrm{gram}$ is symmetric and $\mathrm{gram}\ge r$;
- at most $U(1+\rho)^4$ indices lie within distance $\rho$ of any site;
- its weighted row and column sums at rate $\alpha$ are at most $K$;
- $D_{ij}=0$ when the row centre and column position are separated by more than $\lfloor B/100000\rfloor+R_{\rm pred}(\mathcal D)+2$, where $R_{\rm pred}$ is the patch’s predictor range. The range grows with $B$; the weighted bounds are uniform in $x$.

Consequently, for large $x$, III.5.13(b) applies to the following windows: a fine bond belongs to the window of an addressed bond exactly when at least one of its projected endpoints is within distance $\lfloor B/4\rfloor$ of at least one projected endpoint of the addressed bond. Include every color coordinate of each such bond. Their room is $\lfloor B/4\rfloor$, and the error is $K_{\rm win}e^{-c_{\rm win}\lfloor B/4\rfloor}<1$.

*Status:* theorem, conditional on $\mathrm{Funds}$ and $\mathrm{Branches}$. Used in III.4 and III.11 through the window estimates below.
*Lean:* [`Aff.bedrock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L142-L158), [`Aff.surplus`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L72-L113), [`Aff.gram_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/IndexCost.lean#L165-L181), [`Aff.install_promises`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Warsaw.lean#L25-L42); definitions [`Aff.Dmat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Affine.lean#L125-L127), [`Aff.gram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Affine.lean#L145-L147), [`Promise.Served`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L36-L37).

**Further outputs.**

- A calculus of budgets $\mathrm{SB}$ ([`Basic.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Basic.lean)): monotonicity, scaling, pull-back, sums over fibres, geometric tails, [`budget_count_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Basic.lean#L143-L163). It is used by about 125 modules elsewhere.
- Site-sum bounds for bundles of walks on the fine lattice, with a tail in the true length of the walks ([`Paths.bundle_hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Path.lean#L182-L201)).
- A weighted row bound for the tree-gauge response kernel ([`Response.response_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Response.lean#L242-L259)).
- Auxiliary Gaussian estimates, listed in Lemma 4.36.

<a id="unit-inputs"></a>

## 2. What it uses

**From other units.**

- **I.1:** the torus $\Lambda_n$; the distance $d$ ([`separation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L81)); $|X|\le\mathrm{ball}_M\mathrm{cov}_M(X)$ ([`Corona.pays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L129-L131)); subadditivity of $\mathrm{cov}_M$ on overlapping unions ([`Corona.meets_sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Halo.lean#L14-L30)).
- **II.2:** the site-sum condition [`Ac.Hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13); connected families [`Ac.Spark`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L49); $\mathrm{cov}_M$ of a connected union is at most the sum ([`Ac.cover`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L59-L82)).
- **III.1:**
  - $\mathrm{SB}$;
  - the step data: patch, kernel, frame choices, the pushforward [`StepData.push`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L77-L79), [`Branches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185);
  - lawful representations [`Rep.Lawful`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L181-L183);
  - packets, domes, sectors and the assessed energy ([`Stores`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L34-L37), [`Plot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L51-L58), [`assessed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L85));
  - the step-estimator interface [`Teller`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L89-L96) and [`Teller.Funds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L101-L109), with $\mathrm{Funds}$ supplied for the run by [`Testing.proceeds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L147-L152);
  - tubes, tree-gauge forests ([`Tree.Forest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L24-L29)) and flags;
  - the constants $B$, $t$, $\beta_F$ ([`radiusB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22), [`fiery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L26), [`betaF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23));
  - the point charge at committed scales ([`notation_ticket`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L166-L181)).
- **III.10:**
  - the step-estimator’s energy grant per seed ([`Next.Fluctuations.grants`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L24)), used for III.5.8(c) and III.5.11;
  - the sector integrals and their reduction ([`Sector.peel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Sector.lean#L229-L259), [`Sector.prefactor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Sector.lean#L71-L72));
  - the linearized block constraint [`zLin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Defs.lean#L53-L55);
  - the growth of $\beta_F$ and the uniform predictor bound used in the spectral gap estimate.
- **III.6:** a gauge-fixed Poincaré-type inequality ([`Work.F01.link_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L63-L108)). A field vanishing on the trunks is bounded on each fine bond by its plaquette curls in a box of fixed radius around the block, plus its block average. This is the source of the spectral gap $r$ in III.5.14.
- **III.2:** committed pairs of scales, the construction run and its energy hypothesis entering the uniform sector estimate.

**Standard mathematics.** The formal proofs establish the estimates directly. References for the methods are:

- Mayer expansion, Ursell functions and the Penrose tree partition: R. Fernández and A. Procacci, [“Cluster expansion for abstract polymer models. New bounds from an old approach”](https://link.springer.com/article/10.1007/s00220-007-0279-2), *Commun. Math. Phys.* **274** (2007), 123–140.
- Polymer convergence criteria: R. Kotecký and D. Preiss, [“Cluster expansion for abstract polymer models”](https://doi.org/10.1007/BF01211762), *Commun. Math. Phys.* **103** (1986), 491–498; C. Gruber and H. Kunz, [“General properties of polymer systems”](https://link.springer.com/article/10.1007/BF01651334), *Commun. Math. Phys.* **22** (1971), 133–161.
- Lattice-animal counting by spanning walks; the Schur test for matrix norms; Möbius inversion on subsets.
- Exponential conjugation for inverse decay: J.-M. Combes and L. Thomas, [“Asymptotic behaviour of eigenfunctions for multiparticle Schrödinger operators”](https://link.springer.com/article/10.1007/BF01646473), *Commun. Math. Phys.* **34** (1973), 251–270.
- Large-field sectors and localized propagators belong to Bałaban’s block-spin method. Here they are implemented through the explicit seed allocations and principal inverses stated above.

**Imported constants and assumptions.**

- The constants $B=\lceil(\log x)^2\rceil$, $t=\beta_F^{-1/2}e^{(\log\log\beta_F)^2}$ and $\beta_F=x+b\log L$ (III.1).
- The halo factor $l$ is arbitrary in the packet estimates; a particular choice belongs to their application.
- The block side $L\ge n$ and the constant $W$, chosen large (III.2).
- Assumed hypotheses:
  - $\mathrm{Funds}$ and $\mathrm{Branches}$ (III.1);
  - lawful representations (III.1);
  - the point charge (discharged as in III.5.11);
  - in the auxiliary Gaussian estimates, the coarse-side bound and flag equality, together with the compatible quadratic forms specified in Lemma 4.36.

<a id="unit-strategy"></a>

## 3. Strategy

For a finite gas, inclusion–exclusion writes the partition function as a sum over tuples. Splitting off the connected component of a distinguished occurrence gives the coefficient recurrence $(m+1)g_{m+1}=\sum_{k=0}^m(k+1)\ell_k g_{m-k}$. For the gas polynomial $P(t)=\sum_ng_nt^n$ and cluster series $L(t)=\sum_m\ell_mt^{m+1}$, this becomes $P'=L'P$. A geometric bound on the cluster coefficients justifies differentiation on an interval containing $[0,1]$; then $Pe^{-L}=1$. Absolute bounds allow passage to arbitrary label sets through the directed family of finite subsets.

The bounds combine the tree-graph inequality with a sum over trees. A parent support $Y$ meets labels of total inflated weight at most $|Y|\gamma\le\mathrm{ball}_B\gamma\,\mathrm{cov}_B(Y)$. The reserve exponent $\delta$ absorbs each parent’s number of children through $x^k\le k!e^x$. Substochastic kernels sum the labels; the sum of the resulting child factorials over parent maps is at most $4^mm!$. After cancellation of the occurrence factorial, the ratio per added vertex is $4\,\mathrm{ball}_B\gamma/\delta$. Subadditivity of the covering number transfers these bounds to cluster unions. The resulting estimates retain site pins, tails, deleted regions and repeated forced polymers.

For seed packets, a spanning-walk count gives an entropy factor $K_{\rm step}^2$ per seed. The point charge supplies an energy gain $\beta\kappa t^2$ per seed. Since $t=\beta_F^{-1/2}P(\beta_F)$ and $\beta\ge u\beta_F$, the guaranteed gain is $\kappa uP(\beta_F)^2$. At fixed $L$, this dominates every cost $\mathrm{bill}^dP(\beta_F)^z$ with $z<2$. Half the gain can be retained as a mark for later estimates. The partition of unity over global seed records then splits the block-spin pushforward while preserving a common field, tag array and tree-gauge slice.

The deletion construction obtains another logarithm from the region recurrence. Its negative-logarithm pieces form a union-convolution series pinned at a chosen site. A weighted $\ell^1$ bound closes induction on the region and compares signed activities with the gas of negative envelope activities. The final matrix estimates use a transported flat linearization: a gauge-fixed Poincaré inequality and a small-background comparison give a uniform spectral gap, while path bounds give weighted row and column estimates. Exponential conjugation yields inverse decay, and principal window inverses approximate the full inverse with error $O(e^{-cB})$.

<a id="unit-steps"></a>

## 4. Steps

### 4.1 Algebra of the finite gas

In Lemmas 4.1–4.4 the label set $\iota$ is finite, the weights are real, and $R$ is reflexive and symmetric. All vertex sets are finite.

**Lemma 4.1 (gas as a sum over tuples).** Let $R$ be reflexive and symmetric, and $g_n=\frac1{n!}\sum_{z\in\iota^n}\mathrm{all}(z)\prod_aw_{z_a}$, where $\mathrm{all}(z)=\sum_{G\subseteq G_R(z)}(-1)^{|G|}$. Then $g_n=\sum_{|s|=n,\ s\ \mathrm{compatible}}\prod_{i\in s}w_i$, and $\sum_ng_n=\Xi(w)$.
*Sketch:*

- $\mathrm{all}(z)=\mathbf 1[G_R(z)=\emptyset]$, by the binomial identity.
- Since $R$ is reflexive, an edgeless tuple has distinct entries, and so orders a compatible set; each set arises $n!$ times.

*Lean:* [`Partition.allMass_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Partition.lean#L23-L28), [`Gas.row`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Gas.lean#L69-L120), [`Gas.sums`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Gas.lean#L128-L137).

**Lemma 4.2 (splitting off a component).** For any relation $R$, any tuple $z$ on a finite vertex set $\alpha$, and $o\in\alpha$:
$$\mathrm{all}(z)=\sum_{s\ni o}\phi^T_R(z|_s)\,\mathrm{all}(z|_{\alpha\setminus s}).$$
*Sketch:* a subgraph is the same thing as three pieces of data:

- the vertex set $s$ of the component of $o$;
- a connected spanning graph on $s$;
- an arbitrary subgraph on the complement, with no edges between $s$ and its complement.

The signs multiply.
*Lean:* [`Partition.partition`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Partition.lean#L219-L237). *(proof read; the bijection lemmas statement only)*

**Lemma 4.3 (coefficient recurrence).** $(m+1)\,g_{m+1}=\sum_{k=0}^m(k+1)\,\ell_k\,g_{m-k}$.
*Sketch:*

- Sum Lemma 4.2 over all tuples on $\{o\}\sqcup\{1,\dots,m\}$; the tuple sums over $s$ and over its complement factor.
- There are $\binom mk$ sets $s$ of size $k+1$ containing $o$.
- Relabelling invariance of $\phi^T$ finishes the count.

*Lean:* [`Coef.unbased`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L71-L76), [`Coef.discrete`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L79-L125), [`Coef.recurrence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L129-L138).

**Lemma 4.4 (III.5.1).** Under the geometric coefficient bound of III.5.1, $\exp(\sum_m\ell_m)=\Xi(w)$.
*Sketch:*

- Let $u=(1+q^{-1})/2>1$. On $(-u,u)$, the series $L(t)=\sum\ell_mt^{m+1}$ can be differentiated term by term, because $|(m+1)\ell_mt^m|\le C(m+1)(qu)^m$ is summable.
- $P(t)=\sum g_nt^n$ is a polynomial, since $g_n=0$ for $n>|\iota|$.
- Lemma 4.3 and the Cauchy product give $P'=L'P$. Hence $H=Pe^{-L}$ has $H'=0$ and $H(0)=g_0=1$.
- Evaluate at $t=1$.

*Lean:* [`Gas.exact_polynomial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L66-L145).

### 4.2 Tree-graph bound

**Lemma 4.5 (Penrose partition; III.5.2).** The absolute connected-graph sum is bounded by the number of spanning trees.
*Sketch:*

- To each connected spanning $G$ attach its breadth-first tree from the distinguished vertex, breaking ties by a fixed enumeration.
- For a fixed tree $p$, the graphs with tree $p$ form a Boolean interval $[E(p),E(p)\cup F(p)]$. Here $E(p)$ is the edge set of $p$, and $F(p)$ consists of the edges of $T$ that neither change the breadth-first layers nor offer an earlier parent.
- The alternating sum over an interval vanishes unless the interval is a point: flip one free edge.
- Each fibre therefore contributes at most $1$, and only trees of $T$ contribute.

The bound follows without identifying which trees have nonzero fibres.
*Lean:* [`Graph.pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Graph.lean#L113-L148); breadth-first construction in [`Breadth.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Breadth.lean). *(proof read; breadth-first construction statement only)*

### 4.3 Sums over trees

**Lemma 4.6 (substochastic sums along a forest).** Let $\alpha,\beta$ be finite, $p:\alpha\to\alpha\sqcup\{o\}$ an acyclic parent map, $Y$ a fixed root state, and $X_j$ the state associated with $j\in\beta$. If $K(Y',j)\ge0$ and $\sum_jK(Y',j)\le1$ for every state $Y'$, then $\sum_{z:\alpha\to\beta}\prod_iK(X_{z_{p(i)}},z_i)\le1$, with the first argument interpreted as $Y$ when $p(i)=o$.
*Sketch:* induction on the set of summed vertices. Sum out a vertex of maximal rank first: it is a leaf, and its row sum is $\le1$.
*Lean:* [`Trees.substochastic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Parent.lean#L44-L126).

**Lemma 4.7 (fan-out factorials).** $\sum_{p:[m]\to[m]\sqcup\{o\}}\prod_v(\mathrm{card}\{i:p(i)=v\})!=\binom{2m}{m}m!\le4^mm!$.
*Sketch:* with $m+1$ possible parents fixed, extending a map on $n$ vertices multiplies the total factorial weight by $n+m+1$. Iterating from $n=0$ to $m$ gives $(2m)!/m!$, and $\binom{2m}{m}\le4^m$.
*Lean:* [`Trees.parent_fanout`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Parent.lean#L191-L193), [`fanout_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Parent.lean#L184-L189).

**Lemma 4.8 (trees rooted at a support).** Assume $w\ge0$, $\gamma,\delta>0$, $a\in\mathbb R$, and $\mathrm{Hit}_B(w;a+\delta,\gamma)$. For any support $Y$ and any finite $D\subseteq\iota$,
$$\sum_{p}\sum_{z\in D^m}\mathbf 1\big[X_{z_i}\cap X_{\mathrm{parent}(i)}\neq\emptyset\ \forall i\big]\ \frac1{m!}\prod_i\big(w_{z_i}e^{a\,\mathrm{cov}_B(X_{z_i})}\big)\ \le\ e^{\delta\,\mathrm{cov}_B(Y)}\,\big(4\,\mathrm{ball}_B\gamma/\delta\big)^m,$$
where $p$ runs over acyclic parent maps on the $m$ labelled vertices with external root of support $Y$.
*Sketch:*

- Define $K(Y',i)=\mathbf 1[X_i\cap Y'\neq\emptyset]\,w_ie^{(a+\delta)\mathrm{cov}_B(X_i)}\big/\big(\tau\max(\delta\,\mathrm{cov}_B(Y'),1)\big)$ with $\tau=\mathrm{ball}_B\gamma/\delta$. The numerator summed over $i$ is at most $|Y'|\gamma\le\tau\delta\,\mathrm{cov}_B(Y')\le\tau\max(\delta\,\mathrm{cov}_B(Y'),1)$, so $\sum_iK(Y',i)\le1$, also for $Y'=\emptyset$.
- Rewrite each weight $w_ie^{a\,\mathrm{cov}}$ as $\tau\max(\delta\,\mathrm{cov}(\mathrm{parent}),1)\,K\,e^{-\delta\,\mathrm{cov}(X_i)}$.
- A parent with $k$ children contributes $\max(\delta\,\mathrm{cov},1)^k\le k!\,e^{\delta\,\mathrm{cov}}$. The exponential at each internal vertex cancels its own $e^{-\delta\,\mathrm{cov}}$, leaving $e^{\delta\,\mathrm{cov}_B(Y)}$ at the root.
- Conclude with Lemmas 4.6 and 4.7.

*Lean:* [`Trees.trees_afford`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Weigh.lean#L192-L228), [`Trees.forest_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Forest.lean#L46-L56).

### 4.4 Cluster sums and the logarithm

**Lemma 4.9 (rooted and marked cluster sums; III.5.3(c)).** Under III.5.3’s hypotheses, the marked sum at order $m$ is at most $bq^m$.
*Sketch:*

- $\frac1{(m+1)!}=\frac1{m+1}\cdot\frac1{m!}$: write the tuple sum as the average over the choice of root vertex. A transposition moves the root to position $0$, and $\phi^T$ is invariant under relabelling.
- At root $0$, Lemma 4.5 bounds $|\phi^T(z)|$ by the trees of $G_R(z)$. Since $R$ is contained in the overlap relation, these are trees of supports rooted at $X_{z_0}$ in the sense of Lemma 4.8.
- The root label is summed against its own weight $w_ie^{(a+\delta)\mathrm{cov}(X_i)}$, which absorbs the factor $e^{\delta\,\mathrm{cov}}$. This gives $bq^m$.

*Lean:* [`Ursell.cluster_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L148-L183).

**Lemma 4.10 (pinned bounds; III.5.3(a),(b)).** Under III.5.3’s hypotheses, both pinned tails are at most $\gamma q^m/(1-q)$.
*Sketch:*

- If $\phi^T_R(z)\neq0$, then $G_R(z)$ is connected, so $\mathrm{cov}_B(X(z))\le\sum_a\mathrm{cov}_B(X_{z_a})$.
- Apply Lemma 4.9 with $Q=\{i:x\in X_i\}$, where $b=\gamma$ by the site condition at $x$, and sum the geometric tail.
- The set version (b) follows in the same way from a count of distinct-label forests.

*Lean:* [`Ursell.connected_pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L194-L211), [`Ursell.log_hit_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L224-L243), [`Trees.touch_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Distinct.lean#L245-L276). *(proof read; distinct-label forest count statement only)*

**Lemma 4.11 (from finite to arbitrary label sets; III.5.4).** Under III.5.4’s hypotheses, the gas and cluster series converge absolutely, and $\Xi=\exp(\text{cluster series})>0$.
*Sketch:*

- Every support is nonempty, so $\sum_i|w_i|e^{(a+\delta)\mathrm{cov}}\le n^4\gamma$. Hence $\sum_s\prod_{i\in s}|w_i|\le e^{n^4\gamma}$, and the cluster series has absolute sum $\le n^4\gamma/(1-q)$.
- On a finite $D\subseteq\iota$ the hypotheses restrict, and III.5.1 applies with $C=n^4\gamma$.
- Let the finite subsets $D\subseteq\iota$ increase by inclusion and use dominated convergence for both series; the dominating budgets do not depend on $D$.

*Lean:* [`Gas.finite_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Log.lean#L29-L41), [`Gas.price_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Log.lean#L114-L149), [`Product.everyone_ne`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Product.lean#L43-L51), [`Product.set_products`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Product.lean#L53-L64).

### 4.5 Deleted regions and forced polymers

**Lemma 4.12 (III.5.5).** Under III.5.5’s hypotheses, deleting polymers meeting $Y$ multiplies the gas by $e^{-p}$, with $|p|\le|Y|\gamma/(1-q)$ and the stated cluster tails.
*Sketch:*

- The cluster terms of $w^Y$ are those of $w$ minus the terms whose union meets $Y$.
- The removed terms are bounded by Lemma 4.10 with $m=0$, summed over $x\in Y$.
- Apply III.5.4 to both gases; $|w^Y|\le|w|$, so $w^Y$ satisfies the same hypotheses.

*Lean:* [`Gas.restores_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L69-L95), [`Gas.missing_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L40-L63).

**Lemma 4.13 (multiplicities on a fixed set).** For a finite set $s$, if $0\le\sigma<1$ and $0\le w_i\le\sigma$ for $i\in s$, then $\sum_{(n_i)\in\mathbb N_{\ge1}^{s}}\prod_{i\in s}w_i^{n_i}/n_i!\le\prod_{i\in s}\big(w_i/(1-\sigma)\big)$.
*Sketch:* bound $w_i^{n_i}/n_i!$ by $w_i\sigma^{n_i-1}$ and multiply the geometric sums.
*Lean:* [`Multiple.buy_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L60-L72).

**Lemma 4.14 (multiset sums).** Let $X_i$ be nonempty, $w_i\ge0$, $a\ge0$, $t\ge1$, $0\le\sigma<1$, and $e_i\in\mathbb R$. Suppose $\mathrm{Ready}\big(t\,w\,e^{e}/(1-\sigma);a,\gamma,\delta,q\big)$ and $\gamma\le\sigma$. Then the sum over multisets with connected support through $x$, satisfying a predicate $Q$ on which $\sum n_ie_i\ge v$, with total multiplicity $\ge m$, of $e^{a\,\mathrm{cov}_B(\cup)}\prod w_i^{n_i}/n_i!$, is at most $t^{-m}e^{-v}\gamma/(1-q)$.
*Sketch:*

- Each weight $tw_i e^{e_i}e^{a\,\mathrm{cov}_B(X_i)}$ is at most $\sigma$, by the site condition at a point of its nonempty support.
- Connectedness bounds the union cover by the sum of the individual covers; multiplicities are at least one. Lemma 4.13 then sums the multiplicities at cost $1/(1-\sigma)$ per label, and III.5.3(b) sums the connected sets.
- The factor $t^{\sum n}e^{\sum ne}\ge t^me^v$ is extracted on the selected multisets.

*Lean:* [`Multiple.estimates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L135-L169).

**Lemma 4.15 (III.5.6).** Under III.5.6’s hypotheses, the pinned multiset sum containing a forced label is at most $t^{-m}e^{-\mu}\eta/(1-q')$.
*Sketch:*

- The first-level clusters satisfy a site condition with constant $\gamma/(1-q)$ at exponent $A+\delta'$, by III.5.3(a) with $m=0$; the forced polymers satisfy one with constant $c$.
- Join the two alphabets, scaling the weights by $te^\mu/(1-\sigma)$ and $t/(1-\sigma)$ respectively; the resulting constant is at most $\eta$.
- Apply Lemma 4.14 with $e=\mu$ on forced labels; the presence of a forced label gives $v=\mu$.

*Lean:* [`OmitClusters.restore`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Omissions.lean#L48-L100), [`Labels.together`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Labels.lean#L83-L96).

### 4.6 Packets and the large-coupling numerics

**Lemma 4.16 (animals and covers).** In the setting of III.5.7:

- For every $k\in\mathbb N$, the number of connected packets with $k$ seeds whose dome contains $x$ is at most $K_{\rm hit}(K_{\rm step}^2)^k$.
- $\mathrm{cov}_B(D(A))\le|A|\,(2l+3)^4$ for connected $A$.

*Sketch:*

- A connected packet is the vertex set of a walk of length $2(k-1)$. The walk runs in the graph of seeds whose skins can meet, which has degree $\le K_{\rm step}$. It starts at one of at most $K_{\rm hit}$ seeds whose skin contains $x$.
- For $B\ge1$, a skin lies in a ball of radius $lB+1\le(l+1)B$, covered by $(2l+3)^4$ balls of radius $B$. For $B=0$, its connected location set lies in the radius-$1$ ball and costs at most $3^4\le(2l+3)^4$ singleton balls. A connected union costs at most the sum.

*Lean:* [`Packets.stores_count`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L260-L269), [`Animals.animals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Animals.lean#L122-L137), [`Packets.cover_support`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L171-L176). *(statement only for the animal count; covering proof read)*

**Lemma 4.17 (III.5.7(a)).** Under III.5.7(a)’s hypotheses, the packet tail is at most $K_{\rm hit}Cq^{\max(1,m)}/(1-q)$.
*Sketch:*

- On a connected packet, $p_Ae^{a\,\mathrm{cov}}\le C\big(e^{s-g+a(2l+3)^4}\big)^{|A|}$.
- With the count of Lemma 4.16, sum the geometric series ([`budget_count_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Basic.lean#L143-L163)).
- Connected packets have at least one seed; hence $\max(1,m)$.

*Lean:* [`Packets.packet_income`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L66-L105), [`Packets.cover_income`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L42-L53).

**Lemma 4.18 (III.5.7(b)).** Under III.5.7(b)’s hypotheses, the mixed-word sum has the bound stated there.
*Sketch:*

- *Ready.* Inflate the weights to $p_Ae^{2\varepsilon e_s|A|+\mu_s|A|}$ and $w_ie^{2\varepsilon\lambda_i}$. The joint alphabet then satisfies Ready at exponent $a+2\varepsilon$: packets by Lemma 4.17, optional labels by hypothesis, and the constants add up to $\gamma_{\rm root}$.
- *Connected sets.* III.5.3(b) sums the connected sets.
- *Extractions.*
  - $(1+\mathrm{ch})^k\le\varepsilon^{-k}k!\,e^{\varepsilon}e^{\varepsilon\,\mathrm{ch}}$;
  - one of the two factors $e^{\varepsilon\,\mathrm{ch}}$ of the inflation gives $e^{\varepsilon T}$;
  - the marks give $e^{\mu_sr}$.

*Lean:* [`Mixed.ready_vertices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L95-L122), [`Mixed.mixed_hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L153-L189), [`Reserves.sets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Reserves.lean#L97-L135), [`Reserves.reserve_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Reserves.lean#L34-L56).

**Lemma 4.19 (III.5.8).** For fixed numerical parameters satisfying III.5.8, all its packet and tree conditions hold for sufficiently large $x$, uniformly in volume.
*Sketch:*

- *Domination.* $D\,\mathrm{bill}^d\le P(\beta_F)^e$ eventually, for every $e>0$, since $(\log\beta)^{2d}=e^{2d\log\log\beta}$ is eventually below $e^{e(\log\log\beta)^2}$. Also $K_{\rm hit},K_{\rm step}^2\le e^{M/16}$, because $K_{\rm step}\le\mathrm{const}\cdot\mathrm{bill}^4$.
- *Ratio.* $\rho\le e^{M/16}e^{M/16-M+M/16}\le e^{-M/2}$.
- *Gain.* $\beta\ge u\beta_F$ gives $\beta\mu t^2\ge\mu uP(\beta_F)^2$, because $\beta_Ft^2=P(\beta_F)^2$.
- *Assembly.* For (b), subtract the mark $M/2$ from the gain and apply (a) with $\mu/2$; the remaining gain is at least $M/2$. For (c), use the step-estimator’s grant before applying the numerical estimates.

*Lean:* [`Delay.monitor_pays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L74-L101), [`Delay.step_delay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L128-L156), [`Delay.fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L165-L214), [`Buy.quoted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Buy.lean#L67-L103), [`Grant.order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Grants.lean#L52-L71). *(proof read; the grant of III.10 statement only)*

### 4.7 The logarithm by deletion

**Lemma 4.20 (deletion identity).** For the gas $Z_u$ of III.5.9(a) and $x\in B$:
$$Z_u(B)=Z_u(B\setminus\{x\})+\sum_{P\subseteq B,\ P\ni x}\varphi_u(P)\,Z_u(B\setminus P),\qquad \varphi_u(P)=\sum_{i:\,X_i=P}u_i,$$
and $Z_u(\emptyset)=1$.
*Sketch:*

- At most one member of a disjoint family contains $x$; removing it removes its support.
- The identity holds exactly for finite truncations of $\iota$ and passes to the absolutely convergent limit.

*Lean:* [`ReLog.stock_deletion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L68-L114), [`ReLog.shelf`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L144-L163).

**Lemma 4.21 (the incidence algebra).** Let $J$ be finite and let $w$ satisfy the weight assumptions of III.5.9(a). For set functions on $J$ define:

- $(f*g)(T)=\sum_{P\cup Q=T}f(P)g(Q)$;
- $\hat f(B)=\sum_{A\subseteq B}f(A)$, so that $\widehat{f*g}=\hat f\hat g$;
- $\|f\|_w=\sum_Aw(A)|f(A)|$.

Then:

- $\|\cdot\|_w$ is submultiplicative on functions supported on sets containing a common point $x$.
- For such $f$ with $\|f\|_w<1$, $\lambda(f)=\sum_{n\ge0}f^{*(n+1)}/(n+1)$ satisfies $\widehat{\lambda(f)}=-\log(1-\hat f)$ and $\|\lambda(f)\|_w\le-\log(1-\|f\|_w)$.
- If $f$ and $F$ are supported on sets containing $x$, $|f|\le F$ pointwise and $\|F\|_w<1$, then $|\lambda(f)|\le\lambda(F)$.

*Sketch:* cumulative sums turn union convolution into multiplication. Two nonzero factors pinned at $x$ have intersecting supports, so the weight inequality gives submultiplicativity. Apply it to convolution powers and sum $\sum_{n\ge1}q^n/n=-\log(1-q)$ for $q<1$; termwise absolute domination gives the last assertion.

*Lean:* [`ReLog.crop_glue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L118-L134), [`ReLog.lamp_shed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L169-L176), [`ReLog.lamp_cropped`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L178-L196), [`ReLog.lamp_mono`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L197-L209).

**Lemma 4.22 (the induction).** Let $J$ be finite, $w$ satisfy III.5.9(a)’s weight assumptions, and $a\ge0$. Let $U,z$ be functions of supports with $U\ge0$, $|z|\le U$, and $\sum_{P\ni x}w(P)U(P)e^{a|P|}\le1-e^{-a}$ for every $x$. Suppose $Z,Y$ satisfy the deletion identities with activities $-U,-z$, respectively, and $Z(\emptyset)=Y(\emptyset)=1$. Then for every $B$:

- $Z(B)>0$ and $Y(B)>0$;
- $|\lambda_Y(B)|\le\lambda_Z(B)$;
- $\sum_{A\subseteq B,\ A\ni x}w(A)\lambda_Z(A)\le a$ for $x\in B$.

*Sketch:* strong induction on $B$. The empty region is immediate. For nonempty $B$, pick $x\in B$.

- Define $f_x$ on subsets of $B$, extended by zero on other supports, by Möbius inversion from
$$\hat f_x(A)=\sum_{P\subseteq A,\ P\ni x}U(P)\exp\!\left(\sum_{T\subseteq A\setminus\{x\},\ T\cap P\neq\emptyset}\lambda_Z(T)\right),\qquad A\subseteq B.$$
The conditions $x\in P\subseteq A$ make $f_x$ supported on sets containing $x$. The deletion identity gives $Z(A)=Z(A\setminus\{x\})(1-\hat f_x(A))$.

- By submultiplicativity of $w$ and the induction hypothesis at the points of $P$, $\|f_x\|_w\le\sum_{P\ni x}w(P)U(P)e^{a|P|}\le1-e^{-a}$. Hence $Z(B)>0$.
- The pieces of $-\log Z$ on sets containing $x$ are $\lambda(f_x)$, with $\|\lambda(f_x)\|_w\le-\log e^{-a}=a$.
- The same computation for $Y$, with $|f^Y_x|\le f_x$, gives the domination.

*Lean:* [`ReLog.leash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L180-L211), [`ReLog.matures`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L75-L106), [`ReLog.swept`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L224-L233), [`ReLog.catalog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L217-L228).

**Lemma 4.23 (deleting sites).** Under III.5.9(a)’s hypotheses, with $Z=Z_u$ and $\lambda=\lambda_u$, $-\log Z(J\setminus Q)=\sum_{A\cap Q=\emptyset}\lambda(A)$, hence $l=\sum_{A\cap Q\neq\emptyset}\lambda(A)$, and $|l|\le\sum_{x\in Q}\sum_{A\ni x}w(A)\lambda_{-v}(A)\le a|Q|$ because $w\ge1$.
*Lean:* [`ReLog.omitted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L235-L271).

**Lemma 4.24 (at a coarse field; III.5.9(b)).** Under III.5.9(b)’s hypotheses, its masked logarithm coefficients satisfy the common envelope and deletion-ratio bounds.
*Sketch:*

- $e^{A\,\mathrm{cov}_M}$ is an admissible weight, since $\mathrm{cov}_M$ is subadditive on overlapping unions.
- $a(2M+1)^4\le1$ gives $a|X|\le\mathrm{cov}_M(X)$, which converts the condition into III.5.9(a).
- *Masking.* If $P$ contains a flagged site $y$, the masked gas does not see $y$, so its Möbius piece at $P$ vanishes.
- The raw pieces depend only on labels supported in $P$, so they are local in $P$ and gauge invariant. Countability makes the gas sums Borel; finite Möbius inversion preserves this. Multiplying by the healthy-region indicator gives the masked coefficients, including the external flag tests.

*Lean:* [`ReLog.intake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L157-L183), [`ReLog.native_rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L26-L32), [`ReLog.permits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L51-L65), [`ReLog.retain_mask`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L118-L143), [`ReLog.retest_meas`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L104-L114).

**Lemma 4.25 (trace-log; III.5.10).** Under III.5.10’s hypotheses, the trace-log series converges absolutely to $\log\det(I+S)$, and both determinants are positive.
*Sketch:*

- $AC=A^{1/2}(A^{1/2}CA^{1/2})A^{-1/2}$ is similar to a symmetric matrix.
- Its eigenvalues $\lambda$ are those of $1+S$, and $|\lambda-1|\le\|S\|_{\infty\to\infty}\le q$.
- Hence $\log\det(1+S)=\sum\log\lambda=\sum_n(-1)^{n+1}\mathrm{tr}\,S^n/n$, and $\det C=\det(1+S)/\det A>0$.

*Lean:* [`Round.twins`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Round.lean#L74-L93), [`Round.twin_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Round.lean#L95-L144).

### 4.8 The sector decomposition

**Lemma 4.26 (allocations and columns).** An allocation is the partition of unity with global seed tests specified in III.5.11. It satisfies $0\le D_A\le1$; where the likelihood is positive, $D_A\ne0$ implies the local sector prerequisites.

- The hard allocation, the indicator of the actual booking, is one example.
- A smooth decreasing cutoff $\chi:\mathbb R\to[0,1]$, equal to $1$ on $(-\infty,1]$ and $0$ on $[4,\infty)$, gives another allocation when $W,t>0$.
- For every coarse $V$ and $\beta\in\mathbb R$, if the step satisfies its branch conditions and $g$ is integrable and gauge invariant, then $\sum_A\mathrm{out}_A(V)=\mathrm{push}_\beta g(V)$.

*Sketch:* sum the allocation before integrating, then apply the tree-gauge integration identity for $g$ and the gauge-covariant block kernel.

*Lean:* [`Allocation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L30-L36), [`Allocation.hard`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L68-L78), [`Chi.canonical`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L95-L101), [`push_columns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Output.lean#L102-L114).

**Lemma 4.27 (cut-out identity).** For a representation adapted to the tube as in III.5.11, let $\Delta_{\rm cut}(U,V)$ be the orientation-averaged fine cut-row action minus its coarse counterpart. Then
$$\text{kernel}\times\rho_R=\mathrm{sieve}(V)\cdot\mathrm{exposed}(U)\cdot\mathrm{kernel}\cdot e^{-\beta\,\Delta_{\rm cut}(U,V)} .$$

- In the input action, split the cut rows of the upper stage, averaged over the lattice symmetries, into two parts:
  - their coarse counterpart at $V$, which gives the factor $\mathrm{sieve}(V)$, taken out of the integral;
  - the difference $\Delta_{\rm cut}(U,V)$, which is kept with the block kernel.
- The rest of the action and the polymer gas form $\mathrm{exposed}(U)$.

*Lean:* [`Presented.expel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L40-L56), [`Presented.use_gap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L66-L78).

**Lemma 4.28 (energy factorization).** For a step satisfying its branch conditions,
$$\mathrm{kernel}\cdot e^{-\beta\,\Delta_{\rm cut}}=\pi_\beta\,e^{-\beta\,\overline{\mathcal E}_A}\cdot(\text{likelihood})\,e^{-\beta\,\overline{\mathcal E}^{\rm rest}_A},$$
where bars denote averages over the lattice symmetries, applied to the rotated packet. On the tree-gauge slice, the global seed tests and positive likelihood imply the local prerequisites in every orientation. The point charge therefore gives $\overline{\mathcal E}_A\ge\kappa t^2|A|$ wherever $D_A\ne0$ and the likelihood is positive; zero-likelihood terms vanish.
*Lean:* [`Oriented.enters_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L185-L208), [`Oriented.mean_pays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L210-L219).

**Lemma 4.29 (III.5.11).** Under III.5.11’s funding, adaptation and point-charge assumptions, the sector outputs sum to the pushforward and satisfy its per-seed bound.
*Sketch:*

- Express each signed sector output using Lemma 4.27; its sum is the pushforward by Lemma 4.26.
- Bound its absolute value by the integral of the absolute exposed density. Apply Lemma 4.28 with $\beta\ge0$ to extract $\pi_\beta e^{-\beta\kappa t^2|A|}$.
- Bounded Borel factors give bounded Borel sector integrals at each fixed volume.

*Lean:* [`Oriented.turn_charge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L267-L297), [`Presented.portionCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L157-L210).

**Lemma 4.30 (one $\kappa$).** The uniform point-charge conclusions of III.5.11 hold.
*Sketch:* the general conclusion uses the step-estimator’s energy grant (III.10). At a committed pair of scales, use the run’s energy hypothesis (III.1); its compatibility conditions identify the representation’s paths, clip and threshold with those of the tube. The constant is chosen before the volume, step and representation.

*Lean:* [`points_grant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L37-L51), [`Consumer.bought`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Consumer.lean#L42-L65), [`charged_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Grant.lean#L61-L66). *(proof read; the inputs from III.1 and III.10 statement only)*

### 4.9 Matrices

**Lemma 4.31 (III.5.12).** Under III.5.12’s hypotheses, the shifted inverse has the stated pointwise exponential bound.
*Sketch:* fix $j$ and put $s_k=e^{\theta\eta d(a_k,a_j)}$ and $w=s\cdot(M+uI)^{-1}e_j$.

- Then $(M+uI+F)w=e_j$, with $F_{kl}=M_{kl}(s_k/s_l-1)$.
- By convexity of $\exp$, $|s_k/s_l-1|\le\theta e^{\eta d(a_k,a_l)}$. The Schur test then gives $|\langle w,Fw\rangle|\le\theta C|w|^2\le\frac r2|w|^2$.
- Hence $\min(1,r/2)(1+u)|w|^2\le w_j\le|w|$, and $|w_i|\le|w|$ gives the claim.

*Lean:* [`Green.inverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L188-L251), [`Green.diminishing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L135-L147), [`Green.schur`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L149-L168).

**Lemma 4.32 (III.5.13).** Under III.5.13’s hypotheses, the window residual, inverse difference and covariance satisfy its weighted bounds.
*Sketch:*

- $E_{ij}=0$ for $i\in P(j)$, because column $j$ of $\mathrm{within}(A)$ solves the system on the window. So $E$ lives at distances $>R$.
- Pointwise decay at rate $\theta\eta$, from III.5.12 applied to $A$ and to its principal submatrices, becomes row-sum decay at rate $\nu$ by the counting bound. This costs $\Pi_U(\theta\eta-\nu)$.
- The far entries of $E$ at the slower rate $\mu$ pay $e^{-(\nu-\mu)R}$.
- Finally $\mathrm{within}-A^{-1}=A^{-1}E$, and the weighted Schur classes are closed under products.
- Part (b) applies (a) uniformly along $tA+(1-t)$.

*Lean:* [`Windows.stitched`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L51-L69), [`Windows.inverse_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L124-L141), [`Windows.window_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L146-L169), [`Win.planePrice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Schur.lean#L69-L70).

**Lemma 4.33 (spectral gap).** Fix $\mathcal T,\mathcal D$ as in III.5.14. There is $0<r\le1$ such that, for all sufficiently large $x$, all funded steps with this patch, coarse side $\ge100(1+B)$ and the stated flag equality satisfy $r|v|^2\le|Dv|^2$ for every $v$ supported on active coordinates.
*Sketch:*

- Take an active bond. Its projected endpoints lie outside $D_{10B}(A)$, so in an axial gauge the background $V$ is within $\delta(x)\to0$ of $1$ near the bond.
- The Poincaré-type inequality of III.6 bounds the bond variable by flat curls and block averages near the block. These are the flat rows.
- In this gauge, the transported flat rows differ from the untransported flat rows by $O(\delta)|v|_{\rm loc}$.
- Square and sum with bounded overlap: $|v|^2\le\mathcal V|Dv|^2+o(1)|v|^2$, which gives $r=(2(1+\mathcal V))^{-1}$.
- Then $\langle v,\mathrm{gram}\,v\rangle=|Dv|^2+|v_{\rm inactive}|^2\ge r|v|^2$.

*Lean:* [`Aff.inflow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L27-L69), [`Aff.surplus`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L72-L113), [`Aff.decomposes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L134-L139). *(proof read; per-bond comparison and III.6 inequality statement only)*

**Lemma 4.34 (decay).** Fix $\mathcal T,\mathcal D$ as in III.5.14. There is $K>0$, uniform over all funded steps with that patch, all $V,A,F$ and every real $x$, such that $D$ and its unmasked version have weighted row and column bounds $K$ at rate $\alpha$ equal to half the upper path-decay rate, and $\mathrm{gram}$ has bounds $K^2+1$. Moreover $\mathrm{gram}_{ij}=0$ at distances greater than $2(\lfloor B/100000\rfloor+R_{\rm pred}(\mathcal D)+2)$.
*Sketch:*

- Pointwise exponential decay of the row coefficients comes from the path-sum bounds of the upper stage and from the block-constraint rows.
- The counting bound converts it into row sums.
- Products and sums give $\mathrm{gram}$.

*Lean:* [`Aff.gram_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/IndexCost.lean#L165-L181), [`Aff.stencil`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/IndexCost.lean#L120-L159), [`Aff.received`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Speed.lean#L138-L155).

**Lemma 4.35 (III.5.14).** The uniform matrix and window conclusions of III.5.14 hold.
*Sketch:* combine Lemmas 4.33 and 4.34 with the index-counting bound, then apply III.5.13(b). The windows have room $\lfloor B/4\rfloor\to\infty$ as $x\to\infty$.

*Lean:* [`Aff.bedrock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L142-L158), [`Aff.install_promises`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Warsaw.lean#L25-L42).

**Lemma 4.36 (auxiliary Gaussian estimates).** Fix the step-estimator and patch of III.5.14. The auxiliary Gaussian ([`Mint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Mint.lean#L22-L28)) uses the completed precision $G=D^TD+I_{\rm inactive}$, the affine constant $h$ (including the clipped frozen coordinates), source $D^Th$, and selected mean $\mu=-\mathrm{within}(G)^TD^Th$.

For the field estimates below, assume a funded step with this patch, coarse side $\ge100(1+B)$, and the flag equality of III.5.14. Write $H_{n,p}=B^pt^n$. A *reserve* $C_{\rm res}>0$ supplies uniform bounds on the upper and lower row sums and the coarse predicted fields. A *compatible pair of quadratic forms* means upper and lower forms attached to the tube, satisfying its diagonal and renormalization identities, the two quadratic bounds and orientation covariance. The shift and plateau estimates assume such a pair and the window bounds of III.5.13(b). Each large-$x$ threshold is uniform in the remaining volume and field data.

- [`Aff.escape`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Station.lean#L222-L241): With a compatible pair, for every coarse Lie-algebra field $b$ and every tree-gauge forest, the stationary linear extension solves the untruncated flat fine-row and block-constraint equations with the predicted coarse linear rows as right-hand sides, in every orientation. This is an identity for those linear operators; it does not assert that $D\mu+h=0$.
- [`Aff.velocity`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Stint.lean#L44-L97), [`Aff.shifted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Stint.lean#L100-L121): Assume a reserve. Let $o\notin D_{20B}(A)$ and let a gauge transform of $V$ agree, on bonds anchored within $6B$ of $o$, with $\exp b$, where $\|b\|_\infty\le H_{1,7}$. Let $v$ be the inverse-gauge transport of the stationary extension minus the replica extension, restricted to active coordinates. Then $|\mu_i-v_i|\le H_{2,27}$ whenever the column position is within $2B$ of $o$. At every row centred outside $D_{20B}(A)$, $|(D\mu+h)_i|\le H_{2,29}$.
- [`Jewels.night`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Hour.lean#L55-L116): Assume a reserve $C_{\rm res}$, $W>0$, and the two numerical margins $C_{\rm res}/L^2\le s_0$ and $C_{\rm res}+s_0\le(W/4)\sqrt{p_0}$, where $s_0=\sqrt{c_{\rm direct}}/64$, $c_{\rm direct}$ is the upper direct quadratic coefficient, and $p_0>0$ is the kernel penalty. There is $\varepsilon>0$ such that, for all sufficiently large $x$, the following holds when the frozen cutoff scale equals $Bt$. Reconstruct the fine field by inserting $\exp(\mu+z)$ relative to the replica of $V$ on active bonds and keeping the fixed tree-gauge slice field on the other bonds. For any fluctuation $z$, a fine cell whose projected anchor lies outside $D_{20B}(A)$ has plaquette chord $<t/4$ if $|z_i|\le\varepsilon t$ on coordinates anchored within $B$ of that anchor. The same test at the anchor of a coarse bond outside $D_{20B}(A)$ gives wire chord $<Wt$ and makes both likelihood cutoffs equal to $1$.
- [`Aff.tap_open`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Draught.lean#L92-L114): Fix an order $p\in\mathbb N$ and $\delta>0$. For all sufficiently large $x$, if every fine bond anchored within $B/2$ of a given coarse-bond anchor has chord at most $H_{1,p}$, then the frame and connector use their minimizing branches and the predicted coarse-bond chord is $<\delta$, for every tag. The uniqueness of those minimizers is part of the branch hypotheses.
- [`Aff.perturb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/DCompare.lean#L190-L207): There is $K>0$, depending only on the step-estimator and patch, such that for every truncation radius $R$ and every unmasked transported row $L_{R,V}$, with $s_R=R+R_{\rm pred}(\mathcal D)+2$, $\|(L_{R,V}-L_{R,1})u\|\le K(4s_R+1)\delta C_u$ if $C_u,\delta\ge0$, $\|u_j\|\le C_u$ on fine bonds anchored within $s_R+1$ of that row, and all coarse-bond chords anchored within $4s_R+1$ are at most $\delta$. This compares with the flat background; it is not a Lipschitz estimate between arbitrary backgrounds.
- [`Aff.arc_bill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Ground.lean#L51-L130): Assume a reserve and fix $p\ge7$. For all sufficiently large $x$, take a row centred outside $D_{2B}(A)$ and a fine Lie-algebra field $u$ bounded by $H_{1,p}$ on bonds anchored within $B$. If $U$ agrees there with $\exp(u)\,\mathrm{replica}(V)$, its nonlinear row value $F(U,V)$ satisfies $\|F(U,V)\|\le H_{1,p+4}$ and $\|F(U,V)-F(\mathrm{replica}(V),V)-L_Vu\|\le H_{2,2p+6}$, where $L_V$ is the transported flat row at the prescribed truncation. This is the error estimate used in place of identifying $L_V$ with a derivative at $V$.
- [`Aff.reserves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Veil.lean#L41-L49): For every step-estimator there exists a reserve $C_{\rm res}$. It is chosen before $L$; for each fixed $L$, its row and coarse-field bounds hold for all sufficiently large $x$ and all funded steps of coarse side $\ge100(1+B)$.



<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

The tree-graph argument is standard. The estimates must also retain arbitrary label sets, repeated occurrences, site pins and covering weights at the growing scale $B=\lceil(\log x)^2\rceil$. The entropy factor $4(2B+1)^4$ is sufficient because it grows only polynomially in $\log x$.

The gain scale is $P(\beta_F)^2=e^{2(\log\log\beta_F)^2}$. It absorbs $\mathrm{bill}^dP(\beta_F)^z$ for fixed $d$ and $z<2$, but grows more slowly than every positive power of $\beta_F$. The deletion route gives support-indexed logarithm coefficients and a common field-independent envelope; the graph route also gives occurrence tails and multiset bounds. Both give deletion ratios uniform in volume, although the full logarithm is extensive.

The sector estimate needs global seed records to preserve the local point-charge prerequisites under lattice orientations. Its remainder $\ell_A$ has no volume-uniform bound here. For the Gaussian estimates, the substantive inputs are the gauge-fixed Poincaré inequality and control of the transported flat rows away from the flagged region. Finite range grows with $B$; uniform exponential row bounds provide the useful control.

<a id="unit-notation"></a>

## 6. Notation

- **Written proof:** $\mathrm{SB}(f;C)$

  **Lean:** [`SumBudget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L59-L60)

  **Meaning:** $f\ge0$ summable, $\sum f\le C$

- **Written proof:** $\mathrm{Hit}_B(w;a,\gamma)$

  **Lean:** [`Ac.Hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13)

  **Meaning:** site-sum condition

- **Written proof:** $\mathrm{cov}_B$, $\mathrm{ball}_B$

  **Lean:** [`coverNumber`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L69-L71), [`ballCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Animals.lean#L148)

  **Meaning:** connected covering number; $(2B+1)^4$

- **Written proof:** $\mathrm{Ready}(w;a,\gamma,\delta,q)$

  **Lean:** [`Trees.Ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Forest.lean#L31-L32), [`degreePrice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Weigh.lean#L52)

  **Meaning:** smallness of the cluster expansion

- **Written proof:** $R\subseteq$ overlap

  **Lean:** [`Ursell.Tests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L59), [`blocked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Ursell.lean#L22)

  **Meaning:** incompatibility implies overlap; the overlap relation

- **Written proof:** $G_R(z)$, $\phi^T_R(z)$

  **Lean:** [`Ursell.pot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Ursell.lean#L32-L33), [`Ursell.coefficient`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Ursell.lean#L35)

  **Meaning:** incompatibility graph of a tuple; Ursell coefficient

- **Written proof:** $\Xi(w)$; cluster term; log series

  **Lean:** [`Gas.total`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L22), [`Gas.term`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L24), [`Gas.logSum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L26)

  **Meaning:** gas, its cluster terms and their sum

- **Written proof:** $g_n$, $\ell_m$

  **Lean:** [`Coef.gasRow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L19), [`Coef.logRow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L20)

  **Meaning:** coefficients of $\Xi$ and of the log series

- **Written proof:** $w^Y$, $p$

  **Lean:** [`Gas.cut`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L24), [`Gas.missing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L25)

  **Meaning:** weights off $Y$; clusters meeting $Y$

- **Written proof:** multisets, $\prod w^{n}/n!$

  **Lean:** [`Multiple.Reps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L26), [`manyW`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L28-L29)

  **Meaning:** labels with multiplicities

- **Written proof:** packet $A$, number of seeds, $D_r(A)$

  **Lean:** [`Stores`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L34-L37), [`shares`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L46), [`dome`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L44)

  **Meaning:** finite set of typed seeds; radius-$r$ neighbourhood of their locations

- **Written proof:** connected packet, $K_{\rm hit}$, $K_{\rm step}$, $\tau_L$

  **Lean:** [`Packets.connected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L77), [`hitCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L215), [`stepCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L216), [`typesAt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L181)

  **Meaning:** animal-counting constants

- **Written proof:** $\rho$, packet tail

  **Lean:** [`ratioCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L28-L29), [`fit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L34-L35), [`totalCharge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L37-L38)

  **Meaning:** per-seed ratio; tail of packet sums

- **Written proof:** hypotheses of III.5.7(b)

  **Lean:** [`Mixed.Costs.Buy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L47-L58), [`Mixed.Accounts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L84-L89)

  **Meaning:** numerical list; weight bounds

- **Written proof:** $B$, $\beta_F$, $t$, $P$

  **Lean:** [`radiusB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22), [`betaF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23), [`fiery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L26), [`Vac.Numbers.P`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L72)

  **Meaning:** $\lceil(\log x)^2\rceil$; $x+b\log L$; $\beta_F^{-1/2}P(\beta_F)$; $e^{(\log\log s)^2}$

- **Written proof:** $M$, gain $\beta\mu t^2$

  **Lean:** `hatWin`, [`Grant.credit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Grants.lean#L48)

  **Meaning:** guaranteed and actual gain per seed

- **Written proof:** $Z(B)$, $\lambda(A)$

  **Lean:** [`fumes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L122), [`locker`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L46), [`pieces`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Sprig.lean#L23-L28)

  **Meaning:** disjoint-family gas; Möbius pieces of $-\log Z$

- **Written proof:** $f*g$, $\hat f$, $\Vert f\Vert_w$, $\lambda(f)$

  **Lean:** [`glue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L36), [`shed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L38), [`crop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L40), [`lamp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L161)

  **Meaning:** union convolution, cumulative sum, weighted norm, log series

- **Written proof:** hypotheses of III.5.9

  **Lean:** [`Rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L45-L47), [`Deletion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L31-L34), [`Receipt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L39-L43), [`Sufficient`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L168-L173), [`Fund`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L43-L49), [`Tags`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L72-L77)

  **Meaning:** weight, deletion identity, site conditions, coefficient properties

- **Written proof:** allocation $D$; point charge

  **Lean:** [`Allocation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L30-L36), [`PointCharge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L29-L32)

  **Meaning:** partition of unity over packets; $\mathcal E_A\ge\kappa t^2$ per seed

- **Written proof:** $\mathcal E_A$; $c_A$; $\ell_A$; $\pi_\beta e^{-\beta\kappa t^2 k}$

  **Lean:** [`assessed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L85), [`cutEntry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L145-L148), [`leftOver`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L140-L143), [`earn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Grant.lean#L28-L29)

  **Meaning:** sector energy; sector output; remainder; gain

- **Written proof:** weighted Schur classes; $M\ge r$

  **Lean:** [`Green.Rows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L26-L27), [`Green.Both`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L29-L30), [`Green.Bottom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L32-L33)

  **Meaning:** row/column sums at rate $\eta$; lower bound

- **Written proof:** windows, $\mathrm{within}$, $E$, $\mathrm{cov}$, $\Pi_U$

  **Lean:** [`Win.Windows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L28-L30), [`within`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L36-L37), [`error`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L39), [`cov`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L73), [`planePrice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Schur.lean#L69-L70)

  **Meaning:** localized inverse and covariance

- **Written proof:** uniform matrix data; window constants

  **Lean:** [`Win.Promise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L22-L30), [`Turns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L71-L83), [`Turns.Takes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L91-L101)

  **Meaning:** (mass, bottom, rate, counting); bounds of III.5.13(b)

- **Written proof:** $D$, $\mathrm{gram}$

  **Lean:** [`Aff.Dmat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Affine.lean#L125-L127), [`Aff.gram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Affine.lean#L145-L147)

  **Meaning:** transported flat row matrix; completed precision matrix

- **Written proof:** transported flat derivative

  **Lean:** [`Aff.derivative`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Affine.lean#L116-L118)

  **Meaning:** row operator used to define $D$

- **Written proof:** auxiliary Gaussian assumptions

  **Lean:** [`Aff.Reserve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Veil.lean#L34-L39), [`Aff.Alongside`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Station.lean#L71-L78), [`Aff.cert`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Odometer.lean#L23-L24)

  **Meaning:** reserve bounds; compatible quadratic forms; volume and flag tests

- **Written proof:** $H_{n,p}$; comparison field $v$

  **Lean:** [`Rates.allowance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Rate.lean#L27), [`Aff.unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Through.lean#L29-L30)

  **Meaning:** $B^pt^n$; active stationary extension minus replica extension, transported back by the local gauge


<a id="unit-limitations"></a>

## 7. What remains unexplained
1. **Imported analytic inputs.** The step-estimator’s energy grant in III.10 and the Poincaré inequality in III.6 are used as stated. Their proofs, the full per-bond spectral comparison and the origin of the run’s committed-scale energy hypothesis have not been audited here.
2. **Later applications.** The dependency database identifies consumers in the units listed above. Their verification of the site-sum, per-packet and multiset hypotheses remains outside this unit’s audit. In particular, the bounds here do not construct renormalization outputs or bound the sector remainders uniformly in volume.
3. **Unread supporting proofs.** The breadth-first construction, the distinct-label forest count, the spanning-walk construction for animals and the integration of allocations restricted to sectors were used through their statements. In the auxiliary Gaussian chain, the statements and the displayed estimates of Lemma 4.36 were checked; its supporting local chart and quadratic-form comparison lemmas were not audited throughout. These remain proof inputs, rather than additional conclusions of the present sketches.
4. **Flag locality.** In III.5.9(b), locality on $P$ applies to the raw coefficients. Their masked versions also inspect flags on $P$; those flags can depend on plaquettes extending outside $P$. A written proof must retain this flag dependence or enlarge the physical support before claiming ordinary link locality for the masked coefficients.
5. **Verification scope.** This is a source correspondence check. No Lean build, axiom computation or rendered-page check was run.

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md), [III.1](III-1.md), [III.10](III-10.md), [II.2](II-2.md), [III.16](III-16.md), [III.6](III-6.md).

**Referenced by:** [III.10](III-10.md), [III.13](III-13.md), [III.4](III-4.md), [III.11](III-11.md), [III.12](III-12.md), [III.2](III-2.md), [III.15](III-15.md), [VII.1](VII-1.md), [III.14](III-14.md), [III.9](III-9.md).

## Lean source

**Source allocation:** 9,746 attributed lines; 1,097 line-counted declarations; 1,408 assigned declaration names. Of the assigned names, 1,340 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- work package [`YM/Push/ABSOLUTE_SUMS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS) — 3,624 lines.
- work package [`YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS) — 3,589 lines.
- work package [`YM/Push/SECTOR_MEASURE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE) — 1,153 lines.
- work package [`YM/SectorNext/VACUUM_NORMALIZATION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION) — 935 lines.
- work package [`YM/Progress/STATIONARY_SCENES/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES) — 445 lines.

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-iii-5-1"></a>

- **K-III.5.1** [`canonical`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L95-L101) *(numbered result)* — A canonical choice of sector-cost allocation profile.

<a id="k-iii-5-2"></a>

- **K-III.5.2** [`budget_count_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Basic.lean#L143-L163) *(numbered result)* — If the number of live labels of degree k grows like A B^k and weights decay like C r^k with B r<1, then tails of the sum are geometrically bounded.

<a id="k-iii-5-3"></a>

- **K-III.5.3** [`inverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L188-L251) *(key result)* — A Hermitian matrix with a spectral gap and off-diagonal exponential decay has an inverse with pointwise exponential decay, uniformly in a spectral parameter.

<a id="k-iii-5-4"></a>

- **K-III.5.4** [`window_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L146-L169) *(numbered result)* — For a Hermitian matrix with a bottom eigenvalue bound and off-diagonal decay, the layered price estimates hold within one window system with small error.

<a id="k-iii-5-5"></a>

- **K-III.5.5** [`Buy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L47-L58) *(numbered result)* — A named sufficient condition on a cost function for charging a connected result pointwise.

<a id="k-iii-5-6"></a>

- **K-III.5.6** [`partition`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Partition.lean#L219-L237) *(key result)* — The total mass of a hard-core potential decomposes by splitting off the connected component of a chosen position, as the component coefficient times the mass of the complement.

<a id="k-iii-5-7"></a>

- **K-III.5.7** [`recurrence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L129-L138) *(numbered result)* — The gas coefficients and log coefficients satisfy the standard recurrence (m+1)g_{m+1}=Σ(k+1)l_k g_{m-k}.

<a id="k-iii-5-8"></a>

- **K-III.5.8** [`exact_polynomial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L66-L145) *(key result)* — If the log series coefficients decay geometrically, the exponential of the full log series equals the finite polynomial sum of values over subsets.

<a id="k-iii-5-9"></a>

- **K-III.5.9** [`pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Graph.lean#L113-L148) *(key result)* — The absolute value of the Ursell (overlap graph) mass is bounded by the number of tree-compatible assignments.

<a id="k-iii-5-10"></a>

- **K-III.5.10** [`substochastic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Parent.lean#L44-L126) *(numbered result)* — For a ranked parent function and a substochastic kernel, the sum over all label assignments of the product of kernel entries along the forest is at most 1.

<a id="k-iii-5-11"></a>

- **K-III.5.11** [`trees_afford`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Weigh.lean#L192-L228) *(numbered result)* — The sum over forests of size m and label choices in a finite set is bounded by a currency factor times a degree price to the power m.

<a id="k-iii-5-12"></a>

- **K-III.5.12** [`estimates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L135-L169) *(key result)* — Sums over unordered repeated-label multisets with connected footprint have an exponential-tail budget bounded by a geometric factor.

<a id="k-iii-5-13"></a>

- **K-III.5.13** [`cluster_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L148-L183) *(key result)* — Ursell cluster sums over tuples containing a marked occurrence satisfy an absolute summability bound geometric in the tuple length.

<a id="k-iii-5-14"></a>

- **K-III.5.14** [`restore`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Omissions.lean#L48-L100) *(key result)* — After merging, a weighted hit bound with geometric tail holds for every required copy-cut, combining exponential recovery with seed and degree costs.

<a id="k-iii-5-15"></a>

- **K-III.5.15** [`price_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Log.lean#L114-L149) *(key result)* — On hard overlap graphs, absolute-bound hypotheses give absolute convergence of both the value and term series, with exp(log-sum) equal to the positive total and its log equal to the log-sum.

<a id="k-iii-5-16"></a>

- **K-III.5.16** [`restores_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L69-L95) *(key result)* — Ratio estimate for a polymer gas with a deleted set of labels, expressed via the logarithm with sign retained and an upper bound with absorption cost.

<a id="k-iii-5-17"></a>

- **K-III.5.17** [`fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L165-L214) *(numbered result)* — For large parameter x, tree-vertex price constants fit the required inequalities for all per-packet combinatorial tests uniformly.

<a id="k-iii-5-18"></a>

- **K-III.5.18** [`quoted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Buy.lean#L67-L103) *(numbered result)* — For large parameter values, explicit numeric conditions on constants suffice to satisfy the hypotheses for the packet estimates.

<a id="k-iii-5-19"></a>

- **K-III.5.19** [`packet_income`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L66-L105) *(numbered result)* — Weights bounded by a per-seed income yield a summability budget for packet sums with an explicit total charge.

<a id="k-iii-5-20"></a>

- **K-III.5.20** [`bundle_hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Path.lean#L182-L201) *(numbered result)* — Winding path bundles with complete path coefficients satisfy a hit bound at common anchors with a tail decaying in true length.

<a id="k-iii-5-21"></a>

- **K-III.5.21** [`Allocation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L30-L36) *(numbered result)* — A partition of unity subordinate to seed prerequisites, as a data structure.

<a id="k-iii-5-22"></a>

- **K-III.5.22** [`plots_column`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Decompose.lean#L120-L126) *(numbered result)* — The sum over sectors of integrals restricted to each sector's own plots equals the column integral.

<a id="k-iii-5-23"></a>

- **K-III.5.23** [`tap_open`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Draught.lean#L92-L114) *(numbered result)* — For large x, the minimizing choice on a patch satisfies uniform opening bounds.

<a id="k-iii-5-24"></a>

- **K-III.5.24** [`escape`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Station.lean#L222-L241) *(numbered result)* — The tree tangent hits every orientation channel on the one field simultaneously.

<a id="k-iii-5-25"></a>

- **K-III.5.25** [`shelf`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L144-L163) — For disjoint-family sums with summable weights, the negative-log piece satisfies the deletion property.

<a id="k-iii-5-26"></a>

- **K-III.5.26** [`swept`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L224-L233) *(key result)* — Under a receipt condition, the re-log of any signed activity dominated by the envelope satisfies an absolute budget applied against the envelope's ceiling.

<a id="k-iii-5-27"></a>

- **K-III.5.27** [`catalog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L217-L228) *(key result)* — For countably addressed signed integrated coefficients, the log is exactly defined and obeys an absolute budget with a common envelope.

<a id="k-iii-5-28"></a>

- **K-III.5.28** [`omitted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L235-L271) *(numbered result)* — Deleting arbitrary sites after re-log gives a common ratio multiplying a forced family, with controlled sign of the omitted log contribution.

<a id="k-iii-5-29"></a>

- **K-III.5.29** [`intake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L157-L183) *(key result)* — Integrated gas coefficients admit absolute support price bounds with a common envelope for all configurations, without global small l¹ hypothesis.

<a id="k-iii-5-30"></a>

- **K-III.5.30** [`turn_charge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L267-L297) *(numbered result)* — Sector payment inequality extends to the orientation-averaged cut rows with a multiplicative earn constant.

<a id="k-iii-5-31"></a>

- **K-III.5.31** [`portionCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L157-L210) *(key result)* — For a lawful representation with a point charge and funds, every forest and allocation satisfies the portion cost estimate.

<a id="k-iii-5-32"></a>

- **K-III.5.32** [`bought`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Consumer.lean#L42-L65) *(key result)* — At any committed height pair, a single positive constant κ works uniformly across inputs for the sector-measure consumer estimate.

<a id="k-iii-5-33"></a>

- **K-III.5.33** [`charged_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Grant.lean#L61-L66) *(numbered result)* — A pointwise inequality on sector points implies the sector charge condition.

<a id="k-iii-5-34"></a>

- **K-III.5.34** [`pre_center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Through.lean#L70-L122) *(numbered result)* — A framed patch over the actual field predicts remote no-hole behaviour from curved precision before derivative tests.

<a id="k-iii-5-35"></a>

- **K-III.5.35** [`unfrozen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Odometer.lean#L130-L163) *(numbered result)* — The predicted affine energy bounds the local row estimate even for arbitrary formal fields away from frozen regions.

<a id="k-iii-5-36"></a>

- **K-III.5.36** [`perturb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/DCompare.lean#L190-L207) *(key result)* — The affine matrix D changes by a controlled amount under local perturbations satisfying a stencil bound, with cost polynomial in the stencil.

<a id="k-iii-5-37"></a>

- **K-III.5.37** [`arc_bill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Ground.lean#L51-L130) *(numbered result)* — On a real weak patch, the affine approximation error of the local rows is bounded uniformly pointwise in sector.

<a id="k-iii-5-38"></a>

- **K-III.5.38** [`guard_δ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Breath.lean#L83-L132) *(numbered result)* — Given a displacement size δ along the central chart, one can choose ε so that trigger disappearance is guaranteed on the same read.

<a id="k-iii-5-39"></a>

- **K-III.5.39** [`bedrock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L142-L158) *(key result)* — For large x, the Gram matrix of the step is served by a fixed window promise uniformly over all admissible step data.

<a id="k-iii-5-40"></a>

- **K-III.5.40** [`night`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Hour.lean#L55-L116) *(key result)* — For a funded patch with a reserve and wedge conditions, there is ε>0 such that for large scale the plateau tests (Keys) hold.

<a id="k-iii-5-41"></a>

- **K-III.5.41** [`gram_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/IndexCost.lean#L165-L181) *(key result)* — There is a uniform constant such that the Gram cost of the counted array is bounded across all admissible step data.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

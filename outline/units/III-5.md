# III.5. Cluster expansion of the polymer gas

*Part III — Ultraviolet construction (renormalization group).* 9,746 lines of Lean in 1,097 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is **checked** against the Lean and rewritten by a second model; a final editing round is in progress. It is updated as it improves.


**Part:** III, Ultraviolet construction (renormalization group). **Lean:** work packages [`YM/Push/ABSOLUTE_SUMS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS) (3,624 lines), [`YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS) (3,589), [`YM/Push/SECTOR_MEASURE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE) (1,153), [`YM/SectorNext/VACUUM_NORMALIZATION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION) (935), [`YM/Progress/STATIONARY_SCENES/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES) (445). **Size:** 9,746 lines in 1,097 declarations used by the main theorem.

**Conventions.**
- $\Lambda_n=(\mathbb Z/n\mathbb Z)^4$ is the periodic lattice with the maximum distance $d$. A *support* is a subset of $\Lambda_n$.
- $\mathrm{cov}_B(X)$ is the least number of $d$-balls of radius $B$ whose union is connected and covers $X$ ([`coverNumber`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L69-L71)). Two properties are used throughout (I.1):
  - $|X|\le \mathrm{ball}_B\,\mathrm{cov}_B(X)$, with $\mathrm{ball}_B=(2B+1)^4$;
  - $\mathrm{cov}_B$ is subadditive on unions of overlapping sets.
- A family of supports is *connected* if its overlap graph is connected.
- For $f\ge0$ on an arbitrary index set, $\mathrm{SB}(f;C)$ means: $f$ is summable and $\sum f\le C$ ([`SumBudget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L59-L60)).
- For polymers $(X_i,w_i)_{i\in\iota}$ with $w\ge0$, the *site-sum condition* $\mathrm{Hit}_B(w;a,\gamma)$ means $\mathrm{SB}\big(i\mapsto \mathbf 1[x\in X_i]\,w_i\,e^{a\,\mathrm{cov}_B(X_i)};\gamma\big)$ for every site $x$ ([`Ac.Hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13), II.2).
- The Lean words "price", "budget", "receipt", "income", "buy" and "currency" all name inequalities of this kind.
- All weights are real. The unit claims no complex or analytic version.

## 1. What this unit proves

The unit consists of five packages.

- **(A) `ABSOLUTE_SUMS`.**
  - The Mayer expansion of a hard-core polymer gas, with absolute bounds, and its re-exponentiation after forced polymers (III.5.1–III.5.6).
  - The verification of the smallness condition for gases of large-field seeds of a block-spin step (III.5.7–III.5.8).
- **(B) `VACUUM_NORMALIZATION`.** A second, graph-free construction of the logarithm by deletion identities (III.5.9), and a trace-log formula (III.5.10).
- **(C) `SECTOR_MEASURE`.** The decomposition of one block-spin integral into sectors labelled by packets of seeds, with a Gaussian gain per seed (III.5.11).
- **(D) `STATIONARY_SCENES`.** A Combes–Thomas bound (III.5.12).
- **(E) `CONNECTED_ACTIVITY_BOUNDS`.** Windowed inverses (III.5.13), and a uniform gap and uniform decay for the precision matrix of the small-field Gaussian of a step (III.5.14).

III.5.1–III.5.7, III.5.9, III.5.10, III.5.12 and III.5.13 are general implications. III.5.8(c), III.5.11 and III.5.14 concern the actual step. They assume the step hypotheses $\mathrm{Funds}$ and $\mathrm{Branches}$ of III.1.

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

Then, for every site $x$ and every $m\ge0$:
- (a) $\displaystyle\sum_{m'\ge m}\ \sum_{z\in\iota^{m'+1}:\ x\in X(z)}\frac{|\phi^T_R(z)|}{(m'+1)!}\prod_a w_{z_a}\ e^{a\,\mathrm{cov}_B(X(z))}\ \le\ \frac{\gamma\,q^m}{1-q}$.
- (b) The same bound holds for $\sum_s\prod_{i\in s}w_i\,e^{a\,\mathrm{cov}_B(X_i)}$. The sum runs over finite sets $s\subseteq\iota$ with $|s|\ge m+1$ whose supports form a connected family containing $x$.
- (c) (Marked form.) Suppose $Q\subseteq\iota$ and $\sum_{i\in Q}w_ie^{(a+\delta)\mathrm{cov}_B(X_i)}\le b$. Then the sum over $z\in\iota^{m+1}$ with some $z_a\in Q$ of $|\phi^T_R(z)|\prod_aw_{z_a}e^{a\,\mathrm{cov}_B(X_{z_a})}/(m+1)!$ is at most $bq^m$.

All sums converge absolutely: they are $\mathrm{SB}$ statements.
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

**Proposition III.5.6 (re-exponentiation with forced polymers).**
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

Summed over all such $s$, the quantity
$$e^{A\,\mathrm{cov}_B(\bigcup_{\alpha\in s}\mathrm{supp}\,\alpha)}\ \prod_{\alpha\in s}\frac{\mathrm{wt}(\alpha)^{n_\alpha}}{n_\alpha!}$$
is at most $t^{-m}e^{-\mu}\,\eta/(1-q')$.

*Status:* theorem. The general form, with an arbitrary selection predicate, is [`Multiple.estimates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L135-L169). Used in III.2, III.10, III.11 and III.13.
*Lean:* [`OmitClusters.restore`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Omissions.lean#L48-L100).

**Proposition III.5.7 (gases of seed packets).**

*Setting.* Let $S$ be a block-spin step (III.1) from $\Lambda_f$ to $\Lambda_c$ with block side $L$, and let $l,B\in\mathbb N$.
- A *seed* is a fine cell, a coarse bond or a coarse site. Its location is a set of coarse sites within distance 1 of an anchor.
- A *packet* $A$ ([`Stores`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L34-L37)) is a finite set of seeds; $|A|$ is its number of seeds.
- The *skins* of $A$ are the $lB$-neighbourhoods of the locations of its seeds; $D(A)$, the *dome*, is their union. $A$ is *connected* if its skins form a connected family.
- Put
$$\tau_L=L^4\,\sharp \{\text{plaquette orientations}\}+5,\qquad K_{\rm hit}=(2lB+3)^4\,\tau_L,\qquad K_{\rm step}=(4lB+5)^4\,\tau_L .$$

**(a) Packet sums.** Assume $a\ge0$, $0\le p_A\le C\,e^{(s-g)|A|}$ for every connected $A$, and $\rho:=K_{\rm step}^2\,e^{\,s-g+a(2l+3)^4}\le q<1$. Then for every coarse site $x$ and every $m\ge0$,
$$\sum_{A\ \mathrm{connected},\ x\in D(A),\ |A|\ge m}p_A\,e^{a\,\mathrm{cov}_B(D(A))}\ \le\ K_{\rm hit}\,C\,\frac{q^{\max(1,m)}}{1-q}.$$
The same bound holds for countable families of variants of packets, each supported in the dome of its packet, whose weights summed over the variants of one packet satisfy the hypothesis.

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
$$\sum_s\ \prod_{\alpha\in s}\mathrm{wt}(\alpha)\,\big(1+\mathrm{ch}(s)\big)^k\,e^{a\,\mathrm{cov}_B(D(s))}\ \le\ \frac{k!\,e^{\varepsilon}}{\varepsilon^{k}}\;e^{-\varepsilon T-\mu_s r}\;\frac{\gamma_{\rm root}\,q^m}{1-q},$$
the sum over connected $s$ with $x\in D(s)$, $|s|\ge m+1$, at least $r$ seeds in total, and $\mathrm{ch}(s)\ge T$. Packets that are not connected have weight $0$.

*Status:* theorem. The hypotheses of (b) are the records [`Mixed.Costs.Buy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L47-L58) and [`Mixed.Accounts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L84-L89). (b) is used in III.2 and III.10–III.13.
*Lean:* [`Packets.packet_income`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L66-L105), [`Packets.packet_variants_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L124-L175), [`Mixed.mixed_hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L153-L189), [`Mixed.ready_vertices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L95-L122).

**Proposition III.5.8 (the numerical conditions hold at large coupling).**

*Notation.* Fix the gauge group, the block side $L$ and $l$. For the coarse coupling $x$ put:
- $\beta_F=x+b\log L$, with $b$ a constant of the group;
- $B=\lceil(\log x)^2\rceil$;
- $P(s)=e^{(\log\log s)^2}$;
- $t=\beta_F^{-1/2}P(\beta_F)$, the small-field threshold;
- $\mathrm{bill}(x)=1+B+(\log\beta_F)^2$;
- for $\mu,u>0$, $M=\mu u\,P(\beta_F)^2$.

**(a)** Let $a,D\ge0$, $d\in\mathbb N$ and $z<2$. For all sufficiently large $x$ the following holds. Whenever $s\le D\,\mathrm{bill}^d P(\beta_F)^z$, $g\ge M$ and $0\le C\le \exp(D\,\mathrm{bill}^dP(\beta_F)^z)$:
- the condition of III.5.7(a) holds with $q=e^{-M/2}$;
- $K_{\rm hit}Cq^{\max(1,m)}/(1-q)\le e^{-M\max(1,m)/4}$ for every $m$.

If $\beta\ge u\beta_F$, then $\beta\mu t^2\ge M$.

**(b)** Let in addition $\varepsilon,\delta>0$. For all large $x$, all $\beta\ge u\beta_F$, and all $C,e_s,s,\gamma_{\rm opt}$ with
$$C\le e^{\rm fee},\qquad s+2\varepsilon e_s\le{\rm fee}:=D\,\mathrm{bill}^dP(\beta_F)^z,\qquad 0\le\gamma_{\rm opt}\le\delta/(16\,\mathrm{ball}_B),$$
the hypotheses of III.5.7(b) hold with:
- gain $g=\beta\mu t^2$;
- mark $\mu_s=\mu uP(\beta_F)^2/2$ (half of the guaranteed gain is extracted per seed);
- $q=1/2$;
- $\gamma_{\rm root}=e^{-\mu uP(\beta_F)^2/8}+\gamma_{\rm opt}$.

**(c)** For a Teller $P$ (III.1) there is $n$ such that for every $L\ge n$ and every large $W$ there is $\mu>0$ with the following property. For large $x$, every step with block side $L$, coarse side $\ge100(1+B)$ and $\mathrm{Funds}$ gains energy at least $\mu t^2$ per seed on each sector, and (a) holds with $g=\beta\mu t^2$.

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
- *Data.* Let $E_i(V)$ ($i\in\iota$) be functions of the gauge field on $\Lambda_n$. Each is local in $X_i$, gauge invariant and Borel, with $|E_i(V)|\le v_i$ whenever no site of $X_i$ is flagged. Let $\tilde E_i$ be $E_i$ set to $0$ when $X_i$ contains a flagged site.
- *Hypotheses.* $A\ge0$, $a(2M+1)^4\le1$, $\delta\le1-e^{-a}$, and $\sum_{i:\,x\in X_i}e^{(A+1)\mathrm{cov}_M(X_i)}v_i\le\delta$ for every $x$.
- *Claim.* The gas $Z_V$ of $\tilde E(V)$ satisfies, for every $V$ and every $Q$:
  - $Z_V(Q)>0$ and $Z_V(Q)=\exp\big(-\sum_{P\subseteq Q}\lambda_P(V)\big)$;
  - $|\lambda_P(V)|\le g(P)$, with $g$ independent of $V$, and $\sum_{P\ni x}e^{A\,\mathrm{cov}_M(P)}g(P)\le a$;
  - $Z_V(\Lambda_n\setminus Q)=Z_V(\Lambda_n)e^{l}$ with $|l|\le a|Q|$;
  - each $\lambda_P$ is local in $P$, gauge invariant and Borel, and vanishes if $P$ contains a flagged site.

*Status:* theorem. (b) is used in III.11.
*Lean:* [`ReLog.catalog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L217-L228), [`ReLog.omitted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L235-L271), [`ReLog.swept`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L224-L233), [`ReLog.intake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L157-L183), [`ReLog.retest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L99-L101), [`ReLog.retain_mask`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L118-L143).

**Proposition III.5.10 (trace-log of a near-identity product).** Let $A$ be positive definite and $C$ symmetric (real matrices), and $S=AC-1$ with $\max_i\sum_j|S_{ij}|\le q<1$. Then:
- $\det C>0$ and $\det(1+S)>0$;
- $\sum_{n\ge1}\frac{(-1)^{n+1}}{n}\,\mathrm{tr}\,S^n$ converges absolutely, and its sum is $\log\det(1+S)$.

*Status:* theorem. Used in III.4.
*Lean:* [`Round.exact_trace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Round.lean#L149-L155), [`Round.twin_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Round.lean#L95-L144).

**Proposition III.5.11 (sector decomposition of a block-spin step; gain per seed).**

*Setting.* Fix a step $S$ with block side $L$, a Teller $P$, a tube $T$ with $\mathrm{Funds}(S,T)$ (III.1), a coarse coupling $x$ with threshold $t$, and constants $W,\kappa>0$.

*Sector of a packet.* Say $(U,k,V)$ lies in the sector of $A$ when, in the $5B$-neighbourhood of $D(A)$:
- the plaquette variables of the cells of $A$ are $\ge t/4$, and those of other cells are $\le t/2$;
- the predicted wires of the bonds of $A$ are $\ge Wt$, and those of other bonds are $\le 2Wt$;
- the flagged sites are exactly those of $A$;
- the frame is admissible.

*Point charge.* For every tree-gauge forest $F$, every fine field $U$ equal to $1$ on the trunks of $F$, every frame tag $k$, every coarse field $V$ and every packet $A$ such that $(U,k,V)$ lies in the sector of $A$:
$$\mathcal E_A(U,V)\ \ge\ \kappa\,t^2\,|A| .$$
Here $\mathcal E_A$ is the *assessed energy* of $A$: a sum of local action terms over the cells and bonds of the $2B$-neighbourhood of $D(A)$ (III.1).

*Claim.* Let $R$ be a lawful representation of the fine density (III.1) adapted to $T$: its path data and clip are those of the upper stage of $T$, and its threshold is $t$. Let its coupling satisfy $\beta\ge0$. Let $F$ be any forest and $D=(D_A)_A$ any allocation, i.e. a Borel partition of unity over packets with $D_A$ supported in the sector of $A$. Then for every coarse field $V$
$$(\mathrm{push}_\beta\,\rho_R)(V)=\sum_A c_A(V),\qquad |c_A(V)|\ \le\ \pi_\beta\;e^{-\beta\kappa t^2|A|}\;\ell_A(V),$$
where:
- $c_A$ is the $A$-th sector output;
- $\pi_\beta$ is the normalization of the block-spin kernel, one factor per coarse bond (probable);
- $\ell_A(V)$ is the same sector integral with the energy of $A$ removed and absolute values inside;
- $c_A$ and $\ell_A$ are bounded Borel functions.

*Uniformity.*
- At a committed pair of scales of the run, a single $\kappa>0$ serves all volumes, all steps of that pair, and all lawful representations produced by the run whose coupling lies in the admissible band.
- For a Teller, the point charge holds for large $L$, large $W$ and large $x$, with some $\kappa>0$.

*Status:* theorem, conditional on $\mathrm{Funds}$ and the point charge. The point charge is discharged in two ways:
- in general, from the Teller's energy grant (III.10);
- at committed scales, from the hypothesis `Ringing` of the run, through [`notation_ticket`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L166-L181) (III.1).

Used in III.4 and III.10.
*Lean:* [`Presented.portionCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L157-L210) (conclusion [`PortionCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L151-L155)), [`Consumer.bought`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Consumer.lean#L42-L65), [`points_grant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L37-L51); definitions [`PointCharge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L29-L32), [`earn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Grant.lean#L28-L29), [`Allocation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L30-L36).

**Proposition III.5.12 (Combes–Thomas bound).** Let $M$ be a real symmetric matrix on a finite index set, with positions $a_i\in\Lambda_n$. Assume $M\ge r>0$, $\eta\ge0$, and
$$\sup_i\sum_je^{\eta d(a_i,a_j)}|M_{ij}|\le C,\qquad \sup_j\sum_ie^{\eta d(a_i,a_j)}|M_{ij}|\le C .$$
If $0\le\theta\le1$ and $\theta C\le r/2$, then for every $u\ge0$ the matrix $M+u$ is invertible and
$$e^{\theta\eta\,d(a_i,a_j)}\,\big|(M+u)^{-1}_{ij}\big|\le\big(\min(1,r/2)\,(1+u)\big)^{-1}\quad\text{for all }i,j .$$
The hypotheses pass to principal submatrices.
*Status:* theorem.
*Lean:* [`Green.inverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L188-L251), [`Green.Bottom.restrict`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L93-L113), [`Green.Rows.restrict`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L78-L88).

**Proposition III.5.13 (windowed inverses).**

*Setting.*
- Positions $d_j\in\Lambda_n$ with $\sharp \{j:d(y,d_j)\le\rho\}\le U(1+\rho)^4$ for all $y$ and $\rho$.
- $A,r,C,\eta,\theta$ as in III.5.12, with $\eta,\theta>0$; and $0\le\mu<\nu<\theta\eta$.
- Windows $P(j)\ni j$ such that $d(d_i,d_j)\le R\Rightarrow i\in P(j)$.

*Objects.*
- $\mathrm{within}(A)_{ij}=\big((A|_{P(j)})^{-1}\big)_{ij}$ for $i\in P(j)$, and $0$ otherwise.
- $E=A\,\mathrm{within}(A)-1$ and $\mathrm{cov}=\tfrac12(\mathrm{within}+\mathrm{within}^T)$.
- $\Pi_U(\eta)=U\,4!\,(2/\eta)^4\,e^{\eta/2}/(1-e^{-\eta/2})$, $Y=\Pi_U(\theta\eta-\nu)/\min(1,r/2)$, and $s=e^{-(\nu-\mu)R}(CY+1)$.

**(a)** Weighted row and column sums at rate $\mu$ satisfy:
- $A^{-1}$ and $\mathrm{within}(A)$: at most $Y$;
- $E$: at most $s$;
- $\mathrm{within}(A)-A^{-1}$: at most $Ys$.

If $\mathrm{within}-A^{-1}$ is bounded by $s'$ at rate $\nu$, then $\mathrm{cov}-A^{-1}$ and $A\,\mathrm{cov}-1$ are bounded by $s'$ and $Cs'$. If moreover $s'\le 1/(2C)$, then $\mathrm{cov}\ge1/(2C)$ and $\mathrm{cov}^{-1}\ge Y^{-1}$.

**(b)** Given bounds (mass, bottom, rate $\alpha$, counting constant), there are constants $e\le\alpha$, $K$, $c$, $c_1$, $c_2>0$ with the following property. For all large $R$, every matrix obeying these bounds, and windows with room $R$, the bounds of (a) hold with:
- rate $e$;
- constant $K$;
- error $Ke^{-cR}<1$;

uniformly along $tA+(1-t)$ for $t\in[0,1]$, together with $\mathrm{cov}\ge c_1$ and $\mathrm{cov}^{-1}\ge c_2$.

*Status:* theorem.
*Lean:* [`Win.Windows.window_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L146-L169), [`covariance_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L171-L188), [`covariance_floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L191-L202), [`Win.Promise.receive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L106-L178).

**Proposition III.5.14 (precision matrix of the small-field Gaussian of a step).**

*Setting.* Fix a Teller $P$ and a patch $\mathcal D$ (block side $L$, order $J$) satisfying $\mathrm{Branches}$. For a step with patch $\mathcal D$, tube $T$, coupling $x$, forest $F$, packet $A$ and coarse field $V$, let $D$ be the derivative, at the background $V$, of the step's cut rows. Precisely:
- *Rows.* The plaquette-curl and truncated path-sum rows of the upper stage, and the linearized block-constraint rows.
- *Transport.* Each row is transported to its centre along fixed paths.
- *Restriction.* Rows centred outside the $8B$-neighbourhood of $D(A)$; columns the *active* fine bonds (not in a trunk of $F$, with endpoints outside the $10B$-neighbourhood).
- *Coordinates.* Lie-algebra coordinates.

Let $\mathrm{gram}=D^TD+\mathrm{diag}(\mathbf 1_{\rm inactive})$, with positions the coarse parents of the bonds.

*Claim.* There are constants $r>0$, $K$, $U$ and $\alpha$, with $\alpha$ half the decay rate of the upper path data, such that the following holds for all large $x$. For every step with patch $\mathcal D$ and $\mathrm{Funds}$, coarse side $\ge100(1+B)$, every $F$, and every $A,V$ for which the flags of $A$ are the flagged sites of $V$:
- $\mathrm{gram}$ is symmetric and $\mathrm{gram}\ge r$;
- at most $U(1+\rho)^4$ indices lie within distance $\rho$ of any site;
- its weighted row and column sums at rate $\alpha$ are at most $K$;
- $D$ has bounded range.

Consequently there are window constants for which, for large $x$, the windowed inverses on windows of radius $B/4$ obey III.5.13(b) with error $Ke^{-cB/4}<1$.

*Status:* theorem, conditional on $\mathrm{Funds}$ and $\mathrm{Branches}$. Used, through `install_promises`, in III.4 and III.11.
*Lean:* [`Aff.bedrock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L142-L158), [`Aff.surplus`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L72-L113), [`Aff.gram_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/IndexCost.lean#L165-L181), [`Aff.install_promises`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Warsaw.lean#L25-L42); definitions [`Aff.Dmat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Affine.lean#L125-L127), [`Aff.gram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Affine.lean#L145-L147), [`Promise.Served`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L36-L37).

**Further outputs.**
- A calculus of budgets $\mathrm{SB}$ ([`Basic.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Basic.lean)): monotonicity, scaling, pull-back, sums over fibres, geometric tails, [`budget_count_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Basic.lean#L143-L163). It is used by about 125 modules elsewhere.
- Site-sum bounds for bundles of walks on the fine lattice, with a tail in the true length of the walks ([`Paths.bundle_hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Path.lean#L182-L201)).
- A weighted row bound for the tree-gauge response kernel ([`Response.response_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Response.lean#L242-L259)).
- Further statements of `CONNECTED_ACTIVITY_BOUNDS`, listed in Lemma 4.36.

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
  - the Teller's energy grant per seed ([`Next.Fluctuations.grants`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L24)), used in `points_grant` and `Grant.order`;
  - the sector integrals and their reduction ([`Sector.peel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Sector.lean#L229-L259), [`Sector.prefactor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Sector.lean#L71-L72));
  - the linearized block constraint [`zLin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Defs.lean#L53-L55);
  - the growth of $\beta_F$ and constants used in `surplus` (`Work.E09`, `Work.E02`).
- **III.6:** a gauge-fixed Poincaré-type inequality ([`Work.F01.link_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L63-L108)). A field vanishing on the trunks is bounded on each fine bond by its plaquette curls in a box of fixed radius around the block, plus its block average. This is the source of the gap $r$ in III.5.14.
- **III.2:** committed pairs of scales and the run structure (`Directed`, `Ringing`) entering `Consumer.bought`.

**Standard mathematics.**
- Mayer expansion and Ursell functions: D. Ruelle, *Statistical Mechanics: Rigorous Results* (1969), ch. 4; Glimm–Jaffe, *Quantum Physics*, 2nd ed. (1987), cluster-expansion chapters.
- Tree-graph inequality and partition scheme: O. Penrose, in *Statistical Mechanics: Foundations and Applications* (1967); D. Brydges, "A short course on cluster expansions", Les Houches 1984 (1986); Battle–Federbush; R. Fernández, A. Procacci, CMP 274 (2007).
- Convergence criteria and the induction on the region: R. Kotecký, D. Preiss, CMP 103 (1986); R. L. Dobrushin, "Estimates of semi-invariants for the Ising model at low temperatures" (1996); C. Gruber, H. Kunz, CMP 22 (1971).
- Lattice-animal counting by spanning walks.
- Combes–Thomas estimate: J.-M. Combes, L. Thomas, CMP 34 (1973); Schur test.
- Large-field/small-field decomposition and localized propagators in the block-spin method: T. Bałaban, CMP 95–96 (1984), CMP 109 (1987), CMP 116 (1988), CMP 122 (1989); J. Dimock, "The renormalization group according to Balaban I–III", Rev. Math. Phys. (2013–2014).

**Imported constants and assumptions.**
- The constants $B=\lceil(\log x)^2\rceil$, $t=\beta_F^{-1/2}e^{(\log\log\beta_F)^2}$ and $\beta_F=x+b\log L$ (III.1).
- The halo factor $l$; the module docstring of `Packet.lean` suggests $l=500$.
- The block side $L\ge n$ and the constant $W$, chosen large (III.2).
- Assumed hypotheses:
  - $\mathrm{Funds}$ and $\mathrm{Branches}$ (III.1);
  - lawful representations (III.1);
  - the point charge (discharged as in III.5.11);
  - in `CONNECTED_ACTIVITY_BOUNDS`, `cert` (flags of $A$ = flagged sites of $V$) and `Alongside`, passed in by the consumers.

## 3. Strategy

**The expansion.** The core is the Mayer expansion of a polymer gas with hard-core incompatibility $R$ contained in the overlap relation, in the tree-graph form (Penrose, Brydges, Fernández–Procacci). Every estimate is an absolute bound valid for an arbitrary label set.

The algebra is done for a finite gas:
- Inclusion–exclusion over subgraphs writes $\Xi$ as a sum over tuples.
- Splitting off the connected component of a root vertex gives $(m+1)g_{m+1}=\sum_k(k+1)\ell_kg_{m-k}$. This says $P'=L'P$ for $P(t)=\sum g_nt^n$ and $L(t)=\sum\ell_mt^{m+1}$.
- Geometric bounds on $\ell_m$ make $L$ analytic on an interval containing $[0,1]$, and $P=e^L$.

The analysis has two parts.
- **Tree-graph bound.** $|\phi^T|$ is at most the number of spanning trees.
- **Tree sum.** Every vertex of a tree pays for its children through the site-sum condition, which carries an extra exponent $\delta$.
  - The labels touching a support $Y$ have total weight $\le|Y|\gamma\le\mathrm{ball}_B\gamma\,\mathrm{cov}_B(Y)$.
  - For a parent with $k$ children, the factor $\mathrm{cov}_B(Y)^k$ is absorbed by $(\delta\,\mathrm{cov}_B(Y))^k\le k!\,e^{\delta\,\mathrm{cov}_B(Y)}$, i.e. by the reserve exponent of the parent.
  - The labels are summed by a substochastic kernel along the tree.
  - The product of the fan-out factorials, summed over all trees, is $\le4^mm!$, which cancels the $1/m!$.
  - The ratio per vertex is $4\,\mathrm{ball}_B\gamma/\delta\le q<1$.

**Covering numbers.** Exponential weights are carried by covering numbers at scale $B=(\log\beta)^2$, not by cardinality. Since $\mathrm{cov}_B$ is subadditive on connected unions, the factor $e^{a\,\mathrm{cov}_B}$ of a cluster is paid by its constituents. Infinite label sets are handled by dominated convergence from finite subsets.

**How the expansion is consumed.** III.5.3–III.5.6 are the forms in which other units use it:
- pinned tails, in Kotecký–Preiss form;
- the logarithm;
- the ratio after deleting the polymers that meet a region, uniform in the volume;
- a second expansion after forced polymers are reinserted, in which first-level clusters are themselves polymers.

**Checking smallness for the large-field gas** (III.5.7–III.5.8).
- *Polymers.* Packets of seeds: large fine plaquettes, large coarse wires, flagged sites.
- *Entropy.* A lattice-animal count costs $K_{\rm step}^2$ per seed, a polynomial in $\log\beta$.
- *Suppression.* On its sector, every seed carries the Gaussian suppression $e^{-\beta\kappa t^2}$. With $t=\beta^{-1/2}e^{(\log\log\beta)^2}$ one has $\beta t^2=e^{2(\log\log\beta)^2}$, so the suppression per seed is $\exp(-\kappa e^{2(\log\log\beta)^2})$. This beats every power of $\log\beta$; this is where the choice of the small-field threshold enters.
- *Extraction.* Half of the gain is kept as an extractable mark per seed, so that later estimates can recover an exponential factor from every mandatory seed.

**The deletion route** (III.5.9) avoids graphs. The deletion identity $Z(B)=Z(B\setminus x)-\sum_{P\ni x}u(P)Z(B\setminus P)$ gives $Z(A)=Z(A\setminus x)\,(1-\sigma_x(A))$, where $\sigma_x$ is the cumulative sum of a function supported on sets containing $x$. In the algebra of set functions with union convolution:
- the Möbius pieces of $-\log Z$ on sets containing $x$ are the series of $-\log(1-\cdot)$;
- a weighted $\ell^1$ norm, submultiplicative on functions pinned at $x$, closes an induction on the region, in the manner of Dobrushin and Kotecký–Preiss.

The result covers signed activities dominated by a positive envelope. The bounds are therefore uniform in the coarse field.

**The step.** The sector decomposition is the large-field/small-field decomposition of Bałaban.
- A partition of unity over packets splits the pushforward.
- On the support of the $A$-th piece, the energy assessed on the neighbourhood of $A$ is at least $\kappa t^2$ per seed. This bounds the $A$-th sector by $e^{-\beta\kappa t^2|A|}$ times the rest.

**The matrices** describe the small-field Gaussian.
- Its precision is the Gram matrix $D^TD$ of the linearized cut rows, plus $1$ on frozen coordinates.
- A gauge-fixed Poincaré inequality (III.6) and a perturbation from the flat background give a uniform gap. Finite range of $D$ gives decay.
- The Combes–Thomas argument gives exponential decay of inverses.
- Principal inverses on windows of radius $B/4$ approximate the inverse with error $e^{-cB}$. This localizes the covariance, in the manner of Bałaban's localized propagators.

## 4. Steps

### 4.1 Algebra of the finite gas

**Lemma 4.1 (gas as a sum over tuples).** Let $R$ be reflexive and symmetric, and $g_n=\frac1{n!}\sum_{z\in\iota^n}\mathrm{all}(z)\prod_aw_{z_a}$, where $\mathrm{all}(z)=\sum_{G\subseteq G_R(z)}(-1)^{|G|}$. Then $g_n=\sum_{|s|=n,\ s\ \mathrm{compatible}}\prod_{i\in s}w_i$, and $\sum_ng_n=\Xi(w)$.
*Sketch:*
- $\mathrm{all}(z)=\mathbf 1[G_R(z)=\emptyset]$, by the binomial identity.
- Since $R$ is reflexive, an edgeless tuple has distinct entries, and so orders a compatible set; each set arises $n!$ times.

*Lean:* [`Partition.allMass_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Partition.lean#L23-L28), [`Gas.row`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Gas.lean#L69-L120), [`Gas.sums`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Gas.lean#L128-L137).

**Lemma 4.2 (splitting off a component).** For any relation $R$, any tuple $z$ on a vertex set $\alpha$, and $o\in\alpha$:
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

**Lemma 4.4 (III.5.1).**
*Sketch:*
- Let $u=(1+q^{-1})/2>1$. On $(-u,u)$, the series $L(t)=\sum\ell_mt^{m+1}$ can be differentiated term by term, because $|(m+1)\ell_mt^m|\le C(m+1)(qu)^m$ is summable.
- $P(t)=\sum g_nt^n$ is a polynomial, since $g_n=0$ for $n>|\iota|$.
- Lemma 4.3 and the Cauchy product give $P'=L'P$. Hence $H=Pe^{-L}$ has $H'=0$ and $H(0)=g_0=1$.
- Evaluate at $t=1$.

*Lean:* [`Gas.exact_polynomial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L66-L145).

### 4.2 Tree-graph bound

**Lemma 4.5 (Penrose partition; III.5.2).**
*Sketch:*
- To each connected spanning $G$ attach its breadth-first tree from the distinguished vertex, breaking ties by a fixed enumeration.
- For a fixed tree $p$, the graphs with tree $p$ form a Boolean interval $[E(p),E(p)\cup F(p)]$. Here $E(p)$ is the edge set of $p$, and $F(p)$ consists of the edges of $T$ that neither change the breadth-first layers nor offer an earlier parent.
- The alternating sum over an interval vanishes unless the interval is a point: flip one free edge.
- Each fibre therefore contributes at most $1$, and only trees of $T$ contribute.

The sharper identity ($|\phi^T|$ equals the number of Penrose trees) is not used.
*Lean:* [`Graph.pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Graph.lean#L113-L148); breadth-first construction in [`Breadth.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Breadth.lean). *(proof of `pay` read; breadth-first lemmas statement only)*

### 4.3 Sums over trees

**Lemma 4.6 (substochastic sums along a forest).** Let $p:\alpha\to\alpha\sqcup\{o\}$ be an acyclic parent map, and $K(\cdot,j)\ge0$ with $\sum_jK(Y,j)\le1$ for every $Y$. Then $\sum_{z:\alpha\to\beta}\prod_iK(\text{label of }p(i),z_i)\le1$. The root carries a fixed label.
*Sketch:* induction on the set of summed vertices. Sum out a vertex of maximal rank first: it is a leaf, and its row sum is $\le1$.
*Lean:* [`Trees.substochastic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Parent.lean#L44-L126).

**Lemma 4.7 (fan-out factorials).** $\sum_{p:[m]\to[m]\sqcup\{o\}}\prod_v(\sharp \text{children of }v)!=\binom{2m}{m}m!\le4^mm!$.
*Sketch:* adding a vertex multiplies the sum by $n+\sharp \{\text{vertices}\}$; solve the recursion.
*Lean:* [`Trees.parent_fanout`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Parent.lean#L191-L193), [`fanout_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Parent.lean#L184-L189).

**Lemma 4.8 (trees rooted at a support).** Assume $w\ge0$ and $\mathrm{Hit}_B(w;a+\delta,\gamma)$. For any support $Y$ and any finite $D\subseteq\iota$,
$$\sum_{p}\sum_{z\in D^m}\mathbf 1\big[X_{z_i}\cap X_{\mathrm{parent}(i)}\neq\emptyset\ \forall i\big]\ \frac1{m!}\prod_iw_{z_i}e^{a\,\mathrm{cov}_B(X_{z_i})}\ \le\ e^{\delta\,\mathrm{cov}_B(Y)}\,\big(4\,\mathrm{ball}_B\gamma/\delta\big)^m,$$
where the root has support $Y$.
*Sketch:*
- Define $K(Y',i)=\mathbf 1[X_i\cap Y'\neq\emptyset]\,w_ie^{(a+\delta)\mathrm{cov}_B(X_i)}\big/\big(\tau\max(\delta\,\mathrm{cov}_B(Y'),1)\big)$ with $\tau=\mathrm{ball}_B\gamma/\delta$. Then $\sum_iK(Y',i)\le|Y'|\gamma/(\tau\delta\,\mathrm{cov}_B(Y'))\le1$.
- Rewrite each weight $w_ie^{a\,\mathrm{cov}}$ as $\tau\max(\delta\,\mathrm{cov}(\mathrm{parent}),1)\,K\,e^{-\delta\,\mathrm{cov}(X_i)}$.
- A parent with $k$ children contributes $\max(\delta\,\mathrm{cov},1)^k\le k!\,e^{\delta\,\mathrm{cov}}$. These factors cancel the $e^{-\delta\,\mathrm{cov}}$ of the children, except $e^{\delta\,\mathrm{cov}_B(Y)}$ at the root.
- Conclude with Lemmas 4.6 and 4.7.

*Lean:* [`Trees.trees_afford`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Weigh.lean#L192-L228), [`Trees.forest_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Forest.lean#L46-L56). *(proof read, including the helpers `buy`, `kernel_sum`, `prod_fanPrice`)*

### 4.4 Cluster sums and the logarithm

**Lemma 4.9 (rooted and marked cluster sums; III.5.3(c)).**
*Sketch:*
- $\frac1{(m+1)!}=\frac1{m+1}\cdot\frac1{m!}$: write the tuple sum as the average over the choice of root vertex. A transposition moves the root to position $0$, and $\phi^T$ is invariant under relabelling.
- At root $0$, Lemma 4.5 bounds $|\phi^T(z)|$ by the trees of $G_R(z)$. Since $R$ is contained in the overlap relation, these are trees of supports rooted at $X_{z_0}$ in the sense of Lemma 4.8.
- The root label is summed against its own weight $w_ie^{(a+\delta)\mathrm{cov}(X_i)}$, which absorbs the factor $e^{\delta\,\mathrm{cov}}$. This gives $bq^m$.

*Lean:* [`Ursell.cluster_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L148-L183).

**Lemma 4.10 (pinned bounds; III.5.3(a),(b)).**
*Sketch:*
- If $\phi^T_R(z)\neq0$, then $G_R(z)$ is connected, so $\mathrm{cov}_B(X(z))\le\sum_a\mathrm{cov}_B(X_{z_a})$.
- Apply Lemma 4.9 with $Q=\{i:x\in X_i\}$, where $b=\gamma$ by the site condition at $x$, and sum the geometric tail.
- The set version (b) follows in the same way from a count of distinct-label forests.

*Lean:* [`Ursell.connected_pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L194-L211), [`Ursell.log_hit_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L224-L243), [`Trees.touch_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Distinct.lean#L245-L276). *(proofs read; the forest count `spark_tail` statement only)*

**Lemma 4.11 (from finite to infinite label sets; III.5.4).**
*Sketch:*
- Every support is nonempty, so $\sum_i|w_i|e^{(a+\delta)\mathrm{cov}}\le n^4\gamma$. Hence $\sum_s\prod_{i\in s}|w_i|\le e^{n^4\gamma}$, and the cluster series has absolute sum $\le n^4\gamma/(1-q)$.
- On a finite $D\subseteq\iota$ the hypotheses restrict, and III.5.1 applies with $C=n^4\gamma$.
- Let $D\uparrow\iota$ and use dominated convergence for both series; the dominating budgets do not depend on $D$.

*Lean:* [`Gas.finite_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Log.lean#L29-L41), [`Gas.price_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Log.lean#L114-L149), [`Product.everyone_ne`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Product.lean#L43-L51), [`Product.set_products`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Product.lean#L53-L64).

### 4.5 Deleted regions and forced polymers

**Lemma 4.12 (III.5.5).**
*Sketch:*
- The cluster terms of $w^Y$ are those of $w$ minus the terms whose union meets $Y$.
- The removed terms are bounded by Lemma 4.10 with $m=0$, summed over $x\in Y$.
- Apply III.5.4 to both gases; $|w^Y|\le|w|$, so $w^Y$ satisfies the same hypotheses.

*Lean:* [`Gas.restores_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L69-L95), [`Gas.missing_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L40-L63).

**Lemma 4.13 (multiplicities on a fixed set).** If $0\le w_i\le\sigma<1$, then $\sum_{n_i\ge1}\prod_{i\in s}w_i^{n_i}/n_i!\le\prod_{i\in s}w_i/(1-\sigma)$.
*Lean:* [`Multiple.buy_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L60-L72).

**Lemma 4.14 (multiset sums).** Suppose $\mathrm{Ready}\big(t\,w\,e^{e}/(1-\sigma);a,\gamma,\delta,q\big)$ and $\gamma\le\sigma$. Then the sum over multisets with connected support through $x$, satisfying a predicate $Q$ on which $\sum n_ie_i\ge v$, with total multiplicity $\ge m$, of $e^{a\,\mathrm{cov}_B(\cup)}\prod w_i^{n_i}/n_i!$, is at most $t^{-m}e^{-v}\gamma/(1-q)$.
*Sketch:*
- Each inflated weight is at most $\sigma$, by the site condition at a point of its support.
- So Lemma 4.13 sums the multiplicities, at the cost of $1/(1-\sigma)$ per label, and III.5.3(b) sums the connected sets.
- The factor $t^{\sum n}e^{\sum ne}\ge t^me^v$ is extracted on the selected multisets.

*Lean:* [`Multiple.estimates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L135-L169).

**Lemma 4.15 (III.5.6).**
*Sketch:*
- The first-level clusters satisfy a site condition with constant $\gamma/(1-q)$ at exponent $A+\delta'$, by III.5.3(a) with $m=0$; the forced polymers satisfy one with constant $c$.
- Join the two alphabets, scaling the weights by $te^\mu/(1-\sigma)$ and $t/(1-\sigma)$ respectively; the resulting constant is at most $\eta$.
- Apply Lemma 4.14 with $e=\mu$ on forced labels; the presence of a forced label gives $v=\mu$.

*Lean:* [`OmitClusters.restore`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Omissions.lean#L48-L100), [`Labels.together`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Labels.lean#L83-L96).

### 4.6 Packets and the large-coupling numerics

**Lemma 4.16 (animals and covers).**
- The number of connected packets with $k$ seeds whose dome contains $x$ is at most $K_{\rm hit}(K_{\rm step}^2)^k$.
- $\mathrm{cov}_B(D(A))\le|A|\,(2l+3)^4$ for connected $A$.

*Sketch:*
- A connected packet is the vertex set of a walk of length $2(k-1)$. The walk runs in the graph of seeds whose skins can meet, which has degree $\le K_{\rm step}$. It starts at one of at most $K_{\rm hit}$ seeds whose skin contains $x$.
- A skin lies in a ball of radius $lB+1\le(l+1)B$, so it is covered by $(2l+3)^4$ balls of radius $B$. A connected union costs at most the sum.

*Lean:* [`Packets.stores_count`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L260-L269), [`Animals.animals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Animals.lean#L122-L137), [`Packets.cover_support`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L171-L176). *(statements read; `cover_skin` proof read)*

**Lemma 4.17 (III.5.7(a)).**
*Sketch:*
- On a connected packet, $p_Ae^{a\,\mathrm{cov}}\le C\big(e^{s-g+a(2l+3)^4}\big)^{|A|}$.
- With the count of Lemma 4.16, sum the geometric series ([`budget_count_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Basic.lean#L143-L163)).
- Connected packets have at least one seed; hence $\max(1,m)$.

*Lean:* [`Packets.packet_income`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L66-L105), [`Packets.cover_income`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L42-L53).

**Lemma 4.18 (III.5.7(b)).**
*Sketch:*
- *Ready.* Inflate the weights to $p_Ae^{2\varepsilon e_s|A|+\mu_s|A|}$ and $w_ie^{2\varepsilon\lambda_i}$. The joint alphabet then satisfies Ready at exponent $a+2\varepsilon$: packets by Lemma 4.17, optional labels by hypothesis, and the constants add up to $\gamma_{\rm root}$.
- *Connected sets.* III.5.3(b) sums the connected sets.
- *Extractions.*
  - $(1+\mathrm{ch})^k\le\varepsilon^{-k}k!\,e^{\varepsilon}e^{\varepsilon\,\mathrm{ch}}$;
  - one of the two factors $e^{\varepsilon\,\mathrm{ch}}$ of the inflation gives $e^{\varepsilon T}$;
  - the marks give $e^{\mu_sr}$.

*Lean:* [`Mixed.ready_vertices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L95-L122), [`Mixed.mixed_hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L153-L189), [`Reserves.sets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Reserves.lean#L97-L135), [`Reserves.reserve_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Reserves.lean#L34-L56).

**Lemma 4.19 (III.5.8).**
*Sketch:*
- *Domination.* $D\,\mathrm{bill}^d\le P(\beta_F)^e$ eventually, for every $e>0$, since $(\log\beta)^{2d}=e^{2d\log\log\beta}$ is eventually below $e^{e(\log\log\beta)^2}$. Also $K_{\rm hit},K_{\rm step}^2\le e^{M/16}$, because $K_{\rm step}\le\mathrm{const}\cdot\mathrm{bill}^4$.
- *Ratio.* $\rho\le e^{M/16}e^{M/16-M+M/16}\le e^{-M/2}$.
- *Gain.* $\beta\ge u\beta_F$ gives $\beta\mu t^2\ge\mu uP(\beta_F)^2$, because $\beta_Ft^2=P(\beta_F)^2$.
- *Assembly.* (b) applies (a) with $\mu/2$. (c) combines (a) with the Teller's grant.

*Lean:* [`Delay.monitor_pays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L74-L101), [`Delay.step_delay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L128-L156), [`Delay.fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L165-L214), [`Buy.quoted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Buy.lean#L67-L103), [`Grant.order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Grants.lean#L52-L71). *(proof read; the grant of III.10 statement only)*

### 4.7 The logarithm by deletion

**Lemma 4.20 (deletion identity).** For $x\in B$:
$$Z(B)=Z(B\setminus x)+\sum_{P\subseteq B,\ P\ni x}\varphi(P)\,Z(B\setminus P),\qquad \varphi(P)=\sum_{i:\,X_i=P}v_i ,$$
and $Z(\emptyset)=1$.
*Sketch:*
- At most one member of a disjoint family contains $x$; removing it removes its support.
- The identity holds exactly for finite truncations of $\iota$ and passes to the absolutely convergent limit.

*Lean:* [`ReLog.stock_deletion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L68-L114), [`ReLog.shelf`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L144-L163).

**Lemma 4.21 (the incidence algebra).** For set functions on $J$ define:
- $(f*g)(T)=\sum_{P\cup Q=T}f(P)g(Q)$;
- $\hat f(B)=\sum_{A\subseteq B}f(A)$, so that $\widehat{f*g}=\hat f\hat g$;
- $\|f\|_w=\sum_Aw(A)|f(A)|$.

Then:
- $\|\cdot\|_w$ is submultiplicative on functions supported on sets containing a common point $x$.
- For such $f$ with $\|f\|_w<1$, $\lambda(f)=\sum_{n\ge0}f^{*(n+1)}/(n+1)$ satisfies $\widehat{\lambda(f)}=-\log(1-\hat f)$ and $\|\lambda(f)\|_w\le-\log(1-\|f\|_w)$.
- $|f|\le F$ pointwise implies $|\lambda(f)|\le\lambda(F)$.

*Lean:* [`ReLog.crop_glue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L118-L134), [`ReLog.lamp_shed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L169-L176), [`ReLog.lamp_cropped`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L178-L196), [`ReLog.lamp_mono`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L197-L209). *(statements and definitions read; proofs not read)*

**Lemma 4.22 (the induction).** Assume the site condition of III.5.9(a) for an envelope $U\ge0$, the deletion identities for the envelope gas $Z$ (activities $-U$) and for $Y$ (activities $-z$, with $|z|\le U$). Then for every $B$:
- $Z(B)>0$ and $Y(B)>0$;
- $|\lambda_Y(B)|\le\lambda_Z(B)$;
- $\sum_{A\subseteq B,\ A\ni x}w(A)\lambda_Z(A)\le a$ for $x\in B$.

*Sketch:* strong induction on $B$. Pick $x\in B$.
- The deletion identity and the log form on the subsets of $B\setminus x$ give $Z(A)=Z(A\setminus x)(1-\hat f_x(A))$ for $A\subseteq B$, where
$$f_x=\sum_{P\ni x}U(P)\cdot(\text{the function with cumulative sum }A\mapsto\exp\textstyle\sum_{T\subseteq A\setminus x,\ T\cap P\neq\emptyset}\lambda_Z(T)).$$
- By submultiplicativity of $w$ and the induction hypothesis at the points of $P$, $\|f_x\|_w\le\sum_{P\ni x}w(P)U(P)e^{a|P|}\le1-e^{-a}$. Hence $Z(B)>0$.
- The pieces of $-\log Z$ on sets containing $x$ are $\lambda(f_x)$, with $\|\lambda(f_x)\|_w\le-\log e^{-a}=a$.
- The same computation for $Y$, with $|f^Y_x|\le f_x$, gives the domination.

*Lean:* [`ReLog.leash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L180-L211), [`ReLog.matures`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L75-L106), [`ReLog.swept`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L224-L233), [`ReLog.catalog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L217-L228).

**Lemma 4.23 (deleting sites).** $-\log Z(J\setminus Q)=\sum_{A\cap Q=\emptyset}\lambda(A)$, hence $l=\sum_{A\cap Q\neq\emptyset}\lambda(A)$, and $|l|\le\sum_{x\in Q}\sum_{A\ni x}w(A)\lambda_{-v}(A)\le a|Q|$ because $w\ge1$.
*Lean:* [`ReLog.omitted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L235-L271).

**Lemma 4.24 (at a coarse field; III.5.9(b)).**
*Sketch:*
- $e^{A\,\mathrm{cov}_M}$ is an admissible weight, since $\mathrm{cov}_M$ is subadditive on overlapping unions.
- $a(2M+1)^4\le1$ gives $a|X|\le\mathrm{cov}_M(X)$, which converts the condition into III.5.9(a).
- *Masking.* If $P$ contains a flagged site $y$, the masked gas does not see $y$, so its Möbius piece at $P$ vanishes.
- Locality, gauge invariance and measurability follow by induction through the Möbius inversion.

*Lean:* [`ReLog.intake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L157-L183), [`ReLog.native_rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L26-L32), [`ReLog.permits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L51-L65), [`ReLog.retain_mask`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L118-L143), [`ReLog.retest_meas`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L104-L114).

**Lemma 4.25 (trace-log; III.5.10).**
*Sketch:*
- $AC=A^{1/2}(A^{1/2}CA^{1/2})A^{-1/2}$ is similar to a symmetric matrix.
- Its eigenvalues $\lambda$ are those of $1+S$, and $|\lambda-1|\le\|S\|_{\infty\to\infty}\le q$.
- Hence $\log\det(1+S)=\sum\log\lambda=\sum_n(-1)^{n+1}\mathrm{tr}\,S^n/n$, and $\det C=\det(1+S)/\det A>0$.

*Lean:* [`Round.twins`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Round.lean#L74-L93), [`Round.twin_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Round.lean#L95-L144).

### 4.8 The sector decomposition

**Lemma 4.26 (allocations and columns).** An allocation is a Borel family $D_A(k,U,V)\in[0,1]$ with $\sum_AD_A=1$, and $D_A\neq0$ only in the sector of $A$.
- The hard allocation, the indicator of the actual booking, is one example.
- A smooth cutoff $\chi$, equal to $1$ on $[0,1]$ and $0$ on $[4,\infty)$, is provided.
- For every coarse $V$, the outputs satisfy $\sum_A\mathrm{out}_A(V)=\mathrm{push}_\beta g(V)$, for integrable gauge-invariant $g$.

*Lean:* [`Allocation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L30-L36), [`Allocation.hard`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L68-L78), [`Chi.canonical`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L95-L101), [`push_columns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Output.lean#L102-L114). *(definitions read; `push_columns` statement only)*

**Lemma 4.27 (cut-out identity).**
$$\text{kernel}\times\rho_R=\mathrm{sieve}(V)\cdot\mathrm{exposed}(U)\cdot\mathrm{kernel}\cdot e^{-\beta\,\mathrm{gap}(U,V)} .$$
- In the input action, split the cut rows of the upper stage, averaged over the lattice symmetries, into two parts:
  - their coarse counterpart at $V$, which gives the factor $\mathrm{sieve}(V)$, taken out of the integral;
  - the difference $\mathrm{gap}(U,V)$, which is kept with the block kernel.
- The rest of the action and the polymer gas form $\mathrm{exposed}(U)$.

*Lean:* [`Presented.expel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L40-L56), [`Presented.use_gap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L66-L78).

**Lemma 4.28 (energy factorization in a sector).** In the sector of $A$:
$$\mathrm{kernel}\cdot e^{-\beta\,\mathrm{gap}}=\pi_\beta\,e^{-\beta\,\overline{\mathcal E}_A}\cdot(\text{likelihood})\,e^{-\beta\,\overline{\mathcal E}^{\rm rest}_A},$$
where bars denote averages over the lattice symmetries, applied to the rotated packet. The point charge gives $\overline{\mathcal E}_A\ge\kappa t^2|A|$ on the support of $D_A$.
*Lean:* [`Oriented.enters_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L185-L208), [`Oriented.mean_pays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L210-L219).

**Lemma 4.29 (III.5.11).**
*Sketch:*
- Integrate Lemma 4.28 against $D_A\cdot|\mathrm{exposed}|$ over the slice of fine fields fixed on the trunks of $F$, and sum over frame tags.
- The total is the pushforward, by Lemma 4.26.
- Boundedness and measurability of every factor is checked separately.

*Lean:* [`Oriented.turn_charge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L267-L297), [`Presented.portionCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L157-L210).

**Lemma 4.30 (one $\kappa$).**
- `points_grant` obtains the point charge from the Teller's grant (III.10).
- `bought` obtains it, at a committed pair of scales, from `notation_ticket`, and checks the adaptation of $R$ to the tube.

*Lean:* [`points_grant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L37-L51), [`Consumer.bought`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Consumer.lean#L42-L65), [`charged_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Grant.lean#L61-L66). *(proof read; the inputs from III.1 and III.10 statement only)*

### 4.9 Matrices

**Lemma 4.31 (III.5.12).**
*Sketch:* fix $j$ and put $s_k=e^{\theta\eta d(a_k,a_j)}$ and $w=s\cdot(M+u)^{-1}e_j$.
- Then $(M+u+F)w=e_j$, with $F_{kl}=M_{kl}(s_k/s_l-1)$.
- By convexity of $\exp$, $|s_k/s_l-1|\le\theta e^{\eta d(a_k,a_l)}$. The Schur test then gives $|\langle w,Fw\rangle|\le\theta C|w|^2\le\frac r2|w|^2$.
- Hence $\min(1,r/2)(1+u)|w|^2\le w_j\le|w|$, and $|w_i|\le|w|$ gives the claim.

*Lean:* [`Green.inverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L188-L251), [`Green.diminishing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L135-L147), [`Green.schur`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L149-L168).

**Lemma 4.32 (III.5.13).**
*Sketch:*
- $E_{ij}=0$ for $i\in P(j)$, because column $j$ of $\mathrm{within}(A)$ solves the system on the window. So $E$ lives at distances $>R$.
- Pointwise decay at rate $\theta\eta$, from III.5.12 applied to $A$ and to its principal submatrices, becomes row-sum decay at rate $\nu$ by the counting bound. This costs $\Pi_U(\theta\eta-\nu)$.
- The far entries of $E$ at the slower rate $\mu$ pay $e^{-(\nu-\mu)R}$.
- Finally $\mathrm{within}-A^{-1}=A^{-1}E$, and the weighted Schur classes are closed under products.
- Part (b) applies (a) uniformly along $tA+(1-t)$.

*Lean:* [`Windows.stitched`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L51-L69), [`Windows.inverse_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L124-L141), [`Windows.window_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L146-L169), [`Win.planePrice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Schur.lean#L69-L70). *(proofs of the window lemmas read; `Promise.receive` statement only)*

**Lemma 4.33 (gap).** There is $r>0$ such that $r|v|^2\le|Dv|^2$ for all active $v$, for large $x$.
*Sketch:*
- Take an active bond. Its block lies outside $D(A)$'s $10B$-neighbourhood, so in an axial gauge the background $V$ is within $\delta(x)\to0$ of $1$ near the bond.
- The Poincaré-type inequality of III.6 bounds the bond variable by flat curls and block averages near the block. These are the flat rows.
- The actual rows differ from the flat rows by $O(\delta)|v|_{\rm loc}$.
- Square and sum with bounded overlap: $|v|^2\le\mathcal V|Dv|^2+o(1)|v|^2$, which gives $r=(2(1+\mathcal V))^{-1}$.
- Then $\langle v,\mathrm{gram}\,v\rangle=|Dv|^2+|v_{\rm inactive}|^2\ge r|v|^2$.

*Lean:* [`Aff.inflow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L27-L69), [`Aff.surplus`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L72-L113), [`Aff.decomposes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L134-L139). *(proofs of `inflow`, `surplus` read; the per-bond comparison `expense` and the III.6 inequality statement only)*

**Lemma 4.34 (decay).** There is $K$, uniform in the volume, $V$, $A$, $F$ and $x$, such that $D$, its unmasked version and $\mathrm{gram}$ satisfy weighted Schur bounds at rate $\alpha$. Moreover $\mathrm{gram}_{ij}=0$ beyond twice the stencil radius.
*Sketch:*
- Pointwise exponential decay of the row coefficients comes from the path-sum bounds of the upper stage and from the block-constraint rows.
- The counting bound converts it into row sums.
- Products and sums give $\mathrm{gram}$.

*Lean:* [`Aff.gram_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/IndexCost.lean#L165-L181), [`Aff.stencil`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/IndexCost.lean#L120-L159), [`Aff.received`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Speed.lean#L138-L155).

**Lemma 4.35 (III.5.14).**
- `bedrock` assembles Lemmas 4.33 and 4.34 with the counting constant.
- `install_promises` adds III.5.13(b) for windows of radius $B/4$.

*Lean:* [`Aff.bedrock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L142-L158), [`Aff.install_promises`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Warsaw.lean#L25-L42).

**Lemma 4.36 (further results of `CONNECTED_ACTIVITY_BOUNDS`; statement only, for large $x$).** These concern the auxiliary Gaussian ([`Mint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Mint.lean#L22-L28)): precision $\mathrm{gram}$, source $D^T(\text{affine constant})$, mean $\mu=-\mathrm{within}^T(\text{source})$.
- [`Aff.escape`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Station.lean#L222-L241): the tree-gauge linear extension of a coarse field solves the affine rows exactly, in every orientation.
- [`Aff.velocity`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Stint.lean#L44-L97), [`Aff.shifted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Stint.lean#L100-L121): away from $D(A)$, the Gaussian mean differs from that extension by $O(B^pt^2)$, and the affine residual at the mean is of the same order.
- [`Jewels.night`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Hour.lean#L55-L116): there is $\varepsilon>0$ such that fluctuations of size $\le\varepsilon t$ around the mean keep every fine plaquette below $t/4$ and every coarse wire below $Wt$, outside $D(A)$. So the shift creates no new seeds.
- [`Aff.tap_open`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Draught.lean#L92-L114): uniqueness of the frame minimizer and of the predictor for small chords.
- [`Aff.perturb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/DCompare.lean#L190-L207): $D$ is Lipschitz in the background field.
- [`Aff.arc_bill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Ground.lean#L51-L130): first-order Taylor remainder of the affine rows.
- [`Aff.reserves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Veil.lean#L41-L49): discharges the hypothesis `Reserve`.

## 5. Where the difficulty lies

- **Standard core, unusual bookkeeping.**
  - The algebra and the tree-graph bound (4.1–4.5) are textbook.
  - Three features are not:
    - absolute budgets valid for an arbitrary label set;
    - weights carried by covering numbers at the growing scale $B=(\log\beta)^2$;
    - an incompatibility relation contained in the overlap relation, rather than equal to it. The same estimates therefore serve the gas, the deleted labels and the forced labels.
  - The entropy factor $4\,\mathrm{ball}_B=4(2B+1)^4$ per tree vertex is wasteful, but it is polynomial in $\log\beta$.
- **The smallness margin.** The per-seed suppression $\exp(-\kappa e^{2(\log\log\beta)^2})$ dominates every polylogarithmic entropy and the polylogarithmic per-seed costs. It does not dominate powers of $\beta$. This is why costs of size $\mathrm{bill}^dP^z$ with $z<2$ are the admissible ones in III.5.8.
- **Two routes to the logarithm.** The deletion route needs no graphs and handles signed activities with a field-independent envelope; its smallness is in cardinality, $e^{a|X|}$. The graph route gives pinned tails and multiset bounds. Both give ratios uniform in the volume; the log series itself is extensive ($n^4\gamma/(1-q)$).
- **The step.**
  - The analytic content of III.5.11 is entirely in the point charge, which is assumed here; the rest is an exact rearrangement.
  - The bound on $\ell_A(V)$ is not volume uniform. It is paid in III.4 and III.10.
  - The genuine analytic input of III.5.14 is the Poincaré-type inequality of III.6, together with the comparison of the actual and flat rows near large fields.
- **Mixed content.** Only (A) and (B) are the cluster expansion proper; (C)–(E) prepare the Gaussian integration (III.4) and the step bounds (III.10, III.11).

## 6. Notation

| Written proof | Lean | Meaning |
|---|---|---|
| $\mathrm{SB}(f;C)$ | [`SumBudget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L59-L60) | $f\ge0$ summable, $\sum f\le C$ |
| $\mathrm{Hit}_B(w;a,\gamma)$ | [`Ac.Hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13) | site-sum condition |
| $\mathrm{cov}_B$, $\mathrm{ball}_B$ | [`coverNumber`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L69-L71), [`ballCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Animals.lean#L148) | connected covering number; $(2B+1)^4$ |
| $\mathrm{Ready}(w;a,\gamma,\delta,q)$ | [`Trees.Ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Forest.lean#L31-L32), [`degreePrice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Weigh.lean#L52) | smallness of the cluster expansion |
| $R\subseteq$ overlap | [`Ursell.Tests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L59), [`blocked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Ursell.lean#L22) | incompatibility implies overlap; the overlap relation |
| $G_R(z)$, $\phi^T_R(z)$ | [`Ursell.pot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Ursell.lean#L32-L33), [`Ursell.coefficient`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Ursell.lean#L35) | incompatibility graph of a tuple; Ursell coefficient |
| $\Xi(w)$; cluster term; log series | [`Gas.total`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L22), [`Gas.term`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L24), [`Gas.logSum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L26) | gas, its cluster terms and their sum |
| $g_n$, $\ell_m$ | [`Coef.gasRow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L19), [`Coef.logRow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L20) | coefficients of $\Xi$ and of the log series |
| $w^Y$, $p$ | [`Gas.cut`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L24), [`Gas.missing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L25) | weights off $Y$; clusters meeting $Y$ |
| multisets, $\prod w^{n}/n!$ | [`Multiple.Reps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L26), [`manyW`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L28-L29) | labels with multiplicities |
| packet $A$, number of seeds, $D(A)$ | [`Stores`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L34-L37), [`shares`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L46), [`dome`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L44) | finite set of seeds; its neighbourhood |
| connected packet, $K_{\rm hit}$, $K_{\rm step}$, $\tau_L$ | [`Packets.connected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L77), [`hitCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L215), [`stepCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L216), [`typesAt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L181) | animal-counting constants |
| $\rho$, packet tail | [`ratioCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L28-L29), [`fit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L34-L35), [`totalCharge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L37-L38) | per-seed ratio; tail of packet sums |
| hypotheses of III.5.7(b) | [`Mixed.Costs.Buy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L47-L58), [`Mixed.Accounts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L84-L89) | numerical list; weight bounds |
| $B$, $\beta_F$, $t$, $P$ | [`radiusB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22), [`betaF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23), [`fiery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L26), [`Vac.Numbers.P`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L72) | $\lceil(\log x)^2\rceil$; $x+b\log L$; $\beta_F^{-1/2}P(\beta_F)$; $e^{(\log\log s)^2}$ |
| $M$, gain $\beta\mu t^2$ | `hatWin`, [`Grant.credit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Grants.lean#L48) | guaranteed and actual gain per seed |
| $Z(B)$, $\lambda(A)$ | [`fumes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L122), [`locker`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L46), [`pieces`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Sprig.lean#L23-L28) | disjoint-family gas; Möbius pieces of $-\log Z$ |
| $f*g$, $\hat f$, $\Vert f\Vert_w$, $\lambda(f)$ | [`glue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L36), [`shed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L38), [`crop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L40), [`lamp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L161) | union convolution, cumulative sum, weighted norm, log series |
| hypotheses of III.5.9 | [`Rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L45-L47), [`Deletion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L31-L34), [`Receipt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L39-L43), [`Sufficient`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L168-L173), [`Fund`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L43-L49), [`Tags`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L72-L77) | weight, deletion identity, site conditions, coefficient properties |
| allocation $D$; point charge | [`Allocation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L30-L36), [`PointCharge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L29-L32) | partition of unity over packets; $\mathcal E_A\ge\kappa t^2$ per seed |
| $\mathcal E_A$; $c_A$; $\ell_A$; $\pi_\beta e^{-\beta\kappa t^2 k}$ | [`assessed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L85), [`cutEntry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L145-L148), [`leftOver`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L140-L143), [`earn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Grant.lean#L28-L29) | sector energy; sector output; remainder; gain |
| weighted Schur classes; $M\ge r$ | [`Green.Rows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L26-L27), [`Green.Both`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L29-L30), [`Green.Bottom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L32-L33) | row/column sums at rate $\eta$; lower bound |
| windows, $\mathrm{within}$, $E$, $\mathrm{cov}$, $\Pi_U$ | [`Win.Windows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L28-L30), [`within`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L36-L37), [`error`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L39), [`cov`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L73), [`planePrice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Schur.lean#L69-L70) | localized inverse and covariance |
| uniform matrix data; window constants | [`Win.Promise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L22-L30), [`Turns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L71-L83), [`Turns.Takes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L91-L101) | (mass, bottom, rate, counting); bounds of III.5.13(b) |
| $D$, $\mathrm{gram}$ | [`Aff.Dmat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Affine.lean#L125-L127), [`Aff.gram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Affine.lean#L145-L147) | linearized cut rows; precision matrix |

## 7. Open points for the writer

1. **Scope.**
   - The unit groups heterogeneous packages. (A) and (B) are the cluster expansion. (C) belongs with the step estimate (III.10, III.4), and (D)–(E) with the Gaussian integration (III.4, III.11).
   - III.5.10 is a determinant identity used only in III.4.
   - Decide the split in the written proof.
2. **Dependency with III.10.** The two units do not depend on each other circularly at the level of declarations.
   - This unit uses from III.10: the Teller's energy grant, the sector integrals (`peel`, `prefactor`), the linearized block constraint and two constants.
   - III.10 uses from this unit: III.5.4, III.5.5, III.5.6, III.5.7(b), III.5.8(c) and III.5.11.
3. **Where the hypotheses are discharged.** The consumers below were identified from the dependency database. How each consumer verifies $\mathrm{Ready}$/$\mathrm{Hit}$ for its actual weights was not read.
   - III.5.4/III.5.5: III.10 (`ConnectedActivityE6.Cash.*`, `PhysicalNext.Repeat.Song.summon`).
   - III.5.3(a): III.2, III.10–III.13, III.15.
   - III.5.6: III.2, III.10, III.11, III.13.
   - III.5.7(b): III.2, III.10–III.13.
   - III.5.9(b): III.11.
   - III.5.10: III.4.
   - III.5.11: III.4, III.10.
   - III.5.14: III.4, III.11.

   The docstrings say that this unit does not construct the weights and does not show that the RG outputs satisfy the per-packet bounds (`Mixed.lean`, `Fees.lean`). The point charge at committed scales comes from the hypothesis `Ringing` of the run, whose origin was not traced. `Alongside` and `cert` in `CONNECTED_ACTIVITY_BOUNDS` are passed in by consumers in III.11.
4. **Proofs not read.**
   - The breadth-first lemmas (`Breadth`) and the distinct-label forest count (`spark_tail`).
   - The algebra lemmas of `Leaves`.
   - The animal count (`list_animals`).
   - `push_columns` and `plots_column`.
   - `Promise.receive`.
   - The decay chain (`gram_budget`, `stencil`, `received`) and the per-bond comparison `expense`.
   - The III.6 Poincaré inequality.
   - All of Lemma 4.36.
   - The precise content of the rows (`Xf`, `Mv`, `zLin`) and of the assessed energy (III.1) is described only at the level of definitions (probable).
5. **The constant $\pi_\beta$.** It is the inverse power of the single-bond kernel normalization `penaltyZ` (probable). Check its definition in III.1 when writing the integral formula.
6. **References.** Penrose (1967), Brydges (1986), Fernández–Procacci (2007), Kotecký–Preiss (1986), Dobrushin (1996), Gruber–Kunz (1971), Combes–Thomas (1973) and Bałaban (1984–1989) are cited from memory, as are the chapter numbers of Ruelle and of Glimm–Jaffe; check them.

**Builds on:** [III.1](III-1.md), [I.1](I-1.md), [III.10](III-10.md), [II.2](II-2.md), [III.16](III-16.md).

**Used by:** [III.10](III-10.md), [III.4](III-4.md), [III.13](III-13.md), [III.11](III-11.md), [III.12](III-12.md), [III.2](III-2.md), [III.15](III-15.md), [VII.1](VII-1.md), [III.14](III-14.md), [III.9](III-9.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| work package [`YM/Push/ABSOLUTE_SUMS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS) | 3,624 |
| work package [`YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS) | 3,589 |
| work package [`YM/Push/SECTOR_MEASURE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE) | 1,153 |
| work package [`YM/SectorNext/VACUUM_NORMALIZATION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION) | 935 |
| work package [`YM/Progress/STATIONARY_SCENES/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES) | 445 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **III.5.1** [`canonical`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L95-L101) *(numbered result)* — A canonical choice of sector-cost allocation profile.
- **III.5.2** [`budget_count_tail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Basic.lean#L143-L163) *(numbered result)* — If the number of live labels of degree k grows like A B^k and weights decay like C r^k with B r<1, then tails of the sum are geometrically bounded.
- **III.5.3** [`inverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L188-L251) *(key result)* — A Hermitian matrix with a spectral gap and off-diagonal exponential decay has an inverse with pointwise exponential decay, uniformly in a spectral parameter.
- **III.5.4** [`window_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L146-L169) *(numbered result)* — For a Hermitian matrix with a bottom eigenvalue bound and off-diagonal decay, the layered price estimates hold within one window system with small error.
- **III.5.5** [`Buy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L47-L58) *(numbered result)* — A named sufficient condition on a cost function for charging a connected result pointwise.
- **III.5.6** [`partition`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Partition.lean#L219-L237) *(key result)* — The total mass of a hard-core potential decomposes by splitting off the connected component of a chosen position, as the component coefficient times the mass of the complement.
- **III.5.7** [`recurrence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L129-L138) *(numbered result)* — The gas coefficients and log coefficients satisfy the standard recurrence (m+1)g_{m+1}=Σ(k+1)l_k g_{m-k}.
- **III.5.8** [`exact_polynomial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L66-L145) *(key result)* — If the log series coefficients decay geometrically, the exponential of the full log series equals the finite polynomial sum of values over subsets.
- **III.5.9** [`pay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Graph.lean#L113-L148) *(key result)* — The absolute value of the Ursell (overlap graph) mass is bounded by the number of tree-compatible assignments.
- **III.5.10** [`substochastic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Parent.lean#L44-L126) *(numbered result)* — For a ranked parent function and a substochastic kernel, the sum over all label assignments of the product of kernel entries along the forest is at most 1.
- **III.5.11** [`trees_afford`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Weigh.lean#L192-L228) *(numbered result)* — The sum over forests of size m and label choices in a finite set is bounded by a currency factor times a degree price to the power m.
- **III.5.12** [`estimates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L135-L169) *(key result)* — Sums over unordered repeated-label multisets with connected footprint have an exponential-tail budget bounded by a geometric factor.
- **III.5.13** [`cluster_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L148-L183) *(key result)* — Ursell cluster sums over tuples containing a marked occurrence satisfy an absolute summability bound geometric in the tuple length.
- **III.5.14** [`restore`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Omissions.lean#L48-L100) *(key result)* — After merging, a weighted hit bound with geometric tail holds for every required copy-cut, combining exponential recovery with seed and degree costs.
- **III.5.15** [`price_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Log.lean#L114-L149) *(key result)* — On hard overlap graphs, absolute-bound hypotheses give absolute convergence of both the value and term series, with exp(log-sum) equal to the positive total and its log equal to the log-sum.
- **III.5.16** [`restores_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L69-L95) *(key result)* — Ratio estimate for a polymer gas with a deleted set of labels, expressed via the logarithm with sign retained and an upper bound with absorption cost.
- **III.5.17** [`fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L165-L214) *(numbered result)* — For large parameter x, tree-vertex price constants fit the required inequalities for all per-packet combinatorial tests uniformly.
- **III.5.18** [`quoted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Buy.lean#L67-L103) *(numbered result)* — For large parameter values, explicit numeric conditions on constants suffice to satisfy the hypotheses for the packet estimates.
- **III.5.19** [`packet_income`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L66-L105) *(numbered result)* — Weights bounded by a per-seed income yield a summability budget for packet sums with an explicit total charge.
- **III.5.20** [`bundle_hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Path.lean#L182-L201) *(numbered result)* — Winding path bundles with complete path coefficients satisfy a hit bound at common anchors with a tail decaying in true length.
- **III.5.21** [`Allocation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L30-L36) *(numbered result)* — A partition of unity subordinate to seed prerequisites, as a data structure.
- **III.5.22** [`plots_column`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Decompose.lean#L120-L126) *(numbered result)* — The sum over sectors of integrals restricted to each sector's own plots equals the column integral.
- **III.5.23** [`tap_open`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Draught.lean#L92-L114) *(numbered result)* — For large x, the minimizing choice on a patch satisfies uniform opening bounds.
- **III.5.24** [`escape`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Station.lean#L222-L241) *(numbered result)* — The tree tangent hits every orientation channel on the one field simultaneously.
- **III.5.25** [`shelf`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L144-L163) — For disjoint-family sums with summable weights, the negative-log piece satisfies the deletion property.
- **III.5.26** [`swept`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L224-L233) *(key result)* — Under a receipt condition, the re-log of any signed activity dominated by the envelope satisfies an absolute budget applied against the envelope's ceiling.
- **III.5.27** [`catalog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L217-L228) *(key result)* — For countably addressed signed integrated coefficients, the log is exactly defined and obeys an absolute budget with a common envelope.
- **III.5.28** [`omitted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L235-L271) *(numbered result)* — Deleting arbitrary sites after re-log gives a common ratio multiplying a forced family, with controlled sign of the omitted log contribution.
- **III.5.29** [`intake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L157-L183) *(key result)* — Integrated gas coefficients admit absolute support price bounds with a common envelope for all configurations, without global small l¹ hypothesis.
- **III.5.30** [`turn_charge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L267-L297) *(numbered result)* — Sector payment inequality extends to the orientation-averaged cut rows with a multiplicative earn constant.
- **III.5.31** [`portionCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L157-L210) *(key result)* — For a lawful representation with a point charge and funds, every forest and allocation satisfies the portion cost estimate.
- **III.5.32** [`bought`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Consumer.lean#L42-L65) *(key result)* — At any committed height pair, a single positive constant κ works uniformly across inputs for the sector-measure consumer estimate.
- **III.5.33** [`charged_at`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Grant.lean#L61-L66) *(numbered result)* — A pointwise inequality on sector points implies the sector charge condition.
- **III.5.34** [`pre_center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Through.lean#L70-L122) *(numbered result)* — A framed patch over the actual field predicts remote no-hole behaviour from curved precision before derivative tests.
- **III.5.35** [`unfrozen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Odometer.lean#L130-L163) *(numbered result)* — The predicted affine energy bounds the local row estimate even for arbitrary formal fields away from frozen regions.
- **III.5.36** [`perturb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/DCompare.lean#L190-L207) *(key result)* — The affine matrix D changes by a controlled amount under local perturbations satisfying a stencil bound, with cost polynomial in the stencil.
- **III.5.37** [`arc_bill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Ground.lean#L51-L130) *(numbered result)* — On a real weak patch, the affine approximation error of the local rows is bounded uniformly pointwise in sector.
- **III.5.38** [`guard_δ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Breath.lean#L83-L132) *(numbered result)* — Given a displacement size δ along the central chart, one can choose ε so that trigger disappearance is guaranteed on the same read.
- **III.5.39** [`bedrock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L142-L158) *(key result)* — For large x, the Gram matrix of the step is served by a fixed window promise uniformly over all admissible step data.
- **III.5.40** [`night`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Hour.lean#L55-L116) *(key result)* — For a funded patch with a reserve and wedge conditions, there is ε>0 such that for large scale the plateau tests (Keys) hold.
- **III.5.41** [`gram_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/IndexCost.lean#L165-L181) *(key result)* — There is a uniform constant such that the Gram cost of the counted array is bounded across all admissible step data.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

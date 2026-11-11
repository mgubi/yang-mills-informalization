# IV.1. Infinite volume: extraction of a subsequence and the Euclidean axioms of the limit — detailed notes

> The full account of unit IV.1: every proposition with its proof sketch, checked against the Lean in two rounds and edited. The condensed outline and the map of the Lean are on the [unit page](../units/IV-1.md).

[Unit page](../units/IV-1.md) · [All units](../units.md) · [Overview](../README.md)

**Part:** IV, infinite volume (chapter 10). **Lean:** [`YM/Extraction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction), [`YM/Cells`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells), [`YM/Slice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice), [`YM/Euclid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid), [`YM/Dash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash), [`YM/Next/EXTRACTION`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION), [`YM/Lane`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lane), and the proofs of the work items [D01](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D01.lean), [D02](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D02.lean), [D03](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D03.lean), [D04](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D04.lean), [D05](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean), [D06](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D06.lean). Their statements are in [`YM/Bid/Drops.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean), which is filed with III.10. **Size:** 7,444 lines in 1,049 declarations used by the main theorem. Other material in these folders concerns stress tensors, Maxwell comparison and label quotients (Parts V–VII), or corrected fields (III.11–III.12).

## 1. What this unit proves

**Setting and notation.** Let $G$ be a compact matrix gauge group and $C$ a Wilson family (II.2, III.13). It has:

- lattice spacings $a_N\downarrow0$, with $a_0=1$, $a_{N+1}=a_N/b_N$ and $b_N\ge3$ odd;

- periods $L_p\uparrow\infty$, each divisible by $4$;

- couplings $\beta_{N,p}$;

- the periodic lattice $\Lambda_{N,p}=(\mathbb Z/(L_p/a_N)\mathbb Z)^4$, whose sites are placed in the box $(-L_p/2,L_p/2]^4$;

- the normalized Wilson expectation $\langle\cdot\rangle_{N,p}$.

**Labels.** Labels at degree $d$ (polynomial weight at most $d$) form a finite-dimensional complex space $\mathrm{Label}_d$, given by coefficients in a real basis, so that $v\mapsto\bar v$ is defined. We use the supremum norm on coefficient vectors. $\mathrm{Label}_d$ carries:

- a representation $\rho_d$ of the group $H_4$ of signed coordinate permutations;

- a unit label $1_d$;

- for each axis $a$ the reflected label $\theta_av=\rho_d(s_a)\bar v$, where $s_a$ reverses axis $a$.

**Observables and correlations.** A label $v\in\mathrm{Label}_d$ has a renormalized lattice observable $I_{N,p}(v,r)$ at each site $r$, linear in $v$. Covariance, reality and the unit identity are required for $N\ge\mathrm{ref}(d)$. Write $\widehat r$ for the physical position of a site in $(-L_p/2,L_p/2]^4$. For a label list $v=(v_1,\dots,v_n)$,

$$\mathcal C_{N,p}(v;r)=\Big\langle\prod_{i=1}^nI_{N,p}(v_i,r_i)\Big\rangle_{N,p},\qquad \mathcal C_{N,p}(v;t)=a_N^{4n}\sum_{r\in\Lambda_{N,p}^n}t(\widehat r)\,\mathcal C_{N,p}(v;r).$$

For a lifted tuple $r\in(\mathbb Z^4)^n$, $\mathcal C_{N,p}(v;r)$ means evaluation after reduction modulo $L_p/a_N$; its lifted physical position is $a_Nr$.

**Configuration sets.**

- $\mathrm{Conf}_n$: configurations with $x_i\ne x_j$ for $i\ne j$.

- $\mathrm{Gen}_n$: configurations with $x_i^a\neq x_j^a$ for all $i\ne j$ and all axes $a$. This set is open and dense, and its complement is Lebesgue-null.

- On the torus: $\mathrm{Conf}^{(p)}_n$ requires that for each $i\ne j$ some $x_i^a-x_j^a\notin L_p\mathbb Z$; $\mathrm{Gen}^{(p)}_n$ requires all $x_i^a-x_j^a\notin L_p\mathbb Z$.

**Test functions.** $\mathcal D_n=C_c^\infty(\mathrm{Conf}_n)$. A test function $t$ is *admissible at volume $p$* if $\mathrm{supp}t\subset(-L_p/2,L_p/2)^{4n}$.

**Extractions.** An *extraction* $f$ is a pair of strictly increasing sequences $(N_j)$ and $(p_k)$; a refinement $f\circ g$ passes to subsequences of both. A property of $(N_j,p_k)$ holds *eventually along ordered tails* if it holds for $k\ge k_0$ and then $j\ge j_0(k)$. Convergence along ordered tails means that, for each neighbourhood of the limit, membership holds eventually in this sense. The iterated limits in IV.1.1 (c) also require an actual spacing limit at every admissible fixed volume.

**Tables.** A *table* $S$ assigns to each arity $n$, degrees $d_1,\dots,d_n$ and point $x$ a multilinear form $S(\cdot\,;x)$ on $\mathrm{Label}_{d_1}\times\dots\times\mathrm{Label}_{d_n}$. Its values off $\mathrm{Conf}_n$ play no role.

**Standing hypotheses.**

- **(H1)** The family satisfies its specification (§2, input 1).

- **(H2)** The fixed-volume centered budgets, the power budgets along ordered tails, reflection positivity and the chessboard inequalities hold along $f$, with the quantifiers in §2, input 2.

**Proposition IV.1.1 (subsequential raw limits).** Assume (H1) and (H2) for an extraction $f$. Then there are a refinement $f\circ g=((N_j),(p_k))$, a table $S$ and tables $P_p$ ($p\in\mathbb N$) such that the following hold for every $n$ and every list of labels $v$.

(a) *(Spacing limit at fixed volume.)* For every $p$, $P_p(v;\cdot)$ is continuous on $\mathrm{Gen}^{(p)}_n$. For every compact $K\subset\mathrm{Gen}^{(p)}_n$ and $\varepsilon>0$, for all sufficiently large $j$ and all lifted tuples $r\in(\mathbb Z^4)^n$ with $a_{N_j}r\in K$,

$$|\mathcal C_{N_j,p}(v;r)-P_p(v;a_{N_j}r)|<\varepsilon.$$

(b) *(Volume limit.)* $S(v;\cdot)$ is continuous on $\mathrm{Gen}_n$, and $P_{p_k}(v;\cdot)\to S(v;\cdot)$ uniformly on compact subsets of $\mathrm{Gen}_n$.

(c) *(Ordered smeared limit.)* For every $t\in\mathcal D_n$:

- $t$ is admissible at $p_k$ for $k$ large;

- for every admissible $p$ the limit $V_p=\lim_j\mathcal C_{N_j,p}(v;t)$ exists (in the proof, $V_p=\int tP_p(v;\cdot)$);

- $V_{p_k}\to\int t\,S(v;\cdot)$.

(d) $t\,S(v;\cdot)$ is integrable for every $t\in\mathcal D_n$, i.e. $S$ is locally integrable on $\mathrm{Conf}_n$.

*Status:* theorem. (H2) holds for every $f$ as soon as the volume-uniform budget of §2, input 2, holds ([`Wcmain.projects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L42-L56)). Part (d) uses the uniform bound of Lemma IV.1.d.

*Lean:*

- existence: [`Extraction.crops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Held.lean#L136-L137);

- conclusion: [`RawLimits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L156-L160), with fields [`Order.Meshes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L57-L62), [`Order.VolumePoints`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L64-L66), [`Order.Ordered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L32-L35) and [`Order.limits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L61-L64);

- part (d): [`Order.ordinary`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L115-L153);

- hypothesis (H2): [`CenterPort`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L30-L34).

**Proposition IV.1.2 (limits of label derivatives).** Let $S$ be an ordered limit along $f$ (IV.1.1 (c)) that is locally integrable (IV.1.1 (d)), with (H1) and (H2) along $f$. Let $\mathrm{Null}_d(S)$ be the space of $u\in\mathrm{Label}_d$ with $\int tS(\dots,u,\dots)=0$ for every arity $n$, slot, spectator label list and $t\in\mathcal D_n$. Assume the relay data of §2, input 3:

- projections $\pi_d(N,p)$ on $\mathrm{Label}_d$ converging along ordered tails in operator norm to a projection $\pi_d$;

- the relay properties for every $d$;

- the dimension count $\dim\mathrm{Null}_d(S)\le\dim\ker\pi_d$.

Then $\ker\pi_d=\mathrm{Null}_d(S)$. Moreover there are linear maps $\kappa_{d,e}:\mathrm{Label}_d\to\mathrm{Label}_e$ ($d\le e$) and $\tau_{d,a}:\mathrm{Label}_d\to\mathrm{Label}_{d+1}$ ($a$ an axis) such that, for all $n$, slots $i$, labels $v$ and $t\in\mathcal D_n$,

$$\int t\,S(v_{i\to\kappa v_i};\cdot)=\int t\,S(v;\cdot),\qquad \int t\,S(v_{i\to\tau_av_i};\cdot)=-\int(\partial_{x_i^a}t)\,S(v;\cdot).$$

Here $v_{i\to w}$ is $v$ with the $i$-th label replaced by $w$. In other words, $\partial_{x_i^a}S(v;\cdot)=S(v_{i\to\tau_av_i};\cdot)$ in $\mathcal D'(\mathrm{Conf}_n)$.

*Status:* theorem, conditional on the relay data and the dimension count. Their suppliers in III.10–III.11 are listed in §2, input 3.

*Lean:* [`Work.D04.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D04.lean#L212-L240) (conclusion [`Spans`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L55-L60)), [`Bin.exactC`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L41-L42), [`lifts_model`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L71-L87) (maps [`MonitorOps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L63-L65), identities [`MonitorOps.Wakes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L67-L69)), [`Wakes.through_ties`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L89-L96).

**Proposition IV.1.3 (smoothness of the limit).** Let $S$ be as in IV.1.1, along an extraction for which IV.1.2 applies. Then there is a table $T$ with the following properties.

- $T=S$ on $\mathrm{Gen}_n$, and $T(v;\cdot)\in C^\infty(\mathrm{Conf}_n)$ for every $n$ and $v$.

- IV.1.1 (a)–(d) hold for $T$ along the same extraction and with the same $P_p$.

- $T$ satisfies the basic identities (E1) below.

- The maps $\kappa$ and $\tau$ descend to linear maps $\mathrm{rise}_{d,e}:F_d\to F_e$ and $\partial_{d,a}:F_d\to F_{d+1}$ on the quotients $F_d=\mathrm{Label}_d/\mathrm{Null}_d(T)$. They satisfy, pointwise on $\mathrm{Conf}_n$,

$$T(\dots,\mathrm{rise}\,u,\dots)=T(\dots,u,\dots),\qquad T(\dots,\partial_au_i,\dots)=\partial_{x_i^a}T(\dots,u_i,\dots).$$

Such a pair of maps is a *derivative plan* with its inclusion and derivative identities.

On $\mathrm{Conf}_n$, the smooth ordered limit along a given extraction is unique ([`Order.determined`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L47-L50)).

*Status:* theorem.

*Lean:* [`Org.Arrives.serves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L101-L109) (filed with VIII.1; hypotheses [`Org.Arrives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L83-L86), conclusion [`Org.Cleaner`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L90-L96)), [`Dash.awake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Slew.lean#L26-L58), [`RawLimits.ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L194-L202), [`DiffPlan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L20-L22) with [`Inclusions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L58-L60) and [`Derivatives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L61-L64).

**Proposition IV.1.4 (the Euclidean hierarchy).** Let $T$ be a table and let $f$ be an extraction. Assume (H1), IV.1.1 (a)–(c) hold for $T$ and $T(v;\cdot)\in C^\infty(\mathrm{Conf}_n)$ for every arity $n$ and label list $v$. Then $T$ satisfies (E1)–(E5), with all points in $\mathrm{Conf}_n$:

- **(E1) Basic identities.** $T$ is invariant under simultaneous permutation of points and labels; $T=1$ for $n=0$; and $T((1_d,v);x)=T(v;(x_2,\dots,x_{n+1}))$.

- **(E2) Real spin.** $T(\rho(s)v;sx)=T(v;x)$ for $s\in H_4$, and $T(\bar v;x)=\overline{T(v;x)}$.

- **(E3) Homogeneity.** $T(v;x+s)=T(v;x)$ for every $s\in\mathbb R^4$.

- **(E4) Reflection positivity at points.** Fix an axis $a$ and words $w_1,\dots,w_m$, each a finite list of (point, label) pairs with distinct points and all $x^a>0$. Let $\Theta_aw$ be the word in reverse order with $x^a\mapsto-x^a$ and labels $\theta_a$. Then for all $c\in\mathbb C^m$ the following expression is real and nonnegative:

$$\sum_{i,j}\bar c_ic_j\,T(\Theta_aw_i\,w_j)\ge0.$$

- **(E5) Smeared reflection positivity.** The same holds for tests: replace $w_i$ by pairs (labels $v^{(i)}$, test $t_i\in\mathcal D_{n_i}$ supported in $\{x_k^a>0\ \forall k\}$) and $T(\Theta_aw_iw_j)$ by $\iint\overline{t_i(y)}\,t_j(z)\,T(\Theta_a(v^{(i)},y)\,(v^{(j)},z))$. These integrals converge absolutely, and the Gram matrix is positive semidefinite.

If in addition **(E7)** (polynomial bounds on derivatives) holds, then $T$ satisfies the hierarchy (E1)–(E7), where:

- **(E6)** is smoothness on $\mathrm{Conf}_n$;

- **(E7)** says: for every arity $n$, degree list, label list $v$ and order $j\ge0$, there are $A\in\mathbb N$ and $C\ge0$ such that $\|D^j_xT(v;x)\|\le Cr^{-A}$ whenever $0<r\le1$ and $|x_i-x_\ell|_\infty\ge r$ for every $i\ne\ell$. Here $D^j$ is the iterated real Fréchet derivative with its operator norm on $(\mathbb R^4)^n$. The constants are independent of $r$ and $x$.

*Status:* theorem. (E6) and (E7) are hypotheses of the assembly. (E6) is supplied by IV.1.3; (E7) is supplied by IV.1.5 together with the promotion lemma B10 of V.1.

*Lean:*

- assembly: [`Order.assembles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Harvest.lean#L62-L65), producing [`Table.Hierarchy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L141-L148);

- fields: [`Basic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L75-L78), [`RealSpin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L80-L84), [`Homogeneous`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L86), [`RP`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L123-L124), [`RPSmear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L136-L138), [`Smooth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L88-L89), [`Capped`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L97-L99);

- call site: [`Org.Cleaner.stay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L113-L114).

**Proposition IV.1.5 (polynomial bound at short distance; D05).** Assume (H1) and (H2) along $f$. Let $T(v;\cdot)$ be smooth on $\mathrm{Conf}_n$ for every arity and label list, and suppose $T$ satisfies IV.1.1 (a)–(b) along $f$. Then for every arity $n$, degree list $(d_i)$ and label list $v$ there is $C\ge0$, independent of $r$ and $x$, such that

$$|T(v;x)|\le C\,r^{-A}\quad\text{whenever }0<r\le1\text{ and }|x_i-x_\ell|_\infty\ge r\text{ for every }i\ne\ell,\qquad A=4n\big(1+\max_id_i\big).$$

The maximum of an empty degree list is taken to be $0$. The displayed exponent follows by choosing the largest degree in the proof.

*Status:* theorem. Together with the derivative plan of IV.1.3, the lemma B10 of V.1 upgrades this to (E7).

*Lean:* [`Work.D05.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean#L160-L180) (statement [`Bid.D05`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L70-L71), conclusion [`Bid.OneCap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L97-L98)); promotion [`Bid.B10`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L101-L102), proved by [`Work.B10.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B10.lean#L95-L105).

**Proposition IV.1.6 (the derivative plan respects the symmetries; D06).** Let $T$ be smooth on $\mathrm{Conf}_n$ for every arity and label list, permutation symmetric and with real spin, and let $(\mathrm{rise},\partial)$ be a derivative plan for $T$ satisfying its inclusion and derivative identities. Use $\rho_d$ also for the induced action on $F_d$. For every $d\le e$, axis and $s\in H_4$:

- $\mathrm{rise}_{d,e}$ and every $\partial_a$ commute with complex conjugation;

- $\mathrm{rise}$ commutes with $\rho(s)$ for every $s\in H_4$;

- $\rho_{d+1}(s)\,\partial_b=\sum_a s_{ab}\,\partial_a\,\rho_d(s)$, where $(s_{ab})$ is the signed permutation matrix of $s$.

*Status:* theorem.

*Lean:* [`Work.D06.compat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D06.lean#L98-L135), [`Work.D06.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D06.lean#L137-L139), [`DiffPlan.Orientation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L66-L72).

**Remarks.**

1. **The package handed downstream** is the bundle [`Next.Extract.Base`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L42-L51). It contains (H1), (H2), the relay data, the raw limit $S$ with local integrability and the spanning property, the smooth table $T$ with its plan, the bound of IV.1.5 and the hierarchy of IV.1.4. It also records $\ker\pi_d=\mathrm{Null}_d(T)$ ([`Base.null`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L72-L74)). On the main theorem's path it is assembled in III.11 ([`MergeProof.Accent.rated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L48-L71)) as follows:

   - extract with [`crops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Held.lean#L136-L137);

   - refine further so that the projections converge ([`include_projections`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L86-L93));

   - convert the relay estimates ([`Projected.ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L178-L181)).

   - include the rank-detector limits along a further common refinement and obtain the dimension comparison ([`Beam.arriving_seed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Beam.lean#L153-L180)), then apply IV.1.2–IV.1.5. All earlier limits are retained.

2. **The extraction is subsequential in both indices.** It gives no independence from the volume subsequence. The public form of the theorem ([`WilsonFamily.Converges`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L85-L90), via [`wilsonLimit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L44-L56)) needs the ordered limit along the *full* sequence of spacings. The upgrade is proved in III.13 by [`UVExtension.Reports.useFull`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Ultraviolet.lean#L62-L69), using [`full_tests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Ultraviolet.lean#L50-L58). At each admissible fixed volume, uniqueness identifies the full-sequence smeared limit with its subsequential limit; the volume limit and the table $T$ are retained.

## 2. What it uses

**Inputs from other units.**

1. **Specification of the family.** The definition is in II.1–II.2. It is proved for the constructed family in III.13 ([`UVExtension.Mast.calibrated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Forest/Glue.lean#L35-L36)). Its consequences used here are the following; covariance, reality and the unit identity require $N\ge\mathrm{ref}(d)$:

   - $\beta_{N,p}\ge0$;

   - $I_{N,p}(v,x)$ is continuous, gauge invariant and linear in $v$;

   - $I_{N,p}(v,x)$ depends only on links inside a fixed finite stencil translated to $x$; for each stencil offset $z$ and axis $a$, $20(|z^a|+1)\le L_p/a_N$ whenever $N\ge\mathrm{ref}(d)$;

   - for $N\ge\mathrm{ref}(d)$, the terminal transfer $B_{d,N,p}$ from cutoff coordinates to reference coordinates is normalized as follows: the coefficient trajectory of $v$ has $x_{\mathrm{ref}(d)}=v$, $x_N=B_{d,N,p}^{-1}v$, and $\|x_{m+1}\|_1\le\mathrm{column}_{m+1}\|x_m\|_1$ for $\mathrm{ref}(d)\le m<N$;

   - translation covariance;

   - $H_4$-covariance: $I(\rho(s)v,sx+b)$ is $I(v,x)$ composed with the pull-back of the lattice symmetry;

   - reality: $I(\bar v,x)=\overline{I(v,x)}$;

   - $I(1_d,x)=1$ for $N\ge\mathrm{ref}(d)$.
   *Lean:* [`Family.Makes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62), [`Family.O`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L42), [`rotated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L88-L98), [`reality`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L74-L86), [`constant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L100-L102).

2. **Centered chessboard budgets** (interface item 2). A sufficient volume-uniform input is the following: for every degree $d$, every $R>0$ and every $\varepsilon>0$ there is $A\ge0$ such that for every $m\ge\mathrm{ref}(d)$ there is $N_0\ge m$ with the following property. For all $N\ge N_0$, all $p$, all $v\in\mathrm{Label}_d$ with $\|v\|\le R$, and all sites $x$:

   - $I_{N,p}(v,x)$ is an interior function of the base cell of the centered tiling $\mathcal T_m(x)$;

   - $\|I_{N,p}(v,x)\|_{\mathcal T_m(x)}\le A\,a_m^{-d-\varepsilon}$.

   This stronger volume-uniform input implies **(H2)** along every extraction $f$. Precisely, (H2) requires:

   - for every fixed $p$ and label $v$, at every sufficiently fine scale $m$ there is $A\ge0$ such that the centered interior condition and root bound $\|I_{N_j,p}(v,x)\|_{\mathcal T_m(x)}\le A$ hold for all $x$ and all large $j$, with $N_j\ge\max(m,\mathrm{ref}(d))$ for $v\in\mathrm{Label}_d$;

   - reflection positivity, the chessboard inequality and subadditivity of roots at every $(N,p)$; and, for every $d$, $R>0$ and $\varepsilon>0$, numbers $m_0\ge\mathrm{ref}(d)$ and $A\ge0$ such that for every $m\ge m_0$ and $\eta>0$, eventually along ordered tails, the centered interior condition and $\|I_{N,p}(v,x)\|_{\mathcal T_m(x)}\le A\,a_m^{-d-\varepsilon}+\eta$ hold for all $\|v\|\le R$ and all sites $x$, with $N\ge m$.

   On the main theorem's path it is supplied by [`MergeProof.Accent.gardena`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Gardens.lean#L19-L40) (III.11). The variant [`Org.Assembly.wcmain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L75-L76) is not on that path.
   *Lean:* [`Wcmain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L38-L40), [`centeredBudget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L21-L23), [`Cells.center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L34-L40), [`CellHyp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L68-L79), [`CenterPort.book`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L58-L66), [`CenteredBook`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L25-L28).

3. **Relay data** (interface item 3, in the form used here; III.10–III.11). A family $Q_{N,p}(x)$ is *chessboard-small* if there is a real rate $y(N,p)\to0$ along ordered tails with the following property. For every integer $q\ge0$ and lower scale $m$, there is $k\ge m$ such that, eventually along ordered tails with $N\ge k$, the bound $\|Q_{N,p}(x)\|_{\mathcal T}\le y(N,p)$ and the interior condition hold for every translated bond tiling $\mathcal T$ of side $a_k$ and every $x$ in its base cell with lattice coordinates $z^a$ relative to the base corner satisfying

   $$M\le z^a,\qquad z^a+M+1\le a_k/a_N,\qquad M=\Big\lfloor\frac{a_k/a_N}{8(q+1)}\Big\rfloor.$$
   Thus the error bound must hold for translated cells with prescribed relative interior margins. Centered cells alone do not suffice.

   A label family $w(N,p)$ has *subpolynomial growth* if, for every $\varepsilon>0$,

   $$\|B_{d,N,p}^{-1}w(N,p)\|\le a_N^{-\varepsilon}$$
   eventually along ordered tails. For each degree $d$ the relay data are:

   - projections $\pi_d(N,p)$ on $\mathrm{Label}_d$, bounded at each fixed $p$ and along ordered tails;

   - *pace*: for $v\in\mathrm{Label}_d$ and each axis $a$ there are degree-$(d+1)$ labels $w(N,p)$ of subpolynomial growth such that $I_{N,p}(w(N,p),\cdot)-a_N^{-1}\big[I_{N,p}(v,\cdot+e_a)-I_{N,p}(v,\cdot)\big]$ is chessboard-small;

   Here $e_a$ is one lattice step, of physical length $a_N$.

   - *transit*: the same, with a label of degree $d'\le d$ approximated at degree $d$;

   - *mark*: if $w(N,p)\in\ker\pi_d(N,p)$ has subpolynomial growth, then $I_{N,p}(w(N,p),\cdot)$ is chessboard-close to measurable observables, bounded at each cutoff and site, whose correlations with arbitrary spectator labels vanish exactly at every fixed positive separation, eventually along ordered tails;

   - the dimension count $\dim\mathrm{Null}_d\le\dim\ker\pi_d$.

   Supplied in III.11 by [`MergeProof.Scotia`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Eureka.lean#L16-L20), [`savings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L19-L47) and [`Beam.arriving_seed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Beam.lean#L153-L180).
   *Lean:* [`Presentation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L39-L41), [`Affordable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L46-L48), [`RelayCosts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L115-L119), [`Bid.RelayBin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L46-L52), [`vet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L39), [`close`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L25), [`dollar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L18-L19), [`heighten`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L43-L44), [`Bin.shortage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L39).

4. **Analytic toolkit (III.16).** The Lipschitz bound for traces of products of a positive kernel (Lemma IV.1.e).
   *Lean:* [`TimeKernel.passage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L76-L106), [`Holder.finite_lip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L170-L229), [`Holder.estimation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L124-L165), [`Holder.convexStrip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Holder.lean#L130-L132), [`TimeKernel.learns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L109-L119).

5. **Scale schedule (I.1, III.2, V.1).**

   - Gentleness, $\log b_m/\log a_m^{-1}\to0$, gives $a_{m+1}\ge c\,a_m^2$ ([`Schedule.Gentle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L129-L130), [`mesh_inequality`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L133-L162), [`OS.thickness`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Halves.lean#L29-L39)). This is used in D05.

   - The column constants of the renormalization group have $\sum_{m\le N}\log(\text{column}_m)=o(\log a_N^{-1})$. This is used in D01.

6. **Promotion of derivative bounds (V.1).** The lemma B10 (see IV.1.5).

Interface item 4 (whole-sequence convergence at fixed volume) enters only in Remark 2: the extraction itself passes to a spacing subsequence. Interface item 5 (corrected fields) is not used either: [`CellHyp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L68-L79) consists only of the chessboard inequality and the budget for $I_{N,p}$. The corrected-field definitions serve III.11–III.12.

**Standard mathematics.**

- *Reflection positivity of the Wilson action, site and bond reflections.* K. Osterwalder, E. Seiler, Ann. Phys. 110 (1978) 440–471. Axioms: Osterwalder–Schrader, CMP 31 (1973), 42 (1975).

- *Chessboard estimates.*
  - J. Glimm, A. Jaffe, T. Spencer, CMP 45 (1975) 203–216;
  - J. Fröhlich, R. Israel, E. Lieb, B. Simon, CMP 62 (1978) 1–34 and J. Stat. Phys. 22 (1980) 297–347;
  - M. Biskup, *Reflection positivity and phase transitions in lattice spin models*, LNM 1970 (2009), §5.

- *Transfer matrices of reflection-positive lattice theories.* Glimm–Jaffe, *Quantum Physics*, 2nd ed.

- *Hölder's inequality for Schatten norms and complex interpolation (Hadamard three lines).* B. Simon, *Trace Ideals and Their Applications*; Reed–Simon II, §IX.4. Cauchy's estimate for holomorphic functions.

- *Compactness and integration.* Arzelà–Ascoli; Tychonoff for countable products; dominated convergence.

- *Regularity.* A distribution whose localizations have rapidly decreasing Fourier transforms is $C^\infty$ (Hörmander, *The Analysis of Linear Partial Differential Operators I*, Ch. 7).

**Imported constants and hypotheses.**

- Numbers: the budget constants $A(d,R,\varepsilon)$ and thresholds $N_0(m,d,R,\varepsilon)$ (input 2); the reference levels $\mathrm{ref}(d)$; the gentleness constant $c$ of input 5. The exponent $4n(1+\max d_i)$ of IV.1.5 comes from choosing $\varepsilon=1$ and from applying $a_{m+1}\ge ca_m^2$ twice.

- Hypotheses: (H1), (H2), and the relay data and dimension count (input 3). The promotion theorem B10 is proved in V.1.

## 3. Strategy

Chessboard estimates bound correlations at distinct points uniformly in the cutoff and volume. To obtain equicontinuity, fix an axis and express a correlation as a cyclic trace of transfer kernels and observable kernels supported in slabs. Moving one insertion transfers length between two gaps. Finite-dimensional complex interpolation bounds the trace for complex gap shifts; Cauchy's estimate gives a Lipschitz bound. The required column moments are bounded by the same chessboard budgets. This argument needs separation in every coordinate. Two applications of Arzelà–Ascoli, with countable basis indices, give spacing limits at every fixed volume and then a volume limit on $\mathrm{Gen}_n$. Bounds on all of $\mathrm{Conf}_n$ supply domination for smeared limits.

Smoothness uses the label calculus. The relay estimates approximate each lattice forward difference quotient by a degree-raised observable. Summation by parts computes its weak limit, and chessboard-small errors have vanishing smeared limits. The projections and dimension count identify the null labels. A finite-dimensional compactness argument then replaces the varying approximating labels by fixed linear maps, giving distributional derivatives as kernels with raised labels. Iteration yields rapid Fourier decay after localization, hence a smooth representative on all distinct-point configurations.

The exact lattice symmetries pass first at generic grid points and then by continuity. Reflection positivity passes for joint tests supported in a half-space; normalized bump functions give its pointwise form. A two-scale choice of cells yields a polynomial bound at short distances, and the derivative identities promote it to bounds of every order. These arguments assemble the Euclidean hierarchy.

## 4. Steps

### 4.1 Reflection positivity and chessboard estimates

**Lemma IV.1.a (reflection positivity of the Wilson measure).** Let $\Lambda=(\mathbb Z/n\mathbb Z)^4$ with $n$ even. Let $a$ be an axis, $b\in\mathbb Z/n$, and $\Theta$ either the site reflection $x^a\mapsto2b-x^a$ or the bond reflection $x^a\mapsto2b-1-x^a$ (other coordinates fixed), acting on configurations by pull-back. Let $\Lambda_+$ be the half-torus $0<(x^a-b)\bmod n<n/2$ (site case) or $0\le(x^a-b)\bmod n<n/2$ (bond case), with residues in $\{0,\dots,n-1\}$. For every $\beta\ge0$ and every bounded, measurable, gauge-invariant $F$ depending only on links in $\Lambda_+$,

$$\langle F\,\overline{F\circ\Theta}\rangle_\beta\ge0.$$

*Proof sketch.* This is the Osterwalder–Seiler argument. Reparametrize configurations by the links in the two fixed planes, the links crossing them, and the two open halves; this map preserves the measure.

- *Site reflections.* Given the plane links, the halves are independent and exchanged by $\Theta$, so the expectation is a weighted integral of $|\mathbb E(F\mid\text{plane links})|^2$ with nonnegative weights.

- *Bond reflections.* Integrating the crossing links gives for each plane the one-step kernel $K_\beta(X,Y)$. It is positive semidefinite because $\mathrm{Re}\,\mathrm{tr}(XY^*)$ is a sum of Gram kernels, and exponentials, products and averages of positive semidefinite kernels stay positive semidefinite (Schur). The product of the two boundary kernels is positive semidefinite, so its quadratic integral is nonnegative.

*Lean:* [`Slice.reflected_positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Reflection.lean#L98-L114), [`Cells.Positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L116-L117), [`Cells.Interior`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L109-L113), [`Cells.Cut`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L40-L45), [`Slice.portPos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Gate.lean#L94-L102), [`Slice.step_positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Positive.lean#L81-L91).

**Lemma IV.1.b (chessboard estimate).** Let $\mathcal T$ be a tiling of $\Lambda$ into $M^4$ congruent cells ($M$ even), with site or bond seams. For a cell $c$ let $\theta_c$ be the composition of seam reflections carrying the base cell to $c$. Put $\mathrm{copy}_cF=F\circ\theta_c$, or its complex conjugate when $\theta_c$ reverses an odd number of axes. For $F$ interior to the base cell (bounded, measurable, gauge invariant, depending only on links inside it) put $\|F\|_{\mathcal T}=|\langle\prod_c\mathrm{copy}_cF\rangle_\beta|^{1/M^4}$. If $\beta\ge0$, then for interior $F_c$

$$\Big|\Big\langle\prod_c\mathrm{copy}_cF_c\Big\rangle_\beta\Big|\le\prod_c\|F_c\|_{\mathcal T},$$

and $\|\cdot\|_{\mathcal T}$ is subadditive. By (H1) this holds for every $(N,p)$ of the family.

*Proof sketch.* This is the Fröhlich–Israel–Lieb–Simon argument.

- *Fold.* For an assignment $A$ of functions to cells, put $\Phi(A)=|\langle\prod_c\mathrm{copy}_c A_c\rangle_\beta|$. Cauchy–Schwarz for a band cut gives $\Phi(\mathrm{assign}(f,g))^2\le\Phi(\mathrm{assign}(f,f))\Phi(\mathrm{assign}(g,g))$, where the two assignments supply the two halves.

- *Maximization.* Among assignments of finitely many functions to cells, the maximum of $|\langle\prod\rangle|$ is attained by a constant assignment, because a fold-closed property satisfied by some assignment is satisfied by a constant one.

- *Normalization.* Apply this to $F_c/(\|F_c\|+\epsilon)$ and let $\epsilon\to0$.

- *Subadditivity.* Expand $\prod_c(F+F')$ into $2^{M^4}$ assignments and apply the estimate to each.

*Lean:* [`Cells.Seam`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L14-L19), [`Cells.laws`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L21-L24), [`Tiling.tiles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Chess.lean#L80-L105), [`Tiling.maximize`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Chess.lean#L32-L63), [`Tiling.fold_both`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Polar.lean#L94-L102), [`Tiling.existence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Flood.lean#L110-L128), [`Tiling.adds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Chess.lean#L108-L131), [`Tiling.rootTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226-L227), [`Tiling.copy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L221-L224), [`Tiling.planted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Embedded.lean#L25-L38), [`Cells.seamless`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L81-L84).

**Lemma IV.1.c (roots of uncentered observables).** Assume (H1), $m\le k\le N$ and $N\ge\mathrm{ref}(d)$. Let $\mathcal X$ be a bond tiling of $\Lambda_{N,p}$ with cells of side $a_m$, and let $u\in\mathrm{Label}_d$ have all stencil offsets of coordinate size $<a_k/a_N$, and assume that for every image $gu$, $g\in H_4\times\{1,\text{conj}\}$, the centered roots satisfy $\|I(gu,y)\|_{\mathcal T_k(y)}\le A$ for all $y$, with the centered interior conditions. If $o$ is at distance $\ge3a_k$ from the boundary of the base cell of $\mathcal X$, then $\|I(u,o)\|_{\mathcal X}\le A$.

*Proof sketch.*

- *Centred case.* If $o$ is the centre of a fine cell aligned with $\mathcal X$, the $\mathcal X$-copies of $I(u,o)$ are copies, in the fine centered tiling, of observables $I(gu,y)$ (by $H_4$-covariance and reality) sitting in distinct fine cells. The chessboard estimate in $\mathcal T_k$, with $1$ in the remaining cells, gives $\|I(u,o)\|_{\mathcal X}^{\sharp \mathcal X}\le A^{\sharp \mathcal X}$.

- *Log-convexity.* Under unit translations, $\|F\|_{\mathcal X}^2\le\|F\circ\tau_{-e}\|_{\mathcal X}\,\|F\circ\tau_{e}\|_{\mathcal X}$. This follows from translation invariance and the chessboard estimate with alternating translates, since reversed cells see the opposite shift. A nonnegative log-convex sequence is bounded by its values at the endpoints.

- *Interpolation.* Move between fine-cell centres one axis at a time.

*Lean:* [`Around.interior_from`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Around.lean#L95-L129), [`Around.swept`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Around.lean#L57-L93), [`Tiling.pathway`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Slide.lean#L89-L101), [`Tiling.trip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Slide.lean#L60-L86), [`Spin.uses`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Around.lean#L42-L50).

### 4.2 Boundedness at separated points

**Lemma IV.1.d (uniform bound).** Assume (H1). Let $x_1,\dots,x_n\in\Lambda_{N,p}$ be such that every pair has some coordinate at cyclic physical distance $\ge r$. Let $m\le k\le N$ with $a_m<r$ and $6n\,a_k<a_m$, and let $A\ge0$ bound the centered roots at scale $k$ of all images $gv_i$, $g\in H_4\times\{1,\text{conj}\}$, with the centered interior conditions. Assume $N\ge\max_i\mathrm{ref}(d_i)$ and that all stencil offsets of these labels have coordinate size $<a_k/a_N$. Then $|\mathcal C_{N,p}(v;x)|\le A^n$. Under (H1)–(H2) this yields the bound **(B)**:

- **(B1)** for each $p$ and compact $K\subset\mathrm{Conf}^{(p)}_n$, $|\mathcal C_{N_j,p}|$ is bounded at lattice points of $K$ for $j$ large;

- **(B2)** for compact $K\subset\mathrm{Conf}_n$, it is bounded eventually along ordered tails.

*Proof sketch.*

- By pigeonhole, some translate of the tiling with cells of side $a_m$ puts every $x_i$ at distance $\ge3a_k$ from all cell boundaries (possible because $n\cdot2\cdot3a_k<a_m$).

- Distinct points lie in distinct cells because $a_m<r$.

- Each $I(v_i,x_i)$ is the copy of some $I(g_iv_i,y_i)$ with $y_i$ in the base cell.

- Apply the chessboard estimate with $1$ elsewhere, then Lemma IV.1.c.

- For (B): by compactness a single $r>0$ works on $K$, and for large $p$ there is no wrap-around. Choose $m$, then $k$, then take the budgets from (H2).

*Lean:* [`Around.fits_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Held.lean#L73-L114), [`Around.size_done`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Held.lean#L120-L132) (conclusion [`Bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L25-L30)), [`Tiling.fits_together`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Proximity.lean#L53-L66), [`Gaps.some`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Gaps.lean#L63-L80), [`Gaps.someGrows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Gaps.lean#L129-L137).

### 4.3 Equicontinuity

**Lemma IV.1.e (Lipschitz bound for traces; proved in III.16).** Let $X$ be a compact metric space with a finite Borel measure, $K$ a continuous positive semidefinite kernel, and $B_1,\dots,B_n$ continuous kernels, with $n\ge2$. Let $q,w\ge1$ be integers, put $M=2qw$, and assume $Z=\mathrm{Tr}\,K^M>0$. Take gaps $Y,Y'\in\mathbb N^n$ with $nw+\sum_kY_k=M$. Suppose $Y'$ transfers an integer $\ell\ge0$ units from one gap to a different gap, $Y_k>2r$ for every $k$, and $0\le\ell\le r$ with $r>0$. If

$$\|B_k\|_{2q}:=\bigl(\mathrm{Tr}(B_k^*B_k)^q\bigr)^{1/(2q)}\le c_kZ^{1/(2q)},$$

then

$$\Big|\mathrm{Tr}\prod_kB_kK^{Y'_k}-\mathrm{Tr}\prod_kB_kK^{Y_k}\Big|\le Z\Big(\prod_kc_k\Big)\frac{\ell}{r}.$$

Here traces of kernel products are their cyclic integrals.

*Proof sketch.* Approximate the cyclic integrals by finite matrices $(A,b_k)$ using one quadrature for all kernels and their adjoints. For the positive semidefinite matrix $A$, use the entire spectral family equal to $e^{z\log\lambda}$ on positive eigenvalues and zero on $\ker A$ for every $z$. It agrees with $A^m$ at positive integers $m$. The trace with gap vector $W(z)=Y+z(e_i-e_j)$ is entire. On $|z|\le2r$, all real gap parts are nonnegative and

$$\frac{n}{2q}+\sum_k\frac{\mathrm{Re}\,W_k(z)}{M}=1.$$

Writing $Z_A=\mathrm{Tr}\,A^M$, complex interpolation gives the bound $\prod_k\|b_k\|_{2q}\,Z_A^{1-n/(2q)}$. Cauchy's estimate bounds the derivative on $|z|\le r$ by this quantity divided by $r$. Integrate from $0$ to $\ell$ and pass to the kernel limit; the partition traces and column moments converge under the common quadrature.

*Lean:* [`TimeKernel.passage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L76-L106), [`Holder.finite_lip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L170-L229), [`Holder.estimation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L124-L165), [`Holder.leap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L22-L24).

**Lemma IV.1.f (the Wilson transfer matrix).** Fix $\beta\ge0$, an axis $a$ and $\Lambda_{N,p}$. The one-step kernel $K_\beta$ on slice configurations, with the links in direction $a$ integrated out and half of each slice action assigned to either side, is continuous and positive semidefinite. With $M=L_p/a_N$, $\mathrm{Tr}\,K_\beta^M=Z$ is the partition function. Every continuous observable local to a slab of width $1\le w<M$ lattice steps has a slab representation, whose weighted integration gives a continuous kernel $B$. Products of such observables, all of width $w$ and separated by gaps $Y$, satisfy

$$\Big\langle\prod_kF_k\Big\rangle_{\beta}=\frac{\mathrm{Tr}\prod_kB_kK_\beta^{Y_k}}{Z},\qquad nw+\sum_kY_k=M.$$

If $M=2qw$ with $q\ge1$, the normalized column bounds $\bigl(\mathrm{Tr}(B_k^*B_k)^q/Z\bigr)^{1/(2q)}\le c_k$ therefore give the difference bound $(\prod_kc_k)\ell/r$ under the gap and shift hypotheses of Lemma IV.1.e.

*Proof sketch.* Fill the complement of the slab with a fixed configuration to express the observable as a function of its slab links. Integrate the interior links with the Wilson weights. Fubini's theorem identifies the product with the cyclic kernel integral. Apply Lemma IV.1.e and divide by $Z>0$.

*Lean:* [`Slice.step_positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Positive.lean#L81-L91), [`Time.partition_seen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Calendar.lean#L34-L38), [`Time.powering`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Calendar.lean#L72-L102), [`Time.selects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Resident.lean#L74-L87), [`Time.organized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Ordered.lean#L68-L115).

**Lemma IV.1.g (chessboard bound for the column norm).** Assume (H1), $m\le N$ and $N\ge\mathrm{ref}(d_v)$ for a label $v$ of degree $d_v$. Put $d=a_m/a_N$. Suppose $F=I_{N,p}(v,x)$ and $J=I_{N,p}(\theta_av,x)$ are interior to the base cell of $\mathcal T_m(x)$ with roots $\le c$. Then $F$ has a slab representation of width $2d$ lattice steps. Its kernel $B$ and the kernel of $J$ are adjoints. Writing $L_p/a_N=4qd$, with $q\ge1$, and letting $Z$ be the partition function, one has

$$\left(\frac{\mathrm{Tr}(B^*B)^q}{Z}\right)^{1/(2q)}\le c.$$

*Proof sketch.* The observable $J$ equals $\overline{F\circ\Theta}$ for the site reflection through $x^a$. Reversing the slab gives the adjoint kernel. The column consists of $2q$ alternating copies of $J$ and $F$, placed in every other cell of the row of $\mathcal T_m(x)$ in direction $a$. Apply the chessboard estimate with $1$ in all other cells and take the $1/(2q)$-th power.

*Lean:* [`Tiling.enough`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Present.lean#L76-L111), [`Difference.reading`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Difference.lean#L51-L87), [`Difference.stars`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Difference.lean#L37-L49).

**Lemma IV.1.h (Lipschitz bound in one coordinate).** Assume (H1), $m\le N$ and $N\ge\max_i\mathrm{ref}(d_i)$. Let $n\ge2$ lattice points have pairwise cyclic physical $a$-gaps $>2a_m+2\rho$, with $\rho>0$. Assume the centered interior conditions and let $c_i$ bound the roots of $I(v_i,x_i)$ and $I(\theta_av_i,x_i)$ on $\mathcal T_m(x_i)$. Moving one point by $h\in a_N\mathbb N$, $0\le h\le\rho$, in direction $+e_a$ changes $\mathcal C_{N,p}(v;x)$ by at most $(\prod_ic_i)\,h/\rho$.

*Proof sketch.* Put $d=a_m/a_N$ and reorder the points cyclically in the $a$-direction (permutation symmetry). Represent each observable by a brick of width $2d$; the gaps are then $>2\rho/a_N$ in lattice units. Combine Lemmas IV.1.f and IV.1.g.

*Lean:* [`Difference.primitive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Difference.lean#L90-L145), [`Difference.chrono`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Difference.lean#L24-L35).

**Lemma IV.1.i (equicontinuity).** Under (H1)–(H2), for every arity $n$:

- **(Q1)** for every $p$, compact $K\subset\mathrm{Gen}^{(p)}_n$, label list $v$ and $\epsilon>0$, there is $\delta>0$ such that, for all large $j$, the lifted lattice correlations at any $x,y\in K$ with $|x-y|<\delta$ differ by less than $\epsilon$;

- **(Q2)** for every $\epsilon>0$, the same assertion holds for every compact $K\subset\mathrm{Gen}_n$, eventually along ordered tails, with one $\delta$ independent of the volume.

Quantitatively, let $R>0$ bound below all cyclic coordinate gaps on a closed neighbourhood of $K$, and let $A$ bound the centered roots of the $v_i$ and all $\theta_av_i$ at a scale $a_m<R/4$. Then $|\Delta\mathcal C|\le16nA^n|x-y|/R$ for $|x-y|$ sufficiently small.

*Proof sketch.* Telescope through at most $4n$ coordinate moves inside the neighbourhood and apply Lemma IV.1.h with $\rho=R/4$. For a negative move, interchange its endpoints. For $n=1$ use translation invariance; $n=0$ is constant.

*Lean:* [`Difference.completed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L181-L214) (conclusion [`TransferLip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L26-L30)), [`comparable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L115-L163), [`stepTotal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L66-L103), [`permits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L51-L64), [`Gaps.all`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Gaps.lean#L82-L93), [`Gaps.allGrows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Gaps.lean#L119-L127).

### 4.4 Compactness and ordered limits

**Lemma IV.1.j (Arzelà–Ascoli for countably many families).** Let $(Y_i)$ be a countable family of locally compact separable metric spaces, $U_i\subset Y_i$ open, and $T^{(j)}_i:Y_i\to\mathbb C$. Assume that $T^{(j)}_i(y)$ is eventually bounded for each $y\in U_i$, and that the family is eventually equicontinuous on compact subsets of $U_i$. Then one strictly increasing sequence $(t_j)$ makes every $T^{(t_j)}_i$ converge locally uniformly on $U_i$ to a continuous limit.

*Proof sketch.* Take countable dense sets and replace the finitely many out-of-bound values at each dense point by a point in its bounding ball. By Tychonoff, the countable product of closed balls is sequentially compact, which gives a single subsequence converging at all dense points. Equicontinuity upgrades this to locally uniform convergence.

*Lean:* [`localAscoli`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Tame.lean#L100-L114), [`simultaneous`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Simultaneous.lean#L21-L32), [`oscillation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Tame.lean#L20-L21).

**Lemma IV.1.k (two-stage extraction).** The bound (B) and equicontinuity (Q) along $f$ imply IV.1.1 (a)–(b) along a refinement.

*Proof sketch.*

- *Indexing.* Index by $(p,n,\text{degrees},\text{basis vectors})$, a countable set. Limits are taken on basis labels and extended multilinearly.

- *Spacing.* Use the step extensions of the lattice correlators on $\mathrm{Gen}^{(p)}_n$; the extension moves points by at most $4na_N$. Equicontinuity comes from (Q1) and the bound from (B1). Lemma IV.1.j gives one subsequence of spacings for all $p$.

- *Volume.* Use the functions $P_{p_k}$ on $\mathrm{Gen}_n$. Equicontinuity and the bound come from (Q2) and (B2) passed to $j\to\infty$; this uses that a compact subset of $\mathrm{Gen}_n$ lies in $\mathrm{Gen}^{(p)}_n$ for large $p$. Apply Lemma IV.1.j again.

*Lean:* [`first_surface`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L166-L184), [`setMeshes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L78-L105), [`each_oscillates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L51-L68), [`volume_oscillates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L116-L138), [`fitted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Stencil.lean#L69-L70).

**Lemma IV.1.l (ordered smeared limits and local integrability).** The bound (B) together with IV.1.1 (a)–(b) implies IV.1.1 (c)–(d).

*Proof sketch.* Dominated convergence, applied twice.

- *Fixed volume.* At an admissible $p$, the lattice sum is the integral of a step function. It converges almost everywhere (on $\mathrm{Gen}^{(p)}_n$) to $tP_p$ and is dominated by $\sup|t|\cdot D$ on the box, using (B1) on $\mathrm{supp}t\subset\mathrm{Conf}^{(p)}_n$.

- *Volume limit.* $|P_{p_k}|\le D$ on $\mathrm{supp}t\cap\mathrm{Gen}_n$ for large $k$, by (B2) in the limit $j\to\infty$, and $P_{p_k}\to S$ on the full-measure set $\mathrm{Gen}_n$.

IV.1.1 is Lemmas IV.1.d, IV.1.i, IV.1.k and IV.1.l combined.

*Lean:* [`Order.poses`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L155-L158), [`Order.ordinary`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L115-L153), [`Order.intraperiod`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L66-L95), [`Order.ring_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L98-L113), [`almostGeneric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Ties.lean#L44-L49); [`crops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Held.lean#L136-L137).

### 4.5 Label derivatives

**Lemma IV.1.m (one-slot difference quotients; D03).** Assume (H1), IV.1.1 (c)–(d) and (B) along $f$. For every arity $n$, label list $v$, slot $i$, axis $a$ and $t\in\mathcal D_n$, put $u=v_i$ and replace $I(u,x_i)$ by the forward difference quotient $a_N^{-1}[I_{N,p}(u,x_i+e_a)-I_{N,p}(u,x_i)]$. The resulting smeared lattice correlation converges along ordered tails to $-\int(\partial_{x_i^a}t)\,S(v;\cdot)$.

*Proof sketch.*

- Summation by parts on the torus, which is exact, moves the difference onto the test as a backward difference quotient.

- For $p$ large and then $N$ large the shifted test is evaluated without wrap-around.

- The backward quotient $[t(x-a_Ne_{i,a})-t(x)]/a_N$ converges uniformly to $-\partial_{x_i^a}t$, where $e_{i,a}$ is the coordinate vector for slot $i$ and axis $a$. The error is at most $L_p^{4n}\cdot\sup|\text{residual}|\cdot D$, with $D$ from (B2) on a compact neighbourhood of $\mathrm{supp}t$.

- The main term converges by (c) applied to $\partial_{x_i^a}t$.

*Lean:* [`Work.D03.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D03.lean#L244-L249) (statement [`Bid.D03`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L61-L62)), [`on_lattice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D03.lean#L71-L77), [`error_sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D03.lean#L185-L242), [`heighten`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L43-L44).

**Lemma IV.1.n (chessboard-small observables are invisible; D02).** Assume (H1)–(H2). Let $Q_{N,p}$ be chessboard-small with rate $y(N,p)\to0$. For every $\delta>0$, arity, slot and fixed spectator label list, there is $A_\delta\ge0$ such that, eventually along ordered tails, the correlation with $Q$ in that slot has modulus at most $A_\delta|y(N,p)|$ at every configuration separated by $\delta$ in the periodic physical supremum norm. Consequently every smeared lattice correlation with $Q$ in one slot tends to $0$ along ordered tails.

*Proof sketch.* The first claim is the chessboard argument of Lemma IV.1.d with $Q$ in one cell. For the second, write the smeared sum as the integral of a step function supported in a fixed ball and bounded by $\sup|t|\,A_\delta|y|$.

*Lean:* [`Lease.take`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lane/Lease.lean#L57-L124), [`Lease.rents`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lane/Lease.lean#L20-L22), [`Lease.gain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lane/Lease.lean#L54-L55), [`Work.D02.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D02.lean#L24-L84) (statement [`Bid.D02`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L57-L58)).

**Lemma IV.1.o (bounded labels have subpolynomial cutoff coordinates; D01).** Under (H1), every degree-$d$ label family $w(N,p)$ bounded along ordered tails has subpolynomial growth in the sense of §2, input 3.

*Proof sketch.* The inverse terminal transfer is bounded, up to a fixed degree-dependent norm factor, by the product of the column constants up to level $N$, and their logarithms sum to $o(\log a_N^{-1})$.

*Lean:* [`Work.D01.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D01.lean#L127-L134) (statement [`Bid.D01`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L54)), [`terminal_ball`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D01.lean#L92-L125), [`columnLogs_le`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D01.lean#L34-L63).

**Lemma IV.1.p (spanning; D04).** Assume (H1), (H2), IV.1.1 (c)–(d), and the relay data and dimension count for every $d$. Then:

1. for each fixed $u\in\mathrm{Label}_d$, the smeared lattice correlations of $u-\pi_d(N,p)u$ (in any slot, with any spectators and tests) tend to $0$ along ordered tails; together with the dimension count this gives $\ker\pi_d=\mathrm{Null}_d(S)$;

2. for $d\le e$ and $u\in\mathrm{Label}_d$ there are degree-$e$ labels $w(N,p)$ whose smeared correlations converge along ordered tails to those of $u$ in the limit;

3. for $u\in\mathrm{Label}_d$ and each axis $a$ there are degree-$(d+1)$ labels $w(N,p)$ whose smeared correlations converge along ordered tails to $-\int(\partial_{x_i^a}t)\,S(v;\cdot)$.

In 2 and 3, one family $w(N,p)$ works for every arity, slot, spectator list and test. It may be chosen with subpolynomial growth, and the normalized remainders $(w-\pi w)/(1+\|\pi w\|)$ also have vanishing smeared limits.

*Proof sketch.*

- (1) $u-\pi(N,p)u$ is bounded and lies in $\ker\pi(N,p)$. By Lemma IV.1.o it has subpolynomial growth, so *mark* applies: it is chessboard-close to an observable with exactly vanishing separated correlations. Lemma IV.1.n then shows the smeared correlations vanish. The one-slot smear maps converge in operator norm, since their domains are finite-dimensional. This allows passage to varying labels and gives $\ker\pi_d\subset\mathrm{Null}_d(S)$; the dimension count gives equality.

- (2)–(3) *Transit*, resp. *pace*, gives labels whose observables are chessboard-close to the embedded label, resp. to the forward difference quotient. Lemma IV.1.n transfers the smeared limits, which Lemma IV.1.m computes for the difference quotient.

- For the normalized remainder, dividing $w$ by $1+\|\pi w\|$ preserves subpolynomial growth, while $\pi w/(1+\|\pi w\|)$ is bounded and Lemma IV.1.o applies. Their difference lies in the projection kernel, so *mark* and Lemma IV.1.n apply.

*Lean:* [`Work.D04.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D04.lean#L212-L240) (statement [`Bid.D04`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L65-L67)), [`Spans`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L55-L60), [`Bin.Upper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L24-L26), [`Bin.exactC`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L41-L42).

**Lemma IV.1.q (fixed derivative labels).** The conclusions of Lemma IV.1.p yield the maps $\kappa$ and $\tau$ of IV.1.2.

*Proof sketch.* This is a finite-dimensional compactness argument.

- Take a cluster point $(c,z)$ of $\bigl((1+\|\pi w\|)^{-1},\,\pi w/(1+\|\pi w\|)\bigr)$ along the ordered-tail filter. Use one refining ultrafilter for this finite-dimensional pair; all spectator tests then retain their limits.

- Idempotence and convergence of the projections give $\pi z=z$. For every spectator test, the limits give $\langle S,z\rangle=c\cdot(\text{target})$.

- $c\ne0$: otherwise $z\in\mathrm{ran}\pi\cap\ker\pi=\{0\}$ (since $\ker\pi=\mathrm{Null}$), contradicting $\|z\|+c=1$. So $z/c$ is a fixed label with the target kernels.

- Define $\kappa$ and $\tau$ this way on a basis and extend linearly.

The identity for $\tau$ is the distributional relation $\partial_{x_i^a}S_v=S_{v_{i\to\tau_av_i}}$.

*Lean:* [`lifts_model`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L71-L87), [`Dash.brace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Limits.lean#L69-L111), [`Wakes.through_ties`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L89-L96), [`Dash.monitor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Scope.lean#L108).

### 4.6 Smoothness

**Lemma IV.1.r (distributional regularity).** Let $K_w$, with $w$ ranging over label lists of arity $n$, be locally integrable on $\mathrm{Conf}_n$ and continuous on $\mathrm{Gen}_n$. Assume that for every $w$, slot $i$ and axis $a$ there is $w'$ with $\partial_{x_i^a}K_w=K_{w'}$ in $\mathcal D'(\mathrm{Conf}_n)$. Then every $K_w$ agrees almost everywhere on $\mathrm{Conf}_n$, and everywhere on $\mathrm{Gen}_n$, with a function in $C^\infty(\mathrm{Conf}_n)$.

*Proof sketch.*

- For $\varphi\in\mathcal D_n$: $\xi_{i,a}\,\widehat{\varphi K_w}(\xi)$ is a constant times $\widehat{\varphi K_{w'}}+\widehat{(\partial_{i,a}\varphi)K_w}$.

- By induction on $m$, $|\xi_{i,a}|^m|\widehat{\varphi K_w}|$ is bounded for all $m$ and all coordinates. So $\widehat{\varphi K_w}$ decays rapidly, and $\varphi K_w$ equals a smooth function almost everywhere.

- Take $\varphi=1$ near an arbitrary point of $\mathrm{Conf}_n$, generic or not.

- The local smooth representatives agree on $\mathrm{Gen}_n$, which has full measure, hence on overlaps; glue them. Multilinearity in the labels follows from the same density argument.

*Lean:* [`Dash.awake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Slew.lean#L26-L58), [`aggregate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Regular.lean#L91-L113), [`repair`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Regular.lean#L62-L71), [`arises`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Twist.lean#L98-L115), [`Hidden`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Twist.lean#L94-L95), [`currents`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Twist.lean#L58-L59), [`closeBy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Slew.lean#L17-L18).

**Lemma IV.1.s (the smooth version is a raw limit with a derivative plan).** Let $T$ be given by Lemma IV.1.r applied to $S$ and the maps of IV.1.2. Then $T$ satisfies the conclusions of IV.1.3.

*Proof sketch.*

- $T$ satisfies IV.1.1 (a)–(d) with the same $P_p$, because the volume limit only sees $\mathrm{Gen}_n$, and (c) follows from Lemma IV.1.l;

- (E1) holds by Lemma IV.1.t;

- the kernel identities pass from $S$ to $T$, since the smeared values are the same;

- $\kappa$ and $\tau$ preserve null labels: their smeared kernels are respectively the original kernel and its distributional derivative. Smoothness turns these into pointwise identities, so the maps descend to the quotients $F_d$.

*Lean:* [`Org.Arrives.serves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L101-L109), [`RawLimits.ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L194-L202), [`Table.Field`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L74).

### 4.7 Euclidean axioms, bounds and assembly

**Lemma IV.1.t (symmetries and basic identities).** If $T$ is smooth on $\mathrm{Conf}_n$ and is a point limit (IV.1.1 (a)–(b)) along $f$, and (H1) holds, then $T$ satisfies (E1)–(E3).

*Proof sketch.*

- *Grid convergence.* For a point $x$ of the level-$k$ grid $a_k\mathbb Z^{4n}$ with $x\in\mathrm{Gen}_n$, use its reduction in $\Lambda_{N,p}$ for $N\ge k$ and sufficiently large $p$. The lattice correlations there converge to $T(v;x)$ along ordered tails.

- *Lattice identities.* Permutation symmetry, $H_4$-covariance about the origin, translations by grid vectors, reality and the unit label hold exactly on the lattice, by (H1) and the invariance of the Wilson measure.

- *Extension.* Equality on the dense set of generic grid points extends to $\mathrm{Gen}_n$ by continuity, and then to $\mathrm{Conf}_n$, since both sides are continuous there and $\mathrm{Gen}_n$ has full measure. Real translations are approximated by grid translations.

*Lean:* [`Order.limits_basic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L151-L193), [`Order.spin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L124-L149), [`Order.homogeneous`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L83-L112), [`Order.inPatch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L39-L44), [`Order.equal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L48-L51).

**Lemma IV.1.u (reflection positivity of the limit).** If $T$ is smooth, symmetric and an ordered limit along $f$, and (H1) holds, then (E5) holds; (E5) implies (E4).

*Proof sketch.*

- *Lattice side.* For a test supported in $\{x^a>0\}$, take $p$ large enough that it is admissible. The smeared lattice observable $a_N^{4n}\sum_rt(\widehat r)\prod I(v_k,r_k)$ is then, for $N$ large, interior to the half-torus $0<x^a<L_p/2$. Its reflection through the site plane $x^a=0$ carries labels $\theta_a$, because $I(\theta_av,\Theta x)=\overline{I(v,x)\circ\Theta}$. The lattice Gram matrix of such observables is the smeared lattice correlation of $\overline{t_i}\otimes t_j$ pulled back by reflection of the first configuration. Symmetry permits reversal of its entries. The resulting joint test has compact support in $\mathrm{Conf}_{n_i+n_j}$, since the two configurations lie strictly on opposite sides of the plane. Lemma IV.1.a makes the lattice Gram matrix positive semidefinite.

- *Limit.* Smoothness gives absolute integrability on the compact joint supports. Pass to the ordered limit using (c).

- *(E4) from (E5).* Use bump functions concentrating at the points, together with continuity of $T$.

*Lean:* [`Order.realPositive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Harvest.lean#L46-L60), [`Banks.at_cut`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Pairs.lean#L104-L125), [`Banks.kept`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Banks.lean#L94-L102), [`Banks.plane`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Banks.lean#L19), [`Pairing.at_point`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/RPPeak.lean#L126-L131), [`Pairing.nearGram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/RPPeak.lean#L16-L33).

**Lemma IV.1.v (the polynomial bound).** Under the hypotheses of IV.1.5, its stated exponent $4n(1+\max_i d_i)$ is valid.

*Proof sketch.* Set $D=1+\max_i d_i$. The centered power budgets for all transformed labels can be bounded by $B a_k^{-D}$ for every $k\ge M$, with fixed $B\ge0$ and $M$.

- Choose the first $m\ge M$ with $a_m<r/2$, and the first $k\ge M$ with $a_k<a_m/[6(n+1)]$. The scale inequality, including the possible endpoint $m=M$ or $k=M$, gives $a_m\ge c(r/2)^2$ and then $a_k\ge c'r^4$.

- Lemma IV.1.d bounds the lattice correlations by $(B a_k^{-D})^n$. Pass first to the spacing limit and then to the volume limit at generic points with separation $>r/2$.

- Continuity and density extend the bound to every $r$-separated configuration. Since $a_k\ge c'r^4$, the bound is at most $C r^{-4Dn}$, with $C$ independent of positions and $r$.

*Lean:* [`Work.D05.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean#L160-L180), [`image_power`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean#L43-L68), [`scales`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean#L132-L158), [`separated_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean#L95-L128).

**Lemma IV.1.w (orientation).** Under the hypotheses of IV.1.6, its four symmetry identities hold on the quotient spaces $F_d$.

*Proof sketch.* A class in $F_d$ is determined by its kernels against all spectators. Compare the kernels of both sides using (E2) and the chain rule for $x\mapsto sx$ and for complex conjugation.

*Lean:* [`Work.D06.compat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D06.lean#L98-L135).

**Lemma IV.1.x (assembly).** If $T$ is an ordered limit and a point limit along $f$, (H1) holds, $T$ is smooth and (E7) holds, then $T$ satisfies the hierarchy (E1)–(E7).

*Proof sketch.* Lemmas IV.1.t and IV.1.u give (E1)–(E5); (E6)–(E7) are assumed. When (H2) and the derivative plan of IV.1.3 are also available, IV.1.5 and B10 supply (E7). B10 inducts on the derivative order: each coordinate derivative is a kernel with one raised label, and the operator norm is bounded by a finite sum of coordinate norms. The base case is IV.1.5. On the main path, compactness of the bounded projection matrices gives a common refinement before forming the bundle of Remark 1.

*Lean:* [`Order.assembles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Harvest.lean#L62-L65), [`Org.Cleaner.stay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L113-L114), [`Bid.healthy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L91-L97), [`Work.B10.capped_tags`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B10.lean#L72-L90), [`include_projections`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L86-L93), [`Projected.ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L178-L181), [`Next.Extract.Base`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L42-L51).

## 5. Where the difficulty lies

The main estimates are the transfer-kernel Lipschitz bound and the control of uncentered chessboard roots. Complex interpolation and Cauchy's estimate turn reflection positivity into equicontinuity without prior derivative bounds. Translation log-convexity allows the centered budgets to control observables at arbitrary interior positions.

The regularity argument depends on more than compactness: the relay estimates supply degree-raised approximants to differences, and the rank comparison identifies precisely which labels vanish. The normalized remainder estimate in Lemma IV.1.p is needed to obtain fixed derivative labels. Fourier regularity, passage of symmetries by density, and positivity of limiting Gram matrices then use standard arguments.

Three distinctions matter:

- Equicontinuity is proved on $\mathrm{Gen}_n$, whereas bounds and the smooth representative extend to $\mathrm{Conf}_n$.

- The maps $\tau_{d,a}$ are chosen by compactness. Their kernel identities determine them only modulo $\mathrm{Null}_{d+1}$; the induced maps on $F_d$ are intrinsic.

- The hierarchy here has signed coordinate symmetries and reflection positivity at coordinate planes. Translation invariance moves those planes. Continuous rotation symmetry is a later result.

## 6. Notation

| object | code name | proposed notation |
|---|---|---|
| Wilson family; spacing, period, coupling | [`Family`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L24-L30) (`C.S.a`, `C.S.period`, `C.beta`) | $C$; $a_N$, $L_p$, $\beta_{N,p}$ |
| specification of the family | [`Family.Makes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62) | (H1) |
| label, register of labels | [`Register.Token`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Register.lean#L88), [`Family.book`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/LatticeFamily.lean#L20) | $v\in\mathrm{Label}_d$ |
| unit label; reflected label | [`Register.one`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Register.lean#L90), [`Register.reflectedToken`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Register.lean#L93) | $1_d$; $\theta_av=\rho_d(s_a)\bar v$ |
| renormalized lattice observable | [`Family.O`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L42) | $I_{N,p}(v,x)$ |
| lattice correlation; smeared | [`Family.numeric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/LatticeFamily.lean#L68-L69), [`Order.smears`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L26-L27) | $\mathcal C_{N,p}(v;x)$, $\mathcal C_{N,p}(v;t)$ |
| configuration sets | [`conf`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L63), [`generic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L66), [`NoHit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Patch.lean#L25-L26), [`Cyclic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Patch.lean#L28-L29) | $\mathrm{Conf}_n$, $\mathrm{Gen}_n$, $\mathrm{Conf}^{(p)}_n$, $\mathrm{Gen}^{(p)}_n$ |
| test functions; admissible at $p$ | [`Test`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Test.lean#L18), [`suitable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Patch.lean#L31) | $\mathcal D_n$; $\mathrm{supp}t\subset(-L_p/2,L_p/2)^{4n}$ |
| extraction; refinement; ordered sense | [`Order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L34-L36), [`refine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L40), [`late`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L47), [`fuse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L27) | $f=((N_j),(p_k))$, $f\circ g$, "$k$ large, then $j$ large" |
| table | [`Table`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L55-L56) | $S(v;x)$, $T(v;x)$ |
| raw limits | [`RawLimits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L156-L160), [`PointLimits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L68) | IV.1.1 (a)–(c); $P_p$ |
| tiling, copy, chessboard root | [`Tiling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L19-L25), [`copy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L221-L224), [`rootTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226-L227) | $\mathcal T$, $\mathrm{copy}_c$, $\|F\|_{\mathcal T}$ |
| centered tiling at $x$, cells of side $a_m$ | [`Cells.center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L34-L40) | $\mathcal T_m(x)$ |
| interior function of a cell | [`Interior`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L109-L113) | $F\in\mathcal A(\text{cell})$ |
| reflection positivity and chessboard inequality | [`Seam`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L14-L19) | (RP), (CB) |
| budgets | [`Wcmain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L38-L40), [`CenterPort`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L30-L34) | input 2; (H2) |
| uniform bound; equicontinuity | [`Bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L25-L30), [`TransferLip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L26-L30) | (B1)–(B2), (E1)–(E2) |
| forward difference quotient | [`heighten`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L43-L44) | $a_N^{-1}[I(v,\cdot+e_a)-I(v,\cdot)]$ |
| chessboard-small; subpolynomial growth | [`close`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L25), [`dollar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L18-L19) | — |
| projections; relay data | [`Dash.Bin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Scope.lean#L119), [`RelayBin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L46-L52) | $\pi_d(N,p)\to\pi_d$; pace, transit, mark |
| null labels; label quotient | [`Dash.monitor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Scope.lean#L108), [`Table.null`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L34), [`Table.Field`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L74) | $\mathrm{Null}_d$, $F_d=\mathrm{Label}_d/\mathrm{Null}_d$ |
| derivative labels; derivative plan | [`MonitorOps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L63-L65), [`DiffPlan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L20-L22) | $\kappa_{d,e}$, $\tau_{d,a}$; $\mathrm{rise}_{d,e}$, $\partial_{d,a}$ |
| Euclidean hierarchy | [`Table.Hierarchy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L141-L148) | (E1)–(E7) |
| zeroth-order polynomial bound | [`Bid.OneCap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L97-L98) | IV.1.5 |
| bundle handed downstream | [`Next.Extract.Base`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L42-L51) | — |

## 7. What remains unexplained
1. **Ultraviolet relay and rank estimates.** The interfaces in [`MergeProof.Scotia`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Eureka.lean#L16-L20) and [`savings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L19-L47) were checked, together with their use in the dimension argument. The upstream proofs of the matching estimates and interacting rank comparison in III.10–III.11 were not audited here. In particular, the dimension inequality is a separate input; it does not follow from the centered root budgets.

2. **Volume-uniform budget.** The supplier is [`gardena`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Gardens.lean#L19-L40) (III.11). Its proof reduces to earlier estimates on the same family, but their relation to the volume-uniform bounds assigned to III.12 was not traced in full.

3. **Fixed-volume ultraviolet limit.** The full-spacing upgrade required by [`wilsonLimit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L44-L56) is located and explained in Remark 2. The upstream construction of the full fixed-volume kernels used by that upgrade was not audited here.

4. **Alternative assembly.** [`Next.Extract.finish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L79-L92) and [`common`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L111-L122) give another conditional route to the same bundle. They require relay costs and detector estimates in addition to the centered budgets. Their hypotheses were checked; they are not additional proofs of the ultraviolet inputs.

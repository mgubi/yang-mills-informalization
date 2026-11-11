# II.2. Marker algebra, polymer combinatorics and Gaussian estimates

*Part II — Data of the construction.*

Develops the algebra and estimates used to multiply and sum polymer activities.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/II-2.md) · [← Previous: II.1](II-1.md) · [Next: III.1 →](III-1.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

**Reading scope.** For activity definitions see [III.1](III-1.md), for field labels and Wilson-family data [II.1](II-1.md), and for reflection-positive cells [IV.1](IV-1.md). The source allocation below does not define these reading routes.

<details>
<summary>Source inventory and conventions</summary>

**Part:** II, Data of the construction. **Lean:** [`YM/Marker/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker), [`YM/Ac/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac), [`YM/Ovens/Coffee.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean), [`YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean), [`YM/Extra/MULTISOURCE_TRAJECTORIES/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES), [`YM/Push/GRID_APPROXIMATION/Nil.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Nil.lean), [`YM/MergeProof/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof), [`YM/Next/RANK/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK), [`YM/Vac/Treasury.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean). **Size:** 3,691 lines in 793 line-counted declarations in the source allocation.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

**Proposition II.2.1 (marker algebra).** For finite $V$ and a downward-closed family $R\subseteq2^V$ containing $\emptyset$ and singletons, $\mathcal A_R=\mathbb C^R$ is a commutative unital algebra: $\delta_x\delta_y=\delta_{x\cup y}$ for disjoint $x,y$ with $x\cup y\in R$, and zero otherwise; $1=\delta_\emptyset$. Constant coefficients multiply. If $a(\emptyset)=0$, then $a^k(x)=0$ for $|x|<k$, hence $a^k=0$ for $k>|V|$. *Status:* theorem. *Lean:* [ring structure](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean), [`Poly.stops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L26-L27).

**Proposition II.2.2 (norm).** For positive $w_v$, set $w^x=\prod_{v\in x}w_v$, $\|a\|_w=\sum_{x\in R}w^x|a(x)|$ and $\mathrm{Exp}(a)=\sum_{k=0}^{|V|}a^k/k!$. Then $\|1\|_w=1$, $\|c\delta_x\|_w=w^x|c|$, $\|ab\|_w\le\|a\|_w\|b\|_w$, and $\|\mathrm{Exp}(a)\|_w\le e^{\|a\|_w}$. A countable family with $\|f_i\|_w\le b_i$ and $\sum_i b_i<\infty$ has a coefficientwise sum of norm at most $\sum_i b_i$. *Status:* theorem. *Lean:* [`multiplication`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L139-L146), [`budgeted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L51-L58).

**Proposition II.2.3 (connected polynomial).** For zero-constant $a,b$, $\mathrm{Exp}(a+b)=\mathrm{Exp}(a)\mathrm{Exp}(b)$ and $\mathrm{Exp}(-a)\mathrm{Exp}(a)=1$. For nonempty $x\in R$, $\mathrm{Exp}(c\delta_x)=1+c\delta_x$. Every $F(\emptyset)=1$ has a unique zero-constant $C$ with $\mathrm{Exp}(C)=F$; $C$ depends continuously on $F$. *Status:* theorem. *Lean:* [`Exponential.pass_add`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L56-L88), [`connected_spec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L179-L180).

**Proposition II.2.4 (tagging; repacking).** For finite $s$ and $\tau:\iota\to R$, a nonzero tagged product requires pairwise disjoint tags with union in $R$; it equals $(\prod_{i\in s}c_i)\delta_{\bigcup_i\tau(i)}$, and weights factor. If $\sigma:\iota\to\kappa$, admissibility is any property of finite slot sets, and $\sum_i\|F_i\|_w<\infty$, then
$$\sum_{\substack{s\text{ finite}:\ \sigma|_s\text{ injective}\\\sigma(s)\text{ admissible}}}\prod_{i\in s}F_i=\sum_{\substack{S\text{ finite}\\S\text{ admissible}}}\prod_{k\in S}\sum_{\sigma(i)=k}F_i,$$
with summable terms. *Status:* theorem. *Lean:* [`tagged_prod`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L57-L69), [`Packets.repack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Packets.lean#L114-L124).

**Proposition II.2.5 (components).** For arbitrary finite supports $X_i$ and finite label set $s$, overlap-chain classes partition $s$ into nonempty connected sets, called sparks, with disjoint support-unions. Conversely, disjointly supported sparks recover exactly these classes. Removing $i\in s$ from a spark $s$ leaves components each meeting $X_i$. *Status:* theorem. *Lean:* [`separates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L79-L101), [`excise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L103-L113).

**Proposition II.2.6 (tree bound).** Let $M\in\mathbb N$, $a,\gamma,f_i\ge0$ and $(2M+1)^4\gamma\le1$. If, at every site $x$, $\sum_{i:x\in X_i}f_i e^{(a+1)\mathrm{cov}_M(X_i)}$ is summable and at most $\gamma$, then
$$\sum_{\substack{s\text{ spark}\\x\in X(s)}}e^{a\mathrm{cov}_M(X(s))}\prod_{i\in s}f_i\le e^\gamma-1,$$
and this family is summable; labels are not repeated. *Status:* theorem. *Lean:* [`Ac.forest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L89-L127).

**Proposition II.2.7 (two overlaps).** Give each label finite mentions and walls, and mark some labels dirty. Within a selection, a label is hot when mention-connected to dirt; its fuel comprises mentions and, when hot, walls in disjoint copies of their ambient sets. Fuel components retain their internal hotness. They bijectively decompose finite selections into nonempty fuel-connected sets with disjoint mention-unions and disjoint wall-unions among dirty-containing components. If walls are lattice supports and mention overlap implies wall overlap inside such a connected set, it is wall-connected. *Status:* theorem. *Lean:* [`Kiln.undo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L210-L240), [`Kiln.attends`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L242-L253).

**Proposition II.2.8 (fusion).** Fix a gauge group $G$, four-dimensional periodic lattice $\Lambda$, activity parameters and regular/forced addresses (forced inventories nonempty and contained in their supports, with extra tests) and coefficients $E_i,K_i$, plus logarithms $\ell_i$ on nonempty supports $Y_i$, indexed by $\mathbb N$. Patches are forced supports or $Y_i$. Pellets are finite patch-connected selections containing a forced label, with disjoint forced supports; their reaches are $K_i$ and $e^{\ell_i}-1$. Pellets admit a bijective enumeration. Fusion preserves regular activities and assigns each pellet its union support, union forced inventory, conjunction of forced eligibility tests, and eligibility indicator times its reach-product. *Status:* definitions; enumeration theorem. The density, bound, covariance and parametric continuity results belong to III.10. *Lean:* [`fused`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L78), [`encoding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L121-L133).

The digest condition requires unfused validity with bounds $\delta,b$; logarithms supported on patches meeting the large-field set, uniformly summably bounded, measurable, gauge invariant, local in internal links and flags, and affine covariant. Fusion bounds require $\kappa,\gamma\ge0$, $(2B+1)^4\gamma\le1$, and a configuration-independent $f\ge0$ with $|\mathrm{reach}|\le e^{-\kappa}f$ on forced labels and $|\mathrm{reach}|\le f$ otherwise, satisfying II.2.6's hit condition with cover size $B$ and exponent $e_P+1$. *Lean:* [`Digests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L81-L90), [`Buys`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L94-L98).

**Proposition II.2.9 (switching).** For finite $\iota$, $\mathrm{val}_x(g)(r)=\sum_{i\subseteq r}x^{|i|}g(i)$ is invertible for $x>0$. A model satisfies $\mathrm{val}_x(g_x)=f_x$ on $[0,1]$ and $g_x\to g_0$; its jet is $g_0$. A family is paid at cost $d$ when models share a bound $|g_x^u(i)|\le b(i)$ with $b\ge0$, $\sum_i b(i)\le d$. Costs add under finite sums and multiply under finite products; summable costs permit infinite sums and commuting jets with sums. If modeled $f_x(r)=f_x(r\setminus\{v\})$ for every $r$ and $x\in[0,1]$, then $\mathrm{jet}(f)(i)=0$ whenever $v\in i$; pointwise measurability of paid families passes to jets. If $\|\rho_v\|_w\le1$, then $\sum_i\mathrm{jet}(f^u)(i)\prod_{v\in i}\rho_v$ has a common coefficient majorant of weighted norm at most $d$. *Status:* theorem. *Lean:* [`entire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L33-L42), [`Accent.crystal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Jetty.lean#L13-L19).

**Proposition II.2.10 (Gaussian calculus).** For complex symmetric $P,Q$, define $\mathcal G_Qp=p(X+\partial_Q)1$ and $\mathbb E_{Q,m}p=(\mathcal G_Qp)(m)$. These satisfy Wick recursion, $\mathcal G_P\mathcal G_Q=\mathcal G_{P+Q}$, and covariance transport $Q\mapsto AQA^T$ under substitutions with finitely supported rows. A real random vector $\xi$ under a probability law with all polynomial moments and $\mathbb E[\xi_vq(\xi)]=\mathbb E[(\partial_{Q_{v\cdot}}q)(\xi)]$ for every $v,q$ has expectation $\mathbb E[q(m+\xi)]=\mathbb E_{Q,m}q$ for every real $m$. If $B\ge1$, $|m_v|,|Q_{vw}|\le B$, $\deg p\le d$, then $|\mathbb E_{Q,m}p|\le\|p\|_1\pi(B,d)$. Two such pairs differing entrywise by at most $E\ge0$ have expectation difference at most $\|p\|_1E\pi(B,d)$. *Status:* theorem. *Lean:* [`warms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L96-L102), [`payment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/ParticleMoment.lean#L61-L78), [`Common.differs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean#L124-L126).

**Proposition II.2.11 (polynomial steps).** Let $Q$ be symmetric and $H_v$ linear. If $C\ge1$, $\|H_v\|_1,|Q_{vw}|\le C$, $\deg p\le d$, then $T_{H,Q}p=(\mathcal G_Qp)\circ H$ has degree at most $d$ and norm at most $\|p\|_1(2(d+2)C)^d$. Two such pairs differing by at most $\varepsilon\ge0$ in these norms have output difference bounded by $\|p\|_1\varepsilon(2(d+2)C)^d$. Zero cross-covariance between variables of $P,R$ gives $T(PR)=T(P)T(R)$. *Status:* theorem. *Lean:* [`crux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L119-L124), [`crossing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L125-L126), [`bridge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Crust.lean#L59).

Weighted coefficient quantities $\sum_\beta r^{w\cdot\beta}|c_\beta|$, for $w:V\to\mathbb N$, $r\ge0$, are submultiplicative, and norms for $r>0$. If $0\le\varepsilon\le1$, $|Q_{vw}|\le\varepsilon$, $\deg p\le d$, then $\|\mathcal G_Qp-p\|_1\le\|p\|_1\varepsilon(2(d+2))^d$. For linear $f_v$ and polynomials $A_v$ without terms below degree two, $\|f_v\|_1,\|A_v\|_1\le B$, $B\ge1$, $0<t\le1$, symmetric $K$ with $0\le\varepsilon\le1$, $|K_{vw}|\le\varepsilon$, and $\deg P\le n$,
$$\|\Phi_t(P)-(\mathcal G_KP)\circ f\|_1\le\|P\|_1\big(ntB(2B)^n+\varepsilon(2(n+2))^nB^n\big),$$
where $\Phi_t:X_v\mapsto f_v+t^{-1}A_v(tX)$. A measurable $g\in[0,1]$ with $\int(1-g)d\mu\le\eta$ is an $\eta$-guard. For probability $\mu$ and measurable $f$ with $\int|f|^2d\mu\le B<\infty$, $|\int gf\,d\mu-\int f\,d\mu|$ is at most $\varepsilon'B+\eta/\varepsilon'$ for every $\varepsilon'>0$. Under II.2.10's probability-law hypotheses and entry bounds, $\int|p(m+\xi)|^2\le\|p\|_1^2\pi(B,2d)$. For finite $V$, $d\in\mathbb N$, $\delta>0$, there exist finite nonempty $T\subseteq[-\delta,\delta]^V$ and $C\ge0$ with $\|p\|_1\le C\max_{x\in T}|p(x)|$ for every $\deg p\le d$. *Lean:* [`LiftMark.stock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Pin.lean#L66-L84), [`escaped`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L108-L125), [`Spindle.molds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/SpectrumReal.lean#L56-L81).

**Proposition II.2.12 (scales).** For $s>e$, put $y=\log\log s$, $\Pi=e^{y^2}$, $\theta=s^{-1/2}\Pi$, $h=e^{y^{3/2}}$, $j=h^{1/5}$, $M=\lceil(\log s)^2\rceil$, $W=M^2$. For every fixed $a,p>0$,
$$y^2\ll j\ll h\ll\Pi^a\ll s^p,\qquad W\sim(\log s)^4.$$
For fixed $a>0$, $k\in\mathbb N$, $c\in\mathbb R$, eventually $W^k,h\le\Pi^a$, $c\log W\le ay^2$, $y(s)^2\le aW(s/2),aj(s/2)$ and $j(s)\le h(s/2)$. Eventually $s\theta^2=\Pi^2$, $s\theta^3,s\theta^4\le1$, and $2\Pi^v\theta^2\le1$ for every $v\le1$. *Status:* theorem. *Lean:* [`uniform_loop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L83-L108), [`rate_fire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L110-L122).

**Proposition II.2.13 (numerical feasibility).** Fix $m,Q\in\mathbb N$, $e,U,V\ge0$, $a>0$, $\alpha\ge1$, $L>1$, and $G(u)=e^{-ah(u)^2}$. Eventually, uniformly for $u,v\in[s/2,s]$, $(2W(u)+1)^4\Pi(s)^{-1}\le1$, $G(u)\le\Pi(s)^{-3/4}e^{-7j(v)/10}$ and $(\alpha+1)^{\lceil10\log M(s)/\log L\rceil}\Pi(s)^{-3/4}\le\Pi(s)^{-1/2}$. For fixed $k,n\in\mathbb N$, $A\ge1$, $\phi=1/(4(nk+k+1))$, eventually
$$n\Pi^{-2}(A+\Pi^{-2})^n\pi(\Pi^\phi,nk)+A^n\Pi^{-2}\pi(\Pi^\phi,nk)\le\Pi^{-3/2}.$$
*Status:* theorems and numerical definitions. *Lean:* [`on_time`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Stepped.lean#L81-L89), [`collected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Planck.lean#L39-L62).

For numerical records with $t,g,H_0\in\mathbb N$, $b,c,f,F\in\mathbb R$, $K\ge1$, $c\ge1$, $F\ge0$, $f+c\le-8$, $g\ge6$, $U=V$, $f=1/16-U$, $2V+2\le g-1$, put $C_d=(2(d+2)K)^d$. If $b\ge0$, $L>1$ and $\log L\ge2(b+2)\log q$ for $q\in\{\alpha+2,C_t,C_{2t}\}$, then at $H=\lceil(b+2)y^2/\log L\rceil$ eventually $(\alpha+2)^H,C_t^H,C_{2t}^H,H\le\Pi$ and $\Pi^{2c+1}+\Pi^{2c+2}\le\Pi^{2c+3}$. Consequently $(\alpha+2)^r\Pi^{-g}\le\Pi^{-4}$ for $0\le r\le H$. Such block-size bounds hold for all sufficiently large $L$; parameters precede $L$, which precedes $s$. *Lean:* [`racetrack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Odometer.lean#L56-L61).

Put $A_Q=(2Q+1)^4$ and $R_Q(z)=e^{zA_Q}$. For $B,\varepsilon,w\ge0$, $D\in\mathbb N$, define
$$q_0=w\pi(B,D),\quad d_0=wDB^D\varepsilon,$$
$$q_1=d_0+\varepsilon w^2\pi(B,2D)+\varepsilon+w\varepsilon\pi(B,D),$$
$$q_2=2q_0d_0+\varepsilon w^4\pi(B,4D)+2\varepsilon+w^2\varepsilon\pi(B,2D),\quad\mathcal Q=q_1+q_2+(q_0+q_1)q_1+q_1q_0.$$
For these records, if $F\ge g+10Z+10$, $Z=2c+8t+13$, eventually $4R_Q(e+2)\mathcal Q(\Pi,\Pi^{-F},\Pi^{2c+3},2t)\le\Pi^{-g}$. *Lean:* [`funding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Purchased.lean#L49-L56).

<a id="unit-inputs"></a>

## 2. What it uses

- I.1: lattice supports, connected cover numbers, cardinality and intersecting-union bounds.
- III.1: activity format, eligibility, weighted bounds and gas.
- Kotecký–Preiss induction; nilpotent exponentials; Boolean Möbius inversion; Gaussian integration by parts and Wick recursion; finite-dimensional norm equivalence.

<a id="unit-strategy"></a>

## 3. Strategy

Square-zero markers encode allowed products; their exponential separates connected contributions. Connected-component decomposition and a Kotecký–Preiss induction control polymer sums. Switching transfers scalar coefficient bounds to markers. Algebraic Gaussian convolution controls polynomial comparisons, and separated scales absorb their fixed-degree losses.

<a id="unit-steps"></a>

## 4. Steps

1. Construct the connected polynomial by $C_{k+1}=C_k+F-\mathrm{Exp}(C_k)$: each correction removes another marker order. [`rolls`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L133-L149).
2. Remove one root per component. The extra unit in the hit exponent pays each attachment; the cardinality bound closes induction. [`lookup`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Table.lean#L81-L106), [`Ac.forest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L89-L127).
3. Restrict hotness to fuel components to recover the two-overlap decomposition. [`hot_comp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L149-L162), [`Kiln.undo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L210-L240).
4. Invert switching triangularly and pass convergent models to zero. [`Models.exact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L58-L63).
5. Apply Wick recursion inductively to moments and differences. [`width`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean#L121-L123), [`differs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean#L124-L126).

6. Compare logarithms of the scale functions and intersect the eventual inequalities, uniformly on $[s/2,s]$. [`mint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bird.lean#L145-L158).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

Cover subadditivity requires intersecting unions. Hotness depends on the selection. Switching needs convergence, beyond boundedness. Numerical feasibility supplies no analytic trajectory estimates.

<a id="unit-notation"></a>

## 6. Notation

$P=(r,q,e_P,B,t_P)$ has $r,q,B\in\mathbb N$, $r\ge6$, $q\ge2$, $B\ge1$, $e_P>0$, $0<t_P\le1$; $e_P$ is its support exponent. Polynomials are complex; degrees are total and lie in $\mathbb N$. $\partial_bX_v=b_v$. $X(s)=\bigcup_{i\in s}X_i$; $\mathrm{cov}_M$ is the least number of radius-$M$ balls whose union is connected and contains the support. $\|p\|_1$ sums absolute coefficients; $\pi(B,d)=(2B(d+1))^d$. $f\ll g$ means $f/g\to0$.

<a id="unit-limitations"></a>

## 7. What remains unexplained

III.11 must construct restarted representations and verify analytic hypotheses along trajectories. The auxiliary regrouping and switching-cost declarations' full role remains to be traced.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/II-2.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md), [III.1](III-1.md).

**Referenced by:** [III.11](III-11.md), [III.12](III-12.md), [VII.6](VII-6.md), [VII.4](VII-4.md), [III.10](III-10.md), [III.13](III-13.md), [III.2](III-2.md), [III.15](III-15.md), [VII.2](VII-2.md), [III.4](III-4.md), [III.5](III-5.md), [III.9](III-9.md), [VII.1](VII-1.md), [VIII.1](VIII-1.md), [III.8](III-8.md).

## Lean source

**Source allocation:** 3,691 attributed lines; 793 line-counted declarations; 1,161 assigned declaration names. Of the assigned names, 1,097 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- shared machinery (Exponential · Bird · Weight) — 3,291 lines.
- work package [`YM/Ac/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac) — 286 lines.
- work package [`YM/Ovens/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens) — 71 lines.
- work package [`YM/Further/SHELL_BIRTH_49/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49) — 43 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`packHits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L115-L118)
- [`Ac.Pack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L18)
- [`Ac.Spark`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L49)
- [`Parts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L55)
- [`reconstruct`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L60-L63)
- [`separate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L72-L77)
- [`Ac.pouch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Table.lean#L20)
- [`film`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Table.lean#L79)
- [`Tree.lean` (`step`, `all_pack`)](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean)
- [`Ac.Hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13)
- [`demand`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L15-L27)
- [`Ac.cover`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L59-L82)
- [`Ac.roots`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L84-L85)
- [`YM/Bid/Kitchen.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean)
- [`Bid.H01`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L15-L16)
- [`H04`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L33-L35)
- [`Corona.pays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L129-L131)
- [`Corona.meets_sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Halo.lean#L14-L30)
- [`Trajectories.pass_add`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean)
- [`Trajectories.pass_send`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L113-L122)
- [`Trajectories.pass_sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L124-L134)
- [`Trajectories.Fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L44-L45)
- [`fits_of_tagged_prod`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L71-L87)
- [`toll_union`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L89-L90)
- [`Packets.summable_value`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Packets.lean#L30-L38)
- [`Start.digests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Cake.lean#L27-L36)
- [`Loan.buys`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Funds.lean#L120-L123)
- [`Collide.spark_ac`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L113-L117)
- [`Kiln`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L123-L126)
- [`Kiln.Hot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L131)
- [`fuel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L132)
- [`Mole`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L133)
- [`slabs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L135)
- [`fuel_comp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L163-L164)
- [`good`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L165-L169)
- [`takes_mole`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L183-L187)
- [`clubs_away`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L190-L196)
- [`walls_away`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L197-L205)
- [`Collide.uncluttered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L91-L111)
- [`halo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L43-L44)
- [`covers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L52-L55)
- [`coverNumber`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L69-L71)
- [`Marker.Census`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L22-L26)
- [`Poly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L40)
- [`Poly.send`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L51)
- [`Poly.prod`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L68)
- [`Poly.high`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L10-L22)
- [`Poly.pass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L29)
- [`pass_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L39-L46)
- [`share`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L60)
- [`equivalent_norm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L102-L112)
- [`binary`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L124-L137)
- [`multiple`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L148-L152)
- [`powers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L154-L157)
- [`Poly.quiet_mul`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L28)
- [`Poly.toll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L74)
- [`Poly.price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L76)
- [`Digits.lean` (`vane`, `decodes`)](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Digits.lean)
- [`jet_erase`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Digits.lean#L27-L36)
- [`Paid.jet_meas`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Digits.lean#L38-L49)
- [`Accent.quality`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Jetty.lean#L29-L35)
- [`Kilner.molecule`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Harbor.lean#L29-L53)
- [`shockProd`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Pitch.lean#L29-L33)
- [`whisper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Pitch.lean#L35-L40)
- [`Accent.ballots`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Pitch.lean#L58-L62)
- [`paidClick`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L108-L112)
- [`Paid.sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L116-L119)
- [`Switch.value`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L26)
- [`jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L46)
- [`Models`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L48-L50)
- [`Paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L56)
- [`Paid.tasting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L77-L79)
- [`Paid.add`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L88-L93)
- [`mapScores`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchCost.lean#L33-L36)
- [`sound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchCost.lean#L60)
- [`mul_sounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchCost.lean#L64-L65)
- [`soundSum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchCost.lean#L81-L87)
- [`soundExp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchCost.lean#L88-L91)
- [`comb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchProd.lean#L10)
- [`value_comb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchProd.lean#L15-L25)
- [`Models.mul`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchProd.lean#L28-L34)
- [`Paid.mul`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchProd.lean#L46-L50)
- [`Paid.prod`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchProd.lean#L52-L55)
- [`LiftMark.puff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ample.lean#L35-L77)
- [`LiftMark.bounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ample.lean#L79-L96)
- [`Perch.Demand`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bird.lean#L21-L31)
- [`Shelf`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bird.lean#L39-L49)
- [`force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bird.lean#L67-L77)
- [`Particle.tide`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/BoundParticle.lean#L29-L36)
- [`capZ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Cabal.lean#L38)
- [`defect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Cabal.lean#L39)
- [`rentQ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Canal.lean#L30)
- [`grant₁`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Combing.lean#L51)
- [`grant₂`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Combing.lean#L52)
- [`Common.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean)
- [`Common.priced`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean#L36)
- [`Expands`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L126)
- [`roll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L130-L132)
- [`roll_cont`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L151-L156)
- [`Expands.uniq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L161-L174)
- [`Exponential.connected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L177)
- [`correct`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L184-L185)
- [`pass_neg`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L90)
- [`pass_sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L92-L100)
- [`grant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Festoon.lean#L46-L49)
- [`Paint.trib`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Fleet.lean#L62)
- [`Normal.exchange`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussSubst.lean#L14)
- [`prepared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussSubst.lean#L76-L81)
- [`wets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussSubst.lean#L83-L84)
- [`lodge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTags.lean#L106-L109)
- [`Normal.pipe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTags.lean#L113)
- [`piped`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTags.lean#L115-L122)
- [`spring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTrack.lean#L31-L35)
- [`blend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L106)
- [`Normal.Symmetric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L21-L23)
- [`slit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L40)
- [`cream_comm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L64-L65)
- [`make`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L73-L74)
- [`milk`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L77)
- [`feeds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L82)
- [`skims`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L83-L88)
- [`froze`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L89-L94)
- [`Guard.lean` (`pinned`)](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean)
- [`Tapes.differently`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L36-L43)
- [`Tapes.bound_v`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L44)
- [`Guarded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L69-L73)
- [`guards_mul`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L79-L88)
- [`squareFits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L90-L105)
- [`Tapes.Valve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L14-L16)
- [`Valve.read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L18)
- [`Valve.Fair`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L20-L23)
- [`crest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L37)
- [`LiftMark.message`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Instructions.lean#L29-L53)
- [`Purse.budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Joule.lean#L41)
- [`load`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/LedgerGate.lean#L101)
- [`Paint.q_power`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/NoSpill.lean#L98-L101)
- [`Digits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Odometer.lean#L30-L35)
- [`pulse_ok`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Odometer.lean#L41-L42)
- [`VMeasure`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/ParticleMoment.lean#L21-L25)
- [`Spindle.decipher`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Peano.lean#L99-L102)
- [`LiftMark.garnish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Pin.lean#L29-L30)
- [`Glimmer.fuel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Planck.lean#L21)
- [`Glimmer.transports`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Planck.lean#L34-L36)
- [`shed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Planck.lean#L68-L69)
- [`Panel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Prepaid.lean#L37-L47)
- [`preSheet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Prepaid.lean#L91-L109)
- [`Racer.pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L113-L119)
- [`Tapes.Purse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L20-L38)
- [`torque`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L61)
- [`Racer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L64-L69)
- [`Candle.small`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L72-L89)
- [`Faring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L92-L110)
- [`fire_stretch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L127-L137)
- [`Perch.bill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L25)
- [`walls`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L28)
- [`hot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L30)
- [`join`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L31)
- [`w`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L32)
- [`logspan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L59-L69)
- [`rate_wall`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L71-L90)
- [`rate_inverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L94-L108)
- [`Rise.cents`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Rise.lean#L13)
- [`Rise.funds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Rise.lean#L33-L37)
- [`Rise.coin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Rise.lean#L47)
- [`Rise.rise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Rise.lean#L51-L66)
- [`trill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/SolveRay.lean#L160-L167)
- [`ball_count`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/SpectrumReal.lean#L145-L156)
- [`Spindle.listen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/SpectrumReal.lean#L22-L28)
- [`Spindle.hotter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Spirals.lean#L127-L134)
- [`Spindle.amove`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Spirals.lean#L20-L41)
- [`Station.bump`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L37)
- [`Station.more`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L38)
- [`Era`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Stepped.lean#L37-L40)
- [`Tally`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Stepped.lean#L55-L58)
- [`Perch.Candle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Stepped.lean#L93-L96)
- [`invariantJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L105-L107)
- [`little`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L109-L112)
- [`retakes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L115-L117)
- [`Ovens.Pipes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L23-L27)
- [`Tap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L32-L35)
- [`reach`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L48)
- [`contains`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L57-L58)
- [`addr`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L72)
- [`solid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L74-L76)
- [`Nil.Sheet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Nil.lean#L75)
- [`Nil.combine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Nil.lean#L79)
- [`merged_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Nil.lean#L93-L109)
- [`Valid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L106-L111)
- [gas](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L129)
- [forced addresses](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L42-L47)
- [Eligibility](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L54-L55)
- [`SumBudget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L59-L60)
- [`Activities`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L62-L66)
- [`Dominated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/ActivityBounds.lean#L12-L13)
- [`BudgetPoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L125-L136)
- [`flags`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L34-L36)
- [`Healthy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L41)
- [`UsesFinal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L84-L85)
- [`treasury_stage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L115-L150)
- [`Numbers.monitor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L67-L69)
- [`Hat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L71)
- [`P`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L72)
- [`theta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L73)
- [`cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L74-L78)
- [`Work.H01.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H01.lean#L253-L255)
- [`H02.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H02.lean#L17-L80)
- [`H03.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H03.lean#L332-L334)
- [`H04.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H04.lean#L155-L161)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-ii-2-1"></a>

- **K-II.2.1** [`undo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L210-L240) *(numbered result)* — Under disjointness hypotheses, the decomposition of a union of supports into pieces can be uniquely recovered.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

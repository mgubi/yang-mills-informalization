# III.11. Interacting rank, Gaussian comparison and the stress tensor

*Part III — Ultraviolet construction (renormalization group).*

Compares field-space ranks with the free theory and constructs stress-tensor data using Gaussian estimates.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/III-11.md) · [← Previous: III.10](III-10.md) · [Next: III.12 →](III-12.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** unit III.11: [`YM/Next/RANK/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK), [`YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON), [`YM/PhysicalNext/RANK_COVARIANCE_ATLAS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS), [`YM/MergeProof/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof) (with `West/`, `North/`, `East/`, `South/`). **Size:** 42,556 lines (about 5,300 declarations).

</details>

<a id="unit-results"></a>

## 1. What this unit proves

The unit has two outputs. The first is the **rank comparison**. In the continuum limit, the space $F_d$ of local fields of degree $d$ is isomorphic to the corresponding space of the free Maxwell field, compatibly with complex conjugation and with the lattice symmetry group. Here $F_d$ is the space of labels of degree $d$ modulo labels whose correlations vanish. The second output is the **stress tensor of the limit**: a nonzero conserved stress tensor that satisfies the translation and rotation Ward identities and is normalized against the free Maxwell stress tensor along a scaling sequence. Both outputs rest on quantitative estimates proved here: a per-site determinant budget, chessboard bounds for connected parts of corrected observables, and comparisons of covariances with the free curvature kernel. The trial systems test a finite separating family of free one- and two-point correlations.

Notation. Set $\mu_k=\exp((\log\log\hat\beta_k)^2)$. The centered estimate and the trial systems use this fixed schedule quantity. $G$ is a compact matrix group, assumed simple only where stated; $\dim G$ is the dimension of its Lie algebra; $h$ is normalized Haar measure; $\mathrm{chord}(u)\ge0$ is the chordal distance from $u$ to $1$; and $\mathrm{shell}(r)=\{u\in G:\mathrm{chord}(u)\le r\}$. The torus of side $n\ge2$ is $\Lambda_n=(\mathbb Z/n)^4$, with $c=n^4$ sites, $4c$ bonds and $6c$ plaquettes. The prior $\mu_{\rm prior}$ is product Haar measure on bonds. An RG representation $R$ on $\Lambda_n$ has an inverse coupling $\beta=\beta(R)$, an exponent $\mathrm{exponent}_R$ with constant part $\mathrm{scalar}(R)$, and an unnormalized density $e^{R}=e^{\mathrm{exponent}_R}\cdot(\text{polymer gas})$.

**Proposition III.11.1 (determinant budget on the torus, and its per-site price).**
(a) Let $R$ be a lawful representation on $\Lambda_n$, $n\ge2$, with lawful-class parameters $(\sigma,A,\Lambda,\delta,w)$, and assume $e^{R}\ge0$ pointwise. Let $0<s\le1\le b$ be a Haar budget (Step 1). Let $g>0$ with $g\le\mathrm{threshold}(R)$ and $\beta g^2=1$. Let $F$ be a $\mu_{\rm prior}$-integrable complex function and $z\ge0$, $X\in\mathbb R$ such that $z|F(U)|\le\exp(\mathrm{exponent}_R(U)+cX)$ for every configuration $U$. Then
$$\frac{z\,\big|\int F\,d\mu_{\rm prior}\big|}{\int e^{R}\,d\mu_{\rm prior}}\;\le\;\exp\Big(c\,\pi(R,X,g)-4\dim G\,\log g\Big),$$
where the per-site price is
$$\pi=2\,\mathrm{exCost}(A,\Lambda,\delta)+6+\beta\,\mathrm{baseBudget}(A,g)+X+3\,\mathrm{ent}-4\log s,\qquad \mathrm{ent}=\log b-\dim G\,\log\sigma_R,$$
with $\sigma_R=\min(1,\ell_R)$, where $q_R$ and $\ell_R$ are the quadratic and linear clip coefficients. Here $\mathrm{exCost}=\delta+\mathrm{loopsPrice}$ bounds the loop and additive activity terms per site, and $\mathrm{baseBudget}=3(q_R+A^2)g^2$ bounds the remaining action on configurations whose bonds all lie in $\mathrm{shell}(g/4)$.
(b) Let $(\mathcal A_m)$ be the levels of an RG schedule for simple $G$, and let $O=(s,b)$ be a Haar budget. For all sufficiently large levels $m$, every period $p$, every representation $P$ on the level-$m$ torus (with $c_{m,p}$ sites), every $k\in\mathbb N$, every $X\le1+k$, and every $(g,\Lambda,\delta)$ admissible at level $m$, the following holds:
$$\pi(P,X,g)-\frac{4\dim G\,\log g}{c_{m,p}}\;\le\;\mathrm{work item}(O,m,k).$$
Admissible at level $m$ means: same clip as the stage of $m$, $\beta(P)\le4\hat\beta_m$, $\beta(P)g^2=1$, $0<g\le\mathrm{threshold}(P)\le\mathrm{threshold}_m$, $\delta\le1$, $\Lambda\le\mathrm{loopCap}_m$. The work item is
$$\mathrm{work item}=2(8\,\mathrm{paths}_m+2)+6+3(\mathrm{direct}_m+\mathrm{paths}_m^2)+(1+k)+3\,\mathrm{ent}-4\log s+1.$$
In (b), $\pi$ uses $A=\mathrm{paths}_m$ and the clip of stage $m$. The work item depends on that stage, $O$ and $k$, uniformly over the admissible couplings and periods.
*Status:* theorems.
*Lean:* [`determinant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L240-L274), [`protection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L225-L227), [`HaarBudget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L26-L33); (b) [`affordable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L119-L123), [`Meets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L28-L36), [`work item`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L41-L44).

**Proposition III.11.2 (free pair terms).** Fix $G$, $d,n\in\mathbb N$, and two colored plaquette derivative stencils $L,S$ based at the origin, with scaling degrees $\Delta_L=2+\mathrm{ord}(L)\le d$ and $\Delta_S=2+\mathrm{ord}(S)\le d$. There is $C\ge0$, depending only on these data, such that the following holds. Let $x\in(\mathbb R^4)^n$ have distinct entries and let $i\ne j$. Suppose $D\ge0$ satisfies $|\mathrm{Re}\,\Gamma_{(i,a),(j,b)}|\le D$ for every pair of free-current keys $a,b$ of scaling degree at most $d$. Then, for every $r\ge1$,
$$r\,\Big|r^{\Delta_L+\Delta_S}\,\langle \mathrm{ev}_L\otimes\mathrm{ev}_S,B_r(i,j)\rangle-\mathrm{light}(L,S)(x_i,x_j)\Big|\le CD.$$
Here
$$B_r(i,j)=\sum_{a,b}\mathrm{Re}\,\Gamma_{(i,a),(j,b)}\;r^{-\mathrm{gen}(a)}t_a\otimes r^{-\mathrm{gen}(b)}t_b,$$
where $t_a$ is the polynomial jet sample of key $a$, $\mathrm{gen}(a)$ is its scaling degree, and $\mathrm{ev}_L$ applies the stencil $L$. The kernel $\mathrm{light}(L,S)$ is the corresponding derivative of the free Maxwell curvature two-point function.
*Status:* theorem.
*Lean:* [`Prayer.fence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StrideCost.lean#L70-L98), [`deck`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StrideCost.lean#L64-L67).

**Proposition III.11.3 (window estimate for the free covariance, uniform in the regulator).** Let $\alpha,\eta>0$, $\Omega\in\mathbb R$ and $n\in\mathbb N$. Then there is $C\ge0$ with the following property. For every regulator $f$ in the family $\mathrm{Firm}(\alpha,\Omega,\eta)$ of III.3, every $G$, and every pair of colored plaquette stencils $a,b$, the frequency chart $K=K_f(a,b)$ is measurable, vanishes for $|\xi|>2$, is $C^n$ away from $0$, and satisfies:

- $|K(0)|\le C$;
- $|\partial^iK(\xi)|\,|\xi|^i\le C$ for $0<|\xi|\le2$ and $i\le n$;
- $|\partial^i(K-H_{a,b})(\xi)|\,|\xi|^i\le C|\xi|$ for $0<|\xi|\le1$ and $i\le n$.

Here $\partial^i$ denotes the $i$-th Fréchet derivative, measured in operator norm, and $H_{a,b}$ is the degree-zero Maxwell curvature symbol for the plaquettes and colors of $a,b$, with heat parameter $(2\pi)^2$. If $a,b$ have different colors, then $K=H_{a,b}=0$.
*Status:* theorem.
*Lean:* [`window_prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Window.lean#L118-L136), [`Window`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Radian/Signed.lean#L47-L53), [`Cast`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Radian/Means.lean#L16-L19).

**Proposition III.11.4 (frequent good scales produce corrected trial systems).** Let $G$ be simple and $C$ a Wilson family satisfying the construction record. Let $d$ be a degree and $\mathcal F$ a stage package for degree $d$ (fixed band $b_0\ge\max(6,\,s_d+3)$, with $s_d$ the label's scaling saving, and Taylor order $\ge d$). Let $X$ consist of a real basis of $F_d^{\rm free}$, starting with the unit, and finitely many generic one- and two-point tests that separate this space. Choose representatives of that basis in the label space. Let $O$ be a Haar budget, $J$ a chart ratio, and $B$ a binding of the RG history of $C$ to its price lists. Fix $w\in\mathbb R$. Assume that at infinitely many levels $k$ the following conditions hold simultaneously:

- the four price conditions: tender, metering with $(O,w)$, and, for some common auxiliary parameters $l,r$, hours with $(J,B,l,r,w)$ and vents with $(J,B,l,r)$;
- the lantern-mark condition for $X$.

Then there is a trial system $Z$ for $X$ that travels with the station and satisfies the purchase conditions:

- depths $k_1<k_2<\dots$ and test scales $s_i=a_{k_i}\mu_{k_i}^{\,b'}$ (fixed $b'>0$) strictly decreasing to $0$, with strictly increasing width levels $\mathrm{width}_i\le k_i$ and the stage index constant on $[\mathrm{width}_i,k_i]$;
- for each trial $i$, coefficient vectors $v_i(N,p)$ of corrected observables that are real, bounded uniformly in $(N,p)$, and have first entry the reference unit;
- generic test configurations lying strictly inside the centred width cell, whose rescalings converge to the prescribed configuration of each row;
- for each trial $i$, eventually in $N$ and for every period $p$, on the centred tiling of the cutoff torus: for every row, every basis column and every nonempty set $s$ of insertion modes, the chessboard root, at coupling $\beta_{N,p}$, of the $s$-connected part of the corrected observable (taken relative to its free Maxwell one- and two-point profile) is at most $\gamma_i=\mu_{k_i}^{-1/32}\to0$.

*Status:* theorem, with the frequent-scale conditions carried as hypotheses. In the main chain they are discharged as follows. In [`Accent.rated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L48-L71), the lantern marks hold eventually in $k$ by [`bursts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SteamW.lean#L54-L59). The four price conditions are supplied to the rank assembly by [`franchise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Snow.lean#L55-L60) (this unit) inside the assembly [`jointOffers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L36-L66). That assembly is closed by [`uv_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130) (III.13), whose only hypotheses are that $G$ is simple and $b>0$.
*Lean:* [`cast_off`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Star.lean#L64-L66), [`wheeled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Star.lean#L68-L69), [`v_culminates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L84-L95), [`v_obtain_purchases`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L177-L222), [`Purchases`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bought.lean#L68-L84).

**Proposition III.11.5 (the field spaces of the limit are those of the free Maxwell field).** Let $G$ be simple. Write $\mathcal L_d$ for abstract labels and $\mathcal V_d$ for their fixed coordinate space. Let $C$ be a Wilson family satisfying the construction record and the centred estimate: for each $d$ and $R,\varepsilon>0$ there is $A\ge0$ such that, at every level $m\ge\mathrm{ref}(d)$, eventually in $N$ and for all $p$, every label of degree $d$ and norm $\le R$ has centred budget $A\,a_m^{-d-\varepsilon}$. Assume:

- (i) a projector presentation of the labels: for each $d$ and cutoff $(N,p)$, a projector $\Pi_{d,N,p}$ on the coordinate label space $\mathcal V_d$ whose kernel is the image of the Maxwell equation ideal $\mathcal E_d\subset\mathcal L_d$ under an invertible corrected label map $\mathcal L_d\to\mathcal V_d$. For each $d$, both are real and equivariant for all sufficiently large $N$, uniformly in $p$. Assume also affordability and relay-cost bounds along every extraction;
- (ii) the one-step cost package along the gauge-door maps between successive RG levels;
- (iii) panels $Q_d$, the mark exponents $c_d=2(w_d+1)$, a chart ratio and a binding such that, for each $d$, the four price conditions of III.11.4 hold simultaneously at infinitely many levels, with $w=-3$. The panels are specialized to the family using $c_d$.

Then for every extraction order $f$ there are a refinement $g$, a smooth limit table $T$ with a differentiation plan $E$, and the extraction record of IV.1 along $f\circ g$ (raw limits, bins, spans, cleaning to $T$, Euclidean axioms), together with a seed record for $(C,f\circ g,T)$. The seed record consists of: cutoff, ordered and generic point limits, Euclidean axioms, cell hypothesis, and corrected rank widths. Moreover the following holds: there is a real structure on the free Maxwell table and, for every $d$, a linear isomorphism
$$\Phi_d:\;F_d(T)\;\xrightarrow{\ \sim\ }\;F_d^{\rm free}=\mathcal L_d/\mathcal E_d$$
that intertwines complex conjugation and the action of the signed permutations of the four axes. More precisely, there is a real, equivariant linear isomorphism $L_d:\mathcal L_d\to\mathcal V_d$ carrying $\mathcal E_d$ onto $\mathrm{null}_d(T)$. Thus $\dim F_d(T)=\dim F_d^{\rm free}$; the identification of null spaces uses this corrected map.
*Status:* theorem with hypotheses (i)–(iii). All three are discharged in the main chain: (i) by [`reception`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Eureka.lean#L22-L30) through [`chaletrail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Inns.lean#L33-L53) (this unit), (iii) by [`franchise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Snow.lean#L55-L60), and the binding by [`castle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Snow.lean#L28-L43). The one-step package (ii) and the centred estimate are also included in [`Chateau`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Almandine.lean#L24-L36) and consumed by [`uv_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130) (III.13).
*Lean:* [`Accent.rated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L48-L71), [`Maxwell.Ranks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L135-L139), [`Spec.Seed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26), [`Scotia`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Eureka.lean#L16-L20), [`Wcmain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L38-L40).

**Proposition III.11.6 (the stress tensor of the limit, normalized against free Maxwell).**
(a) Let $C$ satisfy the construction record and $f$ be an extraction order with ordered and generic point limits, giving a table $S$. Assume:

- $S$ satisfies the Euclidean axioms (with spin structure $H$) and the cell hypothesis;
- $W$ is a differentiation plan for $S$ with its inclusion and derivative laws;
- $\dim F_d(S)\le\dim F_d^{\rm free}$ for every $d$;
- $\mathcal T$ is a free Maxwell comparison model, with Euclidean axioms $a$, inclusion, derivative and orientation laws, and a divergence-free stress;
- the station hypothesis linking $C$, $f$ and $a$ holds;
- the shell estimate of $C$ holds.

Then $W$ satisfies the orientation law, and there are a stress record $I$ (stress tensor $\mathcal J$, translation parts, spin rows) and a scaling $X$ of $S$ such that:

- $\mathcal J\neq0$ and $\mathcal J$ lies in the kernel space of $H$;
- the scaled tables approach the isotropic panel, and the scaling is stable and compatible between the spin structures of $S$ and $\mathcal T$;
- the scaled $\mathcal J$ is metered against the free stress tensor $\mathcal T.\mathcal J$;
- $\mathcal J$ is conserved and symmetric and satisfies the translation and rotation Ward identities (III.11.7);
- the action law relating $\mathcal J$ to the free model holds.

(b) Let $G$ be simple, let $C$ carry the shell estimate, and assume the cofinal grid approximation condition and weak completeness of the corrected comparison tests for $f$, together with the seed record of III.11.5 for $(C,f,S)$. Then for every differentiation plan $W$ with inclusion and derivative laws there are Maxwell data $M$ and a stress record $I$ with $\mathcal J\ne0$ satisfying the UV interface record $\mathrm{UV}(C,f,S,W,M,I)$.
*Status:* theorems. In (b), the free model comes from [`maxwell_supplies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L45-L48) (VI.2). The station hypothesis is built from the seed and weak completeness, and the hypothesis [`DimAbove`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L108) from the seed's corrected rank widths; this is how III.11.5 feeds III.11.6. The shell budget is proved by [`laurelE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Economist.lean#L23-L32) and [`fugacious`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Economist.lean#L34) (this unit) inside [`uv_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130).
*Lean:* [`Acme.readyA`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L15-L30), [`Acme.emanate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L31-L37), [`Aroma`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Ozone.lean#L16-L19).

**Proposition III.11.7 (Ward identity: the flux of the stress against a Killing field is a local field).** Let $C$ satisfy the construction record, let $f$ be an extraction order with the cell hypothesis and generic point limits $S$, and suppose $S$ satisfies the Euclidean axioms with real structure $H$. Let $W$ satisfy the derivative laws, and assume the shell estimate of III.11.6. Let:

- $\mathcal J$ be a stress tensor of $S$ that is conserved with respect to $W$, and $v\in F_d(S)$;
- $U$ be a smooth Killing field on $\mathbb R^4$, homogeneous of degree $p$ ($U(ry)=r^pU(y)$ for $r>0$);
- $d,D,p\in\mathbb N$ and $D+3+p=d+4$.

Then there is $B\in F_D(S)$ with the following property. For every $n$, all fields $q_1,\dots,q_n$, every configuration of distinct points $x_0,\dots,x_n$, and every window $\chi$ adapted to $x$ (smooth, compactly supported, equal to $1$ near $x_0$, with support avoiding $x_1,\dots,x_n$), the flux of $\mathcal J$ against $U(\cdot-x_0)$ and $\chi$, inserted with $v$ at $x_0$ and $q_k$ at $x_k$, equals the correlation of $B$ at $x_0$ with the $q_k$ at $x_k$. The sign convention is
$$\mathrm{flux}=-\sum_{i,j}\int_{\mathbb R^4}\partial_i\chi(y)\,U_j(y-x_0)\,\langle\mathcal J_{ij}(y)\,v(x_0)\,q_1(x_1)\cdots q_n(x_n)\rangle\,dy.$$

Nonzero homogeneous Killing fields have $p=0$ (translations, $D=d+1$) or $p=1$ (rotations, $D=d$).
*Status:* theorem.
*Lean:* [`annular_fieldA`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Bravo.lean#L55-L89), [`tenet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Blanca.lean#L49-L120), [`shells_law`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Orange.lean#L33-L63).

<a id="unit-inputs"></a>

## 2. What it uses

- **I.1, II.2:** the torus, Wilson measure, product Haar prior, lawful RG representations, construction record, cells and chessboard roots; [`prior`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L55), [`Rep.Lawful`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L181-L183).
- **II.1:** label spaces, their real structures, the Maxwell equation ideal and the free Wick realization; [`equationIdeal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72).
- **III.2:** stages, thresholds, clip coefficients, loop caps, delays and waiting windows; [`ruese`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Expound.lean#L68-L77).
- **III.3–III.4:** free covariances, regulator symbol bounds, Gaussian integration and window-to-kernel transfer; [`intended`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Radian/Signed.lean#L56-L92).
- **III.9–III.10:** coupling growth, exact RG histories and vacuum identities, one-step bounds and the waiting-window engine; [`Wait.engine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L26-L135).
- **IV.1:** extraction, refinements, raw limits, spans and cleaning to smooth tables; [`Base`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L42-L51).
- **VI.1–VI.2:** windows and flux, finite faithfulness of testers, free Maxwell data and stress, and production of the current; [`maxwell_supplies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L45-L48), [`produce_current`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L129-L167).
- **III.13:** the common Wilson family closes the conditional chain; [`uv_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130) has only the hypotheses that $G$ is simple and $b>0$.

**Standard results:** the chessboard estimate and reflection positivity of the Wilson action; axial tree gauge and Haar invariance; small-ball Haar volume estimates; Wick expansion; Schur complements; frequency-symbol estimates; finite-dimensional duality; and Ward identities for conserved symmetric stress tensors and Killing fields.

**Constants and assumptions:** the Haar budget is fixed independently of stages and volumes by [`integral_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Haar.lean#L170-L211). The projector, one-step, centred, frequent-scale, binding, shell, grid-approximation and weak-completeness hypotheses remain explicit in §1; their main-chain producers are identified there. The older one-step interfaces in [`LedgerGate.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/LedgerGate.lean) are conditional definitions, not consequences of lawful representations.

<a id="unit-strategy"></a>

## 3. Strategy

The Maxwell equations give the upper bound on the interacting field-space dimensions. Corrected observables tested at short distances give the reverse bound: their one- and two-point correlations approach a finite separating family of free correlations, so their classes are eventually independent. The two bounds identify the limit null space with a limit projector kernel. Conjugating a cutoff projector to the limit projector then gives the isomorphism compatible with conjugation and signed permutations.

The quantitative comparison uses the exact RG history to carry reflected products to a coarse torus, then bounds a ratio of Haar integrals. Plaquette elimination gives $3c-3$ numerator factors, while tree gauge leaves $3c+1$ vacuum factors; the remaining coupling cost is only $g^{-4\dim G}=\beta^{2\dim G}$ in total. Its chessboard root is affordable, allowing connected errors to tend to zero along infinitely many good scales. For the stress tensor, comparison with free Maxwell fixes its normalization along a scaling sequence; conservation, shell estimates and finite-dimensional duality represent each Killing-field flux by a local field.

<a id="unit-steps"></a>

## 4. Steps

1. **Haar budget.** There are $0<s\le1\le b$ with $h(\mathrm{shell}(r/4))\ge sr^{\dim G}$ for $0<r\le1$ and $\int e^{-\mathrm{chord}(u)/t}\,dh(u)\le bt^{\dim G}$ for $t>0$. Exponential coordinates give the local volume estimates; compactness and a shell sum give the integral estimate. [`integral_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Haar.lean#L170-L211)

2. **Plaquette elimination.** For $n\ge2$ and continuous $\varphi:G\to[0,1]$, $\int\prod_p\varphi(U_p)\,d\mu_{\rm prior}\le(\int\varphi\,dh)^{3c-3}$. A triangular sweep assigns $3c-3$ plaquettes to distinct bonds, whose successive Haar integrations factor; the unselected factors are at most $1$. [`elimination`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Axial.lean#L368-L383), [`charged_integral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Axial.lean#L347-L365) *(proof read; sweep count and triangularity statement only)*

3. **Vacuum and numerator.** Under III.11.1(a), tree gauge and restriction of the $3c+1$ free bonds to $\mathrm{shell}(g/4)$ give the vacuum lower bound, while the clipped action retains exponential chord decay for the numerator. Applying Steps 1–2 and dividing gives $\exp(c\pi)g^{-4\dim G}$; the four-factor difference between the counts accounts for the remaining power of $g$. [`vacuum_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L76-L111), [`exponent_retains`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L153-L181), [`determinant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L240-L274)

4. **Per-site price and chessboard root.** Under III.11.1(b), the stage bounds give $\pi\le\mathrm{work item}-1$ and $-4\dim G\log g/c_{m,p}\le1$ eventually, uniformly in admissible parameters and periods. In the trial comparison, the exact vacuum identity and local activity decomposition transfer the determinant estimate to the chessboard root; deleting additive activities costs the $2\delta$ already included in the price. Allocation and affordability, with allowance $e^{2I}$ and $I\ge\mathrm{work item}$, then give root error $e^{-I}$ for every nonempty connected part. [`affordable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L119-L123), [`s_postage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Denarii.lean#L49-L85), [`coupon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Denarii.lean#L90-L123) *(proof read; flow identity and cell-stamp bookkeeping statement only)*

5. **Free pair and window estimates.** In III.11.2, stencil evaluation kills keys below the stencil degree, the equal-degree terms give the free curvature kernel, and every remaining term gains $r^{-1}$, giving the bound $CD/r$ on the scaled remainder. For III.11.3, the regulator chart is a symbol of order zero and differs from the heat symbol by a symbol of order one; the change of variables $\zeta=2\pi\xi$ and the finite number of plaquette pairs give a uniform constant. [`Prayer.fence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StrideCost.lean#L70-L98), [`window_prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Window.lean#L118-L136)

6. **Covariance splitting.** For an atlas compatible with the schedule and retained unmasked quadratic forms, satisfying symmetry, coercivity, inverse and crossing laws, and a step $i<N$ with a tree forest and the required torus size, the complete curvature covariances satisfy
   $$\mathcal C_{i+1}-W_i\mathcal C_iW_i^{\mathsf T}=d_f\Gamma_i d_f^{\mathsf T},\qquad\Gamma_i\succeq0.$$
   This is the Schur-complement identity on the curl image; uniform resolvent estimates give the propagation constant for fixed kernel choices and stage indices $j,t\ge4$ in the range $d-1\le j-2$ (natural-number subtraction). [`one_fold`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Identity.lean#L198-L213), [`train_issue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Step.lean#L106-L116)

7. **Local polynomial comparison.** For regular local observables with the prescribed derivative bounds, Taylor expansion in link coordinates gives bounded polynomial coefficients and a remainder of the required order. For zero-mean formal Gaussian data with symmetric covariance vanishing within each location, Wick expansion runs over cross-location pairings without requiring positive covariance; under the comparison's common-mask, support, coefficient, mean and covariance hypotheses, these moments give the corrected connected-component bounds. The allocation, integrability, locality and compatibility hypotheses give exact sector decomposition and factorization over disjoint supports. [`minted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/LineBox.lean#L168-L205), [`headed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTrack.lean#L131-L173), [`console`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Festoon.lean#L57-L126), [`rendered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Rendered.lean#L36-L86), [`peer_beams`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Sight.lean#L132-L158) *(proof read; local comparison and allocation inputs statement only)*

8. **Corrected trials.** Under III.11.4, one correction map and polynomial approximations serve all test rows; the free-profile correction cancels the leading terms, and the one-step estimates propagate the remaining source bounds from the middle level to the width level. Steps 3–4 give the purchase bounds, and an inductive choice among the good levels gives increasing depths and widths, decreasing test scales, and bounded real coefficient vectors with the reference unit first. [`v_paid_factory`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Diana.lean#L57-L104), [`v_culminates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L84-L95), [`v_conditioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L29-L53), [`v_obtain_purchases`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L177-L222) *(proof read; analytic inputs and helper estimates statement only)*

9. **Supply of good levels.** For simple $G$, the construction record and one-step package with the prescribed weights and multiplicities at least $1$, a fixed degree-$d$ column family and stage package with mark exponent $c\ge2(w_d+1)$ satisfy the lantern-mark condition at every sufficiently large metered level. Compatible pre-$L$ prices and one-step bounds, stage thresholds below block lengths, eventual presence of each degree index, nonnegative mark exponents and a Haar budget give panels and an enlarged waiting window on which every Wilson family paid on that window and every binding with those prices have infinitely many simultaneous good levels for each $d$. [`bursts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SteamW.lean#L54-L59), [`franchise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Snow.lean#L55-L60) *(proof structure read; analytic inputs and helpers statement only)*

10. **Equations and independent columns.** Under III.11.5(i), free probes separate the on-shell sector and give $\dim\mathcal L_d\le\dim\ker\Pi_{d,N,p}+\dim F_d^{\rm free}$ at each cutoff. For a Wilson family satisfying the construction record, with generic point limits and continuous kernels integrable against every separated test function, purchases and iterated coefficient limits give moment errors $P_k\gamma_k\to0$, so the limiting corrected columns are independent modulo the integrated-test null space for all sufficiently large trials. Relay estimates put the limit projector kernel inside the null space; with the centred port, raw limits, convergent relay projectors, equation counts and trials in every degree, extraction and the dimension comparison give a smooth table $T$, its seed, and $\mathrm{null}_d(T)=\ker\Pi_\infty$. [`savings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L19-L47), [`measured`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Monitors.lean#L71-L87), [`arriving_seed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Beam.lean#L153-L180) *(proof read; free positivity, chessboard and analytic inputs statement only)*

11. **Equivariant identification.** Under the projector presentation and its extraction record, if $A_i\to\Pi_\infty$, then $Y_i=\Pi_\infty A_i+(1-\Pi_\infty)(1-A_i)\to1$ and $Y_iA_i=\Pi_\infty Y_i$. For large $i$, $Y_i$ is invertible, real and equivariant; composing it with the corrected label map carries $\mathcal E_d$ onto $\mathrm{null}_d(T)$ and induces III.11.5's quotient isomorphism. [`drumroll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Thrush.lean#L13-L68), [`thrush`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Thrush.lean#L72-L114), [`Accent.rated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L48-L71)

12. **Flux becomes a local field.** Under III.11.7, conservation permits windows on shrinking annuli; the shell estimate shows that every finite combination of grid testers annihilating $F_D$ also annihilates the flux. Finite-dimensional duality supplies a matching field for each finite tester family, finite faithfulness gives a single field for all testers, and translation covariance, continuity and grid density extend the identity to all distinct configurations. Constant and rotational Killing fields give the translation and rotation maps. [`tenet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Blanca.lean#L49-L120), [`annular_fieldA`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Bravo.lean#L55-L89), [`shells_law`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Orange.lean#L33-L63) *(proof read; annulus comparison inputs statement only)*

13. **Stress and ultraviolet records.** Under III.11.6(a), the orientation law and station equivalences allow the free comparison to produce a nonzero current and scaling sequence; zero current divergence gives conservation, the weak scaling comparison gives the action law, and Step 12 gives the stress laws. Under III.11.6(b), canonical free Maxwell data, the seed's corrected rank widths and weak completeness supply the comparison model, dimension bound and station hypothesis needed for (a). [`Acme.readyA`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L15-L30), [`Acme.emanate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L31-L37) *(proof read; helper estimates statement only)*

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

The determinant comparison must avoid a per-site loss of $\log\beta$: that would overwhelm the vanishing chessboard error. Tree-gauge counting leaves only the volume-independent factor $\beta^{2\dim G}$; this is a Haar integral estimate rather than a Hessian determinant calculation. The lower rank bound requires short-distance comparison at infinitely many scales, whereas the upper bound is algebraic at every cutoff. The isomorphism comes from conjugating projectors, and its symmetry statement concerns complex representations with compatible conjugations under signed permutations. Constants must be chosen before block lengths and uniformly in the period; eventual estimates require the specified delays before use on comparison windows.

<a id="unit-notation"></a>

## 6. Notation

- **Symbol:** $\mu_k$, $w_d$

  **Meaning and Lean link:** Fixed schedule factor $\exp((\log\log\hat\beta_k)^2)$; coefficient exponent. [`monitor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L81), [`winter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Tender.lean#L11)

- **Symbol:** $(s,b)$, $\sigma_R$, $\pi$, work item

  **Meaning and Lean link:** Haar budget, clip strength, per-site determinant price and stage allowance of III.11.1. [`HaarBudget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L26-L33), [`strength`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L116), [`protection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L225-L227), [`work item`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L41-L44)

- **Symbol:** $\mathcal L_d$, $\mathcal V_d$, $\mathcal E_d$

  **Meaning and Lean link:** Abstract labels, coordinate labels and Maxwell equation ideal; $F_d^{\rm free}=\mathcal L_d/\mathcal E_d$. [`equationIdeal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72)

- **Symbol:** $F_d(T)$, $\mathrm{null}_d(T)$

  **Meaning and Lean link:** Local fields of degree $d$ and labels with vanishing correlations. [`Maxwell.Ranks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L135-L139)

- **Symbol:** $\Pi_{d,N,p}$, $\Pi_\infty$

  **Meaning and Lean link:** Cutoff and limit projectors; their kernels identify the equations after correction. [`Scotia`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Eureka.lean#L16-L20)

- **Symbol:** Stage package and price conditions

  **Meaning and Lean link:** Stage data; tender, metering, hours, vents and lantern marks in III.11.4. [`Cohesion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Concord.lean#L38-L51), [`Tender`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Consumer.lean#L71), [`Metering`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Concord.lean#L62-L64), [`ShowHours`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Pleas.lean#L21-L26), [`Vents`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Postsale.lean#L19-L21), [`LanternMarks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Proceed.lean#L74-L77)

- **Symbol:** $\mathcal C_i$, $W_i$, $d_f$, $\Gamma_i$

  **Meaning and Lean link:** Complete curvature covariance, passage map, fine exterior derivative and uncut tree covariance. [`one_fold`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Identity.lean#L198-L213)

- **Symbol:** $\mathcal J$, shell budget

  **Meaning and Lean link:** Stress tensor; annular estimates with radii tending to zero. [`Aroma`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Ozone.lean#L16-L19)

- **Symbol:** Seed, station, grid approximation, weak completeness

  **Meaning and Lean link:** Records used in III.11.5–III.11.6. [`Spec.Seed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26), [`Stations`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L112-L114), [`Grill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L121-L123), [`CompleteWeak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L35)


<a id="unit-limitations"></a>

## 7. What remains unexplained
- The discrete stencil, interpolation and shell estimates underlying the annulus bound have not been independently checked through their analytic dependencies; [`zone`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Ozone.lean#L21-L45).
- The nonlinear integration and remainder estimates beneath the one-step comparison were not checked in full. The correspondence between the older conditional interfaces in [`LedgerGate.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/LedgerGate.lean) and all restarted replacements remains to be documented.
- Complete mathematical estimates for the stage, launch, hours, vents, relay, station and shell records remain to be written. Their structural hypotheses cannot be replaced by the displayed inequalities alone.
- Sweep triangularity and the auxiliary estimates were checked at statement level. The lower-level proofs supplying the centred estimate, one-step package and schedule existence were not checked in full.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/III-11.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md), [III.1](III-1.md), [II.2](II-2.md), [II.1](II-1.md), [III.10](III-10.md), [III.16](III-16.md), [III.4](III-4.md), [IV.1](IV-1.md), [III.5](III-5.md), [V.2](V-2.md), [VIII.1](VIII-1.md), [III.2](III-2.md), [III.9](III-9.md), [III.3](III-3.md), [VI.2](VI-2.md), [III.15](III-15.md), [VI.1](VI-1.md), [III.8](III-8.md), [III.6](III-6.md).

**Referenced by:** [VII.6](VII-6.md), [III.12](III-12.md), [III.4](III-4.md), [VII.4](VII-4.md), [III.2](III-2.md), [VIII.1](VIII-1.md), [III.13](III-13.md), [VII.2](VII-2.md), [VII.1](VII-1.md), [III.15](III-15.md).

## Lean source

**Source allocation:** 42,556 attributed lines; 5,286 line-counted declarations; 7,425 assigned declaration names. Of the assigned names, 7,102 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- work package [`YM/Next/RANK/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK), with [`YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON), [`YM/MergeProof/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof), [`YM/MergeProof/West/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West), [`YM/MergeProof/North/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North), [`YM/MergeProof/East/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East), [`YM/PhysicalNext/RANK_COVARIANCE_ATLAS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS), [`YM/MergeProof/South/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/South), [`YM/PhysicalNext/PHYSICAL_GUARD_7F546/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/PHYSICAL_GUARD_7F546) — 42,556 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`Climb.comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L53-L63)
- [`projectionExact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L102-L118)
- [`no_residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L38-L54)
- [`chord`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L115)
- [`Scrim`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Biscuit.lean#L29-L34)
- [`Economics`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Economist.lean#L20-L21)
- [`quaking`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SteamW.lean#L45-L52)
- [`obtainable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Bravo.lean#L31-L52)
- [`banking`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L42)
- [`free_count`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Axial.lean#L115-L119)
- [`independent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Axial.lean#L278-L303)
- [`pull_link`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Axial.lean#L314-L345)
- [`equation_retains`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Beam.lean#L142-L147)
- [`Bought.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bought.lean)
- [`Purchases.samples`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bought.lean#L112-L123)
- [`converge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bought.lean#L125-L133)
- [`numerator`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L189-L217)
- [`ent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L220)
- [`exists_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L35-L36)
- [`gauge_eval`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L46-L68)
- [`Prayer.penalty`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/EastBell.lean#L44-L67)
- [`EquationCount`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Monitors.lean#L92-L94)
- [`Launch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratchet.lean#L35-L41)
- [`rolls_law`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L46-L79)
- [`linear_cons`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Tensor.lean#L121-L125)
- [`Org.UV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L177-L186)
- [`denture`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Denarii.lean#L27-L43)
- [`s_provisions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Diana.lean#L37)
- [`s_empire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Diana.lean#L44-L51)
- [`backstage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Star.lean#L49-L63)
- [`Offers_`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L110)
- [`v_pay_all`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L112-L125)
- [`Travels_`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L134-L147)
- [`ticketed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L149-L173)
- [`Turning_`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L76-L79)
- [`circleRate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Fourier.lean#L26)
- [`heat_window`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Window.lean#L57-L76)
- [`FreeStress.fire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L137-L150)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-iii-11-1"></a>

- **K-III.11.1** [`SourceAt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Value.lean#L38-L46) *(numbered result)* — A structure packaging a monomial in a marked exponent with a value-only representative for local value-order estimates.

<a id="k-iii-11-2"></a>

- **K-III.11.2** [`Lifted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Value.lean#L49-L60) *(numbered result)* — A structure packaging a labelled occurrence of a K-pattern with geometry and flag conditions.

<a id="k-iii-11-3"></a>

- **K-III.11.3** [`conquer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Terrain.lean#L66-L123) *(numbered result)* — A product of smooth functions equal to 1 at a point with derivative bounds up to order D has derivative bounds polynomial in length and B.

<a id="k-iii-11-4"></a>

- **K-III.11.4** [`integral_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Haar.lean#L170-L211) *(key result)* — Haar measure of small balls is bounded below by r^dim and the exponential-chord tail integral is bounded above by b t^dim, with uniform constants.

<a id="k-iii-11-5"></a>

- **K-III.11.5** [`elimination`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Axial.lean#L368-L383) *(key result)* — On the torus, the expected product of a [0,1]-valued function over all plaquettes is at most the Haar integral to the power 3|sites|-3.

<a id="k-iii-11-6"></a>

- **K-III.11.6** [`determinant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L240-L274) *(key result)* — Under a Haar budget and a weighted exponential bound on F, the ratio of the integral of F to the normalization integral is bounded by an exponential in volume times a protection term minus a power-of-g factor.

<a id="k-iii-11-7"></a>

- **K-III.11.7** [`fence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StrideCost.lean#L70-L98) *(key result)* — The rescaled difference between the covariance-based pair term and the free light-cone kernel is bounded by a constant times the bound D on the free covariance, uniformly in r≥1.

<a id="k-iii-11-8"></a>

- **K-III.11.8** [`grant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Dock.lean#L179-L185) *(key result)* — Combining first-system estimates, the polynomial-type output (sum of sent contributions times dust) satisfies a Notice bound with prescribed radius, exponent and output.

<a id="k-iii-11-9"></a>

- **K-III.11.9** [`headed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTrack.lean#L131-L173) *(key result)* — The Gaussian expectation of a product of linear forms expands as a sum over pairings (matchings) of products of covariances, respecting a location constraint.

<a id="k-iii-11-10"></a>

- **K-III.11.10** [`minted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/LineBox.lean#L168-L205) *(key result)* — A smooth function with sup bounds has a Taylor polynomial in link variables of degree d with controlled coefficient size and remainder at most c‖x‖^{d+1}.

<a id="k-iii-11-11"></a>

- **K-III.11.11** [`till`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Stories.lean#L99-L112) *(key result)* — For regular summable families of observables with sup bounds, there is a polynomial in link variables of degree at most d approximating the weighted sum, with constant growing like (number of links+1)^d.

<a id="k-iii-11-12"></a>

- **K-III.11.12** [`pedestals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Chimes.lean#L113-L153) *(numbered result)* — Eventually in s, numerical cost bounds on time bands hold for all budget points in the stated ranges.

<a id="k-iii-11-13"></a>

- **K-III.11.13** [`grafted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Anise.lean#L21-L39) *(key result)* — Under the arc hypotheses, there exist served functions with dominated profiles and blade bounds, and these are transported along the affine symmetry for other vertices.

<a id="k-iii-11-14"></a>

- **K-III.11.14** [`affordable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L119-L123) *(numbered result)* — For sufficiently fine widths, a protection quantity minus a log-volume correction is bounded by the determinant estimate price for simple gauge group.

<a id="k-iii-11-15"></a>

- **K-III.11.15** [`resolution`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Prayer.lean#L74-L111) *(key result)* — Uniform finite measured errors are controlled relative to a sampled free current, given a reads structure.

<a id="k-iii-11-16"></a>

- **K-III.11.16** [`window_prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Window.lean#L118-L136) *(key result)* — The colored chart of every free covariance satisfies a window estimate with constant uniform in the regulator family.

<a id="k-iii-11-17"></a>

- **K-III.11.17** [`chamber_now`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Distant.lean#L69-L100) *(key result)* — For large k, uniformly in the physical period, distinct chosen test points give meridian-arc separation estimates for all models.

<a id="k-iii-11-18"></a>

- **K-III.11.18** [`s_postage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Denarii.lean#L49-L85) *(key result)* — The root test of a mode observable is bounded by an exponential in a determinant budget divided by a power of r, under a Notice hypothesis.

<a id="k-iii-11-19"></a>

- **K-III.11.19** [`Binding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Consumer.lean#L30-L38) *(numbered result)* — Extra history-receipt data tying a rank-covariance family to the same path and prices.

<a id="k-iii-11-20"></a>

- **K-III.11.20** [`on_hold`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Brite.lean#L31-L122) *(key result)* — For points converging to a configuration of distinct points, eventually every admissible fit at large scale satisfies the Bell property for every vantage.

<a id="k-iii-11-21"></a>

- **K-III.11.21** [`on_demand`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Promises.lean#L37-L127) *(key result)* — For generic points and large k, the Bell property holds for all vantage data produced from Fourier terminal/lifted stencil ports.

<a id="k-iii-11-22"></a>

- **K-III.11.22** [`one_fold`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Identity.lean#L198-L213) *(key result)* — A single conditional covariance identity for real links, derived via the hinge resolution.

<a id="k-iii-11-23"></a>

- **K-III.11.23** [`antilles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Antilles.lean#L43-L75) *(key result)* — Starting from an admissible coefficient at scale m, one constructs a backward chain of states with prescribed endpoint, challenge compatibility, and exact density and index relations.

<a id="k-iii-11-24"></a>

- **K-III.11.24** [`forge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Tilt.lean#L36-L59) *(key result)* — For large k, a stamp-duty structure exists for every admissible representation and atlas data at each level.

<a id="k-iii-11-25"></a>

- **K-III.11.25** [`cardinal_spin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Prism.lean#L102-L168) *(key result)* — The loading is positive and the freight equals loading times exp of the spool lift for certified matched pilots.

<a id="k-iii-11-26"></a>

- **K-III.11.26** [`train_issue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Step.lean#L106-L116) *(key result)* — For fixed kernel choices and periods, there is a uniform constant R such that the difference-motion train bound holds for all gauges, levels, and indices in the tested range.

<a id="k-iii-11-27"></a>

- **K-III.11.27** [`chamber`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Attic.lean#L157-L203) *(key result)* — For all sufficiently large sides L and large couplings W, there is m>0 such that the rank-meter condition holds eventually in x.

<a id="k-iii-11-28"></a>

- **K-III.11.28** [`reserve_away`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/PHYSICAL_GUARD_7F546/Continuation/Suppression.lean#L120-L134) *(key result)* — For a Gaussian with positive semidefinite covariance bounded entrywise by U, the probability that the central guard coordinates deviate by more than t is at most e^2 exp(-c t^2) with c depending on K and U.

<a id="k-iii-11-29"></a>

- **K-III.11.29** [`arriving_seed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Beam.lean#L153-L180) *(key result)* — Given raw limits and trial columns with purchases, one can choose a refinement order with index data preserving the inputs and satisfying the required properties.

<a id="k-iii-11-30"></a>

- **K-III.11.30** [`tenet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Blanca.lean#L49-L120) *(key result)* — The flux of the conserved stress against a Killing-type vector field and window functions vanishes for any finite combination annihilating all tests.

<a id="k-iii-11-31"></a>

- **K-III.11.31** [`laminate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Rail.lean#L197-L229) *(key result)* — On actual stencils with pose and payment hypotheses, the coarse observable is valid on the fine patch and the rank arguments are close to the critical bias.

<a id="k-iii-11-32"></a>

- **K-III.11.32** [`prepared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Gates.lean#L86) *(numbered result)* — A chosen prepared table obtained from the nonemptiness result.

<a id="k-iii-11-33"></a>

- **K-III.11.33** [`arise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Conditions.lean#L100-L119) *(numbered result)* — A weight satisfying a cost bound is integrable on the tilted measure and its inflated integral is bounded by the cost.

<a id="k-iii-11-34"></a>

- **K-III.11.34** [`peer_beams`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Sight.lean#L132-L158) *(numbered result)* — For shaders on disjoint supports, the product is integrable and its integral factorizes as the product of integrals.

<a id="k-iii-11-35"></a>

- **K-III.11.35** [`single`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Meringue.lean#L32-L102) *(key result)* — A single scale-step estimate: applying a coupon bound to an already packed coefficient yields a controlled remainder after one gauge-door step.

<a id="k-iii-11-36"></a>

- **K-III.11.36** [`earnings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Tael.lean#L58-L90) *(key result)* — For label data on a compact set of distinct-point configurations, a quantitative estimate on lifts with tested marks holds eventually in the scale.

<a id="k-iii-11-37"></a>

- **K-III.11.37** [`arriving`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Dispenser.lean#L121-L143) *(key result)* — The pushed-forward density at a configuration equals a sum over sectors with matching flags of integrals over tag variables weighted by streak shares.

<a id="k-iii-11-38"></a>

- **K-III.11.38** [`wheeled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Star.lean#L68-L69) *(key result)* — Under provisions hypotheses there exists a trial system that travels and satisfies purchases.

<a id="k-iii-11-39"></a>

- **K-III.11.39** [`v_paid_factory`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Diana.lean#L57-L104) *(key result)* — Provisions hypotheses imply the empire (aggregate) property for the factory data.

<a id="k-iii-11-40"></a>

- **K-III.11.40** [`y_ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Lys.lean#L40-L60) *(key result)* — Under a heavy list of hypotheses, the root test of the invoice part at every mode is bounded by the budget.

<a id="k-iii-11-41"></a>

- **K-III.11.41** [`asideP`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Gelatin.lean#L23-L92) *(numbered result)* — Applying the coupon estimate to already packed key addresses yields the coupon bound with parameters scaled by eta times t.

<a id="k-iii-11-42"></a>

- **K-III.11.42** [`lava_v`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Reach.lean#L27-L42) *(key result)* — Uniformly on a compact set, eventually in k, an endpoint estimate holds for poised configurations.

<a id="k-iii-11-43"></a>

- **K-III.11.43** [`rated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L48-L71) *(key result)* — Along a refined subsequence the limiting data form a table with seed whose rank matrix has the Maxwell ranks.

<a id="k-iii-11-44"></a>

- **K-III.11.44** [`attire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Delft.lean#L27-L35) *(key result)* — Under spacing and budget hypotheses, the main budget to the boundary holds at any eligible specification.

<a id="k-iii-11-45"></a>

- **K-III.11.45** [`herald`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Morning.lean#L35-L53) *(key result)* — For a branching patch, there is a constant U≥1 such that for large t and x in [t/2,t], suitable parameters make the Dawn condition hold uniformly for β,β' in range.

<a id="k-iii-11-46"></a>

- **K-III.11.46** [`readyA`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L15-L30) *(key result)* — Under the standing hypotheses there is a nonzero conserved current in the kernel together with a scaling that is stable and compatible between the two hierarchies.

<a id="k-iii-11-47"></a>

- **K-III.11.47** [`scopes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Focusing.lean#L43-L101) *(key result)* — For a branching patch, there exists E≥1 such that the strong-scope property holds for all large x.

<a id="k-iii-11-48"></a>

- **K-III.11.48** [`annular_fieldA`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Bravo.lean#L55-L89) *(key result)* — The flux of the stress against homogeneous Killing fields is represented by a single limit field B on annular windows.

<a id="k-iii-11-49"></a>

- **K-III.11.49** [`cast_off`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Star.lean#L64-L66) *(key result)* — For a simple graph, frequent good scales (tender, metering, hours, marks) imply the provisions conclusion for the sequence.

<a id="k-iii-11-50"></a>

- **K-III.11.50** [`success`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/TeamKernel.lean#L71-L89) *(key result)* — The weighted sum over molecules converges to the push-forward value of the partition-type quantity, completing the expansion identity.

<a id="k-iii-11-51"></a>

- **K-III.11.51** [`hoops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Offers.lean#L38-L61) *(key result)* — At weak coupling, eventually in s, for dyed step data matching a patch and ratio, the Helps property holds with beta at most 4 times retimed x.

<a id="k-iii-11-52"></a>

- **K-III.11.52** [`boot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Starring.lean#L31-L37) *(key result)* — For generic points and suitable parameters, the initial uncorrected array (Boot) hypothesis holds for all sufficiently large k.

<a id="k-iii-11-53"></a>

- **K-III.11.53** [`mural_cast`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Esme.lean#L42-L57) *(key result)* — Over any compact set of distinct-point configurations, the wall conditions with numeric gates hold uniformly for all sufficiently large scales.

<a id="k-iii-11-54"></a>

- **K-III.11.54** [`s_choir`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Crowns.lean#L146-L157) *(key result)* — For fit points of at most two, the choir property holds for the short stamp.

<a id="k-iii-11-55"></a>

- **K-III.11.55** [`laurelE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Economist.lean#L23-L32) *(key result)* — If a configuration is created and makes its requirements, then the economics (budget) condition holds.

<a id="k-iii-11-56"></a>

- **K-III.11.56** [`dredge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Dredge.lean#L33-L75) *(key result)* — There is ℓ≥1 such that eventually in x the soundness property holds for all positioned configurations with parameters in range.

<a id="k-iii-11-57"></a>

- **K-III.11.57** [`console`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Festoon.lean#L57-L126) *(key result)* — For healthy polynomial data on a common mask, the tagged cumulant calculation yields a quantitative estimate for the polygon-composed polynomial under degree and weight bounds.

<a id="k-iii-11-58"></a>

- **K-III.11.58** [`preheat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Hearth.lean#L87-L88) *(key result)* — For large sides and couplings there is m>0 such that for all K, D, the peaking property holds eventually in x after subtracting affine squares.

<a id="k-iii-11-59"></a>

- **K-III.11.59** [`aspect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Medal.lean#L36-L76) *(key result)* — Along a sequence of poised tables with diverging index, there exist limiting balances (extraction) for the calibrated data.

<a id="k-iii-11-60"></a>

- **K-III.11.60** [`v_culminates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L84-L95) *(main result)* — For simple G and b large enough, the empire hypothesis implies the Turning property.

<a id="k-iii-11-61"></a>

- **K-III.11.61** [`grilled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/South/FinalG.lean#L76-L83) *(key result)* — Cell hypotheses imply the Grill property for the observable.

<a id="k-iii-11-62"></a>

- **K-III.11.62** [`stroke`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Copse.lean#L50-L72) *(key result)* — A served property for a family of observables propagates through a pushforward kernel with explicit exponential-type bound loss.

<a id="k-iii-11-63"></a>

- **K-III.11.63** [`rendered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Rendered.lean#L36-L86) *(key result)* — If a layout achieves the pointwise representation on positioned data, the pushforward of the field density equals the tableau expression.

<a id="k-iii-11-64"></a>

- **K-III.11.64** [`v_obtain_purchases`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L177-L222) *(key result)* — Offers imply the existence of a trial system that travels and satisfies purchases.

<a id="k-iii-11-65"></a>

- **K-III.11.65** [`v_conditioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L29-L53) *(key result)* — Under a path, tally and instance hypotheses with sufficiently large m, an estimate holds for the ship with the given allowance.

<a id="k-iii-11-66"></a>

- **K-III.11.66** [`v_reward`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Agate.lean#L37-L63) *(key result)* — Under coupler, return-trip and small-parameter hypotheses, the dust pushforward satisfies matric and radii bounds with explicit constants.

<a id="k-iii-11-67"></a>

- **K-III.11.67** [`sponsored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L38-L51) *(key result)* — For a simple gauge group and local ratio, a sufficiently long wait structure guarantees that families paid at those levels satisfy weak completeness.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

# III.11. Interacting rank, Gaussian comparison and the stress tensor

*Part III — Ultraviolet construction (renormalization group).*

Compares field-space ranks with the free theory and constructs stress-tensor data using Gaussian estimates.

**Status: edited.** Checked against the linked Lean and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [← Previous: III.10](III-10.md) · [Next: III.12 →](III-12.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** unit III.11: [`YM/Next/RANK/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK), [`YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON), [`YM/PhysicalNext/RANK_COVARIANCE_ATLAS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS), [`YM/MergeProof/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof) (with `West/`, `North/`, `East/`, `South/`). **Size:** 42,556 lines (about 5,300 declarations).

**Scope.** The unit compares the interacting renormalization-group (RG) history with the free Maxwell field. It also contains the stress-flux argument and the label algebra of the Maxwell equation ideal.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

The unit has two outputs. The first is the **rank comparison**. In the continuum limit, the space $F_d$ of local fields of degree $d$ is isomorphic to the corresponding space of the free Maxwell field, compatibly with complex conjugation and with the lattice symmetry group. Here $F_d$ is the space of labels of degree $d$ modulo labels whose correlations vanish. The second output is the **stress tensor of the limit**: a nonzero conserved stress tensor that satisfies the translation and rotation Ward identities and is normalized against the free Maxwell stress tensor along a scaling sequence. Both outputs rest on quantitative estimates proved here: a per-site determinant budget, chessboard bounds for connected parts of corrected observables, and comparisons of covariances with the free curvature kernel. The trial systems test a finite separating family of free one- and two-point correlations.

Notation. Set $\mu_k=\exp((\log\log\hat\beta_k)^2)$. The centered estimate and the trial systems use this fixed schedule quantity. $G$ is a compact matrix group, assumed simple only where stated; $\dim G$ is the dimension of its Lie algebra; $h$ is normalized Haar measure; $\mathrm{chord}(u)\ge0$ is the chordal distance from $u$ to $1$; and $\mathrm{shell}(r)=\{u\in G:\mathrm{chord}(u)\le r\}$. The torus of side $n\ge2$ is $\Lambda_n=(\mathbb Z/n)^4$, with $c=n^4$ sites, $4c$ bonds and $6c$ plaquettes. The prior $\mu_{\rm prior}$ is product Haar measure on bonds. An RG representation $R$ on $\Lambda_n$ has an inverse coupling $\beta=\beta(R)$, an exponent $\mathrm{exponent}_R$ with constant part $\mathrm{scalar}(R)$, and an unnormalized density $e^{R}=e^{\mathrm{exponent}_R}\cdot(\text{polymer gas})$.

**Proposition III.11.1 (determinant budget on the torus, and its per-site price).**
(a) Let $R$ be a lawful representation on $\Lambda_n$, $n\ge2$, with lawful-class parameters $(\sigma,A,\Lambda,\delta,w)$, and assume $e^{R}\ge0$ pointwise. Let $0<s\le1\le b$ be a Haar budget (Lemma 4.1). Let $g>0$ with $g\le\mathrm{threshold}(R)$ and $\beta g^2=1$. Let $F$ be a $\mu_{\rm prior}$-integrable complex function and $z\ge0$, $X\in\mathbb R$ such that $z|F(U)|\le\exp(\mathrm{exponent}_R(U)+cX)$ for every configuration $U$. Then
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

**Further inputs.**

- **One-step and root-test estimates for polynomial and coefficient data.** [`single`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Meringue.lean#L32-L102) and [`asideP`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Gelatin.lean#L23-L92) apply the coefficient bound to already packed coefficients across one gauge-door step, with parameters scaled by $\eta t$. Also in this group: [`grant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Dock.lean#L179-L185), [`y_ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Lys.lean#L40-L60) and [`console`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Festoon.lean#L57-L126).
- **Eventual estimates and uniform choices.** These include bounds at sufficiently large levels, uniform versions on compact sets of distinct-point configurations, and choices of enlarged waiting windows: [`pedestals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Chimes.lean#L113-L153), [`chamber`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Attic.lean#L157-L203), [`herald`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Morning.lean#L35-L53), [`scopes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Focusing.lean#L43-L101), [`on_hold`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Brite.lean#L31-L122), [`on_demand`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Promises.lean#L37-L127), [`chamber_now`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Distant.lean#L69-L100), [`mural_cast`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Esme.lean#L42-L57), [`earnings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Tael.lean#L58-L90), [`lava_v`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Reach.lean#L27-L42), [`sponsored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L38-L51), [`boot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Starring.lean#L31-L37), [`forge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Tilt.lean#L36-L59). The weak-completeness theorem in this list enlarges the waiting window. The order of the choices is part of each statement.
- **Polynomial and integral identities.** Wick expansion, Taylor polynomials in link variables, pushforward of densities as sums over sectors, and factorization on disjoint supports; see §4.3.

<a id="unit-inputs"></a>

## 2. What it uses

**Inputs from other units.**

- I.1 (lattice, Wilson measure): the periodic torus, plaquette values, the product Haar prior, gauge transformations, the chordal distance on $G$ ([`prior`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L55), [`chord`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L115)).
- II.1 (field labels): the label spaces $\mathcal L_d$ with their coordinates and real structure; the free Wick realization of labels, whose kernel is the Maxwell equation ideal $\mathcal E_d$; the weave and portfolio data used for the corrected label maps ([`equationIdeal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72)).
- II.2 (polymer activities, Wilson family, construction record, cells): lawful representations and their exponent and gas; the Wilson family and its construction record; the tilings and the chessboard root ([`Rep.Lawful`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L181-L183)).
- III.2 (choice of constants): the levels and stages ($\hat\beta_m$, thresholds, loop caps, clip coefficients, stage index $J_m$), the pre-$L$ and post-$L$ constants, delays and windows; the order of choice supplies the eventual estimates and waiting windows listed above, including the stage construction [`ruese`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Expound.lean#L68-L77).
- III.3, III.4 (free covariances, Gaussian integration): the free covariance and its frequency chart, the regulator families with their symbol bounds (used in Lemma 4.10), the window-to-kernel transfer [`intended`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Radian/Signed.lean#L56-L92).
- III.9, III.10 (marginal flow, one nonlinear step): growth of $\hat\beta_m$, the RG history ("course") from cutoff $N$ to level $k$ with its exact vacuum identity, the one-step bounds along paths, and the waiting-window engine [`Wait.engine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L26-L135).
- III.13 (common Wilson family): [`uv_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130), the theorem that closes the chain and supplies every hypothesis of III.11.4–III.11.6 on the main path.
- IV.1 (extraction): extraction orders and refinements, raw limits, projection inclusion, spans, cleaning to a smooth table, and the answers to the work items D01–D06 ([`Base`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L42-L51)).
- VI.1, VI.2 (Ward identities, free Maxwell stress): windows, flux, Killing fields, conservation, finite faithfulness of testers (A04), the free lighthouse and its stress tensor, the canonical free Maxwell data, and the production of the current.
- Consumers: VI.1 ([`Climb.comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L53-L63) also derives Maxwell ranks from the action law), VII.4 (OPE columns), and VIII.1 (the record of local field laws contains the Maxwell ranks; [`Org.UV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L177-L186) is built by III.11.6(b)).

**Standard mathematics.** The chessboard estimate for reflection-positive measures ([Fröhlich–Israel–Lieb–Simon, Comm. Math. Phys. 62 (1978)](https://www.math.caltech.edu/SimonPapers/93.pdf); Glimm–Jaffe, *Quantum Physics*, 2nd ed.), together with reflection positivity of the Wilson action (Osterwalder–Seiler, Ann. Phys. 110 (1978)). Axial (tree) gauge fixing on a torus and invariance of Haar measure ([Seiler, *Gauge Theories as a Problem of Constructive Quantum Field Theory and Statistical Mechanics*, Lecture Notes in Physics 159 (1982)](https://link.springer.com/book/10.1007/3-540-11559-5)). Haar volume of small balls in a compact Lie group. Wick (Isserlis) expansion. Schur complements for Gaussian conditioning. Symbol estimates in frequency space. Finite-dimensional duality (a vector lies in the range of a linear map if and only if it is annihilated by every functional that annihilates the range). Ward identities for a conserved symmetric stress tensor and Killing fields of $\mathbb R^4$.

**Imported constants and assumptions.**

- The Haar-budget constants $(s,b)$ exist by [`integral_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Haar.lean#L170-L211) and [`exists_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L35-L36). They are fixed once for all stages and volumes.
- Hypotheses carried by the outputs: the projector presentation, the one-step cost package, the centred budget, the frequent-scale price conditions, the binding, the shell budget, Grill and weak completeness. On the main path all are discharged before [`uv_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130) (III.13), whose only hypotheses are $G$ simple and $b>0$. The producers in this unit are [`reception`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Eureka.lean#L22-L30)/[`chaletrail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Inns.lean#L33-L53), [`franchise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Snow.lean#L55-L60), [`castle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Snow.lean#L28-L43), [`laurelE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Economist.lean#L23-L32), [`fugacious`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Economist.lean#L34) and [`grilled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/South/FinalG.lean#L76-L83).
- The structures in [`LedgerGate.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/LedgerGate.lean) (one-step "Estimate" packages: ignition, local output labellings, non-leading terms) are definitions, not theorems. Their docstring calls them "physics inputs, not consequences of the shape/lawful structure". They are conditional one-step interfaces. The restarted comparison constructs principal integration data from the binding and the one-step estimates; the older interfaces need not all occur in that route. Their complete correspondence with the restarted interfaces remains open in §7.

<a id="unit-strategy"></a>

## 3. Strategy

The field-space comparison has two parts. Algebraic equations give an upper bound on the dimension of each interacting field space. Short-distance one- and two-point tests give the reverse bound. A conjugation of projectors then identifies the real representations of the signed permutation group.

At each cutoff, the projector kernel is the image of $\mathcal E_d$ under an invertible corrected label map. Free probes separate the on-shell sector, so $\dim F_d^{\rm free}=\dim\mathcal V_d-\dim\ker\Pi_{d,N,p}$. The relay estimates carry these equations to the limit, giving the upper bound. Along a sequence of good levels, the corrected test moments approach their free values. Since the free tests separate a basis, the corrected vectors are eventually linearly independent modulo the limit null space. This gives the lower bound.

The two bounds imply $\mathrm{null}_d(T)=\ker\Pi_\infty$ and $\dim F_d(T)=\dim F_d^{\rm free}$. An invertible operator close to the identity conjugates a cutoff projector to $\Pi_\infty$. Composing it with the corrected label map identifies the Maxwell ideal with the interacting null space, preserving conjugation and signed permutations.

The quantitative engine is the chessboard estimate. The product of reflected copies of a connected part, integrated against the Wilson measure at cutoff $N$, is carried by the exact RG history to a coarse level $m$. There the number of cells equals the number of sites $c_{m,p}$. The flowed observable is bounded pointwise by $r^{-|s|q}\exp(\mathrm{exponent}+qX)$ for a set $s$ of marked modes, and Proposition III.11.1 bounds the resulting ratio of integrals by $e^{c_{m,p}\pi}g^{-4\dim G}$.

The determinant estimate compares two Haar integrals:

- **Numerator.** Extract the factor $e^{6c}$ from the plaquette estimate. A triangular choice of $3c-3$ plaquettes, each owning a bond, gives an integral equal to $(\int e^{-\mathrm{chord}(u)/(g/\sigma_R)}\,dh(u))^{3c-3}$, bounded by $(b(g/\sigma_R)^{\dim G})^{3c-3}$.
- **Vacuum.** Tree gauge leaves $3c+1$ free bonds. Restricting each to a Haar shell of radius $g/4$ gives the lower bound $(s g^{\dim G})^{3c+1}$.

The powers of $g$ cancel up to $g^{-4\dim G}=\beta^{2\dim G}$, which does not depend on the volume. After taking the $c_{m,p}$-th root, its logarithmic contribution is at most $1$, because $2\dim G\log\beta\le8\dim G\,\hat\beta_m\le a_m^{-1}\le c_{m,p}$ eventually. So the root test costs a per-site bound depending only on the stage parameters. The constants are chosen so that the allowance is $e^{2I_k}$ and the error bound is $e^{-I_k}$, where $I_k=\log\mu_k/32\ge\mathrm{work item}$ for the one- and two-point tests; the root of every nonempty connected part is then $\le e^{I_k}/e^{2I_k}=e^{-I_k}\to0$.

All conditions are needed only at **infinitely many** good levels $k$. A diagonal choice of depths then produces the trial sequence (III.11.4). The covariance splitting identifies the fluctuation law used in the one-step comparison. The regulator estimates supply the frequency windows, while the uniform train constants control their propagation; the tender condition includes the numerical clearance needed for both.

The stress tensor (III.11.6, III.11.7) is built by comparing the limit with a free Maxwell model along a scaling sequence. The Ward identities follow from a flux argument on shrinking annuli of radii $r_l\to0$:

- by conservation the flux does not depend on the window;
- after scaling, the flux is an integral over the annulus $r_l/4<|y-x_0|<2r_l$;
- a bound on correlations in annuli (Lemma 4.23) shows that combinations of fluxes annihilating all degree-$D$ testers tend to $0$;
- finite-dimensional duality and finite faithfulness of the testers then give one local field $B$ representing the flux.

<a id="unit-steps"></a>

## 4. Steps

### 4.1 Haar estimates and the determinant budget

**Lemma 4.1 (Haar budget).** There are $0<s\le1\le b$ such that $h(\mathrm{shell}(r/4))\ge s\,r^{\dim G}$ for $0<r\le1$, and $\int e^{-\mathrm{chord}(u)/t}\,dh(u)\le b\,t^{\dim G}$ for $t>0$.
*Sketch:* in exponential coordinates near $1$, the chord is comparable to the Lie-algebra norm and the Haar density is bounded above and below. Compactness extends the upper volume bound $h(\mathrm{shell}(r))\le Cr^{\dim G}$ to all $r>0$. Majorize the exponential by $\sum_{k\ge0}e^{-k}1_{\mathrm{shell}((k+1)t)}$ and sum $C t^{\dim G}\sum_{k\ge0}(k+1)^{\dim G}e^{-k}$.
*Lean:* [`integral_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Haar.lean#L170-L211).

**Lemma 4.2 (plaquette elimination).** Let $n\ge2$ and let $\varphi:G\to[0,1]$ be continuous. Then $\int\prod_{p}\varphi(U_p)\,d\mu_{\rm prior}(U)\le\big(\int\varphi\,dh\big)^{3c-3}$, the product running over all $6c$ plaquettes of $\Lambda_n$.
*Sketch:* fix the spanning tree in which each site $x\ne0$ is joined to $x-e_{i(x)}$, where $i(x)$ is the highest axis with $x_{i}\ne0$. The $3c+1$ non-tree bonds are grouped into tiers by axis. Within each tier, take the wrap bonds first, except one "handle" per tier, then the transverse bonds from higher to lower height. This gives $3c-3$ swept bonds $e$, each assigned a plaquette $p(e)\ni e$. Triangularity: if $e\in p(e')$ with $e'\ne e$, then $e'$ has strictly higher priority than $e$. Integrate the bond of highest priority first. By left and right invariance of Haar measure, $U_{p(e)}$ is Haar-distributed as a function of $U_e$, and no other selected plaquette contains $e$. So $\int\varphi(U_{p(e)})\,\Psi\,d\mu=\big(\int\varphi\,dh\big)\int\Psi\,d\mu$. By induction, the product over the selected plaquettes integrates to exactly $(\int\varphi)^{3c-3}$; the other plaquette factors are bounded by $1$.
*Lean:* [`elimination`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Axial.lean#L368-L383), [`charged_integral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Axial.lean#L347-L365), [`pull_link`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Axial.lean#L314-L345), [`independent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Axial.lean#L278-L303). *(proof read; the combinatorics of the sweep, i.e. the count and triangularity lemmas, statement only)*

**Lemma 4.3 (vacuum lower bound).** Under the hypotheses of III.11.1(a), $\int e^{R}\,d\mu_{\rm prior}\ge\exp\big(\mathrm{scalar}(R)-c(\mathrm{exCost}+\beta\,\mathrm{baseBudget})\big)\,(s\,g^{\dim G})^{3c+1}$.
*Sketch:* $e^{R}$ is gauge invariant ([`gauge_eval`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L46-L68)), so its integral equals the integral over the $3c+1$ free bonds with tree bonds set to $1$ ([`free_count`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Axial.lean#L115-L119)). Restrict to the set where every free bond lies in $\mathrm{shell}(g/4)$. Every bond then has chord $\le g/4$, so every plaquette has chord $\le g$. On calm configurations the polymer gas factor is $1$, and the exponent is $\ge\mathrm{scalar}-c(\mathrm{exCost}+\beta\,\mathrm{baseBudget})$. Lemma 4.1 with $r=g\le1$ bounds the Haar volume of the restriction set from below. Positivity of $e^R$ handles the complement.
*Lean:* [`vacuum_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L76-L111).

**Lemma 4.4 (exponent bound and numerator).** Under the hypotheses of III.11.1(a), with $E=g/\sigma_R$: for every $U$, $\mathrm{exponent}_R(U)\le\mathrm{scalar}+c(\mathrm{exCost}+6)-\sum_p\mathrm{chord}(U_p)/E$. Consequently $z|\int F|\le\exp(\mathrm{scalar}+c(\mathrm{exCost}+6+X))\,(b\,E^{\dim G})^{3c-3}$.
*Sketch:* for the clipped plaquette action at $\beta=g^{-2}$, one has $\mathrm{chord}/E-1\le\beta\cdot(\text{base term})$:

- in the quadratic regime, with $x=\mathrm{chord}/g$, use $\sigma_R x-1\le\sigma_R x^2/2$ and $\sigma_R\leq_R$;
- above the clipping threshold $t$, use $g\le t$ and $\sigma_R\le\ell_R$ to obtain $\sigma_R\,\mathrm{chord}/g\le\beta\,\ell_R\,t\,\mathrm{chord}$; the constant term of the linear branch is nonnegative.

The principal part is an average over signed reflections of the pulled-back configuration. The chord sum is invariant under these, and the loop and activity corrections are bounded by $c$ times their per-site prices. This gives the first bound, with $6=$ the number of plaquette orientations accounting for the $-1$ per plaquette. Then $z|F|\le e^{\mathrm{scalar}+c(\dots)}\prod_p e^{-\mathrm{chord}(U_p)/E}$, and Lemma 4.2 with $\varphi=e^{-\mathrm{chord}/E}$ together with Lemma 4.1 conclude.
*Lean:* [`exponent_retains`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L153-L181), [`numerator`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L189-L217).

**Lemma 4.5 (the ratio; III.11.1(a)).** Divide Lemma 4.4 by Lemma 4.3. With $u=3c-3$ and $l=3c+1=u+4$, the exponent is
$$c(2\,\mathrm{exCost}+6+\beta\,\mathrm{baseBudget}+X)+u\,\mathrm{ent}-l\log s-4\dim G\log g .$$
Since $\mathrm{ent}\ge0$, $\log s\le0$, $u\le3c$ and $l\le4c$, this is at most $c\pi-4\dim G\log g$.
*Lean:* [`determinant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L240-L274).

**Lemma 4.6 (per-site work item; III.11.1(b)).** Under the assumptions and uniformly over the parameter ranges of III.11.1(b), for all sufficiently large $m$:

- (i) $\pi\le\mathrm{work item}-1$;
- (ii) $-4\dim G\log g/c_{m,p}\le1$.

*Sketch:* (i) uses $\mathrm{exCost}\le1+(8\,\mathrm{paths}+1)$, from $\delta\le1$, $\Lambda t^2\le1$ and $\hat\beta_m t^3,\hat\beta_m t^4\le1$ eventually; and $\beta\,\mathrm{baseBudget}=6(\mathrm{direct}+\mathrm{paths}^2)/2$ by $\beta g^2=1$. (ii) Since $-4\log g=2\log\beta\le2\beta\le8\hat\beta_m$, and $\hat\beta_m$ grows linearly in $\log a_m^{-1}$, one gets $8\dim G\,\hat\beta_m\le a_m^{-1}\le c_{m,p}$ eventually.
*Lean:* [`affordable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L119-L123), [`rolls_law`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L46-L79).

**Lemma 4.7 (chessboard root).** Let $T$ tile the cutoff torus into $q$ cells, where $q$ is the number of sites of the level-$m$ torus. Suppose the exact RG history has terminal density $P$. Assume that deleting the additive activities of $P$ gives a lawful representation with activity parameter $0$, and that the deleted additive term has absolute value at most $q\delta$. Let $V$ be a finite set of modes and let every component $\Phi_s$ be continuous. Assume $r>0$, $e\ge0$, $g>0$, $g\le\mathrm{threshold}(P)$ and $\beta(P)g^2=1$. Suppose the local activity bound for the flowed stamped polynomial, at radius $r$ and exponents $(e,l,L)$, gives
$$r^{q\,\mathrm{card}\,s}|F_s(U)|\le\exp\big(\mathrm{exponent}_P(U)+q(L+\mathrm{card}\,V\,l)\big)$$
for every terminal configuration $U$ and every $s\subseteq V$. Here $F_s$ is the flow of the unnormalized Wilson density multiplied by the product of the reflected copies of $\Phi_s$. Then
$$\rho_T(\Phi_s)\le\frac{\exp\big(\pi(P,L+\mathrm{card}\,V\,l,g)-4\dim G\log g/q\big)}{r^{\mathrm{card}\,s}},$$
where $\rho_T$ is the absolute value of the stamped Wilson expectation to the power $1/q$.

For the station at level $k$, assume allocation, per-site affordability at the width level, $\mathrm{card}\,V\le M$, $l,L\le1$, and $r=e^{2I}$ with $I\ge\mathrm{work item}(O,k,M)$. Then, for every nonempty $s$, $\rho_T(\Phi_s)\le e^{-I}$.
*Sketch:* the exact vacuum identity supplies the Wilson partition function as denominator. Apply III.11.1(a) to the representation with its additive activities deleted. Comparing both numerator and denominator costs $e^{q\delta}$ twice, supplying the $2\delta$ already included in $2\,\mathrm{exCost}$ in $\pi$. Take the $q$-th root. For the last assertion, allocation keeps the stage constant between width and $k$; $L+\mathrm{card}\,V\,l\le1+M$, and $r^{\mathrm{card}\,s}\ge r$.
*Lean:* [`s_postage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Denarii.lean#L49-L85), [`denture`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Denarii.lean#L27-L43), [`coupon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Denarii.lean#L90-L123). *(proof read; the flow identity and the cell-stamp bookkeeping, statement only)*

### 4.2 Free covariances

**Lemma 4.8 (III.11.2).** *Sketch:* expand the pair term as $\sum_{a,b}\mathrm{Re}\,\Gamma_{ab}\,(r^{\Delta_L}\mathrm{ev}_L(r^{-\mathrm{gen}\,a}t_a))(r^{\Delta_S}\mathrm{ev}_S(r^{-\mathrm{gen}\,b}t_b))$. Keys of generation below the scaling degree of the stencil evaluate to $0$. Keys of generation equal to the scaling degree give exactly the free curvature kernel ([`deck`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StrideCost.lean#L64-L67)). Every other term carries an extra factor $r^{-1}$ or smaller. So $r$ times the remainder is at most $D\sum|\mathrm{ev}_L(t_a)||\mathrm{ev}_S(t_b)|$, summed over the non-leading pairs.
*Lean:* [`fence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StrideCost.lean#L70-L98). Its eventual form is the pair penalty [`Prayer.penalty`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/EastBell.lean#L44-L67).

**Lemma 4.9 (measured Gaussian data).** Let $Q$ be the symmetric covariance array and $m$ the mean vector obtained by applying the normalized stencil and remainder functionals to measured pair and one-point data. Let $F$ be the free-current covariance on the stencil keys, extended by zero on the remainder indices. Suppose $B\ge1$, $T,P,\varepsilon\ge0$, and, entrywise,
$$|m_i|\le PT,\qquad |Q_{ij}-F_{ij}|\le PT^2.$$
On the stencil keys assume the sharper bounds $|m_i|\le\varepsilon T$ and $|Q_{ij}-F_{ij}|\le\varepsilon T^2$. If
$$PT\le B,\qquad |F_{ij}|+PT^2\le B,\qquad \varepsilon T\le e,\qquad \varepsilon T^2\le e,$$
then all measured means and covariances are bounded by $B$, and their restriction to the stencil keys differs from $(0,F)$ by at most $e$ in both means and covariances.
*Sketch:* use the triangle inequality for $Q$. In the application, the measured horizons and bridges satisfy the discrete Bianchi identities and scaled finite-difference bounds. The stencil normalization $T$ bounds the sampling coefficients and the remainder factor $M^{d-1}$ for addresses within radius $M$. These give the displayed broad and sharp bounds. Positivity of $Q$ is not required.
*Lean:* [`resolution`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Prayer.lean#L74-L111).

**Lemma 4.10 (III.11.3).** *Sketch:* write $\lambda=2\pi$ and let $T(\zeta)$ be exterior multiplication by $i\zeta$ from one-forms to two-forms. In the chart $\zeta=\lambda\xi$, the heat symbol is
$$e^{-|\zeta|^2}|\zeta|^{-2}(T(\zeta)T(\zeta)^*)_{a,b},$$
with the color Kronecker factor. The regulator estimates in III.3 bound the chart as a symbol of order $0$ and its difference from this heat symbol as a symbol of order $1$. The chain rule under $\xi\mapsto\lambda\xi$ preserves these orders and changes the constants by fixed powers of $\lambda$. Sum the constants over the finitely many plaquette pairs to obtain a bound independent of $G$ and the colors.
*Lean:* [`window_prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Window.lean#L118-L136), [`heat_window`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Window.lean#L57-L76).

**Lemma 4.11 (covariance splitting and propagation).**
(i) Let an atlas be compatible with the chosen schedule and its retained unmasked quadratic forms, and assume the atlas symmetry, coercivity, inverse and crossing laws. Let $i<N$, choose a tree forest for the step, and assume the step torus satisfies the size condition for tree inversion. Then
$$\mathcal C_{i+1}-W_i\mathcal C_iW_i^{\mathsf T}=d_f\Gamma_i d_f^{\mathsf T},\qquad\Gamma_i\succeq0,$$
where $\mathcal C_i$ is the complete curvature covariance, $W_i$ the passage map, $d_f$ the fine exterior derivative, and $\Gamma_i$ the uncut tree covariance, extended by zero on tree bonds.
(ii) Fix kernel choices and stage indices $j,t\ge4$. There is $R\ge1$ such that, for every $G$, every schedule with these kernel choices, and every $N,i,p,d$ satisfying $J_{i+1}=j$, $J_i=t$ and $d-1\le j-2$ (natural-number subtraction), the difference-motion propagation bound holds with constant $R$.
*Sketch:* (i) is a Schur-complement identity on the curl image; the restricted tree inverse gives positivity. For (ii), use the uniform resolvent estimate for the two stage indices and sum its six plaquette components.

The table [`prepared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Gates.lean#L86) chooses, for each kernel, the uniform window, covariance and propagation constants; their required smallness is a separate clearance condition.
*Lean:* [`one_fold`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Identity.lean#L198-L213), [`train_issue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Step.lean#L106-L116).

**Lemma 4.12 (Wick expansion).** Let $A$ be a finite index set, let $\mathrm{loc}:A\to S$ take values in an ordered location set, and let $Z_a$ be formal Gaussian generators with zero mean and symmetric covariance $Q$. Assume $Q(Z_a,Z_b)=0$ whenever $\mathrm{loc}(a)=\mathrm{loc}(b)$. For every $p\subseteq A$, the formal Wick moment of $\prod_{a\in p}Z_a$ is the sum, over perfect matchings of $p$ joining different locations, of the products of their covariances. No positivity assumption is imposed on $Q$.
*Sketch:* remove one index and use the Gaussian moment recursion. The zero mean removes the singleton term, and the covariance hypothesis removes pairs at a common location. The remaining choices are in bijection with the admissible matchings.
*Lean:* [`headed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTrack.lean#L131-L173).

### 4.3 Polynomial calculus and identities

**Lemma 4.13 (polynomial and integral calculus).** Write $\|P\|_1$ for the sum of the absolute values of the coefficients of a polynomial $P$.

- (i) Fix derivative rules for $G$ and an order $d$. There is $C\ge0$ such that, whenever a local observable $A$ is regular for a parameter set of order at least $d+1$ and has the prescribed derivative bounds $c$, its pullback $A\circ\mathcal N$ to a link-coordinate chart has a Taylor polynomial $P$ of degree at most $d$ satisfying $\|P\|_1\le c(\mathrm{card}\,\text{links}+1)^dC$ and $|A(\mathcal N(x))-P(x)|\le c\|x\|^{d+1}$ for $\|x\|$ within the fixed chart radius. [`minted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/LineBox.lean#L168-L205)
- (ii) For a family $A_i$ satisfying (i) with bounds $c_i$, and coefficients $f_i$ such that $S=\sum_i|f_i|c_i<\infty$, there is a degree-$d$ polynomial $P$ with $\|P\|_1\le S(\mathrm{card}\,\text{links}+1)^dC$ and remainder at most $S\|x\|^{d+1}$. [`till`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Stories.lean#L99-L112)
- (iii) Fix real normed spaces $E,V$, with $V$ a normed algebra, and $D\in\mathbb N$. There are $C\ge0$ and $q\in\mathbb N$ such that, for every finite list $f_1,\dots,f_l:E\to V$, point $x$, and $B\ge1$, if each $f_i$ is $C^D$ at $x$, $f_i(x)=1$, and $\|\partial^j f_i(x)\|\le B$ for $j\le D$, then $\|\partial^j\prod_i f_i(x)\|\le C((1+l)B)^q$ for $j\le D$. [`conquer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Terrain.lean#L66-L123)
- (iv) For one- or two-insertion polynomial data in the staged comparison, assume the common-mask condition, the comparison bounds on means and covariances, $0<\varepsilon\le1$, coefficient bound $w$, degree bound $D$, the prescribed variable supports, and vanishing of inadmissible pair terms. The difference between the resulting connected component and its free polynomial comparison is at most $t+z+(u+t)t+tu$, where $u,t,z$ are respectively the polynomial size, one-factor error and two-factor error bounds of that comparison. [`console`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Festoon.lean#L57-L126)
- (v) For a bounded measurable gauge-invariant density $g$, a branching step and an allocation satisfying its chart and integrability conditions, the pushforward is exactly the sum over matching-flag sectors and tree/tag choices of their weighted conditional integrals. If these integrands have a common factor $\Lambda(U)$ and a finite local decomposition with the required integrability, the result is $\Lambda(U)$ times the sum of products over pairwise disjoint compatible local components. [`arriving`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Dispenser.lean#L121-L143), [`rendered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Rendered.lean#L36-L86)
- (vi) Fix a valid coarse configuration and a tree/tag choice. If finitely many integrable observables satisfy the locality and compatibility conditions of the conditional fluctuation law, and their coarse supports are pairwise disjoint, their product is integrable and its conditional integral equals the product of their conditional integrals. [`peer_beams`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Sight.lean#L132-L158)

*Sketch:* Taylor's theorem gives (i), and absolute coefficient summability gives (ii). For (iii), split each factor as $1+(f_i-1)$ and induct on the derivative order; the highest derivative terms add rather than multiply. For (iv), the two-point cumulant is the second moment minus the product of the means; expand the difference and use the three stated bounds. For (v), apply the allocation identity before discarding sectors with the wrong flags, then group the local components. For (vi), the joint local-coordinate marginal is a product measure, so Fubini gives factorization. *(proof read; local comparison and allocation inputs statement only)*

### 4.4 From frequent good scales to trial systems (III.11.4)

**Lemma 4.14 (multi-step propagation).** Fix a level $k\le N$, a band $b$, a fitted configuration $x$ with $v$ insertions, and an exact RG history. Let $m_0$ and $m_1$ be its width and middle levels. Assume allocation at $k$, admissible representations along $[m_0,m_1]$, a numerical propagation bound for arity $M$, and
$$\hat\beta_u\in[\hat\beta_k/2,\hat\beta_k]\quad(m_0\le u\le m_1),\qquad v\le M.$$
Assume the instance decomposition for the tested labels: at the middle level, the marked sources approximate the negative free-profile terms within the prescribed error, with the required background and source bounds, and the subsequent steps satisfy the exhibited bounds. Finally assume each free-profile term has absolute value at most $\exp((\log\log\hat\beta_k)^2/4)$.

Then the flow of the corrected stamped observable has a local activity decomposition at $m_0$ with radius $\mathrm{allowance}(M,k)$ and exponents $(e,1,1)$, where $e$ is the input source exponent.
*Sketch:* use the middle-level decomposition and the free-profile bound to initialize the source estimate. The propagation bound controls its iteration through $[m_0,m_1]$; the coupling window keeps every intermediate estimate in the same numerical range. The correction cancels the leading free-profile terms. This is the local decomposition used in Lemma 4.7.
*Lean:* [`v_conditioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L29-L53). *(proof read; helper estimates statement only)*

**Lemma 4.15 (the chain).** Under the hypotheses of III.11.4:

1. At infinitely many $k$, the simultaneous price and insertion conditions give covariance data, an exact RG history and compatible restarted representations, eventually in $N$ and for every $p$. The uniform covariance and test-point estimates supply the local Gaussian comparison. ([`cast_off`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Star.lean#L64-L66) via [`backstage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Star.lean#L49-L63).)
2. Construct a common correction map and polynomial approximations for all rows. The one-step comparison supplies the coefficient, support and remainder bounds on the same path of representations. ([`v_paid_factory`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Diana.lean#L57-L104), *proof read; analytic inputs statement only*.)
3. Compare the resulting Gaussian polynomial moments with the free profiles. The eventual finite-difference bounds transfer this comparison from the chosen representatives to the actual corrected columns, giving the instance estimates of Lemma 4.14. ([`v_culminates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L84-L95), *proof read*.)
4. Apply Lemma 4.14 to propagate the corrected estimates to the width level, retaining the terminal density identity and admissibility needed for the root estimate. ([`v_pay_all`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L112-L125), *proof read*.)
5. Offers give a trial system. Choose depths $k_i$ inductively among the good levels, with $k_{i+1}>k_i$, strictly increasing widths, and strictly decreasing test scales tending to $0$. The lifts come from [`ticketed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L149-L173) (bounded, real, with first entry the reference unit). The chessboard bounds come from Lemma 4.7, using the per-site affordability [`banking`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L42), which follows from Lemma 4.6. ([`v_obtain_purchases`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L177-L222), *proof read*.)

*Lean:* [`wheeled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Star.lean#L68-L69) composes items 2–5.


**Lemma 4.16 (eventual insertion estimates).** Assume $G$ is simple, $C$ satisfies the construction record, and the one-step cost package uses the prescribed weight sequence and multiplicities at least $1$. Fix a degree-$d$ column family $X$ and stage package whose mark exponent satisfies $c\ge2(w(G,d)+1)$, where $w(G,d)=w_d$ is the prescribed coefficient exponent. Then, for all sufficiently large $k$, metering at $k$ implies the lantern-mark condition for $X$ at $k$.
*Sketch:* write $x=\hat\beta_k$ and $b_a(x)=\exp(a(\log\log x)^2)$. For every fixed $a$, the inequality $b_a(x)s\le b_{-8}(x)$ with $s\ge0$ gives
$$s\le\exp(-(8+a)(\log\log x)^2)\le x$$
for sufficiently large $x$. Hence $x^{-c/2}s\le x^{-w(G,d)}$. The one-step estimate and spacing of the rounded test points turn this coefficient bound into the required insertion estimate. The threshold is uniform over the tested coefficients, cutoffs and periods.
*Lean:* [`bursts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SteamW.lean#L54-L59), [`quaking`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SteamW.lean#L45-L52). *(proof read; analytic inputs statement only)*

**Lemma 4.17 (discharge of the frequent-scale conditions).** Given compatible pre-$L$ price data and one-step bounds for a sheet, with the stage thresholds below the chosen block lengths and each degree index eventually present in the stage index sets, a Haar budget, nonnegative mark exponents and simple $G$, there are panels $Q_d$ and a waiting window extending any given one with the following property. For every Wilson family $C$ paid on that window and every binding with these prices, for every $d$, the four price conditions hold at infinitely many levels.
*Sketch:* the restarted comparison and the scale-selection construction produce the panels and the window; frequency follows because each requested degree index is eventually present in those stage sets.
*Lean:* [`franchise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Snow.lean#L55-L60). *(proof structure read; helpers statement only)*

### 4.5 The rank comparison (III.11.5)

**Lemma 4.18 (equation count).** Under the projector presentation of III.11.5(i), at every cutoff, $\dim\mathcal L_d\le\dim\ker\Pi_{d,N,p}+\dim F_d^{\rm free}$.
*Sketch:* $\ker\Pi_{d,N,p}$ is the image of $\mathcal E_d$ under an injective corrected label map, by the projector presentation. The free null space is the image of $\mathcal E_d$ under the label coordinates. This uses [`projectionExact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L102-L118) (a label is null in the free table if and only if its on-shell image lies in the residual) and [`no_residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L38-L54) (the residual is $0$: free probes separate the on-shell sector). Then $\dim F_d^{\rm free}+\dim\mathcal E_d=\dim\mathcal L_d$.
*Lean:* [`savings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L19-L47), [`EquationCount`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Monitors.lean#L92-L94), [`projectionExact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L102-L118), [`no_residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L38-L54). *(proof read; free positivity input statement only)*

**Lemma 4.19 (short-distance comparison and independence).** Assume $C$ satisfies the construction record, $f$ gives generic point limits $S$, and the correlation kernels of $S$ are continuous on generic configurations and integrable against every separated test function. Let $Z$ satisfy the purchase conditions, and suppose all its coefficient vectors have iterated limits along $f$. Then:

- (i) for every row and every basis column, the correlation of its limiting corrected vectors at the trial's physical points differs from the free correlation at the rescaled points by at most $P_k\gamma_k$, where $P_k$ is the polynomial coefficient weight of the free profile. The numbers $P_k$ converge and $\gamma_k\to0$, so these correlations converge to their prescribed free test values;
- (ii) for all sufficiently large $k$, the limiting vectors of trial $k$ are linearly independent modulo the subspace of labels annihilated by every integrated correlation test of $S$.

*Sketch:* expand the ordinary moment using the relative connected components and apply the chessboard inequality to every nonempty component. This gives the error $P_k\gamma_k$ before the cutoff limits, and the bound passes through those limits. Each row functional descends to the quotient by the integrated-test null space. The resulting finite matrix converges to the injective free detector matrix. Injectivity is open in finite dimensions, giving (ii).
*Lean:* [`measured`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Monitors.lean#L71-L87); the comparison is [`Purchases.samples`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bought.lean#L112-L123)/[`converge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bought.lean#L125-L133) in [`Bought.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bought.lean). *(proof read; chessboard input statement only)*

**Lemma 4.20 (seed and null space).** Assume $C$ satisfies the construction record. Under a centred port for $C$ along $f$, raw limits $S$ along that same extraction, relay bins with convergent projectors, the equation count for every $d$, and trial systems with the purchase conditions for every $d$, there is a refinement along which the following hold:

- the arrival and spans records;
- a cleaned smooth table $T$;
- the seed record for $T$;
- for every $d$: $\mathrm{null}_d(T)=\ker\Pi_\infty$, where $\Pi_\infty$ is the limit projector, and $\dim F_d(T)=\dim F_d^{\rm free}$.

*Sketch:* the relay estimates give $\ker\Pi_\infty\subseteq\mathrm{null}_d(T)$. Lemma 4.19(ii) gives the reverse dimension inequality, using the equation count and eventual stability of the projector kernel dimension. Hence the subspaces coincide, and the field dimensions agree.
*Lean:* [`arriving_seed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Beam.lean#L153-L180), [`equation_retains`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Beam.lean#L142-L147). *(proof read; analytic inputs statement only)*

**Lemma 4.21 (equivariant identification).** Under the projector presentation of III.11.5(i) and the extraction record for its projectors and cleaned table $T$, there are the real, signed-permutation-equivariant isomorphisms $\Phi_d$ of III.11.5. The free table has its canonical real structure and zero residual null space.
*Sketch:* let $A_i\to\Pi_\infty$ be the projectors along the extraction, and set $Y_i=\Pi_\infty A_i+(1-\Pi_\infty)(1-A_i)\to1$. For large $i$, $Y_i$ is invertible and $Y_iA_i=\Pi_\infty Y_i$. Since $A_i$ and $\Pi_\infty$ are real and equivariant, so is $Y_i$. Then $L=Y_i\circ(\text{corrected label map})$ maps $\mathcal E_d$ onto $\ker\Pi_\infty=\mathrm{null}_d(T)$ ([`drumroll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Thrush.lean#L13-L68)). The inverse of the induced quotient map, followed by the fixed free coordinate identification, is $\Phi_d$.
*Lean:* [`thrush`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Thrush.lean#L72-L114), [`drumroll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Thrush.lean#L13-L68).

**Lemma 4.22 (III.11.5).** Under the hypotheses of III.11.5, its conclusion follows by the following steps:

1. extract raw point limits (IV.1) and include the label projections;
2. build, for each $d$, the free detector columns $X_d$, which form a basis of $F_d^{\rm free}$;
3. combine assumption (iii) with Lemma 4.16 and apply III.11.4 to get trial systems with the purchase conditions;
4. apply Lemma 4.20 with Lemma 4.18;
5. assemble the extraction record (using D05);
6. conclude with Lemma 4.21.

*Lean:* [`rated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L48-L71).

### 4.6 The stress tensor (III.11.6, III.11.7)

**Lemma 4.23 (annihilated flux combinations).** Under the hypotheses of III.11.7, let $I$ be a finite family of generic tester configurations on the schedule grids, each with $x_0=0$, and let $(g_a)$ be coefficients with $\sum_ag_a\,\mathrm{test}_a(z)=0$ for all $z\in F_D$. Here $\mathrm{test}_a$ inserts $z$ at the root with the remaining fields of tester $a$; $\mathrm{flux}_a$ inserts the flux built from $(\mathcal J,U,v)$ there. Then $\sum_ag_a\,\mathrm{flux}_a=0$.
*Sketch:* let $r_l\to0$ be the radii of the shell budget. Choose a smooth radial bump $\chi$, equal to $1$ on the ball of radius $1/2$ and supported in the unit ball. Conservation makes the flux independent of the window, so for large $l$ use $\chi_l(y)=\chi(y/r_l)$. By homogeneity of $U$, the flux becomes $-\sum_{ij}\int M_{ij}(y)\,r_l^{3+p}\langle\mathcal J_{ij}(r_ly)\cdots\rangle\,dy$, where $M_{ij}=\partial_i\chi\cdot U_j$ is integrable and supported in $\tfrac12\le|y|\le1$. The annulus bound [`zone`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Ozone.lean#L21-L45) says that, for annihilating combinations, $\sup_{|y|\in(r_l/4,2r_l)}\big|\sum_ag_a\,r_l^{3+p}\langle\mathcal J(y)\cdots\rangle_a\big|\to0$. So the combination is a constant sequence tending to $0$.
*Lean:* [`tenet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Blanca.lean#L49-L120), [`zone`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Ozone.lean#L21-L45). *(proof read; annulus comparison inputs statement only)*

**Lemma 4.24 (III.11.7).** *Sketch:*

- for each finite set of tester configurations, Lemma 4.23 and finite-dimensional duality ([`obtainable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Bravo.lean#L31-L52)) give $B$ matching all their fluxes;
- fix a finite separating family of testers (A04), choose $B$ matching it, and compare with the field matching its union with any additional tester; separation forces the two fields to agree;
- translation covariance of flux and correlations moves any grid configuration to $x_0=0$;
- continuity of the flux and of the limit kernels, plus density of grid configurations, extends the identity to all distinct points.

*Lean:* [`annular_fieldA`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Bravo.lean#L55-L89), [`obtainable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Bravo.lean#L31-L52).

**Lemma 4.25 (stress laws).** Under the hypotheses of III.11.7, there are linear translation maps $F_d(S)\to F_{d+1}(S)$ and rotation maps $F_d(S)\to F_d(S)$ satisfying the respective flux identities. The rotation maps also depend real-linearly on the skew matrix.
*Sketch:* apply Lemma 4.24 with constant fields $U=e_i$ ($p=0$, $D=d+1$) and with the rotation fields $U(y)=ky$, $k$ skew ($p=1$, $D=d$). Linearity follows from linearity of the flux and separation of fields by correlations.
*Lean:* [`shells_law`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Orange.lean#L33-L63).

**Lemma 4.26 (III.11.6).** Under the respective hypotheses of III.11.6(a) and (b), the stated stress and ultraviolet records exist.
*Sketch of (a):*

1. D06 gives the orientation law.
2. The station equivalences identify the field spaces of $S$ with those of the free model; this uses the hypothesis [`DimAbove`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L108).
3. [`produce_current`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L129-L167) (VI.2) gives $(\mathcal J,X)$ with $\mathcal J\ne0$, the approach, stability, the meter and zero current divergence.
4. [`linear_cons`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Tensor.lean#L121-L125) converts zero current divergence to conservation. The weak comparison along the scaling sequence supplies the action law.
5. Lemma 4.25 gives the stress laws.

*Sketch of (b):* take free Maxwell data for simple $G$ and replace them by the canonical data ([`FreeStress.fire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L137-L150)). Build the station hypothesis from the seed and weak completeness, and the hypothesis [`DimAbove`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L108) from the corrected rank widths. Then apply (a).
*Lean:* [`readyA`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L15-L30), [`emanate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L31-L37). *(proof read; helper estimates statement only)*

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

- **The volume-uniform root test.** A per-site loss of $\log\beta$ in the chessboard root would destroy the comparison, because the budget must tend to $0$ while $\beta\to\infty$. The tree-gauge count of III.11.1 avoids this: it costs only $\beta^{2\dim G}$ in total, not per site. The price for this is a crude, but uniform, per-site constant. This estimate uses Haar integration rather than a Hessian determinant.
- **The direction of the rank argument.** The upper bound (equation count) is algebraic and holds at every cutoff. The lower bound needs the short-distance comparison, at infinitely many scales only, through trial sequences. The equivariant isomorphism comes from conjugating projectors, not from an explicit basis. The conclusion identifies complex representations with compatible conjugations under signed permutations.
- **Frequent rather than eventual scales.** Every price condition is required only at infinitely many levels; a diagonal extraction then selects the trials. This is weaker than an "eventually in $k$" statement, and it is all the rank argument needs.
- **Uniformity.** The constants must be chosen before the block lengths and must control every period. Eventual estimates cannot replace bounds on a specified comparison window without the corresponding delay.
- **Connections.** The stress-flux argument supplies the local charge fields of VI.1. The equation-ideal calculation uses the free label algebra of II.1.

<a id="unit-notation"></a>

## 6. Notation

- **Written proof:** schedule factor $\mu_k$

  **Lean (glossary):** [`monitor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L81)

  **Meaning:** $\exp((\log\log\hat\beta_k)^2)$

- **Written proof:** coefficient exponent $w_d$

  **Lean (glossary):** [`winter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Tender.lean#L11)

  **Meaning:** degree of the input coefficient family plus $4$

- **Written proof:** Haar budget $(s,b)$

  **Lean (glossary):** [`HaarBudget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L26-L33) (`small`, `big`)

  **Meaning:** lower constant for shells, upper constant for $\int e^{-\mathrm{chord}/t}$

- **Written proof:** $\sigma_R$, $\mathrm{ent}$

  **Lean (glossary):** [`strength`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L116), [`ent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L220)

  **Meaning:** $\min(1,\text{linear clip})$; $\log b-\dim G\log\sigma$

- **Written proof:** per-site price $\pi$, work item

  **Lean (glossary):** [`protection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L225-L227), [`work item`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L41-L44)

  **Meaning:** III.11.1

- **Written proof:** admissible at level $m$

  **Lean (glossary):** [`Meets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L28-L36)

  **Meaning:** conditions on $(P,g,\Lambda,\delta)$ in III.11.1(b)

- **Written proof:** chessboard root $\rho_T$

  **Lean (glossary):** `Cells.Tiling.rootTest`

  **Meaning:** $\lvert E\prod_{\rm cells}\text{copy}\rvert^{1/\mathrm{card\,cells}}$

- **Written proof:** free curvature kernel

  **Lean (glossary):** `light`

  **Meaning:** derivative of the free Maxwell curvature two-point kernel between colored stencils

- **Written proof:** scale-$r$ pair term

  **Lean (glossary):** `collect`, `arc`, `arbor`, `Beamer.amount`

  **Meaning:** $\sum\Gamma_{ab}\,r^{-\mathrm{gen}}t_a\otimes r^{-\mathrm{gen}}t_b$; $r^{2+\mathrm{ord}}$

- **Written proof:** Fourier chart rate

  **Lean (glossary):** [`circleRate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Fourier.lean#L26)

  **Meaning:** $2\pi$; heat parameter $(2\pi)^2$

- **Written proof:** window estimate

  **Lean (glossary):** [`Window`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Radian/Signed.lean#L47-L53), [`Cast`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Radian/Means.lean#L16-L19)

  **Meaning:** symbol bounds of III.11.3

- **Written proof:** stage package, metering

  **Lean (glossary):** [`Cohesion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Concord.lean#L38-L51), [`Metering`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Concord.lean#L62-L64)

  **Meaning:** per-degree stage data; charge and launch at $k$

- **Written proof:** price conditions

  **Lean (glossary):** [`Tender`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Consumer.lean#L71), `Metering`, [`ShowHours`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Pleas.lean#L21-L26), [`Vents`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Postsale.lean#L19-L21), [`LanternMarks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Proceed.lean#L74-L77)

  **Meaning:** hypotheses of III.11.4 at a level $k$

- **Written proof:** provisions, aggregate, turning, offers

  **Lean (glossary):** [`s_provisions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Diana.lean#L37), [`s_empire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Diana.lean#L44-L51), [`Turning_`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L76-L79), [`Offers_`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L110)

  **Meaning:** successive frequent-scale conditions of Lemma 4.15

- **Written proof:** trial system, purchase conditions

  **Lean (glossary):** `Columns.Trials`, [`Purchases`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bought.lean#L68-L84), [`Travels_`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L134-L147)

  **Meaning:** III.11.4

- **Written proof:** compatible quadratic atlas

  **Lean (glossary):** [`Binding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Consumer.lean#L30-L38)

  **Meaning:** shape, coercivity, size and path compatibility on the same Wilson family

- **Written proof:** launch conditions

  **Lean (glossary):** [`Launch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratchet.lean#L35-L41)

  **Meaning:** local comparison and propagation conditions at a specified level

- **Written proof:** projector presentation $\Pi$

  **Lean (glossary):** [`Scotia`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Eureka.lean#L16-L20)

  **Meaning:** projectors whose kernels are corrected images of $\mathcal E_d$

- **Written proof:** one-step cost package

  **Lean (glossary):** [`Scrim`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Biscuit.lean#L29-L34)

  **Meaning:** step costs along gauge doors

- **Written proof:** Maxwell equation ideal $\mathcal E_d$, $F_d^{\rm free}$

  **Lean (glossary):** `Maxwell.equationIdeal`, `Maxwell.freeTable`

  **Meaning:** labels vanishing on the free field; free field spaces

- **Written proof:** Maxwell ranks

  **Lean (glossary):** [`Maxwell.Ranks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L135-L139)

  **Meaning:** equivariant isomorphisms $F_d(T)\cong F_d^{\rm free}$

- **Written proof:** numerical upper dimension bound

  **Lean (glossary):** [`DimAbove`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L108)

  **Meaning:** $\dim F_d(S)\le\dim F_d^{\rm free}$

- **Written proof:** equation count

  **Lean (glossary):** [`EquationCount`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Monitors.lean#L92-L94)

  **Meaning:** Lemma 4.18

- **Written proof:** seed record

  **Lean (glossary):** [`Spec.Seed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26)

  **Meaning:** cutoff, limits, axioms, cell hypothesis, corrected rank widths

- **Written proof:** shell budget

  **Lean (glossary):** [`Aroma`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Ozone.lean#L16-L19), [`Economics`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Economist.lean#L20-L21)

  **Meaning:** shell estimates, open tabs, radii $r_l\to0$

- **Written proof:** flux, window

  **Lean (glossary):** `flux J χ U x q v`, `Window` (VI.1)

  **Meaning:** flux of the stress against a vector field

- **Written proof:** arbitrarily fine comparison systems

  **Lean (glossary):** [`Stations`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L112-L114)

  **Meaning:** for every order, size and positive tolerances, an admissible station at an arbitrarily small scale

- **Written proof:** cofinal grid approximation

  **Lean (glossary):** [`Grill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L121-L123)

  **Meaning:** approximation systems at cofinally many grid levels

- **Written proof:** weak completeness

  **Lean (glossary):** [`CompleteWeak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L35)

  **Meaning:** comparison systems for every fixed arity, degree and positive size bound

- **Written proof:** free lighthouse

  **Lean (glossary):** `Lighthouse`, `MaxwellData`

  **Meaning:** free Maxwell comparison model


<a id="unit-limitations"></a>

## 7. What remains unexplained
1. **Analytic inputs to the annulus estimate.** The reduction in [`zone`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Ozone.lean#L21-L45) and the flux argument are checked. The discrete stencil bound, interpolation estimate and shell estimates invoked there have not been independently checked through their analytic dependencies.
2. **Detailed one-step interfaces.** The principal-data construction and the proof assembling the aggregate comparison were checked at their application points. The underlying nonlinear integration and remainder estimates were not checked in full. The relation between the older conditional interfaces in [`LedgerGate.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/LedgerGate.lean) and every restarted replacement remains to be documented; their shared names do not identify their hypotheses.
3. **Record definitions.** The stage, launch, hours, vents, relay, station and shell hypotheses in the numbered statements refer to the linked records. Their complete translation into ordinary mathematical estimates remains to be written. Lemmas 4.11, 4.13(iv)–(vi), 4.14 and 4.17 retain these structural hypotheses; the displayed inequalities alone are not their full assumptions.
4. **Auxiliary results and upstream estimates.** The additional estimates listed after III.11.7 were checked at statement level, including their parameter order. The sweep triangularity in Lemma 4.2 was checked at statement level. The proofs of the lower-level producers of the centred estimate and one-step package, and of the schedule-existence theorem in III.10, were not checked in full. The source links identify these dependencies; the present outline does not independently establish them.

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md), [III.1](III-1.md), [II.2](II-2.md), [II.1](II-1.md), [III.10](III-10.md), [III.16](III-16.md), [III.4](III-4.md), [IV.1](IV-1.md), [III.5](III-5.md), [V.2](V-2.md), [VIII.1](VIII-1.md), [III.2](III-2.md), [III.9](III-9.md), [III.3](III-3.md), [VI.2](VI-2.md), [III.15](III-15.md), [VI.1](VI-1.md), [III.8](III-8.md), [III.6](III-6.md).

**Referenced by:** [VII.6](VII-6.md), [III.12](III-12.md), [III.4](III-4.md), [VII.4](VII-4.md), [III.2](III-2.md), [VIII.1](VIII-1.md), [III.13](III-13.md), [VII.2](VII-2.md), [VII.1](VII-1.md), [III.15](III-15.md).

## Lean source

**Source allocation:** 42,556 attributed lines; 5,286 line-counted declarations; 7,425 assigned declaration names. Of the assigned names, 7,102 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- work package [`YM/Next/RANK/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK), with [`YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON), [`YM/MergeProof/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof), [`YM/MergeProof/West/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West), [`YM/MergeProof/North/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North), [`YM/MergeProof/East/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East), [`YM/PhysicalNext/RANK_COVARIANCE_ATLAS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS), [`YM/MergeProof/South/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/South), [`YM/PhysicalNext/PHYSICAL_GUARD_7F546/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/PHYSICAL_GUARD_7F546) — 42,556 lines.

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

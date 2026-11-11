# II.1. Field labels and their lattice representatives

*Part II — Data of the construction.*

Describes local field labels and the lattice observables that represent them.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/II-1.md) · [← Previous: I.1](I-1.md) · [Next: II.2 →](II-2.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** II, Data of the construction. **Lean:** work items G01–G07: [`YM/Labels/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels), [`YM/Source/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source), [`YM/Work/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work) (G01–G07), [`YM/Next/FOUNDATIONS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS), [`YM/Push/RELAY_MARK/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK), [`YM/Extra/SOURCE_HISTORIES/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES), [`YM/Push/LOCAL_SPLITTING/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING), [`YM/Push/RELAY_DIFFERENCE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE), [`YM/Planned/ATOM_GUARDED_LAYOUT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_GUARDED_LAYOUT), [`YM/Further/LOCAL_LOG_JETS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/LOCAL_LOG_JETS), [`YM/LocalH/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/LocalH). **Size:** 10,805 lines in the source allocation.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

Throughout, $G\subset U(n)$ is compact, $n\ge1$.

**Proposition II.1.1 (labels and frames).** Let $\mathrm{Tay}_j$ consist of $4$-tuples of symmetric $(j+1)$-linear maps $(\mathbb R^4)^{j+1}\to\mathfrak g$ satisfying $\sum_\mu z_\mu A_\mu(z,\ldots,z)=0$. A jet is $J=(J_j)_{j\ge0}$; coordinates of $J_j$ have weight $j+2$. For every $d\ge0$, the space $V_d$ of $\mathrm{Ad}(G)$-invariant complex jet polynomials of weight $\le d$ is finite-dimensional and determined by evaluation on real jets. It splits by weight and factor number $(w,f)$; conjugation and $O(4)$ preserve grades. Its zero-factor part is $\mathbb C1$. There exist nested real pure-grade bases $(b_i)$ of grades $(w_i,f_i)$ with $b_0=1$. *Status:* definitions and theorems. *Lean:* [`frames`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L107-L111).

**Proposition II.1.2 (holonomies and sections).** For every $d,J,h,x,\mu$, the equation $u'=u\,hA^{(d)}_\mu(h(x+te_\mu))$, $u(0)=1$, has a unique solution in $G$, where $A^{(d)}_\mu(z)=\sum_{j+2\le d}J_{j,\mu}(z,\ldots,z)$. Its time-one endpoint $U^{(d)}_{J,h}$ satisfies $U_{J,h}=U_{\mathrm{sc}_hJ,1}$ and $U_{J,0}=1$. A section $(S,\Phi)$ maps coordinates linearly to link-entry polynomials on finite $S$. Soundness requires signed-permutation-invariant $S\ni0$, gauge invariance, $\Phi_{e_0}=1$, $\Phi_{\bar c}=\overline{\Phi_c}$, $\Phi_c(s^*U)=\Phi_{s\cdot c}(U)$, and equality of the $C^d$ jets of $\Phi_c(U_{J,h})$ and $p_c(\mathrm{sc}_hJ)$ at $0$, for all $c,J$. *Status:* definitions; ODE theorems. *Lean:* [`Hol.exists_ode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/ODE.lean#L162-L168); [`SectionData.Sound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L140-L147).

**Proposition II.1.3 (primary sections).** For every holonomy datum and coherent frames there are sound sections $\Sigma_d$ whose column $i$ is a polynomial in finitely many transported plaquette curvatures, every monomial having at least $f_i$ factors. For every $k,P\in\mathbb N$ there is $A\ge0$ such that, for every budget $b$ of order $k$, power $P$, side and placement, column $i$ is $b$-regular with norm $\le At_b^{f_i}$. For the fixed primary sections, nondecreasing $\pi(D)\ge1$ bounds these costs for $d,k,P\le D$, and $c_d\ge1$ bounds all column values globally. *Status:* theorem. *Lean:* [`Integrated.source_sections`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L216-L219).

**Proposition II.1.4 (readout).** Fix holonomies, $d$ and a frame. Every $b$-regular $f$ on $X\subset\Lambda_\ell$, with $k_b\ge d$, has a unique read label $p\in V_d$ at every $o$: test jets agree through order $d$ if $10\mathrm{dist}(x,o)<\ell$ for all $x\in X$; otherwise $p=f(1)1$. If also $P_b\ge d$ and $\lVert f\rVert_b\le c$, then $\lVert S_{t_b}\mathrm{coord}(p)\rVert_1\le Cc$, with $C\ge1$ depending only on holonomies and frame. A sound placed section reads $p_c$ if $20(\lvert x_\mu\rvert+1)\le\ell$ throughout its stencil. *Status:* theorem. *Lean:* [`exists_read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L238-L247); [`price_of_readout`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L271-L290).

**Proposition II.1.5 (equation sections).** Let $\mathcal E_d$ be the labels vanishing on all jets of radial potentials whose curvatures satisfy the free Bianchi and divergence equations, degree by degree. For every holonomy datum, $d$ and frame, there exist a sound section with the slot structure and cost of II.1.3 and an automorphism $R$ commuting with conjugation and signed permutations, such that $\Phi_{\mathrm{coord}(Rp)}$ is micro for every $p\in\mathcal E_d$. Micro means continuous and, for some $r,M$, orthogonal under every Wilson expectation with $\ell\ge M$, every placement, and $\beta\ne0$, to every bounded measurable spectator using only links with both endpoints farther than $r$ from the placement. The choices exist simultaneously along coherent frames. *Status:* unconditional theorem. *Lean:* [`Portfolio.build`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L101-L105).

**Proposition II.1.6 (observables).** A record carries a history, holonomies, frames, sections, reference levels and transfer families. Define
$$O_{N,p}(v,o)=a_N^{-d}\Phi^{(d)}_{S_{1/\theta_N}\tau^{-1}v}(o).$$
For all records this is linear, continuous, local and literally translation covariant; soundness gives gauge invariance. Under $\mathrm{Makes}$ and $r(d)\le N$, it respects reality and affine hypercubic pull-backs, satisfies $O_{N,p}(a_{r(d)}^de_0,o)=1$, and has reference-level readout $v$. Affine covariance is $O(v,A_{s,b}o;U)=O(s^{-1}\cdot v,o;A_{s,b}^*U)$. Here $\mathrm{Makes}$ requires selection, soundness, $d+3\le J(r(d))$, $k_{b_m}\ge d+1$, $P_{b_m}\ge d$ for $m\ge r(d)$, $20(\lvert x_\mu\rvert+1)\le\ell_{N,p}$ on $S_d$ when $r(d)\le N$, column bounds $\kappa_N\theta_N^{f_i}$ and based transfers. *Status:* theorems; $\mathrm{Makes}$ holds for VIII.1's family. *Lean:* [`Family.Makes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62); [`Family.O`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L42).

**Proposition II.1.7 (transfers).** With terminal linear automorphism $\tau$, a based family for $(\Sigma,r)$ requires $r\le N$ and, for every $v$ and $r\le m\le N$, linear coordinates and remainders on fixed supports, regular remainders on $X_i\ni0$ with $g_i(1)=0$ and vanishing test derivatives through $d$ when nonwrapping, and measurable gauge-invariant forced functions local in their supports and flags, vanishing unless eligible and carrying $0$, and remainder bound $(\sqrt{w_m},\kappa_m\lVert x_m^\circ\rVert_1)$. A bound $(\kappa,c)$ means summable regular and forced weighted masses $\le a$ and $\le\kappa b$, respectively, for $a,b\ge0$, $a+b\le c$, dominating regular norms and forced absolute values pointwise. It requires $x_N=v$, zero terminal regular remainder, $\mathcal D_N=\rho_N\Phi_{S_{1/\theta_N}v}$, and $\mathcal D_m=L_m^dT^{(m)}_{\beta_{N,p,m+1}}\mathcal D_{m+1}$. Also $\lVert x_{m+1}\rVert_1\le\kappa_{m+1}\lVert x_m\rVert_1$, $\lVert x_m\rVert_1\le\kappa_{m+1}L_m^d\lVert x_{m+1}\rVert_1$, $x_r=\tau v$, $\tau$ respects reality/symmetry, and $x_m(a_N^de_0)=a_m^de_0$. For selected histories, $\int\mathcal D_m(E_m(\tau^{-1}v))=a_m^dZ_{N,p}\langle O_{N,p}(v,0)\rangle$. *Status:* specification, supplied by III.10; integral identity is a theorem. *Lean:* [`TransferData.Based`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L89-L114).

**Proposition II.1.8 (birth).** Let $\rho$ be lawful on $\Lambda_\ell$ with $w>0$, threshold $\theta$, $o\in\Lambda_\ell$, $Y=Y_o$, and $\Sigma$ sound with $\lvert\Phi_{e_i}(o;\cdot)\rvert\le B$, $B\ge1$. Suppose distinct reserved zero-activity forced addresses exist for every finite $\varnothing\ne I\subseteq X$ and auxiliary index, with support $X$, inventory $I$ and everywhere-satisfied auxiliary test. If
$$B\theta^{-f_{\max}}\mathrm{mass}(Y,1)(e^{\lvert Y\rvert w}-1)\le\sqrt w,$$
then, for every reservation index, there is linear $E(v)$ with fixed supports, $x=v$, $g=0$, Format and bound $(\sqrt w,\lVert v^\circ\rVert_1)$, satisfying $\mathcal D(E(v))=\rho\Phi_{S_{1/\theta}v}$ pointwise. The forced part is precisely the large-field supplement. The guarded variant (`Guard.summon`, used at level N with w=w_N) additionally requires a selected history. It requires the auxiliary tests only when the support has exactly the prescribed flagged inventory, together with a separate zero-activity assumption. The section bound and fee condition are unchanged. *Status:* theorem. *Lean:* [`launched`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L116-L161).

**Proposition II.1.9 (numerical conditions).** Let $C_j\ge1$, let $(\mathsf K_j)$ be nondecreasing with $\mathsf K_j\ge1$, and a stage profile satisfy $j\le k_j,P_j$, $\pi(\max(k_j,P_j))\le\bar\kappa_j$, $(C_j+1)\Omega_d\le\mathsf K_j$ for $d\le j$, and $64\mathsf K_{j+1}^2\le\bar\kappa_j$. There exist $n_j,\beta_j^*$ such that every admissible level system of this profile with stage block factors $\ge n_j$ and $\hat\beta_m\ge\beta^*_{J(m+1)}$ satisfies $J(m)\le k_{b_m},P_{b_m}$, $\pi(\max(k_{b_m},P_{b_m}))\le\kappa_m$, latch for $d\le J(m)$, and
$$64\mathsf K_{J(m)+1}^2\le\kappa_m,\qquad10^5\mathsf K_{j+1}^6(1+\kappa_{m+1})^2\le L_m^{1/8},$$
$$\eta(1+\kappa_{m+1})\Omega_d\le L_m^{-3/8},\qquad(C_j+\eta\kappa_{m+1})\Omega_d\le\mathsf K_j,$$
where $j=J(m+1)$, $\eta=L_m^{-2/5}$, $d\le J(m)$. Latch requires sufficient side length and II.1.8's fee bound at every placement, with $B=c_d$, $\theta=\theta_m$, $w=w_m$. Such plans exist by enlarging only stage constants whenever $j\le k_j,P_j$. For fixed $d$ and support exponent, latch holds at sufficiently large coupling. These conditions and $d+3\le J(r(d))$ imply the section clauses of $\mathrm{Makes}$. *Status:* theorems. *Lean:* [`Doors.afford`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L76-L102); [`Issue.refer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Issue.lean#L38-L45).

**Proposition II.1.10 (comparison).** Diagonal sign changes, translations and conjugation preserve centred root tests of interior functions. If $F_0$ is interior to a centred level-$k$ cell with root $\le A$, and $T$ has side divisible by that cell side and satisfies the seam inequality, every translate at distance at least three cell sides from its boundary has root $\le A$. Under $\mathrm{Makes}$, fix $\gamma>0$ and an extraction order. If finitely many eventually literal-translate families have centred roots $\le e^{-\gamma s_N}$ eventually at arbitrarily large fixed levels $k\le N$, with interior central support, then combinations with placement-independent coefficients eventually bounded by $e^{\varepsilon s_N}$ for every $\varepsilon>0$ are close with bound $y=e^{-\gamma s_N/2}\to0$: for every $j,m\in\mathbb N$ there is $k\ge m$ such that eventually $k\le N$ and, for every level-$k$ link tiling $T$ and $o\in T.\mathrm{margin}(0,\lfloor T.\mathrm{side}/(8(j+1))\rfloor)$, the combination is interior to cell $0$ with root $\le y$. *Status:* theorems. *Lean:* [`offset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L232-L270); [`gather_close`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Combination.lean#L65-L93).

<a id="unit-inputs"></a>

## 2. What it uses

- I.1: Wilson/Haar measure and lattice symmetries.
- II.2: regularity, norms, lawful polymers, tilings.
- III.1: mass-preserving blocking.
- III.2/III.9: profiles and selected histories.
- III.10–III.11: transfer estimates.
- III.16: Taylor calculus.
- IV.1: fused extraction order.

Standard inputs: matrix ODEs, finite-group averaging, analytic inverse function theorem, polarization, norm equivalence, Haar integration by parts, reflection positivity.

<a id="unit-strategy"></a>

## 3. Strategy

Invert a finite sampling of transported plaquette curvatures to realize jet labels. Readout reverses this construction. Link integration by parts realizes equation labels; marking reserved polymers restores the large-field complement of the insertion.

<a id="unit-steps"></a>

## 4. Steps

1. Slots detect truncated jets: shrinking plaquette circulations recover curvature, hence radial potentials. *Lean:* [`Work.G03.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G03.lean#L212-L224).
2. Taylor expansion of an equivariant inverse gives sections; each slot factor costs one threshold factor. *Lean:* [`Work.G05.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G05.lean#L113-L139); [`Work.G07.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07.lean#L79-L102).
3. Rescaled test links, polarization and finite-dimensional norm equivalence give uniform readout. *Lean:* [`coeff_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L234-L265).
4. Force lifts avoid the varied link; a unitriangular change absorbs higher-grade errors. *Lean:* [`weaveBuild`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L60-L97).
5. Splicing the large-field supplement into reserved addresses gives exact birth. *Lean:* [`Attach.paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Purchase.lean#L42-L78).
6. Seam log-convexity extends centred bounds to offsets. *Lean:* [`offset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L232-L270).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

Readout constants must avoid volume dependence. Equation lifts must retain independence of the varied link. Lawfulness alone supplies no reserved addresses. Higher grade orders factor number first, then weight. Stencils are finite but nonexplicit.

<a id="unit-notation"></a>

## 6. Notation

$\mathrm{sc}_hJ=(h^{j+2}J_j)_j$; $(S_tc)_i=t^{f_i}c_i$; $p_c=\sum_ic_ib_i$; $c^\circ=c-c_0e_0$; $Y=o+S$. $a_m,\theta_m,w_m,\kappa_m,J(m)$ are history parameters; $\Omega_d=1+2\sum_{s,i}\lVert s\cdot e_i\rVert_1$ sums over signed permutations and frame indices. $\mathcal D$ is the first-order inserted density. Budget regularity means locality, measurability, gauge invariance and $C^{k_b}$ exponential-coordinate regularity on the small-field set. The threshold satisfies $t_b\in(0,1]$. Its norm bounds all ordered left derivatives, including values, in directions $\lvert A_e\rvert\le t_b(1+\mathrm{dist}(e_-,o))^{P_b}$. Bounds include the small-field boundary. A slot is $\mathrm{Ad}(U_\omega)F_P$, where $F_P$ projects $(U_P-U_P^{-1})/2$ onto $\mathfrak g$. Eventually means volume first, then mesh.

<a id="unit-limitations"></a>

## 7. What remains unexplained
Identification of the auxiliary equation sections with limit null labels remains tentative. Compatibility with all later transfer estimates belongs to III.2 and III.10–III.15.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/II-1.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md), [III.16](III-16.md), [III.1](III-1.md), [IV.1](IV-1.md), [III.10](III-10.md), [III.2](III-2.md).

**Referenced by:** [III.11](III-11.md), [III.12](III-12.md), [III.13](III-13.md), [VII.2](VII-2.md), [VIII.1](VIII-1.md), [III.2](III-2.md), [VII.4](VII-4.md), [VII.6](VII-6.md), [III.10](III-10.md), [III.6](III-6.md), [IV.1](IV-1.md), [VII.1](VII-1.md), [VI.2](VI-2.md), [V.1](V-1.md), [III.3](III-3.md), [III.9](III-9.md), [III.14](III-14.md), [III.4](III-4.md), [III.15](III-15.md), [V.3](V-3.md), [III.8](III-8.md), [VII.3](VII-3.md), [VII.5](VII-5.md), [V.2](V-2.md).

## Lean source

**Source allocation:** 10,805 attributed lines; 1,375 line-counted declarations; 1,893 assigned declaration names. Of the assigned names, 1,808 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- work package [`YM/Push/RELAY_MARK/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK) — 2,336 lines.
- work package [`YM/Extra/SOURCE_HISTORIES/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES) — 1,801 lines.
- work package [`YM/Push/LOCAL_SPLITTING/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING) — 1,485 lines.
- work package [`YM/Next/FOUNDATIONS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS) — 1,196 lines.
- work package [`YM/Push/RELAY_DIFFERENCE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE) — 858 lines.
- work package [`YM/Source/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source) — 594 lines.
- work package [`YM/Work/G06/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06) — 385 lines.
- work package [`YM/Planned/ATOM_GUARDED_LAYOUT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_GUARDED_LAYOUT) — 365 lines.
- work package [`YM/Work/G07/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07) — 359 lines.
- work package [`YM/LocalH/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/LocalH) — 218 lines.
- work package [`YM/Work/G05/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G05) — 190 lines.
- work package [`YM/Further/LOCAL_LOG_JETS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/LOCAL_LOG_JETS) — 166 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`Bid.close`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L25)
- [`Bid.G08`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L101-L103)
- [`Bid.RefLi`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L141-L145)
- [`Bid.Worth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L29-L32)
- [`Bid.G01`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L23)
- [`Bid.G03`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L30)
- [`Bid.G04`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L37)
- [`Bid.Cumuli`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L48-L50)
- [`Bid.pop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L55-L56)
- [`Bid.Credit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L63-L66)
- [`Bid.Learns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L72-L74)
- [`Bid.teaching`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L76-L86)
- [`born`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L105-L106)
- [`fee`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L108-L109)
- [`supplement`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L24-L25)
- [`healthy_supplement`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L34-L39)
- [`fullCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L67)
- [`supplement_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L69-L101)
- [`Latch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L120-L123)
- [`latch_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L126-L157)
- [`cameras`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L20)
- [`orbitCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Motion.lean#L121)
- [`Buys`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Replay.lean#L47-L51)
- [`Doors.Plans`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L57-L62)
- [`Doors.Budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L65-L72)
- [`onTop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Song.lean#L48-L90)
- [`Run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48)
- [`Run.Ties`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L65-L71)
- [`Hearthside`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fire.lean#L17-L20)
- [`realBar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Action.lean#L131-L140)
- [`Frames`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L102-L104)
- [`pure_real_span`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L16-L33)
- [`Frame`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L50-L57)
- [`extend_subset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L59-L81)
- [`frame_exists`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L83-L86)
- [`extend_frame`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L88-L100)
- [`Grade`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L17-L18)
- [`decompose`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L87-L105)
- [`radial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L22-L37)
- [`Labels.Taylor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L39)
- [`invariantSpace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L103-L107)
- [`Label`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L112)
- [`Jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L28)
- [`read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L35)
- [`eval_ext`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L38-L49)
- [`limited`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L60-L61)
- [`cap_finite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L63-L94)
- [`Frame.core`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L123-L126)
- [`Frame.coeffSize`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L128)
- [`Frame.Coeff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L18)
- [`Frame.scaled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L58-L61)
- [`Frame.act`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L83-L84)
- [`LocalH.actual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/LocalH/Haar.lean#L97-L146)
- [`Maxwell.equationIdeal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72)
- [`ideal_meaning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L74-L79)
- [`Maxwell.onShell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L18-L42)
- [`gaugeJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L46-L47)
- [`Bandage.squad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Marco.lean#L30-L49)
- [`read_frame_scaled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L158-L168)
- [`Reads`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L186-L194)
- [`nonwrapping_placement`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L240-L251)
- [`placed_reads`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L253-L267)
- [`localSection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L101)
- [`sound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L103-L104)
- [`valuation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L106-L107)
- [`price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L126)
- [`priced`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L133-L142)
- [`full_value_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L147-L163)
- [`Foundations.refLi`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L182-L193)
- [`Foundations.chart_ok`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L84)
- [`Foundations.hol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L92)
- [`testLog_diff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L110-L114)
- [`increment_testLog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L119-L125)
- [`read_projection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L218-L233)
- [`mixed_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L123-L184)
- [`test_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L194-L223)
- [`budget_probes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L34-L67)
- [`Guard.summon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_GUARDED_LAYOUT/Guards.lean#L287-L326)
- [`Keeper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_GUARDED_LAYOUT/Guards.lean#L63-L68)
- [`Keeper.blank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_GUARDED_LAYOUT/Guards.lean#L89)
- [`gasMark_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING/Recovery.lean#L29-L31)
- [`corner_root`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L192-L226)
- [`Memento`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Assembly.lean#L39-L41)
- [`awarded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Assembly.lean#L57-L67)
- [`paid_reel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Automorphism.lean#L100-L102)
- [`regrade_tri`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Automorphism.lean#L43-L50)
- [`twist`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Automorphism.lean#L72-L73)
- [`force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Avoid.lean#L149-L150)
- [`micro_force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Avoid.lean#L170-L218)
- [`continuum_current`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Current.lean#L208-L251)
- [`top_shell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Current.lean#L253-L280)
- [`averaged`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Gauge.lean#L110-L143)
- [`impression`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/HGroup.lean#L106-L125)
- [`multiplied`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Ideal.lean#L44-L45)
- [`erase_shell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Ideal.lean#L58-L68)
- [`generation_ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Ideal.lean#L93-L112)
- [`Offered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L33-L38)
- [`Payment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L65-L67)
- [`Campaign`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L69-L71)
- [`shelf`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L99-L102)
- [`MicroAt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Micro.lean#L29-L31)
- [`Micro`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Micro.lean#L33)
- [`Portfolio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L51-L58)
- [`stanza`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Rank.lean#L100-L127)
- [`coherent_verse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Rank.lean#L129-L153)
- [`Cone`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Rank.lean#L78-L83)
- [`field`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L132)
- [`field_deriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L232-L237)
- [`ibp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L321-L340)
- [`equation_silent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L342-L348)
- [`turn_preserving`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L96-L101)
- [`Rep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L165-L171)
- [`Rep.Lawful`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L181-L183)
- [`BudgetPoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L125-L136)
- [`Regular`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L154-L161)
- [`supBounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L164-L166)
- [`Healthy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L41)
- [`masked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L70-L72)
- [`Slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L38-L40)
- [`constant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L100-L102)
- [`invariant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L104-L107)
- [`localO`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L109-L112)
- [`continuousO`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L114-L115)
- [`linearO`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L117-L127)
- [`Family`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L24-L30)
- [`Family.refUnit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L37)
- [`normalized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L65-L68)
- [`translation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L71-L72)
- [`reality`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L74-L86)
- [`rotated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L88-L98)
- [`Vision`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L104-L105)
- [`Drops.insight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L145-L153)
- [`Snap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L26)
- [`Drops.Peg`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L88-L91)
- [`bring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L98)
- [`origin_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L121-L130)
- [`Coefficient`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L26-L30)
- [`exponentialEntry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L37-L39)
- [`Coefficient.density`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L48-L50)
- [`Format`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L52-L61)
- [`remBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L63-L68)
- [`TransferData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L73-L75)
- [`initial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L77-L79)
- [`SectionData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L103-L105)
- [`places`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L112)
- [`partConnection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L34-L35)
- [`SolvesLink.unique`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L42-L52)
- [`Source.Hol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L55-L57)
- [`Hol.links`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L62)
- [`scaleJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L82)
- [`Projects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L85-L89)
- [`integral_marked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Preservation.lean#L100-L118)
- [`regular_series`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Preservation.lean#L17-L23)
- [`marked_series`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Preservation.lean#L25-L51)
- [`envelope`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Preservation.lean#L66-L84)
- [`Wilson.moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L99)
- [`links_colored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G01.lean#L138-L146)
- [`Work.G01.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G01.lean#L157-L164)
- [`linkGerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G02.lean#L140-L177)
- [`walkGerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G02.lean#L191-L225)
- [`zero_of_zero_partials`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G03.lean#L136-L149)
- [`top_term`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G03.lean#L164-L185)
- [`Work.G04.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G04.lean#L121-L139)
- [`recovery_projects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G05.lean#L47-L100)
- [`enclose`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06.lean#L20-L28)
- [`realize`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06.lean#L30-L41)
- [`paid_lumin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07.lean#L64-L77)
- [`raw_slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07/Stencil.lean#L154-L163)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-ii-1-1"></a>

- **K-II.1.1** [`endpointGerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G02.lean#L89-L130) *(key result)* — For a right-multiplication ODE with coefficients linear in finite-dimensional parameters, the endpoint solution is analytic in the parameters with derivative given by the integral of the coefficient.

<a id="k-ii-1-2"></a>

- **K-II.1.2** [`blockTaylor_jets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G05/Taylor.lean#L84-L102) *(key result)* — The block Taylor polynomial of a C^d function at 0 has the same Fréchet derivatives as the function at 0 up to order d.

<a id="k-ii-1-3"></a>

- **K-II.1.3** [`entryPoly_slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06/Formula.lean#L137-L155) *(numbered result)* — The slot readout on cover links is a polynomial in the entry variables of the links in its stencil.

<a id="k-ii-1-4"></a>

- **K-II.1.4** [`slotGerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G02.lean#L230-L273) *(key result)* — The slot readout along a holonomy family is analytic at zero and its initial germ equals the explicit linear form, with no symmetry hypothesis.

<a id="k-ii-1-5"></a>

- **K-II.1.5** [`Sound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L140-L147) *(numbered result)* — A soundness predicate bundling normalization properties of a physical lattice section.

<a id="k-ii-1-6"></a>

- **K-II.1.6** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G05.lean#L113-L139) *(key result)* — Real invariant slot polynomials with lower-degree Taylor terms retained, built from real Fréchet jets of block maps.

<a id="k-ii-1-7"></a>

- **K-II.1.7** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06.lean#L43-L60) *(key result)* — The jet data are turned into an equivariant polynomial section over the labels.

<a id="k-ii-1-8"></a>

- **K-II.1.8** [`paid_slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07/Stencil.lean#L180-L199) *(numbered result)* — Evaluating a single link slot on a stencil within S satisfies the rate bound at order zero with a single threshold.

<a id="k-ii-1-9"></a>

- **K-II.1.9** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07.lean#L79-L102) *(key result)* — The G07 requirement holds: finite source sections have derivative-cost bounds on stencils of link variables, invariant and local.

<a id="k-ii-1-10"></a>

- **K-II.1.10** [`line_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Stock.lean#L120-L160) *(numbered result)* — The spliced line terms admit explicit coefficient majorants whose total weighted budget is bounded by C times a mass-exponential quantity.

<a id="k-ii-1-11"></a>

- **K-II.1.11** [`routes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Clusters.lean#L198-L211) *(numbered result)* — A bijection between old cluster terms and issued terms is constructed before summation.

<a id="k-ii-1-12"></a>

- **K-II.1.12** [`paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Purchase.lean#L42-L78) *(key result)* — Splicing a bad-field multiplier at a marker gives exactly f times the old polymer gas, summed over labels, for every configuration.

<a id="k-ii-1-13"></a>

- **K-II.1.13** [`center_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L134-L160) *(numbered result)* — The root test of a translated, oriented observable at a centered cell equals the root test of the original at the origin cell.

<a id="k-ii-1-14"></a>

- **K-II.1.14** [`offset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L232-L270) *(key result)* — A single finer centered comparison bound for an observable implies the interior property and root-test bound at all offsets of a coarser tiling.

<a id="k-ii-1-15"></a>

- **K-II.1.15** [`smooth_exchange`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/LOCAL_LOG_JETS/Series.lean#L232-L255) *(key result)* — If summands have jets dominated by absolutely summable bounds on an open window, the sum is C^k and ordered left derivatives can be taken termwise.

<a id="k-ii-1-16"></a>

- **K-II.1.16** [`mix_convert`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING/Mixed.lean#L179-L201) *(key result)* — Mixed left/right derivatives on disjoint sets of links equal a sum of ordinary ordered left jets at the base point after reordering.

<a id="k-ii-1-17"></a>

- **K-II.1.17** [`launched`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L116-L161) *(key result)* — Birth of a single-source transfer: under a lawful gas and bounds, the born history has a ledger, format, remainder bound and the exact density formula.

<a id="k-ii-1-18"></a>

- **K-II.1.18** [`exists_read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L238-L247) *(key result)* — For regular coefficients of sufficient order, there exists a unique curvature-jet label read off from the function at the given site.

<a id="k-ii-1-19"></a>

- **K-II.1.19** [`delay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING/Delay.lean#L56-L68) *(key result)* — For any support-exponent ceiling, there is a stage threshold beyond which the budget width times the square root of the forced allowance is at most 1 and the bare delay condition holds at every level below the ceiling.

<a id="k-ii-1-20"></a>

- **K-II.1.20** [`recover`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING/Recovery.lean#L184-L191) *(key result)* — Packing attaching terms into indicator slots and summing the gas marks recovers exactly the sum of the terms times the vacuum gas.

<a id="k-ii-1-21"></a>

- **K-II.1.21** [`Heard`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Replay.lean#L32-L43) *(numbered result)* — A proposition bundling several line/read claims that all refer to the same history witness.

<a id="k-ii-1-22"></a>

- **K-II.1.22** [`roof_of_tabs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/CalendarPrices.lean#L84-L92) *(numbered result)* — The roof estimate follows from the tabs hypothesis on the path levels.

<a id="k-ii-1-23"></a>

- **K-II.1.23** [`gather_close`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Combination.lean#L65-L93) *(numbered result)* — Combining families of trials with slow multipliers and centered rent bounds yields a combined closeness estimate with exponential decay restored.

<a id="k-ii-1-24"></a>

- **K-II.1.24** [`testLog_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/LinkBounds.lean#L229-L273) *(numbered result)* — Derivatives of the logarithmic link readout are bounded by a constant times theta times a power of torus distance, uniformly in side and anchor.

<a id="k-ii-1-25"></a>

- **K-II.1.25** [`price_of_readout`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L271-L290) *(key result)* — There is one constant such that the scaled coefficient size of any read-out label is bounded by that constant times the sup bound of the function, uniformly in side and support.

<a id="k-ii-1-26"></a>

- **K-II.1.26** [`alone`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L108-L133) *(numbered result)* — Any sheet can be grown in columns to another with the same kernel and floor for which numeric plans exist.

<a id="k-ii-1-27"></a>

- **K-II.1.27** [`entrances`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L162-L177) *(numbered result)* — There is an entrance cost function such that all levels with the matching profile satisfy the latch condition for all degrees up to the stage index.

<a id="k-ii-1-28"></a>

- **K-II.1.28** [`afford`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L76-L102) *(key result)* — Given plans for a sheet, there are floors and beta thresholds beyond which every level system on the sheet satisfies the budget.

<a id="k-ii-1-29"></a>

- **K-II.1.29** [`build`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L101-L105) *(key result)* — For any holonomy datum and frame, a section datum and weave exist satisfying the portfolio conditions unconditionally.

<a id="k-ii-1-30"></a>

- **K-II.1.30** [`commissioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Assembly.lean#L30-L33) *(major result)* — Portfolio build holds simultaneously for all degrees d along a fixed frame list.

<a id="k-ii-1-31"></a>

- **K-II.1.31** [`mounted_read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Rank.lean#L157-L166) *(key result)* — Every element of the equation ideal at pure grade admits a raw lift satisfying the cone relation.

<a id="k-ii-1-32"></a>

- **K-II.1.32** [`positioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Gauge.lean#L147-L163) *(key result)* — Every pure-grade equation-ideal element has a gauge-invariant lift satisfying the cone relation.

<a id="k-ii-1-33"></a>

- **K-II.1.33** [`force_kernel_last`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Current.lean#L286-L297) *(key result)* — If all transported linearized forces vanish on the cut, the top Taylor coefficient lies in the range of the gauge jet map, i.e. is on-shell pure gauge.

<a id="k-ii-1-34"></a>

- **K-II.1.34** [`unsym`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L155-L168) *(numbered result)* — For any holonomy datum and degree there is a switch realizing a campaign.

<a id="k-ii-1-35"></a>

- **K-II.1.35** [`force_span`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Span.lean#L32-L41) *(key result)* — Any linear functional vanishing on pure-gauge jets, composed with last-coordinate projection, lies in the span of mounted force functionals.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

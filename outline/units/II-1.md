# II.1. Field labels and their lattice representatives

*Part II — Data of the construction.* 10,805 lines of Lean in 1,375 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is **checked** against the Lean and rewritten by a second model; a final editing round is in progress. It is updated as it improves.


**Part:** II, Data of the construction. **Lean:** chapter 13 and work items G01–G07: [`YM/Labels/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels), [`YM/Source/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source), [`YM/Work/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work) (G01–G07), [`YM/Next/FOUNDATIONS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS), [`YM/Push/RELAY_MARK/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK), [`YM/Extra/SOURCE_HISTORIES/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES), [`YM/Push/LOCAL_SPLITTING/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING), [`YM/Push/RELAY_DIFFERENCE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE), [`YM/Planned/ATOM_GUARDED_LAYOUT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_GUARDED_LAYOUT), [`YM/Further/LOCAL_LOG_JETS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/LOCAL_LOG_JETS), [`YM/LocalH/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/LocalH). **Size:** 10,805 lines in the main-theorem closure:

| package | lines |
|---|---|
| equation sections (RELAY_MARK) | 2,336 |
| source histories (SOURCE_HISTORIES) | 1,801 |
| local splitting (LOCAL_SPLITTING) | 1,485 |
| primary sections and readout (FOUNDATIONS) | 1,196 |
| comparison estimates (RELAY_DIFFERENCE) | 858 |
| record, sections, transfers (Source) | 594 |
| work items G05–G07 | 934 |
| guarded layout, Haar chart, log jets | 749 |
| other files (labels, G01–G04) | 852 |

**Conventions.**
- **Gauge group.** $G\subset U(n)$ is a compact matrix group; nothing in this unit uses simplicity. Its Lie algebra $\mathfrak g$ carries an $\mathrm{Ad}$-invariant inner product. For a plaquette $P$, $F_P(U)\in\mathfrak g$ is the orthogonal projection of $\tfrac12(U_P-U_P^{-1})$, and $\vartheta(U_P)=\lVert U_P-1\rVert/\sqrt n$ is its chord. $S_W(U)=\sum_P(1-\mathrm{Re}\,\mathrm{tr}\,U_P/n)$ is the Wilson energy, and $\langle\cdot\rangle_\beta$ is the Wilson expectation on a torus $\Lambda_\ell=(\mathbb Z/\ell)^4$.
- **Cover and placement.** Many objects live on the cover $\mathbb Z^4$. A function $f$ of finitely many cover links is *placed* at a site $o\in\Lambda_\ell$ by lifting the torus periodically around $o$; the result is written $f(o;U)$.
- **Small fields.** $\mathrm{Hy}_t(X)$ is the set of configurations in which no plaquette touching $X$ has chord $>t$.
- **Levels.** $m=0$ is the coarsest level and $m=N$ the Wilson lattice. $L_m$ is the odd block factor of the step $m+1\to m$, the spacing satisfies $a_m=L_ma_{m+1}$, and $s_m=\log(1/a_m)$ is the scale.
- **Couplings and level constants (III.9).** $\hat\beta_m=\bar\beta+b_0s_m$ with $b_0=11C_A/24\pi^2$. The small-field threshold is $\theta_m=\hat\beta_m^{-1/2}\exp((\log\log\hat\beta_m)^2)$ and the *forced allowance* is $w_m=\exp(-\exp((\log\log\hat\beta_m)^2/5))$. $\kappa_m\ge1$ is the stage constant ("columns") of level $m$, and $b_m$ is its budget point. $\rho_m=\rho_{N,p,m}=e^{\mathcal E_m}\,\mathrm{gas}_m$ is the polymer representation of the level-$m$ density (II.2). $T^{(m)}_\beta$ is the blocking push-forward from level $m+1$ to level $m$ (III.1).
- **Budget norms (II.2).** A budget point $b$ has order $k_b\ge6$, power $P_b\ge2$, threshold $t_b\in(0,1]$, a support exponent and a cover size. $f$ is *$b$-regular on $X$* if it is local on $X$, measurable, gauge invariant, and $C^{k_b}$ along left increments $U\mapsto e^AU$ on $\mathrm{Hy}_{t_b}(X)$. "$f$ has sup bound $c$" means $\lVert f\rVert_{b;o,X}\le c$: on $\mathrm{Hy}_{t_b}(X)$, every left derivative of order $\le k_b$ in directions $A$ with $\lvert A_e\rvert\le t_b(1+\mathrm{dist}(e,o))^{P_b}$ is bounded by $c$.

**What the unit does.** It defines the formal local fields (*labels*) of the main theorem and their lattice representatives, and it fixes the format of the renormalized lattice observables $O_{N,p}$. In detail:
1. **Sections.** For each label it constructs gauge-invariant polynomials in the link matrices on a fixed stencil that reproduce the label to Taylor order $d$ in the spacing, with symmetry and small-field bounds (§4.1–4.3).
2. **Readout.** It proves the converse: every regular lattice function has a label, and the label's size is bounded by the function's budget norm with one constant (§4.4).
3. **Equation sections.** From the lattice Schwinger–Dyson identity it builds a second kind of section on which every label of the free-Maxwell equation ideal becomes orthogonal to remote spectators (§4.5).
4. **Observables.** It specifies the record carrying a label through the RG history, proves the exact birth formula at the Wilson end, and collects the numerical gates and comparison estimates used downstream (§4.6–4.8).

## 1. What this unit proves

**Proposition II.1.1 (label spaces and frames).**
For $j\ge0$ let $\mathrm{Tay}_j$ be the real space of $4$-tuples $A=(A_\mu)$ of symmetric $(j+1)$-linear maps $(\mathbb R^4)^{j+1}\to\mathfrak g$ satisfying the radial-gauge condition $\sum_\mu z_\mu A_\mu(z,\dots,z)=0$. Its elements are the Taylor coefficients of weight $j+2$ of a connection in radial gauge. A *jet* is a sequence $J=(J_j)_{j\ge0}$. Fix a real basis of each $\mathrm{Tay}_j$, and give its coordinates weight $j+2$. Let $V_d$ be the space of complex polynomials in these coordinates of total weight $\le d$ that are invariant under $J\mapsto\mathrm{Ad}(g)J$ for all $g\in G$. Then:
(a) $V_d$ is finite-dimensional, $1\in V_d\subset V_{d+1}$, and an element of $V_d$ is determined by its values on real jets.
(b) $V_d=\bigoplus_{w,f}V_d^{(w,f)}$, where $(w,f)$ = (weight, number of factors). Grade $(w,0)$ consists of the multiples of $1$. Complex conjugation $p\mapsto\bar p$ and the orthogonal group $O(4)$, acting by rotating the jet, preserve the grades.
(c) There is a coherent system of *frames*. For each $d$ there is a basis $b_0=1,b_1,\dots,b_{K_d}$ of $V_d$ with these properties:
- each $b_i$ is real ($\bar b_i=b_i$) and of pure grade $(w_i,f_i)$, with $w_i\le d$ and $f_i\ge1$ for $i\neq0$;
- the basis of $V_d$ is contained in that of $V_{d+1}$.

In coordinates $c\in\mathbb C^{K_d+1}$ we write $(S_tc)_i=t^{f_i}c_i$, $\lVert c\rVert_1=\sum_i\lvert c_i\rvert$, $c^\circ=c-c_0e_0$, and $s\cdot c$ for the $O(4)$ action.
*Status:* definitions; (a)–(c) are theorems. *Lean:* [`Labels.Taylor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L39), [`radial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L22-L37), [`limited`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L60-L61), [`invariantSpace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L103-L107), [`Label`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L112), [`cap_finite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L63-L94), [`eval_ext`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L38-L49), [`Grade`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L17-L18), [`decompose`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L87-L105), [`Frame`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L50-L57), [`Frames`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L102-L104), [`frames`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L107-L111), [`Frame.scaled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L58-L61), [`Frame.act`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L83-L84), [`Frame.core`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L123-L126), [`Frame.coeffSize`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L128).
The field spaces $F_d$ of the main theorem are quotients of $V_d$ by the null labels. That quotient is formed in V.1/V.2, not here.

**Proposition II.1.2 (test holonomies and sound sections).**
(a) Fix $d$, a jet $J$, $h\in\mathbb R$ and a cover edge $(x,\mu)$, and let $A^{(d)}=\sum_{j\le d-2}J_j$. Let $u\colon\mathbb R\to G$ solve $u'(t)=u(t)\,hA^{(d)}_\mu(h(x+te_\mu))$ with $u(0)=1$. The solution exists and is unique, and we put $U^{(d)}_{J,h}(x,\mu)=u(1)$. Moreover $U^{(d)}_{J,h}=U^{(d)}_{\mathrm{sc}_hJ,1}$, where $\mathrm{sc}_hJ=(h^{j+2}J_j)_j$, and $U^{(d)}_{J,0}\equiv1$. A *holonomy datum* is such a choice of solutions; by uniqueness its links do not depend on the choice.
(b) A *section* on a frame of $V_d$ is a pair $(S,\Phi)$: a finite stencil $S\subset\mathbb Z^4$ and a $\mathbb C$-linear map $c\mapsto\Phi_c$ into polynomials in the entries, and their conjugates, of the link matrices on $S$.
(c) The section is *sound* if:
- $0\in S$ and $S$ is invariant under signed permutations;
- each $\Phi_c$ is gauge invariant, $\Phi_{e_0}=1$, and $\Phi_{\bar c}=\overline{\Phi_c}$;
- $\Phi_c(s^*U)=\Phi_{s\cdot c}(U)$ for every signed permutation $s$, where $s^*$ is the pull-back under $y\mapsto sy$;
- (*projection*) for every $c$ and every jet $J$, the functions $h\mapsto\Phi_c(U^{(d)}_{J,h})$ and $h\mapsto p_c(\mathrm{sc}_hJ)$, with $p_c=\sum_ic_ib_i$, are $C^d$ at $0$ and have equal derivatives of order $\le d$ there.

*Status:* definitions; the ODE facts are theorems. *Lean:* [`Source.Hol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L55-L57), [`partConnection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L34-L35), [`SolvesLink.unique`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L42-L52), [`Hol.exists_ode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/ODE.lean#L162-L168), [`scaleJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L82), [`Projects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L85-L89), [`SectionData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L103-L105), [`SectionData.Sound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L140-L147).

**Proposition II.1.3 (primary sections).**
For every gauge group $G$, every holonomy datum and every coherent system of frames, there are sections $\Sigma_d=(S_d,\Phi^{(d)})$ on the frames of $V_d$ such that, for every $d$:
1. $\Sigma_d$ is sound.
2. (*slot structure*) Each column is $\Phi^{(d)}_{e_i}(U)=P_i(\sigma_1(U),\dots,\sigma_m(U))$. Here the $\sigma_l$ are slots with stencils in $S_d$, $P_i$ is a polynomial in their real components, and every monomial of $P_i$ has degree $\ge f_i$. A *slot* $\sigma=(\omega,P)$ is a lattice walk $\omega$ from $0$ followed by a plaquette $P$ at its end, with $\sigma(U)=\mathrm{Ad}(U_\omega)F_P(U)\in\mathfrak g$.
3. (*cost*) For all $k,P$ there is $A$ with the following property. For every budget point $b$ of order $k$ and power $P$ (any threshold and support exponent), every side $\ell$, site $o$ and index $i$, the placed column $\Phi^{(d)}_{e_i}(o;\cdot)$ is $b$-regular on its footprint $Y_o=o+S_d$ with sup bound $A\,t_b^{f_i}$.

In the construction the frames are `Labels.frames` and $\Sigma_d$ is `Foundations.localSection`. Two further facts hold for them:
4. one increasing price $\pi(D)\ge1$ serves in item 3 for all $d,k,P\le D$;
5. there is $c_d\ge1$ with $\lvert\Phi^{(d)}_{e_i}\rvert\le c_d$ at every configuration and every placement.

*Status:* theorem, assembled from G01–G07; no hypothesis on $G$. *Lean:* [`Integrated.source_sections`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L216-L219), [`Bid.teaching`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L76-L86), [`Bid.Learns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L72-L74), [`Bid.pop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L55-L56), [`Bid.Credit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L63-L66), [`Foundations.hol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L92), [`localSection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L101), [`sound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L103-L104), [`valuation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L106-L107), [`price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L126), [`priced`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L133-L142), [`full_value_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L147-L163). These are the sections of the final Wilson family (Prop. II.1.6).

**Proposition II.1.4 (readout of a lattice function).**
Fix a holonomy datum, $d$, and a frame of $V_d$.
(a) Let $b$ be a budget point of order $\ge d$, let $X\subset\Lambda_\ell$, $o\in\Lambda_\ell$, and let $f$ be $b$-regular on $X$. There is a unique $p\in V_d$ that *reads* $f$ at $o$:
- if $X$ does not wrap around $o$ ($10\,\mathrm{dist}(x,o)<\ell$ for all $x\in X$), then for every jet $J$ the function $h\mapsto f(U^{(d)}_{J,h}\text{ placed at }o)$ is $C^d$ at $0$ and has the same derivatives of order $\le d$ there as $h\mapsto p(\mathrm{sc}_hJ)$;
- if $X$ wraps, $p=f(1)\cdot1$ by convention.

(b) There is $C\ge1$, depending only on the holonomy datum and the frame, with the following property. For all $\ell,o,X$, all budget points $b$ with $k_b\ge d$ and $P_b\ge d$, all $f$ that are $b$-regular on $X$ with sup bound $c$, and all $p$ reading $f$:
$$\lVert S_{t_b}\,\mathrm{coord}(p)\rVert_1\le C\,c .$$
(c) If $\Sigma$ is sound and $20(\lvert x_\mu\rvert+1)\le\ell$ for all $x\in S$, then the placed function $\Phi_c(o;\cdot)$ reads $p_c$ at $o$.

*Status:* theorem. *Lean:* [`exists_read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L238-L247), [`read_projection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L218-L233), [`Reads`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L186-L194), [`price_of_readout`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L271-L290), [`placed_reads`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L253-L267). Consumers: the local-splitting projection (`Push.Local.readPrice`) and the remainder comparisons of III.12–III.13 and VIII.1.

**Proposition II.1.5 (equation sections).**
Let $\mathrm{Sh}_j\subset\mathrm{Tay}_j$ be the radial potentials whose curvature is a degree-$j$ homogeneous Taylor coefficient of a $\mathfrak g$-valued solution of the *free* Maxwell equations. That is: $F$ is antisymmetric, satisfies the Bianchi identity, and $\sum_a\partial_aF_{ab}=0$. The *equation ideal* is
$$\mathcal E_d=\{p\in V_d:\ p(J)=0\text{ for every jet with }J_j\in\mathrm{Sh}_j\text{ for all }j\}.$$
It is the ideal of the linearized (abelian) field equations, imposed degree by degree. For every holonomy datum, every $d$ and every frame of $V_d$, there are a section $\Sigma$ and a $\mathbb C$-linear automorphism $R$ of $V_d$ (the *weave*) such that:
- $\Sigma$ is sound and has the slot structure and cost of Prop. II.1.3;
- $R$ commutes with the signed-permutation action and with conjugation;
- for every $p\in\mathcal E_d$, the cover function $\Phi_{\mathrm{coord}(Rp)}$ is *micro*.

A function $f$ is *micro* if it is continuous and there are $r,M$ with the following property. For every side $\ell\ge M$, site $o$, coupling $\beta\neq0$ and bounded measurable $S$ depending only on links with both endpoints at distance $>r$ from $o$,
$$\big\langle f(o;\cdot)\,S\big\rangle_\beta=0 .$$
The same holds simultaneously for all $d$ along a fixed system of frames. In the construction $R$ is unitriangular: $Rp-p$ has only components of strictly higher grade, in the lexicographic order of (number of factors, weight). This triangularity is not part of the exported statement.
*Status:* theorem, unconditional. *Lean:* [`Maxwell.equationIdeal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72), [`ideal_meaning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L74-L79), [`Maxwell.onShell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L18-L42), [`gaugeJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L46-L47), [`Micro`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Micro.lean#L33), [`MicroAt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Micro.lean#L29-L31), [`Portfolio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L51-L58), [`Portfolio.build`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L101-L105), [`commissioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Assembly.lean#L30-L33), [`regrade_tri`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Automorphism.lean#L43-L50).
In the main chain these sections enter only through the field `receipts` of [`Run.Ties`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L65-L71) (III.12), as a second family of sections on the same history, together with [`Hearthside`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fire.lean#L17-L20). [`Memento`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Assembly.lean#L39-L41) and [`awarded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Assembly.lean#L57-L67) would make them the family's own sections, but they are outside the main-theorem closure.

**Proposition II.1.6 (the construction record and the renormalized observables).**
A *record* $\mathsf C$ consists of:
- an RG history $H$ (III.9) and a holonomy datum;
- coherent frames, and sections $\Sigma_d$ on them;
- reference levels $r(d)$;
- for all $d,N,p$, a transfer family $\mathcal T_{d,N,p}=((E_m)_m,\tau)$ (Prop. II.1.7), with $\tau=\tau_{d,N,p}$ a linear automorphism of $\mathbb C^{K_d+1}$.

The renormalized observable of $v\in\mathbb C^{K_d+1}$ at $o\in\Lambda_{N,p}$ is
$$O_{N,p}(v,o;U)=a_N^{-d}\,\Phi^{(d)}_{S_{1/\theta_N}\tau^{-1}v}(o;U).$$
The *consistency predicate* $\mathrm{Makes}(\mathsf C)$ states:
- (i) $H$ is selected;
- (ii) every $\Sigma_d$ is sound;
- (iii) $d+3\le J(r(d))$, and for $m\ge r(d)$ the level-$m$ budget has order $\ge d+1$ and power $\ge d$;
- (iv) if $r(d)\le N$, then $20(\lvert x_\mu\rvert+1)\le\ell_{N,p}$ for all $x\in S_d$;
- (v) if $r(d)\le N$, each placed column $\Phi^{(d)}_{e_i}(o;\cdot)$ is $b_N$-regular on $Y_o$ with sup bound $\kappa_N\theta_N^{f_i}$;
- (vi) if $r(d)\le N$, then $\mathcal T_{d,N,p}$ is based for $(\Sigma_d,r(d))$.

Then:
(a) Without any hypothesis: $v\mapsto O_{N,p}(v,o)$ is linear, $O_{N,p}(v,o)$ is continuous and depends only on links in $Y_o$, and $O_{N,p}(v,o+b;U)=O_{N,p}(v,o;U(\cdot+b))$ (literal translation covariance).
(b) If the sections are sound, $O_{N,p}(v,o)$ is gauge invariant for every $N$.
(c) Under $\mathrm{Makes}$ and $r(d)\le N$:
- reality: $O_{N,p}(\bar v,o)=\overline{O_{N,p}(v,o)}$;
- hypercubic covariance: $O_{N,p}(s\cdot v,A_{s,b}o;U)=O_{N,p}(v,o;A_{s,b}^*U)$ for the lattice affine map $A_{s,b}y=sy+b$;
- normalization of the unit: $O_{N,p}(a_{r(d)}^de_0,o)\equiv1$;
- normalized readout: the level-$r(d)$ coordinates of the transfer of $\tau^{-1}v$ equal $v$.

Comparison with the statement: $B_{N,p,d}=S_{1/\theta_N}\tau^{-1}$ is the renormalization map in the formula $I_{N,p}=a_N^{-d}P_d[B_{N,p,d}c]$ of the main theorem.
*Status:* (a)–(c) are theorems. $\mathrm{Makes}$ is proved for the final family in [`Bandage.squad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Marco.lean#L30-L49) (VIII.1) and stored as the field `makes` of the record [`Run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48) (III.12). That family uses `Labels.frames`, `Foundations.hol` and `Foundations.localSection`. Clauses (ii)–(v) come from Prop. II.1.9(c) of this unit and clause (vi) from G08 (III.10). *Lean:* [`Family`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L24-L30), [`Family.O`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L42), [`initial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L77-L79), [`Family.Makes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62), [`linearO`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L117-L127), [`continuousO`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L114-L115), [`localO`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L109-L112), [`translation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L71-L72), [`invariant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L104-L107), [`reality`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L74-L86), [`rotated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L88-L98), [`constant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L100-L102), [`normalized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L65-L68).

**Proposition II.1.7 (based transfer families).**
*Source coefficients.* A source coefficient at level $m$ is $E=(x,(X_i),(g_i),(h_i))_{i\in\mathbb N}$. Here $x\in\mathbb C^{K_d+1}$ are the running label coordinates, the $X_i$ are supports, the $g_i$ are *regular* remainders, and the $h_i$ are *forced* functions attached to the forced-polymer addresses $i$ of $\rho_m$, whose activities are $K_i$.

*Density.* Its density at $o$ is the $\lambda$-coefficient, at $\lambda^2=0$, of the density with one inserted source:
$$\mathcal D_m(E)(U)=\rho_m(U)\Big[x_0+\mathbf 1_{\mathrm{Hy}_{\theta_m}(Y_o)}\Phi_{S_{1/\theta_m}x^\circ}(o;U)+\sum_i\mathbf 1_{\mathrm{Hy}_{\theta_m}(X_i)}g_i(U)\Big]+e^{\mathcal E_m(U)}\sum_{b\ \mathrm{adm}}\ \sum_{i\in b}h_i(U)\prod_{j\in b\setminus i}K_j(U).$$

*Format at $o$.* The $g_i$ are $b_m$-regular on $X_i\ni o$, with $g_i(1)=0$. When $X_i$ does not wrap around $o$, $g_i$ has zero readout, in the sense of Prop. II.1.4(a). Each $h_i$ is gauge invariant and measurable, vanishes unless polymer $i$ is eligible and carries $o$, and depends only on the links and flags of the support of polymer $i$.

*Remainder bound $(\kappa,c)$.* There are $a+b\le c$ and weights $e_i,e_i'$ with $\sum_i\mathrm{mass}(X_i,e_i)\le a$, $\lVert g_i\rVert_{b_m;o,X_i}\le e_i$, $\sum_i\mathrm{mass}(\mathrm{supp}K_i,e'_i)\le\kappa b$ and $\lvert h_i\rvert\le e'_i$.

*Based family.* A family $(E_m(v))_m$ with terminal map $\tau$ is *based* for $(\Sigma,r)$ if $r\le N$ and, for all $v$ and $r\le m\le N$:
- (1) $E_m(v)$ has Format at $0$ and remainder bound $(\sqrt{w_m},\ \kappa_m\lVert x_m(v)^\circ\rVert_1)$;
- (2) $x_m$, $g$ and $h$ are linear in $v$, and the supports do not depend on $v$;
- (3) (*bare end*) $x_N(v)=v$, $g\equiv0$, and $\mathcal D_N(E_N(v))=\rho_N\,\Phi_{S_{1/\theta_N}v}(0;\cdot)$;
- (4) (*transfer*) $\mathcal D_m(E_m(v))=L_m^d\,T^{(m)}_{\beta_{N,p,m+1}}\mathcal D_{m+1}(E_{m+1}(v))$ for $m<N$;
- (5) $\lVert x_{m+1}\rVert_1\le\kappa_{m+1}\lVert x_m\rVert_1$ and $\lVert x_m\rVert_1\le\kappa_{m+1}L_m^d\lVert x_{m+1}\rVert_1$;
- (6) $x_r(v)=\tau v$, $\tau$ commutes with conjugation and with the signed-permutation action, and $x_m(a_N^de_0)=a_m^de_0$.

*Status:* definition (specification). Families with this property are produced by G08 (III.10) from `Paper.Clocks`. Consequences proved here (Lemma 4.26): the density is bounded and measurable, and for a selected history
$$\int\mathcal D_m(E_m(\tau^{-1}v))\,dU=a_m^d\,Z_{N,p}\,\langle O_{N,p}(v,0)\rangle_{\beta_{N,p}} .$$
*Lean:* [`Coefficient`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L26-L30), [`Coefficient.density`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L48-L50), [`exponentialEntry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L37-L39), [`Format`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L52-L61), [`remBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L63-L68), [`TransferData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L73-L75), [`TransferData.Based`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L89-L114), [`integral_marked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Preservation.lean#L100-L118) (not used by the main theorem), [`Bid.G08`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L101-L103).

**Proposition II.1.8 (birth at the Wilson end).**
Let $\rho$ be a lawful polymer representation on $\Lambda_\ell$ with parameter $w>0$ (II.2) and threshold $\theta$. Let $o\in\Lambda_\ell$, and let $\Sigma$ be a sound section whose placed columns satisfy $\lvert\Phi_{e_i}(o;\cdot)\rvert\le B$ with $B\ge1$. Put $Y=Y_o$ and $f_{\max}=\max_if_i$, and assume the *fee gate*
$$\mathrm{fee}:=B\,\theta^{-f_{\max}}\,\mathrm{mass}(Y,1)\,\big(e^{\lvert Y\rvert w}-1\big)\le\sqrt w .$$
Then for every shelf of reserved forced addresses there is a *born* coefficient $E(v)$ with the following properties:
- $x=v$ and $g\equiv0$;
- the forced part is the large-field *supplement* $\Phi_{S_{1/\theta}v}(o;\cdot)-v_0-\mathbf 1_{\mathrm{Hy}_\theta(Y)}\Phi_{S_{1/\theta}v^\circ}(o;\cdot)$, spliced into the reserved addresses;
- $E(v)$ is linear in $v$, has Format at $o$, and has remainder bound $(\sqrt w,\lVert v^\circ\rVert_1)$;
- for every configuration $U$,
$$\mathcal D(E(v))(U)=\rho(U)\,\Phi_{S_{1/\theta}v}(o;U).$$

*Status:* theorem. The main chain uses the variant [`Guard.summon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_GUARDED_LAYOUT/Guards.lean#L287-L326) at level $N$, with $w=w_N$ and reserved addresses supplied by a "keeper" instead of a shelf; its hypotheses are the same. *Lean:* [`launched`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L116-L161), [`born`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L105-L106), [`supplement`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L24-L25), [`fullCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L67), [`fee`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L108-L109).

**Proposition II.1.9 (numerical gates; the section clauses of Makes).**
(a) *Plans.* Let $P$ be a stage profile, $(C_j)$ costs with $C_j\ge1$, and $(K_j)$ a nondecreasing price list with $K_j\ge1$. Assume $P$ satisfies the following, writing $\kappa_j$ for the columns of stage $j$:
- $j\le$ order and $j\le$ power of stage $j$;
- $\pi(\max(\mathrm{order}_j,\mathrm{power}_j))\le\kappa_j$;
- $(C_j+1)\,\mathrm{orbitCost}_d\le K_j$ for $d\le j$;
- $64K_{j+1}^2\le\kappa_j$.

Then there are floors $n_j$ and thresholds $b_j$ such that every level system with profile $P$, block factors $\ge n_j$ at stage $j$, and $\hat\beta_m\ge b_{J(m+1)}$ satisfies the *Budget*:
- $J(m)\le$ order and power at level $m$;
- $\pi(\max(\mathrm{order},\mathrm{power}))\le\kappa_m$;
- the latch of (b) for all $d\le J(m)$;
- room: $64K^2_{J(m)+1}\le\kappa_m$;
- bank: $10^5K_{j+1}^6(1+\kappa_{m+1})^2\le L_m^{1/8}$, with $j=J(m+1)$;
- the per-step price inequalities (`Buys`) at rate $L_m^{-2/5}$.

Every profile can be enlarged in its columns alone so that the four bullets above hold.
(b) *Latch.* At level $m$, $\mathrm{Latch}(d,m)$ holds if $\ell_{m,p}$ is at least the minimal side of $\Sigma_d$, and the fee gate of Prop. II.1.8 holds with $B=c_d$, $\theta=\theta_m$, $w=w_m$, at every placement. For each $d$ and support exponent, $\mathrm{Latch}(d,m)$ holds once $\hat\beta_m$ is large enough.
(c) *Section clauses of Makes.* If the Budget holds on a history and $d+3\le J(r(d))$ for all $d$, then the primary sections satisfy clauses (ii)–(v) of $\mathrm{Makes}$.

*Status:* theorems (bookkeeping on constants). *Lean:* [`Doors.Plans`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L57-L62), [`Doors.Budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L65-L72), [`Doors.afford`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L76-L102), [`alone`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L108-L133), [`Latch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L120-L123), [`latch_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L126-L157), [`entrances`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L162-L177), [`Issue.refer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Issue.lean#L38-L45), [`Foundations.refLi`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L182-L193), [`Bid.RefLi`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L141-L145).

**Proposition II.1.10 (chessboard comparison at all offsets).**
Let $\mathcal C_k(x)$ denote the tiling of $\Lambda_{N,p}$ by link cells of odd side at level $k\le N$, centred at $x$. Write $\mathrm{rt}_\beta$ for the chessboard root test of a tiling, and say that $F$ is *interior* to a cell if it is measurable in that cell with a uniform bound.
(a) *Centred symmetry.* If $F$ is interior to the central cell of $\mathcal C_k(0)$, then the root test in $\mathcal C_k(x)$ of the copy of $F$ moved to $x$ equals the root test of $F$ in $\mathcal C_k(0)$. This holds for every reflection of axes, with or without complex conjugation.
(b) *All offsets from one centred bound.* Let $F_o=F_0(\cdot+o)$, and assume:
- $F_0$ is interior to the central cell of $\mathcal C_k(0)$ with root test $\le A$;
- $T$ is a tiling whose side is a multiple of the level-$k$ cell side and which satisfies the reflection-positivity seam inequality at $\beta$.

Then for every $o$ in the inner margin of cell $0$ of $T$ (distance $\ge3\times$ the level-$k$ side from its boundary), $F_o$ is interior to that cell and $\mathrm{rt}_\beta^T(F_o)\le A$.
(c) *Combinations.* Assume $\mathrm{Makes}$, and let $Q_i$ be finitely many cutoff-indexed families of lattice functions. Suppose each $Q_i$ has centred root-test bounds $e^{-\gamma s_N}$ late along an extraction order $f$. Let the coefficients $r_i(N,p)$ be slowly varying: for every $\varepsilon>0$, eventually $\lvert r_i(N,p)\rvert\le e^{\varepsilon s_N}$. Then $\sum_ir_iQ_i$ is *close* along $f$: its root tests in all admissible tilings are bounded by a function $y(N,p)\to0$ along the fused order. One can take $y=e^{-\gamma s_N/2}$.

*Status:* theorems. *Lean:* [`center_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L134-L160), [`corner_root`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L192-L226), [`offset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L232-L270), [`gather_close`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Combination.lean#L65-L93), [`Bid.close`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L25), [`roof_of_tabs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/CalendarPrices.lean#L84-L92) (a bookkeeping corollary). Consumers: III.12, III.13, VII.4, VIII.1.

## 2. What it uses

**From other units.**
- I.1 (lattice and Wilson measure): tori and the cover $\mathbb Z^4$, periodic placement, gauge transformations, signed permutations and their pull-backs, translations, Haar probability measure, Wilson energy and expectation ([`Wilson.moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L99)).
- II.2 (polymer activities, norms, record, cells):
  - budget points, regularity and sup bounds ([`BudgetPoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L125-L136), [`Regular`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L154-L161), [`supBounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L164-L166));
  - healthy sets and masks ([`Healthy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L41), [`masked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L70-L72));
  - slots ([`Slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L38-L40));
  - polymer representations and lawfulness ([`Rep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L165-L171), [`Rep.Lawful`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L181-L183)), together with mass, admissibility and the activity bound;
  - tilings, root test, interior and seam inequality (used in Prop. II.1.10).
- III.1 (block-spin step): the blocking push-forward $T^{(m)}_\beta$ and the fact that it preserves total mass (used in Lemma 4.26).
- III.9 (marginal flow): the history, its selection, $\hat\beta_m$, $\theta_m$, $w_m$, the stage index $J(m)$ and the stage constants $\kappa_m$.
- III.2 (order of constants): sheets, profiles and the level systems quantified over in Prop. II.1.9.
- III.10: G08 turns per-step estimates into based families; III.11 supplies the per-step estimates (`chorus`) used in VIII.1. Both are consumers of the formats fixed here.
- III.16 (toolkit): block Taylor polynomials and jets of compositions, the Faà di Bruno formula, and the Maxwell exterior calculus (curl, recovery of a radial potential from its curvature). The label spaces themselves (`YM/Labels`) are filed under III.16 in the declaration map.
- IV.1: extraction orders and the fused order (used in Prop. II.1.10(c)).

**Standard mathematics.**
- Linear ODEs on matrix groups: existence by an exponential chart and left translation; uniqueness through $\tfrac{d}{dt}(uv^*)=0$.
- Analytic dependence on parameters through the Volterra equation and the Neumann series ([Dieudonné, *Foundations of Modern Analysis*, ch. X]).
- The analytic inverse function theorem in finite dimensions.
- Reynolds averaging over a finite group, and averaging over a compact group with Haar measure.
- Polarization of symmetric multilinear forms, and norm equivalence on finite-dimensional spaces.
- Radial (Fock–Schwinger) gauge and its Taylor expansion [Novikov–Shifman–Vainshtein–Zakharov, Fortschr. Phys. 32 (1984) 585].
- Integration by parts for Haar measure, i.e. the lattice Schwinger–Dyson identity [Makeenko–Migdal, Phys. Lett. B 88 (1979) 135; Chatterjee, Comm. Math. Phys. 366 (2019) 203].
- Chessboard estimates from reflection positivity [Fröhlich–Israel–Lieb–Simon, Comm. Math. Phys. 62 (1978) 1].

**Imported constants and assumptions.**
- In Prop. II.1.6 the record and $\mathrm{Makes}$ are hypotheses of (c). They are discharged for the final family in VIII.1 (`Bandage.squad`), using Prop. II.1.9(c) and G08.
- In Prop. II.1.8 lawfulness and the fee gate are hypotheses. The fee gate at level $N$ is the latch of Prop. II.1.9(b). It is paid by $\hat\beta$ thresholds fixed before the block sizes (III.2), and it holds because $w_m$ decays faster than every power of $\hat\beta_m$.
- The price $\pi(D)$ and the value bound $c_d$ depend on $d$ and on the non-constructive choices of G03. The order of constants enters them through $\pi(\max(\mathrm{order},\mathrm{power}))\le\kappa_j$ in the Plans of Prop. II.1.9(a).

## 3. Strategy

*Labels and representatives.* Labels are invariant polynomials in the Taylor coefficients of a connection in radial (Fock–Schwinger) gauge, graded by engineering dimension. The bridge to the lattice is the family of *test holonomies* $U_{J,h}$: parallel transport of the polynomial radial connection with jet $J$ along the edges of $h\mathbb Z^4$. A lattice function represents $p$ to order $d$ if $h\mapsto\Phi(U_{J,h})$ and $h\mapsto p(\mathrm{sc}_hJ)$ have the same $d$-jet at $0$ for every $J$.

Constructing a representative is an inverse problem, solved in four steps:
1. Finitely many slots (transported plaquette curvatures) form an analytic, $\mathrm{Ad}$-equivariant map of the truncated jet with injective derivative.
2. The analytic inverse function theorem gives an equivariant analytic left inverse; substituting its Taylor polynomial of order $d$ into $p$ gives a polynomial in slots.
3. Reynolds averaging over the hypercubic group makes it covariant, and each slot is rewritten as a polynomial in link entries.
4. Each slot is $O(\theta)$ on $\theta$-healthy configurations, so a column with $f$ factors costs $\theta^f$.

The readout is the converse. Expand a regular lattice function along test holonomies. Then measure along test holonomies of amplitude $\theta$, whose logarithms are $O(\theta)$ link by link with only polynomial growth in the distance. This bounds the scaled label coordinates by the budget norm of the function, uniformly in the volume.

*Equations of motion.* Left-invariance of Haar measure in one link gives the lattice Schwinger–Dyson identity $\langle\langle A,\nabla_eS_W\rangle S\rangle_\beta=0$ for every $S$ independent of $U_e$. The link gradient transported to the base point is a linear combination of slots; at leading order in the jet it is the Maxwell divergence. The free-Maxwell ideal is spanned by products of a linear functional vanishing on on-shell components with an arbitrary monomial. Each such product is lifted to (transported force) × (slot polynomial avoiding that link), which is micro. The lift reproduces the generator up to terms of higher (factor number, weight). Summing over grades yields a unitriangular change of basis $R$ and a section on which $\mathcal E_d$ becomes micro. This is the lattice form of the vanishing of equation-of-motion operators at separated points, as used in on-shell improvement [Lüscher–Weisz, Comm. Math. Phys. 97 (1985) 59]. The ideal is that of the *linearized* equations: the nonlinear terms land in the higher-grade part absorbed by $R$.

*Insertion into the RG.* The observable is inserted at first order in a source parameter $\lambda$ with $\lambda^2=0$, as with the observable fields of Bauerschmidt–Brydges–Slade [*Introduction to a Renormalisation Group Method*, LNM 2242 (2019)]. At each level the $\lambda$-coefficient has the fixed form of Prop. II.1.7:
- $\rho_m$ times the local part: the unit coefficient, plus the masked section at the running coordinates $x_m$, plus masked regular remainders;
- plus $e^{\mathcal E_m}$ times polymer sets with one marked forced polymer.

The vector $x_m$ is a nonperturbative version of the mixing coefficients of renormalized composite operators [Collins, *Renormalization* (1984)]. The normalization at the reference level defines $\tau$, and $B_{N,p,d}=S_{1/\theta_N}\tau^{-1}$ is the renormalization of the statement. The bare-end, birth and transfer identities are exact equalities of functions. In particular the large-field part of the bare observable is spliced into marked forced polymers, as in Balaban's small-field/large-field decomposition, with no lower bound on, and no division by, the vacuum density. The per-step estimates are in III.10–III.11; this unit fixes the format and proves the bare end.

## 4. Steps

### 4.1 Label spaces and frames

**Lemma 4.1 (finiteness; no phantom labels).** $V_d$ is finite-dimensional, and a polynomial in the jet coordinates that vanishes on all real jets is zero.
*Sketch:* every coordinate has weight $\ge2$. So a monomial of weight $\le d$ has exponents $\le d$ and involves only $\mathrm{Tay}_j$ with $j\le d-2$, and there are finitely many such monomials. A polynomial vanishing on $\mathbb R^n\subset\mathbb C^n$ is zero, because each variable ranges over an infinite set.
*Lean:* [`cap_finite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L63-L94), [`eval_ext`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L38-L49).

**Lemma 4.2 (real graded frames).** Every linearly independent set of real pure-grade labels containing $1$ extends to a frame. Consequently frames exist, and there is a coherent sequence of them.
*Sketch:*
- $V_d$ is spanned by the elements $q+\bar q$ and $i(q-\bar q)$, where $q$ runs over the graded components; these elements are real and of pure grade.
- Extend the given independent set inside this spanning set, and move $1$ to index $0$.
- Recursion in $d$ gives coherence, since $V_d\subset V_{d+1}$ preserves reality and grades.
- $f_i>0$ for $i\neq0$, because grade $(w,0)$ consists of the multiples of $1$.

*Lean:* [`pure_real_span`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L16-L33), [`extend_subset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L59-L81), [`frame_exists`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L83-L86), [`extend_frame`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L88-L100), [`frames`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L107-L111).

### 4.2 Test holonomies and the slot map (G01–G04)

**Lemma 4.3 (transport ODE; covariance, G01).**
- Existence and uniqueness hold as stated in Prop. II.1.2(a).
- Scaling: $U_{J,h}=U_{\mathrm{sc}_hJ,1}$, with only the components $J_j$, $j\le d-2$, entering.
- Gauge covariance: the links of $\mathrm{Ad}(g)J$ are the constant gauge transform by $g$ of the links of $J$.
- Hypercubic covariance: for a signed permutation $s$, the pulled-back links are the links of the rotated jet.
- In particular each slot of $\mathrm{Ad}(g)J$ is $\mathrm{Ad}(g)$ applied to the slot of $J$.

*Sketch:*
- Uniqueness: if $u,v$ solve the same equation, then $uv^*$ has zero derivative.
- Existence: take a local solution in an exponential chart, left-translate it, and glue the pieces.
- Scaling and covariance: the transformed function solves the transformed equation, so uniqueness concludes; a reflected axis reverses the parameter of the ODE.

*Lean:* [`SolvesLink.unique`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L42-L52), [`Hol.exists_ode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/ODE.lean#L162-L168), [`Bid.G01`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L23), [`Work.G01.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G01.lean#L157-L164), [`links_colored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G01.lean#L138-L146). *(uniqueness and scaling proofs read; G01 statement only)*

**Lemma 4.4 (analytic germ, G02).**
(a) Let $A_x$ be a coefficient field depending linearly on finite-dimensional parameters $x$, and let $u_x$ solve $\dot u=uA_x$ with $u_x(0)=1$. Then $x\mapsto u_x(1)$ is analytic at $0$, equals $1$ there, and its derivative along every ray is $\int_0^1A_x$.
(b) Consequently each link, each walk and each slot is an analytic function of the truncated jet near $0$. The derivative of the slot $(\omega,P)$ at $0$ is the circulation of the edge-integrated potential around $P$ ($\mathrm{glow}$). The transport along $\omega$ does not contribute at linear order.
*Sketch:* write the ODE as $F=1+T(x)F$ on $C([0,1])$, where $T(x)$ is the Volterra operator, linear in $x$, with $\lVert T(x)\rVert<1$ near $0$. Then $F=(1-T(x))^{-1}1$, which is analytic since inversion is analytic near $1$ in a Banach algebra. Differentiate the fixed-point equation at $0$. The bounds are link by link; no analytic radius uniform over an infinite stencil is claimed.
*Lean:* [`endpointGerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G02.lean#L89-L130), [`linkGerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G02.lean#L140-L177), [`walkGerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G02.lean#L191-L225), [`slotGerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G02.lean#L230-L273), [`Drops.Peg`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L88-L91). *(proof of `endpointGerm` read; the others statement only)*

**Lemma 4.5 (finitely many slots detect the jet, G03).** For each $d$ there are finitely many slots whose linearizations have no common kernel on the truncated jet space $\bigoplus_{j\le d-2}\mathrm{Tay}_j$.
*Sketch:*
- *All slots detect the jet.* Suppose all linearized slots vanish on $A$. The circulation around the unit square at $x$ is $\sum_l\mathrm{net}(A_l)(x,1)$, a difference of two iterated averages of partial derivatives. Homogeneity gives $\mathrm{net}(A_l)(tx,t)=t^l\,\mathrm{net}(A_l)(x,1)$, so $\sum_lt^{k-l}\mathrm{net}(A_l)(tx,t)=0$ at all lattice points $x$.
- *Mesh to zero.* Letting $t\to0$ with $tx\to y$ gives $\mathrm{curl}(A_k)(y)=0$ for the top component. In radial gauge the potential is recovered from its curvature, so $A_k=0$. Descend in $k$.
- *Finitely many suffice.* Among finite families choose one whose common kernel has minimal dimension. Adding any slot cannot lower the dimension, so this kernel lies in the common kernel of all slots, which is $0$.

The choice is non-constructive.
*Lean:* [`Bid.G03`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L30), [`top_term`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G03.lean#L164-L185), [`zero_of_zero_partials`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G03.lean#L136-L149), [`Work.G03.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G03.lean#L212-L224).

**Lemma 4.6 (equivariant left inverse, G04).** The slot map $\mathfrak S$ (finitely many slots) is analytic at $0$. There is a linear $C$ with $C\circ D\mathfrak S(0)=\mathrm{id}$ and $C\circ\mathrm{Ad}_g=\mathrm{Ad}_g\circ C$.
*Sketch:* $D\mathfrak S(0)$ is injective (Lemma 4.5) and equivariant (it is the derivative of an equivariant map). Its range is $\mathrm{Ad}$-invariant for the invariant inner product, so the inverse composed with the orthogonal projection onto the range is equivariant. No Haar averaging is needed.
*Lean:* [`Bid.G04`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L37), [`Work.G04.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G04.lean#L121-L139).

**Lemma 4.7 (local analytic equivariant inverse).** There is $f$, analytic at $0$, with $f(0)=0$, $f\circ\mathfrak S=\mathrm{id}$ near $0$, and $f\circ\mathrm{Ad}_g=\mathrm{Ad}_g\circ f$ near $0$.
*Sketch:* apply the analytic inverse function theorem to $C\circ\mathfrak S$, whose derivative at $0$ is the identity, and put $f=(C\circ\mathfrak S)^{-1}\circ C$. Equivariance follows from that of $C$ and $\mathfrak S$, together with local injectivity.
*Lean:* [`Drops.insight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L145-L153), [`Vision`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L104-L105).

**Lemma 4.8 (Haar measure in exponential coordinates).** On a small ball, the pull-back of normalized Haar measure under $\exp$ has an analytic positive density.
*Lean:* [`LocalH.actual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/LocalH/Haar.lean#L97-L146), [`Foundations.chart_ok`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L84). Its consumers are the stationary-point analysis of the RG step (III.6) and the step bounds; it is not used elsewhere in this unit.

### 4.3 Primary sections (G05–G07)

**Lemma 4.9 (invariant slot polynomials, G05).** Let $f$ be as in Lemma 4.7, let $T_df$ be its block Taylor polynomial of order $d$ at $0$, and put $P_i:=b_i\circ T_df$. Then:
- $P_0=1$, each $P_i$ is $\mathrm{Ad}$-invariant and real-valued on real slot values, and each monomial of $P_i$ has degree $\ge f_i$;
- $P_i(\mathfrak S(U_{J,h}))$ and $b_i(\mathrm{sc}_hJ)$ have the same $d$-jet in $h$.

*Sketch:*
- $T_df$ is equivariant because $f$ is equivariant and $\mathrm{Ad}$ is linear.
- $T_df(0)=f(0)=0$, so every coordinate of $T_df$ lacks a constant term; since $b_i$ is homogeneous of degree $f_i$, every monomial of $P_i$ has degree $\ge f_i$.
- Along $X(h)=\mathrm{trunc}(\mathrm{sc}_hJ)$, which is smooth with $X(0)=0$, the slots of $U_{J,h}$ equal $\mathfrak S(X(h))$.
- Since $f\circ\mathfrak S=\mathrm{id}$ near $0$, and the $d$-jet of a composition depends only on the $d$-jets of its factors, $T_df\circ\mathfrak S\circ X$ and $X$ have the same $d$-jet.
- Labels of weight $\le d$ see only the components of weight $\le d$.

All Taylor terms of order $\le d$ are kept, so $P_i$ may have degree $>d$ in the slots.
*Lean:* [`Work.G05.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G05.lean#L113-L139), [`recovery_projects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G05.lean#L47-L100), [`blockTaylor_jets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G05/Taylor.lean#L84-L102), [`Bid.Cumuli`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L48-L50).

**Lemma 4.10 (covariant section, G06).** From the $P_i$ and hypercubic covariance of the links one obtains a sound section with the slot structure, whose stencil is a box $[-r,r]^4$ containing all slot stencils.
*Sketch:*
- Average over signed permutations (Reynolds operator). A transformed slot is again a slot, so the average is a slot polynomial with the same lower bound on degrees.
- Gauge invariance: slots transform by $\mathrm{Ad}$ of the gauge transformation at the base point, and the $P_i$ are $\mathrm{Ad}$-invariant.
- The projection property survives because jets and labels transform compatibly.
- Each slot component is a polynomial in link entries and their conjugates, since $U^{-1}=U^*$.

*Lean:* [`Work.G06.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06.lean#L43-L60), [`enclose`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06.lean#L20-L28), [`realize`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06.lean#L30-L41), [`entryPoly_slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06/Formula.lean#L137-L155). *(proof of `answer` read; the averaging lemmas in `G06/Pose.lean` not read, so the exact averaging formula is (probable))*

**Lemma 4.11 (cost, G07).** For all $(k,P)$ there is $A$ such that the section has the cost property of Prop. II.1.3, item 3.
*Sketch:*
- *One slot costs $t$.* On $\mathrm{Hy}_t(S)$ a slot has norm $O(t)$ (`paid_slot`). Each left derivative in an admissible direction $A$, with $\lvert A_e\rvert\le t(1+\mathrm{dist})^P$, is also $O(t)$, with constants depending on the stencil (`raw_slot`).
- *Algebra.* These bounds are stable under sums and products, with exponents of $t$ adding (`paid_prod`, `paid_lumin`), and $t\le1$ lowers exponents.
- *Columns.* Every monomial of column $i$ has $\ge f_i$ slot factors, which gives $c_it^{f_i}$; take $A=\sum_ic_i$.

$A$ is not uniform in $d,k,P$.
*Lean:* [`Work.G07.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07.lean#L79-L102), [`paid_lumin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07.lean#L64-L77), [`paid_slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07/Stencil.lean#L180-L199), [`raw_slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07/Stencil.lean#L154-L163). *(proof of `answer` and `paid_lumin` read; slot bounds statement only)*

**Lemma 4.12 (assembly = Prop. II.1.3).** Lemmas 4.3–4.11 combine into sections for all $d$.
- The uniform price is $\pi(D)=1+\sum_{d,k,P\le D}\max(0,A_{d,k,P})$, which is monotone in the constant.
- The value bound $c_d$ holds because each column is a continuous function of finitely many variables in the compact group $G$.

*Lean:* [`Bid.teaching`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L76-L86), [`Integrated.source_sections`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L216-L219), [`priced`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L133-L142), [`full_value_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L147-L163).

### 4.4 Readout

**Lemma 4.13 (logarithmic chart of test holonomies).** Near $h=0$, the placed test links of $J$ are $\exp$ of a function of $h$ that is analytic at $0$ and vanishes at $0$. Consequently, for $f$ such that $f\circ\mathrm{incr}$ is $C^d$ at the identity configuration, $h\mapsto f(U_{J,h})$ is $C^d$ at $0$.
*Lean:* [`testLog_diff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L110-L114), [`increment_testLog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L119-L125).

**Lemma 4.14 (existence and uniqueness of the read label = Prop. II.1.4(a)).** If $f$ is gauge invariant and $f\circ\mathrm{incr}$ is $C^d$ at $1$, there is a unique $p\in V_d$ such that $f$ along the test holonomies and $p$ along $\mathrm{sc}_hJ$ have equal $d$-jets.
*Sketch:*
- *Polynomial in the jet.* Take the block Taylor polynomial of order $d$ at $0$ of the map $X\mapsto f(\text{test links of }X)$ on the truncated jet space. It is a polynomial in the jet coordinates; truncate it to weight $\le d$.
- *Jets agree.* Since $\mathrm{trunc}(\mathrm{sc}_hJ)$ has components $h^{j+2}J_j$, truncation does not change $h$-derivatives of order $\le d$.
- *Invariance.* Gauge invariance of $f$ and covariance of the test links (Lemma 4.3) make each weight component of $p$ invariant.
- *Uniqueness.* The $h$-derivatives at $0$ determine the weight components, and then Lemma 4.1 applies.

For regular $f$ with order $\ge d$ the hypothesis holds at the identity configuration, which is healthy; wrapping supports use the constant convention.
*Lean:* [`read_projection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L218-L233), [`exists_read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L238-L247).

**Lemma 4.15 (uniform bounds along scaled test jets).**
(a) For each jet $J$ and $k$ there is $C$ such that, for all sides, sites $o$, edges $e$ and $\theta\in[0,1]$,
$$\big\lvert\partial_h^k\log U_{\theta J,h}(e)\big\rvert_{h=0}\le C\,\theta\,(1+\mathrm{dist}(e,o))^{k-1}.$$
(b) Hence for $k\le d\le\min(k_b,P_b)$ there is $C_J$ with $\lvert\partial_h^kf(U_{t_bJ,h})\rvert_{h=0}\le C_J\,c$, for every $f$ that is $b$-regular with sup bound $c$. The bound is uniform in side, placement, support and $b$.
*Sketch:*
- (a): rescale the edge by $r=(1+\mathrm{dist})^{-1}$ into a fixed ball. The rescaled endpoint depends analytically on the profile parameters, with $k$-th derivative $\le C\cdot$(amplitude $\theta r$). Each $h$-derivative costs a factor $r^{-1}$. This is reconstructed from the private lemma statements: (probable).
- (b): by the Faà di Bruno formula, $\partial_h^k$ of $f\circ\exp(\log U)$ is a sum, over ordered partitions, of mixed left derivatives of $f$ in the directions $\partial_h^j\log U$, $j\le k$. By (a) these directions are admissible up to constants, since $k-1\le P_b$. Mixed derivatives are bounded by diagonal ones through polarization.

*Lean:* [`testLog_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/LinkBounds.lean#L229-L273), [`test_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L194-L223), [`mixed_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L123-L184). *(proof of `test_bound` read; (a) and polarization statement only)*

**Lemma 4.16 (price of the readout = Prop. II.1.4(b)).**
*Sketch:*
- *Functionals.* For a jet $J$ and $k\le d$ let $\lambda_{J,k}(c):=\partial_h^k\,p_c(\mathrm{sc}_hJ)\vert_{h=0}$.
- *Scaling.* Since $p_{S_\theta c}(K)=p_c(\theta K)$, one has $\lambda_{J,k}(S_\theta\,\mathrm{coord}(p))=\partial^k_hp(\mathrm{sc}_h(\theta J))\vert_{h=0}=\partial_h^kf(U_{\theta J,h})\vert_{h=0}$.
- *Bound.* By Lemma 4.15(b) this is bounded by $C_{J,k}c$.
- *Norm equivalence.* The $\lambda_{J,k}$ separate points (Lemma 4.14), and on a finite-dimensional space a separating family of functionals controls the norm.
- *Wrapping case.* $p=f(1)\cdot1$, and $\lvert f(1)\rvert\le c$ because the identity configuration is healthy.

The constant depends on the holonomy datum and the frame only.
*Lean:* [`coeff_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L234-L265), [`budget_probes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L34-L67), [`read_frame_scaled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L158-L168), [`price_of_readout`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L271-L290).

**Lemma 4.17 (placed sections read their labels = Prop. II.1.4(c)).** If $20(\lvert x_\mu\rvert+1)\le\ell$ on the stencil, the footprint does not wrap around $o$, the periodic lift of the stencil is injective, and the placed function along the test holonomies is the cover function along $U_{J,h}$. Soundness (projection property) then concludes.
*Lean:* [`nonwrapping_placement`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L240-L251), [`placed_reads`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L253-L267).

### 4.5 Equation sections

**Lemma 4.18 (lattice Schwinger–Dyson identity).**
*Gradient.* For a link $e$ and $A\in\mathfrak g$, $\tfrac{d}{dt}S_W(e^{tA}U_e)\vert_{0}=\langle A,\nabla_eS_W(U)\rangle$. Here $\nabla_eS_W$ is a sum, over the plaquettes containing $e$, of $F_P$ minus the transported $F$ of the neighbouring plaquette; it is a lattice covariant divergence.
*Integration by parts.* For continuous $W,W'$ with $W'$ the derivative of $W$ along $e^{tA}U_e$, and bounded measurable $S$ invariant under that motion,
$$\big\langle(W'-\beta\langle A,\nabla_eS_W\rangle W)S\big\rangle_\beta=0 .$$
For $\beta\neq0$ and $W=1$ this gives $\langle\langle A,\nabla_eS_W\rangle S\rangle_\beta=0$.
*Sketch:* the motion $U_e\mapsto e^{tA}U_e$ preserves the product Haar measure, and the Boltzmann factor is differentiated under the integral.
*Lean:* [`field_deriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L232-L237), [`turn_preserving`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L96-L101), [`ibp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L321-L340), [`equation_silent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L342-L348). *(proof of `field_deriv` read; `ibp` statement only)*

**Lemma 4.19 (transported forces are micro).** Let $\omega$ be a walk from $0$ that avoids the cover link $b$, and let $g$ be continuous and independent of $U_b$. Then $U\mapsto\langle X,\mathrm{Ad}(U_\omega)\nabla_bS_W(U)\rangle\,g(U)$ is micro, for every $X\in\mathfrak g$.
*Sketch:*
- Write $\langle X,\mathrm{Ad}(U_\omega)Y\rangle=\sum_a\langle\mathrm{Ad}(U_\omega)^{-1}X,E_a\rangle\langle E_a,Y\rangle$ in an orthonormal basis.
- Once the torus is large enough, the placed link $b$ lies within a fixed radius of $o$.
- Then every factor other than $\langle E_a,\nabla_bS_W\rangle$ (namely the transport, $g$, and a spectator supported beyond that radius) is invariant under moving $U_b$. Apply Lemma 4.18.

No continuity or gauge invariance of the spectator is needed, and $\beta$ may be negative.
*Lean:* [`micro_force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Avoid.lean#L170-L218), [`force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Avoid.lean#L149-L150).

**Lemma 4.20 (forces span the equation functionals).**
(a) At top weight, the linearized transported force is the negative Maxwell divergence of the curl of the top component.
(b) If all linearized transported forces on walks avoiding their link vanish on a truncated jet, its top component lies in $\mathrm{Sh}_j$.
(c) Dually, for every linear functional $Q$ on $\mathrm{Tay}_j$ vanishing on $\mathrm{Sh}_j$, the functional $Q\circ\mathrm{proj}_{\mathrm{top}}$ is a finite combination of linearized transported forces.
*Sketch:* (b) is proved by the mesh-to-zero argument of Lemma 4.5 applied to the lattice divergence (`top_shell`). (c) follows from (b) by an annihilator argument in finite dimensions.
*Lean:* [`continuum_current`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Current.lean#L208-L251), [`top_shell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Current.lean#L253-L280), [`force_kernel_last`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Current.lean#L286-L297), [`force_span`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Span.lean#L32-L41). *(statements read; mechanism of (b) (probable))*

**Lemma 4.21 (generators of the equation ideal).** $p\in\mathcal E_d$ if and only if $p\circ\Pi=0$, where $\Pi$ is the projection of each $\mathrm{Tay}_j$ onto $\mathrm{Sh}_j$. Every $p\in\mathcal E_d$ of pure grade $m$ is a combination of products $\ell\cdot M$, of total grade $m$, of a linear functional $\ell$ vanishing on $\mathrm{Sh}_j$ and a monomial $M$. Grade components of elements of $\mathcal E_d$ lie in $\mathcal E_d$, and $\mathcal E_d$ contains no nonzero constant.
*Sketch:* write $p=p-p\circ\Pi$. For a monomial $M=\prod_r\ell_r$, the difference $M-M\circ\Pi$ telescopes into $\sum_r(\ell_r-\ell_r\circ\Pi)\cdot(\cdots)$, and each $\ell_r-\ell_r\circ\Pi$ vanishes on $\mathrm{Sh}$.
*Lean:* [`erase_shell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Ideal.lean#L58-L68), [`multiplied`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Ideal.lean#L44-L45), [`generation_ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Ideal.lean#L93-L112).

**Lemma 4.22 (micro lifts at pure grade).** For $p\in\mathcal E_d$ of grade $m$ (with $m_1\le d$) there are a gauge-invariant lattice function $f$ and a label $q$ with:
- $f$ represents $q$ to order $d$;
- $q-p$ has only components of strictly higher grade;
- $f$ is a slot polynomial with $\ge m_2$ slot factors;
- $f$ is micro.

*Sketch:*
- *Generators.* For a generator $\ell\cdot M$, write $\ell\circ\mathrm{proj}_{\mathrm{top}}$ as a combination of linearized forces (Lemma 4.20).
- *Lift of a force.* Each force lifts to its transported lattice force component, a degree-one slot polynomial whose readout is the linearized force plus terms with $\ge2$ slots.
- *Lift of the monomial.* $M$ lifts to a slot polynomial built from slots that avoid the force link (`safe_span`).
- *Product.* The product is micro by Lemma 4.19, and it reads $\ell\cdot M$ modulo higher grade (`slots_error`, `higher_linear`). Combine linearly.
- *Gauge invariance.* Average over constant gauge transformations with Haar measure. The orbit spans a finite-dimensional space, so the average stays a slot polynomial and the relation above persists.

*Lean:* [`stanza`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Rank.lean#L100-L127), [`coherent_verse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Rank.lean#L129-L153), [`mounted_read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Rank.lean#L157-L166), [`averaged`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Gauge.lean#L110-L143), [`positioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Gauge.lean#L147-L163), [`Cone`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Rank.lean#L78-L83). *(proof read for `mounted_read`, `coherent_verse`, `stanza`, `positioned`; `text_safe` and `force_reads` statement only)*

**Lemma 4.23 (a covariant lifting map).** There is a linear map $F:V_d\to V_d\times\{\text{lattice functions}\}$, with $F(p)=(q,f)$, $F(1)=(1,1)$, such that for $p$ of grade $m$:
- $f$ is gauge invariant and represents $q$;
- $q-p$ has only components of higher grade;
- $f$ has $\ge m_2$ slot factors;
- $f$ is micro whenever $p\in\mathcal E_d$.

$F$ commutes with signed permutations and conjugation.
*Sketch:*
- *One grade.* For each grade $m$ choose a linear left inverse $\Lambda_m$ of the inclusion $V_d^{(m)}\cap\mathcal E_d\hookrightarrow V_d$. Put $X_m=(\text{micro lifts})\circ\Lambda_m+(\text{primary-section lift})\circ(1-\Lambda_m)$. The primary lift is $p\mapsto(p,\Phi_{\mathrm{coord}\,p})$ for the primary sections on `Labels.frames`.
- *All grades.* Sum $X_m\circ(\text{grade-}m\text{ part})$ over $m$.
- *Symmetrization.* Average over the signed-permutation action, and with the conjugate. These operations preserve all properties above.

*Lean:* [`shelf`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L99-L102), [`Offered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L33-L38), [`Payment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L65-L67), [`Campaign`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L69-L71), [`unsym`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L155-L168), [`impression`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/HGroup.lean#L106-L125). *(proof read for `unsym`; `impression` statement only)*

**Lemma 4.24 (weave and section = Prop. II.1.5).**
*Weave.* Let $R$ be the first component of $F$. It is unitriangular for the order of grades, hence an automorphism.
*Section.* For a frame $\mathfrak B$, the map $b_i\mapsto f(R^{-1}b_i)$ sends basis vectors to slot polynomials with $\ge f_i$ factors. Enclose all their stencils in one box and rewrite them as entry polynomials; this gives a section $\Sigma$ with $\Phi_{\mathrm{coord}(Rp)}=f(p)$.
*Properties.*
- Soundness: gauge invariance, unit, covariance and reality are inherited from $F$; the projection property holds because $f(p)$ represents $Rp$.
- Cost: G07 (Lemma 4.11).
- Microness: for $p\in\mathcal E_d$, $f(p)$ is the sum of the micro grade components of $F(p)$.

Doing this for every $d$ gives `commissioned`.
*Lean:* [`twist`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Automorphism.lean#L72-L73), [`regrade_tri`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Automorphism.lean#L43-L50), [`paid_reel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Automorphism.lean#L100-L102), [`weaveBuild`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L60-L97), [`Portfolio.build`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L101-L105), [`commissioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Assembly.lean#L30-L33).

### 4.6 Source histories

**Lemma 4.25 (splicing a large-field multiplier).** Let $f$ be bounded and vanish on $\mathrm{Hy}_\theta(Y)$, let $\rho$ be lawful, and let a shelf of reserved forced addresses be given. Then for every configuration $U$,
$$\sum_b\sum_i\mathrm{line}_i(f)(U)\,\mathbf 1_{\{i\in b,\ b\ \mathrm{adm}\}}\prod_{j\in b\setminus i}K_j(U)=f(U)\,\mathrm{gas}(U),$$
with no mask and no division. The *line* coefficients satisfy $\sum_i\mathrm{mass}(X_i,p_i)\le\sup\lvert f\rvert\cdot\mathrm{mass}(Y,1)(e^{\lvert Y\rvert w}-1)$, where $p_i\ge\sup_U\lvert\mathrm{line}_i(f)(U)\rvert$.
*Sketch:*
- On a large-field configuration every admissible polymer set meets $Y$, because the forced polymers cover the flagged sites.
- A reserved address encodes a finite configuration $c$ of old polymers meeting $Y$, and its line coefficient is $f$ times the activities of $c$ (probable).
- `routes` is a bijection between old admissible sets meeting $Y$ and the issued pairs (new set, marker). Paired summands agree, and the absolutely convergent double sum is reindexed.

*Lean:* [`Attach.paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Purchase.lean#L42-L78), [`Attach.routes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Clusters.lean#L198-L211), [`Attach.line_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Stock.lean#L120-L160). *(proof of `paid` read; `routes` and `line_budget` statement only)*

**Lemma 4.26 (birth = Prop. II.1.8; summability; moment identity).**
*Birth.* The supplement vanishes on $\mathrm{Hy}_\theta(Y)$, because $\Phi_{e_0}=1$. It is gauge invariant, measurable, determined by the links and flags of $Y$, and bounded by $B\theta^{-f_{\max}}\lVert v^\circ\rVert_1$. Splice it by Lemma 4.25. The local part of the density is then the masked healthy part and the marked series is supplement × gas; their sum is $\rho\,\Phi_{S_{1/\theta}v}$. The forced budget is $\mathrm{fee}\cdot\lVert v^\circ\rVert_1\le\sqrt w\,\lVert v^\circ\rVert_1$.
*Summability.* A coefficient with a remainder bound has dominated regular and marked series; the marked series is bounded by $\prod_{l\in b}2p_l$. Hence its density is bounded and measurable.
*Moment identity.* For a selected history, each transfer multiplies the total integral by $L_m^d$ (the push-forward preserves mass) and $a_m=L_ma_{m+1}$. This gives the identity $\int\mathcal D_m=a_m^dZ\langle O\rangle$ of Prop. II.1.7.
*Lean:* [`launched`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L116-L161), [`healthy_supplement`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L34-L39), [`supplement_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L69-L101), [`regular_series`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Preservation.lean#L17-L23), [`marked_series`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Preservation.lean#L25-L51), [`envelope`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Preservation.lean#L66-L84), [`integral_marked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Preservation.lean#L100-L118), [`onTop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Song.lean#L48-L90). *(proofs read)*

**Lemma 4.27 (numerical gates = Prop. II.1.9).**
*Latch.* $\theta_m^{-1}\le\hat\beta_m$. Once the cover size, which grows like $(\log\hat\beta_m)^2$, exceeds the minimal side, $\mathrm{mass}(Y,1)\le e^{\text{support exponent}}$. Also $e^{\lvert Y\rvert w}-1\le\lvert Y\rvert we^{\lvert Y\rvert}$. Hence $\mathrm{fee}\le C\hat\beta_m^{f_{\max}}w_m$. Since $w_m=\exp(-\exp((\log\log\hat\beta_m)^2/5))$ decays faster than every power, $\hat\beta^{n+1}w\le\sqrt w$ eventually. Thresholds for all $d\le J(m)$ are combined by summing finitely many thresholds.
*Budget.*
- bank: $L^{1/8}\to\infty$;
- per-step prices: $L^{-2/5}s\le1$ and $L^{-2/5}(1+s)T\le L^{-3/8}$ for large $L$;
- floors: maximum of finitely many requirements per stage;
- `alone`: enlarge each column $\kappa_j$ to $\max(\kappa_j,\pi,64K_{j+1}^2)$, with $K_k=1+\sum_{j\le k}\sum_{d\le j}(C_j+1)\,\mathrm{orbitCost}_d$.

*Section clauses.* For $m\ge r(d)$, $d+1\le d+3\le J(m)\le\mathrm{order}_m$ (and likewise for the power). Latch gives the minimal side. $\pi(\max(\mathrm{order},\mathrm{power}))\le\kappa_N$ upgrades Prop. II.1.3, item 4, to the priced bound of $\mathrm{Makes}$(v).
*Merger delay (LOCAL_SPLITTING).* For each section and support-exponent ceiling there is a threshold beyond which the hit width times $\sqrt{w_m}$ is $\le1$.
*Lean:* [`latch_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L126-L157), [`entrances`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L162-L177), [`afford`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L76-L102), [`alone`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L108-L133), [`refLi`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L182-L193), [`Issue.refer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Issue.lean#L38-L45), [`Push.Local.delay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING/Delay.lean#L56-L68). *(proofs read; the definitions of the per-step price inequalities `Buys` not read)*

**Lemma 4.28 (local-merger toolkit).**
- Attaching terms to indicator slots in the forced alphabet and summing the gas marks recovers the sum of the terms times the vacuum gas.
- Mixed left/right derivatives on disjoint link sets are sums of ordered left jets at the base point.
- Series whose summands have summable jet bounds are $C^k$ and can be differentiated termwise.

*Lean:* [`gasMark_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING/Recovery.lean#L29-L31), [`Slots.recover`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING/Recovery.lean#L184-L191), [`mix_convert`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING/Mixed.lean#L179-L201), [`smooth_exchange`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/LOCAL_LOG_JETS/Series.lean#L232-L255). Their role is to convert between lattice cylinders and polymer representations inside the per-step estimates of III.10–III.12 (probable).

### 4.7 Properties of the observables

**Lemma 4.29 (= Prop. II.1.6).**
*Sketch:*
- Translation is literal, since the placement commutes with translations.
- Linearity, continuity and locality are properties of $\Phi$ and of the linear maps $S_{1/\theta_N}$ and $\tau^{-1}$.
- Reality and covariance use three facts: $\tau$ commutes with conjugation and with the signed-permutation action (Prop. II.1.7(6)); $S_t$ commutes with the $O(4)$ action because the grades are preserved; and the section is sound.
- Unit: Prop. II.1.7(6) gives $\tau(a_N^de_0)=x_r(a_N^de_0)=a_r^de_0$, hence $\tau^{-1}(a_r^de_0)=a_N^de_0$. Since $S_t e_0=e_0$ and $\Phi_{e_0}=1$, the observable is $a_N^{-d}a_N^d=1$.
- Normalization is $x_r=\tau$.

*Lean:* see Prop. II.1.6 and [`origin_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L121-L130).

### 4.8 Comparison estimates

**Lemma 4.30 (= Prop. II.1.10).**
*Sketch:*
- (a) The Wilson measure is invariant under translations, axis reflections and complex conjugation, and the centred tiling is mapped to itself.
- (b) At offsets $o$ that are centres of the finer centred grid (`corner_root`), apply the chessboard inequality for $T$. Each cell copy of $F_o$ is a reflected and translated copy of $F_0$ planted in a distinct finer cell, so the product of roots is $\le A^{\#\text{cells}}$ by (a).
- (b), general offsets: bracket them coordinate by coordinate between aligned corners, and use the one-axis interpolation bound `pathway`. If the endpoints of a translated segment have root $\le A$, so do all intermediate points; this lemma comes from the seam inequality and its proof was not read.
- (c) The root test is subadditive under finite sums (`rooted`). Slowly varying coefficients cost $e^{\varepsilon s_N}$ with $\varepsilon<\gamma/2$, which leaves the rate $e^{-\gamma s_N/2}$.

*Lean:* [`center_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L134-L160), [`corner_root`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L192-L226), [`offset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L232-L270), [`gather_close`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Combination.lean#L65-L93). *(proofs of `offset`, `corner_root`, `gather_close` read; `center_price` statement only)*

## 5. Where the difficulty lies

- **Uniformity, not existence.** G01–G07 and the readout use classical finite-dimensional analysis. What matters downstream is the uniformity:
  - the cost bound of Prop. II.1.3 holds for every threshold, side and placement;
  - the readout constant of Prop. II.1.4 does not depend on the side, the support, the placement or the budget point.

  The second is obtained by testing along jets scaled by the threshold. The logarithms of the test links then grow only like $(1+\mathrm{dist})^{k-1}$, which the budget weights $(1+\mathrm{dist})^{P}$ absorb because $k\le d\le P$. A written proof should state these uniformities explicitly; Lemma 4.15(a) carries the weight.
- **Which equations.** $\mathcal E_d$ is the ideal of the free Maxwell equations, imposed component by component on the Taylor coefficients, not the ideal of the nonlinear Yang–Mills equations. The nonlinear terms are absorbed because the lifts only need to agree modulo higher grade, which is what the unitriangular weave $R$ records. Microness is a statement on a single torus, for every $\beta\neq0$ and every spectator supported beyond a fixed lattice radius. It is not a statement about the limit theory.
- **Two families of sections.** The final family uses the off-shell primary sections. The equation sections form a second family on the same history and enter through `Run.Ties.receipts`. Turning their microness into nullity of $\mathcal E_d$ in the limit is done elsewhere (III.12, V.1/V.2).
- **Exactness.** The bare-end, birth and transfer identities are equalities of functions at every configuration. The birth needs no lower bound on, and no division by, the vacuum density, because the large-field part of the observable is spliced into marked polymers. The price is the fee gate. It can be met only because the forced allowance $w_m$ decays faster than every power of $\hat\beta_m$, while the section costs $\theta_m^{-f_{\max}}\le\hat\beta_m^{f_{\max}}$.
- **Constants.** The choice in G03 is non-constructive, so stencils and the constants $A$, $\pi(D)$, $c_d$ are not explicit and depend on $d$. This is harmless only because they are fixed before the block sizes, through $\pi(\max(\mathrm{order},\mathrm{power}))\le\kappa_j$.
- **Unusual points.**
  - Micro is required for all $\beta\neq0$, including negative couplings.
  - The cost bound is asserted for all sides, including placements that wrap.
  - The readout of a wrapping support is the constant convention $f(1)\cdot1$.
  - The exact moment identity (`integral_marked`) is proved but not used by the main theorem.
  - Two birth routes coexist: `launched`/`onTop`/`Issue.press` (the last outside the closure) and the guarded `summon` used in VIII.1.
- **Mixed content.** LOCAL_SPLITTING, LOCAL_LOG_JETS and most of ATOM_GUARDED_LAYOUT are tools for the per-step estimates and the assembly. RELAY_DIFFERENCE is a chessboard lemma used by III.12, III.13, VII.4 and VIII.1. Mathematically, these belong with their consumers.

## 6. Notation

| Written proof | Lean (glossary) | Meaning |
|---|---|---|
| $\mathrm{Tay}_j$, jet $J$ | [`Labels.Taylor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L39), `Jet` | radial-gauge Taylor coefficient of weight $j+2$; sequence of them |
| $V_d$ | [`Labels.Label`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L112) | invariant polynomials of weight $\le d$ (labels) |
| $p(J)$ | [`read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L35) | value of a label on a jet |
| $(w,f)$, $V_d^{(w,f)}$ | [`Grade`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L17-L18) | weight and number of factors |
| frame $(b_i)$, $c\in\mathbb C^{K_d+1}$ | [`Frame`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L50-L57), `Frame.Coeff` | real graded basis starting with $1$; coordinates |
| $S_t$, $c^\circ$, $\lVert c\rVert_1$ | [`Frame.scaled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L58-L61), [`core`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L123-L126), [`coeffSize`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L128) | $c_i\mapsto t^{f_i}c_i$; drop the unit coordinate; $\ell^1$ norm |
| $s\cdot c$, $\bar c$ | [`Frame.act`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L83-L84), [`realBar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Action.lean#L131-L140) | $O(4)$ action; conjugation |
| $U^{(d)}_{J,h}$ | [`Hol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L55-L57), [`Hol.links`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L62) | test holonomies |
| $\mathrm{sc}_hJ$ | [`scaleJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L82) | $(h^{j+2}J_j)_j$ |
| slot $\sigma=(\omega,P)$ | [`RG.Slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L38-L40) | $\mathrm{Ad}(U_\omega)F_P(U)$ |
| slot map $\mathfrak S$, truncated jets | [`bring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L98), [`Snap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L26) | finitely many slots as a function of $(J_j)_{j\le d-2}$ |
| section $(S,\Phi)$; $\Phi_c(o;U)$ | [`SectionData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L103-L105), `places` | stencil and linear map to entry polynomials; placement |
| sound | [`Sound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L140-L147) | symmetries, unit, projection property |
| slot structure; cost | [`Bid.pop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L55-L56); [`Bid.Credit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L63-L66) | columns are slot polynomials with $\ge f_i$ factors; $t^{f_i}$ budget bound |
| $\pi(D)$, $c_d$ | [`price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L126), [`cameras`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L20) | uniform price; value bound of the columns |
| $p$ reads $f$ at $o$ | [`Reads`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L186-L194) | readout (constant convention when wrapping) |
| $\mathrm{Sh}_j$, $\mathcal E_d$ | [`Maxwell.onShell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L18-L42), [`gaugeJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L46-L47), [`equationIdeal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72) | free-Maxwell components; free-Maxwell ideal |
| $\nabla_eS_W$, transported force | [`field`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L132), [`force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Avoid.lean#L149-L150) | link gradient of the Wilson energy; its transport to $0$ |
| micro | [`Micro`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Micro.lean#L33) | orthogonal to remote bounded spectators |
| micro lift; lifting map $F$ | [`Cone`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Rank.lean#L78-L83); [`Campaign`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L69-L71) | lift agreeing modulo higher grade; all grades at once |
| weave $R$; equation section | [`twist`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Automorphism.lean#L72-L73); [`Portfolio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L51-L58) | unitriangular regrading; section with micro equation part |
| record $\mathsf C$; $\mathrm{Makes}$ | [`Family`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L24-L30); [`Family.Makes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62) | Wilson family; consistency predicate |
| $O_{N,p}(v,o)$ | [`Family.O`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L42) | renormalized observable $a_N^{-d}\Phi_{S_{1/\theta_N}\tau^{-1}v}(o;\cdot)$ |
| $r(d)$, $a_r^de_0$ | `Family.ref`, [`Family.refUnit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L37) | reference level; physical unit vector |
| $E_m(v)$, $\mathcal D_m$ | [`Coefficient`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L26-L30), [`density`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L48-L50) | source coefficient; first-order inserted density |
| $\tau$; based | `TransferData.terminal`; [`Based`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L89-L114) | terminal map; transfer specification |
| supplement; fee | [`supplement`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L24-L25); [`fee`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L108-L109) | large-field part of the bare observable; birth gate |
| latch; Budget; Plans | [`Latch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L120-L123); [`Budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L65-L72); [`Plans`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L57-L62) | birth gate per level; level inequalities; stage-wise numerical plan |
| price list $(K_j)$ | [`Bid.Worth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L29-L32) | nondecreasing constants $\ge1$ |
| close | [`Bid.close`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L25) | root tests in all tilings tend to $0$ along the order |

## 7. Open points for the writer

1. **From microness to null labels.** Microness of the equation sections is consumed through `Run.Ties.receipts` and `Hearthside` (III.12). Several things remain to be traced:
   - how this yields the nullity of $\mathcal E_d$ in the limit theory;
   - whether $\mathcal E_d$ equals the null space $N_d$ of the main theorem;
   - which unit proves the converse inclusion.

   The assessment (§3) states that $F_d$ is isomorphic to the free-Maxwell quotient. These lie in V.1/V.2 and were not followed.
2. **Birth route in the main chain.** VIII.1 uses `Guard.summon` (reserved addresses supplied by a "keeper") rather than `launched` (a shelf). The statements have the same hypotheses, but the relation between the two splicings was not checked line by line.
3. **Proofs not read:**
   - G01; the germ proofs of G02 for links, walks and slots; the averaging lemmas of G06; the slot bounds of G07;
   - the proof of `testLog_bound` (the mechanism of Lemma 4.15(a) is reconstructed from private lemma statements), `mixed_budget`, `budget_probes`;
   - `Current.lean` (`top_shell`, `force_kernel_last`), `Span.lean`, `text_safe`, `force_reads`, `ibp`, `integral_variation`;
   - `Clusters.lean` (`routes`), `Stock.lean` (`line_budget`); the definition of `Buys`;
   - LOCAL_SPLITTING except `Delay.lean`, LOCAL_LOG_JETS, ATOM_GUARDED_LAYOUT beyond `summon`, `LocalH`, and `Cells.Tiling.pathway`.
4. **Hypercubic conventions.** The precise form of the affine maps in Prop. II.1.6(c) and Prop. II.1.10(a) (direction of the pull-back, the role of "diagonal" signed permutations) should be fixed against I.1.
5. **Filing.** The declaration map files the label spaces (`YM/Labels`) and `Maxwell.equationIdeal` under III.16, `Bid.teaching`/`Credit`/`pop` under III.10, and `Integrated.source_sections` under V.2. Mathematically they belong here.
6. **Non-uniform constants.** $A$, $\pi(D)$, $c_d$ and the readout constant depend on $d$, and on $k,P$. Confirm that every consumer applies them at fixed $d$ with $\max(\mathrm{order},\mathrm{power})$ bounded at each stage; III.2 should record this in the order of constants.
7. **Naming.** The code's words `Portfolio`, `Campaign`, `Payment`, `Offered`, `Switch`, `Bill`, `Doors`, `Latch`, `Worth`, `Sheet`, `cameras`, `rents`, `fee` are not economic or physical terms. The written proof should use the notation of §6.

**Builds on:** [I.1](I-1.md), [III.1](III-1.md), [III.16](III-16.md), [IV.1](IV-1.md), [III.10](III-10.md).

**Used by:** [III.11](III-11.md), [III.12](III-12.md), [III.13](III-13.md), [VII.2](VII-2.md), [III.2](III-2.md), [VIII.1](VIII-1.md), [III.10](III-10.md), [VII.4](VII-4.md), [VII.6](VII-6.md), [III.6](III-6.md), [IV.1](IV-1.md), [VII.1](VII-1.md), [III.4](III-4.md), [III.3](III-3.md), [III.9](III-9.md), [III.15](III-15.md), [VI.2](VI-2.md), [III.14](III-14.md), [V.1](V-1.md), [III.8](III-8.md), [V.2](V-2.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| work package [`YM/Push/RELAY_MARK/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK) | 2,336 |
| work package [`YM/Extra/SOURCE_HISTORIES/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES) | 1,801 |
| work package [`YM/Push/LOCAL_SPLITTING/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING) | 1,485 |
| work package [`YM/Next/FOUNDATIONS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS) | 1,196 |
| work package [`YM/Push/RELAY_DIFFERENCE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE) | 858 |
| work package [`YM/Source/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source) | 594 |
| work package [`YM/Work/G06/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06) | 385 |
| work package [`YM/Planned/ATOM_GUARDED_LAYOUT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_GUARDED_LAYOUT) | 365 |
| work package [`YM/Work/G07/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07) | 359 |
| work package [`YM/LocalH/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/LocalH) | 218 |
| work package [`YM/Work/G05/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G05) | 190 |
| work package [`YM/Further/LOCAL_LOG_JETS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/LOCAL_LOG_JETS) | 166 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **II.1.1** [`endpointGerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G02.lean#L89-L130) *(key result)* — For a right-multiplication ODE with coefficients linear in finite-dimensional parameters, the endpoint solution is analytic in the parameters with derivative given by the integral of the coefficient.
- **II.1.2** [`blockTaylor_jets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G05/Taylor.lean#L84-L102) *(key result)* — The block Taylor polynomial of a C^d function at 0 has the same Fréchet derivatives as the function at 0 up to order d.
- **II.1.3** [`entryPoly_slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06/Formula.lean#L137-L155) *(numbered result)* — The slot readout on cover links is a polynomial in the entry variables of the links in its stencil.
- **II.1.4** [`slotGerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G02.lean#L230-L273) *(key result)* — The slot readout along a holonomy family is analytic at zero and its initial germ equals the explicit linear form, with no symmetry hypothesis.
- **II.1.5** [`Sound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L140-L147) *(numbered result)* — A soundness predicate bundling normalization properties of a physical lattice section.
- **II.1.6** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G05.lean#L113-L139) *(key result)* — Real invariant slot polynomials with lower-degree Taylor terms retained, built from real Fréchet jets of block maps.
- **II.1.7** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06.lean#L43-L60) *(key result)* — The jet data are turned into an equivariant polynomial section over the labels.
- **II.1.8** [`paid_slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07/Stencil.lean#L180-L199) *(numbered result)* — Evaluating a single link slot on a stencil within S satisfies the rate bound at order zero with a single threshold.
- **II.1.9** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07.lean#L79-L102) *(key result)* — The G07 requirement holds: finite source sections have derivative-cost bounds on stencils of link variables, invariant and local.
- **II.1.10** [`line_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Stock.lean#L120-L160) *(numbered result)* — The spliced line terms admit explicit coefficient majorants whose total weighted budget is bounded by C times a mass-exponential quantity.
- **II.1.11** [`routes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Clusters.lean#L198-L211) *(numbered result)* — A bijection between old cluster terms and issued terms is constructed before summation.
- **II.1.12** [`paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Purchase.lean#L42-L78) *(key result)* — Splicing a bad-field multiplier at a marker gives exactly f times the old polymer gas, summed over labels, for every configuration.
- **II.1.13** [`center_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L134-L160) *(numbered result)* — The root test of a translated, oriented observable at a centered cell equals the root test of the original at the origin cell.
- **II.1.14** [`offset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L232-L270) *(key result)* — A single finer centered comparison bound for an observable implies the interior property and root-test bound at all offsets of a coarser tiling.
- **II.1.15** [`smooth_exchange`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/LOCAL_LOG_JETS/Series.lean#L232-L255) *(key result)* — If summands have jets dominated by absolutely summable bounds on an open window, the sum is C^k and ordered left derivatives can be taken termwise.
- **II.1.16** [`mix_convert`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING/Mixed.lean#L179-L201) *(key result)* — Mixed left/right derivatives on disjoint sets of links equal a sum of ordinary ordered left jets at the base point after reordering.
- **II.1.17** [`launched`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L116-L161) *(key result)* — Birth of a single-source transfer: under a lawful gas and bounds, the born history has a ledger, format, remainder bound and the exact density formula.
- **II.1.18** [`exists_read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L238-L247) *(key result)* — For regular coefficients of sufficient order, there exists a unique curvature-jet label read off from the function at the given site.
- **II.1.19** [`delay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING/Delay.lean#L56-L68) *(key result)* — For any support-exponent ceiling, there is a stage threshold beyond which the budget width times the square root of the forced allowance is at most 1 and the bare delay condition holds at every level below the ceiling.
- **II.1.20** [`recover`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING/Recovery.lean#L184-L191) *(key result)* — Packing attaching terms into indicator slots and summing the gas marks recovers exactly the sum of the terms times the vacuum gas.
- **II.1.21** [`Heard`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Replay.lean#L32-L43) *(numbered result)* — A proposition bundling several line/read claims that all refer to the same history witness.
- **II.1.22** [`roof_of_tabs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/CalendarPrices.lean#L84-L92) *(numbered result)* — The roof estimate follows from the tabs hypothesis on the path levels.
- **II.1.23** [`gather_close`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Combination.lean#L65-L93) *(numbered result)* — Combining families of trials with slow multipliers and centered rent bounds yields a combined closeness estimate with exponential decay restored.
- **II.1.24** [`testLog_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/LinkBounds.lean#L229-L273) *(numbered result)* — Derivatives of the logarithmic link readout are bounded by a constant times theta times a power of torus distance, uniformly in side and anchor.
- **II.1.25** [`price_of_readout`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L271-L290) *(key result)* — There is one constant such that the scaled coefficient size of any read-out label is bounded by that constant times the sup bound of the function, uniformly in side and support.
- **II.1.26** [`alone`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L108-L133) *(numbered result)* — Any sheet can be grown in columns to another with the same kernel and floor for which numeric plans exist.
- **II.1.27** [`entrances`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L162-L177) *(numbered result)* — There is an entrance cost function such that all levels with the matching profile satisfy the latch condition for all degrees up to the stage index.
- **II.1.28** [`afford`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L76-L102) *(key result)* — Given plans for a sheet, there are floors and beta thresholds beyond which every level system on the sheet satisfies the budget.
- **II.1.29** [`build`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L101-L105) *(key result)* — For any holonomy datum and frame, a section datum and weave exist satisfying the portfolio conditions unconditionally.
- **II.1.30** [`commissioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Assembly.lean#L30-L33) *(major result)* — Portfolio build holds simultaneously for all degrees d along a fixed frame list.
- **II.1.31** [`mounted_read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Rank.lean#L157-L166) *(key result)* — Every element of the equation ideal at pure grade admits a raw lift satisfying the cone relation.
- **II.1.32** [`positioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Gauge.lean#L147-L163) *(key result)* — Every pure-grade equation-ideal element has a gauge-invariant lift satisfying the cone relation.
- **II.1.33** [`force_kernel_last`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Current.lean#L286-L297) *(key result)* — If all transported linearized forces vanish on the cut, the top Taylor coefficient lies in the range of the gauge jet map, i.e. is on-shell pure gauge.
- **II.1.34** [`unsym`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L155-L168) *(numbered result)* — For any holonomy datum and degree there is a switch realizing a campaign.
- **II.1.35** [`force_span`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Span.lean#L32-L41) *(key result)* — Any linear functional vanishing on pure-gauge jets, composed with last-coordinate projection, lies in the span of mounted force functionals.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

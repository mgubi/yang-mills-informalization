# II.1. Field labels and their lattice representatives

*Part II — Data of the construction.* 10,805 lines of Lean in 1,375 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is **checked** against the Lean and **edited** in three rounds by three models. It is updated as it improves.


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

- **Gauge group.** $G\subset U(n)$ is a compact matrix group, with $n\ge1$; nothing in this unit uses simplicity. Use the $\mathrm{Ad}$-invariant inner product $\langle X,Y\rangle=-\mathrm{Re}\,\mathrm{tr}(XY)/n$ on its Lie algebra $\mathfrak g$, and the Frobenius norm on matrices. For a plaquette $P$, $F_P(U)\in\mathfrak g$ is the orthogonal projection of $\tfrac12(U_P-U_P^{-1})$, and $\vartheta(U_P)=\lVert U_P-1\rVert/\sqrt n$ is its chord. $S_W(U)=\sum_P(1-\mathrm{Re}\,\mathrm{tr}\,U_P/n)$ is the Wilson energy, summed once over each site and axis pair $\mu<\nu$, and $\langle\cdot\rangle_\beta$ is the Wilson expectation on a torus $\Lambda_\ell=(\mathbb Z/\ell)^4$, where $\ell\ge1$.
- **Cover and placement.** Many objects live on the cover $\mathbb Z^4$. A function $f$ of finitely many cover links is *placed* at a site $o\in\Lambda_\ell$ by lifting the torus periodically around $o$; the result is written $f(o;U)$.
- **Small fields.** $\mathrm{Hy}_t(X)$ is the set of configurations in which no plaquette touching $X$ has chord $>t$.
- **Levels.** $m=0$ is the coarsest level and $m=N$ the Wilson lattice. $L_m$ is the odd block factor of the step $m+1\to m$, the spacing satisfies $a_m=L_ma_{m+1}$, and $s_m=\log(1/a_m)$ is the scale.
- **Couplings and level constants (III.9).** $\hat\beta_m=\bar\beta+b_0s_m$ with $b_0=11C_A/(24\pi^2)$. The small-field threshold is $\theta_m=\hat\beta_m^{-1/2}\exp((\log\log\hat\beta_m)^2)$ and the *forced allowance* is $w_m=\exp(-\exp((\log\log\hat\beta_m)^2/5))$. $J(m)$ is the nondecreasing stage index, $\bar\kappa_j\ge1$ the stage-$j$ constant, $\kappa_m=\bar\kappa_{J(m)}$ the level-$m$ constant, and $b_m$ its budget point. $\rho_m=\rho_{N,p,m}=e^{\mathcal V_m}\,\mathrm{gas}_m$ is the polymer representation of the level-$m$ density, with vacuum exponent $\mathcal V_m$ (II.2). $T^{(m)}_\beta$ is the blocking push-forward from level $m+1$ to level $m$ (III.1).
- **Budget norms (II.2).** A budget point $b$ has order $k_b\ge6$, power $P_b\ge2$, threshold $t_b\in(0,1]$, a support exponent and a cover size. $f$ is *$b$-regular on $X$* if it is local on links with both endpoints in $X$, measurable and gauge invariant, and $A\mapsto f(e^AU)$ is $C^{k_b}$ at $A=0$ for every $U\in\mathrm{Hy}_{t_b}(X)$. All ordered left derivatives through order $k_b$ must exist there. Write $\lVert f\rVert_{b;o,X}\le c$ when $c\ge0$ bounds every such derivative, including the value, in every list of directions satisfying $\lvert A_e\rvert\le t_b(1+\mathrm{dist}(e_-,o))^{P_b}$. Here $e_-$ is the initial vertex of the positive link $e$, and $\mathrm{dist}$ is the periodic $\ell^\infty$ distance. All bounds are pointwise, including at the small-field boundary.

**What the unit does.** It defines the field labels and their lattice representatives, and specifies the renormalized observables $O_{N,p}$.

1. **Sections.** For each label it constructs gauge-invariant polynomials in the link matrices on a fixed stencil that reproduce the label to Taylor order $d$ in the spacing, with symmetry and small-field bounds (§4.1–4.3).
2. **Readout.** It proves the converse: every regular lattice function has a label, and the label's size is bounded by the function's budget norm uniformly in the lattice side, support and norm parameters (§4.4).
3. **Equation sections.** From the lattice Schwinger–Dyson identity it builds a second kind of section on which every label of the free-Maxwell equation ideal becomes orthogonal to remote spectators (§4.5).
4. **Observables.** It specifies the record carrying a label through the RG history, proves the exact birth formula at the Wilson end, and collects the numerical conditions and comparison estimates used downstream (§4.6–4.8).

## 1. What this unit proves

**Proposition II.1.1 (label spaces and frames).**
For $j\ge0$ let $\mathrm{Tay}_j$ be the real space of $4$-tuples $A=(A_\mu)$ of symmetric $(j+1)$-linear maps $(\mathbb R^4)^{j+1}\to\mathfrak g$ satisfying the radial-gauge condition $\sum_\mu z_\mu A_\mu(z,\dots,z)=0$. Its elements are the Taylor coefficients of weight $j+2$ of a connection in radial gauge. A *jet* is a sequence $J=(J_j)_{j\ge0}$. Fix a real basis of each $\mathrm{Tay}_j$, and give its coordinates weight $j+2$. Let $V_d$ be the space of complex polynomials in these coordinates of total weight $\le d$ that are invariant under $J\mapsto\mathrm{Ad}(g)J$ for all $g\in G$. Then:

(a) $V_d$ is finite-dimensional, $1\in V_d\subset V_{d+1}$, and an element of $V_d$ is determined by its values on real jets.

(b) $V_d=\bigoplus_{w,f}V_d^{(w,f)}$, where $(w,f)$ = (weight, number of factors). $V_d^{(0,0)}=\mathbb C1$, and $V_d^{(w,0)}=0$ for $w>0$. Complex conjugation $p\mapsto\bar p$ and the orthogonal group $O(4)$, acting by rotating the jet, preserve the grades.

(c) There is a coherent system of *frames*. For each $d$ there is a basis $b_0=1,b_1,\dots,b_{K_d}$ of $V_d$ with these properties:

- each $b_i$ is real ($\bar b_i=b_i$) and of pure grade $(w_i,f_i)$, with $(w_0,f_0)=(0,0)$, $w_i\le d$ and $f_i\ge1$ for $i\neq0$;
- the basis of $V_d$ is contained in that of $V_{d+1}$.

In coordinates $c\in\mathbb C^{K_d+1}$ we write $(S_tc)_i=t^{f_i}c_i$, $\lVert c\rVert_1=\sum_i\lvert c_i\rvert$, $c^\circ=c-c_0e_0$, and $s\cdot c$ for the $O(4)$ action, defined by $p_{s\cdot c}(J)=p_c(s^{-1}J)$.
*Status:* definitions; (a)–(c) are theorems. *Lean:* [`Labels.Taylor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L39), [`radial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L22-L37), [`limited`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L60-L61), [`invariantSpace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L103-L107), [`Label`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L112), [`cap_finite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L63-L94), [`eval_ext`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L38-L49), [`Grade`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L17-L18), [`decompose`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L87-L105), [`Frame`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L50-L57), [`Frames`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L102-L104), [`frames`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L107-L111), [`Frame.scaled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L58-L61), [`Frame.act`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L83-L84), [`Frame.core`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L123-L126), [`Frame.coeffSize`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L128).
The field spaces $F_d$ of the main theorem are quotients of $V_d$ by the null labels. That quotient is formed in V.1/V.2, not here.

**Proposition II.1.2 (test holonomies and sound sections).**

(a) Fix $d$, a jet $J$, $h\in\mathbb R$ and a cover edge $(x,\mu)$, and let $A^{(d)}_\mu(z)=\sum_{j+2\le d}J_{j,\mu}(z,\ldots,z)$, with an empty sum when $d<2$. Let $u\colon\mathbb R\to G$ solve $u'(t)=u(t)\,hA^{(d)}_\mu(h(x+te_\mu))$ with $u(0)=1$. The solution exists and is unique, and we put $U^{(d)}_{J,h}(x,\mu)=u(1)$. Moreover $U^{(d)}_{J,h}=U^{(d)}_{\mathrm{sc}_hJ,1}$, where $\mathrm{sc}_hJ=(h^{j+2}J_j)_j$, and $U^{(d)}_{J,0}\equiv1$. A *holonomy datum* is such a choice of solutions; by uniqueness its links do not depend on the choice.

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
2. (*slot structure*) Each column is $\Phi^{(d)}_{e_i}(U)=P_i(\sigma_1(U),\dots,\sigma_m(U))$. Here the $\sigma_l$ are slots with stencils in $S_d$, $P_i$ is a complex polynomial in their real components, and every monomial of $P_i$ has degree $\ge f_i$. A *slot* $\sigma=(\omega,P)$ is a lattice walk $\omega$ from $0$ followed by a plaquette $P$ at its end, with $\sigma(U)=\mathrm{Ad}(U_\omega)F_P(U)\in\mathfrak g$.
3. (*cost*) For all $k,P\in\mathbb N$ there is $A\ge0$, depending on the chosen section and on $k,P$, with the following property. For every budget point $b$ of order $k$ and power $P$ (any threshold and support exponent), every side $\ell$, site $o$ and index $i$, the placed column $\Phi^{(d)}_{e_i}(o;\cdot)$ is $b$-regular on its footprint $Y_o=o+S_d$ with sup bound $A\,t_b^{f_i}$.

For the fixed primary sections used in the final family, two further facts hold:

4. one nondecreasing bound $\pi(D)\ge1$ serves in item 3 for all $d,k,P\le D$;
5. there is $c_d\ge1$ with $\lvert\Phi^{(d)}_{e_i}\rvert\le c_d$ at every configuration and every placement.

*Status:* theorem, assembled from G01–G07; no simplicity assumption on $G$. *Lean:* [`Integrated.source_sections`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L216-L219), [`Bid.teaching`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L76-L86), [`Bid.Learns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L72-L74), [`Bid.pop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L55-L56), [`Bid.Credit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L63-L66), [`Foundations.hol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L92), [`localSection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L101), [`sound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L103-L104), [`valuation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L106-L107), [`price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L126), [`priced`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L133-L142), [`full_value_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L147-L163). These are the sections of the final Wilson family (Prop. II.1.6).

**Proposition II.1.4 (readout of a lattice function).**
Fix a holonomy datum, $d$, and a frame of $V_d$.

(a) Let $b$ be a budget point of order $\ge d$, let $X\subset\Lambda_\ell$, $o\in\Lambda_\ell$, and let $f$ be $b$-regular on $X$. There is a unique $p\in V_d$ that *reads* $f$ at $o$:

- if $X$ does not wrap around $o$ ($10\,\mathrm{dist}(x,o)<\ell$ for all $x\in X$), then for every jet $J$ the function $h\mapsto f(U^{(d),o}_{J,h})$ is $C^d$ at $0$ and has the same derivatives of order $\le d$ there as $h\mapsto p(\mathrm{sc}_hJ)$;
- if $X$ wraps, $p=f(1)\cdot1$ by convention.

Here $U^{(d),o}_{J,h}(x,\mu)=U^{(d)}_{J,h}(\widetilde{x-o},\mu)$, where the tilde denotes the centred periodic lift. These are torus test links, defined by lifting each initial vertex; they need not be periodic samples of a connection across the seam.

(b) There is $C\ge1$, depending only on the holonomy datum and the frame, with the following property. For all $\ell,o,X$, all budget points $b$ with $k_b\ge d$ and $P_b\ge d$, all $f$ that are $b$-regular on $X$ with sup bound $c$, and all $p$ reading $f$:
$$\lVert S_{t_b}\,\mathrm{coord}(p)\rVert_1\le C\,c .$$

(c) If $\Sigma$ is sound and $20(\lvert x_\mu\rvert+1)\le\ell$ for every $x\in S$ and every axis $\mu$, then the placed function $\Phi_c(o;\cdot)$ reads $p_c$ at $o$.

*Status:* theorem. *Lean:* [`exists_read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L238-L247), [`read_projection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L218-L233), [`Reads`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L186-L194), [`price_of_readout`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L271-L290), [`placed_reads`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L253-L267). This bounds the local-splitting projection and the remainder comparisons in III.12–III.13 and VIII.1.

**Proposition II.1.5 (equation sections).**
Let $\mathrm{Sh}_j\subset\mathrm{Tay}_j$ be the radial potentials whose curvature is a degree-$j$ homogeneous Taylor coefficient of a $\mathfrak g$-valued solution of the *free* Maxwell equations. That is: $F$ is antisymmetric, satisfies the Bianchi identity, and $\sum_a\partial_aF_{ab}=0$. The *equation ideal* is
$$\mathcal E_d=\{p\in V_d:\ p(J)=0\text{ for every jet with }J_j\in\mathrm{Sh}_j\text{ for all }j\}.$$
This is the weight-$\le d$ part of the ideal of the linearized field equations, imposed degree by degree. For every holonomy datum, every $d$ and every frame of $V_d$, there are a section $\Sigma$ and a $\mathbb C$-linear automorphism $R$ of $V_d$ (the *weave*) such that:

- $\Sigma$ is sound and has the slot structure and cost of Prop. II.1.3;
- $R$ commutes with the signed-permutation action and with conjugation;
- for every $p\in\mathcal E_d$, the cover function $\Phi_{\mathrm{coord}(Rp)}$ is *micro*.

A function $f$ is *micro* if it is continuous and there are $r,M\in\mathbb N$ with the following property. For every side $\ell\ge M$, site $o$, coupling $\beta\neq0$ and bounded measurable $S$ depending only on links with both endpoints at distance $>r$ from $o$,
$$\big\langle f(o;\cdot)\,S\big\rangle_\beta=0 .$$
The same holds simultaneously for all $d$ along a fixed system of frames. The constructed $R$ is unitriangular: if $p$ has pure grade $(w,f)$, every nonzero component of $Rp-p$ has grade $(w',f')$ with $(f',w')>(f,w)$ in lexicographic order. The existence statement does not require this extra property.
*Status:* theorem, unconditional. *Lean:* [`Maxwell.equationIdeal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72), [`ideal_meaning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L74-L79), [`Maxwell.onShell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L18-L42), [`gaugeJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L46-L47), [`Micro`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Micro.lean#L33), [`MicroAt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Micro.lean#L29-L31), [`Portfolio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L51-L58), [`Portfolio.build`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L101-L105), [`commissioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Assembly.lean#L30-L33), [`regrade_tri`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Automorphism.lean#L43-L50).
In the main chain these sections enter through the auxiliary-section data in [`Run.Ties`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L65-L71) (III.12), as a second family of sections on the same history, together with [`Hearthside`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fire.lean#L17-L20). [`Memento`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Assembly.lean#L39-L41) and [`awarded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Assembly.lean#L57-L67) would make them the family's own sections, but they are outside the main-theorem closure.

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
- (iv) if $r(d)\le N$, then $20(\lvert x_\mu\rvert+1)\le\ell_{N,p}$ for every $x\in S_d$ and every axis $\mu$;
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

The renormalization map of the main theorem is $B_{N,p,d}=S_{1/\theta_N}\tau^{-1}$: writing $P_d[c]=\Phi^{(d)}_c$, its insertion formula is $I_{N,p}=a_N^{-d}P_d[B_{N,p,d}c]$.
*Status:* (a)–(c) are theorems. $\mathrm{Makes}$ is proved for the final family in [`Bandage.squad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Marco.lean#L30-L49) (VIII.1) and included in the construction record [`Run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48) (III.12). That family uses the fixed coherent frames, holonomies and primary sections of Prop. II.1.3. Clauses (ii)–(v) come from Prop. II.1.9(c) of this unit and clause (vi) from G08 (III.10). *Lean:* [`Family`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L24-L30), [`Family.O`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L42), [`initial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L77-L79), [`Family.Makes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62), [`linearO`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L117-L127), [`continuousO`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L114-L115), [`localO`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L109-L112), [`translation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L71-L72), [`invariant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L104-L107), [`reality`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L74-L86), [`rotated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L88-L98), [`constant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L100-L102), [`normalized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L65-L68).

**Proposition II.1.7 (based transfer families).**
*Source coefficients.* A source coefficient at level $m$ is $E=(x,(X_i),(g_i),(h_i))_{i\in\mathbb N}$. Here $x\in\mathbb C^{K_d+1}$ are the running label coordinates, the $X_i$ are supports, the $g_i$ are *regular* remainders, and the $h_i$ are *forced* functions attached to the forced-polymer addresses $i$ of $\rho_m$, whose activities are $K_i$.

*Density.* Its density at $o$ is the $\lambda$-coefficient, at $\lambda^2=0$, of the density with one inserted source:
$$\mathcal D_m(E)(U)=\rho_m(U)\Big[x_0+\mathbf 1_{\mathrm{Hy}_{\theta_m}(Y_o)}\Phi_{S_{1/\theta_m}x^\circ}(o;U)+\sum_i\mathbf 1_{\mathrm{Hy}_{\theta_m}(X_i)}g_i(U)\Big]+e^{\mathcal V_m(U)}\sum_{b\ \mathrm{adm}}\ \sum_{i\in b}h_i(U)\prod_{j\in b\setminus\{i\}}K_j(U).$$

*Format at $o$.* The $g_i$ are $b_m$-regular on $X_i\ni o$, with $g_i(1)=0$. When $X_i$ does not wrap around $o$, $h\mapsto g_i(U^{(d),o}_{J,h})$ is $C^d$ at $0$ and all its derivatives of order $\le d$ vanish there, for every $J$. If $k_{b_m}\ge d$, this is exactly zero readout in Prop. II.1.4(a). Each $h_i$ is gauge invariant and measurable, vanishes unless polymer $i$ is eligible and carries $o$, and depends only on the links and flags of the support of polymer $i$.

*Remainder bound $(\kappa,c)$.* Require $\kappa>0$ and nonnegative $a,b$ with $a+b\le c$, together with nonnegative weights $e_i,e_i'$ with $\sum_i\mathrm{mass}(X_i,e_i)\le a$, $\lVert g_i\rVert_{b_m;o,X_i}\le e_i$, $\sum_i\mathrm{mass}(\mathrm{supp}K_i,e'_i)\le\kappa b$ and $\lvert h_i\rvert\le e'_i$ at every configuration. Each weighted sum is required to converge; $\mathrm{supp}K_i$ denotes the prescribed support of forced polymer $i$.

*Based family.* A family $(E_m(v))_m$ with terminal automorphism $\tau$ is *based* for $(\Sigma,r)$ if $r\le N$ and, for all $v$ and $r\le m\le N$:

- (1) $E_m(v)$ has Format at $0$ and remainder bound $(\sqrt{w_m},\ \kappa_m\lVert x_m(v)^\circ\rVert_1)$;
- (2) $x_m$, $g$ and $h$ are linear in $v$, and the supports do not depend on $v$;
- (3) (*bare end*) $x_N(v)=v$, $g\equiv0$, and $\mathcal D_N(E_N(v))=\rho_N\,\Phi_{S_{1/\theta_N}v}(0;\cdot)$;
- (4) (*transfer*) $\mathcal D_m(E_m(v))=L_m^d\,T^{(m)}_{\beta_{N,p,m+1}}\mathcal D_{m+1}(E_{m+1}(v))$ for $m<N$;
- (5) $\lVert x_{m+1}\rVert_1\le\kappa_{m+1}\lVert x_m\rVert_1$ and $\lVert x_m\rVert_1\le\kappa_{m+1}L_m^d\lVert x_{m+1}\rVert_1$;
- (6) $x_r(v)=\tau v$, $\tau$ commutes with conjugation and with the signed-permutation action, and $x_m(a_N^de_0)=a_m^de_0$.

*Status:* definition (specification). G08 (III.10) produces such families from the per-step source estimates, together with the room and bank inequalities of Prop. II.1.9. A coefficient with Format and a remainder bound has bounded measurable density whenever the underlying representation is lawful (Lemma 4.26). For a based family on a selected history, and $r\le m\le N$,
$$\int\mathcal D_m(E_m(\tau^{-1}v))\,dU=a_m^d\,Z_{N,p}\,\langle O_{N,p}(v,0)\rangle_{\beta_{N,p}} .$$
*Lean:* [`Coefficient`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L26-L30), [`Coefficient.density`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L48-L50), [`exponentialEntry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L37-L39), [`Format`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L52-L61), [`remBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L63-L68), [`TransferData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L73-L75), [`TransferData.Based`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L89-L114), [`integral_marked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Preservation.lean#L100-L118) (not used by the main theorem), [`Bid.G08`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L101-L103).

**Proposition II.1.8 (birth at the Wilson end).**
Let $\rho$ be a lawful polymer representation on $\Lambda_\ell$ with parameter $w>0$ (II.2) and threshold $\theta$. Let $o\in\Lambda_\ell$, and let $\Sigma$ be a sound section whose placed columns satisfy $\lvert\Phi_{e_i}(o;\cdot)\rvert\le B$ with $B\ge1$. Put $Y=Y_o$ and $f_{\max}=\max_if_i$, and assume the *fee condition*
$$\mathrm{fee}:=B\,\theta^{-f_{\max}}\,\mathrm{mass}(Y,1)\,\big(e^{\lvert Y\rvert w}-1\big)\le\sqrt w .$$
Assume a *shelf* of reserved forced addresses: for every pair of finite supports $\varnothing\ne I\subseteq X$ and every auxiliary index in $\mathbb N$, there is a distinct forced address with support $X$, flagged inventory $I$, identically zero activity, and an auxiliary eligibility test satisfied at every configuration. For every fixed reservation index there is a coefficient $E(v)$ with the following properties:

- $x=v$ and $g\equiv0$;
- the forced part is the large-field *supplement* $\Phi_{S_{1/\theta}v}(o;\cdot)-v_0-\mathbf 1_{\mathrm{Hy}_\theta(Y)}\Phi_{S_{1/\theta}v^\circ}(o;\cdot)$, spliced into the reserved addresses;
- the components $x,g,h$ depend linearly on $v$, the supports are independent of $v$, and $E(v)$ has Format at $o$ and remainder bound $(\sqrt w,\lVert v^\circ\rVert_1)$;
- for every configuration $U$,
$$\mathcal D(E(v))(U)=\rho(U)\,\Phi_{S_{1/\theta}v}(o;U).$$

*Status:* theorem. The main chain uses [`Guard.summon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_GUARDED_LAYOUT/Guards.lean#L287-L326) at level $N$, with $w=w_N$. It requires a selected history and reserved addresses whose auxiliary tests need hold only when the support has exactly the prescribed flagged inventory, together with a separate zero-activity assumption. The section bound and fee condition are unchanged. The address conditions are [`Keeper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_GUARDED_LAYOUT/Guards.lean#L63-L68) and [`Keeper.blank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_GUARDED_LAYOUT/Guards.lean#L89). *Lean:* [`launched`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L116-L161), [`born`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L105-L106), [`supplement`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L24-L25), [`fullCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L67), [`fee`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L108-L109).

**Proposition II.1.9 (numerical conditions for the sections and transfers).**

(a) *Plans.* Let $P$ be a stage profile, $C_j\ge1$, and let $(\mathsf K_j)$ be nondecreasing with $\mathsf K_j\ge1$. For the fixed degree-$d$ frame put $\Omega_d=1+2\sum_{s,i}\lVert s\cdot e_i\rVert_1$, where $s$ ranges over signed permutations and $i$ over frame indices; the factor $2$ accounts for conjugation. This constant bounds the finite symmetry average. Assume $P$ satisfies the following, writing $\bar\kappa_j$ for the constant of stage $j$:

- $j\le$ order and $j\le$ power of stage $j$;
- $\pi(\max(\mathrm{order}_j,\mathrm{power}_j))\le\bar\kappa_j$;
- $(C_j+1)\,\Omega_d\le\mathsf K_j$ for $d\le j$;
- $64\mathsf K_{j+1}^2\le\bar\kappa_j$.

Then there are lower bounds $n_j$ for the block factors and coupling thresholds $\beta_j^*$ such that every admissible level system with profile $P$, block factors at least $n_j$ at stage $j$, and $\hat\beta_m\ge\beta_{J(m+1)}^*$ satisfies the following numerical conditions:

- $J(m)\le$ order and power at level $m$;
- $\pi(\max(\mathrm{order},\mathrm{power}))\le\kappa_m$;
- the latch of (b) for all $d\le J(m)$;
- room: $64\mathsf K^2_{J(m)+1}\le\kappa_m$;
- bank: $10^5\mathsf K_{j+1}^6(1+\kappa_{m+1})^2\le L_m^{1/8}$, with $j=J(m+1)$;
- for every $d\le J(m)$, with $j=J(m+1)$ and $\eta=L_m^{-2/5}$,
$$\eta(1+\kappa_{m+1})\Omega_d\le L_m^{-3/8},\qquad (C_j+\eta\kappa_{m+1})\Omega_d\le\mathsf K_j.$$

If a profile already satisfies $j\le\mathrm{order}_j,\mathrm{power}_j$, then, for any fixed $C_j\ge1$, one can choose $(\mathsf K_j)$ and enlarge only its constants $\bar\kappa_j$ to obtain the four stage conditions above.

(b) *Latch.* At level $m$, $\mathrm{Latch}(d,m)$ holds if, for every $p$, $\ell_{m,p}$ is at least the minimal side of $\Sigma_d$, and the fee condition of Prop. II.1.8 holds with $B=c_d$, $\theta=\theta_m$, $w=w_m$, at every placement. For each $d$ and support exponent, $\mathrm{Latch}(d,m)$ holds once $\hat\beta_m$ is large enough.

(c) *Section clauses of Makes.* If the numerical conditions of (a) hold on a history and $d+3\le J(r(d))$ for all $d$, then the primary sections satisfy clauses (ii)–(v) of $\mathrm{Makes}$.

*Status:* theorems. The two per-step inequalities are [`Buys`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Replay.lean#L47-L51); the finite symmetry constant is [`orbitCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Motion.lean#L121). *Lean:* [`Doors.Plans`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L57-L62), [`Doors.Budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L65-L72), [`Doors.afford`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L76-L102), [`alone`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L108-L133), [`Latch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L120-L123), [`latch_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L126-L157), [`entrances`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L162-L177), [`Issue.refer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Issue.lean#L38-L45), [`Foundations.refLi`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L182-L193), [`Bid.RefLi`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L141-L145).

**Proposition II.1.10 (chessboard comparison at all offsets).**
Let $\mathcal C_k(x)$ denote the tiling of $\Lambda_{N,p}$ by link cells of odd side $D_{k,N}=a_k/a_N$, for $k\le N$, centred at $x$. Write $\mathrm{rt}_\beta$ for the chessboard root test of a tiling, and say that $F$ is *interior* to a cell if it is measurable in that cell with a uniform bound.

(a) *Centred symmetry.* Suppose $F$ is interior to the central cell of $\mathcal C_k(0)$. For every diagonal sign change $s$ and every $x$, the function $F\circ A_{s,x}^*$ is interior to the central cell of $\mathcal C_k(x)$ and has the same root test as $F$ in $\mathcal C_k(0)$. The same holds after complex conjugation. Diagonal sign changes do not permute the axes.

(b) *All offsets from one centred bound.* Let $F_o=F_0(\cdot+o)$, and assume:

- $F_0$ is interior to the central cell of $\mathcal C_k(0)$ with root test $\le A$;
- $T$ is a tiling whose side is a multiple of the level-$k$ cell side and which satisfies the reflection-positivity seam inequality at $\beta$.

Then for every $o$ in the inner margin of cell $0$ of $T$ (distance $\ge3\times$ the level-$k$ side from its boundary), $F_o$ is interior to that cell and $\mathrm{rt}_\beta^T(F_o)\le A$.

(c) *Combinations.* Assume $\mathrm{Makes}$, fix $\gamma>0$ and an extraction order $f$, and let $Q_i(N,p,o)$ be finitely many families. Each family is eventually a literal translate of its value at $0$. For each $i$ and every $w$, assume there is $k\ge w$ such that eventually $k\le N$ and $Q_i(N,p,0)$ is interior to the central cell of $\mathcal C_k(0)$, with root test at most $e^{-\gamma s_N}$. Suppose also that, for every $\varepsilon>0$, eventually $\lvert r_i(N,p)\rvert\le e^{\varepsilon s_N}$. The coefficients are independent of $o$.

“Eventually” along $f$ means: for all sufficiently large volume indices, then for all sufficiently large mesh indices; this is the fused order of IV.1. Put $Q=\sum_i r_iQ_i$ and $y(N,p)=e^{-\gamma s_N/2}$. Then $y\to0$ along this order and $Q$ is *close*: for every $j,m\in\mathbb N$ there is $k\ge m$ such that eventually $k\le N$ and, for every link tiling $T$ of level-$k$ side and every $o\in T.\mathrm{margin}(0,\lfloor T.\mathrm{side}/(8(j+1))\rfloor)$, $Q(N,p,o)$ is interior to cell $0$ and its root test is at most $y(N,p)$.

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
- III.10: G08 turns per-step estimates into based families; III.11 supplies the per-step estimates used in VIII.1. Both use the formats fixed here.
- III.16 (toolkit): block Taylor polynomials and jets of compositions, the Faà di Bruno formula, and the Maxwell exterior calculus (curl, recovery of a radial potential from its curvature). The radial-gauge identity identifies a homogeneous potential with its closed curvature jet.
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

- In Prop. II.1.6 the record and $\mathrm{Makes}$ are hypotheses of (c). They are discharged for the final family in VIII.1, using Prop. II.1.9(c) and G08.
- In Prop. II.1.8 lawfulness and the fee condition are hypotheses. The fee condition at level $N$ is the latch of Prop. II.1.9(b). Coupling thresholds fixed before the block sizes ensure it (III.2), since $w_m$ decays faster than every inverse power of $\hat\beta_m$.
- The bounds $\pi(D)$ and $c_d$ depend on $G$ and the fixed frames and sections, including the finite slot family chosen in G03. They are fixed before the block factors; the stage constants must satisfy $\pi(\max(\mathrm{order}_j,\mathrm{power}_j))\le\bar\kappa_j$.

## 3. Strategy

Labels are invariant polynomials in radial-gauge Taylor coefficients. Test holonomies $U_{J,h}$ compare them with functions of lattice links by matching derivatives in $h$ through order $d$. Finitely many transported plaquette curvatures give an analytic map of the truncated jet whose derivative is injective. An equivariant left inverse, followed by Taylor expansion, produces slot polynomials representing every label. Averaging over signed permutations gives covariance. Every slot and each of its admissible left derivatives costs one threshold factor, so a column of factor degree $f$ has norm $O(\theta^f)$. Conversely, Taylor expansion of a regular lattice function gives a unique read label. Testing on jets of amplitude $\theta$ bounds its scaled coordinates uniformly in the lattice side and support.

The equation sections use Haar integration by parts in one link. For $\ell\ge2$, $\beta\ne0$ and a bounded measurable multiplier independent of that link, the expectation of the corresponding Wilson force is zero. Transported forces are linear combinations of slots; their leading continuum symbols are the free Maxwell divergence. Every equation polynomial is a sum of products of a linear Maxwell equation functional and other linear jet functionals. Represent the first factor by a force and the remaining factors by slot polynomials avoiding its link. Each product is orthogonal to remote spectators and reads the prescribed generator modulo higher grade. A unitriangular change of labels absorbs those higher terms. The resulting equation section describes vanishing at separated lattice sites; its transfer to null labels of the limit requires the later comparison arguments.

At the Wilson end the observable is inserted to first order in a parameter $\lambda$ with $\lambda^2=0$. The density coefficient consists of the vacuum density times a masked local section and regular remainders, together with a gas in which one forced polymer is marked. Splicing the section's large-field complement into reserved forced addresses gives the exact bare-end identity. This uses no division by the vacuum density. Along the RG history the running coordinates describe mixing of local observables; their values at the reference level define $\tau$, hence the renormalization map $S_{1/\theta_N}\tau^{-1}$. This unit fixes the transfer specification and proves the birth identity; III.10–III.11 supply the per-step estimates.

## 4. Steps

### 4.1 Label spaces and frames

**Lemma 4.1 (finiteness and evaluation).** $V_d$ is finite-dimensional, and a polynomial in the jet coordinates that vanishes on all real jets is zero.
*Sketch:* every coordinate has weight $\ge2$. So a monomial of weight $\le d$ has exponents $\le d$ and involves only $\mathrm{Tay}_j$ with $j\le d-2$, and there are finitely many such monomials. A polynomial vanishing on $\mathbb R^n\subset\mathbb C^n$ is zero, because each variable ranges over an infinite set.
*Lean:* [`cap_finite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L63-L94), [`eval_ext`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L38-L49).

**Lemma 4.2 (real graded frames).** Every linearly independent set of real pure-grade labels in $V_d$ containing $1$ extends to a frame. Consequently frames exist, and there is a coherent sequence of them.
*Sketch:*

- $V_d$ is spanned by the elements $q+\bar q$ and $i(q-\bar q)$, where $q$ runs over the graded components; these elements are real and of pure grade.
- Extend the given independent set inside this spanning set, and move $1$ to index $0$.
- Recursion in $d$ gives coherence, since $V_d\subset V_{d+1}$ preserves reality and grades.
- $f_i>0$ for $i\neq0$, since the only nonzero zero-factor grade is $\mathbb C1$.

*Lean:* [`pure_real_span`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L16-L33), [`extend_subset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L59-L81), [`frame_exists`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L83-L86), [`extend_frame`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L88-L100), [`frames`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L107-L111).

### 4.2 Test holonomies and the slot map (G01–G04)

**Lemma 4.3 (transport ODE; covariance, G01).**

- Existence and uniqueness hold as stated in Prop. II.1.2(a).
- Scaling: $U_{J,h}=U_{\mathrm{sc}_hJ,1}$, with only the components $J_j$, $j\le d-2$, entering.
- Gauge covariance: the links of $\mathrm{Ad}(g)J$ are the constant gauge transform by $g$ of the links of $J$.
- Hypercubic covariance: $s^*U^{(d)}_{J,h}=U^{(d)}_{s^{-1}J,h}$, where $s^{-1}J$ is the jet rotated by $s^{-1}\in O(4)$.
- In particular each slot of $\mathrm{Ad}(g)J$ is $\mathrm{Ad}(g)$ applied to the slot of $J$.

*Sketch:*

- Uniqueness: if $u,v$ solve the same equation, then $uv^*$ has zero derivative.
- Existence: take a local solution in an exponential chart, left-translate it, and glue the pieces.
- Scaling and covariance: the transformed function solves the transformed equation, so uniqueness concludes; a reflected axis reverses the parameter of the ODE.

*Lean:* [`SolvesLink.unique`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L42-L52), [`Hol.exists_ode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/ODE.lean#L162-L168), [`Bid.G01`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L23), [`Work.G01.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G01.lean#L157-L164), [`links_colored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G01.lean#L138-L146).

**Lemma 4.4 (analytic germ, G02).**

(a) Let $x$ range over a finite-dimensional real vector space, let $A_x(t)$ depend linearly on $x$ and continuously on $t$, and let $u_x$ solve $\dot u=uA_x$ with $u_x(0)=1$. Then $x\mapsto u_x(1)$ is analytic at $0$, equals $1$ there, and its derivative along every ray is $\int_0^1A_x$.

(b) Consequently each link, each walk and each slot is an analytic function of the truncated jet near $0$. The derivative of the slot $(\omega,P)$ at $0$ is the circulation of the edge-integrated potential around $P$. The transport along $\omega$ does not contribute at linear order.
*Sketch:* write the ODE as $F=1+T(x)F$ on $C([0,1])$, where $T(x)$ is the Volterra operator, linear in $x$, with $\lVert T(x)\rVert<1$ near $0$. Then $F=(1-T(x))^{-1}1$, which is analytic since inversion is analytic near $1$ in a Banach algebra. Differentiate the fixed-point equation at $0$. The bounds are link by link; no analytic radius uniform over an infinite stencil is claimed.
*Lean:* [`endpointGerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G02.lean#L89-L130), [`linkGerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G02.lean#L140-L177), [`walkGerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G02.lean#L191-L225), [`slotGerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G02.lean#L230-L273), [`Drops.Peg`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L88-L91).

**Lemma 4.5 (finitely many slots detect the jet, G03).** For each $d$ there are finitely many slots whose linearizations have no common kernel on the truncated jet space $\bigoplus_{j\le d-2}\mathrm{Tay}_j$.
*Sketch:*

- *All slots detect the jet.* Suppose all linearized slots vanish on $A$. Write $N_l(x,t)$ for the difference of the two iterated averages of partial derivatives over a square of side $t$ based at $x$. The unit-square circulation is $\sum_lN_l(x,1)$. Homogeneity gives $N_l(tx,t)=t^lN_l(x,1)$, hence $\sum_{l\le k}t^{k-l}N_l(tx,t)=0$ when $A_k$ is the top component and $x\in\mathbb Z^4$.
- *Mesh to zero.* Letting $t\to0$ with $tx\to y$ gives $\mathrm{curl}(A_k)(y)=0$ for the top component. In radial gauge the potential is recovered from its curvature, so $A_k=0$. Descend in $k$.
- *Finitely many suffice.* Among finite families choose one whose common kernel has minimal dimension. Adding any slot cannot lower the dimension, so this kernel lies in the common kernel of all slots, which is $0$.

The choice is non-constructive.
*Lean:* [`Bid.G03`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L30), [`top_term`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G03.lean#L164-L185), [`zero_of_zero_partials`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G03.lean#L136-L149), [`Work.G03.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G03.lean#L212-L224).

**Lemma 4.6 (equivariant left inverse, G04).** The slot map $\mathfrak S$ (finitely many slots) is analytic at $0$. There is a linear $C$ with $C\circ D\mathfrak S(0)=\mathrm{id}$ and $C\circ\mathrm{Ad}_g=\mathrm{Ad}_g\circ C$.
*Sketch:* $D\mathfrak S(0)$ is injective (Lemma 4.5) and equivariant (it is the derivative of an equivariant map). Its range and orthogonal complement are $\mathrm{Ad}$-invariant, so the inverse composed with the orthogonal projection onto the range is equivariant. No Haar averaging is needed.
*Lean:* [`Bid.G04`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L37), [`Work.G04.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G04.lean#L121-L139).

**Lemma 4.7 (local analytic equivariant inverse).** There is $f$, analytic at $0$, with $f(0)=0$, $f\circ\mathfrak S=\mathrm{id}$ near $0$, and $f\circ\mathrm{Ad}_g=\mathrm{Ad}_g\circ f$ near $0$.
*Sketch:* apply the analytic inverse function theorem to $C\circ\mathfrak S$, whose derivative at $0$ is the identity, and put $f=(C\circ\mathfrak S)^{-1}\circ C$. Equivariance follows from that of $C$ and $\mathfrak S$, together with local injectivity.
*Lean:* [`Drops.insight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L145-L153), [`Vision`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L104-L105).

**Lemma 4.8 (Haar measure in exponential coordinates).** There are $r,c>0$ and a measurable function $J$ such that $\exp$ is injective on $B_r(0)\subset\mathfrak g$, $J$ is analytic and positive there, $J(0)=1$, and $\exp_*(cJ(A)\mathbf1_{B_r(0)}\,dA)$ is normalized Haar measure restricted to $\exp(B_r(0))$, an open set.
*Sketch:* take $J$ to be the determinant of the derivative of $B\mapsto\log(e^{-A}e^B)$ at $B=A$. It is analytic and equals $1$ at $A=0$, so it is positive on a small ball. The chain rule gives its transformation under local left translation. Change of variables then proves the corresponding local measure identity; averaging over the compact group identifies the scalar $c$ with probability Haar normalization.
*Lean:* [`LocalH.actual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/LocalH/Haar.lean#L97-L146), [`Foundations.chart_ok`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L84). This supplies the measure normalization in the stationary-point analysis (III.6) and the step estimates.

### 4.3 Primary sections (G05–G07)

**Lemma 4.9 (invariant slot polynomials, G05).** Let $f$ be as in Lemma 4.7, let $T_df$ be its block Taylor polynomial of order $d$ at $0$, and put $P_i:=b_i\circ T_df$. Write $\boldsymbol\sigma(U)$ for the chosen finite tuple of slot values. Then:

- $P_0=1$, each $P_i$ is $\mathrm{Ad}$-invariant and real-valued on real slot values, and each monomial of $P_i$ has degree $\ge f_i$;
- $P_i(\boldsymbol\sigma(U_{J,h}))$ and $b_i(\mathrm{sc}_hJ)$ have the same $d$-jet in $h$.

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

- Write $\Psi_c(U)=\sum_i c_iP_i(\boldsymbol\sigma(U))$ before averaging, and let $\mathcal H$ be the signed-permutation group. Set $\Phi_c(U)=|\mathcal H|^{-1}\sum_{s\in\mathcal H}\Psi_{s^{-1}\cdot c}(s^*U)$. A transformed slot is a slot multiplied by a sign. The coefficient action preserves grades, so the average remains a slot polynomial with the same lower bound on degrees.
- Gauge invariance: slots transform by $\mathrm{Ad}$ of the gauge transformation at the base point, and the $P_i$ are $\mathrm{Ad}$-invariant.
- The projection property survives because jets and labels transform compatibly.
- Each slot component is a polynomial in link entries and their conjugates, since $U^{-1}=U^*$.

*Lean:* [`Work.G06.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06.lean#L43-L60), [`enclose`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06.lean#L20-L28), [`realize`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06.lean#L30-L41), [`entryPoly_slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06/Formula.lean#L137-L155).

**Lemma 4.11 (cost, G07).** For all $(k,P)$ there is $A$ such that the section has the cost property of Prop. II.1.3, item 3.
*Sketch:*

- *One slot costs $t$.* On $\mathrm{Hy}_t(S)$ a slot has norm $O(t)$. Each left derivative in an admissible direction $A$, with $\lvert A_e\rvert\le t(1+\mathrm{dist})^P$, is also $O(t)$, with constants depending on the stencil.
- *Algebra.* These bounds are stable under sums and products, with exponents of $t$ adding, and $t\le1$ lowers exponents.
- *Columns.* Every monomial of column $i$ has $\ge f_i$ slot factors, which gives $c_it^{f_i}$; take $A=\sum_ic_i$.

$A$ is not uniform in $d,k,P$.
*Lean:* [`Work.G07.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07.lean#L79-L102), [`paid_lumin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07.lean#L64-L77), [`paid_slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07/Stencil.lean#L180-L199), [`raw_slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07/Stencil.lean#L154-L163).

**Lemma 4.12 (assembly = Prop. II.1.3).** Lemmas 4.3–4.11 combine into sections for all $d$.

- The uniform price is $\pi(D)=1+\sum_{d,k,P\le D}\max(0,A_{d,k,P})$, which is nondecreasing in $D$.
- The value bound $c_d$ holds because each column is a continuous function of finitely many variables in the compact group $G$.

*Lean:* [`Bid.teaching`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L76-L86), [`Integrated.source_sections`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L216-L219), [`priced`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L133-L142), [`full_value_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L147-L163).

### 4.4 Readout

**Lemma 4.13 (logarithmic chart of test holonomies).** Fix $d$, a torus, a site $o$ and a jet $J$. Near $h=0$, the torus test configuration $U^{(d),o}_{J,h}$ is the exponential of an analytic function of $h$ vanishing at $0$. Thus $h\mapsto f(U^{(d),o}_{J,h})$ is $C^d$ at $0$ whenever $A\mapsto f(e^A)$ is $C^d$ at $A=0$.
*Sketch:* apply the local group logarithm to each test link, use Lemma 4.4 and the polynomial scaling of the jet, and intersect the finitely many neighbourhoods on the torus. The logarithm inverts the exponential there, so the assertion follows by composition.
*Lean:* [`testLog_diff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L110-L114), [`increment_testLog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L119-L125).

**Lemma 4.14 (existence and uniqueness of the read label = Prop. II.1.4(a)).** Fix $d$, a torus and $o$. If $f$ is gauge invariant and $A\mapsto f(e^A)$ is $C^d$ at $A=0$, there is a unique $p\in V_d$ such that, for every $J$, $f(U^{(d),o}_{J,h})$ and $p(\mathrm{sc}_hJ)$ have equal $d$-jets at $h=0$.
*Sketch:*

- *Polynomial in the jet.* Take the block Taylor polynomial of order $d$ at $0$ of the map $X\mapsto f(\text{test links of }X)$ on the truncated jet space. It is a polynomial in the jet coordinates; truncate it to weight $\le d$.
- *Jets agree.* Since $\mathrm{trunc}(\mathrm{sc}_hJ)$ has components $h^{j+2}J_j$, truncation does not change $h$-derivatives of order $\le d$.
- *Invariance.* Gauge invariance of $f$ and covariance of the test links (Lemma 4.3) make each weight component of $p$ invariant.
- *Uniqueness.* The $h$-derivatives at $0$ determine the weight components, and then Lemma 4.1 applies.

For regular $f$ with order $\ge d$ the hypothesis holds at the identity configuration, which is healthy; wrapping supports use the constant convention.
*Lean:* [`read_projection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L218-L233), [`exists_read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L238-L247).

**Lemma 4.15 (uniform bounds along scaled test jets).**

(a) Fix $d$. For each jet $J$ and $k\in\mathbb N$ there is $C>0$ such that, for all torus sides, sites $o$, positive links $e$ and $\theta\in[0,1]$,
$$\left\lvert\left.\partial_h^k\log U^{(d),o}_{\theta J,h}(e)\right|_{h=0}\right\rvert\le C\,\theta\,(1+\mathrm{dist}(e_-,o))^{\max(k-1,0)}.$$

(b) For $k\le d$ there is $C_{d,k,J}\ge0$ such that $\lvert\partial_h^kf(U^{(d),o}_{t_bJ,h})\vert_{h=0}\rvert\le C_{d,k,J}c$ whenever $d\le\min(k_b,P_b)$ and $f$ is $b$-regular with sup bound $c$. The bound is uniform in side, placement, support and $b$.
*Sketch:*

- (a): set $r=(1+\mathrm{dist}(e_-,o))^{-1}$. The rescaled initial position lies in a fixed compact ball. Express the link at parameter $hr$ by a polynomial-in-time ODE profile of amplitude $\theta r$. Its logarithmic endpoint is analytic near the zero profile. The $k$-th $h$-derivative at $0$ varies smoothly over the compact set of normalized positions, lengths and amplitudes, and vanishes at amplitude $0$. A uniform Lipschitz bound in the amplitude gives $C\theta r$. Undoing the rescaling gives $C\theta r^{1-k}$ for $k\ge1$; the order-zero logarithm is $0$.
- (b): apply Faà di Bruno to $(f\circ\exp)\circ\log U$ at the identity. Its terms contain symmetric Fréchet derivatives of $A\mapsto f(e^A)$, evaluated on the logarithmic derivatives from (a). Pull each tensor back to the span of these finitely many directions, and bound it by its diagonal values through polarization. Repeated left derivatives in one direction equal derivatives along the corresponding exponential ray. This avoids a factor depending on the number of lattice links; it does not assume that ordered left derivatives commute.

*Lean:* [`testLog_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/LinkBounds.lean#L229-L273), [`test_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L194-L223), [`mixed_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L123-L184).

**Lemma 4.16 (readout estimate = Prop. II.1.4(b)).**
*Sketch:*

- *Functionals.* For a jet $J$ and $k\le d$ let $\lambda_{J,k}(c):=\partial_h^k\,p_c(\mathrm{sc}_hJ)\vert_{h=0}$.
- *Scaling.* Since $p_{S_\theta c}(K)=p_c(\theta K)$, one has $\lambda_{J,k}(S_\theta\,\mathrm{coord}(p))=\partial^k_hp(\mathrm{sc}_h(\theta J))\vert_{h=0}=\partial_h^kf(U^{(d),o}_{\theta J,h})\vert_{h=0}$.
- *Bound.* By Lemma 4.15(b) this is bounded by $C_{J,k}c$.
- *Norm equivalence.* The $\lambda_{J,k}$ separate points (Lemma 4.14), and on a finite-dimensional space a separating family of functionals controls the norm.
- *Wrapping case.* $p=f(1)\cdot1$, and $\lvert f(1)\rvert\le c$ because the identity configuration is healthy.

The constant depends on the holonomy datum and the frame only.
*Lean:* [`coeff_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L234-L265), [`budget_probes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L34-L67), [`read_frame_scaled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L158-L168), [`price_of_readout`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L271-L290).

**Lemma 4.17 (placed sections read their labels = Prop. II.1.4(c)).** Let $\Sigma$ be sound. If $20(\lvert x_\mu\rvert+1)\le\ell$ on the stencil, the footprint does not wrap around $o$, the periodic lift of the stencil is injective, and the placed function along the test holonomies is the cover function along $U_{J,h}$. Soundness (projection property) then concludes.
*Lean:* [`nonwrapping_placement`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L240-L251), [`placed_reads`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L253-L267).

### 4.5 Equation sections

**Lemma 4.18 (lattice Schwinger–Dyson identity).** Assume $\ell\ge2$.
*Gradient.* For a link $e$ and $A\in\mathfrak g$, $\tfrac{d}{dt}S_W(e^{tA}U_e)\vert_{0}=\langle A,\nabla_eS_W(U)\rangle$. With $F_{ab}(x)$ based at $x$, put $\Delta_cF_{ab}(x)=F_{ab}(x)-\mathrm{Ad}(U_{x-e_c,c}^{-1})F_{ab}(x-e_c)$. Then
$$\nabla_{(x,\nu)}S_W=\sum_{\nu<b}\Delta_bF_{\nu b}(x)-\sum_{a<\nu}\Delta_aF_{a\nu}(x).$$
This local formula also defines the force on cover configurations.
*Integration by parts.* For continuous $W,W'$ with $W'$ the derivative of $W$ along $e^{tA}U_e$, and bounded measurable $S$ invariant under that motion,
$$\big\langle(W'-\beta\langle A,\nabla_eS_W\rangle W)S\big\rangle_\beta=0 .$$
For $\beta\neq0$ and $W=1$ this gives $\langle\langle A,\nabla_eS_W\rangle S\rangle_\beta=0$.
*Sketch:* the motion $U_e\mapsto e^{tA}U_e$ preserves the product Haar measure, and the Boltzmann factor is differentiated under the integral.
*Lean:* [`field_deriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L232-L237), [`turn_preserving`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L96-L101), [`ibp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L321-L340), [`equation_silent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L342-L348).

**Lemma 4.19 (transported forces are micro).** Let $b$ be a positive cover link, let $\omega$ be a walk from $0$ avoiding $b$, and let $g$ be continuous. Assume there is $M$ such that, on every torus of side $\ell\ge M$ and at every placement $o$, the placed $g$ is invariant under left increments of the placed link $b$. Then $U\mapsto\langle X,\mathrm{Ad}(U_\omega)\nabla_bS_W(U)\rangle\,g(U)$ is micro, for every $X\in\mathfrak g$.
*Sketch:*

- Write $\langle X,\mathrm{Ad}(U_\omega)Y\rangle=\sum_a\langle\mathrm{Ad}(U_\omega)^{-1}X,E_a\rangle\langle E_a,Y\rangle$ in an orthonormal basis.
- Once the torus is large enough, the placed link $b$ lies within a fixed radius of $o$.
- Then every factor other than $\langle E_a,\nabla_bS_W\rangle$ (namely the transport, $g$, and a spectator supported beyond that radius) is invariant under moving $U_b$. Apply Lemma 4.18.

The periodic independence hypothesis holds, in particular, if $g$ depends on finitely many cover links, all distinct from $b$. No continuity or gauge invariance of the spectator is needed, and $\beta$ may be negative.
*Lean:* [`micro_force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Avoid.lean#L170-L218), [`force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Avoid.lean#L149-L150).

**Lemma 4.20 (forces span the equation functionals).**

(a) Let $J$ be truncated through $J_j$, with $j\ge1$, and write $\mathfrak F_\nu(J;x)$ for the linearization at the zero jet of the transported force at $(x,\nu)$. It is independent of the transport path. For every $y\in\mathbb R^4$ and $x_t\in\mathbb Z^4$ with $tx_t\to y$ as $t\downarrow0$,
$$\lim_{t\downarrow0}t^{j-1}\mathfrak F_\nu(J;x_t)=-\sum_a\partial_a(\mathrm{curl}\,J_j)_{a\nu}(y).$$
For $j=0$ the linearized force vanishes. At finite mesh the force is a transverse difference of plaquette averages.

(b) For jets truncated through weight $j+2$, if every linearized transported force on a walk ending at the initial vertex of its link and avoiding that link vanishes, then the component $J_j$ lies in $\mathrm{Sh}_j$.

(c) Dually, for every real linear functional $Q$ on $\mathrm{Tay}_j$ vanishing on $\mathrm{Sh}_j$, the functional $Q\circ\mathrm{proj}_{\mathrm{top}}$ is a finite combination of linearized transported forces.
*Sketch:* express each transverse difference as an additional integral of a derivative of the plaquette average. Homogeneity and continuity of these averages give (a). If every force vanishes, every lattice point can be reached by a walk avoiding the varied link; (a) then makes the top curvature divergence-free. Its Bianchi identity follows because it is a curl, proving (b). In finite dimensions, the annihilator of the common force kernel is the span of the force functionals, giving (c).
*Lean:* [`continuum_current`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Current.lean#L208-L251), [`top_shell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Current.lean#L253-L280), [`force_kernel_last`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Current.lean#L286-L297), [`force_span`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Span.lean#L32-L41).

**Lemma 4.21 (generators of the equation ideal).** $p\in\mathcal E_d$ if and only if $p\circ\Pi=0$, where $\Pi$ is the projection of each $\mathrm{Tay}_j$ onto $\mathrm{Sh}_j$. Every $p\in\mathcal E_d$ of pure grade $m$ is a combination of products $\ell\cdot M$, of total grade $m$, of a linear functional $\ell$ on $\mathrm{Tay}_j$ vanishing on $\mathrm{Sh}_j$ and a product $M$ of real linear jet functionals, with complex scalar coefficients. Grade components of elements of $\mathcal E_d$ lie in $\mathcal E_d$, and $\mathcal E_d$ contains no nonzero constant.
*Sketch:* write $p=p-p\circ\Pi$. For a monomial $M=\prod_r\ell_r$, the difference $M-M\circ\Pi$ telescopes into $\sum_r(\ell_r-\ell_r\circ\Pi)\cdot(\cdots)$, and each $\ell_r-\ell_r\circ\Pi$ vanishes on $\mathrm{Sh}$.
*Lean:* [`erase_shell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Ideal.lean#L58-L68), [`multiplied`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Ideal.lean#L44-L45), [`generation_ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Ideal.lean#L93-L112).

**Lemma 4.22 (micro lifts at pure grade).** For $p\in\mathcal E_d$ of grade $m$ (with $m_1\le d$) there are a gauge-invariant lattice function $f$ and a label $q$ with:

- $f$ represents $q$ to order $d$;
- $q-p$ has only components of strictly higher grade;
- $f$ is a slot polynomial with $\ge m_2$ slot factors;
- $f$ is micro.

*Sketch:*

- *Generators.* For a generator $\ell\cdot M$, write $\ell\circ\mathrm{proj}_{\mathrm{top}}$ as a combination of linearized forces (Lemma 4.20).
- *Lift of a force.* A transported lattice force component is a degree-one slot polynomial. Its readout is the full linearized force plus terms with at least two jet factors.
- *Lift of the monomial.* Slots avoiding one specified link still detect every truncated jet: excluding that link removes only finitely many plaquette positions, which does not change the mesh-to-zero argument away from $0$; continuity gives the value at $0$. Thus every factor of $M$ can be represented, through all retained weights, by a slot polynomial independent of that link after periodic placement.
- *Product.* The force combination matches $\ell$ through its own weight $j+2$; extending it to cutoff $d$ adds only higher-weight one-factor terms. Nonlinear readout errors have more factors. Multiplication by the lifted $M$ therefore gives $\ell M$ modulo higher grade. The product is micro by Lemma 4.19. Combine linearly.
- *Gauge invariance.* Average over constant gauge transformations with Haar measure. The orbit spans a finite-dimensional space, so the average stays a slot polynomial and the relation above persists.

*Lean:* [`stanza`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Rank.lean#L100-L127), [`coherent_verse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Rank.lean#L129-L153), [`mounted_read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Rank.lean#L157-L166), [`averaged`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Gauge.lean#L110-L143), [`positioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Gauge.lean#L147-L163), [`Cone`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Rank.lean#L78-L83).

**Lemma 4.23 (a covariant lifting map).** There is a linear map $F:V_d\to V_d\times\{\text{lattice functions}\}$, with $F(p)=(q,f)$, $F(1)=(1,1)$, such that for $p$ of grade $m$:

- $f$ is gauge invariant and represents $q$;
- $q-p$ has only components of higher grade;
- $f$ has $\ge m_2$ slot factors;
- $f$ is micro whenever $p\in\mathcal E_d$.

$F$ commutes with signed permutations and conjugation.
*Sketch:*

- *One grade.* Choose a linear projection $P_m:V_d\to V_d^{(m)}\cap\mathcal E_d$. Apply the micro lift to $P_mp$, and the primary-section lift $q\mapsto(q,\Phi_{\mathrm{coord}(q)})$ to $p-P_mp$; call the sum $X_m(p)$. On pure grade $m$ both summands have the required grade and slot bounds. On $V_d^{(m)}\cap\mathcal E_d$ the second summand vanishes.
- *All grades.* Sum $X_m\circ(\text{grade-}m\text{ part})$ over $m$.
- *Symmetrization.* Average over the signed-permutation action, and with the conjugate. These operations preserve all properties above.

*Lean:* [`shelf`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L99-L102), [`Offered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L33-L38), [`Payment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L65-L67), [`Campaign`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L69-L71), [`unsym`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L155-L168), [`impression`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/HGroup.lean#L106-L125).

**Lemma 4.24 (weave and section = Prop. II.1.5).**
*Weave.* Let $R$ be the first component of $F$. It is unitriangular for the order of grades, hence an automorphism.
*Section.* The inverse of $R$ also does not lower grades, so $R^{-1}b_i$ has no component preceding the grade of $b_i$. Hence the map $b_i\mapsto f(R^{-1}b_i)$ sends basis vectors to slot polynomials with $\ge f_i$ factors. Enclose all their stencils in one box and rewrite them as entry polynomials; this gives a section $\Sigma$ with $\Phi_{\mathrm{coord}(Rp)}=f(p)$.
*Properties.*

- Soundness: gauge invariance, unit, covariance and reality are inherited from $F$; the projection property holds because $f(p)$ represents $Rp$.
- Cost: G07 (Lemma 4.11).
- Microness: for $p\in\mathcal E_d$, $f(p)$ is the sum of the micro grade components of $F(p)$.

Choose these sections and automorphisms for every $d$.
*Lean:* [`twist`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Automorphism.lean#L72-L73), [`regrade_tri`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Automorphism.lean#L43-L50), [`paid_reel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Automorphism.lean#L100-L102), [`weaveBuild`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L60-L97), [`Portfolio.build`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L101-L105), [`commissioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Assembly.lean#L30-L33).

### 4.6 Source histories

**Lemma 4.25 (splicing a large-field multiplier).** Let $f$ be bounded and vanish on $\mathrm{Hy}_\theta(Y)$, let $\rho$ be lawful with forced-activity parameter $w$, and let a shelf as in Prop. II.1.8 be given. Then for every configuration $U$,
$$\sum_b\sum_i\mathrm{line}_i(f)(U)\,\mathbf 1_{\{i\in b,\ b\ \mathrm{adm}\}}\prod_{j\in b\setminus\{i\}}K_j(U)=f(U)\,\mathrm{gas}(U),$$
as an identity on all configurations. The *line* coefficients satisfy $\sum_i\mathrm{mass}(X_i,p_i)\le\sup\lvert f\rvert\cdot\mathrm{mass}(Y,1)(e^{\lvert Y\rvert w}-1)$, where $p_i\ge\sup_U\lvert\mathrm{line}_i(f)(U)\rvert$.
*Sketch:*

- On a large-field configuration every admissible polymer set meets $Y$, because the forced polymers cover the flagged sites.
- For each nonempty compatible set $c$ of old polymers meeting $Y$, reserve one address with support $Y\cup\bigcup_{i\in c}X_i$ and inventory $\bigcup_{i\in c}I_i$. Its coefficient is $f\prod_{i\in c}K_i$ when the flagged sites in that support equal the inventory, and $0$ otherwise.
- Replace all polymers meeting $Y$ by that address and leave the remaining polymers unchanged. This is a bijection between old admissible sets meeting $Y$ and admissible sets with a marked reserved address; its inverse expands the marked address. Paired summands agree. The forced-activity bounds give absolute convergence and the displayed weighted estimate, so the double sum can be reindexed.

*Lean:* [`Attach.paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Purchase.lean#L42-L78), [`Attach.routes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Clusters.lean#L198-L211), [`Attach.line_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Stock.lean#L120-L160).

**Lemma 4.26 (birth = Prop. II.1.8; summability; moment identity).**
*Birth.* The supplement vanishes on $\mathrm{Hy}_\theta(Y)$, because $\Phi_{e_0}=1$. It is gauge invariant, measurable, determined by the links and flags of $Y$, and bounded by $B\theta^{-f_{\max}}\lVert v^\circ\rVert_1$. Splice it by Lemma 4.25. The local part of the density is then the masked healthy part and the marked series is supplement × gas; their sum is $\rho\,\Phi_{S_{1/\theta}v}$. The forced budget is $\mathrm{fee}\cdot\lVert v^\circ\rVert_1\le\sqrt w\,\lVert v^\circ\rVert_1$.
*Guarded birth.* Use the same reserved addresses and coefficients after temporarily replacing the forced-polymer auxiliary tests by the always-true test. The vacuum activities, supports and inventories stay fixed, so the density and bounds are unchanged. Every nonzero inserted coefficient enforces the correct inventory and therefore satisfies the original auxiliary test. Restoring those tests gives the birth identity on the original selected history.

*Summability.* A remainder bound dominates the masked regular series by a summable sequence. If the representation is lawful, combine summable majorants for the activities and forced coefficients into $p_l\ge0$; the marked summand for a set $b$ is bounded by $\prod_{l\in b}2p_l$, summable over finite sets. Format supplies measurability of the coefficients. The lawful vacuum representation and the finite section then give bounded measurable density.
*Moment identity.* For a selected history, each transfer multiplies the total integral by $L_m^d$ (the push-forward preserves mass) and $a_m=L_ma_{m+1}$. This gives the identity $\int\mathcal D_m=a_m^dZ\langle O\rangle$ of Prop. II.1.7.
*Lean:* [`launched`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L116-L161), [`healthy_supplement`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L34-L39), [`supplement_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L69-L101), [`regular_series`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Preservation.lean#L17-L23), [`marked_series`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Preservation.lean#L25-L51), [`envelope`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Preservation.lean#L66-L84), [`integral_marked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Preservation.lean#L100-L118), [`onTop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Song.lean#L48-L90). *(proofs read)*

**Lemma 4.27 (numerical conditions = Prop. II.1.9).**
*Latch.* $\theta_m^{-1}\le\hat\beta_m$. Once the cover size, which grows like $(\log\hat\beta_m)^2$, exceeds the minimal side, $\mathrm{mass}(Y,1)\le e^{\text{support exponent}}$. Also $e^{\lvert Y\rvert w}-1\le\lvert Y\rvert we^{\lvert Y\rvert}$. Hence $\mathrm{fee}\le C\hat\beta_m^{f_{\max}}w_m$. Since $w_m=\exp(-\exp((\log\log\hat\beta_m)^2/5))$ decays faster than every inverse power, $\hat\beta^{n+1}w\le\sqrt w$ eventually. Thresholds for all $d\le J(m)$ are combined by summing finitely many thresholds.
*Numerical conditions.*

- bank: $L^{1/8}\to\infty$;
- per-step prices: $L^{-2/5}s\le1$ and $L^{-2/5}(1+s)T\le L^{-3/8}$ for large $L$;
- block lower bounds: maximum of finitely many requirements per stage;
- Enlarge each stage constant $\bar\kappa_j$ to $\max(\bar\kappa_j,\pi,64\mathsf K_{j+1}^2)$, with $\mathsf K_k=1+\sum_{j\le k}\sum_{d\le j}(C_j+1)\,\Omega_d$.

*Section clauses.* For $m\ge r(d)$, $d+1\le d+3\le J(m)\le\mathrm{order}_m$ (and likewise for the power). Latch gives the minimal side. $\pi(\max(\mathrm{order},\mathrm{power}))\le\kappa_N$ turns the bound of Prop. II.1.3, item 4, into clause (v) of $\mathrm{Makes}$.
*Merger delay.* For each section and support-exponent ceiling $u$ there is a threshold $q$ such that, whenever the level-$m$ support exponent is at most $u$ and $\hat\beta_m\ge q$, $(2B_m+1)^4\sqrt{w_m}\le1$, where $B_m=\lceil(\log\hat\beta_m)^2\rceil$ is the cover size. The same threshold ensures the bare-section bounds needed for local merging.
*Lean:* [`latch_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L126-L157), [`entrances`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L162-L177), [`afford`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L76-L102), [`alone`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L108-L133), [`refLi`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L182-L193), [`Issue.refer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Issue.lean#L38-L45), [`Push.Local.delay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING/Delay.lean#L56-L68).

**Lemma 4.28 (local-merger identities and differentiation).**

(a) Fix a valid forced-polymer family, a budget point, and a family $f_i$ of measurable gauge-invariant functions. Each $f_i$ is determined by links and flags on $X_i$ and vanishes on $\mathrm{Hy}_\theta(X_i)$. For every $i$ and nonempty compatible bundle $b$ of polymers meeting $X_i$, assume a distinct reserved address with support $X_i\cup\bigcup_{j\in b}X_j$, inventory $\bigcup_{j\in b}I_j$, and auxiliary test satisfied everywhere. Pack $f_i\prod_{j\in b}K_j$ into that address, multiplied by its eligibility indicator. If $\sum_i|f_i(U)|<\infty$, the marked-gas series converges at $U$ and equals $(\sum_i f_i(U))\mathrm{gas}(U)$. For a fixed admissible set, the marked summand is the sum over its possible marked addresses, with all other activities multiplied unchanged.

(b) Suppose $f$ is $C^k$ in exponential coordinates at $U$. Take a list of $r\le k$ pairs $(A_j,B_j)$ of left and right directions. Assume that at each link either all $A_j$ vanish or all $B_j$ vanish. The ordered mixed derivative is the sum of $2^r$ ordered left derivatives: for each pair choose its left direction or the direction $\mathrm{Ad}(U)B_j$; put the chosen left directions first in their original order, followed by the chosen right directions in reverse order.

(c) Let $W$ be an open set of configurations. Suppose every $f_i$ is $C^k$ in exponential coordinates at every $U\in W$. For every fixed ordered list $l$ of at most $k$ left directions, including the empty list, assume a summable majorant $d_i(l)$ for $|D_lf_i(U)|$, uniform in $U\in W$. Then $\sum_i f_i$ is $C^k$ in those coordinates throughout $W$, and $D_l\sum_i f_i=\sum_iD_lf_i$ there.

*Sketch:* in (a), replace the polymers meeting $X_i$ by their reserved marked address. Expanding that address is the inverse correspondence, and the activity bound and summability of $f_i(U)$ justify reindexing. In (b), move the right derivatives past the left derivatives on disjoint link sets; replacing right increments by left increments conjugates their directions by $U$ and reverses their order. For (c), work in one exponential chart contained in $W$. Bounds on finitely many basis derivatives give a summable bound on the Fréchet derivative; the chart change is uniformly bounded on a smaller neighbourhood. Differentiate the series there and induct on $k$, retaining the order of each left-derivative list.

*Lean:* [`gasMark_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING/Recovery.lean#L29-L31), [`Slots.recover`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING/Recovery.lean#L184-L191), [`mix_convert`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING/Mixed.lean#L179-L201), [`smooth_exchange`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/LOCAL_LOG_JETS/Series.lean#L232-L255). These identities enter the conversion of local functions into source coefficients and the differentiation of unmasked series in the per-step estimates.

### 4.7 Properties of the observables

**Lemma 4.29 (= Prop. II.1.6).**
*Sketch:*

- Translation is literal, since the placement commutes with translations.
- Linearity, continuity and locality are properties of $\Phi$ and of the linear maps $S_{1/\theta_N}$ and $\tau^{-1}$.
- Gauge invariance follows from soundness of the section.
- Reality and covariance use three facts: $\tau$ commutes with conjugation and with the signed-permutation action (Prop. II.1.7(6)); $S_t$ commutes with the $O(4)$ action because the grades are preserved; and the section is sound.
- Unit: Prop. II.1.7(6) gives $\tau(a_N^de_0)=x_r(a_N^de_0)=a_r^de_0$, hence $\tau^{-1}(a_r^de_0)=a_N^de_0$. Since $S_t e_0=e_0$ and $\Phi_{e_0}=1$, the observable is $a_N^{-d}a_N^d=1$.
- Normalization is $x_r=\tau$.

*Lean:* see Prop. II.1.6 and [`origin_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L121-L130).

### 4.8 Comparison estimates

**Lemma 4.30 (= Prop. II.1.10).**
*Sketch:*

- (a) Translations and diagonal axis reflections carry the centred tiling and all its cell copies to the corresponding centred tiling at the new anchor. Reindex the cells and use invariance of the Wilson measure. Conjugating every copy conjugates the expectation, leaving its absolute value unchanged.
- (b) At offsets $o$ that are centres of the finer centred grid, apply the chessboard inequality for $T$. Each cell copy of $F_o$ is a reflected and translated copy of $F_0$ planted in a distinct finer cell, so the product of roots is $\le A^{\sharp \text{cells}}$ by (a).
- (b), general offsets: bracket each coordinate between aligned corners, retaining the $2\times$-side margin for all intermediate positions. For literal translates $F_u$ along an axis the seam inequality gives $r_{u+1}^2\le r_ur_{u+2}$, where $r_u$ is the root test. A nonnegative sequence satisfying this inequality cannot exceed both endpoint bounds. Iterate over the four coordinates.
- (c) The root test is subadditive under finite sums. Slowly varying coefficients cost $e^{\varepsilon s_N}$ with $\varepsilon<\gamma/2$, which leaves the rate $e^{-\gamma s_N/2}$.

*Lean:* [`center_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L134-L160), [`corner_root`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L192-L226), [`offset`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L232-L270), [`gather_close`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Combination.lean#L65-L93).

## 5. Where the difficulty lies

The main analytic estimate is the volume-independent readout bound. Polarization in the full lattice direction space could introduce constants depending on the volume. Pulling each tensor back to the finitely many test directions avoids this, while rescaling each link position gives the required distance weights. The analytic radii of individual links need not be uniform.

The equation lift must serve two purposes at once: reproduce a prescribed jet and permit integration by parts without a derivative of its multiplier. Slot sampling away from the varied link supplies this independence. The triangular argument orders grades first by factor number, then by weight; higher-factor corrections need not have higher engineering weight. The final family retains its primary sections, and the equation sections form an auxiliary family whose comparison requires later estimates.

The birth identity requires reserved addresses in the same forced-polymer alphabet. Lawfulness alone does not supply them. The guarded construction weakens the auxiliary-test requirement while retaining exact eligibility whenever an inserted coefficient is nonzero. Its numerical bound is possible because the forced allowance decays faster than every inverse coupling power.

The finite slot family is chosen nonconstructively. Consequently the stencils and constants are finite but not explicit. Their dependence on degree and derivative parameters must be included before the block factors are chosen.

## 6. Notation

| Written proof | Lean (glossary) | Meaning |
|---|---|---|
| $\mathrm{Tay}_j$, jet $J$ | [`Labels.Taylor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L39), [`Jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L28) | radial-gauge Taylor coefficient of weight $j+2$; sequence of them |
| $V_d$ | [`Labels.Label`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L112) | invariant polynomials of weight $\le d$ (labels) |
| $p(J)$ | [`read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L35) | value of a label on a jet |
| $(w,f)$, $V_d^{(w,f)}$ | [`Grade`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L17-L18) | weight and number of factors |
| frame $(b_i)$, $c\in\mathbb C^{K_d+1}$ | [`Frame`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L50-L57), [`Frame.Coeff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L18) | real graded basis starting with $1$; coordinates |
| $S_t$, $c^\circ$, $\lVert c\rVert_1$ | [`Frame.scaled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L58-L61), [`core`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L123-L126), [`coeffSize`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L128) | $c_i\mapsto t^{f_i}c_i$; drop the unit coordinate; $\ell^1$ norm |
| $s\cdot c$, $\bar c$ | [`Frame.act`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L83-L84), [`realBar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Action.lean#L131-L140) | $O(4)$ action; conjugation |
| $U^{(d)}_{J,h}$ | [`Hol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L55-L57), [`Hol.links`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L62) | test holonomies |
| $\mathrm{sc}_hJ$ | [`scaleJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L82) | $(h^{j+2}J_j)_j$ |
| slot $\sigma=(\omega,P)$ | [`RG.Slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L38-L40) | $\mathrm{Ad}(U_\omega)F_P(U)$ |
| slot map $\mathfrak S$, truncated jets | [`bring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L98), [`Snap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L26) | finitely many slots as a function of $(J_j)_{j\le d-2}$ |
| section $(S,\Phi)$; $\Phi_c(o;U)$ | [`SectionData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L103-L105), [`places`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L112) | stencil and linear map to entry polynomials; placement |
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
| $r(d)$, $a_r^de_0$ | [`Family.ref`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L24-L30), [`Family.refUnit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L37) | reference level; physical unit vector |
| $E_m(v)$, $\mathcal D_m$ | [`Coefficient`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L26-L30), [`density`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L48-L50) | source coefficient; first-order inserted density |
| $\tau$; based | [`TransferData.terminal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L73-L75); [`Based`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L89-L114) | terminal map; transfer specification |
| supplement; fee | [`supplement`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L24-L25); [`fee`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L108-L109) | large-field part of the bare observable; birth condition |
| latch; Budget; Plans | [`Latch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L120-L123); [`Budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L65-L72); [`Plans`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L57-L62) | birth condition per level; level inequalities; stage-wise numerical plan |
| price list $(\mathsf K_j)$ | [`Bid.Worth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L29-L32) | nondecreasing constants $\ge1$ |
| close | [`Bid.close`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L25) | root-test bounds tend to $0$ in all prescribed link tilings and margins |

## 7. Open points for the writer

1. **Identification in the limit (tentative).** The auxiliary equation sections enter the volume-uniform comparison through [`Run.Ties`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L65-L71) and [`Hearthside`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fire.lean#L17-L20). This unit does not trace their regrading and transfer normalizations into the null-label quotient, or prove the converse identification with the free-Maxwell quotient. A literal equality $N_d=\mathcal E_d$ in the original primary coordinates has not been verified.
2. **Later applications.** The section constants and reference-level conditions are explicit here. Their simultaneous compatibility with every later per-step estimate, and the full use of the local-merger identities, belong to III.2 and III.10–III.15 and are not verified by these local results.

**Builds on:** [I.1](I-1.md), [III.16](III-16.md), [III.1](III-1.md), [IV.1](IV-1.md), [III.10](III-10.md), [III.2](III-2.md).

**Used by:** [III.11](III-11.md), [III.12](III-12.md), [III.13](III-13.md), [VII.2](VII-2.md), [VIII.1](VIII-1.md), [III.2](III-2.md), [VII.4](VII-4.md), [VII.6](VII-6.md), [III.10](III-10.md), [III.6](III-6.md), [IV.1](IV-1.md), [VII.1](VII-1.md), [VI.2](VI-2.md), [V.1](V-1.md), [III.3](III-3.md), [III.9](III-9.md), [III.14](III-14.md), [III.4](III-4.md), [III.15](III-15.md), [V.3](V-3.md), [III.8](III-8.md), [VII.3](VII-3.md), [VII.5](VII-5.md), [V.2](V-2.md).

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

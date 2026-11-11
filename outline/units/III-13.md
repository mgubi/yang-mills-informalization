# III.13. Extension to all labels: one common Wilson family

*Part III — Ultraviolet construction (renormalization group).* 22,100 lines of Lean in 3,224 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is **checked** against the Lean and rewritten by a second model; a final editing round is in progress. It is updated as it improves.


**Part:** III, Ultraviolet construction (renormalization group). **Lean:** [`YM/SharpGram/Common.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean), [`YM/SharpGram/Measured.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean), [`YM/SharpGram/Assembly/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly) (`Flowers`, `Expenditures`, `SameFactory`), [`YM/UVExtension/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension) (about 45 work packages; the ones that carry the mathematics are `Upland`, `Camp`, `Oasis`, `Mast`, `Hearth`, `Poppy`, `Beach`, `Harvest`, `Case`, `Reward`, `Lacing`). **Size:** about 22,100 lines in 3,224 declarations. About 4,000 lines are the proof of [`multitude`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Expenditures.lean#L31-L79), 3,700 are the proof of [`uv_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130) and the results it chains to, 2,700 are the proof of [`multitude_foot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Expenditures.lean#L84-L93), and about 1,200 are the packages Lamppost, Concert, Wick and Payroll. The other packages have 5–1,100 lines each.

**Place in the proof.** This unit is the ultraviolet part of the headline theorem [`habitat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean#L11-L36) (Proposition III.13.4). `habitat` is one of the seventeen declarations marked "headline" in OpenAI's usage record. The main theorem [`YangMills.constructed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L40) does not use it.
- Of the 4,212 declarations filed under III.13, 4,108 lie in the dependency closure of `habitat` and 6 in the closure of `YangMills.constructed`.
- The main theorem gets its Wilson family from the construction run of III.14 ([`constructionRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28), [`Run.extractible17`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L60-L90)).
- The two constructions rest on the same per-step estimates (III.1–III.12) and package them differently.

## 1. What this unit proves

The unit does two things.

- **The constants are chosen once.** Every choice of constants in the renormalization-group (RG) construction is made a single time, so that one Wilson family carries all the properties used later: calibration, chessboard bounds in the schedule, the logarithmic OPE package, coverage, weak reconstruction and extraction data. This part is bookkeeping (§4.1).
- **The fixed-volume ultraviolet limit is proved for this family.** On every fixed, sufficiently large torus, the correlation functions of the renormalized observables at separated points converge along the *whole* sequence of lattice spacings, together with their lattice derivatives. Moreover the whole construction depends holomorphically on a shift of the terminal coupling, uniformly in the cutoff. This part is genuine analysis (§4.2–4.4).

**Conventions.**
- $G$ is a compact matrix group with simple Lie algebra ("$G$ simple").
- $b>0$ is the *penalty* of the block-spin kernel. It is the coefficient of the Gaussian block-spin term $b\,|A-QA'|^2$ in the kernel identity of the linearized step, i.e. Balaban's parameter $a$ (probable).
- **Levels.** RG levels are $m=0,1,\dots,N$. Level $N$ (the *cutoff*) is the finest lattice, the Wilson end. Level $0$ is the coarsest. The spacings are $a_0=1$ and $a_{m+1}=a_m/L_m$ with odd block sizes $L_m$, and $\sigma_m=\log(1/a_m)$.
- **Tori.** The period index is $p$. The torus $\Lambda_{N,p}$ has spacing $a_N$ and side $\ell_p$.
- **Couplings.** A Wilson family $C$ has a selected RG trajectory with inverse couplings $\beta_m(N,p)$. Its Wilson coupling is $\beta_{N,p}=\beta_N(N,p)$, its value at level $0$ is the *barrier* $\bar\beta$, and $\hat\beta_m$ is the reference running coupling.
- **Labels and observables.**
  - $\mathcal L_d$ is the space of labels of degree $d$, and $\mathrm{ref}(d)$ is the reference level of degree $d$.
  - $O^{N,p}_v(x)$ is the renormalized lattice observable of a label $v$ at a site $x$ (II.1), and $\langle\cdot\rangle_{N,p}$ is the Wilson expectation at $\beta_{N,p}$.
- **Separated configurations.** $\Omega^n_p=\{x\in(\mathbb R^4)^n:\ x_i\not\equiv x_j \bmod \ell_p\mathbb Z^4 \text{ for } i\neq j\}$. A test function $t$ is *admissible at period $p$* if its support lies in the open cube $(-\ell_p/2,\ell_p/2)^{4n}$.
- **Extraction orders.** An extraction order $f$ is a pair of subsequences (mesh indices, period indices) (II.2), and $f\circ g$ is its refinement by $g$.

**Definition (chessboard bound in the schedule).** For $v\in\mathcal L_d$, levels $m\le N$ and $A\ge 0$, the *centered budget* holds if:
- $\mathrm{ref}(d)\le N$;
- for every site $o$ of $\Lambda_{N,p}$, the observable $O^{N,p}_v(o)$ is supported in the reference cell of the level-$m$ reflection-positivity tiling centred at $o$;
- its chessboard root $\big|\langle\prod_{\text{cells}}\text{reflected copies}\rangle_{N,p}\big|^{1/\sharp\text{cells}}$ is at most $A$.

The family has the **chessboard bound in the schedule** if for every $d$ and all $R,\varepsilon>0$ there is $A\ge0$ such that, for every level $m\ge\mathrm{ref}(d)$ and all sufficiently large $N$, the centered budget holds with constant $A\,a_m^{-d-\varepsilon}$ for every period $p$ and every $v\in\mathcal L_d$ with $\|v\|\le R$.
*Lean:* [`Extraction.Wcmain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L38-L40), [`centeredBudget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L21-L23).

**Proposition III.13.1 (one family for the ultraviolet and logarithmic packages).** Let $G$ be simple and $b>0$. There is a Wilson family $C$ with the following properties.
1. Its kernel penalty is $b$.
2. **$C$ is calibrated.** There are a full schedule of constants (sheet, block sizes, protection, delays, bar, wait, chart ratio, prices, post-cost) and a directed history whose trails generate the history of $C$. Every step from level $m+1$ to level $m$ satisfies the per-step estimates of III.9–III.12.
3. **$C$ is consistent.**
   - The trajectory is the selected one.
   - The local sections are sound.
   - For every $d$: $d+3\le J(\mathrm{ref}(d))$, and $d+1\le$ order$_m$ and $d\le$ power$_m$ for every $m\ge\mathrm{ref}(d)$.
   - Stencils fit: $20(|x_i|+1)\le$ side$(N,p)$ whenever $\mathrm{ref}(d)\le N$.
   - The priced sup bounds hold.
   - The transfer data are calibrated from $\mathrm{ref}(d)$ on.
4. $C$ has the chessboard bound in the schedule.
5. $C$ is *floral*: it is the centre of an analytic shooting family (Proposition III.13.7).
6. $C$ satisfies the three entrance conditions of the OPE (tentative reading):
   - a cost bound on label products;
   - slow growth of the cover sizes, $\mathrm{cs}_{i+1}^2\le2\,\mathrm{cs}_i^2$, with $(L_i\,\mathrm{cs}_i^2)^4\cdot(\text{vacuum cost})\le\varepsilon\,\sigma_{i+1}$ eventually;
   - a power decay of an auxiliary radius sequence.
7. There are data $(W,r,D)$ for which two properties hold.
   - **The logarithmic OPE package.** This is the OPE package of VII.4, with: priced bounds for products; $L_m\le\hat\beta_m$ and columns$_m$, columns$_{m+1}\le\hat\beta_m$; $r\to\infty$; and support exponent $100$ at every level.
   - **Calibrated label steps.** For $\mathrm{ref}(d)\le m<N$, the map of degree-$d$ label coefficients from level $m+1$ to level $m$ agrees with a linear map $T$ up to an error $\le\mathrm{barunit}(L_m)\cdot|\text{core}|$. The map $T$ is diagonal on engineering grades with eigenvalue $(\theta_m/\theta_{m+1})^{\text{grade}}$ ($\theta_m$ the threshold at level $m$), triangular in the factor degree, and $\|T\|,\|T^{-1}\|\le K(J(m+1))$.
8. *Coverage* holds. There is $g(k)\to\infty$ with $g(k)\le k$ and $a_{g(k)}\le\hat\beta_k\,a_k$ for large $k$ such that, for every $d$ and all large $k$, three probe panels of depth $d$ are poised at level $g(k)$ (VII.1).
9. For every extraction order $F$ satisfying the cell hypotheses (IV.1), $C$ has grid approximants of insertions at generic grid points along $F$ and complete weak systems at every depth (III.11).
10. For every extraction order $f$ there are:
    - a refinement $g$;
    - tables $A$, $(L_k)$ and $T$, with a bin $R$ and a derivative plan $E$, forming extraction base data along $f\circ g$ (IV.1);
    - a seed $s$ for $(C,f\circ g,T)$ such that the Maxwell rank condition holds for $T$.

*Status:* theorem. The only hypotheses are $G$ simple and $b>0$.
*Lean:* [`uv_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130). The predicates, in the order of the items: [`Spec.Calibrated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L58-L61), [`Family.Makes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62), [`Oasis.Floral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Flora.lean#L55-L71), [`Acme.Aroma`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Ozone.lean#L16-L19), [`LogPackage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Log/Plans.lean#L29-L33), [`TrueSteps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Matrix/Leading.lean#L29-L32) with [`CalibratedStep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Matrix/Leading.lean#L19-L27), [`Dense.Coverage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Passes.lean#L16-L24), [`Org.Grill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L121-L123), [`East.CompleteWeak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L35), [`Next.Extract.Base`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L42-L51), [`Spec.Seed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26), [`Maxwell.Ranks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L135-L139).

**Proposition III.13.2 (the coordinated family).** Let $G$ be simple and $b>0$. There is one Wilson family $C$ with the following properties:
- it has kernel penalty $b$ and is consistent, calibrated and floral;
- it has the chessboard bound in the schedule;
- it has the fixed-volume limits of III.13.5;
- it has the logarithmic OPE package and the calibrated label steps;
- it has coverage;
- it has complete weak systems along every extraction order satisfying the cell hypotheses.

In addition, for **every** extraction order $F$ there are a refinement $g$ and a table $T$ such that:
- (a) the ordered limit holds for $T$ along the *full* mesh sequence and the period subsequence of $F\circ g$;
- (b) the OPE services of VII.4 hold for $(C,F\circ g,T)$;
- (c) a construction record of type `Final` for $(C,F\circ g,T)$ exists.

*Status:* theorem. The family is chosen before $F$.
*Lean:* [`coordination`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L16-L37), [`Extraction.Order.Ordered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L32-L35), [`OPE.Facilities`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/ElementaryLog.lean#L12-L13), [`Spec.Final`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73).

**Proposition III.13.3 (the common family, all phases).** Let $G$ be simple, $b>0$, and let $f$ be an extraction order. There are a family $C$, a refinement $g$, a table $T$, a construction record $F$ for $(C,f\circ g,T)$ and a reconstruction record $\mathcal A$ for every phase of $F$ (V.3) such that:
- everything listed in III.13.2 holds for $(C,f\circ g,T)$;
- the reconstruction is *completed* for every phase: Wightman realization, unique vacuum, light-cone and heat-kernel bounds, trivial commutant, the continued stress tensor, and the barycentre identities;
- the derivative sector of $F$ has a prescription $P$ for which all shapes hold (VII.4).

*Status:* theorem. In the statement $C$ is quantified after $f$. The proof takes $C$ from III.13.2, so in fact one family serves all $f$.
*Lean:* [`common`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L41-L60), [`EveryPhase.Completed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L51-L71), [`EveryPhase.Almanac`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L117-L132), [`OPE.AllShapes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Subpower.lean#L39-L45).

**Proposition III.13.4 (headline: moving-frame Gram limits on the common family).** Let $G$ be simple, $b>0$, and let $f$ be an extraction order. There are $C,g,T,F,\mathcal A,P$ as in III.13.3 with all of its conclusions. In addition, coverage holds at the cutoff of $F$, and the following holds for every ultrafilter $\mathcal U$ on $\mathbb N\times\mathbb N$ finer than the filter of $f\circ g$ ("period index large, then mesh index large") and every depth $D$:
1. *Moving-frame portfolios* of depth $D$ along $\mathcal U$ exist. A portfolio consists of:
   - a level $k'=k'(k)\to\infty$ with $k'\le k$ and $a_k\le a_{k'}\le\hat\beta_k\,a_k$;
   - three probe panels poised at level $k'$;
   - label matrices whose limits along $\mathcal U$ exist.
2. For every portfolio $X$ there are linear isomorphisms $Y_k(d)$ from the degree-$d$ field space of the free Maxwell table onto that of $T$ ($d\le D$, $k\in\mathbb N$), with the following properties.
   - They are graded with respect to the free scheme.
   - They are uniformly bounded and uniformly coercive.
   - Their source and read-off costs are polynomial in $\hat\beta_k$ and $a_k^{d}$.
   - For every $d\le D$, the Gram form of $X$ at step $k$, read in the basis $Y_k(d)$, converges as $k\to\infty$ to the Gram form of the free Maxwell model in degree $d$.

*Status:* theorem; headline declaration. In the statement $C$ is quantified after $f$, as in III.13.3.
*Lean:* [`habitat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean#L11-L36), [`Weak.Portfolio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L35-L49), [`PricedIn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/InContext.lean#L29-L37). *(proof of the wrapper read)*

**Proposition III.13.5 (fixed-volume limit with $k$ derivatives).** Let $C$ be as in III.13.1, and fix $d,k\in\mathbb N$. For all sufficiently large periods $p$ (the threshold depends on $d$ and $k$), every $n$, and all labels $v_1,\dots,v_n$ of degrees $\le d$, there is a function $g$ on $(\mathbb R^4)^n$ such that, as $N\to\infty$ along the whole sequence:
1. $g$ is continuous on $\Omega^n_p$. The lattice correlation functions $x\mapsto\langle\prod_iO^{N,p}_{v_i}(x_i)\rangle_{N,p}$, extended as step functions from $(a_N\mathbb Z^4)^n$, converge to $g$ uniformly on compact subsets of $\Omega^n_p$.
2. For every word $u$ of at most $k$ lattice difference operators, two sequences converge to the iterated partial derivative $\partial_ug$ uniformly on compact subsets of $\Omega^n_p$: the step-function extensions of the corresponding difference quotients, and the multilinear interpolations of the lattice differences.
3. On $\Omega^n_p$ these iterated directional derivatives exist: $\partial_a(\partial_ug)=\partial_{(a,u)}g$ whenever the word $u$ has length $<k$.
4. For every test function $t$ admissible at period $p$, $tg$ is integrable and $a_N^{4n}\sum_r t(r)\,\langle\prod_iO^{N,p}_{v_i}(r_i)\rangle_{N,p}\to\int tg$.

*Status:* theorem.
*Lean:* [`Poppy.Margins`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Fountain.lean#L16-L21), [`Poppy.bravo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Summit.lean#L19-L22), [`Poppy.blossoms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Fountain.lean#L96-L108).

**Proposition III.13.6 (convergence at separated lattice points).** Let $C^{\mathbf s}$ be a member of the shooting family of III.13.7. At a fixed period $p$, assume:
- its shifts converge, $s_{N,p}\to s$ as $N\to\infty$, with $|s|<r_*$;
- $C^{\mathbf s}$ has the chessboard bound in the schedule;
- the slow-growth and Scrim bounds hold (both are supplied by the bundle of III.13.7 for every assignment of shifts).

Let $J\in\mathbb N$, let $u_1,\dots,u_I$ be labels with $\mathrm{ref}(\deg u_i)\le J$, and let $o_1,\dots,o_I$ be pairwise distinct sites of the level-$J$ lattice of the period-$p$ torus. Then the sequence
$$\Psi_N=\Big\langle\prod_{i=1}^IO^{N,p}_{u_i}(o_i)\Big\rangle_{N,p},$$
with $o_i$ read as sites of $\Lambda_{N,p}$, converges as $N\to\infty$.
*Status:* theorem. For the family of III.13.1, $\mathbf s\equiv0$.
*Lean:* [`Hearth.food`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L87-L112).

**Proposition III.13.7 (the family is the centre of an analytic shooting family).** For the family $C$ of III.13.1 there are:
- a schedule, i.e. an alloy with a factor;
- a shooting structure with an arc;
- a label-transfer bundle (the "cellar");
- reference levels $\mathrm{ref}$;

such that the following holds.
1. *Shooting.* There is $r_*>0$, depending only on the schedule, such that for all $N,p$ and every real $s$ with $|s|<r_*$ there is exactly one Wilson coupling whose RG trajectory, followed down from level $N$, reaches $\bar\beta+s$ at level $0$. For an assignment $\mathbf s=(s_{N,p})$ of real shifts with $|s_{N,p}|<r_*$, let $C^{\mathbf s}$ be the Wilson family with these trajectories and the labels, sections and reference levels of the bundle. Then $C=C^{\mathbf 0}$.
2. *Analyticity, uniform in the cutoff.* For $m\le N$, the level-$m$ coupling $\beta_m(N,p;s)$ and the readings of the level-$m$ effective action extend holomorphically to $|s|<r_*$. They are bounded there by $3\hat\beta_m$ and by an absolute constant respectively. For fixed $m,p$ they converge as $N\to\infty$, with all $s$-derivatives, locally uniformly on the disc.
3. *Bounds.* $C$ satisfies the calibration package (with constant allowance) and the priced sup bounds. For every assignment $\mathbf s$, $C^{\mathbf s}$ satisfies the Scrim bounds and has the chessboard bound in the schedule. Extraction base data exist at the centre.
4. *Analytic transfer data.* There is $a>0$ such that the label-transfer data extend holomorphically to $|s|<a$, for all $d,N,p$ with $\mathrm{ref}(d)\le N$.
5. *Analytic correlations.* Fix $d,m$. For all large $p$, every $n$ and labels of degree $\le d$, there are $b'>0$ and functions $W_N(z,x)$, holomorphic in $|z|<b'$, and $f(z,\cdot)$ on $(\mathbb R^4)^n$ such that:
   - $W_N(s,\cdot)$ is the lattice correlation function of $C^{\mathbf s}$ whenever $s_{N,p}=s$ (for every $N$ with $\mathrm{ref}\le N$);
   - for each real $s$ in the disc, $f(s,\cdot)$ has, on $\Omega^n_p$, the same derivatives up to order $m$ as the fixed-volume limit (III.13.5) of the family with constant shift $s$;
   - for admissible $t$, $z\mapsto\int t\,f(z,\cdot)$ is holomorphic, and the smeared lattice correlations converge to it, with all $z$-derivatives, locally uniformly.

*Status:* theorem (part of III.13.1). No other clause of the headline uses items 2, 4 or 5: the reports of §4.5 use only the arc, the bounds of item 3 and the shift $0$.
*Lean:* [`Oasis.Floral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Flora.lean#L55-L71), [`Oasis.Spring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Flora.lean#L41-L49), [`Upland.Arc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland/Plinth.lean#L33-L38), [`Mast.Cellar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Mast/Rig.lean#L29-L37), [`Cellar.yard`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Mast/Rig.lean#L60), [`Harvest.Barn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Harvest/Barn.lean#L20-L23), [`Gale.Circuit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Gale/Flange.lean#L43-L50), [`Beach.Shoal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Beach/Under.lean#L32-L36), [`Beach.Realizes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Prefixes.lean#L35-L39). *(definitions and producing proofs read)*

## 2. What it uses

Inputs from other units.

- **I.1.** The Wilson measure and partition function, and the one-loop slope $\kappa_G=11\,C_G/(24\pi^2)$ ($C_G$ the Casimir).
- **II.1, II.2.** Labels, local sections, renormalized observables; tables, extraction orders, seeds and construction records.
- **III.1.** Kernel choices with penalty $b$ for which every patch branches (unique minimizing frames and predictors, a non-empty axial fallback): [`Axial.viable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L137-L142), [`KernelChoices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L37-L45).
- **III.2.** The order of choice. The pre-$L$ constants form the sheet; then come the block sizes, the wages, the protection $\theta$, the delays, the bar and the waits, in this order.
- **III.4 and III.8.** The relay supply [`posters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L29-L33), and the chessboard product estimate [`GridApprox.tariff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Telescope.lean#L34-L78).
- **III.7.** The one-loop annulus calculation. [`HorizCalc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L20-L23) holds for every simple $G$ by [`Stationary.pouring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L17-L52) through [`Fluent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L115). This is where the coefficient of $\log L$ in the marginal flow comes from (Lemma 4.3).
- **III.9–III.12.** The per-step estimates, the selected trajectory and the band, and the directed histories, alloys and factors. They enter through the step package [`uv_commerce`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Case/Trading.lean#L22-L50) of this unit.
- **III.11.**
  - The calibration package [`Chateau`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Almandine.lean#L24-L36). Its reception field contains: calibration, consistency, the Scrim bounds, the chessboard bound in the schedule, and the existence of extraction base data, seeds and Maxwell ranks for every extraction order.
  - The priced sup bounds [`Velour`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Bonus.lean#L34-L36).
  - The OPE entrance [`Acme.emanate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L31-L37).
  - The weak systems [`sponsored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L38-L51).
  - The cost bound [`Ribbons.laurelE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Economist.lean#L23-L32).
- **III.15, III.16.** Cost accounting for labels, and analytic tools.
- **IV.1.** The chessboard bound in the schedule (as a definition), the cell hypotheses, extraction base data, the Maxwell ranks, and the Arzelà–Ascoli-type lemma [`Extraction.growFrom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Tame.lean#L35-L97).
- **V.3.** Reconstruction for every phase: [`all_characters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L75-L80).
- **VII.1.**
  - Coverage, through [`Dense.covered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Passes.lean#L26-L33).
  - The slim-window port [`slim_wait_for`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Slender.lean#L127-L143).
  - The calibrated label steps.
  - The portfolios [`fromCoverage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L66-L67).
- **VII.4.**
  - The logarithmic package and the OPE services.
  - The prescriptions [`Prescription.chosen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Legacy.lean#L20-L31) and the shapes.
  - The delay raises [`OPE.halo_delay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Rough/Gate.lean#L45-L54) and [`OPE.Log.aux_delay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Log/Plans.lean#L19-L25).
- **VIII.1.** The construction record and [`Acme.glistens`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Summit.lean#L17-L30), which turns the UV package and the calibration into a record.

Standard mathematics used.

- **Balaban's block-spin renormalization** for lattice gauge theory (Balaban, CMP 95–122, 1984–89; Dimock, *The renormalization group according to Balaban I–III*). Balaban's papers give bounds uniform in the cutoff. The convergence statements of §4.2–4.4 go beyond them.
- **Shooting by contraction** (Banach fixed point), uniform in the cutoff.
- **Vitali's convergence theorem** (Vitali–Porter). Locally bounded holomorphic functions that converge on a real segment converge locally uniformly, with all derivatives. The Lean proof maps into $\ell^\infty(\mathbb N;Y)$ and applies the identity principle to the closed subspace of convergent sequences.
- **Arzelà–Ascoli**, in the form: asymptotic equicontinuity on compacts together with convergence on a dense set gives locally uniform convergence.
- **Dominated convergence.**
- **Chessboard estimates** for reflection-positive measures (Fröhlich–Israel–Lieb–Simon 1978; Glimm–Jaffe, ch. 10).
- **Ultrafilters.**

**Imported constants and assumptions.** The statements of III.13.1–III.13.4 have no hypotheses beyond $G$ simple and $b>0$. The one-loop slope $\kappa_G$ enters `ceilings` (Lemma 4.3) through the hypothesis `HorizCalc`, which III.7 proves for every simple $G$. The construction fixes the following constants:
- the stage data: first stage $4$, Taylor order $6+i$, power $2+i$, and support exponent $100$ at level $i$;
- the allowances $Q\equiv1$ (for the floral property) and $Q_2(j)=j+1$ (for the OPE iteration);
- auxiliary data $(40,1,1)$;
- a bar parameter $2$;
- the target rate $-7/16$ of the factor.

The analytic argument uses $\mathrm{soft}=\mathrm{rim}/8<1$, $\mathrm{rad}=\mathrm{rim}/4$ and the gain $e^{(\sigma_k-\sigma_m)/8}$.

## 3. Strategy

**The order of choice.** Each estimate of III.9–III.12, and each requirement of the later parts (OPE with logarithmic corrections, coverage, weak reconstruction), has the form "there is a threshold beyond which the property holds". It is also stable under further raising: in the preorders on delays, waits and wages, and under decreasing the protection. Finitely many such requirements are met together by successive raises, and the Lean does exactly this. A dozen raises in Lemma 4.1 nest inside the fixed chain of quantifiers sheet → block sizes → wages → protection → delays → bar → wait.

The countably many label degrees cause no extra difficulty. The stage parameters are explicit increasing functions of the level (Taylor order $6+i$, power $2+i$), and degree $d$ is required only from its reference level $\mathrm{ref}(d)$ on. All constants are then fixed, and the family is read off.

**The analytic core: a shooting family and the limit at a fixed level.**
1. The family is the member $s=0$ of a one-parameter family in which the terminal coupling at level $0$ is $\bar\beta+s$. For each cutoff $N$ the trajectory is found by shooting: it is the fixed point of a contraction with rate $1/2$, uniformly in $N$.
2. This uniformity, the convergence of the background fields and coupling shifts at each level (Lemma 4.7), and an $\mathrm{soft}^v$ decay of the influence of levels far above $m$ together give convergence, as $N\to\infty$ along the whole sequence, of the coupling and the effective action at any fixed level $m$, for every real $s$ (Lemma 4.8).
3. Holomorphic extension in $s$ to a disc independent of $N$ and $p$, with uniform bounds, and Vitali's theorem upgrade this to locally uniform convergence of all $s$-derivatives on the disc (Lemma 4.9).

**From the effective action to correlations.** A correlation of renormalized observables at distinct points is handled in three steps.
1. **RG identity.** For a function of the level-$k$ block variables, the Wilson expectation at cutoff $N$ equals the expectation in the level-$k$ effective measure. That measure converges as $N\to\infty$ (Lemmas 4.11–4.12).
2. **Coarse approximation.** Each fine renormalized observable is close to the pullback of a level-$k$ observable whose coefficients converge as $N\to\infty$. The error is measured in the chessboard norm and is small for $k$ large, because the gain $e^{(\sigma_k-\sigma_m)/8}$ beats the subexponential growth of the costs (Lemma 4.13).
3. **Product estimate.** The chessboard product inequality turns these one-point approximations into an approximation of the product (Lemma 4.14).

A Cauchy argument then gives Proposition III.13.6. Proposition III.13.5 follows by Arzelà–Ascoli: there is convergence on the dense set of grid points of all levels, and there is equicontinuity from uniform bounds on lattice differences of order $k+1$. Those bounds need a non-degeneracy ("slicing") of the label snapshots, which is known only for large periods, so the fixed-volume statement holds for $p$ large. The reports then feed this family to the OPE entrance, reconstruction and Gram machinery defined in other units.

Balaban's estimates are used only through the per-step package; what this unit adds is the analysis just described and the order of choice.

## 4. Steps

### 4.1 Choosing the constants once

**Lemma 4.1 (the step package with all later constants raised).** Let $s$ be a purchased sheet (Lemma 4.2) and let $PB$, $P_2$ be allowance sequences. There is a floor $f\ge v_0$ on the block sizes such that, for every block-size sequence $L\ge f$, the following holds.
- Block-size rolls $D$ exist.
- For every roll $D$ there is a wage threshold $U$. For every wage $w\ge U$ and all postage and exchange data there is a post-cost $P$.
- For every $\theta_0>0$ there is a protection $\theta\le\theta_0$.
- For all menus, auxiliary data and delays $T_0$ there is an ordered delay $V\ge T_0$ such that the following holds for every delay $Y\ge V$, every bar, every wait $I$ and every level system $a$ paid by $I$. There are a directed history $B$ with $B.a=a$ and a factor $R$ of the alloy $(P,\theta,Y,\text{bar},I,B)$, with the prescribed wages, exchange, menu and auxiliary data, and with:
  - a bandage;
  - the leases;
  - target rates $\le-7/16$;
  - the Mallow conditions for both allowances;
  - the starting data of the shooting (a "grove");
  - the tax and report conditions;
  - the end conditions of the coupling path;
  - a shape port for the covariance.

*Sketch:* The input is the step package `uv_commerce`: the per-step bounds hold eventually in the cutoff, uniformly in all constants chosen later. The other requirements are added by twelve successive delay raises $V\le V_1\le\dots\le V_{12}$. Each raise is a lemma "there is $V'\ge V$ such that every $Y\ge V'$ has the property". The entry-coupling component is raised pointwise, by a maximum with the entry threshold of `Camp.delayed`. Raising a delay never destroys a property obtained earlier, and this is what makes the composite raise work.
*Lean:* [`multitude`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Expenditures.lean#L31-L79), [`uv_commerce`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Case/Trading.lean#L22-L50). *(proof of `multitude` read; `uv_commerce` read only as far as its call to `Roof.uv_timberT`)*

**Lemma 4.2 (the purchased sheet).** Let $G$ be simple, $K$ kernel choices for which every patch branches, and $v$ stage data satisfying the stated conditions:
- first stage $\ge4$;
- Taylor orders monotone and $\ge\max(6,i)$;
- powers monotone and $\ge\max(2,i)$;
- support exponents monotone and positive.

Then there are a sheet with kernel $K$ and stage data $v$, prices $T$, a budget sequence and a worth $W$ with the following property: for all tariffs and scopes there is a floor $v\ge\mathrm{floor}_L$ for which the conclusion of Lemma 4.1 holds for every block-size sequence $k\ge v$.
*Sketch:* `sailsV` produces the purchased sheet from three inputs:
- `office`: pre-$L$ constants chosen so that, once $L$ is revealed, only waiting is needed and the target estimates hold;
- `profiles`: horizon data for every sheet with kernel $K$;
- `work item` (Lemma 4.7).

Then apply Lemma 4.1.
*Lean:* [`multitude_foot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Expenditures.lean#L84-L93), [`sailsV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Case/Wing.lean#L95-L154), [`office`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Clocks.lean#L43-L108), [`profiles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Free/Lease.lean#L171-L182). *(proof of `multitude_foot` read; the others statement only)*

**Lemma 4.3 (the one-loop running of the marginal coupling).** Let $G$ be simple, fix kernel choices and positive tolerances $\varepsilon,w,\delta$ and nonnegative $D,Z,C,Z'$. There are $\kappa\ge0$ and $s>0$ with the following property. For all $\tau,A,\mathrm{pace}>0$ for which `HorizCalc`$(G,w,\varepsilon,D,Z,\tau,A)$ holds, there are:
- $d\ge0$ and $\gamma>0$;
- an integer $u$;
- functions $\beta(L)$ and $\Lambda_0(L)$;

such that every RG step on a patch with block size $L\ge u$ satisfying the step hypotheses admits:
- background path data $Y$;
- a number $\alpha$, the shift of the marginal coupling read from the actual quadratic form of the step in a colour direction, with
$$|\alpha+\kappa_G\log L|+1\le d;$$
- classical matching and finite bounds.

`HorizCalc` is the one-loop "annulus" statement. For odd $L\ge L_{\min}$, on fine lattices, there is a comparison picture whose $\alpha$-reading lies within a fixed $D$ of $-\kappa_G\log L$.
*Sketch:* $\alpha$ is compared with the $\alpha$-reading of the `HorizCalc` picture (`pole_reduced`), and the two bounds are added. The constant $d$ is chosen before $L$, so the coefficient of $\log L$ must be exactly $\kappa_G$.
*Lean:* [`ceilings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Heal.lean#L24-L114), [`colorReady`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Choices.lean#L137-L178), [`HorizCalc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L20-L23). *(the part of the proof of `ceilings` that bounds $\alpha$ read; `colorReady` statement only)*

**Lemma 4.4 (the bundle and the joint offers).** Let $G$ be simple, $K$ kernel choices for which every patch branches, $v$ draft stage data with support exponents $\ge100$, and $Q,Q_2$ monotone with values $\ge1$. There are:
- a sheet with kernel $K$ and stage data $v$;
- prices, a budget sequence and a worth $K'$;
- a floor $\tau\ge\mathrm{floor}_L$;

such that for every block-size sequence $k\ge\tau$ rolls exist, and the following holds through the quantifier chain of Lemma 4.1. In that chain the waits receive one more raise $Z$, of readiness, minimal length and window. Every paid level system then carries:
- a directed history and a factor;
- a shooting structure $\mathcal S$ with an arc;
- a label-transfer bundle over $\mathcal S$;

and the family $C^{\mathbf 0}$ built from the bundle has the following properties:
- the calibration package for both $Q$ and $Q_2$;
- slow growth of the cover sizes;
- the priced sup bounds (three variants);
- the bundle conditions of III.13.7.3;
- calibrated label steps;
- the leases, and target rates $\le-7/16$.

In addition:
- there is a radius $r>0$ such that the disc of radius $r$ lies in the analytic domain and the transfer data extend holomorphically to it for all $d,N,p$ with $\mathrm{ref}(d)\le N$;
- complete weak systems exist for every extraction order.

*Sketch:* `havens_log` is `multitude_foot` together with the construction of the bundle and a floor on $L$ (`choir`, which gives $\mathrm{rate}(L)(1+2\,\mathrm{columns})\,\mathrm{orbitCost}\le\mathrm{barunit}(L)$). `jointOffers` adds the relay supply and the weak systems (`posters`, `sponsored`) and the holomorphic extension of the transfer data (`Gale.sheaf`).
*Lean:* [`havens_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/SameFactory.lean#L60-L137), [`jointOffers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L36-L66), [`Gale.sheaf`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Gale/Flange.lean#L57-L67). *(proof of `jointOffers` read; statement and opening of `havens_log` read)*

**Lemma 4.5 (instantiation).** Proposition III.13.1 follows from Lemma 4.4 with the following choices.
- **Kernel.** The kernel choices have penalty $b$ (`Axial.viable`). The stage data are $(4,\,6+i,\,2+i,\,100)$, and the allowances are $Q\equiv1$, $Q_2(j)=j+1$.
- **Block sizes.** The block-size sequence is the maximum of the floor of Lemma 4.4 and a relay floor (`Pert.Dense.bulletin`).
- **Post-$L$ data.** The menu is canonical, the auxiliary data are $(40,1,1)$, the wage is the threshold itself, and $\theta_0\equiv1$.
- **Delays.** Zero delays are raised by `halo_delay` and `aux_delay`; the latter gives $L_m$, columns $\le\hat\beta_m$.
- **Bar and wait.** A bar above the delays with parameter $2$ is chosen. A wait with slim window is thickened by `slim_wait_for` so that it carries a certified station port, then joined with the wait of Lemma 4.4. `Wait.engine` gives a paid level system.

Then:
- coverage follows from `Dense.covered`;
- floral from Lemma 4.18;
- the OPE entrance conditions from `laurelE`, the slow growth of cover sizes and `fugacious`;
- the logarithmic package is assembled from the Scrim bounds, the priced bounds, the calibrated steps, the budget, $r\to\infty$ (from the depth of the fits) and support exponent $100$.

*Lean:* [`uv_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130), [`Axial.viable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L137-L142).

### 4.2 Shooting, and the limit at a fixed level

**Lemma 4.6 (shooting).** Let $r_*>0$ be the radius of the arc; it depends only on the schedule. For all $N,p$ and real $|s|<r_*$:
- there is exactly one $\beta\in\mathbb R$ such that the RG trajectory started at level $N$ with Wilson coupling $\beta$ reaches $\bar\beta+s$ at level $0$;
- the realized trajectory satisfies the band and step conditions at every level, and its level-$0$ coupling is $\bar\beta+s$;
- $\beta$ is the value at $s$ of the holomorphic function $\beta_N(N,p;\cdot)$.

*Lean:* [`Arc.exists_trial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland/Plinth.lean#L71-L75), [`Oasis.spring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Flora.lean#L51-L53), [`Spire.Uses`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Spark.lean#L37-L41). *(the wrappers read; existence and uniqueness come from the fitted structure, statement only)*

**Lemma 4.7 (kinematic convergence at each level).** For a paid level system there are background path data and coupling shifts $\alpha_N(m)$, with full paths, such that for every level $m$:
- $\alpha_N(m)$ converges as $N\to\infty$;
- the background paths at level $m$ converge uniformly within a width larger than the level-$m$ width.

*Lean:* [`Reward.work item`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Lights.lean#L74-L78), [`Reward.turning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Tides.lean#L103-L116). *(proof of `work item` read; `turning` statement only)*

**Lemma 4.8 (ultraviolet convergence at a fixed level, real shifts).** For every real $s$ in the analytic domain, every level $m$ and every period $p$, two quantities converge as $N\to\infty$ along the whole sequence: the effective activities at level $m$, and the level-$m$ coupling data of the trajectory ending at $\bar\beta+s$.
*Sketch:*
1. **Contraction.** The trajectory with cutoff $N$ is the fixed point of a map on coupling sequences. Its $k$-th iterate from $0$ lies within $\mathrm{rad}\cdot2^{1-k}$ of the fixed point, uniformly in $N$.
2. **Stability.** If the level-$(m+1)$ data converge as $N\to\infty$, so do the level-$m$ data and the claimed coupling shift of the step. By induction on $k$, every iterate therefore converges level by level. The coupling shifts converge by Lemma 4.7.
3. **Decay of far-ultraviolet influence.** The level-$m$ activities depend on the levels above $m+v$ only up to $\mathrm{soft}^v$ with $\mathrm{soft}<1$, uniformly in $N$.
4. **Conclusion.** An $\varepsilon/4$ argument closes each step: in a complete space, a sequence that can be approximated uniformly by convergent sequences converges.

*Lean:* [`Camp.artistry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Pear.lean#L70-L71), [`Camp.climb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Pear.lean#L62-L68), [`Camp.income`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Pear.lean#L31-L35), [`Camp.Sign`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Buckles.lean#L40-L41), [`Camp.trim`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Buckles.lean#L43-L49). *(proof read; the contraction rate and the $\mathrm{soft}^v$ decay are taken from statements)*

**Lemma 4.9 (Vitali, and analyticity uniform in the cutoff).** Let $F_N$ be holomorphic on $|z|<r$ with values in a Banach space, uniformly bounded, and convergent at every real $z\in(-r,r)$. Then there is a holomorphic $f$ on the disc such that every iterated derivative of $F_N$ converges to that of $f$, locally uniformly. The lemma applies to $\beta_m(N,p;\cdot)$ (bounded by $3\hat\beta_m$) and to the level-$m$ effective-action readings (bounded by a constant). With Lemma 4.8 this gives III.13.7.2.
*Lean:* [`Camp.viva`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Veto.lean#L64-L69), [`Camp.SummitUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Veto.lean#L62), [`Arc.uv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland/Plinth.lean#L62-L70).

### 4.3 Renormalized observables

**Lemma 4.10 (label transfer).**
- **Coefficient data.** For each degree $d$, period $p$, level $i$, cutoff $N$ and shift $s$, the bundle provides the coefficient data of the degree-$d$ renormalized observables at level $i$.
- **Bounds.** For every assignment of shifts and every $m\ge\mathrm{ref}(d)$, these data satisfy bounds, and $i+3\le J(\mathrm{ref}(i))$.
- **Continuity in the shift.** If the shifts at period $p$ converge to $s$, the level-$i$ data converge for $i\ge\mathrm{ref}(d)$.
- **Transfer data.** The transfer data of $C^{\mathbf s}$ are read from these coefficient data and are calibrated from $\mathrm{ref}(d)$ on.
- **Composition.** Compatible one-level steps of label coefficients compose into a multiscale history with prescribed top coefficient, satisfying all step estimates (the composition lemma). The downward step and the families of solutions with a prescribed coefficient at level $m$ come from `repriseQ`, `acclaim` and `antilles`.

*Lean:* [`Mast.Cellar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Mast/Rig.lean#L29-L37), [`Cellar.gate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Mast/Rig.lean#L59), [`Lacing.compose`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Circles.lean#L13-L47), [`repriseQ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Reprise.lean#L45-L258), [`acclaim`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Chunk.lean#L34-L138), [`antilles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Couplet.lean#L57-L89). *(`Cellar` definition read; the Lacing lemmas statement only)*

### 4.4 Correlations at fixed volume

**Lemma 4.11 (the RG identity).** Let the history be selected, let $m\le N$, and let $F$ be a bounded continuous function of the level-$m$ configuration. Then
$$\big\langle F\circ\pi_{N\to m}\big\rangle_{N,p}=\frac{\int e^{-S_m}F\,d\mathrm{Haar}}{\int e^{-S_m}\,d\mathrm{Haar}},$$
where $\pi_{N\to m}$ is the block-spin map and $e^{-S_m}$ is the level-$m$ effective Boltzmann factor.
*Sketch:* induction on the levels, using the one-step pushforward identity, followed by the equality of partition functions.
*Lean:* [`Hearth.scaledK`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Dine.lean#L42-L52), [`Hearth.tasting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Dine.lean#L40).

**Lemma 4.12 (convergence of the effective measure at a fixed level).** At a fixed period $p$, let the shifts satisfy $s_{N,p}\to s$ with $s$ real in the disc. If $F_N$ are bounded continuous functions of the level-$m$ configuration converging uniformly, then the level-$m$ effective expectations of $F_N$ converge as $N\to\infty$.
*Sketch:* The effective Boltzmann factors at level $m$ converge uniformly, by the stability of the trajectory family (`Mast.signs`). Their integrals are bounded below by a positive constant (`zPositive`). The effective expectations are ratios of convergent integrals.
*Lean:* [`Hearth.arrival`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Dine.lean#L65-L72), [`Hearth.seating`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Dine.lean#L58-L62), [`strippedOn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Trail.lean#L82-L84), [`zPositive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Trail.lean#L85-L97), [`Mast.signs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Forest/Coda.lean#L47-L52). *(proof of `arrival` read; the three inputs statement only)*

**Lemma 4.13 (coarse approximation of renormalized observables).** Let $J\le m\le k$, where $m$ is a level at which the cover-size condition opens. Let $u$ be a degree-$d$ label with $\mathrm{ref}(d)\le m$, and let $w>0$ satisfy
$$w\,\|\alpha_{m,d}\|\cdot4(1+\mathrm{columns}_k)\,e^{-(\sigma_k-\sigma_m)/8}\le\tfrac12\,\mathrm{fly}_{d,m}.$$
Then there are level-$k$ observables $g_N=\sum_jc_j(N)\,\Lambda_j$ with the following properties:
- the $\Lambda_j$ are fixed level-$k$ observables, and the coefficients $c_j(N)$ converge as $N\to\infty$;
- for large $N$, the chessboard root, at level $J$, of $g_N\circ\pi_{N\to k}-O^{N,p}_u(0)$ is at most $\mathrm{stock}_k(u)\cdot\mathrm{stakes}(J,m)/w$.

Moreover, for all $\zeta,\varepsilon>0$ and all large $k$ there is $w$ meeting the condition with $\mathrm{stock}\cdot\mathrm{stakes}/w\le\varepsilon$. The product of the two requirements tends to $0$, because columns and stock grow subexponentially in $\sigma_k$ while $e^{(\sigma_k-\sigma_m)/8}$ grows exponentially.
*Lean:* [`Hearth.peeling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Spices.lean#L64-L68), [`Hearth.seatingM`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L37-L59). *(proofs read; the level-$k$ representation itself is statement only)*

**Lemma 4.14 (chessboard product estimate).** Let $O_i$, $Z_i$ be observables supported in the reference cell of the level-$h$ tiling, with chessboard roots $\|O_i\|\le c_i$ and $\|Z_i-O_i\|\le e_i$, and let $a_i$ be distinct sites of the level-$h$ lattice. Then
$$\Big|\Big\langle\prod_iZ_i(\cdot+a_i)\Big\rangle-\Big\langle\prod_iO_i(\cdot+a_i)\Big\rangle\Big|\le\prod_i(e_i+c_i)-\prod_ic_i.$$
*Sketch:* telescope the product, then apply the chessboard inequality on disjoint cells.
*Lean:* [`GridApprox.tariff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Telescope.lean#L34-L78), applied in [`Hearth.banquet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L63-L80). *(`tariff` statement only; `banquet` proof read)*

*Proof of Proposition III.13.6.*
1. The chessboard bound in the schedule gives, for each $i$, a bound $t_i$ on the chessboard root of $O_{u_i}$ at level $J$ (`closet`).
2. Fix $q>0$. Choose $k$ large and weights $w_i$ by Lemma 4.13, so that each error is $\le q$. The RG identity (Lemma 4.11), applied with the translation invariance of the observables, together with Lemma 4.14 gives a sequence $F_N$ such that, for large $N$, $|F_N-\Psi_N|\le\Phi(q):=\prod(q+t_i)-\prod t_i$. Here $F_N$ is the level-$k$ effective expectation of the product of the translated $g^{(i)}_N$, and it converges by Lemma 4.12.
3. Since $\Phi$ is continuous with $\Phi(0)=0$, one can choose $q$ with $\Phi(q)<\varepsilon/4$. A four-term triangle inequality shows that $(\Psi_N)$ is Cauchy.

*Lean:* [`Hearth.food`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L87-L112), [`Hearth.closet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L82-L84).

**Lemma 4.15 (slicing for large periods).**

*Definition.* *Slicing*$(d,p)$ holds if there are:
- finitely many test shots, admissible at period $p$;
- a constant $a>0$;
- a subspace $U\subset\mathcal L_d$ of codimension $\mathrm{charge}(G,d)$, the dimension of the degree-$d$ Maxwell equation ideal;

such that, for large $N$, $a\|x\|\le\sum_i\|\mathrm{snapshot}_i(N,p)x\|$ for $x\in U$.

*Statement.* Assume that snapshots converge at every fixed period, and that every extraction order has a refinement with projected base data. Then Slicing$(d,p)$ holds for all large $p$. For the bundle of III.13.7 the conclusion takes this form: for each $d$ and all large $p$ there is $\delta>0$ such that Slicing holds for every assignment of shifts with $|s_{N,p}|\le\delta$ eventually.
*Sketch:* By contradiction. A sequence of bad periods defines an extraction order. Along a refinement, finite detection on the range of the limiting projection gives Slicing at all large indices.
*Lean:* [`Harvest.rootwards`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Harvest/Oats.lean#L59-L61), [`Harvest.Slicing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Harvest/Oats.lean#L34-L36), [`Barn.ripe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Harvest/Barn.lean#L27-L30).

**Lemma 4.16 (proof of Proposition III.13.5).** Fix $d,k$ and $p$ beyond the slicing threshold for the levels up to $d+k+1$ (`nourishing`). Then:
1. **Dense set.** On the points of $\Omega^n_p$ whose coordinates lie on the level-$m$ grid for some $m\ge\max\mathrm{ref}$ (a dense set), the lattice correlations converge by III.13.6.
2. **Uniform difference bounds.** Slicing and the Scrim bounds give bounds on lattice differences of order $\le k+1$, uniform in $N$ on compact subsets of $\Omega^n_p$. Hence the correlations and their differences of order $\le k$ are asymptotically equicontinuous there.
3. **Arzelà–Ascoli.** It gives locally uniform convergence to a continuous $g$, and to continuous limits of the difference quotients. These limits are the iterated derivatives of $g$.
4. **Smeared limits.** For admissible tests, the smeared correlations converge by dominated convergence, with domination by the uniform period-$p$ bound.

*Lean:* [`Poppy.blossoms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Fountain.lean#L96-L108), [`Poppy.coveringR`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Fountain.lean#L40-L69), [`Extraction.growFrom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Tame.lean#L35-L97), [`Poppy.nourishing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Sparrow.lean#L42-L48), [`Poppy.mature`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Sparrow.lean#L61-L62). *(proofs read; the difference bounds of step 2 statement only)*

**Lemma 4.17 (analytic dependence of the correlations on the shift).** Fix $d,m$, a large $p$, and labels of degree $\le d$. There is $b'\le r$ such that, for large $N$:
- the lattice correlations, as functions of the complex shift, are uniformly bounded on the disc of radius $b'$;
- so are their lattice differences of order $\le m$, on compact subsets of $\Omega^n_p$.

Vitali's theorem (Lemma 4.9), together with III.13.5 at each real shift, then yields the functions $W_N$ and $f$ of III.13.7.5. A further shrinking of the disc covers the finitely many cutoffs below the threshold. In addition, the effective Boltzmann factors are bounded on the disc, and their integrals are bounded below by a positive constant uniformly in $N$.
*Lean:* [`Beach.inlet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Beach/Rolls.lean#L37-L54), [`Beach.sparksP`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Beach/Under.lean#L43-L63), [`Beach.keep_prefix`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Prefixes.lean#L78-L112), [`Pier.roomR`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Pier/Plates.lean#L68-L87), [`Pier.mounted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Pier/Heath.lean#L28-L50). *(proofs of `sparksP` and `keep_prefix` read; `inlet`, `roomR` and `mounted` statement only)*

### 4.5 Reports

**Lemma 4.18 (the centre is floral).** Assume:
- an arc and the bundle conditions;
- a paid family;
- a disc in the analytic domain, with holomorphic transfer data for all $d,N,p$ with $\mathrm{ref}(d)\le N$;
- the leases and target rates $\le-7/16$;
- the calibration package with $Q\equiv1$, and the priced sup bounds.

Then the member $s=0$ is floral.
*Sketch:* The shooting and analyticity properties come from the arc (Lemmas 4.6, 4.9). For large $p$, the analytic correlation data come from Lemma 4.17.
*Lean:* [`Oasis.survives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Flora.lean#L81-L87).

**Lemma 4.19 (mesh limits along the full sequence).** For a floral family $C$, an extraction order $f$ and a table $T$ with a construction record for $(C,f,T)$, the order (full mesh sequence, periods of $f$) is ordered for $T$.
*Sketch:* At each fixed period there are tables whose smeared limits are taken along the full mesh sequence; they come from Proposition III.13.6 with shift $0$, through `Hearth.slaked`. The record supplies the limit along the mesh subsequence of $f$, and uniqueness of limits identifies the two.
*Lean:* [`Reports.full_tests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Ultraviolet.lean#L50-L58), [`Reports.useFull`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Ultraviolet.lean#L62-L69).

**Lemma 4.20 (assembly of the reports).**
- **III.13.2.** For each extraction order $F$:
  - item 10 of III.13.1 gives $g$, the base data and a seed;
  - the seed gives the cell hypotheses, hence grid approximants and weak systems;
  - `Acme.emanate` gives Maxwell data, infrared data with non-zero $J$, and the UV package;
  - `Acme.glistens` gives a construction record;
  - Lemma 4.19 gives the full-mesh ordering;
  - the OPE services are assembled from the seed, the logarithmic package and the base data.

  The fixed-volume limits come from `Poppy.bravo`.
- **III.13.3.** Apply `all_characters` to the record, and `Prescription.chosen` to the derivative sector.
- **III.13.4.**
  - Coverage gives portfolios along any finer ultrafilter: take the levels $g(k)$ of item 8 of III.13.1, and the limits along $\mathcal U$.
  - The OPE services give the bases $Y_k$ and the convergence of the Gram forms (`attains`, through `tune_grades` and `aligned`).

*Lean:* [`coordination`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L16-L37), [`common`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L41-L60), [`habitat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean#L11-L36), [`fromCoverage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L66-L67), [`attains`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/InContext.lean#L65-L71). *(proofs of the three reports and of `fromCoverage` read; `attains` read to the level of its two inputs)*

**Lemma 4.21 (further inputs of the step package).** All statement only.
- **Connected-activity targets (`lives`).** Take a target with an expense bound. There is $M$ such that for all sides $L\ge M$ and admissible parameters $(\xi<\text{exp},\ \text{rate}+e<\eta<0)$ the target estimate holds for large $x$, with weight $\beta_F(x,L)^e$. It feeds the steepness of the delay schedule (`Cloud.snow`), which is used in Lemma 4.1.
- **Ursell sum (`tangled`).** The Ursell sum over clusters, weighted by the cost of the union of their supports, has budget $b/(1-q)$ (III.5 in the form of III.8).
- **Uniform rate (`basisE`).** For a connected-activity target and large sides there is a rate function such that the cost bounds hold uniformly over tubes, representatives and budget points.
- **Jet realization (`forge`).** Prescribed jets with bump-type coefficients are realized by a family that is holomorphic in the parameter and $C^j$ in the variable, matching the given jets.

*Lean:* [`Linden.lives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Linden/Seasons.lean#L38-L85), [`Copse.tangled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Copse/Spring.lean#L106-L114), [`Concert.basisE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Concert/Vines.lean#L22-L50), [`Lamppost.forge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lamppost/Blossom.lean#L20-L70).

## 5. Where the difficulty lies

- **Two kinds of content.** About two thirds of the code is order-of-choice bookkeeping: Lemmas 4.1–4.5, and the packages with names such as Wren, Wet, Span and Mallow. A written proof should state once a general lemma on monotone choices of constants in a prescribed order, and cite it.
  The genuine analysis is §4.2–4.4:
  - fixed-level convergence by a contraction that is uniform in $N$;
  - Vitali's theorem;
  - the RG identity combined with coarse approximation in the chessboard norm;
  - Arzelà–Ascoli.

  The pivotal estimate is Lemma 4.13. It works because the gain $e^{(\sigma_k-\sigma_m)/8}$ grows exponentially in the scale while all costs grow subexponentially.
- **Stronger than needed downstream.** III.13.5 and III.13.6 give convergence along the *whole* sequence of spacings at fixed volume. The infinite-volume part needs limits only along subsequences, and Lemma 4.19 exploits the stronger statement. The chessboard bound in the schedule likewise holds in the schedule, not merely after extraction.
- **Only for large periods.** The fixed-volume limits with derivatives hold for $p\ge p_0(d,k)$, because slicing (Lemma 4.15) is obtained by a compactness argument over periods.
- **Unused analyticity.** The holomorphic dependence on the shift (III.13.7, items 2, 4, 5) is proved and stated, but no other clause of the headline uses it.
- **Quantifiers.** In `common` and `habitat` the family is quantified after the extraction order. The proof nevertheless gives one family for all orders (III.13.2).
- **Relation to the main theorem.** This family is not the family of `YangMills.constructed` (see the paragraph before §1). The two constructions run in parallel and both exist for every simple $G$ and every $b>0$.
- **Fixed constants.** Support exponent $100$ and target rate $-7/16$ are convenient choices. `havens_log` needs only support exponent $\ge100$, and any constant below $0$ with room would probably do for the rate (probable).

## 6. Notation

| Written proof | Lean | Meaning |
|---|---|---|
| $C$ | [`Family`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L24-L30) | Wilson family: history, holonomy data, label frames, local sections, reference levels, transfer data |
| $\beta_{N,p}$ | `Family.beta` | Wilson coupling at cutoff $N$, period $p$ |
| consistent | [`Family.Makes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62) | selected trajectory, sound sections, stage and stencil conditions, priced bounds, calibrated transfer |
| calibrated | [`Spec.Calibrated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L58-L61) | history generated by a full schedule with per-step estimates |
| $\mathrm{ref}(d)$ | `Family.ref` | reference level of degree $d$ |
| penalty $b$ | `KernelChoices.penalty` | coefficient of the Gaussian block-spin term |
| sheet, rolls, wages, $\theta$, delays, bar, wait, paid | `Sheet`, `Rolls`, `Return.Wages`, `Protection`, `Delays`, `Bar`, `Wait`, `Paid` | constants in the order of choice |
| alloy, factor, directed history | `Alloy`, `Roost.Factor`, `Directed` | a schedule of RG steps with their bounds |
| shooting structure, arc, $r_*$ | `Spire.Uses`, `Upland.Arc`, `Arc.radius` | trajectories ending at $\bar\beta+s$; disc of analyticity |
| shift $s$, assignment $\mathbf s$ | `Orchard.Rose`, `Orchard.Keys`, `Mast.roseA` ($\mathbf s=0$) | real shift of the terminal coupling |
| label-transfer bundle, $C^{\mathbf s}$ | `Mast.Cellar`, `Cellar.yard` | transfer data for all shifts; the family they define |
| floral | `Oasis.Floral`, `Oasis.Spring` | III.13.7 |
| bundle conditions | `Harvest.Barn` | Scrim bounds and scheduled chessboard bound for all shifts; base data at the centre |
| chessboard bound in the schedule | `Extraction.Wcmain` | §1 definition |
| fixed-volume limit with $k$ derivatives | `Poppy.Margins` | III.13.5 |
| slicing | `Harvest.Slicing` | Lemma 4.15 |
| logarithmic OPE package | `OPE.Log.LogPackage` | III.13.1.7 |
| calibrated label steps | `SharpGram.TrueSteps` | III.13.1.7 |
| coverage | `Dense.Coverage` | III.13.1.8 |
| OPE entrance conditions | `Acme.Aroma` | III.13.1.6 |
| grid approximants, weak systems | `Org.Grill`, `East.CompleteWeak` | III.13.1.9 |
| OPE services | `OPE.Facilities` | services of VII.4 with a log package |
| construction record, reconstruction for every phase | `Spec.Final`, `EveryPhase.Almanac`, `EveryPhase.Completed` | II.2, V.3 |
| portfolio | `Weak.Portfolio` | moving-frame probe data along an ultrafilter |
| effective expectation | `Hearth.tasting` | Lemma 4.11 |
| $\mathrm{soft}$, $\mathrm{rad}$, gain | `Camp.soft`, `Camp.rad`, `Bid.gainChart` | $\mathrm{rim}/8$, $\mathrm{rim}/4$, $e^{(\sigma_k-\sigma_m)/8}$ |

## 7. Open points for the writer

1. **Proofs not read.**
   - The constant-choice packages below Lemma 4.1: `uv_commerce` beyond its call to `Roof.uv_timberT`, `sailsV`, `office`, `profiles`.
   - The fitted structure behind Lemma 4.6.
   - The contraction rate and the $\mathrm{soft}^v$ decay in Lemma 4.8.
   - The difference bounds in Lemma 4.16 (`Poppy.offers`, `Fallow.reaped`).
   - `inlet`, `roomR`.
   - The Lacing lemmas.
   - Lemma 4.21.

   The roles of these are traced through their direct users.
2. **Defined elsewhere.** The OPE entrance conditions (`Aroma`: `Economics`, `Note`), the OPE package `Package` that the logarithmic package extends, `Scrim`, the weak systems and the grid approximants are defined in III.11, VII.4 and VIII.1. Their readings here are (tentative).
3. **Two constructions.** III.13 and III.14 build two Wilson families from the same per-step estimates, and only III.14's family reaches `YangMills.constructed`. A written proof could present a single construction with the union of the two lists of properties, or state the headline `habitat` separately. Whether III.14's run also has the full-sequence fixed-volume limit of III.13.5 has not been checked.
4. **`attains`.** It is filed under this unit, but its content is the moving-frame Gram argument of VII.1/VII.3 (`tune_grades`, `aligned`). It should be written there.
5. **The penalty.** $b$ appears only through the kernel choices (`Axial.viable`), where it is the Gaussian block-spin coefficient. Its identification with Balaban's $a$ is (probable).
6. **Unused routes.** [`Reports.ultraviolet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Ultraviolet.lean#L101-L112), [`Oasis.fruition`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Fruition.lean#L33-L41), `offset_tests`, `analytic_tuning_test` and `Poppy.acme` are marked "outside" in OpenAI's usage record. The written proof should follow the route of III.13.1.

**Builds on:** [III.1](III-1.md), [III.10](III-10.md), [I.1](I-1.md), [VIII.1](VIII-1.md), [II.1](II-1.md), [III.9](III-9.md), [III.16](III-16.md), [III.7](III-7.md), [III.5](III-5.md), [III.2](III-2.md), [IV.1](IV-1.md), [III.11](III-11.md), [II.2](II-2.md), [III.3](III-3.md), [III.15](III-15.md), [III.8](III-8.md), [III.6](III-6.md), [V.2](V-2.md), [VII.1](VII-1.md), [VII.4](VII-4.md), [III.4](III-4.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| proof of [`multitude`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Expenditures.lean#L31-L79) | 3,983 |
| proof of [`uv_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130) and the results it chains to | 3,662 |
| proof of [`multitude_foot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Expenditures.lean#L84-L93) | 2,722 |
| work package [`YM/UVExtension/Lamppost/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lamppost), with [`YM/UVExtension/Concert/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Concert), [`YM/UVExtension/Wick/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Wick), [`YM/UVExtension/Payroll/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Payroll) | 1,219 |
| work package [`YM/UVExtension/Wren/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Wren) | 1,058 |
| work package [`YM/UVExtension/Lacing/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing) | 961 |
| work package [`YM/UVExtension/Wet/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Wet) | 820 |
| work package [`YM/UVExtension/Span/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Span) | 819 |
| work package [`YM/UVExtension/Fallow/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Fallow) | 619 |
| work package [`YM/UVExtension/Steady/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Steady) | 578 |
| work package [`YM/UVExtension/Rainfall/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Rainfall) | 530 |
| work package [`YM/UVExtension/Camp/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp), with [`YM/UVExtension/Spire/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire) | 500 |
| work package [`YM/UVExtension/Eyelet/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Eyelet) | 387 |
| work package [`YM/UVExtension/Strata/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Strata) | 365 |
| work package [`YM/UVExtension/Hearth/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth) | 340 |
| work package [`YM/UVExtension/Guild/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Guild) | 327 |
| work package [`YM/UVExtension/Poppy/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy) | 324 |
| work package [`YM/UVExtension/Mast/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Mast) | 259 |
| work package [`YM/UVExtension/Bud/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Bud) | 257 |
| work package [`YM/UVExtension/Whirl/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Whirl) | 234 |
| work package [`YM/UVExtension/Oriel/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oriel) | 233 |
| work package [`YM/UVExtension/Yard/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Yard) | 207 |
| work package [`YM/UVExtension/Dales/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Dales) | 202 |
| work package [`YM/UVExtension/Tabernacle/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Tabernacle) | 199 |
| work package [`YM/UVExtension/Copse/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Copse) | 172 |
| work package [`YM/UVExtension/Crown/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Crown) | 167 |
| work package [`YM/UVExtension/Harvest/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Harvest) | 117 |
| work package [`YM/UVExtension/Forest/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Forest) | 114 |
| work package [`YM/UVExtension/Orchard/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Orchard) | 103 |
| work package [`YM/UVExtension/Linden/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Linden) | 100 |
| proof of [`habitat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean#L11-L36) and the results it chains to | 97 |
| work package [`YM/UVExtension/Rafter/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Rafter) | 91 |
| work package [`YM/UVExtension/Case/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Case) | 77 |
| proof of [`coordination`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L16-L37) | 51 |
| work package [`YM/UVExtension/Gale/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Gale) | 49 |
| work package [`YM/UVExtension/Oasis/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis) | 33 |
| work package [`YM/UVExtension/Free/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Free) | 30 |
| work package [`YM/UVExtension/Upland/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland) | 30 |
| work package [`YM/UVExtension/Above/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Above) | 29 |
| work package [`YM/UVExtension/Beach/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Beach) | 17 |
| work package [`YM/UVExtension/Willow/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Willow) | 7 |
| work package [`YM/UVExtension/Cloud/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Cloud) | 6 |
| work package [`YM/UVExtension/Reports/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports) | 5 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **III.13.1** [`forge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lamppost/Blossom.lean#L20-L70) *(numbered result)* — Prescribed jets given by bump-type data can be realized by a germ holomorphic in the parameter and smooth in the variable, matching the given jets.
- **III.13.2** [`tangled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Copse/Spring.lean#L106-L114) *(key result)* — The full Ursell sum over clusters with union cover satisfies a budget b/(1-q).
- **III.13.3** [`common`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L41-L60) *(key result)* — For simple G and any penalty b>0, one Wilson family simultaneously carries calibration, UV, OPE-margin, log, coverage, reconstruction and completed-phase properties.
- **III.13.4** [`sailsV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Case/Wing.lean#L95-L154) *(main result)* — For a simple gauge and branching kernel choices, there exists a sheet with the given kernel and cost/parameter choices such that for all tariffs and scopes, a sequence of scale parameters makes all required purchased estimates hold.
- **III.13.5** [`habitat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean#L11-L36) *(main result)* — On one Wilson family, with OPE, reconstruction and complete phases, the moving-frame Gram estimates hold and every ultrafilter limit of portfolios converges to the model.
- **III.13.6** [`uv_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130) *(main result)* — For any positive penalty b there is a family with that kernel penalty that is calibrated, satisfies UV and log OPE packages, dense coverage, and extraction base data with Maxwell ranks.
- **III.13.7** [`havens_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/SameFactory.lean#L60-L137) *(key result)* — Under support exponent at least 100, there is a sheet, price map and threshold with kernel K and stage v satisfying the log-purchase conclusion.
- **III.13.8** [`multitude_foot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Expenditures.lean#L84-L93) *(numbered result)* — Existence of a sheet and price map with kernel K satisfying the simultaneous UV/log assembly property.
- **III.13.9** [`survives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Flora.lean#L81-L87) *(key result)* — The floral property survives for the cellar yard built from the rose data at all sides L, for the fixed-volume coarse reference.
- **III.13.10** [`snow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Gale/Pots.lean#L20-L26) *(numbered result)* — There exists a sequence of integers making a steepness condition hold for the given sheet and kernel data.
- **III.13.11** [`lives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Linden/Seasons.lean#L38-L85) *(key result)* — For a connected-activity target with an expense bound, there is a threshold M such that for all sides L≥M and admissible parameters, the target worth estimate holds eventually as x→∞.
- **III.13.12** [`sheaf`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Gale/Flange.lean#L57-L67) *(key result)* — There is a radius a>0 within the analytic domain such that circuits exist for all indices d,N,n with t d ≤ N.
- **III.13.13** [`ticket`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Lights.lean#L74-L78) *(main result)* — Under paid-weight and local-ratio hypotheses, there exist a kinematic path structure with full paths realizing the given endpoint data.
- **III.13.14** [`pocketbook`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Gale/Sheets.lean#L69-L79) *(numbered result)* — Under scale and cost hypotheses, there is a family of banner functions forming a rotor consistent with the tide values and growth conditions.
- **III.13.15** [`profiles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Free/Lease.lean#L171-L182) *(key result)* — For a kernel choice there exist price and rate data such that every compatible sheet admits horizons satisfying rack, retention, sufficiency and report conditions.
- **III.13.16** [`sparksP`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Beach/Under.lean#L43-L63) *(key result)* — There exist a radius b and data W, f forming a shoal of order m on the ball.
- **III.13.17** [`turning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Tides.lean#L103-L116) *(key result)* — There is a path structure with full paths and approximants that converge to a limiting coin sequence satisfying the one-step conditions.
- **III.13.18** [`inlet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Beach/Rolls.lean#L37-L54) *(key result)* — There is a radius b such that turn families are uniformly bounded on a ball for large N, along with bounds on derivatives on compacts.
- **III.13.19** [`uv_commerce`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Case/Trading.lean#L22-L50) *(key result)* — The UV extension theorem: an existence statement for programs, targets and registers with alloys satisfying budget and sheltered conditions at all large levels.
- **III.13.20** [`office`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Clocks.lean#L43-L108) *(key result)* — Parameters can be chosen before learning the data L so that, after L is revealed, only waiting is required and the target mint estimates hold.
- **III.13.21** [`food`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L87-L112) *(key result)* — Under the main-convergence hypothesis, multi-point correlators evaluated at injectively placed lattice locations converge as N tends to infinity.
- **III.13.22** [`compose`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Circles.lean#L13-L47) *(key result)* — Compatible single-scale step data compose into a global multi-scale history with prescribed top-level voice satisfying all step estimates.
- **III.13.23** [`ceilings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Heal.lean#L24-L114) *(key result)* — For a simple gauge and given tolerances, there exist constants such that every horizontal calculation admits choices of rates and cost parameters satisfying the required inequalities.
- **III.13.24** [`repriseQ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Reprise.lean#L45-L258) *(key result)* — A single shared linear column-family step: one scale of the RG recursion maps a voice and column data to a lower-scale one with format, cost and remainder bounds.
- **III.13.25** [`forestation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Wick/Tolls.lean#L27-L61) *(key result)* — Under a rate hypothesis with room below a negative exponent, there exist a constant and a rate-zero function bounding quantities for all configurations in the Bower class, uniformly over tubes and steps.
- **III.13.26** [`antilles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Couplet.lean#L57-L89) *(key result)* — Given a coefficient X at level m with format and remainder bounds, there is a family of solutions down through levels with explicit coefficient and density relations to the played tones.
- **III.13.27** [`colorReady`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Choices.lean#L137-L178) *(key result)* — For a simple gauge, there exist constants such that, along a sequence of scales tending to infinity, the colored recorded data lift to path data with controlled leading terms and estimates.
- **III.13.28** [`roomR`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Pier/Plates.lean#L68-L87) *(key result)* — Denominator observables are uniformly bounded and their integrals are uniformly bounded below by a positive constant for large N.
- **III.13.29** [`basisE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Concert/Vines.lean#L22-L50) *(key result)* — For a connected-activity target, for large side lengths there is a rate function such that smoothness and a ticket exist for all budget points, uniformly in the data.
- **III.13.30** [`rootwards`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Harvest/Oats.lean#L59-L61) *(key result)* — If snapshots converge and every extraction admits a further refinement with projected structure, then the slicing condition at order d holds for all large base scales p.
- **III.13.31** [`acclaim`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Chunk.lean#L34-L138) *(key result)* — A renormalization-group step: given a coefficient configuration at level i+1 satisfying the guard conditions, there exists one at level i compatible with it, with the response and accord estimates.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

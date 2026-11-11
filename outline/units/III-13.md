# III.13. Extension to all labels: one common Wilson family

*Part III — Ultraviolet construction (renormalization group).* 22,100 lines of Lean in 3,224 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is **checked** against the Lean and **edited** in three rounds by three models. It is updated as it improves.


**Part:** III, Ultraviolet construction (renormalization group). **Lean:** [`YM/SharpGram/Common.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean), [`YM/SharpGram/Measured.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean), [`YM/SharpGram/Assembly/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly), [`YM/UVExtension/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension). **Size:** about 22,100 lines in the unit inventory. Principal assembly results: [`multitude`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Expenditures.lean#L31-L79), [`uv_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130), [`multitude_foot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Expenditures.lean#L84-L93).

**Place in the proof.** This unit supplies the ultraviolet construction for [`habitat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean#L11-L36) (Proposition III.13.4). The main theorem [`YangMills.constructed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L40) does not use it.

- The main theorem gets its Wilson family from the construction run of III.14 ([`constructionRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28), [`Run.extractible17`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L60-L90)).
- The two constructions rest on the same per-step estimates (III.1–III.12) and package them differently.

## 1. What this unit proves

- **The constants are chosen once.** One choice of renormalization-group (RG) constants supplies a certified schedule, chessboard bounds, the logarithmic OPE package, coverage, weak comparison systems and extraction data (§4.1).
- **Fixed-volume ultraviolet limits.** On every fixed, sufficiently large torus, the correlation functions of the renormalized observables at separated points converge along the *whole* sequence of lattice spacings, together with their lattice derivatives. Couplings and normalized effective-action readings depend holomorphically on a terminal-coupling shift in a disc independent of the cutoff and period. Transfer data and correlations have the analytic extensions specified in III.13.7 (§4.2–4.4).

**Conventions.**

- $G$ is a compact matrix group with simple nonabelian real Lie algebra ("$G$ simple").
- $b>0$ is the *penalty* of the block-spin kernel. It is the Gaussian block-spin coefficient in the linearized kernel identity. Its comparison with Balaban's notation is left to §7.
- **Levels.** RG levels are $m=0,1,\dots,N$. Level $N$ (the *cutoff*) is the finest lattice, the Wilson end. Level $0$ is the coarsest. The spacings are $a_0=1$ and $a_{m+1}=a_m/L_m$ with odd block sizes $L_m$, and $\sigma_m=\log(1/a_m)$.
- **Tori.** The period index is $p$. The torus $\Lambda_{N,p}$ has spacing $a_N$ and side $\ell_p$.
- **Couplings.** A Wilson family $C$ has a selected RG trajectory with inverse couplings $\beta_m(N,p)$. Its Wilson coupling is $\beta_{N,p}=\beta_N(N,p)$, its value at level $0$ at the centre of the shooting family is the *barrier* $\bar\beta$, and $\hat\beta_m$ is the reference running coupling.
- **Labels and observables.**
  - $\mathcal L_d$ is the space of labels of degree $d$, and $\mathrm{ref}(d)$ is the reference level of degree $d$.
  - $O^{N,p}_v(x)$ is the renormalized lattice observable of a label $v$ at a site $x$ (II.1), and $\langle\cdot\rangle_{N,p}$ is the Wilson expectation at $\beta_{N,p}$.

- **Separated configurations.** $\Omega^n_p=\{x\in(\mathbb R^4)^n:\ x_i\not\equiv x_j \bmod \ell_p\mathbb Z^4 \text{ for } i\neq j\}$. A test function is a complex-valued $C^\infty$ function with compact support in the set of pairwise distinct configurations in $(\mathbb R^4)^n$. It is *admissible at period $p$* if its closed support lies in $(-\ell_p/2,\ell_p/2)^{4n}$; this support is then a compact subset of $\Omega^n_p$.
- **Extraction orders.** An extraction order $f$ is a pair of subsequences (mesh indices, period indices) (II.2), and $f\circ g$ is its refinement by $g$.

*Lean conventions:* [`Test`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Test.lean#L18), [`Extraction.suitable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Patch.lean#L31).

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
   - Stencils fit: $20(|x_i|+1)\le$ side$(N,p)$ for every stencil point $x$ of the degree-$d$ local section, every coordinate $i$, and all $N,p$ with $\mathrm{ref}(d)\le N$.
   - For each basis label, the placed local section is regular on its footprint and has the prescribed derivative bounds with size $\mathrm{columns}_N\,\theta_N^q$, where $q$ is its factor degree and $\theta_N$ is the level-$N$ threshold.
   - The transfer data are calibrated from $\mathrm{ref}(d)$ on.

4. $C$ has the chessboard bound in the schedule.
5. $C$ is *floral*: it is the centre of an analytic shooting family (Proposition III.13.7).
6. $C$ satisfies the three entrance conditions of the OPE:
   - the shell estimates of III.11 for every $d,D,h$ with $D+h=d+4$: there are $t>1$ and $j(i)\to\infty$ with $\sigma_{j(i)}/\sigma_i\to t$ for which the prescribed shell remainder bounds hold, for every choice of labels and extraction order;
   - slow growth of the cover sizes, $\mathrm{cs}_{i+1}^2\le2\,\mathrm{cs}_i^2$, with $(L_i\,\mathrm{cs}_i^2)^4\cdot(\text{vacuum cost})\le\varepsilon\,\sigma_{i+1}$ eventually;
   - a positive auxiliary radius sequence $\rho_i$ satisfying $\log\rho_i/\sigma_i\to-1$.

7. There are coefficient-map bound data $W$, allowance indices $r:\mathbb N\to\mathbb N$ and one-step transfer data $D$ for which two properties hold. Write $K$ for the bound function supplied by $W$.
   - **The logarithmic OPE package.** This contains the transfer and remainder estimates of III.11, quantitative triangular label steps, auxiliary label comparisons, geometric separation bounds, and the sup bounds for products and the additional arity bounds of VII.4. It also gives $L_m\le\hat\beta_m$ and columns$_m$, columns$_{m+1}\le\hat\beta_m$; $r\to\infty$; and support exponent $100$ at every level.
   - **Calibrated label steps.** For each $d,N,p,m$ with $\mathrm{ref}(d)\le m<N$, there is a linear isomorphism $T$ such that, writing $x_{m+1},x_m$ for the coefficient maps,
     $$\|x_m(v)-T(V_{L_m}x_{m+1}(v))\|_1\le\mathrm{barunit}(L_m)\,\|\mathrm{core}(x_{m+1}(v))\|_1\qquad(v\in\mathcal L_d),$$
     where $V_L$ multiplies a component of engineering grade $e$ by $L^{d-e}$. For an input basis vector of engineering grade $e$ and factor degree $q$, its only output component of engineering grade $\le e$ is itself, multiplied by $(\theta_m/\theta_{m+1})^q$. No component of lower factor degree occurs. The map commutes with the core projection and lattice symmetries, preserves the unit, and satisfies $\|T\|_1,\|T^{-1}\|_1\le K(J(m+1))$.

8. *Coverage* holds. There is $g(k)\to\infty$ with $g(k)\le k$ and $a_{g(k)}\le\hat\beta_k\,a_k$ for large $k$ such that, for every $d$ and all large $k$, three probe panels of depth $d$ are poised at level $g(k)$ (VII.1).
9. For every extraction order $F$ satisfying the cell hypotheses (IV.1), the grid approximation property holds at arbitrarily fine fixed levels, for bounded label degrees and the reflection pairs allowed in III.11. Complete weak comparison systems exist for every finite demand and degree horizon, every positive radius bound, and every real-spin structure on the smooth free comparison table.
10. For every extraction order $f$ there are:
    - a refinement $g$;
    - tables $A$, $(L_k)$ and $T$, with a bin $R$ and a derivative plan $E$, forming extraction base data along $f\circ g$ (IV.1);
    - a seed $s$ for $(C,f\circ g,T)$ such that the Maxwell rank condition holds for $T$.

*Status:* theorem. The only hypotheses are $G$ simple and $b>0$.

*Lean:* [`uv_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130). The predicates, in the order of the items: [`Spec.Calibrated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L58-L61), [`Family.Makes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62), [`Oasis.Floral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Flora.lean#L55-L71), [`Acme.Aroma`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Ozone.lean#L16-L19), [`LogPackage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Log/Plans.lean#L29-L33), [`TrueSteps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Matrix/Leading.lean#L29-L32) with [`CalibratedStep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Matrix/Leading.lean#L19-L27), [`Dense.Coverage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Passes.lean#L16-L24), [`Org.Grill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L121-L123), [`East.CompleteWeak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L35), [`Next.Extract.Base`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L42-L51), [`Spec.Seed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26), [`Maxwell.Ranks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L135-L139). The engineering rescaling and leading map are [`Bid.vowel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L63) and [`Heading.leads`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/LocalDebt.lean#L77-L81).

**Proposition III.13.2 (the coordinated family).** Let $G$ be simple and $b>0$. There is one Wilson family $C$ with the following properties:

- it has kernel penalty $b$ and is consistent, calibrated and floral;
- it has the chessboard bound in the schedule;
- it has the fixed-volume limits of III.13.5;
- it has the logarithmic OPE package and the calibrated label steps;
- it has coverage;
- it has complete weak comparison systems along every extraction order satisfying the cell hypotheses.

In addition, for **every** extraction order $F$ there are a refinement $g$ and a table $T$ such that:

- (a) the ordered limit holds for $T$ along the *full* mesh sequence and the period subsequence of $F\circ g$;
- (b) the OPE services of VII.4 hold for $(C,F\circ g,T)$;
- (c) a construction record of II.2 for $(C,F\circ g,T)$ exists.

*Status:* theorem. The family is chosen before $F$.

*Lean:* [`coordination`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L16-L37), [`Extraction.Order.Ordered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L32-L35), [`OPE.Facilities`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/ElementaryLog.lean#L12-L13), [`Spec.Final`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73).

**Proposition III.13.3 (the common family, all phases).** Let $G$ be simple, $b>0$, and let $f$ be an extraction order. There are a family $C$, a refinement $g$, a table $T$, a construction record $F$ for $(C,f\circ g,T)$ and a reconstruction record $\mathcal A$ for every phase of $F$ (V.3) such that:

- everything listed in III.13.2 holds for $(C,f\circ g,T)$;
- the reconstruction is *completed* for every phase: Wightman realization, surjective comparison maps to the Osterwalder–Schrader Hilbert spaces, unique vacuum, light-cone and heat-kernel bounds uniform over the phases, trivial commutant, the continued stress tensor, continuous dependence of boundary correlations on the phase, and the barycentre identities;
- the derivative sector of $F$ has a prescription $P$ giving the OPE estimates for all fixed finite cluster trees and the corresponding estimates with separated spectators (VII.4). These estimates allow an arbitrary positive power loss.

*Status:* theorem. In the statement $C$ is quantified after $f$. The proof takes $C$ from III.13.2, so in fact one family serves all $f$.

*Lean:* [`common`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L41-L60), [`EveryPhase.Completed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L51-L71), [`EveryPhase.Almanac`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L117-L132), [`OPE.AllShapes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Subpower.lean#L39-L45).

**Proposition III.13.4 (headline: moving-frame Gram limits on the common family).** Let $G$ be simple, $b>0$, and let $f$ be an extraction order. There are $C,g,T,F,\mathcal A,P$ as in III.13.3 with all of its conclusions. In addition, coverage holds at the cutoff of $F$, and the following holds for every ultrafilter $\mathcal U$ on $\mathbb N\times\mathbb N$ finer than the filter of $f\circ g$ ("period index large, then mesh index large") and every depth $D$:

1. *Moving-frame portfolios* of depth $D$ along $\mathcal U$ exist. A portfolio consists of:
   - levels $k'=k'(k)\to\infty$ with $k'\le k$ and $a_k\le a_{k'}\le\hat\beta_k\,a_k$ for all sufficiently large $k$;
   - three probe panels poised at level $k'$ for all sufficiently large $k$;
   - label matrices having limits along $\mathcal U$ for all sufficiently large $k$.

2. For every portfolio $X$ there are linear isomorphisms $Y_k(d)$ from the degree-$d$ field space of the free Maxwell table onto that of $T$ ($d\le D$, $k\in\mathbb N$), with the following properties.
   - For all sufficiently large $k$, they respect the grading through depth $D$.
   - For each $d\le D$, the Gram forms expressed in these bases are bounded and coercive uniformly for all sufficiently large $k$.
   - For each $d\le D$, there is $q_d\in\mathbb N$ such that, for every sufficiently large $k$ and every field $x$, there are representatives $v$ and $v_{N,p}\to v$ along $\mathcal U$, projecting to $x$, whose source costs at level $k$ are eventually at most $\hat\beta_k^{q_d}a_k^d\|Y_k(d)^{-1}x\|$. Conversely, there is $K_d\ge0$ such that every convergent family of representatives with source cost at most $z$ along any nontrivial filter finer than $\mathcal U$ satisfies $\|Y_k(d)^{-1}x\|\le K_da_k^{-d}z$. Both assertions hold for all sufficiently large $k$.
   - For every $d\le D$, the Gram form of $X$ at step $k$, read in the basis $Y_k(d)$, converges as $k\to\infty$ to the Gram form of the free Maxwell model in degree $d$.

*Status:* theorem; headline declaration. In the statement $C$ is quantified after $f$, as in III.13.3.

*Lean:* [`habitat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean#L11-L36), [`Weak.Portfolio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L35-L49), [`PricedIn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/InContext.lean#L29-L37). *(proof of the wrapper read)*

**Proposition III.13.5 (fixed-volume limit with $k$ derivatives).** Let $C$ be as in III.13.1, and fix $d,k\in\mathbb N$. For all sufficiently large periods $p$ (the threshold depends on $d$ and $k$), every $n$, and all labels $v_1,\dots,v_n$ of degrees $\le d$, there is a function $g$ on $(\mathbb R^4)^n$ such that, as $N\to\infty$ along the whole sequence:

1. $g$ is continuous on $\Omega^n_p$. The lattice correlation functions $x\mapsto\langle\prod_iO^{N,p}_{v_i}(x_i)\rangle_{N,p}$, extended periodically and then as step functions using coordinatewise ceiling projection onto $(a_N\mathbb Z^4)^n$, converge to $g$ uniformly on compact subsets of $\Omega^n_p$.
2. For every word $u$ of at most $k$ coordinate directions, the step-function extensions of the normalized forward differences converge to $\partial_ug$ uniformly on compact subsets of $\Omega^n_p$. The same limit is obtained by multilinear interpolation of any fixed word of normalized coordinate differences with positive integer step lengths and fixed integer stencil offsets, including forward, backward and centred differences.
3. On $\Omega^n_p$ these iterated directional derivatives exist: $\partial_a(\partial_ug)=\partial_{(a,u)}g$ whenever the word $u$ has length $<k$.
4. For every test function $t$ admissible at period $p$, $tg$ is integrable and $a_N^{4n}\sum_r t(r)\,\langle\prod_iO^{N,p}_{v_i}(r_i)\rangle_{N,p}\to\int tg$, where the sum is over the centred representatives of the torus lattice.

*Status:* theorem.

*Lean:* [`Poppy.Margins`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Fountain.lean#L16-L21), [`Poppy.bravo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Summit.lean#L19-L22), [`Poppy.blossoms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Fountain.lean#L96-L108).

**Proposition III.13.6 (convergence at separated lattice points).** Let $C^{\mathbf s}$ be a member of the shooting family of III.13.7. At a fixed period $p$, assume:

- its shifts converge, $s_{N,p}\to s$ as $N\to\infty$, with $|s|<r_*$;
- $C^{\mathbf s}$ has the chessboard bound in the schedule;
- the slow-growth, label-transfer and remainder bounds hold (these are supplied by the bundle of III.13.7 for every assignment of shifts).

Let $J\in\mathbb N$, let $u_1,\dots,u_I$ be labels with $\mathrm{ref}(\deg u_i)\le J$, and let $o_1,\dots,o_I$ be pairwise distinct sites of the level-$J$ lattice of the period-$p$ torus. Then the sequence
$$\Psi_N=\Big\langle\prod_{i=1}^IO^{N,p}_{u_i}(o_i)\Big\rangle_{N,p},$$
with $o_i$ read as sites of $\Lambda_{N,p}$, converges as $N\to\infty$.
*Status:* theorem. For the family of III.13.1, $\mathbf s\equiv0$.

*Lean:* [`Hearth.food`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L87-L112).

**Proposition III.13.7 (the family is the centre of an analytic shooting family).** For the family $C$ of III.13.1 there are:

- a schedule with its per-step data;
- a shooting structure with an arc;
- a label-transfer bundle;
- reference levels $\mathrm{ref}$;

such that the following holds.

1. *Shooting.* There is $r_*>0$, depending only on the schedule, such that for all $N,p$ and every real $s$ with $|s|<r_*$ there is exactly one Wilson coupling whose trajectory under the fixed recursion stays in the prescribed scalar coupling bands and reaches $\bar\beta+s$ at level $0$. For an assignment $\mathbf s=(s_{N,p})$ of real shifts with $|s_{N,p}|<r_*$, let $C^{\mathbf s}$ be the Wilson family with these trajectories and the labels, sections and reference levels of the bundle. Then $C=C^{\mathbf 0}$.
2. *Analyticity, uniform in the cutoff.* For $m\le N$, the level-$m$ coupling $\beta_m(N,p;s)$ and the normalized activity readings of the level-$m$ effective action extend holomorphically to $|s|<r_*$. They are bounded there by $3\hat\beta_m$ and by $\mathrm{soft}=\mathrm{rim}/8$ respectively. For fixed $m,p$ they converge as $N\to\infty$, with all derivatives in $s$, locally uniformly on the disc.
3. *Bounds.* $C$ satisfies the calibration package (with constant allowance) and the priced sup bounds. For every assignment $\mathbf s$, $C^{\mathbf s}$ satisfies the label-transfer and remainder bounds and has the chessboard bound in the schedule. Extraction base data exist at the centre.
4. *Analytic transfer data.* There is $a>0$, with its disc contained in the shooting domain, on which the bundle has holomorphic coefficient and transfer data for all $d,N,p$ with $\mathrm{ref}(d)\le N$. In particular, the inverse terminal label maps extend holomorphically there.
5. *Analytic correlations.* Fix $d,m$. For all large $p$, every $n$ and labels of degree $\le d$, there are $b'>0$ and functions $W_N(z,x)$, holomorphic in $|z|<b'$, and $f(z,\cdot)$ on $(\mathbb R^4)^n$ such that:
   - $W_N(s,\cdot)$ is the lattice correlation function of $C^{\mathbf s}$ whenever $s_{N,p}=s$ (for every $N$ with $\mathrm{ref}(\deg v_i)\le N$ for all $i$);
   - for every complex $z$ in the disc, $f(z,\cdot)$ has continuous iterated coordinate derivatives through order $m$ on $\Omega^n_p$. The step-function differences and interpolated differences converge to these derivatives, with all derivatives in $z$, uniformly on products of compact subsets of the disc and $\Omega^n_p$. At every real shift these limits agree with the fixed-volume limit of the constant-shift family;
   - for admissible $t$, $z\mapsto\int t\,f(z,\cdot)$ is holomorphic, and the smeared lattice correlations converge to it, with all derivatives in $z$, locally uniformly.

*Status:* theorem (part of III.13.1). The full-mesh ordered limits in §4.5 use the real shooting trajectories and the bounds of item 3; they do not use the analytic correlation limits of item 5.

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
  - The calibration package [`Chateau`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Almandine.lean#L24-L36). It includes a certified schedule, consistency, transfer and remainder estimates, the chessboard bound in the schedule, and extraction base data, seeds and Maxwell ranks after refinement of every extraction order.
  - The priced sup bounds [`Velour`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Bonus.lean#L34-L36).
  - The OPE entrance [`Acme.emanate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L31-L37).
  - The weak comparison systems [`sponsored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L38-L51).
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

- **Balaban's block-spin renormalization** for lattice gauge theory (Balaban, CMP 95–122, 1984–89; Dimock, *The renormalization group according to Balaban I–III*). The convergence statements of §4.2–4.4 use the per-step estimates together with stability of the chosen recursion.
- **Shooting by contraction** (Banach fixed point), uniform in the cutoff.
- **Vitali's convergence theorem** (Vitali–Porter). Locally bounded holomorphic functions that converge on a real segment converge locally uniformly, with all derivatives. The Lean proof maps into $\ell^\infty(\mathbb N;Y)$ and applies the identity principle to the closed subspace of convergent sequences.
- **Arzelà–Ascoli**, in the form: asymptotic equicontinuity on compacts together with convergence on a dense set gives locally uniform convergence.
- **Dominated convergence.**
- **Chessboard estimates** for reflection-positive measures (Fröhlich–Israel–Lieb–Simon 1978; Glimm–Jaffe, ch. 10).
- **Ultrafilters.**

**Imported constants and assumptions.** The statements of III.13.1–III.13.4 have no hypotheses beyond $G$ simple and $b>0$. The one-loop slope $\kappa_G$ enters the coupling-shift estimate (Lemma 4.3) through the hypothesis the annulus calculation, which III.7 proves for every simple $G$. The construction fixes the following constants:

- the stage data: first stage $4$, Taylor order $6+i$, power $2+i$, and support exponent $100$ at level $i$;
- the allowances $Q\equiv1$ (for the floral property) and $Q_2(j)=j+1$ (for the OPE iteration);
- auxiliary data $(40,1,1)$;
- a bar parameter $2$;
- the target rate $-7/16$ of the factor.

The analytic argument uses $\mathrm{soft}=\mathrm{rim}/8<1$, $\mathrm{rad}=\mathrm{rim}/4$ and the gain $e^{(\sigma_k-\sigma_m)/8}$.

## 3. Strategy

**The order of choice.** Each estimate of III.9–III.12, and each requirement of the later parts (OPE with logarithmic corrections, coverage, weak comparison), has the form "there is a threshold beyond which the property holds". It is also stable under further raising: in the preorders on delays, waits and wages, and under decreasing the protection. Successive raises meet the finitely many requirements while preserving this order: sheet → block sizes → wages → protection → delays → bar → wait.

Increasing stage parameters (Taylor order $6+i$, power $2+i$) accommodate the countably many label degrees: degree $d$ is required only from its fixed reference level $\mathrm{ref}(d)$ onwards.

**Shooting and convergence at a fixed level.**

1. The family is the member $s=0$ of a one-parameter family in which the terminal coupling at level $0$ is $\bar\beta+s$. For each cutoff $N$ the trajectory is found by shooting: it is the fixed point of a contraction with rate $1/2$, uniformly in $N$.
2. This uniformity, the convergence of the background fields and coupling shifts at each level (Lemma 4.7), and an $\mathrm{soft}^v$ decay of the influence of levels far above $m$ together give convergence, as $N\to\infty$ along the whole sequence, of the coupling and the effective action at any fixed level $m$, for every real $s$ in the shooting disc (Lemma 4.8).
3. Holomorphic extension in $s$ to a disc independent of $N$ and $p$, with uniform bounds, and Vitali's theorem upgrade this to locally uniform convergence of all derivatives in $s$ on the disc (Lemma 4.9).

**From the effective action to correlations.** A correlation of renormalized observables at distinct points is handled in three steps.

1. **RG identity.** For a function of the level-$k$ variables, its conditional average through the block-spin kernels has Wilson expectation equal to its expectation in the level-$k$ effective measure. That measure converges as $N\to\infty$ (Lemmas 4.11–4.12).
2. **Coarse approximation.** Each fine renormalized observable is close to the conditional average of a level-$k$ observable whose coefficients converge as $N\to\infty$. The error is measured in the chessboard norm and is small for $k$ large, because the gain $e^{(\sigma_k-\sigma_m)/8}$ beats the subexponential growth of the costs (Lemma 4.13).
3. **Product estimate.** The chessboard product inequality turns these one-point approximations into an approximation of the product (Lemma 4.14).

A Cauchy argument then gives Proposition III.13.6. Proposition III.13.5 follows by Arzelà–Ascoli: there is convergence on the dense set of grid points of all levels, and there is equicontinuity from uniform bounds on lattice differences of order $k+1$. Those bounds need a non-degeneracy ("slicing") of the label snapshots, which is known only for large periods, so the fixed-volume statement holds for $p$ large. The reports then feed this family to the OPE entrance, reconstruction and Gram machinery defined in other units.

Balaban's estimates are used only through the per-step package; what this unit adds is the analysis just described and the order of choice.

## 4. Steps

### 4.1 Choosing the constants once

**Lemma 4.1 (the step package with all later constants raised).** Let $G$ be simple. Fix the purchased sheet, prices, numerical bounds, scope, tariffs and block-size floor of Lemma 4.2, and assume that, for every stage pair $i\le j\le i+1$ with $i$ beyond the first stage and every $d+3\le i$, the local-section and nonconstant-label expansion costs are bounded by the supplied budget at stage $j$. Let $PB,P_2:\mathbb N\to\mathbb N$ be arbitrary allowance sequences. There is a floor $f\ge v_0$ on the block sizes such that, for every block-size sequence $L\ge f$, the following holds.

- Block-size rolls $D$ exist.
- For every roll $D$ there is a wage threshold $U$. For every wage $w\ge U$, postage data, exchange data and insertion tariff, there is a post-cost $P$.
- For every sequence $\theta_0:\mathbb N\to\mathbb R$ with $\theta_0(i)>0$ for all $i$, there is a protection sequence $\theta\le\theta_0$.
- For all menus, auxiliary data and delays $T_0$ there is an ordered delay $V\ge T_0$ such that the following holds for every delay $Y\ge V$, every bar, every wait $I$ and every level system $a$ paid by $I$ whose spacing schedule has the divisor property. There are a directed history $B$ on the given level system $a$ and a set of per-step data $R$ for this schedule, with the prescribed wages, exchange, menu and auxiliary data, postage rates bounded by the requested rates, the prepared insertion data, and:
  - label-transfer bounds and connected-activity bounds for iteration;
  - target rates $\le-7/16$;
  - repeated-insertion bounds for both allowances;
  - startup and smallness data for shooting;
  - continuity bounds for a single RG step;
  - fixed-level limits of the kinematic coupling shifts and paths;
  - covariance comparison data.

*Sketch:* The per-step estimates are supplied in the required order of choice. Successive delay raises add the later requirements. Each raise is a lemma "there is $V'\ge V$ such that every $Y\ge V'$ has the property". Raise the entry-coupling threshold pointwise by taking its maximum with the shooting threshold. Every subsequent delay increase preserves the preceding estimates.

*Lean:* [`multitude`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Expenditures.lean#L31-L79), [`uv_commerce`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Case/Trading.lean#L22-L50). *(proof of `multitude` read; `uv_commerce` read only as far as its call to `Roof.uv_timberT`)*

**Lemma 4.2 (the purchased sheet).** Let $G$ be simple, $K$ kernel choices for which every patch branches, and $v$ stage data satisfying the following conditions:

- first stage $\ge4$;
- Taylor orders monotone and $\ge\max(6,i)$;
- powers monotone and $\ge\max(2,i)$;
- support exponents monotone and positive.

For every two allowance sequences there are a sheet with kernel $K$ and stage data $v$, prices, a budget sequence and a bound $W$, chosen before the tariffs and scopes. For every tariff and scope there is then a block-size floor above the sheet floor such that Lemma 4.1 applies to every larger block-size sequence.

*Sketch:* Choose the sheet using three inputs:

- the kinematic constant issuer: pre-$L$ constants chosen so that, once $L$ is revealed, only waiting is needed and the target estimates hold;
- the horizon theorem: horizon data for every sheet with kernel $K$;
- the kinematic convergence of Lemma 4.7.

Then apply Lemma 4.1.

*Lean:* [`multitude_foot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Expenditures.lean#L84-L93), [`sailsV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Case/Wing.lean#L95-L154), [`office`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Clocks.lean#L43-L108), [`profiles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Free/Lease.lean#L171-L182). *(proof of `multitude_foot` read; the others statement only)*

**Lemma 4.3 (the one-loop running of the marginal coupling).** Let $G$ be simple. Fix kernel choices, a stage $J$, a colour direction, positive tolerances $\varepsilon,w,\delta$, and nonnegative $D,Z,C,Z'$. There are $\kappa\ge0$ and $s>0$ with the following property. For all $\tau,\mathrm{pace}>0$ and $A\ge0$ satisfying the annulus calculation of III.7 with parameters $(G,w,\varepsilon,D,Z,\tau,A)$, there are:

- $d\ge0$ and $\gamma>0$;
- an integer $u$;
- functions $\beta(L)$ and $\Lambda_0(L)$;

such that every sequence of step data with stage $J$, block size $L\ge u$, diverging coarse side lengths, and the comparison hypotheses of III.7 admits the following data. Those hypotheses include input and output covariance strip bounds, input path bounds, admissible forests and charts, spectral gap and criticality estimates, heat bounds, direct clip bounds $Z,Z'$, a positive gap parameter and amplitude $\Lambda\ge1$. The output consists of:

- background path data $Y$;
- a number $\alpha$, the shift of the marginal coupling read from the actual quadratic form of the step in a colour direction, with
$$|\alpha+\kappa_G\log L|+1\le d;$$

- equality of the classical Taylor coefficients through order $4$, and a finite-volume thermal comparison estimate. For every $\Theta\ge\beta(L)$ and $c'\le\gamma$, on a coarse torus with $\nu$ sites in each coordinate, the second derivatives differ by at most $\nu^4\Theta e^{-c'\nu}$ on the prescribed unit-bounded wave probes. The output path has its announced bounds whenever $0<\eta'\le s$, $A'\ge\kappa$ and $\Lambda'\ge\max(\Lambda_0(L),\mathrm{pace}\,\Lambda)$.

The annulus calculation supplies a comparison quadratic form whose coupling shift differs from $-\kappa_G\log L$ by a constant independent of $L$. Its conclusion applies to all odd $L$ beyond a threshold under the input path, covariance, floor and compatibility assumptions of III.7.

*Sketch:* $\alpha$ is compared with the coupling shift of the annulus comparison form, and the two bounds are added. The constant $d$ is chosen before $L$, so the error is bounded uniformly in $L$.

*Lean:* [`ceilings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Heal.lean#L24-L114), [`colorReady`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Choices.lean#L137-L178), [`HorizCalc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L20-L23). *(the part of the proof of `ceilings` that bounds $\alpha$ read; `colorReady` statement only)*

**Lemma 4.4 (the bundle and the joint offers).** Let $G$ be simple, $K$ kernel choices for which every patch branches, $v$ satisfying the stage conditions of Lemma 4.2 and having support exponents $\ge100$, and $Q,Q_2:\mathbb N\to\mathbb N$ monotone with values $\ge1$. There are:

- a sheet with kernel $K$ and stage data $v$;
- prices, a budget sequence and a bound $K'$;
- a floor $\tau\ge\mathrm{floor}_L$;

such that for every block-size sequence $k\ge\tau$ rolls exist, and the following holds through the quantifier chain of Lemma 4.1. In that chain the waits receive one more raise $Z$, of readiness, minimal length and window. Every level system paid by this raised wait and satisfying the divisor property then carries:

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
- complete weak comparison systems exist for every extraction order.

*Sketch:* Lemma 4.2 supplies the schedule. Increase the block-size floor to ensure $\mathrm{rate}(L)(1+2\,\mathrm{columns})\,\mathrm{orbitCost}\le\mathrm{barunit}(L)$, then construct the bundle. The relay supply and a further wait increase give weak comparison systems. The leases and target rates give the common disc for holomorphic transfer.

*Lean:* [`havens_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/SameFactory.lean#L60-L137), [`jointOffers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L36-L66), [`Gale.sheaf`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Gale/Flange.lean#L57-L67). *(proof of `jointOffers` read; statement and opening of `havens_log` read)*

**Lemma 4.5 (instantiation).** Proposition III.13.1 follows from Lemma 4.4 with the following choices.

- **Kernel.** The kernel choices have penalty $b$ (III.1). The stage data are $(4,\,6+i,\,2+i,\,100)$, and the allowances are $Q\equiv1$, $Q_2(j)=j+1$.
- **Block sizes.** Take the maximum of the floor of Lemma 4.4 and the relay floor.
- **Post-$L$ data.** The menu is canonical, the auxiliary data are $(40,1,1)$, the wage is the threshold itself, and $\theta_0\equiv1$.
- **Delays.** Zero delays are raised by the geometric delay bound and the logarithmic delay bound; the latter gives $L_m$, columns $\le\hat\beta_m$.
- **Bar and wait.** A bar above the delays with parameter $2$ is chosen. A wait with slim window is thickened by the slim-window theorem so that it carries a certified station port, then joined with the wait of Lemma 4.4. The schedule existence theorem gives a paid level system.

Then:

- coverage follows from the certified station port;
- floral from Lemma 4.18;
- the OPE entrance conditions from the shell estimate, the slow growth of cover sizes and the radius asymptotics;
- the logarithmic package is assembled from the label-transfer and remainder bounds, the priced bounds, the calibrated steps, the budget, $r\to\infty$ (from the depth of the fits) and support exponent $100$.

*Lean:* [`uv_log`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130), [`Axial.viable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L137-L142).

### 4.2 Shooting, and the limit at a fixed level

**Lemma 4.6 (shooting).** Let $r_*>0$ be the radius of the arc; it depends only on the schedule. For all $N,p$ and real $|s|<r_*$:

- there is exactly one $\beta\in\mathbb R$ for which the fixed startup and step recursion has a trajectory staying in all prescribed scalar bands and satisfying $\beta_N=\beta$, $\beta_0=\bar\beta+s$;
- the realized trajectory satisfies the band and step conditions at every level, and its level-$0$ coupling is $\bar\beta+s$;
- $\beta$ is the value at $s$ of the holomorphic function $\beta_N(N,p;\cdot)$.

*Lean:* [`Arc.exists_trial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland/Plinth.lean#L71-L75), [`Oasis.spring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Flora.lean#L51-L53), [`Spire.Uses`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Spark.lean#L37-L41). *(the wrappers read; existence and uniqueness come from the fitted structure, statement only)*

**Lemma 4.7 (kinematic convergence at each level).** Fix a paid level system, the horizon and chart data, a colour direction, the small positive pulse parameter, the one-step kinematic estimates and the limiting covariance data supplied by Lemma 4.2. There are background paths and coupling shifts $\alpha_N(m)$ satisfying all kinematic step estimates such that, for every level $m$:

- $\alpha_N(m)$ converges as $N\to\infty$;
- there are a limiting background path and $w_m$ strictly larger than the level-$m$ width such that, for every $u<w_m$, the path coefficients converge in the exponentially weighted sum norm of width $u$. Their path supports agree with those of the limit for all sufficiently large $N$.

*Lean:* [`Reward.work item`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Lights.lean#L74-L78), [`Reward.turning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Tides.lean#L103-L116). *(proof of `work item` read; `turning` statement only)*

**Lemma 4.8 (ultraviolet convergence at a fixed level, real shifts).** Fix the shooting structure and assume its one-step continuity property and the kinematic convergence of Lemma 4.7; both are supplied by the arc. For every real $s$ in the analytic domain, every level $m$ and every period $p$, two quantities converge as $N\to\infty$ along the whole sequence: the effective activities at level $m$, and the level-$m$ coupling data of the trajectory ending at $\bar\beta+s$.

*Sketch:*

1. **Contraction.** The trajectory with cutoff $N$ is the fixed point of a map on coupling sequences. Its $k$-th iterate from $0$ lies within $\mathrm{rad}\cdot2^{1-k}$ of the fixed point, uniformly in $N$.
2. **Stability.** If the level-$(m+1)$ data converge as $N\to\infty$, so do the level-$m$ data and the claimed coupling shift of the step. By induction on $k$, every iterate therefore converges level by level. The coupling shifts converge by Lemma 4.7.
3. **Decay of far-ultraviolet influence.** The level-$m$ activities depend on the levels above $m+v$ only up to $\mathrm{soft}^v$ with $\mathrm{soft}<1$, uniformly in $N$.
4. **Conclusion.** An $\varepsilon/4$ argument closes each step: in a complete space, a sequence that can be approximated uniformly by convergent sequences converges.

*Lean:* [`Camp.artistry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Pear.lean#L70-L71), [`Camp.climb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Pear.lean#L62-L68), [`Camp.income`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Pear.lean#L31-L35), [`Camp.Sign`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Buckles.lean#L40-L41), [`Camp.trim`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Buckles.lean#L43-L49). *(proof read; the contraction rate and the $\mathrm{soft}^v$ decay are taken from statements)*

**Lemma 4.9 (Vitali, and analyticity uniform in the cutoff).** Let $r>0$ and let $F_N$ be holomorphic on $|z|<r$ with values in a complex Banach space, uniformly bounded, and convergent at every real $z\in(-r,r)$. Then there is a holomorphic $f$ on the disc such that every iterated derivative of $F_N$ converges to that of $f$, locally uniformly. The lemma applies to $\beta_m(N,p;\cdot)$ (bounded by $3\hat\beta_m$) and to the normalized level-$m$ activity readings (bounded by $\mathrm{soft}$). With Lemma 4.8 this gives III.13.7.2.

*Lean:* [`Camp.viva`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Veto.lean#L64-L69), [`Camp.SummitUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Veto.lean#L62), [`Arc.uv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland/Plinth.lean#L62-L70).

### 4.3 Renormalized observables

**Lemma 4.10 (label transfer).** Fix the shooting structure, coefficient bundle and reference levels of Lemma 4.4.

- **Coefficient data.** For each degree $d$, period $p$, level $i$, cutoff $N$ and shift $s$, the bundle provides the coefficient data of the degree-$d$ renormalized observables at level $i$.
- **Bounds.** For every assignment of shifts, degree $d$ and level $m\ge\mathrm{ref}(d)$, the coefficient histories satisfy the supplied transfer and remainder bounds. Also $d+3\le J(\mathrm{ref}(d))$.
- **Continuity in the shift.** If the shifts at period $p$ converge to $s$, the level-$i$ data converge for $i\ge\mathrm{ref}(d)$.
- **Transfer data.** The transfer data of $C^{\mathbf s}$ are read from these coefficient data and are calibrated from $\mathrm{ref}(d)$ on.
- **Composition.** In a selected history with sound local sections, bounds on the coefficient maps and their inverses, and compatible one-step transfer estimates at every $r\le m<N$, a valid top coefficient at level $N$ extends to a multiscale history down to $r$. It retains that top coefficient and satisfies the one-step transfer, remainder and matching identities. The one-step construction transports a prescribed coefficient; downward induction composes it across the required levels.

*Lean:* [`Mast.Cellar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Mast/Rig.lean#L29-L37), [`Cellar.gate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Mast/Rig.lean#L59), [`Lacing.compose`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Circles.lean#L13-L47), [`repriseQ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Reprise.lean#L45-L258), [`acclaim`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Chunk.lean#L34-L138), [`antilles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Couplet.lean#L57-L89). *(`Cellar` definition read; the Lacing lemmas statement only)*

### 4.4 Correlations at fixed volume

**Lemma 4.11 (the RG identity).** Let the history be selected, $m\le N$, and $F$ a bounded measurable function of the level-$m$ configuration. Let $B_{N\to m}F$ be its conditional average obtained by iterating the block-spin kernels from level $m$ to level $N$. Then
$$\big\langle B_{N\to m}F\big\rangle_{N,p}=\frac{\int\rho_{m,N,p}(U)F(U)\,d\mathrm{Haar}(U)}{\int\rho_{m,N,p}(U)\,d\mathrm{Haar}(U)},$$
where $\rho_{m,N,p}$ is the effective density with its field-independent scalar factor removed.

*Sketch:* Iterating the one-step density identity gives the effective measure at level $m$. Duality with the conditional averaging kernels and equality of partition functions give the formula; the removed scalar factor cancels in the ratio.

*Lean:* [`Hearth.scaledK`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Dine.lean#L42-L52), [`Hearth.tasting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Dine.lean#L40), [`GridApprox.back`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L21-L22), [`GridApprox.backTo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L24-L25).

**Lemma 4.12 (convergence of the effective measure at a fixed level).** Fix the arc and its coefficient bundle. At a fixed period $p$, let the shifts satisfy $s_{N,p}\to s$ with $s$ real in the disc. If $F_N$ are bounded measurable functions of the level-$m$ configuration and form a uniformly Cauchy sequence, then the level-$m$ effective expectations of $F_N$ converge as $N\to\infty$.

*Sketch:* The effective densities with their scalar factors removed converge uniformly, by stability of the trajectory family. Their integrals have a uniform positive lower bound. The effective expectations are ratios of convergent integrals.

*Lean:* [`Hearth.arrival`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Dine.lean#L65-L72), [`Hearth.seating`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Dine.lean#L58-L62), [`strippedOn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Trail.lean#L82-L84), [`zPositive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Trail.lean#L85-L97), [`Mast.signs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Forest/Coda.lean#L47-L52). *(proof of `arrival` read; the three inputs statement only)*

**Lemma 4.13 (coarse approximation of renormalized observables).** Fix the arc and coefficient bundle. At period $p$, assume the shifts converge to a real shift in the shooting disc, and assume the transfer and remainder estimates and slow-growth bounds of III.13.6. Let $J\le m\le k$, with $\mathrm{cs}_m^2\le a_J/a_m$. Require enough separation for the supports of the degree-$d$ coarse observables: $2(a_kr_d+\mathrm{tail}_k)<a_J$, where $r_d$ is their fixed support radius and $\mathrm{tail}_k=30a_k(J(k)+5)$ bounds the reach of the later kernels. Let $u$ be a degree-$d$ label with $\mathrm{ref}(d)\le m$, and let $w>0$ satisfy
$$w\,a_m^{-d}\cdot4(1+\mathrm{columns}_k)\,e^{-(\sigma_k-\sigma_m)/8}\le\tfrac12\,\mathrm{fly}_{d,m}.$$
Then there are level-$k$ observables $g_N=\sum_jc_j(N)\,\Lambda_j$ with the following properties:

- the $\Lambda_j$ are fixed level-$k$ observables, and the coefficients $c_j(N)$ converge as $N\to\infty$;
- for large $N$, the chessboard root, at level $J$, of $B_{N\to k}g_N-O^{N,p}_u(0)$ is at most $\mathrm{stock}_k(u)\cdot\mathrm{stakes}(J,m)/w$.

For fixed $d,m,J,u$ and every $\zeta,\varepsilon>0$, all sufficiently large $k$ admit $w>0$ with $wa_m^{-d}4(1+\mathrm{columns}_k)e^{-(\sigma_k-\sigma_m)/8}\le\zeta/2$ and $\mathrm{stock}_k(u)\mathrm{stakes}(J,m)/w\le\varepsilon$. Apply this with $\zeta=\mathrm{fly}_{d,m}$. The product of the two requirements tends to $0$, because columns and stock grow subexponentially in $\sigma_k$ while $e^{(\sigma_k-\sigma_m)/8}$ grows exponentially.

*Lean:* [`Hearth.peeling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Spices.lean#L64-L68), [`Hearth.seatingM`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L37-L59). *(proofs read; the level-$k$ representation itself is statement only)*

**Lemma 4.14 (chessboard product estimate).** Assume the Wilson measure satisfies the reflection-positivity and translation properties for the level-$h$ tiling. Let $O_i,Z_i$ be bounded measurable observables supported in its reference cell, with chessboard roots $\|O_i\|\le c_i$ and $\|Z_i-O_i\|\le e_i$, and let $a_i$ be distinct sites of the level-$h$ lattice. Then
$$\Big|\Big\langle\prod_iZ_i(\cdot+a_i)\Big\rangle-\Big\langle\prod_iO_i(\cdot+a_i)\Big\rangle\Big|\le\prod_i(e_i+c_i)-\prod_ic_i.$$

*Sketch:* Expand $Z_i=O_i+(Z_i-O_i)$ and subtract the term containing only the $O_i$. Apply the chessboard inequality to each remaining product on distinct cells; summing gives the displayed bound.

*Lean:* [`GridApprox.tariff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Telescope.lean#L34-L78), applied in [`Hearth.banquet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L63-L80). *(`tariff` statement only; `banquet` proof read)*

*Proof of Proposition III.13.6.*

1. The chessboard bound in the schedule gives, for each $i$, a bound $t_i$ on the chessboard root of $O_{u_i}$ at level $J$.
2. Fix $q>0$. Choose $k$ large and weights $w_i$ by Lemma 4.13, so that each error is $\le q$. The support separation makes conditional averaging commute with the product of translated coarse observables. The RG identity (Lemma 4.11) and the chessboard product estimate (Lemma 4.14) then give a sequence $F_N$ such that, for large $N$, $|F_N-\Psi_N|\le\Phi(q):=\prod(q+t_i)-\prod t_i$. Here $F_N$ is the level-$k$ effective expectation of the product of the translated $g^{(i)}_N$, and it converges by Lemma 4.12.
3. Since $\Phi$ is continuous with $\Phi(0)=0$, one can choose $q$ with $\Phi(q)<\varepsilon/4$. The triangle inequality through two terms of the convergent approximating sequence shows that $(\Psi_N)$ is Cauchy.

*Lean:* [`Hearth.food`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L87-L112), [`Hearth.closet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L82-L84).

**Lemma 4.15 (slicing for large periods).**

*Definition.* *Slicing*$(d,p)$ holds if there are:

- finitely many test shots, admissible at period $p$;
- a constant $a>0$;
- a subspace $U\subset\mathcal L_d$ of codimension $\mathrm{charge}(G,d)$, the dimension of the degree-$d$ Maxwell equation ideal;

such that, for large $N$, $a\|x\|\le\sum_i\|\mathrm{snapshot}_i(N,p)x\|$ for $x\in U$.

*Statement.* Assume a fixed presentation identifying the finite-cutoff kernels of the label projections with the transported Maxwell equation ideals. Suppose every admissible snapshot at every fixed period converges, and every extraction order has a refinement with base data whose projections agree with this presentation. Then Slicing$(d,p)$ holds for all large $p$. For the bundle of III.13.7 the conclusion takes this form: for each $d$ and all large $p$ there is $\delta>0$ such that Slicing holds for every assignment of shifts with $|s_{N,p}|\le\delta$ eventually.

*Sketch:* By contradiction. A sequence of bad periods defines an extraction order. Along a refinement, finite detection on the range of the limiting projection gives Slicing at all large indices.

*Lean:* [`Harvest.rootwards`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Harvest/Oats.lean#L59-L61), [`Harvest.Slicing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Harvest/Oats.lean#L34-L36), [`Barn.ripe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Harvest/Barn.lean#L27-L30).

**Lemma 4.16 (proof of Proposition III.13.5).** Fix $d,k$ and $p$ beyond the slicing threshold for the degrees up to $d+k+1$. Use the arc and bundle hypotheses of Lemma 4.4, zero shifts, and labels of degree $\le d$. Then:

1. **Dense set.** On the points of $\Omega^n_p$ whose coordinates lie on the level-$m$ grid for some $m\ge\max\mathrm{ref}$ (a dense set), the lattice correlations converge by III.13.6.
2. **Uniform difference bounds.** Slicing and the label-transfer bounds give bounds on lattice differences of order $\le k+1$, uniform in $N$ on compact subsets of $\Omega^n_p$. Hence the correlations and their differences of order $\le k$ are asymptotically equicontinuous there.
3. **Arzelà–Ascoli.** It gives locally uniform convergence to a continuous $g$, and to continuous limits of the difference quotients. These limits are the iterated derivatives of $g$.
4. **Smeared limits.** For admissible tests, the smeared correlations converge by dominated convergence, with domination by the uniform period-$p$ bound.

*Lean:* [`Poppy.blossoms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Fountain.lean#L96-L108), [`Poppy.coveringR`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Fountain.lean#L40-L69), [`Extraction.growFrom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Tame.lean#L35-L97), [`Poppy.nourishing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Sparrow.lean#L42-L48), [`Poppy.mature`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Sparrow.lean#L61-L62); difference bounds: [`Fallow.reaped`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Fallow/Plow.lean#L66-L70). *(proofs read through the stated transfer estimates)*

**Lemma 4.17 (analytic dependence of the correlations on the shift).** Assume the arc, bundle bounds, paid schedule, analytic transfer disc, leases and target rate bound of Lemma 4.18. Fix $d,m$, a period $p$ with slicing stable for all degrees through $d+m+1$ for sufficiently small shifts, and finitely many labels of degree $\le d$. There is $b'>0$ such that, for all sufficiently large $N$, the lattice correlations extend holomorphically to $|z|<b'$. On every compact subset of $\Omega^n_p$, their lattice differences through order $m$ have bounds uniform in $N$ and $z$ throughout this disc. At arbitrary lattice configurations the bound supplied at each cutoff may depend on $N$.

*Sketch:* Slicing gives uniform real difference bounds through one higher order. The analytic transfer estimates and complex correlation bounds permit the Banach-valued Vitali argument on each separated compact set. The resulting limits have the spatial derivatives and smeared limits of III.13.7.5. Shrinking the disc once more incorporates every cutoff at which all reference levels fit. At each fixed level and period, the normalized effective densities have bounded holomorphic extensions; after shrinking the disc, the moduli of their partition integrals are bounded away from zero uniformly over the allowed cutoffs.

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

*Sketch:* At each fixed period there are tables whose smeared limits are taken along the full mesh sequence; they come from Proposition III.13.6 with shift $0$, through the fixed-period smearing theorem. The record supplies the limit along the mesh subsequence of $f$, and uniqueness of limits identifies the two.

*Lean:* [`Reports.full_tests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Ultraviolet.lean#L50-L58), [`Reports.useFull`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Ultraviolet.lean#L62-L69).

**Lemma 4.20 (assembly of the reports).**

- **III.13.2.** For each extraction order $F$:
  - item 10 of III.13.1 gives $g$, the base data and a seed;
  - the seed gives the cell hypotheses, hence grid approximants and weak comparison systems;
  - the OPE entrance theorem gives Maxwell data, infrared data with non-zero $J$, and the UV package;
  - the reconstruction assembly theorem gives a construction record;
  - Lemma 4.19 gives the full-mesh ordering;
  - the OPE services are assembled from the seed, the logarithmic package and the base data.

  Proposition III.13.5 supplies the fixed-volume limits.

- **III.13.3.** Apply the every-phase reconstruction theorem to the record, and the coherent-prescription theorem to the derivative sector.
- **III.13.4.**
  - Coverage gives portfolios along any finer ultrafilter: take the levels $g(k)$ of item 8 of III.13.1, and the limits along $\mathcal U$.
  - The OPE services give the bases $Y_k$ and the convergence of the Gram forms (the Gram comparison theorem, through the grading theorem and the Gram limit theorem).

*Lean:* [`coordination`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L16-L37), [`common`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L41-L60), [`habitat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean#L11-L36), [`fromCoverage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L66-L67), [`attains`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/InContext.lean#L65-L71). *(proofs of the three reports and of `fromCoverage` read; `attains` read to the level of its two inputs)*

**Lemma 4.21 (further estimates used in choosing the step constants).**

- **Connected-activity targets.** Take a target with an expense bound. There is $M$ such that for every side $L\ge M$, $W,\mu>0$, $a\ge0$, indices $j,k,N$, $0\le\xi<\mathrm{exp}$ and $e>0$ with $\mathrm{rate}+e<\eta<0$, the prescribed connected-activity estimate holds for all sufficiently large $x$, with weight $\beta_F(x,L)^e$ and every target order with parameter $W$. This bound supplies the steepness requirement in Lemma 4.1.
- **Ursell sum.** Assume the support compatibility tests, nonnegative weights, a nonnegative support exponent, the cluster-expansion readiness bound with $0\le q<1$, and a rooted input budget $B_0$. The averaged marked Ursell sum over clusters, weighted by the cost of the union of their supports, has budget $B_0/(1-q)$ (III.5 in the form of III.8).
- **Uniform rate.** For a connected-activity target there is a side threshold such that, after fixing a larger side, a branching patch, cutoff function, positive $W,\mu$, arity and order bounds, $0<c<\mathrm{exp}$ and $e>0$ with $\mathrm{rate}+e<\gamma<0$, there is a rate function $\vartheta(x)$ with $|\vartheta(x)|\le\beta_F(x,L)^{\gamma+\varepsilon}$ eventually for every $\varepsilon>0$. Eventually in $x$, it bounds the prescribed analytic costs uniformly over admissible tubes, representatives and budget points with exponent at most $c$ and the specified order, power, threshold and radius bounds.
- **Jet realization.** Let the real variable space be finite dimensional, and fix a point $x$ and jet order $j$. Suppose a determining parameter set carries $C^j$ germs at $x$, and the prescribed jet coefficients extend holomorphically along every holomorphic curve in the parameter domain, agreeing with those germs on the determining set. There is a family of $C^j$ germs at $x$ realizing these coefficients throughout that domain, holomorphic along such curves together with its jets through order $j$.

*Lean:* [`Linden.lives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Linden/Seasons.lean#L38-L85), [`Copse.tangled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Copse/Spring.lean#L106-L114), [`Concert.basisE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Concert/Vines.lean#L22-L50), [`Lamppost.forge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lamppost/Blossom.lean#L20-L70).

## 5. Where the difficulty lies

Fixed-level convergence requires control of arbitrarily many ultraviolet levels. The contraction estimate and the $\mathrm{soft}^v$ bound give two uniform approximations by convergent sequences. For correlations, Lemma 4.13 balances exponentially improving coarse approximation against subexponential coefficient costs; the chessboard inequality then controls products.

The derivative limit holds only for sufficiently large periods, with threshold depending on the degree and derivative order. Slicing gives a lower bound on a subspace of the required dimension. The plain smeared limit, used in Lemma 4.19, holds at every fixed period.

The coupling and activity analyticity holds in one disc for all cutoffs and periods. The analytic correlation disc may depend on the finite label family and the period. The construction fixes support exponent $100$ and target rate $-7/16$; no alternative rate is asserted here.

The family in III.13.2 is chosen before the extraction order. III.13.3 and III.13.4 state a weaker quantifier order, but their proofs use that same choice. The main theorem follows the separate construction route of III.14; equality of the families produced by the two routes is not asserted.

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
| label-transfer bundle, $C^{\mathbf s}$ | `Mast.Cellar`, `Cellar.yard` | coefficient and transfer data for every shift assignment; the associated family |
| floral | `Oasis.Floral`, `Oasis.Spring` | III.13.7 |
| bundle conditions | `Harvest.Barn` | Scrim bounds and scheduled chessboard bound for all shifts; base data at the centre |
| chessboard bound in the schedule | `Extraction.Wcmain` | §1 definition |
| fixed-volume limit with $k$ derivatives | `Poppy.Margins` | III.13.5 |
| slicing | `Harvest.Slicing` | Lemma 4.15 |
| logarithmic OPE package | `OPE.Log.LogPackage` | III.13.1.7 |
| calibrated label steps | `SharpGram.TrueSteps` | III.13.1.7 |
| coverage | `Dense.Coverage` | III.13.1.8 |
| OPE entrance conditions | `Acme.Aroma` | III.13.1.6 |
| grid approximants, weak comparison systems | `Org.Grill`, `East.CompleteWeak` | III.13.1.9 |
| OPE services | `OPE.Facilities` | services of VII.4 with a log package |
| construction record, reconstruction for every phase | `Spec.Final`, `EveryPhase.Almanac`, `EveryPhase.Completed` | II.2, V.3 |
| portfolio | `Weak.Portfolio` | moving-frame probe data along an ultrafilter |
| effective expectation | `Hearth.tasting` | normalized expectation against the effective density with its scalar factor removed |
| $B_{N\to m}$ | [`GridApprox.backTo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L24-L25) | iterated conditional averaging through the block-spin kernels |
| $V_L$ | [`Bid.vowel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L63) | engineering rescaling by $L^{d-e}$ on grade $e$ |
| $\mathrm{stock}_k(u)$ | [`stockK`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/South/Dine.lean#L27) | coefficient bound with subexponential growth in $\sigma_k$ |
| $\mathrm{stakes}(J,m)$ | [`stakes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Strudel.lean#L21) | fixed-scale chessboard comparison cost |
| $\mathrm{fly}_{d,m}$ | [`Bandage.fly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Stove.lean#L37) | positive allowance in the label-transfer estimate |
| $\mathrm{soft}$, $\mathrm{rad}$, gain | `Camp.soft`, `Camp.rad`, `Bid.gainChart` | $\mathrm{rim}/8$, $\mathrm{rim}/4$, $e^{(\sigma_k-\sigma_m)/8}$ |

## 7. Open points for the writer

1. **Quantitative packages.** The shell estimates in the OPE entrance condition, the full transfer, remainder, sup and weak comparison bounds, and the one-step comparison assumptions in Lemma 4.3 retain their contracts from III.7, III.11 and VII.4. Their complete expansion into conventional notation remains to be written there. The summaries here do not replace those contracts.
2. **Proofs not fully checked.** The detailed constant issuers underlying Lemmas 4.1–4.4, the fitted recursion behind Lemma 4.6, the contraction and far-level decay estimates in Lemma 4.8, the one-step label estimates behind Lemma 4.10, and the auxiliary estimates in Lemma 4.21 are used as stated. Their internal proofs have not all been checked. The difference estimate in Lemma 4.16 is traced through slicing and the transfer bounds; its preceding one-step estimates remain inputs.
3. **Two construction routes.** No identification of the families from III.13 and III.14, or transfer of III.13.5 to the III.14 family, is established here. A common witness satisfying both lists would require a separate argument.
4. **Moving-frame estimates.** The basis construction and its comparison with the free Gram form belong to VII.1/VII.3. Lemma 4.20 uses those estimates; their proofs are not reproduced here.
5. **The penalty.** Its role as the Gaussian block-spin coefficient is fixed by the kernel choices. Its precise normalization relative to Balaban's parameter $a$ has not been verified.
6. **Other reports.** [`Reports.ultraviolet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Ultraviolet.lean#L101-L112), [`Oasis.fruition`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Fruition.lean#L33-L41) give additional reports. They are not needed for the assembly of III.13.1–III.13.4. The same applies to the offset and analytic-tuning test wrappers and the separate fixed-volume existence theorem.

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

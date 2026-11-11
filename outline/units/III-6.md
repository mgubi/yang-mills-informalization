# III.6. The stationary branch: background field of the effective action

*Part III — Ultraviolet construction (renormalization group).* 21,329 lines of Lean in 2,681 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is **checked** against the Lean and rewritten by a second model; a final editing round is in progress. It is updated as it improves.


**Part:** III, Ultraviolet construction (renormalization group). **Lean:** the work items F01–F05 are stated in [`YM/Bid/Station.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean) and F06–F09 in [`YM/Bid/Craft.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean). Their proofs are in [`YM/Work/F01`–`F09`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work). The other packages are: the uniform branch [`YM/Push/STATIONARY_UNIFORM/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM); the jet port [`YM/Planned/STATIONARY_JET_PORT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT); and the iteration step [`YM/Extra/ITERATION_NO_LOSS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS). The automatic classification also attaches the following packages to this unit: [`YM/Planned/PRIMARY_INTEGRAL_295/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295), [`YM/Further/PHYSICAL_PERIOD_LIMIT_F933/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933), [`YM/Planned/ATOM_REGULAR_ESTIMATE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_REGULAR_ESTIMATE), [`YM/Next/ROTATIONS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS) and [`YM/Next/WARD_BIN/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/WARD_BIN). **Size:** 21,329 lines in the main-theorem closure. Of these:
- the F work items F01–F09 with their auxiliary files: about 3,800;
- the uniform branch: 3,274;
- the jet port: 1,123;
- the iteration step: 1,700;
- the primary-integral package: 3,662;
- the period-limit comparison: 1,262;
- the atom regularity estimate: 474;
- the rotation and Ward material: about 5,900, including the chain of results leading to `outer`.

## 1. What this unit proves

**Setting.** These conventions are read off from the Lean; the definitions are in III.1.

*Lattices, group, distance.*
- One renormalization step goes from a fine torus $\Lambda_f$ to a coarse torus $\Lambda_c$, with an odd block factor $L$ and $f=Lc$, in dimension $4$.
- $G$ is the gauge group and $\mathfrak g$ its Lie algebra, normed in physical colour coordinates.
- $\mathrm{chord}(U)=\Vert U-1\Vert/c_G$ and $\mathrm{price}(U)=\tfrac12\mathrm{chord}(U)^2$. With this normalization $\mathrm{price}(e^{tX})=\tfrac12t^2|X|^2+o(t^2)$; the price is the Wilson plaquette function up to a constant.

*The step datum $S$.* It consists of:
- a block-spin kernel, with penalty $\kappa>0$, from the kernel choices $K$;
- a patch, with order $J$ and macro-radius $R_S=(J+7)L$;
- a finite set of tags (frame and path choices; [`StepData.Choices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L34));
- for each tag $k$, a predictor $U\mapsto Q_k(U)$ from fine configurations to coarse configurations.

$P$ denotes the derivative of the predictor at the identity. It acts on fine $\mathfrak g$-valued $1$-forms; it is the linearized block average plus a gradient correction at the block roots. $\bar Q$ denotes the linearized block average alone.

*"Larger".* $S$ is *larger* ([`Larger`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L64)) if three conditions hold:
- the gauge fixing and the predictor are well posed (unique minimizing frame and predictor; [`Branches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185));
- $100R_S\le f$;
- $c>1$.

*Forests and the axis chart.*
- A *forest* $H$ is a spanning forest of the fine torus, made of one tree in each block, rooted at the block centre ([`Forest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L24-L29)). Its bonds are the *tree bonds*, all internal to blocks; the remaining bonds are the *free bonds* $H^{\rm fr}$.
- The *replica* $\mathcal R(V)$ of a coarse configuration $V$ puts $V_{(i,\mu)}$ on every fine bond that leaves block $i$ in direction $\mu$, and $1$ on bonds internal to a block. Its linearization is $\iota$.
- The *axis chart* has coordinates $x\in\mathfrak g^{\text{coarse bonds}}$ and $a\in\mathfrak g^{H^{\rm fr}}$. It describes the fine field
$$U^H(x,a)_e=e^{a_e}\,\mathcal R(e^{x})_e\quad(e\in H^{\rm fr}),\qquad U^H(x,a)_e=1\quad(e\ \text{a tree bond}).$$

*Clip and path datum.*
- A *clip* $p$ carries the Wilson coefficient $c_p>0$.
- A *path datum* $W$ ([`PathData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L150-L154)) consists of:
  - a series $\ell_W(U)_\pi=\sum_i w_i\,\mathrm{slot}_i(U)$ of parallel-transported plaquette variables, attached to each plaquette $\pi$;
  - loop atoms, cubic atoms and quartic atoms: $\mathrm{Ad}$-invariant polynomials of degree $2,3,4$ in such slot values.
- *Bounds* $(p,\sigma,C,\Lambda)$ for $W$ ([`Bounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L173-L185)) mean four things:
  - the coefficients are summable with weight $e^{\sigma\cdot\mathrm{length}}$, with sums at most $C$ (cubic, quartic, $\ell$-rows) and $\Lambda$ (loop atoms);
  - the atoms are $\mathrm{Ad}$-invariant;
  - a normalization of the quadratic symbol;
  - two vanishing moments of the loop atoms.

*The tested action.*
- The *main term* ([`mainTerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L27-L28)) is the average over the finite group $\mathcal S$ of lattice symmetries:
$$\mathcal M_p(W;U)=\frac1{|\mathcal S|}\sum_{s\in\mathcal S}\Big[\sum_\pi\big(c_p\,\mathrm{price}(U_\pi)+\tfrac12|\ell_W(U)_\pi|^2\big)+\sum_x\sum_i\big(\mathrm{cub}_i+\mathrm{quart}_i\big)(U)_x\Big]\circ s .$$
- The *tested action* for tag $k$ ([`tested`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L81-L84)) is
$$\mathcal T^H_k(x,a)=\mathcal M_p\big(W;U^H(x,a)\big)+\kappa\sum_{b}\mathrm{price}\big(e^{x_b}\,Q_k(U^H(x,a))_b^{-1}\big),$$
where $b$ runs over the coarse bonds. The second term is the block-spin penalty.

*Beds, towers and the quadratic identities.*
- A *bed* $B$ ([`Bed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L35-L40)) is a family of translation-invariant kernels on plaquette $2$-forms: a metric $M_B$, its inverse, a diagonal, and roots $R_B$. Set $K_B=d^\top M_Bd$, which acts on $1$-forms.
- A *floor* $(a,A)$ for $B$ ([`Floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68)) includes:
  - the root identity $M_B=c_p\,1+R_B^\top R_B$;
  - symmetry of $M_B$;
  - the bounds $a|\omega|^2\le\langle\omega,M_B\omega\rangle\le A|\omega|^2$.
- $W$ is *attached* to $B$ if the coefficients of $\ell_W$, summed by offset and plaquette type, are the entries of $R_B$. $B$ is *sworn* if $\langle dA,M_BdA\rangle$ is $\mathcal S$-invariant.
- *Towers* $T$ for the pair of beds $(B,C)$ ([`Towers.Diagonal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L82-L86)) provide a linear map $\mathcal W$ from coarse $1$-forms to fine $1$-forms. Its first clause, [`Inputs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L76-L79), is
$$K_B\mathcal W=\bar Q^\top K_C,\qquad \bar Q\mathcal W=1-\kappa^{-1}K_C .$$
- $\widehat{\mathcal W}_H=\mathcal W+d_0\chi_H$ is the linearized gauge transform of $\mathcal W$ that vanishes on tree bonds ([`extracted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L26-L27)).
- $\mathrm{rel}_H(x)=(\widehat{\mathcal W}_Hx-\iota x)|_{H^{\rm fr}}$ ([`relative`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L93-L95)).

*Critical branch.* A *critical branch* for $(H,p,W)$ ([`Critical`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L88-L91)) is a map $\rho$ from coarse fields to $\mathfrak g^{H^{\rm fr}}$ such that:
- $\rho(0)=0$ and $\rho$ is real-analytic at $0$;
- for every tag $k$, $\mathcal T^H_k$ is jointly analytic at $0$;
- for every tag $k$, $D_a\mathcal T^H_k(x,\rho(x))=0$ for $x$ near $0$.

*Chart ratio and thermal function.*
- A *local chart ratio* $P$ ([`LocalRatio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L28-L38)) is a density $J_P$ on a ball $\{|X|<r_P\}\subset\mathfrak g$, with the following properties:
  - $J_P$ is positive and real-analytic, with $J_P(0)=1$;
  - $\exp$ is injective on the ball;
  - $\exp_*\big(s_PJ_P(X)\,dX\big)$ is normalized Haar measure on $\exp(\{|X|<r_P\})$.

  The standard choice is $J_P(X)=\det\big((1-e^{-\mathrm{ad}X})/\mathrm{ad}X\big)$; only the listed properties are used.
- The *thermal function* of a branch ([`thermal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L46-L49)) is
$$\Theta^H_k(x)=\mathrm{loop}_W\big(U^H(x,\rho(x))\big)+\tfrac12\log\det\mathrm{Hess}_a\mathcal T^H_k(x,\rho(x))-\sum_{e\in H^{\rm fr}}\log J_P(\rho(x)_e).$$
  The Hessian is taken in the orthonormal colour basis.

**Proposition III.6.1 (second-order jet of the tested action on the tree slice; F03).** Let $S$ be larger, $H$ a forest and $B$ a bed with a floor $(a,A)$ on $\Lambda_f$ for the clip $p$. Let $W$ be a path datum with bounds $(p,\sigma,C,\Lambda)$, attached to $B$, with $B$ sworn on $\Lambda_f$. Assume that the main term of $W$ is analytic along analytic families through the identity (true by III.6.2). Then for every tag $k$, $\mathcal T^H_k$ is real-analytic at $0$, with $\mathcal T^H_k(0)=0$ and $D\mathcal T^H_k(0)=0$. Moreover, for all $(x,a),(x',a')$,
$$D^2\mathcal T^H_k(0)\big[(x,a),(x',a')\big]=\langle ds,\,M_B\,ds'\rangle+\kappa\,\langle x-Ps,\;x'-Ps'\rangle,\qquad s=\iota x+a,\ s'=\iota x'+a'.$$
Here $a$ is extended by $0$ to tree bonds, and the pairings are summed over plaquettes or coarse bonds and over colours.
*Status:* theorem. Only the well-posedness clause of "larger" is used.
*Lean:* [`Bid.F03`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L78-L81), with conclusions [`Prismatic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L47) and [`Comptroller`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L42-L45); proof [`Work.F03.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L159-L175).

**Proposition III.6.2 (analyticity of the main term; F02).** Let $W$ have bounds $(p,\sigma,C,\Lambda)$. Let $X$ be a finite-dimensional real normed space and $x_0\in X$. Let $y\mapsto A(y)$ be a family of fine configurations with $A(x_0)=1$ whose link matrices are real-analytic at $x_0$. Then $y\mapsto\mathcal M_p(W;A(y))$ is real-analytic at $x_0$. The proof does not use $A(x_0)=1$: the main term is analytic along analytic families at every point.
*Status:* theorem. It supplies the hypothesis [`Fires`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L59-L62) of III.6.1.
*Lean:* [`Bid.F02`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L73), [`Work.F02.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02.lean#L141-L143).

**Proposition III.6.3 (gap of the vertical Hessian; F01).** Assume the shell comparison E02 (§2). Fix $G$, $L$, $J$, kernel choices $K$ with penalty $\kappa$, and $a>0$. Then there is $\eta>0$ with the following property. Take sides $c,f$; a larger step datum $S$ with kernel choices $K$, block factor $L$ and order $J$; a forest $H$; a bed $B$ with floor $(a,A)$ for some $A$; a clip $p$; and a path datum $W$ such that every $\mathcal T^H_k$ is analytic at $0$ with the second jet of III.6.1. Then for every tag $r$ and every $v\in\mathfrak g^{H^{\rm fr}}$,
$$\eta\sum_{e\in H^{\rm fr}}|v_e|^2\le D_a^2\mathcal T^H_r(0,0)[v,v].$$
One may take
$$\eta=\frac{\min(a,\kappa)}{1+\beta+\gamma},\qquad \beta=2C_{\rm E02}^2\,L^4\cdot4\cdot6\,|X|^2,\qquad \gamma=2L^4,$$
where:
- $C_{\rm E02}=C_{\rm E02}(G,L,J,K)$ is the constant of E02;
- $X$ is the lattice box of radius $R_S=(J+7)L$;
- the factors $L^4$, $4$ and $6$ are the numbers of fine sites per block, of axes and of plaquette orientations.

So $\eta$ depends only on $(G,L,J,K,a)$. It does not depend on $c$, $f$, $H$, $B$ beyond its floor, or $W$.
*Status:* theorem, conditional on E02 in its statement. E02 is proved in III.10 ([`Work.E02.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E02.lean#L132-L244)), and the combination is unconditional in III.6.6.
*Lean:* [`Bid.F01`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L68-L71), with conclusion [`PriceGap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L100-L101); proof [`Work.F01.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L266-L311).

**Proposition III.6.4 (existence, tangent and value of the critical branch; F04).** Let $S$ be larger, $H$ a forest, $B,C$ beds, $p$ a clip, $W$ a path datum, $a>0$, and $T$ towers for $(S,B,C)$ satisfying the diagonal identities. Assume:
- every $\mathcal T^H_k$ is analytic at $0$;
- $\mathcal T^H_k$ has the second jet of III.6.1 with bed $B$;
- the gap of III.6.3 holds with constant $a$;
- $C$ has a floor on $\Lambda_c$ (this hypothesis is not used).

Then there is a critical branch $\rho$ for $(H,p,W)$ such that:
- (ii) $D\rho(0)=\mathrm{rel}_H$, built from the tower map $\mathcal W$;
- (iii) for every tag $k$, $x\mapsto\mathcal T^H_k(x,\rho(x))$ is analytic at $0$, and its second derivative at $0$ is $\langle dx,M_C\,dx'\rangle$. Equivalently, its $2$-jet is that of $\tfrac12\langle dx,M_Cdx\rangle$.

Of the diagonal identities, only the clause $K_B\mathcal W=\bar Q^\top K_C$, $\bar Q\mathcal W=1-\kappa^{-1}K_C$ is used.
*Status:* theorem. It gives a germ only: no control of the size of the neighbourhood.
*Lean:* [`Bid.F04`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L86-L90), with conclusions [`Critical`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L88-L91), [`Guessed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L97-L98) and [`HeatG`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L83-L84); proof [`Work.F04.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L149-L159).

**Proposition III.6.5 (independence of the gauge-fixing forest; F05).** Let $S$ be larger, $H,H'$ forests, and $W$ a path datum with bounds $(p,\sigma,C,\Lambda)$. Let $\rho,\rho'$ be critical branches for $H$ and $H'$. Let $b>0$ be a gap constant for $H'$; the Lean also assumes a gap for $H$, which is not used. Let $P$ be a local chart ratio. Then for every tag $k$, for $x$ near $0$:
- (i) $\mathcal T^H_k(x,\rho(x))=\mathcal T^{H'}_k(x,\rho'(x))$;
- (ii) $\Theta^H_k(x)=\Theta^{H'}_k(x)$.

The Lean statement of (ii) allows an additive constant; the proof gives the constant $0$.
*Status:* theorem.
*Lean:* [`Bid.F05`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L94-L99), [`Work.F05.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05.lean#L60-L67), [`Work.F05.same_thermal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05.lean#L42-L57).

**Proposition III.6.6 (the stationary scene: F01–F04 combined, unconditionally).** For every $G$, $L$, $J$, kernel choices $K$ and $a>0$ there is $\eta>0$ with the following property. Take a larger $S$ with these parameters; a forest $H$; beds $B,C$; clips $p,q$; a path datum $W$; and towers $T$. Assume:
- $T$ satisfies the diagonal identities for $(S,B,C)$;
- $B$ has a floor $(a,\cdot)$ on $\Lambda_f$ and $C$ a floor on $\Lambda_c$;
- $W$ has bounds $(p,\sigma,C_0,\Lambda)$ and is attached to $B$;
- $B$ is sworn.

Then the gap of III.6.3 holds with constant $\eta$, and there is a critical branch with properties (ii)–(iii) of III.6.4.
*Status:* theorem. [`Bid.cospons`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L108-L113) derives it from E02 and F01–F04. [`Integrated.stationary_scene`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L229-L232) instantiates it with the proofs of E02 and F01–F04, so it carries no hypothesis.
*Lean:* [`Bid.Scene`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L102-L106).

**Proposition III.6.7 (the branch on a volume-independent ball).**

*(a) Uniform implicit function theorem.* Let $f$ be a function on $\mathbb R^{\iota\sqcup\tau}$ whose coordinates are labelled by lattice sites, with at most $K$ coordinates per site. Use the sup norm. Assume that on the ball of radius $r$, $f$ is real-analytic and has localized derivatives up to order $N\ge3$:
$$\big|\partial_{q_1}\cdots\partial_{q_k}f\big|\le C\,e^{-a\sum_i\mathrm{dist}(q_j,q_i)}\qquad\text{for every }j.$$
Assume also that $\nabla_\tau f(0)=0$ and that the $\tau\tau$-block of the Hessian at $0$ is $\ge m$. Then there are explicit radii $r_{\rm hor}\le r_{\rm zone}$, functions of $(K,C,a,r,m)$ only, and a map $g$ with $g(0)=0$, such that for every $\Vert x\Vert_\infty<r_{\rm hor}$:
- $g$ is analytic at $x$;
- $\Vert g(x)\Vert_\infty\le r_{\rm zone}/2$;
- $g(x)$ is the unique critical point of $f(x,\cdot)$ in $\{\Vert v\Vert_\infty\le r_{\rm zone}\}$.

*(b) Application to the tested action.* For $G$, $\mu$, $C$, $J$, $K$ and $n\ge3$ there exist constants chosen before $L$. Using them, for every larger $S$ with order $J$ and kernel choices $K$, every forest $H$ and every path datum $W$ with bounds $(p,\mu,C,\Lambda)$, (a) applies to $\mathcal T^H$ in real colour coordinates. So there is a critical branch $g$ that, for every tag, is the unique critical point of $\mathcal T^H_t(x,\cdot)$ in the sup-ball of radius $r_{\rm zone}$, for all coarse $\Vert x\Vert_\infty<r_{\rm hor}$. The radii depend on $(G,\mu,C,J,K,n)$, on the clip and on $L$, but not on $c$, $f$, $H$, or $W$ beyond its bounds.
*Status:* theorem.
*Lean:* (a) [`Receipt.throughout`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L179-L215) with hypotheses [`Receipt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L24-L33) and radii [`reserveX`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L42-L43). (b) [`Before.graph`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L253-L294), [`Before.Service`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L245-L251), [`pre_order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L160-L167).

**Proposition III.6.8 (jet service along the branch).** Fix an order $N$, constants as in III.6.7(b) bought at order $N+3$, and the branch $g$ of III.6.7(b). Then for every tag the following hold, all with constants depending only on those of III.6.7.
- (a) At every point of the joint sup-ball of radius $r_{\rm safe}\ge r_{\rm zone}$, the vertical Hessian, as a matrix function of all variables, has a *block package* of order $N$:
  - it is analytic and $\ge m/2$;
  - its entries and their derivatives up to order $N+1$ are localized;
  - for every principal sub-block and every shift $t\ge0$, the shifted sub-block is invertible;
  - the inverse of the shifted sub-block is exponentially localized with constant $O((1+t)^{-1})$, has localized derivatives up to order $N+1$, and has $\ell^2$ norm $\le(m/2+t)^{-1}$;
  - $\log\det$ of the shifted sub-block has localized derivatives up to order $N+1$.
- (b) On the coarse sup-ball of radius $r_{\rm hor}$, the map $g$ and the graph $x\mapsto(x,g(x))$ have localized derivative bounds up to order $N+2$.
- (c) The classical action $x\mapsto\mathcal T^H_t(x,g(x))$ has localized derivative bounds up to order $N+3$.
- (d) The Hessian along the branch, $x\mapsto\mathrm{Hess}_a\mathcal T^H_t(x,g(x))$, has a block package of order $N$.

*Status:* theorem, with no further hypothesis.
*Lean:* [`Counter.service`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L116-L145), [`Counter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L75-L88), [`BlockPack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Pack.lean#L65-L84).

**Proposition III.6.9 (one level of the iteration).** Assume the following.
- The schedule hypotheses of III.2: constants issued before $L$, warm-up, and a paid schedule.
- A horizon of beds $M_{N,m}$ and towers that meets the price list: floors, diagonal identities, stack identities, all beds sworn, harmonic towers ([`Suffices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L132-L139)).
- A gap quote, i.e. III.6.6 at every level, which the Lean supplies from [`Iteration.post`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Post.lean#L99-L106).
- A local chart ratio.
- The hypothesis bundle [`Rates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Gates.lean#L79-L96). It supplies, at each level, the fresh cubic and quartic remainders and the one-loop data. Their matchings are required on one reference forest per period.

Let $m<N$ and let $T$ be a path datum *funded* at level $m+1$ ([`Work item`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Gates.lean#L35-L39)). That is, $T$ is aligned with the bed $M_{N,m+1}$, has the level-$(m+1)$ bounds, and its cubic and quartic atoms are charged within the level cap. Then there exist a path datum $R$ funded at level $m$, branches $\rho_{p,F}$ for every period $p$ and every forest $F$, and a number $\alpha$ such that:
- (i) each $\rho_{p,F}$ satisfies the conclusions of III.6.6 with the level-$(m+1)$ gap, its tower map, and the bed $M_{N,m}$;
- (ii) $|\alpha+\kappa_G\log L_m|+1\le\mathrm{drift}_{m+1}$, where $\kappa_G$ is the one-loop slope constant of $G$;
- (iii) for every $p$ and $F$, $x\mapsto\mathcal T^F_k(x,\rho_{p,F}(x))$ (built with $T$ and the clip of level $m+1$) has the same jets of orders $0,\dots,4$ at $0$ as $x\mapsto\mathcal M_{q}(R;e^x)$ (clip $q$ of level $m$);
- (iv) for every $p$ and $F$, the thermal function is analytic and the Hessian determinant is positive near $0$. Moreover, on plane waves $w_1,w_2$ of amplitude $\le1$,
$$\big|D^2\Theta^F_k(0)[w_1,w_2]-D^2\big(\alpha\,\mathcal M^{(2)}_q(R)+\mathrm{loop}_R\big)(0)[w_1,w_2]\big|\le|\Lambda_c|\,\Gamma\,\lambda_{m+1}\,e^{-\gamma c}.$$
  Here $\mathcal M^{(2)}$ is the quadratic part of the main term, and $\Gamma,\gamma$ are post-$L$ costs.

A companion statement, [`Iteration.peak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L35-L48), gives a funded path datum at the cutoff level $N$ whose main term has the jets of order $\le4$ of the Wilson energy.
*Status:* theorem, conditional on the bundle `Rates` and the schedule and horizon hypotheses above. Where `Rates` is discharged is not traced here; see §7.
*Lean:* [`Iteration.extend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L115-L150), [`Move`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L26-L33), [`ClassicalMatch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L108-L109), [`FiniteBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L62-L71).

**Further results attached to this unit (statements only; see §4.7).**
- *Beds and towers (F06–F09).* These are combined in [`Bid.pinning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L107-L166) (III.10) into a horizon meeting a price list. They supply the floors and the diagonal and stack identities assumed above.
  - [`F06.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F06.lean#L64-L128): a $3$-form kernel that is positive on exact forms can be replaced by one that is positive everywhere, without changing $d^\top(\cdot)d$.
  - [`F07.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07.lean#L180-L201): square roots of positive kernels, with exponential decay.
  - [`F08.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F08.lean#L53-L146): towers with uniform widths.
  - [`F09.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F09.lean#L41-L150): the stack identities.
- *Comparison of two tori* ([`Loom.spinning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/Loom.lean#L65-L104)).
- *Primary-integral comparisons* ([`Ramble.billFor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Reaches.lean#L74-L86), [`PPX.toll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/East.lean#L112-L139), [`Oval.sticker`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Oval.lean#L167-L179)).
- *Rotation and Ward material* ([`Outer.outer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L114-L121)). Mathematically it belongs to VI.1.

## 2. What it uses

- **III.1 (block-spin step and symmetric gauge fixing).**
  - The step data, tags and predictors, and the well-posedness condition.
  - Spanning forests rooted at block centres.
  - The definitions of the tested action, critical branch, thermal function, beds, floors and towers.
  - The identities $P\widehat{\mathcal W}_H=1-\kappa^{-1}K_C$ and $K_B\widehat{\mathcal W}_H=P^\top K_C$, which follow from the tower identities ([`stationed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L81-L91)).
  - The change of forest $\mathrm{slice}(H)\to\mathrm{slice}(H')$, a gauge transformation trivial at the roots, preserves product Haar measure ([`Profiles.spending`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Profiles.lean#L57-L77)).
  - The predictor is invariant under gauge transformations trivial at the block roots.
- **III.10 (one nonlinear step).** E02, the shell comparison ([`Bid.E02`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L49-L52), [`Cops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L44-L47)). For given $(G,L,J,K)$ there is $C_{\rm E02}>0$ with the following property. For every larger $S$, forest $H$, fine configuration $U$ in the slice of $H$ at which the predictor is defined, coarse $V$, fine bond $e$ (in block $i$, direction $\mu$) and tag $k$:
$$\mathrm{chord}\big(U_e\mathcal R(V)_e^{-1}\big)\le C_{\rm E02}\,\mathrm{port}_i(U)+\mathbf 1_{e\ \mathrm{crossing}}\,\mathrm{wire}(Q_k(U),V)_{(i,\mu)}.$$
  Here $\mathrm{port}_i(U)\le\sum_{z\in X}\sum_\pi\mathrm{chord}(U_\pi)$, summed over plaquettes $\pi$ at $\mathrm{root}_i+z$. The estimate is proved in [`Work.E02.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E02.lean#L132-L244). The combination [`Bid.cospons`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L108-L113) and the horizon construction [`Bid.pinning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L107-L166) are filed under III.10.
- **III.3 (free kernels).** The beds are free lattice kernels in Fourier (Bloch/Laurent) form. F06–F09 produce the beds, floors and towers.
- **III.2 (order of constants).** The constants issued before $L$, the block sizes $L_m$, the post-$L$ costs, and the drift window, all used in III.6.9. In particular the gap constant is post-$L$ and the constants of III.6.7(b) are bought before $L$.
- **I.1, II.1, II.2.** The lattice, lattice forms and $d$; the group $G$ and its exponential, chord, price and Haar measure; the path data and their bounds.
- **III.16 (analytic toolkit).** Real-analytic functions, Taylor jets and iterated derivatives.
- **Standard mathematics.**
  - The analytic implicit and inverse function theorems (Krantz–Parks, *The Implicit Function Theorem*, Birkhäuser 2002).
  - Weierstrass's theorem on normally convergent series of holomorphic functions.
  - The second-order chain rule at a critical point, so that $\det$ of the Hessian changes by the squared Jacobian.
  - The change-of-variables formula.
  - The Banach fixed-point theorem.
  - The Combes–Thomas estimate (Combes–Thomas, *Comm. Math. Phys.* 34 (1973) 251–270).
  - The background-field method in lattice gauge theory: T. Bałaban, *Propagators and renormalization transformations for lattice gauge theories I, II*, Comm. Math. Phys. 95 (1984), 96 (1984); *The variational problem and background fields in renormalization group method for lattice gauge theories*, Comm. Math. Phys. 102 (1985); *Renormalization group approach to lattice gauge field theories I*, Comm. Math. Phys. 109 (1987); J. Dimock, *The renormalization group according to Balaban I*, Rev. Math. Phys. 25 (2013).

**Imported constants and assumptions.**
- The constant $C_{\rm E02}(G,L,J,K)$.
- The penalty $\kappa$ of the kernel choices.
- The floors $(a,A)$ of the beds.
- The one-loop slope $\kappa_G$, which enters only through the drift window of III.6.9 (see III.9).
- The hypothesis bundle `Rates`, and the schedule and horizon hypotheses of III.6.9.

## 3. Strategy

The effective action of one step integrates out the fine field at fixed block-spin. Bałaban's method expands around the *background field*: the minimizer of the classical action at fixed block-spin. The Gaussian fluctuation integral then produces $\tfrac12\log\det$ of the Hessian. This unit constructs the background field and its Hessian, and the analytic and quantitative control that the matching (III.7), the one-step bounds (III.10) and the volume-uniform bounds (III.12) need.

The Lean never minimizes. It replaces the hard block-spin constraint by the penalty $\kappa\sum_b\mathrm{price}(e^{x_b}Q_k(U)_b^{-1})$. It fixes the gauge by a spanning forest of each block, rooted at the block centre (an axial-type gauge inside blocks). It then defines the background field $\rho(x)$ as the critical point of $a\mapsto\mathcal T^H_k(x,a)$ near $a=0$. This critical point is produced by the analytic implicit function theorem.

The argument has four layers.
1. *Germ layer (F02–F04).*
   - The tested action is analytic at the origin (F02).
   - It has zero value and gradient there, and its Hessian is explicit (F03). The explicit Hessian is the quadratic form $\langle ds,M_Bds\rangle$ of the free kernel, plus the linearized penalty. It is computed from the limits $f(tz)/t^2$ by polarization.
   - The vertical part of this form is coercive (F01). Here the shell comparison E02, linearized at the identity, bounds every free link by the curvature in a box of radius $(J+7)L$ and the predictor's response. So the curvature energy and the penalty together control all free links, with a constant independent of the volume.
   - The implicit function theorem then gives $\rho$ (F04). The linear algebra of the tower identities identifies $D\rho(0)$ with the linear background field $\widehat{\mathcal W}_H$. It also identifies the classical value along the branch with the coarse quadratic form $\tfrac12\langle dx,M_Cdx\rangle$. This is the exact Gaussian block-spin identity (Gawędzki–Kupiainen; Bałaban).
2. *Gauge layer (F05).* Two forests are related by a gauge transformation trivial at the roots. It preserves the action and the product Haar measure, so the critical values agree. In the determinant, the squared Jacobian of the chart change cancels against the ratio of Haar densities. Hence the thermal function is the same for all forests.
3. *Uniform layer (STATIONARY_UNIFORM, JET_PORT).*
   - The germ statements are replaced by statements on sup-norm balls whose radii do not depend on the volume.
   - The key estimate is a Combes–Thomas bound: the inverse vertical Hessian has exponentially decaying entries. It is therefore bounded $\ell^\infty\to\ell^\infty$ uniformly in the volume.
   - A Newton contraction in the sup norm then produces the branch on a fixed ball.
   - Differentiating the resolvent identity gives localized bounds on all derivatives of the branch, of the Hessian and its inverse, and of $\log\det$.
4. *Iteration layer (ITERATION_NO_LOSS).* At each level the branch is chosen from the gap quote. The new path datum is glued from inherited and fresh atoms; it is funded again, and it matches the classical value to fourth order on every forest. The fresh parts and the one-loop shift are supplied by the bundle `Rates`.

What differs from Bałaban:
- The gauge is a forest gauge, and the dependence on the choice is removed exactly (F05).
- The minimization is replaced by a penalized critical-point problem, whose germ at the identity is fully explicit.
- Uniformity in the volume is obtained by a sup-norm implicit function theorem built on Combes–Thomas decay, rather than by Bałaban's direct estimates on spaces of regular fields.
- The lattice symmetries are restored by averaging the main term over $\mathcal S$ and by the tag-independence near the identity.

## 4. Steps

### 4.1 The second-order jet (F02, F03)

**Lemma 4.1 (holomorphic extension of the main term).** Let $W$ have bounds $(p,\sigma,C,\Lambda)$. Then the $\ell_W$-series and the sums of cubic and quartic atoms extend holomorphically to a ball, of radius depending only on $\sigma$, around the point $(U,U^*)$ in the space of pairs of complex matrices per link.
*Sketch:*
- A transported slot of length $\ell$ is a polynomial in the ambient variables. On the ball it is bounded by $c_G^{\ell}$-type factors absorbed by $e^{\sigma\ell}$.
- By the bounds, the series of coefficients times these sup bounds converges.
- A normally convergent series of holomorphic functions is holomorphic.
- The Wilson part is polynomial, and the symmetrization is a finite average.
- One composes with $y\mapsto(A(y),A(y)^*)$ and restricts scalars to $\mathbb R$. This proves III.6.2.

*Lean:* [`F02.analytic_series`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02/Series.lean#L57-L74), [`rowExt_series`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02.lean#L30-L41), [`atomExt_series`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02.lean#L51-L57), [`mainTerm_contDiffAt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02.lean#L126-L139). *(proof read; the slot bounds in `F02/Path.lean`: statement only)*

**Lemma 4.2 (the chart and its tangent).** The map $(x,a)\mapsto U^H(x,a)$ is analytic, with $U^H(0,0)=1$. The derivative of $t\mapsto U^H(t(x,a))_e$ at $0$ is $s_e$, where $s=\iota x+a$. On tree bonds $s_e=0$, because tree bonds are internal and $\iota x$ vanishes there. Consequently $\mathrm{incl}(x,a)=(x,\log U^H(x,a))$ is analytic near $0$, with $\exp\circ\log U^H=U^H$ near $0$ and $D\,\mathrm{incl}(0)(x,a)=(x,s)$.
*Lean:* [`F03.live_rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L86-L119), [`inclusion_works`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L67-L80), [`inclusion_deriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L121-L149).

**Lemma 4.3 (flat jets).** Let $\mathcal F_k(x,A)=\mathcal M_p(W;e^A)+\kappa\sum_b\mathrm{price}(e^{x_b}Q_k(e^A)_b^{-1})$ be the action in logarithmic coordinates on all fine bonds. Under the hypotheses of III.6.1:
- $\mathcal F_k(0)=0$ and $D\mathcal F_k(0)=0$;
- $D^2\mathcal F_k(0)[(x,A),(x',A')]=\langle dA,M_BdA'\rangle+\kappa\langle x-PA,x'-PA'\rangle$.

*Sketch:* The computation rests on an abstract principle: if $f$ is $C^2$ at $0$ and $f(tz)/t^2\to\tfrac12Q(z,z)$ for a symmetric bilinear $Q$, then $f(0)=0$, $Df(0)=0$ and $D^2f(0)=Q$. The limits are:
- $\mathrm{price}(U_\pi)/t^2\to\tfrac12|dA_\pi|^2$;
- $\ell_W(e^{tA})/t\to R_B\,dA$, because $W$ is attached to $B$;
- so the quadratic part tends to $\tfrac12\langle dA,(c_p+R_B^\top R_B)dA\rangle=\tfrac12\langle dA,M_BdA\rangle$, by the floor identity;
- the cubic and quartic atoms are $O(t^3)$;
- averaging over $\mathcal S$ does not change the limit, because $B$ is sworn;
- $Q_k(e^{tA})$ has derivative $PA$ at $t=0$ (this uses well-posedness), so the penalty tends to $\tfrac\kappa2|x-PA|^2$.

*Lean:* [`F03.hessian_of_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Calculus.lean#L102-L117), [`quadratic_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Flat.lean#L23-L38), [`main_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Flat.lean#L63-L77), [`noise_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Flat.lean#L107-L128), [`flat_jets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Flat.lean#L168-L188), [`metric_pair`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Metric.lean#L135-L140). *(proof read; `metric_pair` and the cubic/quartic limit: statement only)*

**Lemma 4.4 (transport to the tree slice).** Near $0$, $\mathcal T^H_k=\mathcal F_k\circ\mathrm{incl}$. Since $D\mathcal F_k(0)=0$, $D^2\mathcal T^H_k(0)[u,u']=D^2\mathcal F_k(0)[D\mathrm{incl}(0)u,D\mathrm{incl}(0)u']$; no term with $D^2\mathrm{incl}$ survives. With Lemmas 4.2–4.3 this gives III.6.1.
*Lean:* [`F03.from_flat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L151-L156), [`hessian_comp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Calculus.lean#L120-L142).

### 4.2 The gap (F01)

**Lemma 4.5 (link bound).** Let $v\in\mathfrak g^{H^{\rm fr}}$ and $y=s(0,v)$, i.e. $v$ on free bonds and $0$ on tree bonds. Assume E02. Then for every fine bond $e$, in block $i$ and direction $\mu$,
$$|y_e|\le C_{\rm E02}\sum_{z\in X}\sum_{\pi}\big|dy_{(\mathrm{root}_i+z,\pi)}\big|+\big|(Py)_{(i,\mu)}\big| .$$
*Sketch:* Apply E02 with $V=1$ to $U_t=e^{ty}$. For small $t$ this configuration lies in the slice and the predictor is defined. One obtains $\mathrm{chord}(U_{t,e})\le C\,\mathrm{port}_i(U_t)+\mathrm{chord}(Q_k(U_t)_{(i,\mu)})$. Divide by $|t|$ and let $t\to0$, using $\mathrm{chord}(\gamma(t))/|t|\to|\gamma'(0)|$ along curves through $1$.
*Lean:* [`F01.link_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L63-L108), [`chord_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L22-L28).

**Lemma 4.6 (summation).** $\sum_e|y_e|^2\le\beta\sum|dy|^2+\gamma\sum|Py|^2$, with $\beta,\gamma$ as in III.6.3.
*Sketch:*
- Start from $(CZ+Y)^2\le2C^2Z^2+2Y^2$.
- Cauchy–Schwarz over $X\times\{\text{plaquette orientations}\}$ costs $6|X|$.
- Each coarse site carries $L^4$ fine sites and $4$ directions.
- In the re-summation over coarse sites, $i\mapsto\mathrm{root}_i+z$ is injective for fixed $z$, which costs one more factor $|X|$.

*Lean:* [`F01.sum_estimate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L174-L206), [`sum_ports_sq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L136-L165).

**Lemma 4.7 (the gap).** By III.6.1 on vertical vectors (where $x=0$, so the penalty argument is $-Py$) and by the floor,
$$D^2_a\mathcal T^H_r(0)[v,v]=\langle dy,M_Bdy\rangle+\kappa|Py|^2\ge a|dy|^2+\kappa|Py|^2 .$$
Hence $\eta|v|^2\le\eta(\beta|dy|^2+\gamma|Py|^2)\le a|dy|^2+\kappa|Py|^2$. This proves III.6.3.
*Lean:* [`F01.hess_lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L252-L262), [`curl_floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L218-L230), [`vertical_hessian`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L233-L250).

### 4.3 The branch (F04)

**Lemma 4.8 (tags agree near the identity).** If $S$ is well posed, the predictors $Q_k$ for different tags coincide on a neighbourhood of the identity configuration. Hence the functions $\mathcal T^H_k$ coincide near $0$.
*Lean:* [`F04.prediction_germ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04/Choices.lean#L36-L61), [`tested_germ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04/Choices.lean#L78-L86).

**Lemma 4.9 (existence).** The gap makes the vertical Hessian at $0$ injective, hence invertible. The analytic implicit function theorem, applied to $D_a\mathcal T^H_{k_0}(x,a)=0$ for one tag $k_0$, gives an analytic $\rho$ with $\rho(0)=0$. By Lemma 4.8 it is critical for every tag.
*Lean:* [`F04.invertible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L32-L60), [`exists_branch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L62-L86).

**Lemma 4.10 (test-pair identity).** Assume the tower identities and the second jet of III.6.1. Then for every $z=(y,b)$ and coarse $x$,
$$D^2\mathcal T^H_k(0)\big[z,(x,\mathrm{rel}_Hx)\big]=\langle dy,M_C\,dx\rangle .$$
*Sketch:*
- $s(x,\mathrm{rel}_Hx)=\widehat{\mathcal W}_Hx$, since both sides vanish on tree bonds.
- The identities of §2 (III.1) give $x-P\widehat{\mathcal W}_Hx=\kappa^{-1}K_Cx$ and $K_B\widehat{\mathcal W}_H=P^\top K_C$.
- So the left side equals $\langle s(z),P^\top K_Cx\rangle+\langle y-Ps(z),K_Cx\rangle=\langle y,K_Cx\rangle$.

The tower identities state that $A=\mathcal Wx$ minimizes $\tfrac12\langle dA,M_BdA\rangle+\tfrac\kappa2|x-\bar QA|^2$, with minimum value $\tfrac12\langle dx,M_Cdx\rangle$.
*Lean:* [`F04.test_pair`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04/Pairing.lean#L49-L66).

**Lemma 4.11 (tangent).** Differentiating $D_a\mathcal T(x,\rho(x))=0$ at $0$ gives $D^2\mathcal T(0)[(x,D\rho(0)x),(0,v)]=0$. Lemma 4.10 with $z=(0,v)$, together with the symmetry of $D^2$, gives the same identity with $\mathrm{rel}_Hx$ in place of $D\rho(0)x$. Subtracting and inverting the vertical Hessian gives $D\rho(0)=\mathrm{rel}_H$.
*Lean:* [`F04.tangent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L88-L126).

**Lemma 4.12 (value).** Let $\beta(x)=(x,\rho(x))$. Since $D\mathcal T(0)=0$,
$$D^2(\mathcal T\circ\beta)(0)[x,x']=D^2\mathcal T(0)[(x,\mathrm{rel}_Hx),(x',\mathrm{rel}_Hx')]=\langle dx,M_Cdx'\rangle,$$
by Lemma 4.10. This is III.6.4(iii).
*Lean:* [`F04.stationary_value`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L128-L147).

### 4.4 Independence of the forest (F05)

**Lemma 4.13 (change of forest is a gauge transformation).** For $(x,a)$ near $0$ define $\mathrm{sw}(x,a)_{e'}=\log\big(\widetilde U_{e'}\,\mathcal R(e^x)_{e'}^{-1}\big)$ for $e'\in H'^{\rm fr}$. Here $\widetilde U$ is the gauge transform of $U^H(x,a)$ into the gauge of $H'$, by a gauge function equal to $1$ at the block roots. Then near $0$:
- $U^{H'}(x,\mathrm{sw}(x,a))=\widetilde U$;
- $\mathcal T^H_k(x,a)=\mathcal T^{H'}_k(x,\mathrm{sw}(x,a))$;
- $\mathrm{loop}_W(U^H(x,a))=\mathrm{loop}_W(U^{H'}(x,\mathrm{sw}(x,a)))$.

Gauge invariance holds for each term:
- the atoms are $\mathrm{Ad}$-invariant;
- $\ell_W$ is $\mathrm{Ad}$-covariant;
- the price is a class function;
- the predictor is invariant under gauge transformations trivial at the roots.

*Lean:* [`F05.tested_switch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Actions.lean#L87-L92), [`loop_switch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Actions.lean#L94-L98), [`mainTerm_gauge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Actions.lean#L55-L59), [`root_noise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Actions.lean#L66-L75), [`switch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Transport.lean#L44-L45).

**Lemma 4.14 (the two graphs correspond).** Near $0$, $\mathrm{sw}(x,\rho(x))=\rho'(x)$. Indeed, $\mathrm{sw}(x,\rho(x))$ is a critical point of $\mathcal T^{H'}_k(x,\cdot)$, by the chain rule through the local inverse of $\mathrm{sw}(x,\cdot)$, and both branches tend to $0$. Critical branches are unique near $0$ when the vertical Hessian at $0$ is non-degenerate: this is the inverse function theorem for $(x,a)\mapsto(x,D_a\mathcal T(x,a))$, using the gap of $H'$. With Lemma 4.13 this gives III.6.5(i).
*Lean:* [`F05.graph_switch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Graphs.lean#L37-L67), [`station_unique`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Calculus.lean#L112-L150).

**Lemma 4.15 (Hessian determinants).** Write $\mathrm{sw}(x,\cdot)=\pi_\epsilon\circ\mathrm{mv}(x,\cdot)$, where $\pi_\epsilon$ relabels coordinates along a bijection $\epsilon:H^{\rm fr}\to H'^{\rm fr}$; the two forests have the same number of free bonds. At a critical point the Hessian pulls back by $D_a\mathrm{mv}$, so near $0$
$$\det\mathrm{Hess}_a\mathcal T^H_k(x,\rho(x))=\big(\det D_a\mathrm{mv}(x,\rho(x))\big)^2\det\mathrm{Hess}_a\mathcal T^{H'}_k(x,\rho'(x)),$$
and the right-hand determinant is positive (by the gap).
*Lean:* [`F05.hessian_ratio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Graphs.lean#L118-L131), [`hessian_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Graphs.lean#L75-L79), [`move`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Reindex.lean#L84-L85).

**Lemma 4.16 (Haar Jacobian identity).** Near $0$,
$$\prod_{e\in H^{\rm fr}}J_P(a_e)=\big|\det D_a\mathrm{mv}(x,a)\big|\prod_{e'\in H'^{\rm fr}}J_P(\mathrm{sw}(x,a)_{e'}).$$
*Sketch:*
- By the defining property of $J_P$ and right invariance of Haar measure, $a\mapsto(e^{a_e}\mathcal R(e^x)_e)_e$ pushes $\prod_es_PJ_P(a_e)\,da_e$ forward to product Haar measure on the slice of $H$.
- The change of forest preserves product Haar measure (III.1).
- By the change-of-variables formula, the two sides therefore have equal integrals over every small compact set.
- Both sides are continuous, so comparing integrals over small closed balls gives pointwise equality.

*Lean:* [`F05.toll_switch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Jacobian.lean#L129-L142).

**Lemma 4.17 (cancellation).** From $A=d^2B$ and $j=|d|k$ one gets $\tfrac12\log A-\log j=\tfrac12\log B-\log k$. With Lemmas 4.13–4.16 and the equality of the loop terms, this gives III.6.5(ii) with constant $0$.
*Lean:* [`F05.same_thermal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05.lean#L42-L57).

### 4.5 The volume-independent branch and its jets

**Lemma 4.18 (Combes–Thomas bound).** Let $S$ be a symmetric matrix indexed by sites, with multiplicity $\le K$, $|S_{ij}|\le Ce^{-a\,\mathrm{dist}(i,j)}$ and $S\ge M$. Then
$$|(S^{-1})_{ij}|\le\frac2M\,e^{-r\,\mathrm{dist}(i,j)},\qquad r=\min\Big(\frac a4,\frac{M}{2(1+4CKc(a/2)/a)}\Big).$$
Here $c(\alpha)$ is an explicit bound for $\sum_ye^{-\alpha\,\mathrm{dist}(x,y)}$ on the four-dimensional lattice, uniform in the volume (probable).
*Sketch:*
- Conjugate $S$ by $e^{r\,\mathrm{dist}(\cdot,j)}$.
- The conjugated matrix differs from $S$ by at most $M/2$ in row-sum norm, so it is still $\ge M/2$.
- Test it against the tilted $j$-th column of $S^{-1}$.

*Lean:* [`tiltedCharge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Resolvent.lean#L157-L168), [`inverse_sealed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Resolvent.lean#L171-L208).

**Lemma 4.19 (uniform implicit function theorem; III.6.7(a)).** Set $D=Kc(a)$ and $\Pi=1+(m/4)^{-1}K\,c(r_{\rm CT})$, the $\ell^\infty$ bound of the inverse Hessian given by Lemma 4.18. The radii are
- $r_{\rm safe}=\min\big(r/2,\ m/(2(1+CD^2))\big)$;
- $r_{\rm zone}=\min\big(r_{\rm safe},\ 1/(4\Pi(1+CD^2))\big)$;
- $r_{\rm hor}=\min\big(r_{\rm zone},\ r_{\rm zone}/(4\Pi(1+CD))\big)$.

*Sketch:*
- On the ball of radius $r_{\rm safe}$, the third-derivative bound moves the vertical Hessian by at most $r_{\rm safe}CD$ in row-sum norm. So the vertical Hessian stays $\ge m/2$, and Lemma 4.18 applies at every point.
- For $\Vert x\Vert_\infty<r_{\rm hor}$, consider $Y(v)=v-H_0^{-1}\nabla_vf(x,v)$. It is a $\tfrac14$-contraction of the sup-ball of radius $r_{\rm zone}$ into the ball of radius $r_{\rm zone}/2$. Indeed $\Vert DY\Vert\le\Pi\,r_{\rm zone}CD^2\le\tfrac14$, and $\Vert Y(0)\Vert\le\Pi\Vert x\Vert CD\le r_{\rm zone}/4$ because $\nabla_vf(0,0)=0$.
- The fixed point is the unique critical point.
- Analyticity at each $x$ follows from the analytic implicit function theorem at $(x,g(x))$ and uniqueness.

No $\ell^2$ norm of the volume enters.
*Lean:* [`Receipt.adjusted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L101-L176), [`Receipt.snaps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L62-L76), [`Receipt.priced_inverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L80-L92), [`Receipt.throughout`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L179-L215).

**Lemma 4.20 (the tested action satisfies the hypotheses of III.6.7(a)).** Take the constants bought before $L$. Then for every larger $S$ with order $J$ and kernel choices $K$, and every $W$ with bounds $(p,\mu,C,\Lambda)$, the tested action in sup-norm colour coordinates satisfies:
- analyticity and localized derivatives of order $\le n$, with width $\mu/(8(n+1)^2(1+L))$, on a ball whose radius is independent of $c$, $f$ and $H$;
- the multiplicity bound $8\dim G$ (probable);
- tag-independence on the whole ball;
- the vertical gap
$$m=\frac{\min(c_p/|\mathcal S|,\ \kappa)}{1+\beta(L,\ell_L)+2L^4}.$$

The gap is a second proof of III.6.3 that needs no bed. In it:
- the constant of E02 is replaced by an explicit $L$-dependent constant $\ell_L$, obtained by proving the shell comparison directly ([`link_charge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/LCharge.lean#L145-L251));
- the floor $a$ is replaced by $c_p/|\mathcal S|$, since the vertical Hessian is $\ge(c_p/|\mathcal S|)|dy|^2+\kappa|Py|^2$ ([`wallet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/HessCost.lean#L110-L130)).

*Lean:* [`Before.receipt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L196-L211), [`symbolic_gap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/HessCost.lean#L137-L166), [`zeroGap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/HessCost.lean#L132-L133), [`Before.full_pack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L216-L239). *(proof read for `symbolic_gap` and the assembly in `receipt`; the derivative bounds of the score and `link_charge`: statement only)*

**Lemma 4.21 (jets of the inverse and of $\log\det$; III.6.8).** Let $M(y)$ be analytic, with localized derivatives up to order $N+1$ and with a localized inverse at the base point. Then the derivatives of $M^{-1}$ of every order $k\le N$ are localized, at a rate halved twice per order and with constants defined recursively. The mechanism is to differentiate $M^{-1}$ by the resolvent identity, $D(M^{-1})=-M^{-1}(DM)M^{-1}$, inductively. The block package adds:
- principal sub-blocks and shifts $t\ge0$;
- $\ell^2$ bounds;
- localized jets of $\log\det$.

`Counter.service` applies this:
- off the branch, at every joint point of the ball of radius $r_{\rm safe}$;
- along the branch, using that the Hessian on the graph is the joint Hessian composed with $x\mapsto(x,g(x))$, and that the graph has localized jets to order $N+2$.

*Lean:* [`inverse_lines`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Lines.lean#L56-L108), [`establish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Pack.lean#L88-L108), [`along_block`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L56-L59), [`Counter.background`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L95-L112). *(statement and docstring of `inverse_lines`; `establish` and `service`: assembly read)*

### 4.6 One level of the iteration

**Lemma 4.22 (gap quote and branch selection).** Fix a level index $j$. Apply III.6.6 with block factor $L_j$ and the floor of the price list. This gives post-$L$ gap constants $\eta_j$ ([`Iteration.post`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Post.lean#L99-L106)). With them, every funded $T$ at level $m+1$ has, for each period and forest, a branch satisfying III.6.9(i) ([`select`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L50-L55)).

**Lemma 4.23 (the glued datum is funded).** `Rates` supplies fresh cubic and quartic atoms $t,v$ and fresh loop atoms $l$. Let $R$ be the bundle on the bed $M_{N,m}$ with:
- cubic atoms: $t$ joined with the transport of the cubic atoms of $T$ through the towers ("inherited");
- quartic atoms: $v$ joined with the inherited quartic atoms;
- loop atoms: $l$ joined with the inherited loop atoms.

Then $R$ is funded at level $m$. The inherited cubic and quartic atoms are charged with relative factors $L^{-2}$ and $L^{-4}$, and the resulting charges stay within $6$ times the level price.
*Lean:* [`resume`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L70-L112). *(structure read; the price lemmas `classical_price` and `loop_price`: statement only)*

**Lemma 4.24 (the move).** The window (ii) follows from the bound $|\alpha+\kappa_G\log L|\le$ slope supplied by `Rates` and the drift condition of the schedule. The matching (iii) is proved in three steps:
- On one reference forest per period, orders $\le2$ follow from III.6.4(iii) and the attachment of $R$ to $M_{N,m}$ ([`Calibration.lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Calibration.lean#L66-L94)).
- Orders $3,4$ split into the inherited part, matched through the towers, and the fresh part, matched by `Rates`.
- The match is transferred to every forest by III.6.5 ([`all_forests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Determinant.lean#L80-L89)).

The bound (iv) is proved on the reference forest from the fresh determinant data of `Rates`, and transferred to every forest by the equality of thermal functions ([`transplant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Determinant.lean#L91-L103)).
*Lean:* [`extend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L115-L150). *(structure read)*

### 4.7 Remaining packages (statements only)

- *F06–F09.*
  - F06: a translation-invariant $3$-form kernel $Q$ that is positive on the range of the $2$-form symbol can be replaced by $P$, positive on all vectors, with the same $d_2^\top(\cdot)d_2$ and with constants fixed before $L$.
  - F07: a positive kernel with strip bounds has a symmetric square root with strip bounds.
  - F08: donated towers can be replaced by towers with deep widths satisfying the replacement identities.
  - F09: these identities, the floors, the diagonal identities and a factorization of the defect give the stack identities.
- *Comparison of two tori* ([`Loom.spinning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/Loom.lean#L65-L104)). Let the index set of a large system $F$ cover that of a small system $F'$ $M$ times, with the two systems compatible. Suppose $F(0)^{-1}$ and the first two variations decay exponentially at rate $d$, and $y=Mz$. Then the mixed second derivatives of $\tfrac12\log\det F-y$ and of $M(\tfrac12\log\det F'-z)$ differ by at most $|\beta|\cdot\mathrm{const}\cdot e^{-(d/8)N}$. Here $N$ measures the injectivity of the covering. The mechanism (probable) is that $\partial^2\tfrac12\log\det=\tfrac12[\mathrm{tr}(F^{-1}\partial^2F)-\mathrm{tr}(F^{-1}\partial F\,F^{-1}\partial F)]$, and the two traces differ only by windings of length $\ge N$.
- *Primary integral.* This package contains:
  - Newton remainder bounds from bounded finite differences;
  - vanishing of symmetric tensors on probe tiles;
  - a uniform comparison $D(1+B)e^{-\sigma\chi/2}$ between the true and the forecast probe paths ([`Ramble.billFor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Reaches.lean#L74-L86));
  - triangular structure of the primary transition matrix.

  Its consumers in the closure are in III.10 (the repeatable nonlinear step).
- *Atom regularity.* On a configuration of small curvature there is a gauge from the origin with link chord $\le4t(1+\mathrm{distance})$ in a cube.
- *ROTATIONS, WARD_BIN.* This material is the conclusion `outer` (line-sum property and vanishing of the local rotation charge on collinear points) and its chain: moment bounds for reflection-positive spectral measures, decay of the Ward integrand, and the flux identity. It belongs to VI.1.

## 5. Where the difficulty lies

- **Coercivity is the content.** The existence of the background field is an implicit function theorem. The content is the volume-independent lower bound on the vertical Hessian, which converts curvature energy plus penalty into control of every free link. In the germ layer this comes from E02 (Lemma 4.5). In the uniform layer it is proved again, with an explicit dependence on $L$ (Lemma 4.20). In both, the constant grows like $L^4|X|^2$ with $|X|\sim((J+7)L)^4$. So the gap is post-$L$: it is fixed once $L$ is fixed, and it is not small in $L^{-1}$.
- **The germ layer gives no radius.** III.6.4 and III.6.6 are germ statements. What III.10, III.12 and III.2 consume is the uniform layer (III.6.7–III.6.8). That layer is proved independently of F01 and does not use the beds. The two are linked only through the shared definitions; the radii of III.6.7 come with their own gap.
- **Sup norm and Combes–Thomas.** The uniform radius is independent of the volume because the inverse Hessian is controlled in $\ell^\infty\to\ell^\infty$ through the decay of its entries (Lemma 4.18), not through its $\ell^2$ spectral gap. This is the point of the sup-norm formulation.
- **Forest gauge and Haar measure.** The exact cancellation in F05 rests on two facts: the change of forest preserves product Haar measure (III.1), and $J_P$ is the Haar density in exponential coordinates. The proof of the pointwise Jacobian identity is measure-theoretic (Lemma 4.16), not a computation of $\det D\mathrm{mv}$. A written proof could instead compute both sides from $J(X)=\det((1-e^{-\mathrm{ad}X})/\mathrm{ad}X)$.
- **Unused hypotheses.** None of these affects correctness.
  - The floor of $C$ in F04 is not used.
  - The gap for the first forest in F05 is not used.
  - The normalization $A(x_0)=1$ in F02 is not used.
  - Only the first clause of "larger" is used in F03–F05.
- **Weaker than one might expect.** The branch is a critical point near the identity, unique in a sup-ball. It is not shown to be the global constrained minimizer. Large fields are excluded elsewhere (probable).
- **The one-loop coefficient is not computed here.** The thermal function is the object whose second derivative is compared with $\alpha\,\mathcal M^{(2)}+\mathrm{loop}$. The module docstring of `PCalc/Loop.lean` states that it is not a proof of a beta-function reset. The value of $\alpha$ and its window come from `Rates`.

## 6. Notation

| Written proof | Lean | Meaning |
|---|---|---|
| $S$, $\kappa$, $K$, $J$, $L$ | [`StepData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L22-L25), [`KernelChoices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L37-L45) | step datum; penalty; kernel choices; order; block factor |
| larger | [`Bid.Larger`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L64) | well posed, $100R_S\le f$, $c>1$ |
| $Q_k$, $P$, $\bar Q$ | `prediction`, `probe`, `mean` | predictor; its linearization; linearized block average |
| $H$, $H^{\rm fr}$ | [`Forest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L24-L29), `Free` | forest gauge; free bonds |
| $\mathcal R$, $\iota$ | [`replica`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L35-L36), [`linearCopy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L38-L39) | coarse field copied onto crossing fine bonds |
| $U^H(x,a)$, $a$ | [`lifting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L60-L61), [`AxisChart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L56) | fine field in the axis chart |
| $s$, $x-Ps$ | [`stretch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L34-L36), [`crop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L39), [`bills`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L38) | linearized fine field; linearized penalty argument |
| $W$, $p$, $c_p$ | [`PathData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L150-L154), [`Clip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139-L146) | path datum (row series, loop/cubic/quartic atoms); clip; Wilson coefficient |
| $\mathcal M_p(W;\cdot)$, $\mathcal M^{(2)}$ | [`mainTerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L27-L28), [`secondTerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L30) | symmetrized main term; its quadratic part |
| $\mathcal T^H_k$ | [`tested`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L81-L84), [`noiseTaylor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L78-L79) | tested action; penalty term |
| $B$, $M_B$, $R_B$, $K_B$ | [`Bed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L35-L40), [`K`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L68-L69) | bed; metric; roots; $d^\top M_Bd$ |
| $\langle dA,M_B\,dA'\rangle$ | [`gaugeFiscal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L31-L32) | quadratic form of the bed |
| floor, attached, sworn | [`Floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68), [`Attached`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L44-L46), [`Sworn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55) | ellipticity of the bed; $\ell_W$ linearizes to $R_B\,d$; symmetry invariance |
| $T$, $\mathcal W$, $\widehat{\mathcal W}_H$ | [`Towers.Diagonal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L82-L86), [`Inputs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L76-L79), [`extracted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L26-L27) | towers; linear background map; its forest-gauge version |
| $\mathrm{rel}_H$ | [`relative`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L93-L95), [`Guessed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L97-L98) | linear background field in chart coordinates |
| critical branch $\rho$ | [`Critical`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L88-L91) | background field |
| gap $\eta$ | [`PriceGap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L100-L101) | lower bound of the vertical Hessian at $0$ |
| second jet; value jet | [`Comptroller`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L42-L45), [`HeatG`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L83-L84), [`SameJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L105-L106) | III.6.1; III.6.4(iii); equality of $j$-th derivatives |
| $J_P$ | [`ChartRatio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L23-L26), [`LocalRatio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L28-L38) | Haar density in exponential coordinates |
| $\Theta^H_k$ | [`thermal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L46-L49), [`hessian`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L42-L44) | thermal function; Hessian matrix in the colour basis |
| $\mathrm{sw}$, $\mathrm{mv}$ | [`switch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Transport.lean#L44-L45), [`move`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Reindex.lean#L84-L85) | chart change between forests |
| localized derivatives; localized matrix | [`Scatter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Scatter.lean#L68-L69), [`Sealed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Resolvent.lean#L41), `Cable` | exponential decay of entries and derivatives |
| hypotheses of III.6.7(a) | [`Receipt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L24-L33) | analytic, localized, gapped, critical at $0$ |
| constants bought before $L$ | [`Before`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L142-L158) | radii and costs of the uniform layer |
| block package; jet service | [`BlockPack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Pack.lean#L65-L84), [`Counter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L75-L88) | III.6.8 |
| funded datum; move | [`Work item`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Gates.lean#L35-L39), [`Move`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L26-L33), [`OnShell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Gates.lean#L41-L45) | III.6.9 |

"Price", "bill", "work item", "receipt", "toll" and "cost" are numerical bounds and their bookkeeping; they have no economic meaning.

## 7. Open points for the writer

1. **The bundle `Rates`.** III.6.9 assumes the fresh cubic and quartic remainders, the fresh loop atoms, $\alpha$ with $|\alpha+\kappa_G\log L|\le$ slope, and their matchings on one reference forest per period. Rates producers exist: `IterationRecipe.stocked` derives `Rates` from a package called `Heating`, and `Iteration.Production.directed` consumes it. However, `stocked` is not among the declarations assigned to units, and I have not determined where `Heating` is proved. The writer should locate the discharge (presumably III.7 and III.9/III.10).
2. **How the uniform radius meets the small-field thresholds.** III.6.7–III.6.8 give radii in sup norm on colour components. Their consumers are:
   - `Counter.service`: III.10 (`Fare.red`, `Lapis.luminous`) and III.2;
   - `Before.graph`: III.10, III.15 and III.2.

   How these radii are compared with the field thresholds of the small-field region was not traced.
3. **Iteration over levels.** `extend` is the induction step. The iteration from the cutoff to level $0$ is carried out by its consumers: `sweep` in the same package, and in the main-theorem closure `Luna.uniformZero` (III.12). These were not read.
4. **Proofs not read.**
   - F06–F09.
   - `link_charge` and the derivative bounds of the score in the uniform layer (`ScoreBounds.lean`, `Entries.lean`).
   - The proof of `inverse_lines`.
   - `Inherited.classicalPart` and the price lemmas of the iteration.
   - PRIMARY_INTEGRAL_295, PHYSICAL_PERIOD_LIMIT_F933 beyond `spinning`, ATOM_REGULAR_ESTIMATE, ROTATIONS and WARD_BIN.
5. **Placement of attached packages.**
   - The rotation and Ward material (about 5,900 lines) belongs mathematically to VI.1.
   - The primary-integral package feeds III.10's repeatable step and may be better placed there or in III.7.
   - The period-limit comparison feeds the finite-period comparison of thermal functions; its consumer `Fresco.subscribed` was not traced.
6. **Exact constants.** The dimension counts in $\beta$ ($L^4$ sites per block, $4$ axes, $6$ plaquette orientations) and the multiplicity $8\dim G$ in Lemma 4.20 are read from type cardinalities and should be confirmed. The shape of the box $X$ (cube of radius $R_S$) is (probable).

**Builds on:** [I.1](I-1.md), [III.1](III-1.md), [III.16](III-16.md), [IV.1](IV-1.md), [VI.1](VI-1.md), [II.1](II-1.md), [III.10](III-10.md), [III.3](III-3.md), [V.2](V-2.md), [V.1](V-1.md), [III.2](III-2.md).

**Used by:** [III.10](III-10.md), [III.2](III-2.md), [VII.2](VII-2.md), [III.4](III-4.md), [III.14](III-14.md), [III.3](III-3.md), [III.15](III-15.md), [III.7](III-7.md), [III.9](III-9.md), [III.13](III-13.md), [III.12](III-12.md), [III.11](III-11.md), [VII.1](VII-1.md), [III.8](III-8.md), [VIII.1](VIII-1.md), [VII.4](VII-4.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| proof of [`outer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L114-L121) and the results it chains to | 4,431 |
| work package [`YM/Planned/PRIMARY_INTEGRAL_295/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295) | 3,662 |
| work package [`YM/Push/STATIONARY_UNIFORM/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM) | 3,274 |
| work package [`YM/Extra/ITERATION_NO_LOSS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS) | 1,700 |
| work package [`YM/Further/PHYSICAL_PERIOD_LIMIT_F933/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933) | 1,262 |
| work package [`YM/Planned/STATIONARY_JET_PORT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT) | 1,123 |
| work package [`YM/Next/ROTATIONS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS) | 1,080 |
| work package [`YM/Work/F05/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05) | 731 |
| work package [`YM/Work/F03/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03) | 580 |
| work package [`YM/Work/F06/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F06) | 499 |
| work package [`YM/Planned/ATOM_REGULAR_ESTIMATE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_REGULAR_ESTIMATE) | 474 |
| work package [`YM/Work/F08/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F08) | 416 |
| work package [`YM/Next/WARD_BIN/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/WARD_BIN) | 370 |
| work package [`YM/Work/F02/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02) | 247 |
| work package [`YM/Work/F04/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04) | 166 |
| work package [`YM/Analytic/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analytic) | 107 |
| work package [`YM/Further/ROOTED_INTERACTING_REMAINDER/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/ROOTED_INTERACTING_REMAINDER) | 4 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **III.6.1** [`harmonic_lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F06/Harmonic.lean#L99-L126) *(key result)* — If a block-row operator has spectral margin v and strip bounds, then its zero-mode quadratic form is bounded below by v times the squared norm.
- **III.6.2** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F06.lean#L64-L128) *(main result)* — The all-phase positivity margin statement F06 holds, repaired via near-harmonic estimates.
- **III.6.3** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F08.lean#L53-L146) *(key result)* — Stack construction at uniform widths yields actual kernels for every compatible pair of tori with pre-L prices.
- **III.6.4** [`hessian_ratio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Graphs.lean#L118-L131) *(numbered result)* — Hessian determinants in the two graph spaces differ by the square of the Jacobian determinant of the coordinate change near zero.
- **III.6.5** [`same_thermal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05.lean#L42-L57) *(key result)* — Thermal (shell) functions computed from two different graphs with critical points agree near zero.
- **III.6.6** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F09.lean#L41-L150) *(key result)* — The period-by-period algebra of the stack satisfies the F09 specification, giving retained support, price ordering and commitment.
- **III.6.7** [`link_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L63-L108) *(numbered result)* — Each fine-bond component of a tree-vanishing direction is bounded by a constant times nearby plaquette color differences plus a correction term.
- **III.6.8** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07.lean#L180-L201) *(key result)* — Positive spectral margin implies existence of root rows with controlled strip bounds, as required by the later stages.
- **III.6.9** [`estimate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/MomentFD.lean#L105-L148) *(numbered result)* — If the 2k-th derivative of a smooth characteristic function is bounded by C, then the 2k-th moment of the measure is finite and at most C.
- **III.6.10** [`accrue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Trellis.lean#L157-L170) *(numbered result)* — If all n-fold finite differences are bounded by C on a window, the Newton remainder is bounded by C times size to the n.
- **III.6.11** [`anchored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_REGULAR_ESTIMATE/Pin.lean#L94-L134) *(numbered result)* — On a healthy configuration there is a gauge from the origin with link chord distance bounded by 4t(1+distance) in a cube.
- **III.6.12** [`moment_probe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Rays.lean#L108-L111) *(numbered result)* — The n-th derivative at zero of a translated pulse function equals i^n times the n-th directional moment of the weight.
- **III.6.13** [`throughout`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L179-L215) *(key result)* — The stationary branch is given by a single analytic graph on the whole stationarity corridor, via a uniform sup-radius implicit function theorem for score tensors.
- **III.6.14** [`tile_detects`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Bigrade.lean#L141-L159) *(numbered result)* — A symmetric tensor vanishing on a radial probe tile vanishes on all directions of the corresponding total weight.
- **III.6.15** [`spinning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/Loom.lean#L65-L104) *(key result)* — Mixed second derivatives of the torus statements for matched systems differ by M times small minus large by at most an exponentially small tail in N.
- **III.6.16** [`lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Energy.lean#L133-L145) *(numbered result)* — The spectral response kernel is bounded below by a constant times 1/(w+E) times decay factors for all energies.
- **III.6.17** [`inverse_lines`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Lines.lean#L56-L108) *(key result)* — Jet (derivative) bounds on a matrix and a bound on its base inverse yield localized derivative bounds of all orders for the inverse.
- **III.6.18** [`establish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Pack.lean#L88-L108) *(key result)* — Under cable bounds at order N+1, a reusable block package giving order- and radius-sensitive log and inverse jet estimates exists.
- **III.6.19** [`sticker`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Oval.lean#L167-L179) *(key result)* — Chain rule estimate to order k for comparisons of genuine and predicted paths yields uniform bounds independent of e and t in (0,1].
- **III.6.20** [`generated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/SplitRadial.lean#L153-L169) *(numbered result)* — Every polynomial log-link direction of weight at most a is generated by linear parts of a holonomy variation and site gauge variations.
- **III.6.21** [`pure_moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Bijets.lean#L99-L111) *(numbered result)* — The moments of powers of a single axis-probe form equal the principal prediction exactly on every row, for low order.
- **III.6.22** [`pure_alloc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Unload.lean#L230-L278) *(key result)* — For homogeneous symmetric tensors, the outgoing expansion decomposes into graded pieces with norm bounds C‖A‖L^{-(i+1)} and exact top-degree weight L^{n+1} times the original diagonal.
- **III.6.23** [`deliver`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/RollFilm.lean#L53-L105) *(key result)* — For positive scale, there is a uniform constant C such that for every flight and prism there is a prism related to it by a reel bound with constant C.
- **III.6.24** [`link_charge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/LCharge.lean#L145-L251) *(key result)* — For any gauge, scale, and kernel choices there exist constants such that the pre-L pricing harness holds for the shell test.
- **III.6.25** [`cancellation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/FlatCancel.lean#L123-L132) *(key result)* — If directional leading terms along log-link curves vanish below order q, then iterated derivatives of f at 0 vanish on polynomial-space inputs of total weight below q.
- **III.6.26** [`lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Columns.lean#L115-L120) *(key result)* — The column function's iterated derivative at 0 vanishes on tuples of potentials whose total weight is below the column's grade.
- **III.6.27** [`upper_end`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/HighTable.lean#L88-L122) *(numbered result)* — Every tensor coefficient entry before removing the diagonal is bounded by a constant times a power of the unit step.
- **III.6.28** [`billFor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Reaches.lean#L74-L86) *(key result)* — Uniformly in data, the true probe path and the forecast path agree up to a C^n fuzz of size D(1+B)exp(-σχ/2) near the origin.
- **III.6.29** [`preBill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Ledger.lean#L57-L74) *(key result)* — There is a uniform constant C such that every entry of the receipt matrix is bounded by C times a power of the unit step determined by the grade.
- **III.6.30** [`toll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/East.lean#L112-L139) *(key result)* — There is a uniform constant C such that the primary transition matrix has a leading (triangular with bounded entries) structure for all flights and parameters in the blend.
- **III.6.31** [`moments`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Moments.lean#L178-L211) *(key result)* — All transverse spectral moments of the reflection-positive measure are finite with bound polynomial in inverse margin r.
- **III.6.32** [`pay_moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Moments.lean#L246-L303) *(numbered result)* — Some inverse power weight in the time energy times transverse moments is integrable for the pressed measure.
- **III.6.33** [`walk`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Walk.lean#L159-L172) *(key result)* — For a mixed cluster of axes with nonpositive weights, the correction cost along an axis is bounded by any positive budget once the scale parameter is large, for suitably small growth rate.
- **III.6.34** [`cross_le`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Cross.lean#L152-L189) *(numbered result)* — A Cauchy-Schwarz bound: the cross term is at most t times one weighted integral plus the other divided by t.
- **III.6.35** [`one_mode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Mode.lean#L99-L183) *(numbered result)* — One-variable subtraction on fixed transverse profiles yields a budget for tensor-product tests after raising the time-collision order.
- **III.6.36** [`line_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Tunnel.lean#L215-L239) *(key result)* — For a collinear mixed word, projected cluster costs on a line obey an explicit budget with missing-axis price.
- **III.6.37** [`mass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Mass.lean#L115-L180) *(key result)* — The cone-weighted integrals of the conserved stress tensor are integrable and satisfy a decaying budget with exponent gained from the low-energy estimate.
- **III.6.38** [`exterior_size`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Vanishing.lean#L68-L120) *(main result)* — Exterior packets of the Ward integrand against position tests have integrals of budget -101, i.e. decay faster than any chosen power.
- **III.6.39** [`blows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L105-L114) *(key result)* — At external distances the actual Ward integrand is eventually integrable and its integrals decay at budget rate -1.
- **III.6.40** [`flux_value`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/River.lean#L84-L113) *(key result)* — The flux of a stress tensor against a compactly supported smooth field equal to a rotation generator near the points equals minus the local spin turn.
- **III.6.41** [`outer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L114-L121) *(main result)* — Under the hierarchy and conservation hypotheses, the line-sum property holds and the local turn vanishes on configuration points lying on a line.
- **III.6.42** [`service`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L116-L145) *(key result)* — The actual stationary branch and Hessian supply the counter interface needed for matching at every funded use, without extra assumptions.
- **III.6.43** [`extend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L115-L150) *(key result)* — There exist path data, a branch, and a weight forming an admissible move extending a same-ticket propagation from cutoff to level zero.
- **III.6.44** [`onMeeting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Enclosures.lean#L107-L144) *(key result)* — Given a classical matching of the stationary branch, a fixed-L Taylor remainder estimate with uniform sup bounds holds for the real color-entry configuration.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

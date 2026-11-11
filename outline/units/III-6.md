# III.6. The stationary branch: background field of the effective action

*Part III — Ultraviolet construction (renormalization group).* 21,329 lines of Lean in 2,681 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is **checked** against the Lean and **edited** in three rounds by three models. It is updated as it improves.


**Part:** III, Ultraviolet construction (renormalization group). **Lean:** the work items F01–F05 are stated in [`YM/Bid/Station.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean) and F06–F09 in [`YM/Bid/Craft.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean). Their proofs are in [`YM/Work/F01`–`F09`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work). The other packages are: the uniform branch [`YM/Push/STATIONARY_UNIFORM/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM); the jet port [`YM/Planned/STATIONARY_JET_PORT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT); and the iteration step [`YM/Extra/ITERATION_NO_LOSS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS). Also included are [`YM/Planned/PRIMARY_INTEGRAL_295/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295), [`YM/Further/PHYSICAL_PERIOD_LIMIT_F933/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933), [`YM/Planned/ATOM_REGULAR_ESTIMATE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_REGULAR_ESTIMATE), [`YM/Next/ROTATIONS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS) and [`YM/Next/WARD_BIN/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/WARD_BIN). **Size:** 21,329 lines in the main-theorem closure. Of these:

- the F work items F01–F09 with their auxiliary files: about 3,800;
- the uniform branch: 3,274;
- the jet port: 1,123;
- the iteration step: 1,700;
- the primary-integral package: 3,662;
- the period-limit comparison: 1,262;
- the atom regularity estimate: 474;
- the rotation and Ward material: about 5,900, including the chain of results leading to the rotation theorem.

## 1. What this unit proves

**Setting.** The definitions are those of III.1. All lattice sums use counting measure.

*Lattices, group, distance.*

- One renormalization step goes from a fine torus $\Lambda_f$ to a coarse torus $\Lambda_c$, with an odd block factor $L\ge3$ and $f=Lc$, in dimension $4$. The patch order satisfies $J\ge4$.
- $G$ is the gauge group and $\mathfrak g$ its Lie algebra, normed in physical colour coordinates.
- $\mathrm{chord}(U)=\Vert U-1\Vert/c_G$ and $\mathrm{price}(U)=\tfrac12\mathrm{chord}(U)^2$. With this normalization $\mathrm{price}(e^{tX})=\tfrac12t^2|X|^2+o(t^2)$; the price is the Wilson plaquette function up to a constant.

*The step datum $S$.* It consists of:

- a block-spin kernel, with penalty $\kappa>0$, from the kernel choices $K$;
- a patch, with order $J$ and macro-radius $R_S=(J+7)L$;
- a finite set of tags (frame and path choices; [`StepData.Choices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L34));
- for each tag $k$, a predictor $U\mapsto Q_k(U)$ from fine configurations to coarse configurations.

$P$ denotes the derivative of the predictor at the identity. It acts on fine $\mathfrak g$-valued $1$-forms; it is the linearized block average plus a gradient correction at the block roots. $\bar Q$ denotes the linearized block average alone.

*"Larger".* $S$ is *larger* ([`Larger`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L64)) if three conditions hold:

- the minimizing frame and predictor are unique whenever their minimizing branches are selected, and the fallback set of eligible axial frames is nonempty; see [`Branches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185);
- $100R_S\le f$;
- $c>1$.

*Forests and the axis chart.*

- A *forest* $H$ is a spanning forest of the fine torus, made of one tree in each block, rooted at the block centre, with tree height at most $4L$ ([`Forest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L24-L29)). Its bonds are the *tree bonds*, all internal to blocks; the remaining bonds are the *free bonds* $H^{\rm fr}$.
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
  - if $r_{ij}$ is the sum of row-$i$ coefficients whose plaquette type is $j$, then $c_p\delta_{ij}+\sum_k r_{ki}r_{kj}=\delta_{ij}$;
  - for each pair of plaquette types and colour indices, the loop coefficients have zero sum and zero first moment in every component of the relative slot offset; these moment series are summable.

*The tested action.*

- The *main term* ([`mainTerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L27-L28)) is the average over the finite group $\mathcal S$ of signed coordinate permutations, acting by pullback $s^*U$:
$$\mathcal M_p(W;U)=\frac1{|\mathcal S|}\sum_{s\in\mathcal S}\Big[\sum_\pi\big(c_p\,\mathrm{price}((s^*U)_\pi)+\tfrac12|\ell_W(s^*U)_\pi|^2\big)+\sum_x\sum_i\big(\mathrm{cub}_i+\mathrm{quart}_i\big)(s^*U)_x\Big].$$

- The *tested action* for tag $k$ ([`tested`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L81-L84)) is
$$\mathcal T^H_k(x,a)=\mathcal M_p\big(W;U^H(x,a)\big)+\kappa\sum_{b}\mathrm{price}\big(e^{x_b}\,Q_k(U^H(x,a))_b^{-1}\big),$$
where $b$ runs over the coarse bonds. The second term is the block-spin penalty.

*Beds, towers and the quadratic identities.*

- A *bed* $B$ ([`Bed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L35-L40)) is a family of translation-invariant kernels on plaquette $2$-forms: a metric $M_B$, an inverse kernel, a diagonal kernel $D_B$, a dual diagonal kernel, and roots $R_B$. Set $K_B=d^\top M_Bd$, which acts on $1$-forms.
- A *floor* $(a,A)$ for $B$ ([`Floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68)) requires:
  - the root identity $M_B=c_p\,1+R_B^\top R_B$;
  - inverse identities for the metric and diagonal kernels;
  - the Fourier-symbol normalization $\widehat M_B(0)=I$ and $M_Bd=D_Bd$ on the specified torus;
  - symmetry of $M_B$ and $D_B$;
  - the bounds $a|\omega|^2\le\langle\omega,M_B\omega\rangle\le A|\omega|^2$, and the same bounds for $D_B$.
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

- A *local chart ratio* $\mathscr J$ ([`LocalRatio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L28-L38)) is a density $J_{\mathscr J}$ on a ball $\{|X|<r_{\mathscr J}\}\subset\mathfrak g$, where $r_{\mathscr J}>0$ and $s_{\mathscr J}>0$ is a scale. It satisfies:
  - $J_{\mathscr J}$ is measurable, positive and real-analytic on the ball, with $J_{\mathscr J}(0)=1$;
  - $\exp$ is injective on the ball and its image is open;
  - the pushforward of $s_{\mathscr J}J_{\mathscr J}(X)\,dX$ restricted to the ball is probability Haar measure restricted to its exponential image.

  Only these density properties enter the forest comparison.

- The *thermal function* of a branch ([`thermal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L46-L49)) is
$$\Theta^H_k(x)=\mathrm{loop}_W\big(U^H(x,\rho(x))\big)+\tfrac12\log\det\mathrm{Hess}_a\mathcal T^H_k(x,\rho(x))-\sum_{e\in H^{\rm fr}}\log J_{\mathscr J}(\rho(x)_e).$$
  The Hessian is taken in the orthonormal colour basis. For a branch with a positive vertical gap, the determinant and chart densities are positive near $0$.

**Proposition III.6.1 (second-order jet of the tested action on the tree slice; F03).** Let $S$ be larger, $H$ a forest and $B$ a bed with a floor $(a,A)$ on $\Lambda_f$ for the clip $p$. Let $W$ be a path datum with bounds $(p,\sigma,C,\Lambda)$, attached to $B$, with $B$ sworn on $\Lambda_f$. Assume that the main term of $W$ is analytic along analytic families through the identity (true by III.6.2). Then for every tag $k$, $\mathcal T^H_k$ is real-analytic at $0$, with $\mathcal T^H_k(0)=0$ and $D\mathcal T^H_k(0)=0$. Moreover, for all $(x,a),(x',a')$,
$$D^2\mathcal T^H_k(0)\big[(x,a),(x',a')\big]=\langle ds,\,M_B\,ds'\rangle+\kappa\,\langle x-Ps,\;x'-Ps'\rangle,\qquad s=\iota x+a,\ s'=\iota x'+a'.$$
Here $a$ is extended by $0$ to tree bonds, and the pairings are summed over plaquettes or coarse bonds and over colours.
*Status:* theorem. Only the well-posedness clause of "larger" is used.
*Lean:* [`Bid.F03`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L78-L81), with conclusions [`Prismatic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L47) and [`Comptroller`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L42-L45); proof [`Work.F03.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L159-L175).

**Proposition III.6.2 (analyticity of the main term; F02).** Let $W$ have bounds $(p,\sigma,C,\Lambda)$. Let $X$ be a finite-dimensional real normed space and $x_0\in X$. Let $y\mapsto A(y)$ be a family of fine configurations with $A(x_0)=1$ whose link matrices are real-analytic at $x_0$. Then $y\mapsto\mathcal M_p(W;A(y))$ is real-analytic at $x_0$. The proof does not use $A(x_0)=1$: the main term is analytic along analytic families at every point.
*Status:* theorem. It supplies the hypothesis [`Fires`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L59-L62) of III.6.1.
*Lean:* [`Bid.F02`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L73), [`Work.F02.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02.lean#L141-L143).

**Proposition III.6.3 (gap of the vertical Hessian; F01).** Assume the shell comparison E02 (§2). Fix $G$, $L$, $J$, kernel choices $K$ with penalty $\kappa$, and $a>0$. Then there is $\eta>0$ with the following property. Take sides $c,f$; a larger step datum $S$ with kernel choices $K$, block factor $L$ and order $J$; a forest $H$; a clip $p$; a bed $B$ with floor $(a,A)$ for some $A$; and a path datum $W$ such that every $\mathcal T^H_k$ is analytic at $0$ with the value, gradient and Hessian specified in III.6.1. Then for every tag $r$ and every $v\in\mathfrak g^{H^{\rm fr}}$,
$$\eta\sum_{e\in H^{\rm fr}}|v_e|^2\le D_a^2\mathcal T^H_r(0,0)[v,v].$$
One may take
$$\eta=\frac{\min(a,\kappa)}{1+\beta+\gamma},\qquad \beta=2C_{\rm E02}^2\,L^4\cdot4\cdot6\,|X|^2,\qquad \gamma=2L^4,$$
where:

- $C_{\rm E02}=C_{\rm E02}(G,L,J,K)$ is the constant of E02;
- $X=\{-R_S,\ldots,R_S\}^4\subset\mathbb Z^4$, where $R_S=(J+7)L$, so $|X|=(2R_S+1)^4$;
- the factors $L^4$, $4$ and $6$ are the numbers of fine sites per block, of axes and of plaquette orientations.

So $\eta$ depends only on $(G,L,J,K,a)$. It does not depend on $c$, $f$, $H$, $B$ beyond its floor, or $W$.
*Status:* theorem, conditional on E02 in its statement. E02 is proved in III.10 ([`Work.E02.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E02.lean#L132-L244)), and the combination is unconditional in III.6.6.
*Lean:* [`Bid.F01`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L68-L71), with conclusion [`PriceGap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L100-L101); proof [`Work.F01.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L266-L311).

**Proposition III.6.4 (existence, tangent and value of the critical branch; F04).** Let $S$ be larger, $H$ a forest, $B,C$ beds, $p$ a clip, $W$ a path datum, $a>0$, and $T$ towers for $(S,B,C)$ satisfying the diagonal identities. Assume:

- every $\mathcal T^H_k$ is analytic at $0$;
- every $\mathcal T^H_k$ has the value, gradient and Hessian specified in III.6.1 with bed $B$;
- the gap of III.6.3 holds with constant $a$;
- there are a clip $q$ and real constants $v,u$ for which $C$ has floor $(v,u)$ on $\Lambda_c$.

Then there is a critical branch $\rho$ for $(H,p,W)$ such that:

- (ii) $D\rho(0)=\mathrm{rel}_H$, built from the tower map $\mathcal W$;
- (iii) for every tag $k$, $x\mapsto\mathcal T^H_k(x,\rho(x))$ is analytic at $0$, and its second derivative at $0$ is $\langle dx,M_C\,dx'\rangle$. Equivalently, its $2$-jet is that of $\tfrac12\langle dx,M_Cdx\rangle$.

The floor of $C$ is unused in the proof. Of the diagonal identities, only the clause $K_B\mathcal W=\bar Q^\top K_C$, $\bar Q\mathcal W=1-\kappa^{-1}K_C$ is used.
*Status:* theorem. It gives a germ only: no control of the size of the neighbourhood.
*Lean:* [`Bid.F04`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L86-L90), with conclusions [`Critical`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L88-L91), [`Guessed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L97-L98) and [`HeatG`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L83-L84); proof [`Work.F04.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L149-L159).

**Proposition III.6.5 (independence of the gauge-fixing forest; F05).** Let $S$ be larger, $H,H'$ forests, and $W$ a path datum with bounds $(p,\sigma,C,\Lambda)$. Let $\rho,\rho'$ be critical branches for $H$ and $H'$. Assume positive gap constants $a,b$ for $H,H'$, respectively, and let $\mathscr J$ be a local chart ratio. Then for every tag $k$, for $x$ near $0$:

- (i) $\mathcal T^H_k(x,\rho(x))=\mathcal T^{H'}_k(x,\rho'(x))$;
- (ii) $\Theta^H_k(x)=\Theta^{H'}_k(x)$.

The gap for $H$ is unused in the proof. The statement of (ii) allows an additive constant; the proof gives $0$.
*Status:* theorem.
*Lean:* [`Bid.F05`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L94-L99), [`Work.F05.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05.lean#L60-L67), [`Work.F05.same_thermal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05.lean#L42-L57).

**Proposition III.6.6 (the stationary branch from F01–F04).** For every $G$, $L$, $J$, kernel choices $K$ and $a>0$ there is $\eta>0$ with the following property. Take a larger $S$ with these parameters; a forest $H$; beds $B,C$; clips $p,q$; a path datum $W$; and towers $T$. Assume:

- $T$ satisfies the diagonal identities for $(S,B,C)$;
- $B$ has floor $(a,A)$ for clip $p$ on $\Lambda_f$, and $C$ has floor $(v,u)$ for clip $q$ on $\Lambda_c$, for some real $A,v,u$;
- $W$ has bounds $(p,\sigma,C_0,\Lambda)$ and is attached to $B$;
- $B$ is sworn.

Then the gap of III.6.3 holds with constant $\eta$, and there is a critical branch with properties (ii)–(iii) of III.6.4.
*Status:* theorem. [`Bid.cospons`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L108-L113) derives it from E02 and F01–F04. [`Integrated.stationary_scene`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L229-L232) instantiates it with the proofs of E02 and F01–F04, so no work-item assumption remains. The geometric, floor and path hypotheses above are retained.
*Lean:* [`Bid.Scene`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L102-L106).

**Proposition III.6.7 (the branch on a volume-independent ball).**

*(a) Uniform implicit function theorem.* Let $\iota,\tau$ be finite sets and let $\ell:\iota\sqcup\tau\to\Lambda$ assign their coordinates to sites of a four-dimensional torus, with at most $K_0$ coordinates per site. Equip the coordinate spaces with the sup norm. Fix $C_0,a_0,r,m>0$ and an integer $n\ge3$. Suppose $f:\mathbb R^{\iota\sqcup\tau}\to\mathbb R$ is real-analytic at every point $z$ of $\{\|z\|_\infty<r\}$ and, for $1\le k\le n$, every coordinate tuple $q_1,\ldots,q_k$ and every $j\le k$,
$$\big|\partial_{q_1}\cdots\partial_{q_k}f(z)\big|\le C_0\exp\!\left(-a_0\sum_{i=1}^k\mathrm{dist}(\ell(q_j),\ell(q_i))\right).$$
Here distance is the periodic max-distance. Assume $\nabla_\tau f(0)=0$ and $D^2_{\tau\tau}f(0)\ge mI$ in counting coordinates. Then there are positive radii $r_{\rm hor}\le r_{\rm zone}\le r_{\rm safe}<r$, depending only on $(K_0,C_0,a_0,r,m)$, and a map $g:\mathbb R^\iota\to\mathbb R^\tau$ with $g(0)=0$, such that whenever $\|x\|_\infty<r_{\rm hor}$:

- $g$ is analytic at $x$;
- $\|g(x)\|_\infty\le r_{\rm zone}/2$;
- $g(x)$ is the unique critical point of $f(x,\cdot)$ in $\{\|v\|_\infty\le r_{\rm zone}\}$.

*(b) Application to the tested action.* Fix $G$, real constants $\mu,C$, a patch order $J$, kernel choices $K$, and an integer $n\ge3$. There is a choice of auxiliary constants, made before $L$, with the following property. For every clip $p$, real $\Lambda$, larger step $S$ of order $J$ with kernel choices $K$, forest $H$ and path datum $W$ with bounds $(p,\mu,C,\Lambda)$, part (a) applies to the tested action in individual real colour components. It gives a critical branch $g$ common to all tags: for each tag $t$ and $\|x\|_\infty<r_{\rm hor}$, $g(x)$ is the unique critical point of $\mathcal T^H_t(x,\cdot)$ in the closed sup-ball of radius $r_{\rm zone}$. The radii depend on the auxiliary constants, $p$ and $L$, but not on $c,f,H,\Lambda$ or $W$ beyond its bounds. Coarse coordinates are located at their fine block roots when measuring decay.
*Status:* theorem.
*Lean:* (a) [`Receipt.throughout`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L179-L215) with hypotheses [`Receipt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L24-L33) and radii [`reserveX`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L42-L43). (b) [`Before.graph`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L253-L294), [`Before.Service`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L245-L251), [`pre_order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L160-L167).

**Proposition III.6.8 (derivatives along the branch).** Fix an integer $N\ge0$, the data and hypotheses of III.6.7(b), auxiliary constants chosen at order $N+3$, and any branch $g$ satisfying its analytic, size and uniqueness conclusions. Then for every tag the following hold, with constants depending only on the corresponding bounds and radii.

- (a) At every point of the closed joint sup-ball of radius $r_{\rm safe}\ge r_{\rm zone}$, the vertical Hessian, as a matrix function of all variables, has a *block package* of order $N$:
  - it is analytic and $\ge m/2$;
  - its entries and their derivatives up to order $N+1$ are localized;
  - for every principal sub-block and every shift $t\ge0$, the shifted sub-block is invertible;
  - the inverse of the shifted sub-block is exponentially localized with constant $O((1+t)^{-1})$, has localized derivatives up to order $N+1$, and has $\ell^2$ norm $\le(m/2+t)^{-1}$;
  - $\log\det$ of the shifted sub-block is analytic and its derivatives of orders $1,\ldots,N+1$ are localized, with bounds proportional to $(1+t)^{-1}$.
- (b) On the coarse sup-ball of radius $r_{\rm hor}$, the map $g$ and the graph $x\mapsto(x,g(x))$ have localized derivatives of orders $1,\ldots,N+2$.
- (c) The classical action $x\mapsto\mathcal T^H_t(x,g(x))$ has localized derivatives of orders $1,\ldots,N+3$.
- (d) The Hessian along the branch, $x\mapsto\mathrm{Hess}_a\mathcal T^H_t(x,g(x))$, has a block package of order $N$.

For a matrix function $A(z)$, localization of its coefficients means a bound
$$|\partial_{q_1}\cdots\partial_{q_k}A_{ij}(z)|\le C_k\exp\!\left[-a_k\left(\mathrm{dist}(i,j)+\sum_\nu\mathrm{dist}(i,q_\nu)\right)\right],$$
with coordinates replaced by their assigned sites. For positive-order derivatives of a map such as $g$, omit $j$; for a scalar function use the bound in III.6.7(a). No volume-independent bound on the value of the classical action or of $\log\det$ is asserted.

*Status:* theorem under the hypotheses of III.6.7(b).
*Lean:* [`Counter.service`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L116-L145), [`Counter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L75-L88), [`BlockPack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Pack.lean#L65-L84).

**Proposition III.6.9 (one level of the iteration).** Assume the following.

- The schedule hypotheses of III.2: constants issued before $L$, warm-up, and a paid schedule.
- A horizon of beds $M_{N,m}$ and towers with the prescribed strip and derivative bounds, floors on every torus, diagonal and stack identities, and identity diagonal at the cutoff ([`Suffices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L132-L139)).
- All beds are sworn at the periods used. The towers are harmonic: the zero-momentum coefficient of their 2-form component is independent of the fine residue within a block.
- A gap quote, i.e. III.6.6 at every level, which the Lean supplies from [`Iteration.post`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Post.lean#L99-L106).
- A local chart ratio.
- The [fresh-data hypotheses](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Gates.lean#L79-L96). For each admissible input datum and each family of branches satisfying (i), these hypotheses supply the fresh cubic, quartic and loop atoms and their bounds, with the classical and thermal matchings each verified on a chosen forest and tag per period. These choices may differ between the two matchings. It also supplies the cutoff cubic and quartic atoms.

Let $m<N$ and let $T$ be a path datum *funded* at level $m+1$ ([`Work item`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Gates.lean#L35-L39)). That is, the rows of $T$ enumerate the root-kernel coefficients of $M_{N,m+1}$ using the fixed coordinate paths to each offset; $T$ has the level-$(m+1)$ bounds; and the sums of absolute cubic and quartic coefficients weighted by exponential path length are each at most the level cap. This row convention is stronger than attachment alone. Then there exist a path datum $R$ funded at level $m$, branches $\rho_{p,F}$ for every period $p$ and every forest $F$, and a number $\alpha$ such that:

- (i) each $\rho_{p,F}$ satisfies the conclusions of III.6.6 with the level-$(m+1)$ gap, its tower map, and the bed $M_{N,m}$;
- (ii) $|\alpha+\kappa_G\log L_m|+1\le\mathrm{drift}_{m+1}$, where $\kappa_G$ is the one-loop slope constant of $G$;
- (iii) for every $p$ and $F$, $x\mapsto\mathcal T^F_k(x,\rho_{p,F}(x))$ (built with $T$ and the clip of level $m+1$) has the same jets of orders $0,\dots,4$ at $0$ as $x\mapsto\mathcal M_{q}(R;e^x)$ (clip $q$ of level $m$);
- (iv) for every $p$ and $F$, the thermal function is analytic and the Hessian determinant is positive near $0$. Moreover, for any two real plane waves $w_1,w_2$, each the real part of a complex lattice plane wave whose coefficient in every axis and colour has modulus at most $1$,
$$\big|D^2\Theta^F_k(0)[w_1,w_2]-D^2\big(\alpha\,\mathcal M^{(2)}_q(R)+\mathrm{loop}_R\big)(0)[w_1,w_2]\big|\le|\Lambda_c|\,\Gamma\,\lambda_{m+1}\,e^{-\gamma c}.$$
  Here $\mathcal M^{(2)}_q(R;x)$ denotes the symmetrized Wilson-plus-row-square term evaluated on $e^x$:
$$\mathcal M^{(2)}_q(R;x)=\frac1{|\mathcal S|}\sum_{s\in\mathcal S}\sum_\pi\left[c_q\,\mathrm{price}((s^*e^x)_\pi)+\tfrac12|\ell_R(s^*e^x)_\pi|^2\right].$$
  It includes all higher-order dependence on $x$ in these terms; it is not their degree-two Taylor polynomial. The constants $\Gamma,\gamma>0$ are chosen after $L$. All conclusions hold for every tag $k$, and the same $R,\alpha$ serve every period and forest.

A companion statement, [`Iteration.peak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L35-L48), gives a funded path datum at the cutoff level $N$ whose main term has the jets of order $\le4$ of the Wilson energy.
*Status:* theorem under the stated schedule, horizon and fresh-data hypotheses. Their discharge is discussed in §7.
*Lean:* [`Iteration.extend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L115-L150), [`Move`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L26-L33), [`ClassicalMatch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L108-L109), [`FiniteBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L62-L71).

**Further results attached to this unit (statements only; see §4.7).**

- *Beds and towers (F06–F09).* These are combined in [`Bid.pinning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L107-L166) (III.10) into a horizon meeting the prescribed bounds. The construction retains the supplied beds and the first two tower components; the floors and original diagonal identities are inputs, and the stack identities are outputs.
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
- **III.10 (one nonlinear step).** E02, the shell comparison ([`Bid.E02`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L49-L52), [`Cops`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L44-L47)). For given $(G,L,J,K)$ there is $C_{\rm E02}>0$ with the following property. For every larger $S$, forest $H$, fine configuration $U$ in the slice of $H$, coarse $V$, fine bond $e$ (in block $i$, direction $\mu$) and tag $k$, assume the selected frames have positive mass at all coarse sites within periodic offset $[-2,2]^4$ of $i$. Then:
$$\mathrm{chord}\big(U_e\mathcal R(V)_e^{-1}\big)\le C_{\rm E02}\,\mathrm{port}_i(U)+\mathbf 1_{e\ \mathrm{crossing}}\,\mathrm{wire}(Q_k(U),V)_{(i,\mu)}.$$
  Here $\mathrm{wire}(Q,V)_b=\mathrm{chord}(V_bQ_b^{-1})$, and $\mathrm{port}_i(U)\le\sum_{z\in X}\sum_\pi\mathrm{chord}(U_\pi)$, summed over plaquettes $\pi$ at $\mathrm{root}_i+z$. The estimate is proved in [`Work.E02.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E02.lean#L132-L244). The combination [`Bid.cospons`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L108-L113) and the horizon construction [`Bid.pinning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L107-L166) are filed under III.10.

- **III.3 (free kernels).** The beds are free lattice kernels in Fourier (Bloch/Laurent) form. F06–F09 complete the towers while retaining the supplied beds and floors.
- **III.2 (order of constants).** The constants issued before $L$, the block sizes $L_m$, the post-$L$ costs, and the drift window, all used in III.6.9. In particular the gap constant is post-$L$ and the constants of III.6.7(b) are chosen before $L$.
- **I.1, II.1, II.2.** The lattice, lattice forms and $d$; the group $G$ and its exponential, chord, price and Haar measure; the path data and their bounds.
- **III.16 (analytic estimates).** Real-analytic functions, Taylor jets and iterated derivatives.
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
- The fresh-data, schedule and horizon hypotheses of III.6.9.

## 3. Strategy

At fixed coarse field, the renormalization step expands the fine-field integral around a stationary background. Gauge fixing removes the blockwise gauge directions. A positive vertical Hessian then gives an analytic branch, and the tower identities identify its tangent and the quadratic part of its classical value. The one-loop contribution is the Hessian determinant corrected by the Haar density and the loop atoms.

The construction uses the penalty $\kappa\sum_b\mathrm{price}(e^{x_b}Q_k(U)_b^{-1})$ and fixes the fine field on a rooted forest inside each block. The shell comparison bounds the free links by curvature and predictor response. After linearization and summation, it gives a positive vertical Hessian with a lower bound independent of the torus volume. The analytic implicit function theorem produces the branch germ. A change of forest preserves both the stationary value and the thermal function: the squared Jacobian in the Hessian determinant cancels the Haar-density ratio.

For a branch on a ball independent of the volume, exponential decay of the inverse Hessian gives a uniform sup-norm bound. A Newton contraction produces the branch on that ball; differentiating the stationarity and resolvent identities controls its localized derivatives. Finally, the iteration combines inherited atoms with fresh classical and one-loop data supplied by the hypotheses of III.6.9. This is a penalized background-field construction in the spirit of Bałaban's method. It establishes local stationarity and quantitative control near the identity.

## 4. Steps

Lemmas 4.1–4.4 use the hypotheses of III.6.1, Lemmas 4.5–4.7 those of III.6.3, Lemmas 4.8–4.12 those of III.6.4, and Lemmas 4.13–4.17 those of III.6.5. Lemmas 4.19–4.20 use III.6.7(a)–(b), respectively, and Lemmas 4.22–4.24 use III.6.9.

### 4.1 The second-order jet (F02, F03)

**Lemma 4.1 (holomorphic extension of the main term).** Let $W$ have bounds $(p,\sigma,C,\Lambda)$ and let $U$ be any configuration on a finite torus. The $\ell_W$-series and the sums of cubic and quartic atoms have holomorphic extensions near the matrix pair $(U,U^*)$. Their summands are uniformly summable on the ambient ball of radius $R_\sigma=e^{\sigma/2}-1$, using the maximum of the linkwise Frobenius norms.
*Sketch:* Treat the link and inverse-link matrices as independent complex variables. A word of length $l$ has norm at most $(1+R_\sigma)^l\|1\|$. A slot of length $l$ uses words of length at most $2l$, so its norm is at most $C_Ge^{\sigma l}$, with $C_G$ independent of $l$. The coefficient bounds therefore give normal convergence; a Cauchy estimate on a smaller ball controls the derivative series. The Wilson term is polynomial and symmetrization is finite. Composition with $y\mapsto(A(y),A(y)^*)$, followed by restriction to real scalars, proves III.6.2.

*Lean:* [`F02.analytic_series`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02/Series.lean#L57-L74), [`rowExt_series`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02.lean#L30-L41), [`atomExt_series`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02.lean#L51-L57), [`mainTerm_contDiffAt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02.lean#L126-L139).

**Lemma 4.2 (the chart and its tangent).** The map $(x,a)\mapsto U^H(x,a)$ is analytic near $0$, with $U^H(0,0)=1$. The derivative of $t\mapsto U^H(t(x,a))_e$ at $0$ is $s_e$, where $s=\iota x+a$. On tree bonds $s_e=0$, because tree bonds are internal and $\iota x$ vanishes there. Consequently $\mathrm{incl}(x,a)=(x,\log U^H(x,a))$ is analytic near $0$, with $\exp\circ\log U^H=U^H$ near $0$ and $D\,\mathrm{incl}(0)(x,a)=(x,s)$.
*Lean:* [`F03.live_rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L86-L119), [`inclusion_works`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L67-L80), [`inclusion_deriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L121-L149).

**Lemma 4.3 (flat jets).** Let $\mathcal F_k(x,A)=\mathcal M_p(W;e^A)+\kappa\sum_b\mathrm{price}(e^{x_b}Q_k(e^A)_b^{-1})$ be the action in logarithmic coordinates on all fine bonds. Under the hypotheses of III.6.1:

- $\mathcal F_k(0)=0$ and $D\mathcal F_k(0)=0$;
- $D^2\mathcal F_k(0)[(x,A),(x',A')]=\langle dA,M_BdA'\rangle+\kappa\langle x-PA,x'-PA'\rangle$.

*Sketch:* The computation rests on an abstract principle: if $f$ is $C^2$ at $0$ and, for every $z$, $f(tz)/t^2\to\tfrac12Q(z,z)$ for a symmetric bilinear $Q$, then $f(0)=0$, $Df(0)=0$ and $D^2f(0)=Q$. The limits are:

- $\mathrm{price}((e^{tA})_\pi)/t^2\to\tfrac12|dA_\pi|^2$;
- $\ell_W(e^{tA})/t\to R_B\,dA$, because $W$ is attached to $B$;
- so the quadratic part tends to $\tfrac12\langle dA,(c_p+R_B^\top R_B)dA\rangle=\tfrac12\langle dA,M_BdA\rangle$, by the floor identity;
- the cubic and quartic sums are $o(t^2)$; each slot vanishes at the identity and has a linear tangent;
- averaging over $\mathcal S$ does not change the limit, because $B$ is sworn;
- $Q_k(e^{tA})$ has derivative $PA$ at $t=0$ (this uses well-posedness), so the penalty tends to $\tfrac\kappa2|x-PA|^2$.

*Lean:* [`F03.hessian_of_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Calculus.lean#L102-L117), [`quadratic_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Flat.lean#L23-L38), [`main_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Flat.lean#L63-L77), [`noise_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Flat.lean#L107-L128), [`flat_jets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Flat.lean#L168-L188), [`metric_pair`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Metric.lean#L135-L140). *(proof read; the metric identity and cubic/quartic limit: statement only)*

**Lemma 4.4 (transport to the tree slice).** Near $0$, $\mathcal T^H_k=\mathcal F_k\circ\mathrm{incl}$. Since $D\mathcal F_k(0)=0$, $D^2\mathcal T^H_k(0)[u,u']=D^2\mathcal F_k(0)[D\mathrm{incl}(0)u,D\mathrm{incl}(0)u']$; no term with $D^2\mathrm{incl}$ survives. With Lemmas 4.2–4.3 this gives III.6.1.
*Lean:* [`F03.from_flat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L151-L156), [`hessian_comp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Calculus.lean#L120-L142).

### 4.2 The gap (F01)

**Lemma 4.5 (link bound).** Let $v\in\mathfrak g^{H^{\rm fr}}$ and $y=s(0,v)$, i.e. $v$ on free bonds and $0$ on tree bonds. Assume E02. Then for every fine bond $e$, in block $i$ and direction $\mu$,
$$|y_e|\le C_{\rm E02}\sum_{z\in X}\sum_{\pi}\big|dy_{(\mathrm{root}_i+z,\pi)}\big|+\big|(Py)_{(i,\mu)}\big| .$$
*Sketch:* Apply E02 with $V=1$ to $U_t=e^{ty}$. The configuration lies in the slice, and for small $t$ the selected frames have positive mass. One obtains $\mathrm{chord}(U_{t,e})\le C\,\mathrm{port}_i(U_t)+\mathrm{chord}(Q_k(U_t)_{(i,\mu)})$. Divide by $|t|$ and let $t\to0$, using $\mathrm{chord}(\gamma(t))/|t|\to|\gamma'(0)|$ along curves through $1$.
*Lean:* [`F01.link_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L63-L108), [`chord_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L22-L28).

**Lemma 4.6 (summation).** For the extension $y$ of Lemma 4.5, $\sum_e|y_e|^2\le\beta\sum|dy|^2+\gamma\sum|Py|^2$, with $\beta,\gamma$ as in III.6.3.
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

**Lemma 4.8 (tags agree near the identity).** If $S$ is well posed, the predictors $Q_k$ for different tags coincide on a neighbourhood of the identity configuration. Hence the functions $\mathcal T^H_k$ coincide near $0$. Near the identity, the frame and connector rules select their unique minimizers, so the tags do not affect the predictor. Local logarithms transfer this equality to arbitrary nearby configurations and then to the axis chart.
*Lean:* [`F04.prediction_germ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04/Choices.lean#L36-L61), [`tested_germ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04/Choices.lean#L78-L86).

**Lemma 4.9 (existence).** The gap makes the vertical Hessian at $0$ injective, hence invertible in these finite-dimensional spaces. The analytic implicit function theorem, applied to $D_a\mathcal T^H_{k_0}(x,a)=0$ for one tag $k_0$, gives an analytic $\rho$ with $\rho(0)=0$. By Lemma 4.8 it is critical for every tag.
*Lean:* [`F04.invertible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L32-L60), [`exists_branch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L62-L86).

**Lemma 4.10 (test-pair identity).** Assume the tower identities and the second jet of III.6.1. Then for every $z=(y,b)$ and coarse $x$,
$$D^2\mathcal T^H_k(0)\big[z,(x,\mathrm{rel}_Hx)\big]=\langle dy,M_C\,dx\rangle .$$
*Sketch:*

- $s(x,\mathrm{rel}_Hx)=\widehat{\mathcal W}_Hx$, since both sides vanish on tree bonds.
- The identities of §2 (III.1) give $x-P\widehat{\mathcal W}_Hx=\kappa^{-1}K_Cx$ and $K_B\widehat{\mathcal W}_H=P^\top K_C$.
- So the left side equals $\langle s(z),P^\top K_Cx\rangle+\langle y-Ps(z),K_Cx\rangle=\langle y,K_Cx\rangle$.

When $M_B$ is positive, the tower identities also imply that $A=\mathcal Wx$ minimizes $\tfrac12\langle dA,M_BdA\rangle+\tfrac\kappa2|x-\bar QA|^2$, with minimum value $\tfrac12\langle dx,M_Cdx\rangle$.
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
$$\prod_{e\in H^{\rm fr}}J_{\mathscr J}(a_e)=\big|\det D_a\mathrm{mv}(x,a)\big|\prod_{e'\in H'^{\rm fr}}J_{\mathscr J}(\mathrm{sw}(x,a)_{e'}).$$
*Sketch:*

- By the defining property of $J_{\mathscr J}$ and right invariance of Haar measure, $a\mapsto(e^{a_e}\mathcal R(e^x)_e)_e$ maps the density $\prod_es_{\mathscr J}J_{\mathscr J}(a_e)\,da_e$, restricted to the chart, to product Haar measure restricted to the chart image in the slice of $H$.
- The change of forest preserves product Haar measure (III.1).
- By the change-of-variables formula, the two sides therefore have equal integrals over every small compact set.
- The forests have the same number of free bonds, so the factors of the Haar scale cancel. Continuity and comparison over small closed balls give pointwise equality.

*Lean:* [`F05.toll_switch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Jacobian.lean#L129-L142).

**Lemma 4.17 (cancellation).** If $B,j,k>0$, $A=d^2B$ and $j=|d|k$, then $d\ne0$, $A>0$, and $\tfrac12\log A-\log j=\tfrac12\log B-\log k$. With Lemmas 4.13–4.16 and the equality of the loop terms, this gives III.6.5(ii) with constant $0$.
*Lean:* [`F05.same_thermal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05.lean#L42-L57).

### 4.5 The volume-independent branch and its jets

**Lemma 4.18 (Combes–Thomas bound).** Let $S$ be a real symmetric matrix on a finite index set assigned to sites of a four-dimensional torus, with multiplicity at most $K_0$. Suppose $a_0,M>0$, $C_0\ge0$, $|S_{ij}|\le C_0e^{-a_0\mathrm{dist}(i,j)}$, and $S\ge MI$. Then
$$|(S^{-1})_{ij}|\le\frac2M e^{-r_{\rm CT}\mathrm{dist}(i,j)},\qquad r_{\rm CT}=\min\left(\frac{a_0}{4},\frac{M}{2(1+4C_0K_0c(a_0/2)/a_0)}\right).$$
Here the site labels are understood in the distances, and
$$c(\alpha)=\frac{16\cdot6!\,e^{2\alpha}}{\alpha^6},\qquad \sum_y e^{-\alpha\mathrm{dist}(x,y)}\le c(\alpha)\quad(\alpha>0),$$
uniformly over the torus side.
*Sketch:* Conjugate $S$ by the diagonal weight $e^{r_{\rm CT}\mathrm{dist}(\cdot,j)}$. The difference has both absolute row and column sums at most $M/2$. Its quadratic form is therefore bounded by $(M/2)\|v\|_2^2$, so the conjugated matrix retains coercivity $M/2$, although it need not be symmetric. Applying this inequality to the tilted $j$-th inverse column gives the displayed entry bound.

*Lean:* [`tiltedCharge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Resolvent.lean#L157-L168), [`inverse_sealed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Resolvent.lean#L171-L208).

**Lemma 4.19 (uniform implicit function theorem; III.6.7(a)).** In the notation of III.6.7(a), set $D=K_0c(a_0)$ and
$$\Pi=1+\frac4m K_0c(r_{\rm CT}),$$
where $r_{\rm CT}$ is the rate of Lemma 4.18 with gap $M=m/2$. The radii may be chosen as
$$\begin{aligned}
r_{\rm safe}&=\min\left(\frac r2,\frac{m}{2(1+C_0D^2)}\right),\\
r_{\rm zone}&=\min\left(r_{\rm safe},\frac1{4\Pi(1+C_0D^2)}\right),\\
r_{\rm hor}&=\min\left(r_{\rm zone},\frac{r_{\rm zone}}{4\Pi(1+C_0D)}\right).
\end{aligned}$$
*Sketch:* The third-derivative estimate bounds the change of a Hessian entry by $r_{\rm safe}C_0D$ times its spatial decay factor. Summing once more gives absolute row and column sums at most $r_{\rm safe}C_0D^2\le m/2$. Thus the vertical Hessian stays $\ge(m/2)I$, and its inverse has sup-norm operator bound $\Pi$ throughout the closed safety ball. For $\|x\|_\infty<r_{\rm hor}$, set $H_0=D^2_{\tau\tau}f(0)$ and
$$Y(v)=v-H_0^{-1}\nabla_\tau f(x,v).$$
On the closed ball of radius $r_{\rm zone}$, $\|DY\|_{\infty\to\infty}\le\Pi r_{\rm zone}C_0D^2\le1/4$, while $\|Y(0)\|_\infty\le\Pi\|x\|_\infty C_0D\le r_{\rm zone}/4$. Hence $Y$ maps this ball into the ball of half the radius and has a unique fixed point. The analytic implicit function theorem at each fixed point, together with uniqueness, makes the resulting branch analytic at every allowed $x$.
*Lean:* [`Receipt.adjusted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L101-L176), [`Receipt.snaps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L62-L76), [`Receipt.priced_inverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L80-L92), [`Receipt.throughout`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L179-L215).

**Lemma 4.20 (the tested action satisfies III.6.7(a)).** Take the auxiliary constants of III.6.7(b). For every clip $p$, larger $S$ with order $J$ and kernel choices $K$, forest $H$ and $W$ with bounds $(p,\mu,C,\Lambda)$, the tested action in sup-norm colour coordinates satisfies:

- analyticity and localized derivatives of orders $1,\ldots,n$, with width $\mu/(8(n+1)^2(1+L))$, on a ball whose radius is independent of $c$, $f$ and $H$;
- the multiplicity bound $8\dim\mathfrak g$;
- tag-independence on the whole ball and zero vertical gradient at $0$;
- the vertical gap
$$m=\frac{\min(c_p/|\mathcal S|,\ \kappa)}{1+\beta(L,\ell_L)+2L^4}.$$

This is a coercivity estimate for the same vertical Hessian, with no bed or attachment hypothesis. In it:

- the constant of E02 is replaced by an explicit $L$-dependent constant $\ell_L$, obtained by proving the shell comparison directly ([`link_charge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/LCharge.lean#L145-L251));
- the floor $a$ is replaced by $c_p/|\mathcal S|$, since the vertical Hessian is $\ge(c_p/|\mathcal S|)|dy|^2+\kappa|Py|^2$ ([`wallet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/HessCost.lean#L110-L130)).

*Lean:* [`Before.receipt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L196-L211), [`symbolic_gap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/HessCost.lean#L137-L166), [`zeroGap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/HessCost.lean#L132-L133), [`Before.full_pack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L216-L239). *(proof read for the gap and the assembly; the derivative bounds of the action and the direct shell estimate: statement only)*

**Lemma 4.21 (derivatives of the inverse and of $\log\det$; III.6.8).** Let $M(y)$ be a finite matrix function analytic at $y_0$, with $M(y_0)$ invertible. Assign its matrix and variable indices to lattice sites, with matrix-index multiplicity at most $K_0$. Suppose its coefficient derivatives through order $N$ have the localization bounds of III.6.8 at rate $a_0>0$, and $M(y_0)^{-1}$ has exponentially decaying entries at that rate. Then the derivatives of $M^{-1}$ through order $N$ are localized, with rates and constants defined recursively from these bounds and $K_0$.
*Sketch:* Differentiate
$$D(M^{-1})=-M^{-1}(DM)M^{-1}.$$
The product rule reduces each new order to lower inverse derivatives and derivatives of $M$. Exponential convolution bounds control the internal index sums; each multiplication reduces the available rate. For a positive determinant, use $D\log\det M=\mathrm{tr}(M^{-1}DM)$ and repeat the same estimates. Under the coercivity hypotheses of III.6.8 this applies to every principal submatrix with every nonnegative shift. Composing with the stationary graph gives the estimates along the branch; the joint action has order $N+3$, leaving order $N+1$ after taking two Hessian derivatives.

*Lean:* [`inverse_lines`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Lines.lean#L56-L108), [`establish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Pack.lean#L88-L108), [`along_block`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L56-L59), [`Counter.background`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L95-L112). *(proof read for the inverse induction and the assembly; the convolution and composition estimates: statement only)*

### 4.6 One level of the iteration

**Lemma 4.22 (gap quote and branch selection).** Fix a stage index $j$. Apply III.6.6 with the block factor and floor bound assigned to that stage. This gives post-$L$ gap constants $\eta_j$ ([`Iteration.post`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Post.lean#L99-L106)). At level $m$, use $\eta_{J(m+1)}$. Every funded $T$ at level $m+1$ then has, for each period and forest, a branch satisfying III.6.9(i) ([`select`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L50-L55)).

**Lemma 4.23 (the glued datum is funded).** The fresh-data hypotheses supply fresh cubic and quartic atoms $t,v$ and fresh loop atoms $l$. Let $R$ be the bundle on the bed $M_{N,m}$ with:

- cubic atoms: $t$ joined with the transport of the cubic atoms of $T$ through the towers ("inherited");
- quartic atoms: $v$ joined with the inherited quartic atoms;
- loop atoms: $l$ joined with the inherited loop atoms.

Then $R$ is funded at level $m$. The inherited cubic and quartic atoms are charged with relative factors $L^{-2}$ and $L^{-4}$, and the resulting charges stay within $6$ times the level price.
*Lean:* [`resume`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L70-L112). *(proof read for the assembly; the inherited-atom estimates: statement only)*

**Lemma 4.24 (the move).** The fresh one-loop data supply $|\alpha+\kappa_G\log L|\le s_{j,k}$, where $s_{j,k}$ is the prescribed slope bound for the two stage indices. The schedule gives $s_{j,k}+1\le\mathrm{drift}_{m+1}$, proving (ii). The matching (iii) is proved in three steps:

- On one reference forest per period, orders $\le2$ follow from III.6.4(iii) and the attachment of $R$ to $M_{N,m}$ ([`Calibration.lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Calibration.lean#L66-L94)).
- Orders $3,4$ split into the inherited part, matched through the towers, and the fresh part, supplied by the fresh-data hypotheses.
- Tag-independence and III.6.5 transfer the match to every tag and forest ([`all_forests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Determinant.lean#L80-L89)).

The bound (iv) is proved on the reference forest from the fresh determinant hypothesis, and transferred to every forest by the equality of thermal functions ([`transplant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Determinant.lean#L91-L103)).
*Lean:* [`extend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L115-L150). *(proof read for the assembly; inherited-atom matching: statement only)*

### 4.7 Remaining packages (statements only)

- *F06–F09.*
  - F06: fix a strip bound $A$, a positive margin $v$ and strip width $\eta>0$. A real translation-invariant $3$-form kernel $Q$, Hermitian on real Fourier phases and bounded below by $v$ on the image of the $2$-form symbol, can be replaced by $P$ bounded above and below on all $3$-forms. The replacement preserves $d_2^\top(\cdot)d_2$ on every torus. Its positive lower bound, upper bound and strip width depend only on $(A,v,\eta)$.
  - F07: with analogous uniform positivity and strip bounds, a real kernel has a symmetric positive square root on every torus, with strip width and bounds depending only on the input bounds and the finite component space.
  - F08: fix the two clips, penalty, bed strip bounds, a $3$-form kernel strip bound and a derivative order. Towers whose first two components have the prescribed derivative bounds can be completed by replacing the remaining components. The completed towers satisfy the replacement identities and uniform strip bounds chosen before the odd factor $L$.
  - F09: the replacement identities, floors of the two beds, diagonal identities for the original towers and a square-root factorization of the defect imply the stack identities for the completed towers.
- *Comparison of two tori* ([`Loom.spinning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/Loom.lean#L65-L104)). Let $\pi:\beta\to\alpha$ have exactly $M$ elements in every fibre. Assign the indices in $\beta$ to torus sites with multiplicity at most $K_0$, and suppose distinct elements of a fibre are separated by at least $N$. Let $F,F'$ be matrix functions on a real normed space, analytic at $0$, with invertible values there and
$$F(x)E=EF'(x)\quad\text{near }0,\qquad E_{i,j}=\mathbf1_{\pi(i)=j}.$$
Let $y,z$ be analytic scalar functions with $y=Mz$ near $0$. Fix two directions. Suppose the entries of $F(0)^{-1}$, the two first variations and the mixed second variation are bounded by $B_0e^{-d\,\mathrm{dist}}$, $T_0e^{-d\,\mathrm{dist}}$ and $Q_0e^{-d\,\mathrm{dist}}$, respectively, where $d>0$ and $B_0,T_0,Q_0\ge0$. The mixed second derivatives of $\tfrac12\log|\det F|-y$ and $M(\tfrac12\log|\det F'|-z)$ then differ by at most
$$|\beta|\,C(K_0,T_0,Q_0,B_0,d)e^{-dN/8}.$$
For positive determinants these are the thermal determinant terms. The proof expands the second derivative into two traces. Compatibility identifies the small-system trace with sums over covering fibres; the error consists of off-diagonal entries between distinct elements of a fibre, whose separation is at least $N$.

- *Primary integral.* This package contains:
  - Newton remainder bounds from bounded finite differences;
  - vanishing of a symmetric tensor on lists of pure directions of a given total engineering degree when its polynomial component of that degree vanishes;
  - under strip bounds for the tower kernel, comparable probe amplitudes, equality of the logarithmic probe germs within radius $\chi$, and derivative bounds $B$ on the true path, a bound $D(1+B)e^{-\sigma\chi/2}$ for the difference of the true and forecast probe jets ([`Ramble.billFor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Reaches.lean#L74-L86));
  - triangular structure of the primary transition matrix.

  These comparisons enter the repeatable nonlinear step in III.10.

- *Atom regularity.* Suppose $t\ge0$, every plaquette incident to $Y$ has chord at most $t$, the halo of radius $q+1$ about $o$ lies in $Y$, and $2(q+1)<n$. There is a gauge $g$ such that every link $b$ with $\mathrm{dist}(o,b.1)\le q$ satisfies $\mathrm{chord}((g\cdot V)_b)\le4t(1+\mathrm{dist}(o,b.1))$.
- *ROTATIONS, WARD_BIN.* This material is the conclusion of the rotation theorem (line-sum property and vanishing of the local rotation charge on collinear points) and its chain: moment bounds for reflection-positive spectral measures, decay of the Ward integrand, and the flux identity. It belongs to VI.1.

## 5. Where the difficulty lies

The main estimate is the volume-independent lower bound on the vertical Hessian. Curvature alone leaves gauge and flat directions; the forest condition and predictor penalty together control every free link. The denominator of the gap contains a term proportional to $C_{\rm E02}^2L^4|X|^2$, and $|X|=(2(J+7)L+1)^4$. The gap is chosen after $L$; no lower bound uniform in $L$ is asserted.

A spectral gap gives an $\ell^2$ inverse bound. To obtain a sup-norm radius independent of the volume, one also needs the exponential entry bounds and their summability. The uniform construction uses a direct shell estimate and the positive Wilson coefficient, so it needs no bed or attachment hypothesis. It reuses the linearization and counting estimates of F01, while supplying its own gap and radii.

Forest independence requires both the stationary change-of-coordinates formula for the Hessian and preservation of product Haar measure. Their Jacobians cancel exactly, including the Haar normalization scales. The proof needs only the gap for the target forest. Other unused hypotheses are the coarse floor in F04, the identity base value in F02, and the size clauses of “larger” in F03–F05.

The conclusions concern a branch near the identity and uniqueness in a specified sup-ball. Global constrained minimization is not asserted. The one-loop coefficient and the classical remainders remain inputs to the iteration through the fresh-data hypotheses in III.6.9.

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
| $\mathcal M_p(W;\cdot)$, $\mathcal M^{(2)}$ | [`mainTerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L27-L28), [`secondTerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L30) | symmetrized main term; Wilson-plus-row-square term |
| $\mathcal T^H_k$ | [`tested`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L81-L84), [`noiseTaylor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L78-L79) | tested action; penalty term |
| $B$, $M_B$, $R_B$, $K_B$ | [`Bed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L35-L40), [`K`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L68-L69) | bed; metric; roots; $d^\top M_Bd$ |
| $\langle dA,M_B\,dA'\rangle$ | [`gaugeFiscal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L31-L32) | quadratic form of the bed |
| floor, attached, sworn | [`Floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68), [`Attached`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L44-L46), [`Sworn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55) | ellipticity of the bed; $\ell_W$ linearizes to $R_B\,d$; symmetry invariance |
| $T$, $\mathcal W$, $\widehat{\mathcal W}_H$ | [`Towers.Diagonal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L82-L86), [`Inputs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L76-L79), [`extracted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L26-L27) | towers; linear background map; its forest-gauge version |
| $\mathrm{rel}_H$ | [`relative`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L93-L95), [`Guessed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L97-L98) | linear background field in chart coordinates |
| critical branch $\rho$ | [`Critical`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L88-L91) | background field |
| gap $\eta$ | [`PriceGap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L100-L101) | lower bound of the vertical Hessian at $0$ |
| second jet; value jet | [`Comptroller`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L42-L45), [`HeatG`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L83-L84), [`SameJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L105-L106) | III.6.1; III.6.4(iii); equality of $j$-th derivatives |
| $J_{\mathscr J}$ | [`ChartRatio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L23-L26), [`LocalRatio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L28-L38) | Haar density in exponential coordinates |
| $\Theta^H_k$ | [`thermal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L46-L49), [`hessian`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L42-L44) | thermal function; Hessian matrix in the colour basis |
| $\mathrm{sw}$, $\mathrm{mv}$ | [`switch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Transport.lean#L44-L45), [`move`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Reindex.lean#L84-L85) | chart change between forests |
| localized derivatives; localized matrix | [`Scatter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Scatter.lean#L68-L69), [`Sealed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Resolvent.lean#L41), `Cable` | exponential decay of entries and derivatives |
| hypotheses of III.6.7(a) | [`Receipt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L24-L33) | analytic, localized, gapped, critical at $0$ |
| auxiliary constants chosen before $L$ | [`Before`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L142-L158) | radii and costs of the uniform layer |
| block package; jet service | [`BlockPack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Pack.lean#L65-L84), [`Counter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L75-L88) | III.6.8 |
| fresh-data hypotheses | [`Rates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Gates.lean#L79-L96) | cutoff atoms, fresh classical remainders and one-loop matching |
| funded datum; move | [`Work item`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Gates.lean#L35-L39), [`Move`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L26-L33), [`OnShell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Gates.lean#L41-L45) | III.6.9 |

"Price", "bill", "work item", "receipt", "toll" and "cost" are numerical bounds and their bookkeeping; they have no economic meaning.

## 7. What remains unexplained
1. **Fresh classical and one-loop inputs.** Proposition III.6.9 is conditional on [`Rates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Gates.lean#L79-L96). The adapter [`IterationRecipe.stocked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/ITERATION_RECIPE_PRODUCER/Crown.lean#L102-L112) supplies the cutoff atoms and retains the classical and quantum matching assumptions from [`Heating`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/ITERATION_RECIPE_PRODUCER/Crown.lean#L83-L97); it does not discharge those assumptions. Their discharge in the main construction remains unverified here.
2. **Small-field domains.** The comparison between the componentwise radii in III.6.7–III.6.8 and the small-field thresholds used downstream remains unverified. The relevant branch and derivative interfaces are linked in III.6.7–III.6.8.
3. **Iteration over all levels.** The induction beyond one step is in [`Iteration.sweep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Planned.lean#L18-L35) and [`Luna.uniformZero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Luna/Table.lean#L166-L172) (III.12). Their proofs are outside this verification.
4. **Supporting proofs not checked in full.** The remaining unread supporting proofs are the metric/path-limit estimates identified after Lemma 4.3; the direct shell and action-derivative estimates used in Lemma 4.20; the convolution and graph-composition estimates used in Lemma 4.21; and the inherited-atom matching and bounds in Lemmas 4.23–4.24. F06–F09 and the primary-integral, atom-regularity, rotation and Ward packages are represented by their statements only. The period-comparison trace argument was checked; its geometric realization for the actual Hessians was not.
5. **Attached packages.** The primary-integral package feeds the repeatable step in III.10; the rotation and Ward material belongs with VI.1. The application of the period comparison in [`Fresco.subscribed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/Fresco.lean#L98-L148) remains unverified here. The size figures in the header are the inherited dependency-closure counts; they have not been recounted.

**Builds on:** [I.1](I-1.md), [III.1](III-1.md), [III.16](III-16.md), [IV.1](IV-1.md), [II.1](II-1.md), [VI.1](VI-1.md), [III.10](III-10.md), [III.3](III-3.md), [V.2](V-2.md), [V.1](V-1.md), [III.2](III-2.md), [VIII.1](VIII-1.md).

**Used by:** [III.10](III-10.md), [III.2](III-2.md), [VII.2](VII-2.md), [III.4](III-4.md), [III.14](III-14.md), [III.3](III-3.md), [III.15](III-15.md), [III.7](III-7.md), [III.9](III-9.md), [III.13](III-13.md), [III.12](III-12.md), [VII.1](VII-1.md), [III.11](III-11.md), [III.8](III-8.md), [III.5](III-5.md), [VIII.1](VIII-1.md).

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

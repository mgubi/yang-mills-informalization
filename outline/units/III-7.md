# III.7. Matching the Wilson energy to fourth order

*Part III — Ultraviolet construction (renormalization group).* 19,945 lines of Lean in 3,533 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is **checked** against the Lean and rewritten by a second model; a final editing round is in progress. It is updated as it improves.


**Part:** III, Ultraviolet construction (renormalization group). **Lean:** [`YM/Next/STATIONARY/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY), [`YM/WilsonBulk/Spectral/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral), [`YM/UVExtension/Projection/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Projection), and a few lines of [`YM/UVExtension/Reward/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward). **Size:** 19,945 lines in the main-theorem closure: 19,391 in `Next/STATIONARY`, 286 in `UVExtension/Projection`, 215 in `WilsonBulk/Spectral`, and about 50 elsewhere.

*Conventions.* Levels $m=0,\dots,N$ run from the coarsest level ($m=0$) to the Wilson lattice ($m=N$). The step $m\to m+1$ has an odd block factor $L_m$. The stage $J_m$ is the index of the constants used at level $m$; it satisfies $J_{m+1}\in\{J_m,J_m+1\}$. In one step the fine torus $\Lambda_f$ has side $f=Lc$ and the coarse torus $\Lambda_c$ has side $c$; in general $|\Lambda_n|=n^4$. Fields are Lie-algebra link variables $x$, and configurations are $U=e^x$. $E_W(U)=\sum_p\big(1-\tfrac1n\mathrm{Re\,tr}\,U_p\big)$ is the Wilson energy, $C_G$ is the adjoint Casimir constant of I.1, and $\kappa=11C_G/(24\pi^2)$.

## 1. What this unit proves

At level $m$ the effective action has the form $\beta\,\mathrm{main}_{\mathbf c,R}(U)+\mathrm{loop}_R(U)$, plus polymer activities (III.10). Here $R$ is a *path datum*: an exponentially weighted, explicit sum of gauge-covariant curvature monomials along lattice paths. This unit constructs the path data and the coupling shifts.

- **(A)** At the finest level there is a path datum whose leading part has the same Taylor jet as $E_W$ through order four (III.7.2).
- **(B)** For one block-spin step, the coarse leading part can be chosen as the classical (tree-level) transform of the fine one through order four. The second-order Taylor coefficient of the one-loop term equals $\alpha$ times the coarse quadratic form plus coarse two-leg atoms, up to an error exponentially small in the side of the torus. Moreover $|\alpha+\kappa\log L|$ is bounded independently of $L$ (III.7.4).
- **(C)** The value $\kappa=11C_G/(24\pi^2)$ is computed, not assumed. The one-loop determinant of the background-field operator in Feynman gauge, regularized in the infrared at scale $1/L$, has $F^2$-coefficient $-\kappa\log L+O(1)$ (III.7.3). Two results connect this determinant to the blocked one: an exact Faddeev–Popov identity (III.7.6) and uniform invertibility of the completed fluctuation operators (III.7.5, §4.6).

Iterated over all levels, (A)–(C) give the kinetic data whose "planned" conditions III.9 takes as input. The slope $\kappa$, a defined constant in I.1 and III.9.1, is identified here with the one-loop coefficient of the blocked action.

**Proposition III.7.1 (path data, beds, Fourier kernels).**
- *Legs and atoms.* A leg is a lattice walk $\gamma$ from the origin of $\mathbb Z^4$ together with a plaquette orientation $P$. At base point $x$ it evaluates $U$ to $\mathrm{Ad}(U_\gamma)\,\mathcal F(U_{\partial p})\in\mathfrak g$. Here $p$ is the plaquette of orientation $P$ at the end of $\gamma$, $U_\gamma$ is the transport along $\gamma$, and $\mathcal F(u)$ is the $\mathfrak g$-component of $(u-u^{-1})/2$. The length of a leg is $|\gamma|+4$.
- A $k$-atom is a $k$-tuple of legs with a coefficient tensor $a:\{1,\dots,\dim\mathfrak g\}^k\to\mathbb R$. It evaluates to $\sum_b a(b)\prod_i(\mathrm{leg}_i)_{b_i}$. It is *invariant* if this polynomial is $\mathrm{Ad}$-invariant. Its budget at width $\sigma$ is $\|a\|_1e^{\sigma\cdot\mathrm{length}}$.
- *Path datum* $R$. For each of the six plaquette orientations $P$, a sequence of rows $(\lambda_{P,k},\mathrm{leg}_{P,k})$; and sequences of 2-atoms (*loop atoms*), 3-atoms and 4-atoms. The rows define $\ell_R(U)_{(x,P)}=\sum_k\lambda_{P,k}\,\mathrm{leg}_{P,k}(U,x)$.
- *Main term.* For a clip $\mathbf c$ (only the coefficient $c_{\rm dir}>0$ enters here):
$$\mathrm{main}_{\mathbf c,R}(U)=\frac1{384}\sum_{s}\Big[\sum_p\Big(c_{\rm dir}\big(1-\tfrac1n\mathrm{Re\,tr}\,U_p\big)+\tfrac12|\ell_R(U)_p|^2\Big)+\sum_x\sum_k\big(\mathcal A^{(3)}_k+\mathcal A^{(4)}_k\big)(U,x)\Big]_{U\to sU}.$$
  This is an average over the 384 signed permutations $s$ of the axes. $\mathrm{loop}_R$ is the same average of the sum of all loop atoms. These are the unclipped analytic germs; the small-field clipping of the full action does not enter them.
- *Weight clauses* $R\in\mathrm{Bounds}(\mathbf c;\sigma,C,\Lambda)$:
  - $\sigma>0$, and $\sum_k|\lambda_{P,k}|e^{\sigma\,\mathrm{len}}\le C$ for each $P$;
  - the total budgets are $\le C$ for the cubic and quartic atoms and $\le\Lambda$ for the loop atoms;
  - all atoms are invariant;
  - normalization at zero momentum: $c_{\rm dir}\delta_{PQ}+\sum_{P'}\hat\ell_{P'P}(0)\hat\ell_{P'Q}(0)=\delta_{PQ}$;
  - the *moment conditions*: for each pair of leg orientations and colours, the loop coefficients have total weight $0$ and first moment $0$ in the displacement between the two legs (with the required summability).
- *Bed* $B=(D,\tilde D,H,\tilde H,\rho)$: five translation-invariant kernels on plaquette fields (diagonal, its inverse, metric, its inverse, roots).
  - $R$ is *attached* to $B$ if its rows, summed by end plaquette and displacement, give $\rho$.
  - $\mathrm{Floor}(B,\mathbf c,n;\varepsilon,C)$ on $\Lambda_n$ means: $D\tilde D=1$; $H\tilde H=1$; $\Phi^{\mathsf T}\Phi=H$ with $\Phi=(\sqrt{c_{\rm dir}}\,\mathbf 1;\rho)$; $\hat H(0)=1$; $H\,d=D\,d$ on 1-forms; $H,D$ symmetric with $\varepsilon\le H,D\le C$.
  - A kernel is in $\mathrm{strip}(\sigma,C)$ if $\sum_y e^{\sigma|y|}|K(y)|\le C$ entrywise.
- *Fourier kernels.* A $(t{+}1)$-leg kernel assigns a number $\hat K_{b,a}(p_1,\dots,p_t)$ to colours $b$, directions $a$ and momenta, with $p_0=-\sum p_j$.
  - $\hat K$ is *strip-analytic of width $\sigma$ and size $K$* if it is holomorphic and periodic for $|\mathrm{Im}\,p_j|<\sigma$ and bounded by $K$ there.
  - A function $F$ of link fields on $\Lambda_n$ is *recorded* by $\hat K$ with error $\epsilon$ if its $(t{+}1)$-th Taylor coefficient at $0$, evaluated on plane waves of momenta $p_0,\dots,p_t$, colours $b$ and directions $a$, differs from $|\Lambda_n|\hat K_{b,a}(p)$ by at most $\epsilon$.
  - $F$ *vanishes to order $s$ along rays* if $F(tv)=O(t^s)$ for every $v$.
- *$F^2$-coefficient.* For a two-leg kernel, $\alpha_b(\hat K)$ is twice the real part of the coefficient of $s^2$ in $\hat K_{(b,b),(1,1)}(s\,e_0)$. For the quadratic kernel of any bed with $\hat H(0)=1$ it equals $1$, so $\alpha$ is measured in units of the classical $F^2$ term.

*Status:* definitions. Path data, weight clauses, main term, beds and Floor are specifications of III.1; the Fourier notions are defined in this unit.
*Lean:* [`RG.PathData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L150-L154), [`RG.Slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L38-L40), [`RG.Atom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L84-L86), [`PathData.Bounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L173-L185), [`metric_zero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L161-L162), [`loop_jets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L167-L169), [`RG.Clip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139-L146), [`Precision.mainTerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L27-L28), [`Precision.Bed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L35-L40), [`Attached`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L44-L46), [`Floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68), [`Firm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Infrastructure/Jets.lean#L199), [`Rays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Infrastructure/Jets.lean#L28-L29), [`Recorded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Pathways.lean#L491-L492), [`alphaPay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L699), [`tip_fuel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L700-L708).

**Proposition III.7.2 (the Wilson jet at the finest level).** Let $G$ be a gauge group, $\sigma_0>0$ and $A,Z\ge0$. There are $\sigma\in(0,\sigma_0]$ and $C\ge0$ with the following property.

*Hypotheses:* sides $n_i\to\infty$; a clip with $c_{\rm dir}\le Z$; a bed $B$ such that
- $\rho\in\mathrm{strip}(\sigma_0,A)$;
- $\mathrm{Floor}(B,\mathbf c,n;a,b)$ holds for every side $n$ and some $a,b$;
- the quadratic gauge form of $B$ is invariant under signed permutations on each $\Lambda_{n_i}$;
- $D=1$ on each $\Lambda_{n_i}$.

*Conclusion:* there is a path datum $Q$ such that:
1. the rows of $Q$ are the entries of $\rho$ placed on straight lattice routes, $Q$ is attached to $B$, and all loop coefficients vanish;
2. $Q\in\mathrm{Bounds}(\mathbf c;\tau,k,\Lambda)$ for all $0<\tau\le\sigma$, all $k\ge\max(C,6Ae^{4\sigma_0})$ and all $\Lambda\ge0$;
3. for every $i$ and every $j\le4$, the functions $x\mapsto\mathrm{main}_{\mathbf c,Q}(e^x)$ and $x\mapsto E_W(e^x)$ on $\Lambda_{n_i}$ are real-analytic at $0$ and have equal $j$-th derivatives there.

*Status:* theorem.
*Lean:* [`Stationary.launch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L270-L305), [`rowPath`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L169-L171), [`rowPrice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L176), [`SameJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L105-L106).

*All stages and all volumes.*
- With stage widths and amplitude bounds given, the statement holds at every stage with stage constants $(\sigma_j,A_j)$ ([`beckon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L101-L105), [`BasesFine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L93-L99)).
- Take a history whose schedule has paid its costs and whose horizon satisfies the conditions of §2, and apply the statement to the sequence of periodic sides at level $N$. The result is a top datum ([`budding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L220-L225), [`BranchRow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L166)) that:
  - satisfies the level-$N$ weight clauses with loop amplitude $\mathrm{loopCap}_N$;
  - matches $E_W$ through order four on every volume;
  - has vanishing loop coefficients.

  This is the top condition used in III.9.

**Proposition III.7.3 (the one-loop slope).** Let $G$ be simple. For $\sigma,\varepsilon>0$, $C,Z\ge0$, $\tau>0$ and $A\ge0$ there is $D\ge0$ with the following property.

*Hypotheses:*
- $L\ge1$ is odd, $\mu=1/L$, and $n_i\to\infty$;
- $\mathbf c$ is a clip with $c_{\rm dir}\le Z$;
- $B$ is a bed with $H\in\mathrm{strip}(\sigma,C)$, $\mathrm{Floor}(B,\mathbf c,n;\varepsilon,C)$ for every $n$, and gauge form invariant under signed permutations on each $\Lambda_{n_i}$;
- $R\in\mathrm{Bounds}(\mathbf c;\tau,A,\Lambda)$ is attached to $B$.

For a link field $x$ on $\Lambda_{n_i}$ and $U=e^x$ put
$$\Pi_\mu(x)=\tfrac12\log\det\big(\mathcal H_{\mathbf c,R}(U)+d_Ud_U^{*}+\mathcal M_\mu(U)\big)-\log\det\big(d_U^{*}d_U+\mathfrak m_\mu(U)\big).$$
Here:
- $\mathcal H_{\mathbf c,R}(U)$ is the Hessian at $y=0$ of $y\mapsto\mathrm{main}_{\mathbf c,R}(e^yU)$;
- $d_U$ is the covariant difference from adjoint 0-forms to 1-forms;
- $\mathfrak m_\mu(U)=\mu^2\big(\mu^2(d_U^*d_U+\mu^2)^{-1}\big)^{9}$;
- $\mathcal M_\mu$ is $\mathfrak m_\mu$ acting on each of the four components of a 1-form (probable).

*Conclusion:* there are a strip-analytic two-leg kernel $\hat Y$ and numbers $e_i\to0$ such that:
- (a) $\hat Y$ records the second-order Taylor coefficient of $\Pi_\mu$ at $0$ on $\Lambda_{n_i}$ with error $|\Lambda_{n_i}|\,e_i$, for every $i$;
- (b) $|\alpha_b(\hat Y)+\kappa\log L|\le D$ for every colour $b$.

$\Pi_\mu$ is the one-loop effective action of the fine leading part in the background $U$, in Feynman background gauge: $d_Ud_U^*$ is the gauge-fixing term and $d_U^*d_U$ the ghost operator. The infrared regulator of mass $\mu=1/L$ stands in for the block-spin constraint. $D$ does not depend on $L$. The error $e_i$ decays exponentially in $n_i$, at an $L$-dependent rate.

*Status:* theorem, for all odd $L\ge1$: the minimal block factor produced is $1$.
*Lean:* [`pouring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L17-L52) (proves [`Fluent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L115), i.e. [`HorizCalc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L20-L23) for all parameters), [`PoleTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/AuxReferences.lean#L138), [`fineMag`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/AuxReferences.lean#L46), [`rankAux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/AuxReferences.lean#L45), [`grenade`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Regulator.lean#L338), [`Gauge.slopeConstant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184).

**Proposition III.7.4 (one renormalization step of the leading part).** Fix a simple $G$, kernel parameters $K$ (penalty $a>0$), a stage $J$, and constants $\varepsilon,w,\delta>0$ and $D,Z,C,Z'\ge0$ for the fine and coarse beds and clips. There are $A_*\ge0$ and $s>0$ (output amplitude and width) such that, for every input width $\tau>0$ and amplitude $A\ge0$, there are:
- $d\ge0$ (the drift) and $\gamma>0$ (a rate);
- a minimal block factor $u$;
- functions $\beta(L)$ and $\Lambda_0(L)$,

with the following property.

*Hypotheses.*
- *Steps.* Coarse sides $m_i\to\infty$; block-spin steps $\Lambda_{Lm_i}\to\Lambda_{m_i}$ with one admissible patch of stage $J$ and block factor $L\ge u$, and kernel $K$; the tori are large compared with the patch.
- *Clips and beds.*
  - A fine clip $\mathbf p$ with $p_{\rm dir}\le Z$ and a coarse clip $\mathbf q$ with $q_{\rm dir}\le Z'$.
  - A fine bed $B$ with $H,\rho\in\mathrm{strip}(w,D)$, $\mathrm{Floor}(\cdot;\varepsilon,D)$ on all tori, and invariant gauge form.
  - A coarse bed $T$ with the same properties for $(\delta,C)$ and some floor $\varepsilon'$.
  - Towers relating $B$ and $T$: the free interpolation operator, with bounded differences, and the identities that transport $B$ to $T$.
- *Fine datum.* $R\in\mathrm{Bounds}(\mathbf p;\tau,A,\Lambda)$ attached to $B$, with $\Lambda\ge1$.
- *Stationary branches.* For each $i$, an axial forest $F_i$ and a branch $g_i$ (coarse fields $\to$ free fine variables) such that:
  - the second variation at $0$ is $\ge\eta|v|^2$ for some $\eta>0$;
  - $g_i$ is stationary;
  - its derivative at $0$ is the free interpolation;
  - the second jet of the tree-level coarse action is the quadratic form of $T$.
- *Chart.* A local Haar chart ratio $\mathsf J$.

*Conclusion.* There are a coarse path datum $Y$ and $\alpha\in\mathbb R$ such that:
1. the rows of $Y$ are the straight-route rows of $T$, and $Y$ is attached to $T$;
2. $Y\in\mathrm{Bounds}(\mathbf q;\eta',A',\Lambda')$ whenever $0<\eta'\le s$, $A'\ge A_*$ and $\Lambda'\ge\max(\Lambda_0(L),\Lambda/2)$;
3. $|\alpha+\kappa\log L|+1\le d$;
4. *classical match:* for every $i$, every choice $t$ of gauge-fixing data and every $j\le4$, the $j$-th jets at $0$ of
$$x\mapsto S_t(x,g_i(x))\quad\text{and}\quad x\mapsto\mathrm{main}_{\mathbf q,Y}(e^x)$$
coincide. Here $S_t(x,z)=\mathrm{main}_{\mathbf p,R}(U_{x,z})+a\sum_e\big(1-\tfrac1n\mathrm{Re\,tr}(V_e\,\Pi_t(U_{x,z})_e^{-1})\big)$ is the fine leading part plus the block-spin penalty. $U_{x,z}$ is the fine configuration lifted from $V=e^x$ through the forest with free variables $z$, and $\Pi_t$ is the block predictor;
5. *finite bound:* for every $i$, every $\Theta\ge\beta(L)$ and every $c'\le\gamma$, consider the one-loop function
$$\mathrm{th}_i(x)=\mathrm{loop}_R(U_{x,g_i(x)})+\tfrac12\log\det\mathrm{Hess}_zS_t(x,g_i(x))-\log\textstyle\prod_e\mathsf J(g_i(x)_e).$$
   It is analytic at $0$, the Hessian determinant is positive near $0$, and for all coarse sites $y,y'$ and plane waves $w_y,w_{y'}$ with amplitudes $\le1$,
$$\Big|D^2\mathrm{th}_i(0)[w_y,w_{y'}]-D^2\big(\alpha\,\mathrm{quad}_{\mathbf q,Y}+\mathrm{loop}_Y\big)(0)[w_y,w_{y'}]\Big|\le|\Lambda_{m_i}|\,\Theta\,e^{-c'm_i}.$$
   Here $\mathrm{quad}$ is the quadratic part of $\mathrm{main}$.

*On the constants.* $A_*$ and $s$ are fixed before $(\tau,A)$. The drift is $d=d_{\rm cmp}+D+1$, where $d_{\rm cmp}$ is the comparison constant of §4.8 (independent of $L$, $\tau$ and $A$) and $D$ is the constant of III.7.3. $\Lambda_0(L)$ grows like $L^4\log L$ and $\beta(L)$ like $L^4$.

*Iteration.* Fix stage widths, amplitude bounds and gap floors, kernel parameters $K$ and clip bounds. The constants are then chosen in the following order:
1. stage widths $\sigma_j$ and amplitudes $A_j$;
2. for $\tau\le\sigma$ and $A'\ge A$: drifts $d_j$, rates $\gamma_j$ and minimal block factors $u_j$;
3. for every sheet of constants with this profile and every choice of block factors: volume thresholds and gaps $\eta_j$;
4. for every protection exponent $\theta$: entry thresholds $\Delta_j$.

The conclusion holds for every history whose schedule meets these thresholds and has paid its costs, every pair of horizons satisfying the horizon conditions, and every local Haar chart ratio. For such data there are kinetic data $(\alpha_{N,m},P_{N,m},g_{N,m})$ satisfying all planned conditions:
- every $P_{N,m}$ is attached to its bed and satisfies the level-$m$ clauses with loop amplitude $\mathrm{loopCap}_m$;
- $P_{N,N}$ is the Wilson top datum of III.7.2;
- for $m<N$: the gap $\eta_{J_{m+1}}$, stationarity, the derivative condition, the classical match, $|\alpha_{N,m}+\kappa\log L_m|+1\le\mathrm{drift}_{m+1}$, and the finite bound with constants $(\Gamma_{J_{m+1}},c_{J_{m+1}})$ at loop amplitude $\mathrm{loopCap}_{m+1}$ and also at amplitude $1$.

*Status:*
- The step property, its output record and the full-path record are specifications defined in this unit.
- [`transition_cap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L92-L182) proves the step property at every stage, assuming the conclusion of III.7.3 for the input constants. [`claiming`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L122-L143), [`under_contract`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L366-L391) and [`geared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L59-L66) iterate it.
- `geared` applies `under_contract` to III.7.3 (`pouring`). It is therefore a theorem whose only hypotheses are the conditions on the history listed above. These are quantified in its conclusion and supplied by its users (III.4).
- The declaration classification places these four theorems, and [`color_pipe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L394-L435), [`energized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L254-L285) and [`plowed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L307-L335), in III.4. Their mathematical inputs are the results of this unit.

*Lean:* [`Transition`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L86-L90), [`Scud`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L26-L38), [`Hull`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L25), [`Bubble`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L170-L177), [`FullPaths`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L301-L305), [`Kin.Planned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L93-L115), [`ClassicalMatch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L108-L109), [`tested`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L81-L84), [`thermal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L46-L49), [`FiniteBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L62-L71), [`draft`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L51).

**Proposition III.7.5 (uniform inverse of the completed free operator).** Let $j$ be a stage, $K$ kernel parameters, $\sigma,\varepsilon>0$ and $\Omega\ge0$. There is $\eta>0$, and for every block factor $L$ a constant $A_L\ge0$, with the following property.

For every admissible patch of stage $j$ and block factor $L$, and every bed $B$ with $H\in\mathrm{strip}(\sigma/L,\Omega)$ and $\mathrm{Floor}(B,\mathbf c,n;\varepsilon,D)$ for all $n$:
- the inverse $\mathcal G_B$ of the block-Bloch symbol of the completed free operator lies in $\mathrm{strip}(\eta,A_L)$ on the coarse lattice;
- for every step with this patch (any coarse side $c$, fine side $cL$, any choice of gauge-fixing data), $\mathcal C_B\,\mathcal G_B=1$.

Here $\mathcal C_B$ is the bed's quadratic form in block variables plus $\Pi^{\mathsf T}\Pi$, where $\Pi$ is the block-spin constraint at scale $1/L$ (probable reading). The decay rate $\eta$ is uniform in $L$; only the amplitude depends on $L$.

*Status:* theorem; used in III.4.
*Lean:* [`WilsonBulk.uniform_backing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Backing.lean#L54-L66), [`completedM`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Backing.lean#L18-L20), [`jointInverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Backing.lean#L22-L23).

**Proposition III.7.6 (Faddeev–Popov identity for the one-loop term).** Let the step be admissible and $R\in\mathrm{Bounds}$. Let $g$ be a stationary branch for an axial forest with second variation $\ge\eta|v|^2$ ($\eta>0$). Let $\mu>0$, let $t$ be a choice of gauge-fixing data, and let $\mathsf J$ be a local Haar chart ratio. Then for coarse fields $x$ near $0$:
- the completed Hessian $\mathcal P_\mu(x)$ has positive determinant;
- $\mathrm{th}(x)=\mathrm{loop}_R(U_{x,g(x)})+\tfrac12\log\det\mathcal P_\mu(x)-\log\det\mathcal G_\mu(x)$.

$\mathcal P_\mu(x)$ is the Hessian of the fine action in all fine link directions, completed by a gauge-fixing term built with the regulator $\mathfrak m_\mu$ (probable). $\mathcal G_\mu=d_U^*d_U+\mathfrak m_\mu(U)$ is the ghost operator at the lifted configuration. The underlying algebraic identity is
$$T^2\det\mathcal P_\mu=\det M\,(\det\mathcal G_\mu)^2,$$
with $M$ the axial Hessian and $T$ the Haar Jacobian of the chart.

*Status:* theorem; used in III.4, III.2, VII.2 and the RG08/RemainderComparison packages.
*Lean:* [`tribute`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L177-L202), [`bounty`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L166-L167), [`medals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Completion.lean#L59-L60).

## 2. What it uses

- **I.1 (gauge groups, Wilson action).** $E_W$, the exponential chart, $\mathrm{Ad}$, the Casimir $C_G$, and $\kappa$ with $\kappa>0$ ([`slopeConstant_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176), [`casimir`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182)). Simplicity enters as $\mathrm{tr}(\mathrm{ad}_b\mathrm{ad}_b)=-C_G$ for every unit vector $b$, and through Schur's lemma.
- **III.1 (block-spin step).** The specifications of III.7.1. Also: steps, patches (block factor $L$, stage $J$), axial forests (tree gauge), the fine action plus block penalty, and the stationarity notions (stationarity, second-variation gap, derivative condition, equality of jets, classical match). Further: the one-loop function, the finite bound, the kinetic data and their planned conditions, towers, horizons, and local Haar chart ratios.
- **III.6 (stationary branch).** For every admissible step there is a gap $\eta_j$ (chosen after $L$) such that every admissible fine datum has a stationary branch with:
  - second variation $\ge\eta_j$;
  - derivative equal to the free interpolation;
  - quadratic part equal to the coarse bed.

  This is [`Integrated.stationary_scene`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L229-L232), packaged here by [`scene_gate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L58-L61). The classification files it with V.2 because of its folder (probable). Also from III.6: positivity of the Hessian near $0$ ([`hessian_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Graphs.lean#L75-L79)) and independence of the one-loop function from the forest ([`same_thermal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05.lean#L42-L57)).
- **III.10 (conditions on beds and steps).**
  - [`Bid.Sworn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55): signed-permutation invariance of the bed's gauge form.
  - [`Bid.HeatG`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L83-L84): quadratic jet of the tree-level action.
  - [`Bid.Larger`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L64): size of the torus.
  - [`Craft.Rack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L63-L73) and [`Bid.Retained`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L104-L105): strip and Floor bounds for the beds and towers of the horizon at all levels. These are free-field data only.
  - [`Bid.one_for_all`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Scope.lean#L35-L43): the classical match does not depend on the forest.
- **III.2 (order of constants).** Sheet, rolls, protection, delays, bar, wait, the schedule record [`Supply.Paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162), map prices and post-$L$ costs. Also the reference coupling [`β̂_m`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79) $=\bar\beta+\kappa s_m$ and the loop cap [`loopCap_m`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L86) $=2\exp\big(\theta_{J_m}(\log\log\hat\beta_m)^2\big)$.
- **II.1.** The local Haar chart ratio of the exponential chart ([`chart_ok`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L84)), supplied by the users of `geared`.
- **III.16, III.3 (probable).** Laurent/Bloch calculus on strips (products, inverses, Cauchy estimates, Riemann sums versus integrals); the block-Bloch ("slab") representation of fine translation-invariant operators on the coarse lattice.
- **Standard mathematics.**
  - Taylor expansion of the plaquette action; polarization (a jet is determined by its restrictions to lines).
  - The Koszul complex of the regular sequence $q_j(p)=e^{ip_j}-1$ with Hadamard division in a strip, i.e. the lattice Poincaré lemma in momentum space (compare Lüscher, Nucl. Phys. B 538 (1999) 515).
  - Schur's lemma for invariant forms on a simple Lie algebra.
  - The Faddeev–Popov procedure (Phys. Lett. B 25 (1967) 29).
  - The background-field method ('t Hooft; Abbott, Nucl. Phys. B 185 (1981) 189; Peskin–Schroeder §16.6).
  - The one-loop $\beta$-function (Gross–Wilczek and Politzer, PRL 30 (1973)) and its orbital/spin split $-\tfrac{11}3=\tfrac13-4$ (Nielsen, Am. J. Phys. 49 (1981) 1171).
  - Balaban's propagator bounds and background-field renormalization group (CMP 95, 96 (1984); 102 (1985); 109 (1987)), in Dimock's exposition (*The renormalization group according to Balaban* I–III, Rev. Math. Phys. 2013–14).
  - Rotation-invariant integrals over shells in $\mathbb R^4$.
- **Imported constants and assumptions.** No numerical constant is imported. $\kappa$ is defined in I.1, and III.7.3 proves that it is the one-loop slope. The hypotheses carried are those displayed in the propositions; §7 lists the users who must supply them.

## 3. Strategy

**Classical part.** At every level the quadratic part of the leading action is fixed by the free-field bed of that level. The cubic and quartic parts are curvature atoms, determined by Taylor agreement through order four with a given gauge-invariant function $E$. At the top, $E$ is the Wilson energy. At each step, $E$ is the tree-level coarse action $x\mapsto S_t(x,g(x))$. One lemma (§4.3) serves both cases. Its mechanism has four parts:
1. The Taylor coefficients of a translation sum of local analytic functionals have Fourier kernels on $\mathbb Z^4$ that are strip-analytic. Finite-volume coefficients agree with $|\Lambda_n|$ times these kernels up to $o(|\Lambda_n|)$ along any sequence of sides; this is how volume-uniformity enters.
2. Gauge invariance makes the kernels transversal in each leg (linearized Ward identity).
3. Transversal kernels with at least three legs factor through the curvature. This is the lattice Poincaré lemma, proved by contracting the Koszul complex of the differences $e^{ip_j}-1$, one axis at a time, with Hadamard division. Each division costs a width $\sigma\to\sigma/4$ by Cauchy estimates; these losses do not compound.
4. The real, colour-invariant Laurent coefficients of the factored kernels are the coefficients of atoms, and exponential decay is the strip bound.

**One-loop part.**
1. In the axial chart the one-loop term is $\mathrm{loop}+\tfrac12\log\det-\log(\text{Haar Jacobian})$. An exact Faddeev–Popov identity turns it into $\tfrac12\log\det$ of a covariantly completed Hessian minus $\log\det$ of a ghost operator.
2. Its second-order Taylor coefficient is a two-leg kernel. Its $F^2$-coefficient $\alpha$ is compared, with an $L$-independent error, to that of the regulated Feynman-gauge background-field determinant on the fine lattice.
3. The latter is computed. The lattice integrand is the continuum bubble integrand $h(k)$ of the vector loop (weight $\tfrac12$) and the ghost loop (weight $-1$), up to errors $O(|k|^{-3}+\mu^2|k|^{-6})$; its angular average is $-\tfrac{11}3C_G|k|^{-4}$. Integration over the shell $1/L<|k|\le1$ gives $-\kappa\log L$, and the rest is bounded by absolute values.
4. After subtracting $\alpha$ times the bed's quadratic kernel, the remaining kernel vanishes to fourth order at zero momentum. It is therefore represented by loop atoms satisfying the two moment conditions, i.e. by irrelevant terms. Inherited fine loop atoms contribute with a factor $L^{-2}$.

**Constants.** The output width and cubic/quartic amplitude of a step are fixed before the input amplitude. The input enters the output only with factors $L^{-1}$ or $L^{-2}$, which a large $L$ makes small. All invertibility constants are uniform in $L$ in block-scaled norms. The loop-atom amplitude grows like $L^4\log L$. It is absorbed by $\mathrm{loopCap}_m$, which grows with $\hat\beta_m$.

**Comparison with Balaban.** The method is Balaban's background-field renormalization group. Two differences:
- the effective action is carried by explicit, exponentially weighted path data, not by a localization operator;
- the $F^2$-coefficient is obtained by comparison with a regulated covariant determinant plus a Fourier computation, with $O(1)$ error, for an arbitrary simple compact gauge group.

## 4. Steps

### 4.1 Fourier kernels of local functionals

**Lemma 4.1 (translation sums of local functionals; limits of kernels).**
(a) Let $F_k$ be functions of configurations on $\mathbb Z^4$. Suppose $F_k$ depends only on links in a box of size $d_k$, is holomorphic with bound $w_k$ on a polydisc of radius $r$ around the identity, and $\sum_kw_k\,\varrho(t,d_k,\sigma)\le A$ for an explicit factor $\varrho$. Then for every side $n$ the translation sum on $\Lambda_n$ is analytic at $1$. Its $(t{+}1)$-th Taylor coefficient is recorded *exactly* by a kernel that is strip-analytic of width $\sigma$ and size $A\,c(t,r)$, independent of $n$. For the Wilson energy, kernels of every order exist with width $1$.
(b) Suppose a strip-analytic kernel records $F_i$ on $\Lambda_{n_i}$ with error $|\Lambda_{n_i}|\epsilon_i$, where $n_i\to\infty$ and $\epsilon_i\to0$. If the $F_i$ are analytic, invariant under global colour rotations and lattice gauge transformations, and their lower Taylor coefficients vanish, then the kernel is transversal in each leg, real and colour invariant.
*Sketch:* (a) Cauchy estimates on the polydisc bound the Fourier coefficients of each local Taylor polynomial; the weight $e^{\sigma d_k}$ is absorbed by $\varrho$. (b) Each property holds exactly for the finite-volume coefficients; divide by $|\Lambda_{n_i}|$ and let $i\to\infty$ at fixed momenta.
*Lean:* [`gathered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/LocalOracle.lean#L312-L348), [`Wilson_stream`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L312-L326), [`withdrew`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Ward.lean#L647-L697), [`wedlock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Vertex.lean#L371-L379).

### 4.2 The lattice Poincaré lemma in momentum space

**Lemma 4.2 (one-leg solve).** Let $\delta$ be the Koszul differential on forms in momentum space, i.e. contraction with the symbols $q_j(p)=e^{ip_j}-1$ of the lattice exterior derivative. Let $f$ be a form of degree $r$ with the following properties:
- each component is strip-analytic of width $\sigma$ and size $A$;
- $\delta f=0$;
- $f$ vanishes to order $s$ along rays;
- $f$ takes values in a family of subspaces depending only on the projected momentum;
- if $r=0$, $f$ vanishes where the projected momentum is $0$.

Then $f=\delta B$, where $B$ has degree $r+1$, is strip-analytic of width $\sigma/4$ and size $4A\,\pi(\sigma)$ with $\pi(\sigma)=(4/\sigma)\big(2(1+\sigma/4)/(\sigma/4)\big)^4$, vanishes to order $s-1$, and takes values in the same subspaces.
*Sketch:* Comb one axis at a time. $f(p)-f(p)|_{p_j=0}=q_j(p)D_j(p)$ by Hadamard division ([`div_var`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Koszul.lean#L88-L128)). $D_j$ has width $\sigma/4$ and size $A\pi(\sigma)$ by Cauchy estimates, while the restriction $f|_{p_j=0}$ keeps width $\sigma$. After four axes the remainder is $f$ at the origin in the uncombed directions, which is $0$ in positive degree. The factor $4$ counts the axes; the width loss is a single one. The vanishing order drops by one because $q_j\sim ip_j$.
*Lean:* [`wall_lift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Koszul.lean#L571-L587).

**Lemma 4.3 (transversal kernels are curvature kernels; atoms).** Let $t\ge2$ and let $f$ be a $(t{+}1)$-leg kernel, strip-analytic of width $\sigma$ and size $A$, and transversal in each leg. Then
$$f(p)=\sum_b\prod_i\hat s(p_i)_{b_ia_i}\,g_b(p),$$
where $\hat s$ is the symbol of the lattice curl and $g$ is a plaquette kernel, strip-analytic of width $\eta$ and size $AK$, with $\eta,K$ depending on $t,\sigma$. If $f$ is also real and colour invariant, the Laurent coefficients of $g$ can be taken real, colour invariant and exponentially decaying. Placed on straight routes, they define atoms whose translation sum reproduces the recorded Taylor coefficient up to the recording error.
*Sketch:* Lemma 4.2 leg by leg; then take the real part and project onto colour invariants.
*Lean:* [`allleg`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/ManyLegs.lean#L533-L549), [`strokes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Pathways.lean#L193-L201), [`colors_align`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Ward.lean#L192-L216). *(statement only; `strokes` proof read)*

### 4.3 Classical emission and the Wilson jet

**Lemma 4.4 (emission of cubic and quartic atoms).** Let $\sigma,\sigma_0>0$ and $A,Z\ge0$. There are $\tau\in(0,\sigma]$ and $C\ge0$ with the following property.

*Hypotheses:*
- sides $n_i\to\infty$;
- a bed $B$ with $\rho\in\mathrm{strip}(\sigma_0,A)$ and Floor on the one-site torus, and a clip with $c_{\rm dir}\le Z$;
- functions $E_i$ of link fields on $\Lambda_{n_i}$, pointwise analytic, such that $E_i$ minus the quadratic term of $B$ vanishes to order $3$ along rays;
- $M\ge1$ such that the Taylor coefficients of orders $3$ and $4$ of $E_i$ are recorded exactly by kernels strip-analytic of width $\sigma$ and size $M$.

*Conclusion:* there are invariant cubic atoms $X$ and quartic atoms $V$ with total budgets $\le MC$ at width $\tau$ such that, for every choice $f$ of loop atoms and every $i$, $E_i-\mathrm{main}_{\mathbf c,(\rho\text{-rows},f,X,V)}$ vanishes to order $5$ along rays.
*Sketch:* At order $3$, the kernel of $E-\mathrm{quad}_B$ is transversal (Lemma 4.1(b)) and is matched by cubic atoms (Lemma 4.3). At order $4$, subtract what the rows (the nonlinear part of $\mathcal F$ inside $\ell$) and the cubic atoms generate at that order; the remainder is transversal and is matched by quartic atoms.
*Lean:* [`assembly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L561-L595).

**Lemma 4.5 (proof of III.7.2).**
1. Take $E_i=E_W$ on $\Lambda_{n_i}$. The kernels of orders $3$ and $4$ come from Lemma 4.1(a).
2. Under $D=1$, Floor and invariance, $H$ agrees with the identity on exact forms. Hence $E_W$ minus the quadratic term of the bare datum (rows of $\rho$, no atoms) vanishes to order $3$ ([`top_Wilson`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L441-L471)).
3. Lemma 4.4 gives $X,V$, and $Q$ is formed from the rows of $\rho$, zero loop atoms, $X$ and $V$.
4. Order-$5$ vanishing along every ray of the difference of two analytic functions gives equality of all derivatives of order $\le4$ ([`matched`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L254-L260)).
5. The weight clauses come from the row prices $6Ae^{4\sigma_0}$, the zero-momentum normalization (Floor on the one-site torus, [`symbol_match`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L214-L258)), and the atom budgets $(1+C_3+C_4)C$.

*Lean:* [`launch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L270-L305), [`beckon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L101-L105), [`budding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L220-L225).

**Lemma 4.6 (every admissible leading part is Wilson up to irrelevant terms).** Let $R\in\mathrm{Bounds}(\mathbf c;\tau,A,\Lambda)$ be attached to a bed with Floor, invariant gauge form and $H\in\mathrm{strip}(\sigma,C)$. Then the Taylor kernels of orders $2$, $3$ and $4$ of $\mathrm{main}_{\mathbf c,R}-E_W$ vanish at zero momentum to orders $3$, $2$ and $1$ respectively. Their strip bounds depend only on $(\sigma,\varepsilon,C,Z,\tau,A)$. In words: all admissible leading parts share the marginal (dimension-four) part of $E_W$.
*Sketch:* $\hat H(0)=1$ fixes the quadratic kernel to second order. The atoms carry one curvature per leg, so their kernels are $O(|p|^{k})$.
*Lean:* [`greyson`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L363-L403), [`veneer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L349-L358), [`extra_curves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/SoftTransfers.lean#L59-L103), [`saunter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L528-L535), [`tideMark`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L41-L54). *(proof read at top level)*

### 4.4 Two-leg kernels: the $F^2$-coefficient and irrelevance

**Lemma 4.7 (a two-leg kernel without $F^2$-term vanishes to fourth order).** Let $G$ be simple. Let $f$ be a two-leg kernel that is strip-analytic, transversal, real, colour invariant, symmetric under exchange of the legs, and invariant under signed permutations. If the $p_q^2$-coefficient of $f_{(b,b),(w,w)}(p)$, for $p$ along an axis $q\neq w$, vanishes for one colour $b$, then $f$ vanishes to order $4$ at zero momentum. Consequently, for every bed with $\hat H(0)=1$, $f-\alpha_b(f)\,\hat K_B$ vanishes to order $4$, where $\hat K_B$ is the bed's quadratic kernel.
*Sketch:*
- Transversality gives vanishing to order $2$.
- The third-order coefficient is odd under $p\mapsto-p$, hence $0$ by reflection symmetry.
- By transversality, hypercubic symmetry and Schur's lemma, the second-order coefficient is a multiple of $(p^2\delta_{aa'}-p_ap_{a'})\delta_{bb'}$, and the multiple is the given coefficient.
*Lean:* [`TributeColor.vanish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L611-L625), [`subtract_fee`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L710-L727). *(proof partly read)*

**Lemma 4.8 (loop atoms are irrelevant).** Let $R\in\mathrm{Bounds}(\mathbf c;\sigma,C,\Lambda)$. The two-leg kernel of the loop atoms, symmetrized over legs and lattice symmetries:
- records $\mathrm{loop}_R$ exactly on every torus;
- is strip-analytic of width $\sigma$ and size $\Lambda\,r(\sigma)$;
- vanishes to order $4$ at zero momentum.

*Sketch:* The kernel is $\hat s(-p)^{\mathsf T}\hat K(p)\hat s(p)$ with $\hat K(p)=\sum\mathrm{coeff}\,e^{ip\cdot y}$. Here $\hat s=O(p)$, and the two moment conditions give $\hat K(0)=0$ and $\nabla\hat K(0)=0$.
*Lean:* [`filing_ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L231-L234).

### 4.5 The one-loop term in covariant form

**Lemma 4.9 (proof of III.7.6).** Three determinant identities combine:
- the completed Hessian factors as $\det\mathcal P_\mu=(\det\mathcal G_\mu)^2\det(\mathsf R^{\mathsf T}H\mathsf R)$ ([`root_determines`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Completion.lean#L491-L502));
- the axial Hessian satisfies $\det M=(\det\partial s)^2\det(\mathsf R^{\mathsf T}H\mathsf R)$, where $s$ is the left-trivializing chart change ([`certified`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L140-L161));
- the Haar Jacobian is $T=|\det\partial s|$ ([`treasury`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L63-L114), by comparison of densities on compact sets).

Together they give $T^2\det\mathcal P_\mu=\det M(\det\mathcal G_\mu)^2$. $\det M>0$ by the second-variation gap and $\det\mathcal G_\mu>0$ since $\mathcal G_\mu\ge\mathfrak m_\mu>0$; take logarithms.

In addition, the one-loop function is analytic at $0$ ([`born`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L76-L103)), and a finite bound proved for one forest transfers to any other ([`transfer_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L105-L113)).
*Lean:* [`tribute`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L177-L202). *(proof read; the two factorization lemmas statement only)*

### 4.6 Uniform invertibility of the fluctuation operators

**Lemma 4.10 (real and complex coercivity).** Fix a stage $j$, a penalty $a>0$, $D\ge0$ and $\varepsilon>0$. Consider the force operator: the block-Bloch symbol of the free fluctuation operator with block penalty $a$ and gauge-fixing family $F$. Let the bed satisfy $H\in\mathrm{strip}(\sigma/L,\Omega)$ and Floor, and let $F$ be real, strip-analytic, with block-scaled norm $\le D$.
- (a) There is $y>0$ such that, for every patch of stage $j$ and every $L$, the force operator is stable with constant $y$ at every real momentum.
- (b) Assume moreover that $F$ realizes the block constraint of the steps. Then there are $\eta\in(0,\sigma]$ and $C$, depending on $(j,K,\varepsilon,\sigma,\Omega,A)$ but not on $L$, such that the force operator is invertible for complex momenta in the strip of width $\eta$, with inverse bounded by $C$ in block-scaled norms.

*Lean:* [`stadium`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/RealGap.lean#L647-L664), [`post_cert`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/ComplexGap.lean#L330-L353).

**Lemma 4.11 (all five operators).** Given $G,K,J,\sigma,\varepsilon,\Theta,A$, there are widths $\eta\le w\le\min(\sigma,1/128)$ and constants $C,D$, independent of $L$, such that for every admissible patch of stage $J$ and all admissible data the following five operators are invertible in the strip of width $\eta$ with inverses bounded by $D$:
- the auxiliary operator;
- its block-aliased copy;
- the completed Hessian;
- the completed Hessian without the contact term;
- the ghost operator.

Two further low-momentum bounds hold as well.
*Sketch:* Lemma 4.10 for each operator, then take minima of widths and maxima of constants.
*Lean:* [`honored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L25-L68), [`GrantF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L15-L22), [`completion_choice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Joint.lean#L44-L69). *(proof read at top level)*

**Lemma 4.12 (proof of III.7.5).**
1. Choose $(\eta,C)$ by Lemma 4.10(b) for the regulator family of the completed operator.
2. For each $L$, a constant $W(L)$ converts block-scaled norms into the plain strip norm.
3. The bound on the inverse gives the strip bound $(\eta/2,\ \mathrm{cost}(\eta,CW(L)))$.
4. The inversion identity holds at real momenta on every torus and extends by analyticity.

*Lean:* [`uniform_backing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Backing.lean#L54-L66).

### 4.7 The slope of the regulated determinant

**Lemma 4.13 (the continuum bubble).** Take an external field of colour $b$, polarization $e_1$ and momentum $t\,e_0$, and loop momentum $k\neq0$.
- The vector bubble has orbital vertex $2k_1$ and spin vertex $\pm2it$ in the $(0,1)$ plane.
- Both bubbles carry the colour trace $\mathrm{tr}(\mathrm{ad}_b^2)=-C_G$, which uses simplicity.
- The propagators are $|k|^{-2}$ and $|k+te_0|^{-2}$.

Writing $c'(t)$ for the ghost bubble and $d'(t)$ for the vector bubble,
$$\partial_t^2c'(0)-\tfrac12\,\partial_t^2d'(0)=2h(k),\qquad h(k)=4C_G\Big(\frac{k_1^2}{|k|^6}-\frac{4k_1^2k_0^2}{|k|^8}-\frac1{|k|^4}\Big).$$
The terms in $k_1^2$ come from the orbital coupling: one adjoint scalar's worth, $\tfrac12\cdot4$ vector components minus one ghost. The term $-|k|^{-4}$ comes from the spin coupling of the vector field.
*Lean:* [`haloRate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L127-L141), [`poleVec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L125).

**Lemma 4.14 (the shell integral).** For $0<\mu\le1$,
$$\frac1{(2\pi)^4}\int_{\mu<|k|\le1}h(k)\,d^4k=-\kappa\log\mu^{-1}.$$
*Sketch:* By rotation invariance $\int k_1^2|k|^{-6}=\tfrac14\int|k|^{-4}$, and $\int k_1^2k_0^2|k|^{-8}=\tfrac1{24}\int|k|^{-4}$, the latter from averaging over $e_i\pm e_j$. Also $\int_{\mu<|k|\le1}|k|^{-4}=2\pi^2\log\mu^{-1}$. So $h$ averages to $4C_G(\tfrac14-\tfrac16-1)|k|^{-4}=-\tfrac{11}3C_G|k|^{-4}$: orbital $+\tfrac13C_G$, spin $-4C_G$. Finally $\tfrac{11}3C_G\cdot2\pi^2/(2\pi)^4=\kappa$.
*Lean:* [`poleSpin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L326-L338), [`joy_two`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L270-L275), [`joy_heights`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L292-L304), [`polar_m`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L200-L202).

**Lemma 4.15 (the lattice integrand is close to $h$).** Let $\Phi_\mu$ be the second-order kernel of $\Pi_\mu$ built from the vertex kernels of Lemma 4.6:
$$\Phi_\mu=\tfrac12\,(\text{vector film})-(\text{ghost film}).$$
Let $k_b(k)=\tfrac12\partial_s^2\Phi_{\mu,(1,b),(1,b)}(s\,e_0;k)|_{s=0}$ be its integrand at loop momentum $k$. Then $\alpha_b$ of the loop-momentum integral of $\Phi_\mu$ equals $(2\pi)^{-4}\int_{[-\pi,\pi]^4}\mathrm{Re}\,k_b$. There are $a,b'\ge0$, uniform over all data of III.7.3 and all $\mu\in(0,1]$, such that:
$$|k_b(k)|\le\frac{a}{(|k|+\mu)^4}\ \text{on the Brillouin cube},\qquad |k_b(k)-h(k)|\le b'\big(|k|^{-3}+\mu^2|k|^{-6}\big)\ \text{for }|k|\ge\mu.$$
*Sketch:* Each film is (tadpole) $-$ (bubble). The tadpoles are $O(|k|^{-2}+\mu^2|k|^{-6})$. The lattice bubbles differ from the continuum ones by $O(|k|^{-3}+\mu^2|k|^{-6})$, using the softness of Lemma 4.6. Lemma 4.13 identifies the continuum combination.
*Lean:* [`astronomy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L278-L292), [`Rally.coin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L179-L184), [`Rally.shell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L191-L222), [`polar_clock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L136-L159), [`amena`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L333). *(proof read at top level; tadpole and bubble controls statement only)*

**Lemma 4.16 (from the bounds to the slope).** Under the two bounds of Lemma 4.15,
$$\big|\alpha_b+\kappa\log\mu^{-1}\big|\le(2\pi)^{-4}\big(a\tfrac{\pi^2}2+a(2\pi)^4+3\pi^2b'\big).$$
*Sketch:* Split the cube into three regions.
- On $|k|\le\mu$: the integrand is $\le a\mu^{-4}$ and the volume is $\pi^2\mu^4/2$.
- On the shell: compare with $h$ and use Lemma 4.14; the error is $\int b'(|k|^{-3}+\mu^2|k|^{-6})\le3\pi^2b'$.
- On $|k|>1$: the integrand is $\le a$.

*Lean:* [`absoluteGeode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L346-L408).

**Lemma 4.17 (proof of III.7.3).**
1. Lemma 4.6 and Lemma 4.1 give the vertex kernels of $\mathrm{main}_{\mathbf c,R}=E_W+(\mathrm{main}-E_W)$.
2. The film $\Phi_{1/L}$ represents $\Pi_{1/L}$ ([`gemF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L356-L363)). For fixed $L$ it is strip-analytic, since the vector and ghost symbols are invertible at real momenta, by Floor and the regulator, and hence in a strip ([`HouseWord.done`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L451-L456)).
3. The loop-momentum integral of the film is the kernel $\hat Y$. Comparing the torus Riemann sum with the integral gives an error $|\Lambda_{n_i}|K_Le^{-z_Ln_i/4}$ ([`profit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Fourier.lean#L454-L482)).
4. Lemmas 4.15–4.16 with $\mu=1/L$ give (b), with $D=(2\pi)^{-4}(\dots)$ independent of $L$.

*Lean:* [`pouring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L17-L52).

### 4.8 From the regulated determinant to the blocked determinant

**Lemma 4.18 (comparison of $F^2$-coefficients).** Assume the five invertibility bounds of Lemma 4.11. Consider the two-leg films of:
- the medal film: $\tfrac12\log\det$ of the completed Hessian minus $\log\det$ of the ghost operator, with regulator $1/L$;
- the core film: the same with the contact term removed;
- the auxiliary film: built from the block-aliased auxiliary operator.

Then:
- the medal film is strip-analytic of width $\eta/2$ and size $L^4a$;
- its loop-momentum integral records the determinant part of the one-loop function along the branch on $\Lambda_{m_j}$, with error $|\Lambda_{m_j}|\,c_Le^{-\eta m_j/8}$;
- $|\alpha_b(\text{medal})-\alpha_b(\text{auxiliary})|\le d_{\rm cmp}$, with $d_{\rm cmp}$ depending on the stage constants but not on $L$.

*Sketch:*
- The contact term, which distinguishes on-shell from off-shell completion, has a film vanishing to order $3$ at zero momentum. Hence $\alpha(\text{medal})=\alpha(\text{core})$ ([`drift_tip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L789-L818)).
- The difference core $-$ auxiliary is strip-analytic with an $L$-independent bound. Cauchy estimates bound its $F^2$-coefficient ([`boundedTip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L24-L41)).

*Lean:* [`quoting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L67-L96), [`medalCue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L84), [`coreCue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L86), [`rankCue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L85). *(proof read; `drift_tip` partly)*

**Lemma 4.19 (aliasing preserves $\alpha$).** The $F^2$-coefficient of the auxiliary film on the coarse lattice equals $\alpha_b(\hat Y)$, where $\hat Y$ is the kernel of III.7.3 for $\Pi_{1/L}$ on the fine tori $\Lambda_{Lm_i}$.
*Sketch:* The coarse symbol at momentum $p$ is the sum over the $L^4$ aliases of the fine symbol. The nonzero aliases vanish to order $4$. The zero alias is the fine kernel at $p/L$, multiplied by $L^4\cdot L^{-2}\cdot L^{-2}=1$ at order two, so the $F^2$ term is scale invariant (probable reading).
*Lean:* [`pole_reduced`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L719-L741), [`carry_plan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L255-L278), [`fine_alpha`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L670-L705). *(proof read at top level; `carry_plan` statement only)*

### 4.9 The step and the iteration

**Lemma 4.20 (construction of the coarse datum).** The input is a stationary branch with gap and the quadratic-jet condition, a coarse bed $T$, and two kernels:
- a two-leg kernel $\hat\alpha$ recording the determinant part of the one-loop function with error $o(|\Lambda_{m_i}|)$;
- a kernel $\hat\ell$ recording the inherited loop functional $x\mapsto\mathrm{loop}_R(U_{x,g(x)})$ exactly.

Assume also that the tree-level action has recorded Taylor kernels of orders $3$ and $4$ with size $X$. Then the datum
$$Y=(\text{rows of }T,\ \text{loop atoms }g,\ \text{cubic and quartic atoms from Lemma 4.4})$$
satisfies items 1, 2, 4 and 5 of III.7.4 with $\alpha=\alpha_b(\hat\alpha)$. The loop budget is $\big(\|\hat\alpha\|+|\alpha|\,c_T+\|\hat\ell\|\big)D$.
*Sketch:*
- Classical match: apply Lemma 4.4 to $E=S_t(\cdot,g(\cdot))$, whose quadratic part is $T$'s by the quadratic-jet condition. Then use order-$5$ vanishing to match jets ([`achieved`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L377-L386), [`violet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L343-L376)).
- Loop atoms: $\hat\alpha-\alpha\hat K_T+\hat\ell$ vanishes to order $4$ (Lemmas 4.7–4.8) and is represented by loop atoms with the two moment conditions ([`reach_symbol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L122-L159)).
- Finite bound: from III.7.6 and the recording errors ([`draft_pipe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L281-L324)).

*Lean:* [`color_pipe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L394-L435) (classified III.4). *(proof read at top level)*

**Lemma 4.21 (proof of III.7.4).**
- *Coercivity.* Lemma 4.11 at widths $\min(w,\delta)$.
- *Tree-level vertices.* Cubic and quartic vertex bounds have the form $a+L^{-1}\ell$ and $b+L^{-1}r$ ([`setWest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/VertexWeights.lean#L357-L382)). By [`exchangeYield`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Exchange.lean#L407-L415), the order-$3$ and order-$4$ kernels of the tree-level action, the latter including the one-propagator exchange of two cubic vertices, are bounded by
$$M=1+\tfrac{a+1}6+\tfrac{(c+1)+3(a+1)^2E}{24}$$
  (probable reading).
- *Inherited loops.* The inherited loop kernel has size $L^{-2}\Lambda C_0$ ([`bequest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L66-L92)).
- *The slope.* Lemma 4.18 and Lemma 4.19 give $\alpha=\alpha_b(\text{medal film})$ with $|\alpha+\kappa\log L|\le d_{\rm cmp}+D$.
- *Assembly.* Lemma 4.20 builds $Y$.
- *Choice of $L$.* $L\ge u$ is chosen so that $L^{-1}$ times the input-dependent constants lies below the output thresholds, and $L^{-2}C_0\ell\le\tfrac14$ ([`age_control`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L42-L49)). The coarse loop budget is then $\le\Lambda_0(L)/2+\Lambda/4\le\Lambda'$ ([`cap_invoice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L74-L80)).

*Lean:* [`transition_cap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L92-L182) (classified III.4). *(proof read at top level)*

**Lemma 4.22 (loop caps and the iteration).**
- *Loop caps.* For every $W_j$ there are thresholds $\Delta_j$ such that, once $\hat\beta$ at the entry exceeds them, $W_{J_{m+1}}\le\mathrm{loopCap}_m$, $\mathrm{loopCap}_{m+1}\le2\,\mathrm{loopCap}_m$ and $\mathrm{loopCap}_m\ge1$. The reason: $\hat\beta_{m+1}=\hat\beta_m+\kappa\log L_m$, and $(\log\log(s+k))^2-(\log\log s)^2\le3k/s$ ([`bump`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L18-L49)).
- *Iteration.*
  - [`claiming`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L122-L143) applies Lemma 4.21 to the stage pairs $(j,j)$ and $(j+1,j)$ and takes minima and maxima of the constants.
  - [`energized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L254-L285) produces one step's record at level $m$.
  - [`plowed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L307-L335) assembles the kinetic data by downward induction from $m=N$, starting from the top datum.
  - [`under_contract`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L366-L391) chooses the volume thresholds so that $F(L)e^{-\gamma n}\le\Gamma e^{-(\gamma/2)n}$ ([`waits_up`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L353-L358)).
  - `geared` substitutes III.7.3.

*Lean:* [`clocks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L51-L74), [`geared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L59-L66).

## 5. Where the difficulty lies

- **The genuinely new content is the one-loop coefficient.** The value $11/3$ is computed from explicit background-field vertices (orbital $2k_1$, spin $\pm2it$). The colour trace $-C_G$ is the only group-dependent input, through simplicity. The identification with the blocked determinant is derived, not built in: Faddeev–Popov identity, removal of the contact term, an $L$-independent comparison with an infrared-regulated covariant determinant, and invariance of $\alpha$ under aliasing. A written proof should present §4.7–4.8 as the background-field computation of $b_0$ with the regulator mass $1/L$ in place of the block constraint.
- **Classical part: routine in principle, long in practice.** It is the algebraic Poincaré lemma with exponential weights. The useful facts are:
  - the width loss $\sigma\to\sigma/4$ occurs once per application, not per axis (Lemma 4.2);
  - a single emission lemma serves the top and every step (Lemma 4.4).
- **Weak but sufficient error control.** $|\alpha+\kappa\log L|\le d$ with $d$ independent of $L$. This is far from a two-loop statement, but enough for III.9 because $\log L$ is chosen large compared with $d$.
- **Volume uniformity through sequences of sides.** The statements quantify over sequences $n_i\to\infty$ and produce one datum valid on all tori of the sequence. This is not a weakness: the conclusion at a single side follows by starting a sequence there. The device makes the kernels infinite-volume objects, and lets transversality, colour invariance and reality pass to them by limits. In applications the sequence is the set of periodic sides at a fixed level, over all volume indices.
- **No circularity with the polymer estimates.** The leading-part recursion uses only the free-field data (beds, towers), the stationary branch (III.6) and the schedule. Polymer activities never enter. The coupling enters only through $\mathrm{loopCap}_m(\hat\beta_m)$.
- **Sizes of the constants.**
  - The loop-atom amplitude grows like $L^4\log L$ per level; it is not small, only subdominant to $\beta$.
  - The cubic and quartic amplitudes are reset by the step: the output amplitude is chosen before the input amplitude, which enters with a factor $L^{-1}$.
  - Inherited loop atoms contract by $L^{-2}$.
- **Unusual features.**
  - The regulator is $\mu^2(\mu^2/(\Delta_U+\mu^2))^9$, a smooth infrared cutoff that decays like $|k|^{-18}$ at high momentum.
  - III.7.3 holds for every odd $L\ge1$.
  - Several declarations that complete the argument are classified under III.4 (see §7).

## 6. Notation

| Written proof | Lean | Meaning |
|---|---|---|
| $R=(\ell,\mathcal A^{(2)},\mathcal A^{(3)},\mathcal A^{(4)})$ | [`RG.PathData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L150-L154) | path datum (rows, loop/cubic/quartic atoms) |
| leg, atom | [`RG.Slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L38-L40), [`RG.Atom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L84-L86) | transported curvature; curvature monomial |
| $\mathrm{Bounds}(\mathbf c;\sigma,C,\Lambda)$ | [`PathData.Bounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L173-L185) | weight clauses |
| $\mathrm{main}_{\mathbf c,R}$, $\mathrm{loop}_R$ | [`mainTerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L27-L28), `loop` | leading part; loop functional |
| clip $\mathbf c$, $c_{\rm dir}$ | [`RG.Clip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139-L146) | clipping parameters; `direct` |
| bed $B$, Floor, attached | [`Bed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L35-L40), [`Floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68), [`Attached`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L44-L46) | free quadratic-form data of a level |
| straight-route rows of $\rho$ | [`rowPath`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L169-L171), [`emitBase`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L173-L174) | |
| strip-analytic $(\sigma,K)$ | [`Firm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Infrastructure/Jets.lean#L199) | |
| vanishing to order $s$ along rays | [`Rays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Infrastructure/Jets.lean#L28-L29) | |
| $(t{+}1)$-leg kernel; records | `Picture`, [`Recorded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Pathways.lean#L491-L492) | Fourier kernel of a Taylor coefficient |
| $\alpha_b(\hat K)$ | [`alphaPay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L699) | $F^2$-coefficient, normalized by the bed |
| $\Pi_\mu$ | [`PoleTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/AuxReferences.lean#L138), [`fineMag`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/AuxReferences.lean#L46) | regulated background-field one-loop action |
| $\mathcal G_\mu$, $\mathcal P_\mu$ | [`grenade`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Regulator.lean#L338), [`medals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Completion.lean#L59-L60) | ghost operator; completed Hessian |
| $\mu=1/L$ | [`inch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/Slabs.lean#L189) | regulator mass |
| $h(k)$; $k_b(k)$ | [`poleVec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L125); [`keelRay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L155) | continuum bubble integrand; lattice integrand |
| bounds of Lemma 4.15 | [`Waves1`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L276), [`Waves2`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L277) | |
| $(2\pi)^{-4}$ | [`cartWeight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L28) | |
| $S_t(x,z)$; $\mathrm{th}$ | [`tested`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L81-L84); [`thermal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L46-L49) | fine action plus penalty; one-loop function |
| classical match; finite bound | [`ClassicalMatch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L108-L109); [`FiniteBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L62-L71) | items 4 and 5 of III.7.4 |
| slope statement | [`HorizCalc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L20-L23), [`Fluent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L115) | III.7.3 for given / all parameters |
| step property; step record | [`Transition`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L86-L90); [`Bubble`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L170-L177) | III.7.4 |
| top datum | [`BranchRow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L166) | III.7.2 at level $N$ |
| kinetic data, planned conditions | [`Kin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L74-L77), [`Kin.Planned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L93-L115), [`FullPaths`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L301-L305) | output to III.9 |
| invertibility bounds | [`GrantF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L15-L22), [`Freezer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/UniformMatrix.lean#L270-L272) | strip invertibility with inverse bound |
| medal, core, auxiliary films | [`medalCue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L84), [`coreCue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L86), [`rankCue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L85) | §4.8 |
| $\hat\beta_m$, $\mathrm{loopCap}_m$ | [`hatBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79), [`loopCap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L86) | reference coupling; loop-amplitude cap |
| $\kappa$ | [`Gauge.slopeConstant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184) | $11C_G/(24\pi^2)$ |

## 7. Open points for the writer

1. **Proofs not read.** The following were taken from their statements:
   - the tadpole and bubble controls behind Lemma 4.15 (vector/ghost vertex packages);
   - the aliasing lemmas behind Lemma 4.19;
   - the inputs of `drift_tip` (vanishing of the contact film);
   - Lemma 4.10 (real and complex coercivity);
   - the vertex bounds `setWest`, `exchangeYield`, `extra_curves`;
   - the loop-atom construction `reach_symbol`.

   The formula for $M$ in Lemma 4.21 as "vertex plus one-propagator exchange" is a reading of the arithmetic (probable).
2. **Operators of III.7.5 and III.7.6.** The precise form of the completed free operator (front matrix of the bed plus block constraint at $1/L$) and of the completed Hessian (which joint variables, which gauge-fixing term) is described from definitions and docstrings (probable). A written proof should fix these as Balaban's operators $\Delta+aQ^*Q$ and their background-field versions.
3. **The regulator.** The choice $\mu^2(\mu^2/(\Delta_U+\mu^2))^9$ is not explained in the Lean. Why the ninth power suffices for the comparison of Lemma 4.18 should be checked against the core $-$ auxiliary bound.
4. **Hypotheses of `geared`.** The schedule record, the horizon conditions (strip and Floor bounds of beds and towers), `Retained` and the local Haar chart are hypotheses of its conclusion. They are supplied by its users: `sailsV` and `B70FreeStationaryConnection.paths` (III.4), and versions of the iteration in III.2 (`verdant`) and III.13 (`Reward.office`), which consume III.7.3 directly. Whether every user discharges them was not traced.
5. **Unit boundaries.** `transition_cap`, `claiming`, `under_contract`, `geared`, `color_pipe`, `reach_symbol`, `energized` and `plowed` are classified under III.4, while the specifications they prove and all their inputs are here. A written account should keep §4.9 with this unit.
6. **`UVExtension/Projection` (286 lines).** It parametrizes path data by coefficient vectors with exponential weights (`blend`, `fitting`). It shows continuity of the jets of the leading part and of the stationary quantities under limits of the parameters (`insideLine`, `onRows`, `interview`). It is probably used by the limit arguments of III.13 (tentative).
7. **Interface with III.9.** The kinetic data and their planned conditions are exactly III.9's hypothesis.
   - The step record maps to the planned conditions as follows: the coupling bound gives the drift condition; attachment and weight clauses give the bed and cap conditions; gap, stationarity, derivative condition, classical match and finite bound give the per-step conditions.
   - The top datum gives the Wilson-jet and zero-loop conditions.
   - The full-path record adds the row condition and a finite bound at loop amplitude $1$.

**Builds on:** [III.1](III-1.md), [I.1](I-1.md), [III.16](III-16.md), [III.6](III-6.md), [III.10](III-10.md), [V.2](V-2.md), [VI.1](VI-1.md), [III.2](III-2.md), [V.1](V-1.md), [IV.1](IV-1.md).

**Used by:** [VII.2](VII-2.md), [III.2](III-2.md), [III.13](III-13.md), [III.4](III-4.md), [III.14](III-14.md), [VII.1](VII-1.md), [III.12](III-12.md), [VII.4](VII-4.md), [III.11](III-11.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| work package [`YM/Next/STATIONARY/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY) | 19,391 |
| work package [`YM/UVExtension/Projection/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Projection) | 286 |
| work package [`YM/WilsonBulk/Spectral/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral) | 215 |
| work package [`YM/UVExtension/Reward/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward) | 30 |
| work package [`YM/UVExtension/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension) | 23 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **III.7.1** [`gathered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/LocalOracle.lean#L312-L348) *(key result)* — A summable family of local analytic functionals with weighted bounds sums to an analytic function with uniformly controlled jet bounds, dimension-free.
- **III.7.2** [`vanish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L611-L625) *(key result)* — For simple gauge group and distinct axes with vanishing leap-tip coefficient, the relevant data function vanishes to order four along the axes.
- **III.7.3** [`withdrew`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Ward.lean#L647-L697) *(key result)* — Uniform lift conditions transfer along a sequence of analytic forces tending to zero, except for ray vanishing orders.
- **III.7.4** [`frame`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Chart.lean#L421-L435) *(numbered result)* — The Army property is preserved on composing with frame evaluation components.
- **III.7.5** [`wedlock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Vertex.lean#L371-L379) *(key result)* — There exists a family of kernels with exponentially decaying bounds and analytic rays that realizes the prescribed generating data.
- **III.7.6** [`wall_lift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Koszul.lean#L571-L587) *(key result)* — A cycle-valued leg with cost and jet bounds is a coboundary of a leg one degree higher with controlled cost, preserving vanishing on the wall.
- **III.7.7** [`carry_plan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L255-L278) *(key result)* — Under convergence hypotheses, the limiting row-scape of a sequence of kernels coincides with the carried row from the limit object at real momenta.
- **III.7.8** [`allleg`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/ManyLegs.lean#L533-L549) *(key result)* — For arity at least three, a contractible family of cost-bounded functions is the curl of a family of cost-bounded potentials, with cost loss by a constant factor.
- **III.7.9** [`strokes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Pathways.lean#L193-L201) *(numbered result)* — A cost-bounded picture admits a real, color-invariant Laurent representation with controlled cost at fixed arity.
- **III.7.10** [`colors_align`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Ward.lean#L192-L216) *(key result)* — For an analytic function with controlled recorded data and a shaded picture and skin, the series expansion matches the function to the stated aperture order.
- **III.7.11** [`scene_gate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L58-L61) *(key result)* — For a given roll and price data there exists a budget gap parameter, from the stationary scene.
- **III.7.12** [`tribute`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L177-L202) *(key result)* — Near zero, the completed Hessian determinant is positive and the Haar-to-counting Jacobian ratio is controlled inside the exponential patches.
- **III.7.13** [`stadium`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/RealGap.lean#L647-L664) *(key result)* — For self-adjoint-symmetric tactics with bounded serial norms, the carried matrix of the force operator is stable with a uniform constant on real momenta.
- **III.7.14** [`filing_ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L231-L234) *(numbered result)* — The filing data are firm with controlled bounds and vanish to order four along axes, and are recorded against the loop series at order zero.
- **III.7.15** [`launch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L270-L305) *(key result)* — Given input bed data, there is a path datum whose main term agrees to fourth jet order with the Wilson energy and satisfies bounds, uniformly for large volumes.
- **III.7.16** [`assembly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L561-L595) *(key result)* — Real-analytic extensions with jet control can be matched, up to order-five error, by classical emitted data built from atoms with wall bounds, uniformly along large volumes.
- **III.7.17** [`extra_curves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/SoftTransfers.lean#L59-L103) *(key result)* — For atom families with wall bounds, classical curvature terms from cubic and quartic vertices are realized by pictures with uniform bounds enabling the induction.
- **III.7.18** [`quoting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L67-L96) *(key result)* — A grant bound yields footprint bounds for bounded plane-density performances, used for flux, transition and ceiling caps.
- **III.7.19** [`drift_tip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L789-L818) *(key result)* — For a simple gauge group and screened data, the alpha payment of the profitable cue vanishes for each color index.
- **III.7.20** [`post_cert`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/ComplexGap.lean#L330-L353) *(key result)* — Under weighted two-end budget conditions, the force-kernel operator built from the tactics satisfies a freezing (coercivity) certificate with constants independent of the patch.
- **III.7.21** [`uniform_backing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Backing.lean#L54-L66) *(key result)* — For beds with strip metric and floors, the joint inverse is uniformly bounded in the strip norm with constants depending only on the level, and inverts the completed matrix.
- **III.7.22** [`pouring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L17-L52) *(key result)* — For every simple gauge group, the fluent (annulus) certificate holds.
- **III.7.23** [`honored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L25-L68) *(key result)* — Given inputs, one can choose convergence widths and constants independent of later kinetic data so that the grant-type bounds hold for all patches and path data along sequences of sides tending to infinity.
- **III.7.24** [`setWest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/VertexWeights.lean#L357-L382) *(key result)* — For bounded loop data, there are constants such that for all small patches and admissible families, one can construct order-3 and order-4 weighted texts bounding the stationary expansion with explicit constants.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

# III.7. Matching the Wilson energy to fourth order

*Part III — Ultraviolet construction (renormalization group).*

Matches the effective action to the Wilson energy through fourth order.

**Status: edited.** Checked against the linked Lean and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [← Previous: III.6](III-6.md) · [Next: III.8 →](III-8.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** [`YM/Next/STATIONARY/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY), [`YM/WilsonBulk/Spectral/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral), [`YM/UVExtension/Projection/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Projection), and a few lines of [`YM/UVExtension/Reward/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward). **Size:** 19,945 lines in the source allocation: 19,391 in `Next/STATIONARY`, 286 in `UVExtension/Projection`, 215 in `WilsonBulk/Spectral`, and about 50 elsewhere.

*Conventions.* Levels $m=0,\dots,N$ run from the coarsest level ($m=0$) to the Wilson lattice ($m=N$). Blocking from fine level $m+1$ to coarse level $m$ uses an odd factor $L_m$. The stage $J_m$ is the index of the constants used at level $m$; it satisfies $J_{m+1}\in\{J_m,J_m+1\}$. In one step the fine torus $\Lambda_f$ has side $f=Lc$ and the coarse torus $\Lambda_c$ has side $c$; in general $|\Lambda_n|=n^4$. Fields are Lie-algebra link variables $x$, and configurations are $U=e^x$. $E_W(U)=\sum_p\big(1-d_{\rm rep}^{-1}\mathrm{Re}\,\mathrm{tr}\,U_p\big)$ is the Wilson energy in the fixed matrix representation of dimension $d_{\rm rep}$, $C_G$ is the adjoint Casimir constant of I.1, and $\kappa=11C_G/(24\pi^2)$.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

At level $m$ the effective action has the form $\beta\,\mathrm{main}_{\mathbf c,R}(U)+\mathrm{loop}_R(U)$, plus polymer activities (III.10). Here $R$ is a *path datum*: an exponentially weighted, explicit sum of gauge-covariant curvature monomials along lattice paths. This unit constructs the path data and the coupling shifts.

- **(A)** At the finest level there is a path datum whose leading part has the same Taylor jet as $E_W$ through order four (III.7.2).
- **(B)** For one block-spin step, the coarse leading part can be chosen as the classical (tree-level) transform of the fine one through order four. The second-order Taylor coefficient of the one-loop term equals $\alpha$ times the coarse quadratic form plus coarse two-leg atoms, up to an error exponentially small in the side of the torus. Moreover $|\alpha+\kappa\log L|$ is bounded independently of $L$ (III.7.4).
- **(C)** The value $\kappa=11C_G/(24\pi^2)$ is computed, not assumed. The one-loop determinant of the background-field operator in Feynman gauge, regularized in the infrared at scale $1/L$, has $F^2$-coefficient $-\kappa\log L+O(1)$ (III.7.3). Two results connect this determinant to the blocked one: an exact Faddeev–Popov identity (III.7.6) and uniform invertibility of the completed fluctuation operators (III.7.5, §4.6).

Iterated over all levels, (A)–(C) give the kinetic data satisfying the conditions required in III.9. The slope $\kappa$, a defined constant in I.1 and III.9.1, is identified here with the one-loop coefficient of the blocked action.

**Proposition III.7.1 (path data, beds, Fourier kernels).**

- *Legs and atoms.* A leg is a lattice walk $\gamma$ from the origin of $\mathbb Z^4$ together with a plaquette orientation $P$. At base point $x$ it evaluates $U$ to $\mathrm{Ad}(U_\gamma)\,\mathcal F(U_{\partial p})\in\mathfrak g$. Here $p$ is the plaquette of orientation $P$ at the end of $\gamma$, $U_\gamma$ is the transport along $\gamma$, and $\mathcal F(u)$ is the $\mathfrak g$-component of $(u-u^{-1})/2$. The length of a leg is $|\gamma|+4$.
- A $k$-atom is a $k$-tuple of legs with a coefficient tensor $a:\{1,\dots,\dim\mathfrak g\}^k\to\mathbb R$. It evaluates to $\sum_b a(b)\prod_i(\mathrm{leg}_i)_{b_i}$. It is *invariant* if this polynomial is $\mathrm{Ad}$-invariant. Its exponential weight at width $\sigma$ is $\|a\|_1e^{\sigma\cdot\mathrm{length}}$.
- *Path datum* $R$. For each of the six plaquette orientations $P$, a sequence of rows $(\lambda_{P,k},\mathrm{leg}_{P,k})$; and sequences of 2-atoms (*loop atoms*), 3-atoms and 4-atoms. The rows define $\ell_R(U)_{(x,P)}=\sum_k\lambda_{P,k}\,\mathrm{leg}_{P,k}(U,x)$.
- *Main term.* For a clip $\mathbf c$ (only $c_{\rm dir}>0$ enters here), whenever the row and atom series converge absolutely:
$$\mathrm{main}_{\mathbf c,R}(U)=\frac1{384}\sum_{s}\Big[\sum_p\Big(c_{\rm dir}\big(1-d_{\rm rep}^{-1}\mathrm{Re}\,\mathrm{tr}\,U_p\big)+\tfrac12|\ell_R(U)_p|^2\Big)+\sum_x\sum_k\big(\mathcal A^{(3)}_k+\mathcal A^{(4)}_k\big)(U,x)\Big]_{U\to sU}.$$
  This is an average over the 384 signed permutations $s$ of the axes. $\mathrm{loop}_R$ is the same average of the sum of all loop atoms. These are the unclipped analytic germs; the small-field clipping of the full action does not enter them.

- *Weight clauses* $R\in\mathrm{Bounds}(\mathbf c;\sigma,C,\Lambda)$:
  - $\sigma>0$, and $\sum_k|\lambda_{P,k}|e^{\sigma\,\mathrm{len}}\le C$ for each $P$;
  - the sums of exponential weights are $\le C$ for the cubic and quartic atoms and $\le\Lambda$ for the loop atoms;
  - all atoms are invariant;
  - normalization at zero momentum: $c_{\rm dir}\delta_{PQ}+\sum_{P'}\hat\ell_{P'P}(0)\hat\ell_{P'Q}(0)=\delta_{PQ}$;
  - the *moment conditions*: for each pair of leg orientations and colours, the loop coefficients have total weight $0$ and first moment $0$ in the displacement between the two legs (with the required summability).
- *Bed* $B=(D,\tilde D,H,\tilde H,\rho)$: five translation-invariant kernels on plaquette fields (diagonal, its inverse, metric, its inverse, roots).
  - $R$ is *attached* to $B$ if its rows, summed by end plaquette and displacement, give $\rho$.
  - $\mathrm{Floor}(B,\mathbf c,n;\varepsilon,C)$ on $\Lambda_n$ means: $D\tilde D=1$; $H\tilde H=1$; $\Phi^{\mathsf T}\Phi=H$ with $\Phi=(\sqrt{c_{\rm dir}}\,\mathbf 1;\rho)$; $\hat H(0)=1$; $H\,d_1=D\,d_1$ on link fields; $H,D$ symmetric with $\varepsilon I\le H,D\le CI$ as quadratic forms.
  - A kernel is in $\mathrm{strip}(\sigma,C)$ if $\sum_y e^{\sigma|y|_1}|K(y)|\le C$ entrywise.
- *Fourier kernels.* A $(t{+}1)$-leg kernel assigns a number $\hat K_{b,a}(p_1,\dots,p_t)$ to colours $b$, directions $a$ and momenta, with $p_0=-\sum p_j$.
  - $\hat K$ is *strip-analytic of width $\sigma$ and size $K$* if it is holomorphic, $2\pi$-periodic in each scalar momentum coordinate, and bounded by $K$ on $|\mathrm{Im}\,p_{j,a}|<\sigma$.
  - A function $F$ on link fields on $\Lambda_n$ is *recorded* by $\hat K$ with error $\epsilon$ if its complexified Taylor coefficient $D^{t+1}F(0)/(t+1)!$, evaluated on canonical unit plane waves, differs from $|\Lambda_n|\hat K_{b,a}(p)$ when the momenta sum to zero, and from $0$ otherwise, by at most $\epsilon$. All tuples of lattice momenta are tested.
  - $F$ *vanishes to order $s$ along rays* if $F(tv)=O(t^s)$ as $t\to0$ for every $v$, with the constant allowed to depend on $v$.
- *$F^2$-coefficient.* For a two-leg kernel, $\alpha_b(\hat K)$ is twice the real part of the coefficient of $s^2$ in $\hat K_{(b,b),(1,1)}(s\,e_0)$. For the quadratic kernel of a bed whose metric has positive strip width and $\hat H(0)=1$, it equals $1$, so $\alpha$ is measured in units of the classical $F^2$ term.

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
- Take a compatible history satisfying the thresholds of III.2 and a horizon satisfying the free-field conditions of §2, and apply the statement to the sequence of periodic sides at level $N$. The result is a top datum ([`budding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L220-L225), [`BranchRow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L166)) that:
  - satisfies the level-$N$ weight clauses with loop amplitude $\mathrm{loopCap}_N$;
  - matches $E_W$ through order four on every volume;
  - has vanishing loop coefficients.

  This is the top condition used in III.9.

**Proposition III.7.3 (the one-loop slope).** Let $G$ be simple. For $\sigma,\varepsilon>0$, $C,Z\ge0$, $\tau>0$ and $A\ge0$ there is $D\ge0$ with the following property.

*Hypotheses:*

- $L\ge1$ is odd, $\mu=1/L$, and $n_i\to\infty$;
- $\mathbf c$ is a clip with $c_{\rm dir}\le Z$;
- $B$ is a bed with $H\in\mathrm{strip}(\sigma,C)$, $\mathrm{Floor}(B,\mathbf c,n;\varepsilon,C)$ for every $n$, and gauge form invariant under signed permutations on each $\Lambda_{n_i}$;
- for any $\Lambda\in\mathbb R$, a datum $R\in\mathrm{Bounds}(\mathbf c;\tau,A,\Lambda)$ is attached to $B$.

For a link field $x$ on $\Lambda_{n_i}$ and $U=e^x$ put
$$\Pi_\mu(x)=\tfrac12\log\det\big(\mathcal H_{\mathbf c,R}(U)+d_Ud_U^{*}+\mathcal M_\mu(U)\big)-\log\det\big(d_U^{*}d_U+\mathfrak m_\mu(U)\big).$$
Here:

- $\mathcal H_{\mathbf c,R}(U)$ is the Hessian at $y=0$ of $y\mapsto\mathrm{main}_{\mathbf c,R}(e^yU)$;
- $d_U$ is the covariant difference $(d_U\phi)_e=\phi(e_-)-\mathrm{Ad}(U_e)\phi(e_+)$ from adjoint site fields to link fields;
- $\mathfrak m_\mu(U)=\mu^2\big(\mu^2(d_U^*d_U+\mu^2)^{-1}\big)^{9}$;
- $\mathcal M_\mu$ applies $\mathfrak m_\mu$ separately to the four link components, each regarded as a site field at the initial endpoint.

*Conclusion:* there are a strip-analytic two-leg kernel $\hat Y$ and numbers $e_i\to0$ such that:

- (a) $\hat Y$ records the second-order Taylor coefficient of $\Pi_\mu$ at $0$ on $\Lambda_{n_i}$ with error $|\Lambda_{n_i}|\,e_i$, for every $i$;
- (b) $|\alpha_b(\hat Y)+\kappa\log L|\le D$ for every colour $b$.

$\Pi_\mu$ is the one-loop effective action of the fine leading part in the background $U$, in Feynman background gauge: $d_Ud_U^*$ is the gauge-fixing term and $d_U^*d_U$ the ghost operator. The infrared regulator of mass $\mu=1/L$ stands in for the block-spin constraint. $D$ does not depend on $L$. The error $e_i$ decays exponentially in $n_i$, at an $L$-dependent rate.

*Status:* theorem, for all odd $L\ge1$: the minimal block factor produced is $1$.
*Lean:* [`pouring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L17-L52) (proves [`Fluent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L115), i.e. [`HorizCalc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L20-L23) for all parameters), [`PoleTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/AuxReferences.lean#L138), [`fineMag`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/AuxReferences.lean#L46), [`rankAux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/AuxReferences.lean#L45), [`grenade`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Regulator.lean#L338), [`Gauge.slopeConstant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184).

**Proposition III.7.4 (one renormalization step of the leading part).** Fix a simple $G$, kernel parameters $K$ (penalty $a>0$), a stage $J$, and constants $\varepsilon,w,\delta>0$ and $D,Z,C,Z'\ge0$ for the fine and coarse beds and clips. There are $A_*\ge0$ and $s>0$ (output amplitude and width) such that, for every input width $\tau>0$ and amplitude $A\ge0$, there are:

- $d\ge0$ (the drift) and $\gamma>0$ (a rate);
- a minimal block factor $u$;
- functions $\Theta_0(L)$ and $\Lambda_0(L)$,

with the following property.

*Hypotheses.*

- *Steps.* Coarse sides $m_i\to\infty$; block-spin steps $\Lambda_{Lm_i}\to\Lambda_{m_i}$ with one admissible patch of stage $J$ and block factor $L\ge u$, and kernel $K$; each coarse side is greater than $1$, and each fine side is at least $100$ times the patch extent.
- *Clips and beds.*
  - A fine clip $\mathbf p$ with $p_{\rm dir}\le Z$ and a coarse clip $\mathbf q$ with $q_{\rm dir}\le Z'$.
  - A fine bed $B$ with $H,\rho\in\mathrm{strip}(w,D)$, $\mathrm{Floor}(B,\mathbf p,n;\varepsilon,D)$ for every $n$, and signed-permutation-invariant gauge form on the fine tori.
  - A coarse bed $T$ with $H_T,\rho_T\in\mathrm{strip}(\delta,C)$, $\mathrm{Floor}(T,\mathbf q,n;\varepsilon',C)$ for every $n$ and some $\varepsilon'\in\mathbb R$, and signed-permutation-invariant gauge form on the coarse tori.
  - A tower with interpolation kernel $A_0$, satisfying the quadratic-form interpolation, curl-transport and diagonal-transport identities of III.1 on each step. For every list $\nu$ of at most two fine-coordinate differences, $\nabla^\nu A_0$ has strip width $w$ and entrywise weighted sum at most $D/L^{1+|\nu|}$.
- *Fine datum.* $R\in\mathrm{Bounds}(\mathbf p;\tau,A,\Lambda)$ attached to $B$, with $\Lambda\ge1$.
- *Stationary branches.* A common $\eta>0$ and, for each $i$, an axial forest $F_i$ and a branch $g_i$ (coarse fields $\to$ free fine variables) such that:
  - for every choice of block-kernel data, the second variation in the free variables at $(0,0)$ is at least $\eta\sum_e|v_e|^2$;
  - $g_i(0)=0$, $g_i$ and the fine action are real-analytic at $0$, and $g_i$ is stationary for every choice of block-kernel data;
  - on every free edge, $Dg_i(0)v$ is the free interpolant in the chosen axial gauge minus the derivative of the copied coarse configuration;
  - the second jet of the tree-level coarse action is the quadratic form of $T$.
- *Chart.* A local Haar chart ratio $\mathsf J$.

*Conclusion.* There are a coarse path datum $Y$ and $\alpha\in\mathbb R$ such that:

1. the rows of $Y$ are the straight-route rows of $T$, and $Y$ is attached to $T$;
2. $Y\in\mathrm{Bounds}(\mathbf q;\eta',A',\Lambda')$ whenever $0<\eta'\le s$, $A'\ge A_*$ and $\Lambda'\ge\max(\Lambda_0(L),\Lambda/2)$;
3. $|\alpha+\kappa\log L|+1\le d$;
4. *classical match:* for every $i$, every choice $t$ of block-kernel data and every $j\le4$, the $j$-th jets at $0$ of
$$x\mapsto S_t(x,g_i(x))\quad\text{and}\quad x\mapsto\mathrm{main}_{\mathbf q,Y}(e^x)$$
coincide. Here $S_t(x,z)=\mathrm{main}_{\mathbf p,R}(U_{x,z})+a\sum_e\big(1-d_{\rm rep}^{-1}\mathrm{Re}\,\mathrm{tr}(V_e\,\Pi_t(U_{x,z})_e^{-1})\big)$ is the fine leading part plus the block-spin penalty. $U_{x,z}$ is the fine configuration lifted from $V=e^x$ through the forest with free variables $z$, and $\Pi_t$ is the block predictor;

5. *finite bound:* for every $i$, every $\Theta\ge\Theta_0(L)$ and every $c'\le\gamma$, consider the one-loop function
$$\mathrm{th}_{i,t}(x)=\mathrm{loop}_R(U_{x,g_i(x)})+\tfrac12\log\det\mathrm{Hess}_zS_t(x,g_i(x))-\log\textstyle\prod_e\mathsf J(g_i(x)_e).$$
   It is analytic at $0$, the Hessian determinant is positive near $0$, and for all coarse lattice momenta $p,p'$ and real plane waves $w_{p,\xi}(x)=\mathrm{Re}(e^{ip\cdot x}\xi)$ and $w_{p',\zeta}$, with every direction-colour component of $\xi,\zeta$ of modulus at most $1$,
$$\Big|D^2\mathrm{th}_{i,t}(0)[w_{p,\xi},w_{p',\zeta}]-D^2\big(\alpha\,\mathrm{quad}_{\mathbf q,Y}+\mathrm{loop}_Y\big)(0)[w_{p,\xi},w_{p',\zeta}]\Big|\le|\Lambda_{m_i}|\,\Theta\,e^{-c'm_i}.$$
   Here $\mathrm{quad}_{\mathbf q,Y}$ is the signed-permutation average of the Wilson-plaquette and row-square terms in $\mathrm{main}_{\mathbf q,Y}$, with the cubic and quartic atoms omitted. Its Hessian is the coarse quadratic form. The comparison function is also analytic at $0$. The estimate holds for every $t$.

*On the constants.* $A_*$ and $s$ are fixed before $(\tau,A)$. The drift is $d=d_{\rm cmp}+D_{\rm slope}+1$, where $d_{\rm cmp}$ is the comparison constant of §4.8 and $D_{\rm slope}$ is the constant of III.7.3. Both may depend on $(\tau,A)$ but are independent of $L$. The construction gives $\Lambda_0(L)=a_0L^4+b_0\log L+c_0$ and $\Theta_0(L)=b_1L^4$, with nonnegative constants depending on the fixed input parameters; both are $O(L^4)$.

*Iteration.* Fix positive stage widths and lower bounds for the free quadratic forms, stage amplitude bounds, kernel parameters $K$ and clip bounds. The constants are then chosen in the following order:

1. maximal path widths $\sigma_j$ and minimal path amplitudes $A_j$;
2. for each positive sequence $\tau_j\le\sigma_j$ and sequence $A'_j\ge A_j$: drifts $d_j\ge0$, rates $\gamma_j>0$ and minimal block factors $u_j$;
3. for every compatible choice of stage parameters, with direct clip coefficients below their prescribed bounds, drifts at least $d_j$ and block-factor lower bounds at least $u_j$, and then every admissible choice of block factors: volume thresholds and positive Hessian lower bounds $\eta_j$;
4. for every admissible protection sequence $\theta$: entry thresholds $\Delta_j$ for the reference coupling.

For each such choice, take post-step constants $\Gamma_j\ge1$ and $0<c_j\le\gamma_j$ and the Hessian lower bounds $\eta_j$ just chosen. The conclusion holds for every history satisfying the compatibility, size and coupling thresholds of III.2; every free-field horizon satisfying the strip, Floor, symmetry, top-identity, interpolation and three-form coercivity conditions of III.10; every second horizon with the same beds and the same interpolation and curl-transport kernels; and every local Haar chart ratio. For such data there are kinetic data $(\alpha_{N,m},P_{N,m},g_{N,m})$ satisfying all the following conditions:

- every $P_{N,m}$ is attached to its bed and satisfies the level-$m$ clauses with loop amplitude $\mathrm{loopCap}_m$;
- $P_{N,N}$ is the Wilson top datum of III.7.2;
- for every $m<N$, every volume index and every axial forest: the second-variation lower bound $\eta_{J_{m+1}}$, stationarity, the derivative condition and the classical match; also $|\alpha_{N,m}+\kappa\log L_m|+1\le\mathrm{drift}_{m+1}$, and the finite bound with constants $(\Gamma_{J_{m+1}},c_{J_{m+1}})$ at loop amplitude $\mathrm{loopCap}_{m+1}$ and also at amplitude $1$.

*Status:*

- The step and iteration are theorems; their output conditions are the definitions used in III.9.
- [`transition_cap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L92-L182) proves the step property at every stage using III.7.3 for the input constants. [`claiming`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L122-L143), [`under_contract`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L366-L391) and [`geared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L59-L66) iterate it.
- The iteration supplies the one-loop slope internally; its remaining hypotheses are the free-field, history and Haar-chart conditions just listed.
- The coarse-datum construction and induction are also expressed by [`color_pipe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L394-L435), [`energized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L254-L285) and [`plowed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L307-L335), together with the preceding step theorem.

*Lean:* [`Transition`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L86-L90), [`Scud`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L26-L38), [`Hull`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L25), [`Bubble`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L170-L177), [`FullPaths`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L301-L305), [`Kin.Planned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L93-L115), [`ClassicalMatch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L108-L109), [`tested`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L81-L84), [`thermal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L46-L49), [`FiniteBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L62-L71), [`draft`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L51).

**Proposition III.7.5 (uniform inverse of the completed free operator).** Let $j$ be a stage, $K$ kernel parameters, $\sigma,\varepsilon>0$ and $\Omega\ge0$. There is $\eta>0$, and for every block factor $L$ a constant $A_L\ge0$, with the following property.

For every admissible patch of stage $j$ and block factor $L$, and every bed $B$ with $H\in\mathrm{strip}(\sigma/L,\Omega)$ and $\mathrm{Floor}(B,\mathbf c,n;\varepsilon,D)$ for all $n$:

- the inverse $\mathcal G_B$ of the block-Bloch symbol of the completed free operator lies in $\mathrm{strip}(\eta,A_L)$ on the coarse lattice;
- for every step with this patch (any coarse side $c$, fine side $cL$, any choice of block-kernel data), $\mathcal C_B\,\mathcal G_B=1$.

In the rooted coordinates, the joint variables are a fine link field $v$ and a coarse site field $h$. Before gauge completion, the quadratic form is
$$\langle dv,H\,dv\rangle+a\|{-}Qv+d_ch\|^2,$$
where $Q$ is the linear block average and $d_c$ the coarse gradient. The completed operator adds $F_{1/L}^{\mathsf T}F_{1/L}$, where $F_\mu=d_{\!1}^*P_f+\mathfrak m_\mu X$, $P_f$ projects onto fine links, and $X$ is minus the derivative of the logarithm of the fine rooted frame. Here $d_{\!1}$ is $d_U$ at $U=1$. All matrices use physical counting bases. The decay rate $\eta$ is uniform in $L$; only the amplitude depends on $L$.

*Status:* theorem; used in III.4.
*Lean:* [`WilsonBulk.uniform_backing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Backing.lean#L54-L66), [`completedM`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Backing.lean#L18-L20), [`jointInverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Backing.lean#L22-L23).

**Proposition III.7.6 (Faddeev–Popov identity for the one-loop term).** Fix an admissible step, a clip $\mathbf p$ and a datum $R\in\mathrm{Bounds}(\mathbf p;\sigma,A,\Lambda)$ for some $\sigma>0$ and $A,\Lambda\in\mathbb R$. Let $g(0)=0$ be a real-analytic stationary branch for an axial forest, stationary for every choice of block-kernel data, with second variation $\ge\eta\sum_e|v_e|^2$ ($\eta>0$). Let $\mu>0$, let $t$ be a choice of block-kernel data, and let $\mathsf J$ be a local Haar chart ratio. Then for coarse fields $x$ near $0$:

- the completed Hessian $\mathcal P_\mu(x)$ has positive determinant;
- $\mathrm{th}(x)=\mathrm{loop}_R(U_{x,g(x)})+\tfrac12\log\det\mathcal P_\mu(x)-\log\det\mathcal G_\mu(x)$.

$\mathcal P_\mu(x)$ acts on all fine-link and coarse-frame directions. It is the Hessian in left exponential coordinates of the joint action
$$\mathscr S_t(V;U,h)=\mathrm{main}_{\mathbf p,R}(U)+a\sum_e\Big(1-d_{\rm rep}^{-1}\mathrm{Re}\,\mathrm{tr}\big(V_e[\mathrm{gauge}_h\Pi_t(U)]_e^{-1}\big)\Big),$$
at $V=e^x$ and the lifted joint stationary configuration, plus $F_\mu^{\mathsf T}F_\mu$. Here $F_\mu=d_U^*P_f+\mathfrak m_\mu(U)X$, with the rooted-frame derivative $X$ as in III.7.5. The joint stationary configuration combines the lifted fine field $U_{x,g(x)}$ with its coarse frame. $\mathcal G_\mu=d_U^*d_U+\mathfrak m_\mu(U)$ is the ghost operator at the lifted configuration. The underlying algebraic identity is
$$T^2\det\mathcal P_\mu=\det M\,(\det\mathcal G_\mu)^2,$$
with $M$ the axial Hessian and $T$ the Haar Jacobian of the chart.

*Status:* theorem; used in the renormalization and remainder comparisons of III.4, III.2 and VII.2.
*Lean:* [`tribute`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L177-L202), [`bounty`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L166-L167), [`medals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Completion.lean#L59-L60).

<a id="unit-inputs"></a>

## 2. What it uses

- **I.1 (gauge groups, Wilson action).** $E_W$, the exponential chart, $\mathrm{Ad}$, the Casimir $C_G$, and $\kappa$ with $\kappa>0$ ([`slopeConstant_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176), [`casimir`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182)). Simplicity enters as $\mathrm{tr}(\mathrm{ad}_b\mathrm{ad}_b)=-C_G$ for every unit vector $b$, and through Schur's lemma.
- **III.1 (block-spin step).** The specifications of III.7.1. Also: steps, patches (block factor $L$, stage $J$), axial forests (tree gauge), the fine action plus block penalty, and the stationarity notions (stationarity, second-variation lower bound, derivative condition, equality of jets, classical match). Further: the one-loop function, the finite bound, the kinetic data and the iteration conditions, towers, horizons, and local Haar chart ratios.
- **III.6 (stationary branch).** For every admissible step there is a Hessian lower bound $\eta_j>0$ (chosen after $L$) such that every admissible fine datum has a stationary branch with:
  - second variation $\ge\eta_j$;
  - derivative given by the free interpolation in the chosen axial gauge, after subtracting the copied coarse field;
  - quadratic part equal to the coarse bed.

  This is [`Integrated.stationary_scene`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L229-L232), packaged here by [`scene_gate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L58-L61). Also from III.6: positivity of the Hessian near $0$ ([`hessian_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Graphs.lean#L75-L79)) and independence of the one-loop function from the forest ([`same_thermal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05.lean#L42-L57)).

- **III.10 (conditions on beds and steps).**
  - [`Bid.Sworn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55): signed-permutation invariance of the bed's gauge form.
  - [`Bid.HeatG`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L83-L84): quadratic jet of the tree-level action.
  - [`Bid.Larger`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L64): size of the torus.
  - [`Craft.Rack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L63-L73) and [`Bid.Retained`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L104-L105): uniform strip and Floor bounds, symmetry and three-form coercivity for the free-field horizon; and equality of the beds and the two interpolation kernels for the second horizon.
  - [`Bid.one_for_all`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Scope.lean#L35-L43): the classical match does not depend on the forest.
- **III.2 (order of constants).** The admissible stage parameters, block factors, protection exponents, entry and volume thresholds, and the history compatibility conditions [`Supply.Paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162), free-field bounds and constants chosen after the block factors. Also the reference coupling [`β̂_m`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79) $=\bar\beta+\kappa s_m$ and the loop cap [`loopCap_m`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L86) $=2\exp\big(\theta_{J_m}(\log\log\hat\beta_m)^2\big)$.
- **II.1.** The local Haar chart ratio of the exponential chart ([`chart_ok`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L84)), used in the iteration.
- **III.16, III.3.** Laurent/Bloch calculus on strips (products, inverses, Cauchy estimates, Riemann sums versus integrals); the block-Bloch ("slab") representation of fine translation-invariant operators on the coarse lattice.
- **Standard mathematics.**
  - Taylor expansion of the plaquette action; polarization (a jet is determined by its restrictions to lines).
  - The Koszul complex of the regular sequence $q_j(p)=e^{ip_j}-1$ with Hadamard division in a strip, i.e. the lattice Poincaré lemma in momentum space.
  - Schur's lemma for invariant forms on a simple Lie algebra.
  - The Faddeev–Popov procedure.
  - The background-field method ('t Hooft and Abbott; Peskin–Schroeder, §16.6).
  - The one-loop $\beta$-function (Gross–Wilczek and Politzer) and its orbital/spin split $-\tfrac{11}3=\tfrac13-4$.
  - Balaban's propagator bounds and background-field renormalization group; see also Dimock, *The renormalization group according to Balaban*.
  - Rotation-invariant integrals over shells in $\mathbb R^4$.
- **Imported constants and assumptions.** No one-loop coefficient is assumed. $\kappa$ is defined in I.1, and III.7.3 proves that it is the one-loop slope. The hypotheses carried are those displayed in the propositions; the free-field and history assumptions are supplied by III.4.

<a id="unit-strategy"></a>

## 3. Strategy

**Classical part.** At every level the quadratic part of the leading action is fixed by the free-field bed of that level. The cubic and quartic parts are curvature atoms, determined by Taylor agreement through order four with a given gauge-invariant function $E$. At the top, $E$ is the Wilson energy. At each step, $E$ is the tree-level coarse action $x\mapsto S_t(x,g(x))$. The atom-emission lemma (§4.3, Lemma 4.4) serves both cases. Its mechanism has four parts:

1. The Taylor coefficients of a translation sum of local analytic functionals have Fourier kernels on $\mathbb Z^4$ that are strip-analytic. Finite-volume coefficients agree with $|\Lambda_n|$ times these kernels up to $o(|\Lambda_n|)$ along any sequence of sides; this is how volume-uniformity enters.
2. Gauge invariance makes the kernels transversal in each leg (linearized Ward identity).
3. Transversal kernels with at least three legs factor through the curvature. This is the lattice Poincaré lemma, proved by contracting the Koszul complex of the differences $e^{ip_j}-1$, one axis at a time, with Hadamard division. A one-leg solve reduces the width from $\sigma$ to $\sigma/4$ once, regardless of the four coordinate divisions within it. Successive leg solves cause further width losses, depending only on the fixed number of legs.
4. The real, colour-invariant Laurent coefficients of the factored kernels are the coefficients of atoms, and exponential decay is the strip bound.

**One-loop part.**

1. In the axial chart the one-loop term is $\mathrm{loop}+\tfrac12\log\det-\log(\text{Haar Jacobian})$. An exact Faddeev–Popov identity turns it into $\tfrac12\log\det$ of a covariantly completed Hessian minus $\log\det$ of a ghost operator.
2. Its second-order Taylor coefficient is a two-leg kernel. Its $F^2$-coefficient $\alpha$ is compared, with an $L$-independent error, to that of the regulated Feynman-gauge background-field determinant on the fine lattice.
3. The latter is computed. The lattice integrand is the continuum bubble integrand $h(k)$ of the vector loop (weight $\tfrac12$) and the ghost loop (weight $-1$), up to errors $O(|k|^{-3}+\mu^2|k|^{-6})$; its angular average is $-\tfrac{11}3C_G|k|^{-4}$. Integration over the shell $1/L<|k|\le1$ gives $-\kappa\log L$, and the rest is bounded by absolute values.
4. After subtracting $\alpha$ times the bed's quadratic kernel, the remaining kernel vanishes to fourth order at zero momentum. It is therefore represented by loop atoms satisfying the two moment conditions, i.e. by irrelevant terms. Inherited fine loop atoms contribute with a factor $L^{-2}$.

**Constants.** The output width and cubic/quartic amplitude of a step are fixed before the input amplitude. The input enters the output only with factors $L^{-1}$ or $L^{-2}$, which a large $L$ makes small. The strip widths and inverse bounds for the completed operators are uniform in $L$ in block-scaled norms. The newly generated loop-atom amplitude is $O(L^4)$. It is absorbed by $\mathrm{loopCap}_m$, which grows with $\hat\beta_m$.

**Relation to Balaban.** The construction uses background-field renormalization with block-spin constraints. Here:

- the effective action is carried by explicit, exponentially weighted path data;
- the $F^2$-coefficient is obtained by comparison with a regulated covariant determinant plus a Fourier computation, with $O(1)$ error, for an arbitrary simple compact gauge group.

<a id="unit-steps"></a>

## 4. Steps

### 4.1 Fourier kernels of local functionals

**Lemma 4.1 (translation sums of local functionals; limits of kernels).**
(a) Let $F_k$ be functions of configurations on $\mathbb Z^4$. Suppose $F_k$ depends only on links in a box of size $d_k$, has a holomorphic extension with bound $w_k$ on a polydisc of radius $r$ around the identity, uniformly after translation and periodic restriction, and $\sum_kw_k\exp(4(t+1)^2\sigma d_k)\le A$, with $r,\sigma>0$ and $w_k\ge0$. Then for every side $n$ the translation sum on $\Lambda_n$ is analytic at $1$. Its $(t{+}1)$-th Taylor coefficient is recorded *exactly* by a kernel that is strip-analytic of width $\sigma$ and size $A\,c(t,r)$, independent of $n$. For the Wilson energy, kernels of every order exist with width $1$.
(b) Suppose a strip-analytic kernel records $F_i$ on $\Lambda_{n_i}$ with error $|\Lambda_{n_i}|\epsilon_i$, where $n_i\to\infty$ and $\epsilon_i\to0$. If the $F_i$ are analytic, invariant near $0$ under global colour rotations and lattice gauge transformations, and their Taylor coefficients of positive orders $1,\ldots,t$ vanish, then the kernel is transversal in each leg, real and colour invariant.
*Sketch:* (a) Cauchy estimates on the polydisc bound each local Taylor coefficient; its Fourier support has size at most $4(t+1)^2d_k$, which gives the stated exponential factor. (b) Each property holds exactly for the finite-volume coefficients; divide by $|\Lambda_{n_i}|$ and pass to the limit along lattice momenta approaching any prescribed real momenta. Strip analyticity gives the required continuity.
*Lean:* [`gathered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/LocalOracle.lean#L312-L348), [`Wilson_stream`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L312-L326), [`withdrew`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Ward.lean#L647-L697), [`wedlock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Vertex.lean#L371-L379). *(proof read at top level; Ward identity input statement only)*

### 4.2 The lattice Poincaré lemma in momentum space

**Lemma 4.2 (one-leg solve).** Let the momentum space have $d$ scalar coordinates, including four selected coordinates, and let $\delta$ contract differential forms with $q_j(p)=e^{ip_j}-1$ in those four coordinates. Let $\sigma>0$, $A\ge0$, and let $f$ be a form of degree $r\ge0$ with the following properties:

- each component is strip-analytic of width $\sigma$ and size $A$;
- $\delta f=0$;
- $f$ vanishes to order $s$ along rays;
- on real momenta, $f$ takes values in subspaces unchanged when any of the four selected momentum coordinates varies;
- if $r=0$, $f$ vanishes where the projected momentum is $0$.

Then $f=\delta B$, where $B$ has degree $r+1$, is strip-analytic of width $\sigma/4$ and size $4A\,\pi_d(\sigma)$ with $\pi_d(\sigma)=(4/\sigma)\big(2(1+\sigma/4)/(\sigma/4)\big)^d$, vanishes to order $\max(s-1,0)$, and takes values in the same subspaces on real momenta.
*Sketch:* Comb one axis at a time. $f(p)-f(p)|_{p_j=0}=q_j(p)D_j(p)$ by Hadamard division ([`div_var`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Koszul.lean#L88-L128)). $D_j$ has width $\sigma/4$ and size $A\pi_d(\sigma)$ by Cauchy estimates, while the restriction $f|_{p_j=0}$ keeps width $\sigma$. After all four axes, no positive-degree component remains. In degree zero the remainder is $f$ with all selected momenta set to zero, which vanishes by hypothesis. The factor $4$ counts the axes; the width loss is a single one. For positive vanishing order, division by $q_j\sim ip_j$ lowers it by one; order zero remains order zero.
*Lean:* [`wall_lift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Koszul.lean#L571-L587).

**Lemma 4.3 (transversal kernels are curvature kernels; atoms).** For every $t\ge2$ and $\sigma>0$, there are $\eta\in(0,\sigma]$ and $K\ge0$ such that every $(t{+}1)$-leg kernel $f$, strip-analytic of width $\sigma$ and size $A\ge0$ and transversal in each leg, admits the factorization
$$f(p)=\sum_b\prod_i\hat s(p_i)_{b_ia_i}\,g_b(p),$$
for real momenta, where $\hat s$ is the symbol of the lattice curl and $g$ is a plaquette kernel, strip-analytic of width $\eta$ and size $AK$, with $\eta,K$ depending on $t,\sigma$. If $f$ is also real and colour invariant, the Laurent coefficients of $g$ can be taken real, colour invariant and exponentially decaying. Placed on straight routes, they define atoms. If $f$ records an analytic functional invariant under signed permutations, the signed-permutation average of their translation sum reproduces that Taylor coefficient up to the recording error.
*Sketch:* Solve the dependent-momentum leg first, then the independent legs by Lemma 4.2, preserving the subspace constraints from the earlier solves. Symmetrize by conjugate reflection to obtain real Laurent coefficients and project the colour tensors onto the invariant subspace.
*Lean:* [`allleg`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/ManyLegs.lean#L533-L549), [`strokes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Pathways.lean#L193-L201), [`colors_align`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Ward.lean#L192-L216). *(proof read at top level)*

### 4.3 Classical emission and the Wilson jet

**Lemma 4.4 (emission of cubic and quartic atoms).** Let $\sigma,\sigma_0>0$ and $A,Z\ge0$. There are $\tau\in(0,\sigma]$ and $C\ge0$ with the following property.

*Hypotheses:*

- sides $n_i\to\infty$;
- a bed $B$ with $\rho\in\mathrm{strip}(\sigma_0,A)$ and Floor on the one-site torus, and a clip with $c_{\rm dir}\le Z$;
- real-analytic functions $E_i$ of link fields on $\Lambda_{n_i}$, invariant near $0$ under lattice gauge transformations, global colour rotations and signed permutations, such that $E_i$ minus the bare row action of $B$ vanishes to order $3$ along rays; the bare row action has the straight-route rows of $\rho$ and no atoms;
- $M\ge1$ such that the Taylor coefficients of orders $3$ and $4$ of $E_i$ are recorded exactly by kernels strip-analytic of width $\sigma$ and size $M$.

*Conclusion:* there are invariant cubic atoms $X$ and quartic atoms $V$ with sums of exponential weights at most $MC$ at width $\tau$ such that, for every choice $f$ of loop atoms and every $i$, $x\mapsto E_i(x)-\mathrm{main}_{\mathbf c,(\rho\text{-rows},f,X,V)}(e^x)$ vanishes to order $5$ along rays.
*Sketch:* At order $3$, subtract the full bare row action, whose quadratic jet agrees with that of $E$. The residual kernel is transversal (Lemma 4.1(b)) and is matched by cubic atoms (Lemma 4.3). At order $4$, subtract the same bare row action and the cubic atoms; the remainder is transversal and is matched by quartic atoms.
*Lean:* [`assembly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L561-L595).

**Lemma 4.5 (proof of III.7.2).**

1. Take $E_i=E_W$ on $\Lambda_{n_i}$. The kernels of orders $3$ and $4$ come from Lemma 4.1(a).
2. Under $D=1$, Floor and invariance, $H$ agrees with the identity on exact 2-forms. Hence $E_W$ minus the quadratic term of the bare datum (rows of $\rho$, no atoms) vanishes to order $3$ ([`top_Wilson`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L441-L471)).
3. Lemma 4.4 gives $X,V$, and $Q$ is formed from the rows of $\rho$, zero loop atoms, $X$ and $V$.
4. Order-$5$ vanishing along every ray of the difference of two analytic functions gives equality of all derivatives of order $\le4$ ([`matched`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L254-L260)).
5. The weight clauses come from the row prices $6Ae^{4\sigma_0}$, the zero-momentum normalization (Floor on the one-site torus, [`symbol_match`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L214-L258)), and the common atom bound $(1+C_3+C_4)C$, where $C_3,C_4$ bound the Wilson Taylor kernels and $C$ is the emission constant.

*Lean:* [`launch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L270-L305), [`beckon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L101-L105), [`budding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L220-L225).

**Lemma 4.6 (every admissible leading part is Wilson up to irrelevant terms).** Fix $\sigma,\tau>0$, $\varepsilon\in\mathbb R$ and $C,Z,A\ge0$. Let $n_i\to\infty$, $c_{\rm dir}\le Z$, and let $R\in\mathrm{Bounds}(\mathbf c;\tau,A,\Lambda)$ be attached to a bed with $\mathrm{Floor}(B,\mathbf c,n;\varepsilon,C)$ for every $n$, invariant gauge form on each $\Lambda_{n_i}$ and $H\in\mathrm{strip}(\sigma,C)$. Then the Taylor kernels of orders $2$, $3$ and $4$ of $\mathrm{main}_{\mathbf c,R}-E_W$ vanish at zero momentum to orders $3$, $2$ and $1$ respectively. Their strip bounds depend only on $(\sigma,\varepsilon,C,Z,\tau,A)$. In words: all admissible leading parts share the marginal (dimension-four) part of $E_W$.
*Sketch:* $\hat H(0)=1$ makes the quadratic difference vanish to order $3$. Ward identities then force the cubic and quartic differences to vanish to orders $2$ and $1$. Apply the same Ward argument to the invariant cubic and quartic atom sums, whose quadratic jets vanish. These statements concern their full nonlinear Taylor coefficients, including transport and curvature expansions.
*Lean:* [`greyson`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L363-L403), [`veneer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L349-L358), [`extra_curves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/SoftTransfers.lean#L59-L103), [`saunter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L528-L535), [`tideMark`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L41-L54). *(proof read at top level)*

### 4.4 Two-leg kernels: the $F^2$-coefficient and irrelevance

**Lemma 4.7 (a two-leg kernel without $F^2$-term vanishes to fourth order).** Let $G$ be simple. Let $f$ be a two-leg kernel that is strip-analytic, transversal, real, colour invariant, symmetric under exchange of the legs, and invariant under signed permutations. If the $p_q^2$-coefficient of $f_{(b,b),(w,w)}(p)$, for $p$ along an axis $q\neq w$, vanishes for one colour $b$, then $f$ vanishes to order $4$ at zero momentum. Consequently, for every bed with positive metric strip width, $\hat H(0)=1$ and signed-permutation-invariant quadratic form, $f-\alpha_b(f)\,\hat K_B$ vanishes to order $4$, where $\hat K_B$ is the bed's quadratic kernel.
*Sketch:*

- Transversality gives vanishing to order $2$.
- The third-order coefficient is odd under $p\mapsto-p$, hence $0$ by reflection symmetry.
- By transversality, hypercubic symmetry and Schur's lemma, the second-order coefficient is a multiple of $(p^2\delta_{aa'}-p_ap_{a'})\delta_{bb'}$, and the multiple is the given coefficient.
*Lean:* [`TributeColor.vanish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L611-L625), [`subtract_fee`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L710-L727). *(proof read at top level)*

**Lemma 4.8 (loop atoms are irrelevant).** Let $R\in\mathrm{Bounds}(\mathbf c;\sigma,C,\Lambda)$. The two-leg kernel of the loop atoms, symmetrized over legs and lattice symmetries:

- records $\mathrm{loop}_R$ exactly on every torus;
- is strip-analytic of width $\sigma$ and size $\Lambda\,r(\sigma)$;
- vanishes to order $4$ at zero momentum.

*Sketch:* The kernel is $\hat s(-p)^{\mathsf T}\hat K(p)\hat s(p)$ with $\hat K(p)=\sum\mathrm{coeff}\,e^{ip\cdot y}$. Here $\hat s=O(p)$, and the two moment conditions give $\hat K(0)=0$ and $\nabla\hat K(0)=0$.
*Lean:* [`filing_ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L231-L234).

### 4.5 The one-loop term in covariant form

**Lemma 4.9 (proof of III.7.6).** Let $H_{\rm joint}$ be the Hessian of the joint action before gauge completion, and let $\mathsf R$ select its axial directions. Three determinant identities combine:

- the completed Hessian factors as $\det\mathcal P_\mu=(\det\mathcal G_\mu)^2\det(\mathsf R^{\mathsf T}H_{\rm joint}\mathsf R)$ ([`root_determines`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Completion.lean#L491-L502));
- the axial Hessian satisfies $\det M=(\det\partial s)^2\det(\mathsf R^{\mathsf T}H_{\rm joint}\mathsf R)$, where $s$ is the left-trivializing chart change ([`certified`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L140-L161));
- the Haar Jacobian is $T=|\det\partial s|$ ([`treasury`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L63-L114), by comparison of densities on compact sets).

Together they give $T^2\det\mathcal P_\mu=\det M(\det\mathcal G_\mu)^2$. $\det M>0$ by the second-variation lower bound and $\det\mathcal G_\mu>0$ since $\mathcal G_\mu\ge\mathfrak m_\mu>0$; take logarithms.

In addition, the one-loop function is analytic at $0$ ([`born`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L76-L103)), and a finite bound proved for one forest transfers to any other ([`transfer_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L105-L113)).
*Lean:* [`tribute`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L177-L202). *(proof read; determinant factorization inputs statement only)*

### 4.6 Uniform invertibility of the fluctuation operators

**Lemma 4.10 (real stability and complex invertibility).** Fix a stage $j$, a penalty $a>0$, a lower bound $\varepsilon>0$ and a bound $A_F\ge0$ for the gauge-completing map $F$. Let
$$\mathcal C_F(p)=\mathcal Q_B(p)+F(-p)^{\mathsf T}F(p),$$
where $\mathcal Q_B$ is the block-Bloch symbol of the joint quadratic form in III.7.5. Suppose $B$ has metric strip bound $(\sigma/L,\Omega)$ and Floor lower bound $\varepsilon$ on every torus, and $F$ is holomorphic and periodic in width $\sigma>0$, with block-scaled norm at most $A_F$. On real momenta require
$$F(p)R_{\rm gauge}(p)=\mathcal G_{1/L}(p),\qquad F(-p)^{\mathsf T}=F(p)^*,$$
where $R_{\rm gauge}$ inserts a fine gauge direction into the joint variables and $\mathcal G_{1/L}$ is the free regulated ghost symbol.

(a) There is $y>0$, depending only on $(G,j,a,A_F,\varepsilon)$, such that $\|\mathcal C_F(p)v\|\ge y\|v\|$ in the block-scaled coordinates for every real $p$, every $L$ and every patch of stage $j$.

(b) If $0<\sigma\le1$, $\Omega\ge0$, the patch is admissible, and $F$ represents the rooted gauge-completing map on a sequence of tori with coarse sides tending to infinity, then there are $\eta\in(0,\sigma]$ and $C\ge0$, depending only on $(G,j,K,\varepsilon,\sigma,\Omega,A_F)$, such that $\mathcal C_F^{-1}$ is holomorphic in width $\eta$ and has block-scaled norm at most $C$, uniformly in $L$.

*Sketch:* The real estimate controls the quotient by gauge directions using the quadratic form and block penalty; the displayed identity controls the remaining gauge directions. Strip bounds give a uniform perturbation estimate from real to nearby complex momenta. Choose the width so that this perturbation is smaller than the real lower bound.

*Lean:* [`stadium`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/RealGap.lean#L647-L664), [`post_cert`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/ComplexGap.lean#L330-L353). *(proof read at top level; real quotient and strip perturbation estimates not expanded)*

**Lemma 4.11 (all five operators).** Fix the numerical parameters of III.7.4. There are $0<\eta\le w_0\le\min(w,\delta,1/128)$ and $C\ge0$, depending only on the free-field bounds, $G,K$ and $J$, with the following property. Under the geometric, fine-bed, fine-datum and interpolation hypotheses of III.7.4, form the actual fluctuation symbols using the free interpolation $A_0$ and the block predictor. At zero background, the following five operators are invertible in width $\eta$, with inverse norm at most $C$ in their respective block-scaled coordinates, uniformly in $L$ and in the input path width, cubic/quartic amplitude and loop amplitude:

- the auxiliary operator;
- its block-aliased copy;
- the completed Hessian;
- the completed Hessian without the contact term;
- the ghost operator.

The unaliased free auxiliary operator and the free regulated ghost operator satisfy corresponding inverse bounds.
*Sketch:* Bound the fine auxiliary and ghost inverses directly in Fourier space and transfer the auxiliary bound to its aliased copy. Apply Lemma 4.10 to the joint completion, then use finite-volume compatibility for the completed and contact-removed symbols. Take minima of widths and maxima of constants.
*Lean:* [`honored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L25-L68), [`GrantF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L15-L22), [`completion_choice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Joint.lean#L44-L69). *(proof read at top level)*

**Lemma 4.12 (proof of III.7.5).**

1. Choose $(\eta,C)$ by Lemma 4.10(b) for the regulator family of the completed operator.
2. For each $L$, a constant $W(L)$ converts block-scaled norms into the plain strip norm.
3. The bound on the inverse gives the strip bound $(\eta/2,\ \mathrm{cost}(\eta,CW(L)))$.
4. The inverse Fourier coefficients are real by finite-volume compatibility. On every torus their Fourier multiplier is the inverse symbol, which gives the matrix identity.

*Lean:* [`uniform_backing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Backing.lean#L54-L66).

### 4.7 The slope of the regulated determinant

**Lemma 4.13 (the continuum bubble).** Assume $G$ is simple. Take an external field of colour $b$, polarization $e_1$ and momentum $t\,e_0$, and loop momentum $k\neq0$.

- The vector bubble has orbital vertex $-2ik_1$ and spin vertex $\pm2it$ in the $(0,1)$ plane.
- Both bubbles carry the colour trace $\mathrm{tr}(\mathrm{ad}_b^2)=-C_G$, which uses simplicity.
- The propagators are $|k|^{-2}$ and $|k+te_0|^{-2}$.

Writing $c_{\rm gh}(t)$ for the ghost bubble and $c_{\rm vec}(t)$ for the vector bubble,
$$\partial_t^2c_{\rm gh}(0)-\tfrac12\,\partial_t^2c_{\rm vec}(0)=2h(k),\qquad h(k)=4C_G\Big(\frac{k_1^2}{|k|^6}-\frac{4k_1^2k_0^2}{|k|^8}-\frac1{|k|^4}\Big).$$
The terms in $k_1^2$ come from the orbital coupling: one adjoint scalar's worth, $\tfrac12\cdot4$ vector components minus one ghost. The term $-|k|^{-4}$ comes from the spin coupling of the vector field.
*Lean:* [`haloRate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L127-L141), [`poleVec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L125).

**Lemma 4.14 (the shell integral).** For $0<\mu\le1$,
$$\frac1{(2\pi)^4}\int_{\mu<|k|\le1}h(k)\,d^4k=-\kappa\log\mu^{-1}.$$
*Sketch:* By rotation invariance $\int k_1^2|k|^{-6}=\tfrac14\int|k|^{-4}$, and $\int k_1^2k_0^2|k|^{-8}=\tfrac1{24}\int|k|^{-4}$, the latter from averaging over $e_i\pm e_j$. Also $\int_{\mu<|k|\le1}|k|^{-4}=2\pi^2\log\mu^{-1}$. So $h$ averages to $4C_G(\tfrac14-\tfrac16-1)|k|^{-4}=-\tfrac{11}3C_G|k|^{-4}$: orbital $+\tfrac13C_G$, spin $-4C_G$. Finally $\tfrac{11}3C_G\cdot2\pi^2/(2\pi)^4=\kappa$.
*Lean:* [`poleSpin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L326-L338), [`joy_two`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L270-L275), [`joy_heights`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L292-L304), [`polar_m`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L200-L202).

**Lemma 4.15 (the lattice integrand is close to $h$).** Under the hypotheses of III.7.3, let $\Phi_\mu$ be the unintegrated second-derivative kernel of $\Pi_\mu$, built from the vertex kernels of Lemma 4.6:
$$\Phi_\mu=\tfrac12\,(\text{vector film})-(\text{ghost film}).$$
Let $k_b(k)=\tfrac12\partial_s^2\Phi_{\mu,(1,b),(1,b)}(s\,e_0;k)|_{s=0}$ be its integrand at loop momentum $k$. The recorded quadratic Taylor kernel is
$$\hat Y_\mu=\frac1{2(2\pi)^4}\int_{[-\pi,\pi]^4}\Phi_\mu(\,\cdot\,;k)\,d^4k,$$
and $\alpha_b(\hat Y_\mu)=(2\pi)^{-4}\int_{[-\pi,\pi]^4}\mathrm{Re}\,k_b(k)\,d^4k$. There are $a,b'\ge0$, uniform over all data of III.7.3 and all $\mu\in(0,1]$, such that:
$$|k_b(k)|\le\frac{a}{(|k|+\mu)^4}\ \text{on the Brillouin cube},\qquad |k_b(k)-h(k)|\le b'\big(|k|^{-3}+\mu^2|k|^{-6}\big)\ \text{for }|k|\ge\mu.$$
*Sketch:* Each film is (tadpole) $-$ (bubble). The tadpoles are $O(|k|^{-2}+\mu^2|k|^{-6})$. The lattice bubbles differ from the continuum ones by $O(|k|^{-3}+\mu^2|k|^{-6})$, using the softness of Lemma 4.6. Lemma 4.13 identifies the continuum combination.
*Lean:* [`astronomy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L278-L292), [`Rally.coin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L179-L184), [`Rally.shell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L191-L222), [`polar_clock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L136-L159), [`amena`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L333). *(proof read at top level; analytic tadpole and bubble estimates not expanded)*

**Lemma 4.16 (from the bounds to the slope).** For $0<\mu\le1$, under the strip regularity and two bounds of Lemma 4.15 with $a,b'\ge0$,
$$\big|\alpha_b+\kappa\log\mu^{-1}\big|\le(2\pi)^{-4}\big(a\tfrac{\pi^2}2+a(2\pi)^4+3\pi^2b'\big).$$
*Sketch:* Split the cube into three regions.

- On $|k|\le\mu$: the integrand is $\le a\mu^{-4}$ and the volume is $\pi^2\mu^4/2$.
- On the shell: compare with $h$ and use Lemma 4.14; the error is $\int b'(|k|^{-3}+\mu^2|k|^{-6})\le3\pi^2b'$.
- On $|k|>1$: the integrand is $\le a$.

*Lean:* [`absoluteGeode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L346-L408).

**Lemma 4.17 (proof of III.7.3).**

1. Lemma 4.6 and Lemma 4.1 give the vertex kernels of $\mathrm{main}_{\mathbf c,R}=E_W+(\mathrm{main}-E_W)$.
2. The film $\Phi_{1/L}$ represents $\Pi_{1/L}$ ([`gemF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L356-L363)). For fixed $L$ it is strip-analytic, since the vector and ghost symbols are invertible at real momenta, by Floor and the regulator, and hence in a strip ([`HouseWord.done`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L451-L456)).
3. One half of the normalized loop-momentum integral of the second-derivative film is the Taylor kernel $\hat Y$. Comparing the torus Riemann sum with the integral gives an error $|\Lambda_{n_i}|K_Le^{-z_Ln_i/4}$ ([`profit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Fourier.lean#L454-L482)).
4. Lemmas 4.15–4.16 with $\mu=1/L$ give (b), with $D=(2\pi)^{-4}(\dots)$ independent of $L$.

*Lean:* [`pouring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L17-L52).

### 4.8 From the regulated determinant to the blocked determinant

**Lemma 4.18 (comparison of $F^2$-coefficients).** Assume $G$ is simple and the hypotheses of III.7.4, together with the interpolation, vertex and inverse bounds of Lemma 4.11. Consider the two-leg films of:

- the medal film: $\tfrac12\log\det$ of the completed Hessian minus $\log\det$ of the ghost operator, with regulator $1/L$;
- the core film: the same with the contact term removed;
- the auxiliary film: built from the block-aliased auxiliary operator.

Then:

- the medal film is strip-analytic of width $\eta/2$ and size $L^4a$;
- one half of its normalized loop-momentum integral records the determinant part of the one-loop function along the branch on $\Lambda_{m_j}$, with error $|\Lambda_{m_j}|\,c_Le^{-\eta m_j/8}$;
- $|\alpha_b(\text{medal})-\alpha_b(\text{auxiliary})|\le d_{\rm cmp}$, with $d_{\rm cmp}$ depending on the stage and vertex bounds, including the input width and amplitude, but not on $L$.

*Sketch:*

- For the contact contribution, the tested diagonal entry of the integrated kernel vanishes to order $3$ along the external momentum ray. Hence $\alpha(\text{medal})=\alpha(\text{core})$ ([`drift_tip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L789-L818)).
- The difference core $-$ auxiliary is strip-analytic with an $L$-independent bound. Cauchy estimates bound its $F^2$-coefficient ([`boundedTip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L24-L41)).

*Lean:* [`quoting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L67-L96), [`medalCue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L84), [`coreCue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L86), [`rankCue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L85). *(proof read at top level; contact identities not expanded)*

**Lemma 4.19 (aliasing preserves $\alpha$).** Under the hypotheses of Lemma 4.18, the $F^2$-coefficient of the auxiliary film on the coarse lattice equals $\alpha_b(\hat Y)$, where $\hat Y$ is the kernel of III.7.3 for $\Pi_{1/L}$ on the fine tori $\Lambda_{Lm_i}$.
*Sketch:* The coarse symbol at momentum $p$ is the sum over the $L^4$ aliases of the fine symbol. The nonzero aliases vanish to order $4$. The zero alias agrees through order two with $L^4L^{-2}$ times the fine kernel at $p/L$. The additional $L^{-2}$ from momentum rescaling gives $L^4L^{-2}L^{-2}=1$, so the $F^2$ coefficient is unchanged.
*Lean:* [`pole_reduced`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L719-L741), [`carry_plan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L255-L278), [`fine_alpha`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L670-L705). *(proof read at top level; high-alias and zero-alias estimates statement only)*

### 4.9 The step and the iteration

**Lemma 4.20 (construction of the coarse datum).** Assume the geometric, bed, Haar-chart and stationary-branch hypotheses of III.7.4. Fix a common Fourier width $\sigma>0$, coarse-bed width $w>0$, coarse metric and root bound $M\ge0$, and a bound on the coarse direct clip coefficient. Require $H_T,\rho_T\in\mathrm{strip}(w,M)$. There are $s\in(0,\min(\sigma,w)]$ and $K,D\ge0$, independent of the following kernel amplitudes, with this property.

Suppose the tree-level action has exact Taylor kernels of orders $3$ and $4$, of width $\sigma$ and size $X\ge1$. Suppose a two-leg kernel $\hat A$ of width $\sigma$ and size $\Phi$ records the determinant part with errors $|\Lambda_{m_i}|e_i$, where $e_i\ge0$ and $e_i\to0$. Suppose a two-leg kernel $\hat L$ of the same width and size $R_0$ records the inherited loop functional exactly and vanishes to order $4$ at zero momentum. Set $\alpha=\alpha_b(\hat A)$ for one fixed colour $b$.

There is a coarse datum $Y$, with the straight-route rows of $T$ and attached to $T$, whose classical jets agree through order four. It satisfies the weight clauses at every $0<s'\le s$, every row/cubic/quartic bound
$$A'\ge\max\{6Me^{4w},XK\},$$
and every loop bound
$$\Lambda'\ge\big(\Phi+|\alpha|C_T+R_0\big)D,$$
where $C_T$ is the uniform strip bound for the quadratic kernel of $T$ at width $\min(\sigma,w)$.

For every $i,\Theta,c',\Omega$, the finite bound of III.7.4 holds with right-hand side $|\Lambda_{m_i}|\Theta\Omega e^{-c'm_i}$ whenever $B_Ge_i\le\Theta\Omega e^{-c'm_i}$, where $B_G=2(4\dim\mathfrak g)^2$.

*Sketch:*

- Apply Lemma 4.4 to the tree-level action. Its quadratic jet agrees with the bare row action by the stationary-branch hypotheses.
- The determinant and inherited-loop functionals are analytic and invariant under gauge, colour and signed-permutation symmetries. Their recorded kernels inherit these properties. Thus $\hat A-\alpha\hat K_T+\hat L$ vanishes to order $4$ by Lemma 4.7 and the hypothesis on $\hat L$.
- Represent this residual kernel by two-leg curvature atoms with zero zeroth and first displacement moments ([`reach_symbol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L122-L159)). The weighted Laurent bound gives the stated loop amplitude.
- The Faddeev–Popov identity converts the determinant recording error to the error for the one-loop function. Expanding real waves into complex basis waves gives the factor $B_G$ ([`draft_pipe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L281-L324)). Classical jet equality follows from order-$5$ ray vanishing ([`achieved`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L377-L386), [`violet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L343-L376)).

*Lean:* [`color_pipe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L394-L435). *(proof read at top level)*

**Lemma 4.21 (proof of III.7.4).**

- *Coercivity.* Lemma 4.11 at widths $\min(w,\delta)$.
- *Tree-level vertices.* Cubic and quartic vertex bounds have the form $a+L^{-1}\ell$ and $c+L^{-1}r$ ([`setWest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/VertexWeights.lean#L357-L382)). By [`exchangeYield`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Exchange.lean#L407-L415), the order-$3$ and order-$4$ kernels of the tree-level action, the latter including the one-propagator exchange of two cubic vertices, are bounded by
$$M=1+\tfrac{a+1}6+\tfrac{(c+1)+3(a+1)^2E}{24}.$$
  Here $E$ bounds the completed free inverse. The term $3(a+1)^2E$ bounds the three pairings of two cubic vertices joined by one propagator.

- *Inherited loops.* The inherited loop kernel has size $L^{-2}\Lambda C_0$ ([`bequest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L66-L92)).
- *The slope.* Lemma 4.18 and Lemma 4.19 give $\alpha=\alpha_b(\text{medal film})$ with $|\alpha+\kappa\log L|\le d_{\rm cmp}+D_{\rm slope}$.
- *Assembly.* Lemma 4.20 builds $Y$.
- *Choice of $L$.* $L\ge u$ is chosen so that $L^{-1}$ times the input-dependent constants lies below the output thresholds, and $L^{-2}C_0D_{\rm lift}\le\tfrac14$, where $D_{\rm lift}$ is the loop-representation constant of Lemma 4.20 ([`age_control`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L42-L49)). The loop amplitude is the sum of a newly generated term and an inherited term. Their bounds are $\le\Lambda'/2$ and $\le\Lambda'/2$, respectively, when $\Lambda'\ge\Lambda_0(L)$ and $\Lambda'\ge\Lambda/2$ ([`cap_invoice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L74-L80)).

*Lean:* [`transition_cap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L92-L182). *(proof read at top level)*

**Lemma 4.22 (loop caps and the iteration).**

- *Loop caps.* For every $W_j$ there are thresholds $\Delta_j$ such that, once $\hat\beta$ at the entry exceeds them, $W_{J_{m+1}}\le\mathrm{loopCap}_m$, $\mathrm{loopCap}_{m+1}\le2\,\mathrm{loopCap}_m$ and $\mathrm{loopCap}_m\ge1$. The history must satisfy the stage, block-factor and entry conditions of III.2, with positive protection exponents nonincreasing with stage. Use $\hat\beta_{m+1}=\hat\beta_m+\kappa\log L_m$, and $(\log\log(s+k))^2-(\log\log s)^2\le3k/s$ for each fixed $k\ge0$ and all sufficiently large $s$ ([`bump`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L18-L49)).
- *Iteration.*
  - [`claiming`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L122-L143) applies Lemma 4.21 to the stage pairs $(j,j)$ and $(j+1,j)$ and takes minima and maxima of the constants.
  - [`energized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L254-L285) produces one step's record at level $m$.
  - [`plowed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L307-L335) assembles the kinetic data by downward induction from $m=N$, starting from the top datum.
  - [`under_contract`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L366-L391) chooses the volume thresholds so that $F(L)e^{-\gamma n}\le\Gamma e^{-(\gamma/2)n}$ ([`waits_up`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L353-L358)).
  - The final iteration uses III.7.3.

*Lean:* [`clocks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L51-L74), [`geared`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L59-L66).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

- **The coefficient and its identification.** The continuum bubble yields the factor $11/3$ from the orbital and spin vertices and $\mathrm{tr}(\mathrm{ad}_b^2)=-C_G$. Relating this calculation to the blocked determinant also requires the exact Faddeev–Popov identity, cancellation of the contact contribution to $\alpha$, a comparison uniform in $L$, and control of every Fourier alias.
- **Quantitative curvature factorization.** The lattice Poincaré lemma must preserve exponential decay, colour invariance and the constraints already imposed on other legs. Each one-leg solve loses a factor four in strip width; the number of legs is fixed.
- **Uniformity in the volume.** A single infinite-volume kernel or path datum works on every torus in the chosen sequence. Limits along increasingly fine momentum meshes transfer Ward identities and colour symmetries to that kernel. In the iteration, the sequence consists of the sides at one fixed level as the volume index varies.
- **Order of constants.** The output width and cubic/quartic amplitude precede the input path amplitude. Contributions depending on the latter carry a factor $L^{-1}$; inherited loop atoms carry $L^{-2}$. The new loop amplitude is $O(L^4)$, and the reference-coupling thresholds make the allowed loop amplitude large enough to absorb it.
- **Strength of the conclusion.** The slope estimate has an $O(1)$ error uniform in $L$. This suffices for III.9 when $\log L$ dominates that error. Polymer activities are absent from the argument.
- **The regulator.** The scalar regulator is $\mu^{20}(\Delta_U+\mu^2)^{-9}$. Its componentwise extension to link fields respects gauge transformations and unsigned axis permutations; full signed-permutation symmetry is not asserted for this auxiliary determinant. The blocked action has the full lattice symmetry.

<a id="unit-notation"></a>

## 6. Notation

A determinant film records the second derivative before loop-momentum integration. Its quadratic Taylor kernel is one half of its normalized loop-momentum integral.

- **Written proof:** $R=(\ell,\mathcal A^{(2)},\mathcal A^{(3)},\mathcal A^{(4)})$

  **Lean:** [`RG.PathData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L150-L154)

  **Meaning:** path datum (rows, loop/cubic/quartic atoms)

- **Written proof:** leg, atom

  **Lean:** [`RG.Slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L38-L40), [`RG.Atom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L84-L86)

  **Meaning:** transported curvature; curvature monomial

- **Written proof:** $\mathrm{Bounds}(\mathbf c;\sigma,C,\Lambda)$

  **Lean:** [`PathData.Bounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L173-L185)

  **Meaning:** exponential summability, invariance and moment clauses

- **Written proof:** $\mathrm{main}_{\mathbf c,R}$, $\mathrm{loop}_R$

  **Lean:** [`mainTerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L27-L28), `loop`

  **Meaning:** leading part; loop functional

- **Written proof:** clip $\mathbf c$, $c_{\rm dir}$

  **Lean:** [`RG.Clip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139-L146)

  **Meaning:** clipping parameters; `direct`

- **Written proof:** bed $B$, Floor, attached

  **Lean:** [`Bed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L35-L40), [`Floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68), [`Attached`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L44-L46)

  **Meaning:** free quadratic-form data of a level

- **Written proof:** straight-route rows of $\rho$

  **Lean:** [`rowPath`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L169-L171), [`emitBase`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L173-L174)

  **Meaning:** rows realizing the bed roots on straight lattice routes

- **Written proof:** strip-analytic $(\sigma,K)$

  **Lean:** [`Firm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Infrastructure/Jets.lean#L199)

  **Meaning:** bounded holomorphic periodic kernel

- **Written proof:** vanishing to order $s$ along rays

  **Lean:** [`Rays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Infrastructure/Jets.lean#L28-L29)

  **Meaning:** raywise $O(t^s)$ at $t=0$

- **Written proof:** $(t{+}1)$-leg kernel; records

  **Lean:** `Picture`, [`Recorded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Pathways.lean#L491-L492)

  **Meaning:** Fourier kernel of a Taylor coefficient

- **Written proof:** $\alpha_b(\hat K)$

  **Lean:** [`alphaPay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L699)

  **Meaning:** $F^2$-coefficient, normalized by the bed

- **Written proof:** $\Pi_\mu$

  **Lean:** [`PoleTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/AuxReferences.lean#L138), [`fineMag`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/AuxReferences.lean#L46)

  **Meaning:** regulated background-field one-loop action

- **Written proof:** $\mathcal G_\mu$, $\mathcal P_\mu$

  **Lean:** [`grenade`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Regulator.lean#L338), [`medals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Completion.lean#L59-L60)

  **Meaning:** ghost operator; completed Hessian

- **Written proof:** $\mu=1/L$

  **Lean:** [`inch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/Slabs.lean#L189)

  **Meaning:** regulator mass

- **Written proof:** $h(k)$; $k_b(k)$

  **Lean:** [`poleVec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L125); [`keelRay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L155)

  **Meaning:** continuum bubble integrand; lattice integrand

- **Written proof:** bounds of Lemma 4.15

  **Lean:** [`Waves1`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L276), [`Waves2`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L277)

  **Meaning:** global infrared bound and shell comparison bound

- **Written proof:** $(2\pi)^{-4}$

  **Lean:** [`cartWeight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L28)

  **Meaning:** normalization of the momentum integral

- **Written proof:** $S_t(x,z)$; $\mathrm{th}$

  **Lean:** [`tested`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L81-L84); [`thermal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L46-L49)

  **Meaning:** fine action plus penalty; one-loop function

- **Written proof:** classical match; finite bound

  **Lean:** [`ClassicalMatch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L108-L109); [`FiniteBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L62-L71)

  **Meaning:** items 4 and 5 of III.7.4

- **Written proof:** slope statement

  **Lean:** [`HorizCalc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L20-L23), [`Fluent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L115)

  **Meaning:** III.7.3 for given / all parameters

- **Written proof:** step property; step record

  **Lean:** [`Transition`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L86-L90); [`Bubble`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L170-L177)

  **Meaning:** III.7.4

- **Written proof:** top datum

  **Lean:** [`BranchRow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L166)

  **Meaning:** III.7.2 at level $N$

- **Written proof:** kinetic data, planned conditions

  **Lean:** [`Kin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L74-L77), [`Kin.Planned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L93-L115), [`FullPaths`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L301-L305)

  **Meaning:** output to III.9

- **Written proof:** invertibility bounds

  **Lean:** [`GrantF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L15-L22), [`Freezer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/UniformMatrix.lean#L270-L272)

  **Meaning:** strip invertibility with inverse bound

- **Written proof:** medal, core, auxiliary films

  **Lean:** [`medalCue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L84), [`coreCue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L86), [`rankCue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L85)

  **Meaning:** §4.8

- **Written proof:** $\hat\beta_m$, $\mathrm{loopCap}_m$

  **Lean:** [`hatBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79), [`loopCap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L86)

  **Meaning:** reference coupling; loop-amplitude cap

- **Written proof:** $\kappa$

  **Lean:** [`Gauge.slopeConstant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184)

  **Meaning:** $11C_G/(24\pi^2)$

- **Written proof:** $D^rF(0)/r!$

  **Lean:** [`noteAt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Infrastructure/Jets.lean#L341)

  **Meaning:** complexified Taylor coefficient

- **Written proof:** analytic gauge and lattice symmetry

  **Lean:** [`Pointwise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L373-L377)

  **Meaning:** hypotheses of atom emission

- **Written proof:** $\pi_d(\sigma)$

  **Lean:** [`priceDivision`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Koszul.lean#L84)

  **Meaning:** one-coordinate division constant in $d$ momentum coordinates

- **Written proof:** joint free form; gauge completion

  **Lean:** [`frontR`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Block/Static.lean#L20), [`postroom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/FourPoint.lean#L221), [`cannonade`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Regulator.lean#L499)

  **Meaning:** fine-link and coarse-frame operators


<a id="unit-limitations"></a>

## 7. What remains unexplained
1. **Analytic estimates below the stated lemmas.** The real quotient estimate and complex-strip perturbation estimate used in Lemma 4.10, and the analytic tadpole and bubble bounds used in Lemma 4.15, have not been checked through every subsidiary proof. Their statements support the estimates given here. The determinant-factorization and Haar-density lemmas of Lemma 4.9 remain inputs at statement level. The contact identities used in Lemma 4.18 and the high-alias and zero-alias estimates used in Lemma 4.19 likewise remain inputs at statement level.
2. **Choice of regulator power.** The ninth power is part of the explicit definition, and the cited estimates use it. A minimal power, or a conceptual reason for choosing exactly nine, has not been established.
3. **Supply of the global hypotheses.** III.4 supplies the free-field horizons and history conditions. The [`free/stationary connection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/B70FreeStationaryConnection.lean#L17-L56) explicitly constructs the two horizons with identical beds and interpolation kernels before applying the iteration. The discharge of these conditions in every downstream application has not been checked.
4. **Limits of path data.** The projection results support the compactness argument in III.13: exponential weights give Hilbert-space parameters for curvature coefficients ([`fitting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Projection/Ink.lean#L79-L99)); coefficientwise convergence with uniform row bounds gives convergence of row-action jets ([`insideLine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Projection/Lines.lean#L89-L109)); compatible source jets and a common positive Hessian lower bound give continuity of stationary, tree-level and one-loop jets ([`interview`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Projection/Fumes.lean#L56-L87)). The complete compactness construction and passage through all its quantifiers belong to III.13 and remain outside this unit.

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md), [III.1](III-1.md), [III.16](III-16.md), [III.6](III-6.md), [III.10](III-10.md), [III.2](III-2.md).

**Referenced by:** [VII.2](VII-2.md), [III.2](III-2.md), [III.13](III-13.md), [III.4](III-4.md), [III.14](III-14.md), [VII.1](VII-1.md), [III.12](III-12.md).

## Lean source

**Source allocation:** 19,945 attributed lines; 3,533 line-counted declarations; 4,156 assigned declaration names. Of the assigned names, 4,108 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- work package [`YM/Next/STATIONARY/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY) — 19,391 lines.
- work package [`YM/UVExtension/Projection/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Projection) — 286 lines.
- work package [`YM/WilsonBulk/Spectral/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral) — 215 lines.
- work package [`YM/UVExtension/Reward/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward) — 30 lines.
- work package [`YM/UVExtension/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension) — 23 lines.

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-iii-7-1"></a>

- **K-III.7.1** [`gathered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/LocalOracle.lean#L312-L348) *(key result)* — A summable family of local analytic functionals with weighted bounds sums to an analytic function with uniformly controlled jet bounds, dimension-free.

<a id="k-iii-7-2"></a>

- **K-III.7.2** [`vanish`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L611-L625) *(key result)* — For simple gauge group and distinct axes with vanishing leap-tip coefficient, the relevant data function vanishes to order four along the axes.

<a id="k-iii-7-3"></a>

- **K-III.7.3** [`withdrew`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Ward.lean#L647-L697) *(key result)* — Uniform lift conditions transfer along a sequence of analytic forces tending to zero, except for ray vanishing orders.

<a id="k-iii-7-4"></a>

- **K-III.7.4** [`frame`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Chart.lean#L421-L435) *(numbered result)* — The Army property is preserved on composing with frame evaluation components.

<a id="k-iii-7-5"></a>

- **K-III.7.5** [`wedlock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Vertex.lean#L371-L379) *(key result)* — There exists a family of kernels with exponentially decaying bounds and analytic rays that realizes the prescribed generating data.

<a id="k-iii-7-6"></a>

- **K-III.7.6** [`wall_lift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Koszul.lean#L571-L587) *(key result)* — A cycle-valued leg with cost and jet bounds is a coboundary of a leg one degree higher with controlled cost, preserving vanishing on the wall.

<a id="k-iii-7-7"></a>

- **K-III.7.7** [`carry_plan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L255-L278) *(key result)* — Under convergence hypotheses, the limiting row-scape of a sequence of kernels coincides with the carried row from the limit object at real momenta.

<a id="k-iii-7-8"></a>

- **K-III.7.8** [`allleg`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/ManyLegs.lean#L533-L549) *(key result)* — For arity at least three, a contractible family of cost-bounded functions is the curl of a family of cost-bounded potentials, with cost loss by a constant factor.

<a id="k-iii-7-9"></a>

- **K-III.7.9** [`strokes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Pathways.lean#L193-L201) *(numbered result)* — A cost-bounded picture admits a real, color-invariant Laurent representation with controlled cost at fixed arity.

<a id="k-iii-7-10"></a>

- **K-III.7.10** [`colors_align`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Ward.lean#L192-L216) *(key result)* — For an analytic function with controlled recorded data and a shaded picture and skin, the series expansion matches the function to the stated aperture order.

<a id="k-iii-7-11"></a>

- **K-III.7.11** [`scene_gate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L58-L61) *(key result)* — For a given roll and price data there exists a budget gap parameter, from the stationary scene.

<a id="k-iii-7-12"></a>

- **K-III.7.12** [`tribute`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L177-L202) *(key result)* — Near zero, the completed Hessian determinant is positive and the Haar-to-counting Jacobian ratio is controlled inside the exponential patches.

<a id="k-iii-7-13"></a>

- **K-III.7.13** [`stadium`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/RealGap.lean#L647-L664) *(key result)* — For self-adjoint-symmetric tactics with bounded serial norms, the carried matrix of the force operator is stable with a uniform constant on real momenta.

<a id="k-iii-7-14"></a>

- **K-III.7.14** [`filing_ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L231-L234) *(numbered result)* — The filing data are firm with controlled bounds and vanish to order four along axes, and are recorded against the loop series at order zero.

<a id="k-iii-7-15"></a>

- **K-III.7.15** [`launch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L270-L305) *(key result)* — Given input bed data, there is a path datum whose main term agrees to fourth jet order with the Wilson energy and satisfies bounds, uniformly for large volumes.

<a id="k-iii-7-16"></a>

- **K-III.7.16** [`assembly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L561-L595) *(key result)* — Real-analytic extensions with jet control can be matched, up to order-five error, by classical emitted data built from atoms with wall bounds, uniformly along large volumes.

<a id="k-iii-7-17"></a>

- **K-III.7.17** [`extra_curves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/SoftTransfers.lean#L59-L103) *(key result)* — For atom families with wall bounds, classical curvature terms from cubic and quartic vertices are realized by pictures with uniform bounds enabling the induction.

<a id="k-iii-7-18"></a>

- **K-III.7.18** [`quoting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L67-L96) *(key result)* — A grant bound yields footprint bounds for bounded plane-density performances, used for flux, transition and ceiling caps.

<a id="k-iii-7-19"></a>

- **K-III.7.19** [`drift_tip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L789-L818) *(key result)* — For a simple gauge group and screened data, the alpha payment of the profitable cue vanishes for each color index.

<a id="k-iii-7-20"></a>

- **K-III.7.20** [`post_cert`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/ComplexGap.lean#L330-L353) *(key result)* — Under weighted two-end budget conditions, the force-kernel operator built from the tactics satisfies a freezing (coercivity) certificate with constants independent of the patch.

<a id="k-iii-7-21"></a>

- **K-III.7.21** [`uniform_backing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Backing.lean#L54-L66) *(key result)* — For beds with strip metric and floors, the joint inverse is uniformly bounded in the strip norm with constants depending only on the level, and inverts the completed matrix.

<a id="k-iii-7-22"></a>

- **K-III.7.22** [`pouring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L17-L52) *(key result)* — For every simple gauge group, the fluent (annulus) certificate holds.

<a id="k-iii-7-23"></a>

- **K-III.7.23** [`honored`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L25-L68) *(key result)* — Given inputs, one can choose convergence widths and constants independent of later kinetic data so that the grant-type bounds hold for all patches and path data along sequences of sides tending to infinity.

<a id="k-iii-7-24"></a>

- **K-III.7.24** [`setWest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/VertexWeights.lean#L357-L382) *(key result)* — For bounded loop data, there are constants such that for all small patches and admissible families, one can construct order-3 and order-4 weighted texts bounding the stationary expansion with explicit constants.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

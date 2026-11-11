# III.3. Free lattice kernels and covariances

*Part III — Ultraviolet construction (renormalization group).* 8,998 lines of Lean in 1,377 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is **checked** against the Lean and rewritten by a second model; a final editing round is in progress. It is updated as it improves.


**Part:** III, Ultraviolet construction (renormalization group). **Lean:** [`YM/Next/FREE_KERNELS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS) (5,450 lines), [`YM/MultiNext/SIGNED_SOURCE_CONTINUATION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION) (1,674), [`YM/Further/FREE_COVARIANCE_KP/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP) (924), [`YM/UVNext/PRICED_KERNELS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS) (533), [`YM/Further/CORRECTED_LIFT_COEFFICIENTS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/CORRECTED_LIFT_COEFFICIENTS) (248), [`YM/Push/CUTOFF_PROJECTORS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/CUTOFF_PROJECTORS) (139), [`YM/ProofPorts/GRID_RENEWED_RESERVES/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProofPorts/GRID_RENEWED_RESERVES) (30). **Size:** 8,998 lines in the main-theorem closure.

**Conventions.**

- **Tori and forms.** $\Lambda_n=(\mathbb Z/n\mathbb Z)^4$. $\Omega^r(\Lambda_n)$ is the space of real $r$-cochains, with the counting inner product. $d_r:\Omega^r\to\Omega^{r+1}$ is the exterior derivative, and $d=d_1$. $X^*$ is the transpose.
- **Levels.** In mesh $N$ the levels are $i=N,\dots,0$. Level $N$ is the bare lattice. Step $i<N$ maps level $i+1$ (fine torus $\Lambda_f$) to level $i$ (coarse torus $\Lambda_c$), with $f=cL_i$ and $L_i\ge3$ odd. Level $i$ has a stage index $J(i)\ge4$, and $J(i)\le J(i+1)\le J(i)+1$.
- **Kernels.** A *kernel* is a map $R:\mathbb Z^4\to\mathrm{Hom}(\mathbb R^\beta,\mathbb R^\alpha)$, where $\alpha,\beta$ are sets of face types. It acts on every torus by periodisation: $(R_n\omega)(x)=\sum_{y\in\mathbb Z^4}R(y)\,\omega(x+y)$. Its symbol is $\hat R(p)=\sum_yR(y)e^{ip\cdot y}$.
- **Cross kernels.** A *cross kernel* of block size $L$ also carries a fine residue $r\in(\mathbb Z/L)^4$ in its row index. It maps cochains on $\Lambda_c$ to cochains on $\Lambda_{cL}$, for every $c$. Its displacements are measured on the coarse lattice.
- **Strip bound.** $R\in\mathcal S(\alpha,\Omega)$ means $\sum_ye^{\alpha|y|_1}|R_{ab}(y)|\le\Omega$ for every entry. Up to constants, this says that $\hat R$ is analytic and bounded on $|\mathrm{Im}\,p_a|<\alpha$.
- **Aliases and lattice momenta.** For a coarse momentum $p$, the fine aliases are $q_\ell=(p+2\pi\ell)/L$, $\ell\in(\mathbb Z/L)^4$ (centred representatives). $\tau(p)=(e^{ip_a}-1)_{a=1}^4$ is the lattice momentum, and $\sigma_r(p)$ is the symbol of $d_r$, so $\sigma_0=\tau$.
- **Constants from the kernel choice.** $\kappa>0$ is the penalty of the kernel choice $K$ (the number $b$ of the main theorem). $c_i>0$ is the direct coefficient of the clip of level $i$, that is, the coefficient of the bare plaquette term in the quadratic part of the action.

## 1. What this unit proves

The unit computes the Gaussian part of the block-spin step of III.1 in closed form, for every history of steps. It proves three things about it:

- exact algebraic identities on every torus, which turn integrating out the fluctuation into an explicit orthogonal splitting of the quadratic form;
- exponential decay of all kernels, with rates and constants that depend only on the stage index (not on the block sizes, the number of steps or the torus);
- uniform ellipticity and hypercubic symmetry of the quadratic forms.

The constants are fixed before the block sizes (Proposition III.3.1). The block sizes only need to satisfy a lower bound $L\ge b_j$.

The package also contains:

- the free covariance of the curvature and its comparison with the continuum (III.3.6, used in III.11);
- calculus lemmas used in the nonlinear step (III.3.7, used in III.10 and III.2).

**The identities of one step.** Fix a step with tori $\Lambda_f,\Lambda_c$, $f=cL$. Let $Q:\Omega^1(\Lambda_f)\to\Omega^1(\Lambda_c)$ be the linearised block average of III.1: a weighted average, over a $J$-fold smoothing patch, of line integrals of the fine 1-form along $L$-link paths.

*Metric data* on a level is a quintuple $\mathcal B=(D,D^{-1},H,H^{-1},R)$ of kernels on 2-forms: a diagonal multiplier, its inverse, a metric, its inverse, and a root. With the direct coefficient $c$ of the level's clip, set
$$V=(\sqrt c\,1,\,R):\Omega^2\to\Omega^2\oplus\Omega^2 .$$
Then $V^*V=c\,1+R^*R=H$ and $\langle dA,H\,dA\rangle=|V\,dA|^2$.

*Transfer kernels* are $\mathcal U=(W,T,M_f,M_n,O)$ with:

- $W:\Omega^1(\Lambda_c)\to\Omega^1(\Lambda_f)$ and $T:\Omega^2(\Lambda_c)\to\Omega^2(\Lambda_f)$ (cross kernels);
- $M_f:(\Omega^2)^{\oplus2}(\Lambda_c)\to(\Omega^2)^{\oplus2}(\Lambda_f)$ (cross kernel);
- $M_n:(\Omega^2)^{\oplus2}(\Lambda_c)\to\Omega^1(\Lambda_c)$;
- $O:(\Omega^2)^{\oplus2}(\Lambda_c)\to\big((\Omega^2)^{\oplus2}\oplus\Omega^3\big)(\Lambda_c)$.

With fine data $(\mathcal B,V)$ and coarse data $(\mathcal B',V')$, the identities are:

- (D1) $d^*H\,d\,W=Q^*d^*H'd$
- (D2) $QW=1-\kappa^{-1}d^*H'd$
- (D3) $T^*d=dQ$
- (D4) $T\,D'd=D\,d\,W$
- (R1) $M_f^*M_f+M_n^*M_n+O^*O=1$
- (R2) $\sqrt\kappa\,M_n^*=V'd$
- (R3) $M_fV'd=V\,d\,W$
- (R4) $M_nV'd=\kappa^{-1/2}d^*H'd$
- (R5) $OV'd=0$
- (R6) $M_f^*V\,d=\sqrt\kappa\,M_n^*Q$
- (Δ) $H'\big(H'^{-1}-T^*H^{-1}T-\kappa^{-1}d\,d^*\big)H'=d_2^*P\,d_2$, for a 3-form kernel $P$ on the coarse level.

What the identities mean:

- **(D1)–(D2).** These say that $A=WB$ is a critical point, hence a minimiser, of $A\mapsto\langle dA,H\,dA\rangle+\kappa|QA-B|^2$, and that the minimum is $\langle dB,H'dB\rangle$. So $W$ is Balaban's background-field (minimiser) map, and $H'$ is the effective metric of the coarse level. The value identity is III.1's [`action`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L93-L103).
- **(D3)–(D4).** (D3) makes $T^*$ a 2-form average compatible with $Q$. (D4) says that $T$ carries the weighted coarse curvature $D'dB$ to the weighted fine curvature $D\,dWB$ of the background field.
- **(R1)–(R6): orthogonal splitting.** For $A\in\Omega^1(\Lambda_f)$, $B\in\Omega^1(\Lambda_c)$ and $Z=A-WB$, (R3), (R4) and (D2) give
  $$\big(V\,dA,\ \sqrt\kappa(B-QA)\big)=(M_f,M_n)V'dB+\big(V\,dZ,\,-\sqrt\kappa\,QZ\big).$$
  The two summands are orthogonal by (R6), and $|(M_f,M_n)V'dB|=|V'dB|$ by (R1) and (R5). Hence
  $$\langle dA,H\,dA\rangle+\kappa|QA-B|^2=\langle dB,H'dB\rangle+\langle dZ,H\,dZ\rangle+\kappa|QZ|^2 .$$
- **(Δ).** This is the same splitting for inverse metrics. It says $H'^{-1}=T^*H^{-1}T+\kappa^{-1}dd^*+H'^{-1}d_2^*Pd_2H'^{-1}$, and the last term sees only $d_2H'^{-1}\omega$.

**Proposition III.3.1 (catalogue fixed before the block sizes).** Let $K$ be a kernel choice. There are numbers $\alpha_j>0$, $\eta_j>0$, $\Omega_j$, $\lambda_j\ge0$ (amendments), $\gamma_j>0$ (clip bounds) and $b_j\in\mathbb N$ (block thresholds), $j\in\mathbb N$, depending only on $K$, with the following properties.

(a) *Metric data of a history.* Let $j\ge4$, let the clip have direct coefficient $c\le\gamma_j$, and let $v$ be a history of stage index $j$. Then there is metric data $(D,D^{-1},H,H^{-1},R)$ such that:

- $D$ and $D^{-1}$ are the explicit kernels of $v$ with penalty $\kappa$, and $H^{-1}=D^{-1}+\lambda_j(d_2D^{-1})^*(d_2D^{-1})$ (Lemmas 4.4–4.7);
- all five kernels lie in $\mathcal S(\alpha_j,\Omega_j)$;
- on every torus: $c\,1+R^*R=H$, $\hat H(0)=1$, $Hd=Dd$, and $H$ and $D$ are symmetric;
- on every torus: $\eta_j|\omega|^2\le\langle\omega,H\omega\rangle\le\Omega_j|\omega|^2$, and the same for $D$;
- for every gauge group $G$, the form $\langle A,d^*Hd\,A\rangle$ on $\mathfrak g$-valued 1-forms is invariant under the signed lattice symmetries;
- $D=1$ if $v$ is the empty history.

(b) *One step.* Let $j,t\ge4$ with $t\in\{j,j-1\}$, and let $P$ be a flight of index $(j,t)$: odd block size $L\ge3$ and fine history of index $j$. Then:

- the explicit transfer kernels $W,T$ of $P$ satisfy $\nabla_uW\in\mathcal S(\alpha_j,\Omega_jL^{-1-|u|})$ and $\nabla_uT\in\mathcal S(\alpha_j,\Omega_jL^{-2-|u|})$, for every word $u$ of at most $j-2$ fine forward differences;
- the rolled 3-form kernel $\mathcal P$ of $P$, built with fine amendment $\lambda_j$ and coarse amendment $\lambda_t$ (Lemma 4.12), lies in $\mathcal S(\alpha_j,\Omega_j)$;
- if $L\ge b_j$, then at every real momentum $\hat{\mathcal P}(p)$ is Hermitian and $\eta_j\le\hat{\mathcal P}(p)\le\Omega_j$.

*Status:* theorem, with no hypothesis beyond the kernel choice. It uses III.6's square-root theorem to construct $R$. The catalogue does not depend on $G$.
*Lean:* [`Catalog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L29-L33), [`pledges`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L67-L93), [`BottomQuote`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L22-L24), [`HopQuote`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L25-L28), [`Mag`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L20), [`Defined`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Ground.lean#L54-L58), [`Floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68), [`Donate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L21-L22), [`Funds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L38-L40).

**Proposition III.3.2 (free kernels along an admissible schedule).** Let $G$ be a gauge group and $K$ a kernel choice. There is a catalogue $(\alpha,\Omega,\eta,\lambda,\gamma,b)$ as in III.3.1 with the following property. For every sheet $\mathfrak S$ with kernel $K$ (the pre-$L$ constants, III.2) there is a second table $(\alpha'_j,\Omega'_j,\eta_j)$ such that the conclusion below holds.

Let $A$ be an RG trajectory with kernel $K$ and the stage profile of $\mathfrak S$, satisfying the *credit condition*:

- (C1) $c_i\le\gamma_{J(i)}$ for every level $i$;
- (C2) $b_{J(i+1)}\le L_i$ for every step $i$.

Then there are two families of metric data and transfer kernels, indexed by $0\le i\le N$: a pre-repair family $\mathsf M=(\mathcal B^{N,i},\mathcal U^{N,i})$ and an output family $\mathsf H=(\mathcal B^{N,i},\tilde{\mathcal U}^{N,i})$. They have the same metric data and the same $W,T$, and satisfy:

1. *Explicit formulas.* $\mathcal B^{N,i}$ is the metric data of III.3.1(a) for the history of level $i$ in mesh $N$, with amendment $\lambda_{J(i)}$. That history is the composite of the stage hops of steps $N-1,\dots,i$, starting from the empty history at level $N$. $W^{N,i},T^{N,i}$ are the explicit transfer kernels of the flight of step $i$, of index $(J(i+1),J(i))$.
2. *Pre-repair conditions ($\mathsf M$).*
   - $\mathcal B^{N,i}\in\mathcal S(\alpha_{J(i)},\Omega_{J(i)})$, with floors $\eta_{J(i)},\Omega_{J(i)}$ on every torus for the clip of level $i$, and the symmetry;
   - $D^{N,N}=1$;
   - $W,T$ have the derivative bounds of III.3.1(b) at stage $J(i+1)$, with $J(i+1)-2$ differences;
   - (D1)–(D4) hold on every schedule torus pair of step $i$;
   - there is a 3-form kernel $P\in\mathcal S(\alpha_{J(i+1)},\Omega_{J(i+1)})$ with $\langle v,\hat P(p)v\rangle\ge\eta_{J(i+1)}|v|^2$ for real $p$ and $v$ in the range of $\sigma_2(p)$, such that (Δ) holds on every schedule torus pair.
3. *Output conditions ($\mathsf H$), with the second table.*
   - the same bounds on the metric data;
   - $\tilde M_n,\tilde O\in\mathcal S(\alpha'_{J(i+1)},\Omega'_{J(i+1)})$ and $\tilde M_f\in\mathcal S(\alpha'_{J(i+1)},\Omega'_{J(i+1)}L_i^{-2})$, plus the derivative bounds on $W,T$;
   - (D1)–(D4) and (R1)–(R6) on every schedule torus pair, with the clips of levels $i+1,i$;
   - $D^{N,N}=1$, and the symmetry of every $\mathcal B^{N,i}$.

*Status:* theorem. The inputs F06–F09 (III.6) are discharged inside the proof. The only hypothesis is the credit condition. The variant [`before_paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Calendar.lean#L108-L124) (assigned to III.4) replaces it by:

- two conditions on the sheet: clip coefficients $\le\gamma_j$, and block-size floors $\ge b_j$, for all stages from the first one on;
- the schedule's payment record (III.2), which gives $L_i\ge$ floor.

III.9 builds the sheet so that these hold: its floors are exactly $b$ and its clip coefficients are $\le\gamma$ ([`housing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Dome.lean#L90-L101)). The variant also lets the second table be computed from a preliminary sheet $\mathfrak S$ and used for any later sheet $\mathfrak S'$, provided $\mathfrak S'$ has the same clip coefficients, a drift at least as large, and logarithmic parameter size at least as large.

*Lean:* [`retained_support`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L134-L145); conditions [`Present`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L82-L85), [`Craft.Rack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L63-L73), [`Bid.Retained`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L104-L105), [`Horizon.Suffices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L132-L139), [`Bid.Sworn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55), [`Credit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L87-L88); discharge [`credit_from_sheet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Calendar.lean#L95-L102), [`Willing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Calendar.lean#L28).

**Proposition III.3.3 (identities on every torus).** Let a family satisfy the output conditions of III.3.2(3) for some table. Let $m<N$, and let $c,f$ be any sides with $f=cL_m$, not only schedule sides. If (D1)–(D4) hold at $(c,f)$, then (R1)–(R6) hold at $(c,f)$, with the clips of levels $m+1,m$. Moreover (D1)–(D4) hold at every such $(c,f)$. In the main-theorem closure this is proved from the output conditions by the same rigidity argument (III.10, [`panes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Purl.lean#L20-L53)). It also follows from the explicit formulas ([`universal_diagonal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Tori.lean#L46-L60), which is not in the closure).
*Status:* theorem.
*Lean:* [`complete_roll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Tori.lean#L109-L157), [`Towers.Diagonal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L82-L86), [`Towers.Roll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L88-L96), [`Inputs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L76-L79). Consumers: III.10.

**Proposition III.3.4 (positivity of the rolled 3-form kernel).** Let $j,t\ge4$. There are $C_0,B>0$, depending only on $(K,j,t)$, with the following property. For every coarse amendment $\lambda\ge C_0$ and fine amendment $\mu\ge0$ there are $\eta,\sigma,\Omega>0$ such that, for every flight $P$ of index $(j,t)$:

- $\mathcal P_{\mu,\lambda}(P)\in\mathcal S(\sigma,\Omega)$;
- if $\mu B\le L^2$, then at every real $p$, $\hat{\mathcal P}_{\mu,\lambda}(p)$ is Hermitian and $\eta\le\hat{\mathcal P}_{\mu,\lambda}(p)\le\Omega$.

*Status:* theorem.
*Lean:* [`Flight.frontier`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L99-L140), [`Flight.absorb_before`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L58-L95).

**Proposition III.3.5 (line and box filters).** For odd $M$, let
$$\mathrm{plank}_M(z)=M^{-1}\sum_{|s|\le(M-1)/2}e^{isz},\qquad \mathrm{rail}_M(z)=M^{-1}\sum_{s=0}^{M-1}e^{isz},\qquad a_L(p)=\prod_a\mathrm{plank}_L(p_a)$$
(centred line average, uncentred line average, box average). Then:

(a) $\mathrm{rail}_L(Mz)\,\mathrm{rail}_M(z)=\mathrm{rail}_{LM}(z)$ for all $L,M$, and $\mathrm{plank}_L(Mz)\,\mathrm{plank}_M(z)=\mathrm{plank}_{LM}(z)$ for odd $L,M$. $\mathrm{plank}_M$ is even, $2\pi$-periodic and real on $\mathbb R$.

(b) $|\mathrm{plank}_M(z)|,|\mathrm{rail}_M(z)|\le e^{M|\mathrm{Im}\,z|}$.

(c) There are absolute constants $c_*,c_1>0$ such that $|\mathrm{rail}_M(z)|\ge c_*$ for complex $z$ with $M|z|\le3\pi/2$, and $|\mathrm{plank}_M(z)|\ge e^{-c_1M/L}$ for real $z$, $M\le L$ and $L|z|\le3\pi/2$.

(d) There is an absolute $B$ such that $|\mathrm{rail}_L((q_\ell)_a)|,|\mathrm{plank}_L((q_\ell)_a)|\le B/(1+|\ell_a|)$. This holds for odd $L$, every $p$ in the complex cube $\{|\mathrm{Re}\,p_a|<\tfrac{5\pi}4,\ |\mathrm{Im}\,p_a|<\tfrac\pi4\}$, every alias $\ell$ and every $a$.

*Status:* theorem.
*Lean:* [`plank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L38), [`rail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L34), [`area`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L18), [`plank_bind`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L68-L76), [`rail_bind`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L51-L62), [`plank_height`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L127-L133), [`rail_lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L140-L152), [`principal_plank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L162-L196), [`alias_rail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L200-L245).

**Proposition III.3.6 (free covariance of the curvature).** Call a 2-form kernel $f$ *firm* with constants $(\alpha,\Omega,\eta)$ if $f\in\mathcal S(\alpha,\Omega)$, $\eta\le f_n\le\Omega$ on every torus, and $\hat f(0)=1$. For real $p$ define:

- $\Phi_f(p)=\sigma_1(p)^*\hat f(p)\sigma_1(p)+\sigma_0(p)\sigma_0(p)^*$, the symbol of $d^*fd+dd^*$ on 1-forms;
- $G_f(p)=\sigma_1(p)\Phi_f(p)^{-1}\sigma_1(p)^*$, the covariance of the curvature $dA$ when $A$ has precision $d^*fd+dd^*$;
- $G_\infty(p)=s(p)|p|^{-2}s(p)^*$, where $s(p)$ is wedging with $ip$ on 1-forms: the continuum Feynman-gauge curvature symbol.

Let $U=\{p\in\mathbb R^4\setminus\{0\}:|p_a|<3\pi/2\}$, and fix $\alpha,\eta>0$ and $\Omega$.

(a) There is $b>0$ with $|p|^{-2}\Phi_f(p)\ge b$ for all firm $f$ and $p\in U$.

(b) For every $n$ there is $C_n$ such that, for all firm $f$ and $p\in U$, $\|\partial^nG_f(p)\|\le C_n|p|^{-n}$ and $\|\partial^n(G_f-G_\infty)(p)\|\le C_n|p|^{1-n}$.

(c) If $f$ is a scalar kernel with $\sum_xe^{\alpha|x|_1}|f(x)|\le\Omega$, then $\hat f$ is $C^\infty$ on $\mathbb R^4$ and $\|\partial^n\hat f\|\le(n/\alpha)^n\,\Omega$.

*Status:* theorems. Part (b) is used in III.11.
*Lean:* [`tank_full`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Core.lean#L115-L125), [`gem_quote`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Alloy.lean#L110-L120), [`radial_prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Plain.lean#L101-L133), [`Firm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Floor.lean#L17-L21), [`fuel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Core.lean#L62), [`garnet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Alloy.lean#L15), [`pearl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Alloy.lean#L17).

**Proposition III.3.7 (calculus lemmas for the nonlinear step).** These do not concern free kernels; they are consumed in III.10 and III.2.

(a) *Discrete Taylor expansion with scaled bounds.* Let $0\le k\le b$. There is $C=C(b,k)\ge1$ with the following property. Let $L\ge1$, $M\ge0$, and let $p:\mathbb Z^4\to E$ ($E$ normed) satisfy $\|\nabla_up(x)\|\le ML^{-1-|u|}(1+L^{-1}|x|_1)^b$ for all words $u$ of forward differences with $|u|\le k$. Then the homogeneous pieces $P_i$ ($i<k$) of the discrete (Newton) Taylor expansion of $p$ at $0$ satisfy $\|P_i(x)\|\le CML^{-1-i}(1+|x|_1)^b$, and the remainder satisfies $\|p(x)-\sum_{i<k}P_i(x)\|\le CML^{-1-k}(1+|x|_1)^b$.

(b) *Weighted Taylor coefficients.* Let $f$ be $C^d$ at $0$, let $p_v$ ($v\in V$ finite) be continuous linear maps with $\sum_vp_v=1$, and let $Y_v\ge1$ be integers. Suppose that for every $z$ the function $t\mapsto f(\sum_vt^{Y_v}p_vz)$ has vanishing derivatives of orders $\le d$ at $0$. Then $D^mf(0)(x_1,\dots,x_m)=0$ whenever there are integers $k_i\ge1$ with $\sum_ik_i\le d$ and $p_v(x_i)=0$ for every $v$ with $Y_v>k_i$.

(c) *Moments of local gauge-invariant functions.* Let $u$ be gauge invariant, local on a non-wrapping support $X\subset\Lambda_n$ ($n\ge2$), with $u\circ\exp$ of class $C^b$ at the identity. Suppose $u$ vanishes to order $b$ along every test-jet curve at the base point. Then $D^m(u\circ\exp)(0)(w_1,\dots,w_m)=0$ whenever, on the links used by $X$, each $w_i$ lies in the moment space of degree $p_i\ge1$, and $\sum_ip_i\le b$. This is (b) with the grading by polynomial degree (probable).

(d) *Radial decomposition.* Let $Q_a:\mathbb R^4\to\mathfrak g$ ($a=1,\dots,4$) be homogeneous of degree $j+1$. Then $Q_a=K_a+\partial_ar$, where $r=(j+2)^{-1}\sum_ax_aQ_a$ is homogeneous of degree $j+2$, and $K$ is homogeneous of degree $j+1$ with $\sum_ax_aK_a=0$ (the Fock–Schwinger condition).

(e) *Small-field condition along rays.* There is $C=C(G)>0$ with the following property. Let $0\le b\le1$, $\tau\ge Cb^2$, and let $v$ be Lie-algebra link variables with $|v_x|\le b$ on all links within distance $5$ of $Y$. If every plaquette of $Y$ has holonomy within chord distance $\tau$ of $1$ for the configuration $\exp(v)$, then the same holds for $\exp(sv)$, $0\le s\le1$.

*Status:* theorems.
*Lean:* [`capital`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/TownHall.lean#L31-L90), [`cancel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Weighted.lean#L120-L147), [`converse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Weighted.lean#L84-L115), [`wiped`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/PMOM.lean#L43-L61), [`locale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Averaging.lean#L84-L114), [`strings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Safeguard.lean#L148-L177).

## 2. What it uses

**From other units.**

- **I.1.** The lattice, the signed (hypercubic) symmetries, and the gauge group. The gauge group enters only the symmetry statement.
- **III.1.** The block-spin data:
  - the block ratio, the patch (odd $L\ge3$, $J\ge4$), the kernel choices [`KernelChoices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L37-L45) and the clips [`Clip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139-L146);
  - the linearised average $Q$ ([`mean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/FrameResponse.lean#L65-L66)) and the lattice exterior derivative;
  - the trajectory record [`Levels`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131-L134): block sizes, stage indices with $J(i)\le J(i+1)\le J(i)+1$, and schedule tori whose sides tend to infinity.

  III.1 also defines the output objects:
  - metric data [`Bed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L35-L40), [`Bed.full`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L49-L51), [`Floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68);
  - transfer kernels [`Towers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L70-L75) and their bounds [`Towers.Deep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L111-L114);
  - the identities (D1)–(D4), (R1)–(R6), with $d^*Hd$ as [`K`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L68-L69);
  - kernel families [`Horizon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L119-L121), the output conditions [`Horizon.Suffices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L132-L139), and price tables [`MapPrices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L123-L128).
- **III.2.** The sheet [`Sheet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35), the block sizes [`Rolls`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L50-L53), and the payment record [`Paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162).
- **III.6.** The four linear-algebra theorems [`F06`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F06.lean#L64-L128), [`F07`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07.lean#L180-L201), [`F08`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F08.lean#L53-L146), [`F09`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F09.lean#L41-L150). Their statements are in Lemma 4.16. F07 is also used in Lemma 4.8.
- **III.10.**
  - The interface conditions [`Craft.Rack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L63-L73), [`Bleeps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L32), [`Reaches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L34-L36), [`Funds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L38-L40), [`Donate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L21-L22), [`Replaces`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L53-L58), [`Bid.Retained`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L104-L105), [`Bid.Sworn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55).
  - The repair theorem [`Bid.pinning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L107-L166) (Lemma 4.16), and [`panes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Purl.lean#L20-L53) for III.3.3.
- **III.16.** Kernels and their action on tori: [`Row`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L22), [`Cross`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L26), [`installed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L35). The weighted norms [`Row.strip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L26) and [`Laurent.Width`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L104), where the size of a displacement is its $\ell^1$ norm. The alias-resolved Fourier transform on $\Lambda_f$, which is unitary up to $f^4$.

**Standard mathematics.**

- Fourier analysis on $\mathbb Z^4$ and on periodic lattices. Bloch (alias) decomposition of operators that commute with coarse translations. Paley–Wiener: strip analyticity is equivalent to exponential decay.
- Gaussian block-spin transformations computed in Fourier space: K. Gawędzki, A. Kupiainen, *Massless lattice $\varphi^4_4$ theory*, CMP 99 (1985). Balaban's averaging and background-field operators for lattice gauge fields: T. Balaban, CMP 95 and 96 (1984), CMP 98 (1985). Exposition: J. Dimock, *The renormalization group according to Balaban I*, Rev. Math. Phys. 25 (2013).
- Lagrange's identity. The Schur-complement (orthogonal) splitting of a quadratic form.
- Exactness of the lattice de Rham (Koszul) complex for exponentially decaying translation-invariant kernels.
- Newton forward-difference interpolation. Weighted-homogeneous Taylor expansions. The Fock–Schwinger (radial) gauge.

**Imported constants and assumptions.**

- The kernel choice $K$; only the penalty $\kappa$ enters the free kernels.
- The analyticity half-width $\pi/4$ ([`zone`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Chip.lean#L21)) and the radius $3\pi/2$ ([`domainRadius`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Chip.lean#L24)). The compactness constants $c_-|w|\le|e^{iw}-1|\le c_+|w|$ on $|w|\le3\pi/2$ ([`meter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Chip.lean#L82)).
- The credit condition, a hypothesis of III.3.2. It is discharged through [`before_paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Calendar.lean#L108-L124), the construction of the sheet in III.9, and the payment record of III.2.
- F06–F09 are proved in III.6 and plugged in inside [`retained_support`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L134-L145).

## 3. Strategy

The free part of a block-spin step is a Gaussian problem with translation-invariant data. Every operator is therefore a matrix-valued Fourier multiplier on the coarse torus, indexed by the $L^4$ fine aliases, and the unit solves the problem in closed form.

- **Covariance of the averaged field.** For a history of block averages, the covariance of the averaged 1-form field in each direction is an explicit alias sum (Lemma 4.4). It is the formula for iterated Gaussian block-spin transformations with a soft constraint of strength $\kappa$, as in Gawędzki–Kupiainen.
- **Gauge-invariant quadratic form.** The gauge-invariant effective form is $d^*Dd$, with an explicit 2-form multiplier $D$ that is diagonal in the plaquette orientation (Lemma 4.5, Lagrange's identity).
- **Transfer kernels.** From the fine and coarse data, the background-field map $W$ (Balaban's minimiser operator) and the curvature transport $T$ are written alias by alias. The identities (D1)–(D4) are then algebraic identities between symbols.
- **No elliptic estimate.** There is no elliptic or random-walk estimate, in contrast with Balaban's position-space bounds on propagators. In exchange, every symbol must be a finite expression in filters whose denominators are bounded below at real momenta. The lattice Laplacian symbol $|\tau|^2$ is never inverted on its own: its poles are cancelled against the principal-alias term before any estimate (Lemma 4.6).

**Uniformity.** All constants depend only on the stage index. Three facts produce this.

1. The filters are bounded on the strip, and bounded below on the principal alias by $e^{-cM/L}$, with an exponent linear in the dilation ratio. Each step dilates by at least $3$, so products along a history converge geometrically.
2. The average of a stage-$J$ step is the $J$-fold convolution of the box average. Its symbol decays like $\prod_a(1+|\ell_a|)^{-J}$ on non-principal aliases, so alias sums converge with $J-2$ derivatives to spare.
3. $L$ enters only through explicit factors $L^{-1}$ (for $W$), $L^{-2}$ (for $T$, $M_f$) and $L^{-2}$ (for the fine 3-form transport).

The constants are collected in a catalogue indexed by the stage (III.3.1). The block sizes are chosen afterwards and only need $L\ge b_j$.

**Defect, amendment, repair.** The explicit kernels satisfy (D1)–(D4), but they give the splitting of the quadratic form only through the defect (Δ).

- The unamended defect equals $X'^*CX'$, with $X'=d_2D'^{-1}$ and an explicit 3-form kernel $C$ that need not be positive.
- Adding $\lambda(d_2D^{-1})^*(d_2D^{-1})$ to the inverse metric leaves $d^*Hd$ unchanged and shifts $C$ by $\lambda$.
- With coarse amendment $\lambda_t$ large, and fine amendment $\lambda_j$ costing at most $\lambda_jB/L^2\le1$, the middle factor is $\ge1$.
- III.6 then provides a uniformly positive 3-form kernel with the same $d_2$-sandwich, its square root, and the kernels $M_f,M_n,O$; these turn (Δ) into the isometry (R1)–(R6) (III.10's repair theorem).
- All identities are identities between exponentially decaying kernels. They are proved on the schedule tori and transferred to every torus by rigidity (Lemma 4.18).

## 4. Steps

### 4.1 Filters and histories

**Lemma 4.1 (filter algebra).** This is III.3.5(a).
*Sketch:* $M\,\mathrm{rail}_M(z)(e^{iz}-1)=e^{iMz}-1$; apply it twice. For the centred filter, the centring phases add up, since $M\,\frac{L-1}2+\frac{M-1}2=\frac{LM-1}2$.
*Lean:* [`rail_bind`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L51-L62), [`plank_bind`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L68-L76).

**Lemma 4.2 (size of filters).** This is III.3.5(b)–(d).
*Sketch:*

- (b) Triangle inequality.
- (c) The compactness constants and Lemma 4.1 give $|\mathrm{rail}_M|\ge c_-/c_+$. On the principal alias, averaging $|e^{isz}-1|\le c_+|sz|$ gives $|\mathrm{plank}_M(z)-1|\le c_+\tfrac{3\pi}2\tfrac ML$, so $|\mathrm{plank}_M|\ge\max(c_*,1-k x)\ge e^{-c_1x}$ with $x=M/L$. The exponent is linear in $x$ with no prefactor, which is what makes products along a history converge.
- (d) $L\,\mathrm{rail}_L(z)(e^{iz}-1)=e^{ip_a}-1$ at $z=(q_\ell)_a$, and $L|z|\gtrsim1+|\ell_a|$ when $\ell_a\ne0$.

*Lean:* [`plank_height`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L127-L133), [`rail_height`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L114-L122), [`rail_lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L140-L152), [`plank_lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L154-L155), [`principal_plank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L162-L196), [`alias_rail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L200-L245).

**Lemma 4.3 (histories).** A history of stage index $j$ is either empty, or a hop $(L,J)$ with $j\le J\le j+1$ and odd $L\ge3$, applied after a history of index $J$. Its dilation $M_v$ is the product of its block sizes. Its cumulative filter is defined by $s_\emptyset=1$ and $s_{(L,J)\circ v}(p)=a_L(M_vp)^J s_v(p)$. Equivalently, $s_v=a_{M_v}^{\,j}e_v$, where $e_v$ is a product of box filters at the hops where the index drops. Then:

- $s_v$ is entire, $2\pi\mathbb Z^4$-periodic and invariant under signed permutations;
- on the complex cube, $|s_v(q_\ell)|\le C_j\prod_a(1+|\ell_a|)^{-j}$ at the aliases $q_\ell=(p+2\pi\ell)/M_v$;
- at real $p$ in the cube, $|s_v(p/M_v)|\ge c_j>0$.

Here $C_j,c_j$ do not depend on $v$, that is, on the number of hops or the block sizes.
*Sketch:* After $k$ further hops, a hop of dilation $M'$ is evaluated at the momentum scaled by $M'/M_v\le3^{-k}$. Lemma 4.2 gives factors $e^{\pm CM'/M_v}$, and these products converge. The last hop gives the alias decay, by 4.2(d) raised to the power $j$.
*Lean:* [`Train`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L22-L24), [`Train.smooth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L36), [`Train.bind`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L43-L48), [`Train.smooth_upper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L169-L184), [`Train.smooth_lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L186-L194).

### 4.2 Explicit metric data

**Lemma 4.4 (covariance of the averaged field).** For a history $v$ of dilation $M$ and a direction $a$, let $\chi_{v,a}(p)=s_v(p)\,\mathrm{rail}_M(p_a)$: box filters times the line average along $a$. For a momentum $p$ of the level lattice and $q_\ell=(p+2\pi\ell)/M$, define
$$D_a(p)=M^{-2}\sum_{\ell}\frac{|\chi_{v,a}(q_\ell)|^2}{|\tau(q_\ell)|^2}+\kappa^{-1}\sum_{v'}M_{v'}^{-2}\sum_{\ell'}|\chi_{v',a}(q'_{\ell'})|^2 .$$
The second sum runs over the proper final segments $v'$ of $v$ (the last $k$ hops, $0\le k<\#v$), with $q'_{\ell'}=(p+2\pi\ell')/M_{v'}$. The first term is the $n$-fold block average of a field with diagonal covariance $|\tau|^{-2}$. The second is the noise $\kappa^{-1}$ injected at each step, averaged by the later steps. For the empty history, $D_a=|\tau|^{-2}$.
*Lean:* [`Train.levelD`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L133-L134), [`Train.levelNoise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L131), [`feed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L62). *(definitions read; reading it as the covariance of the averaged field is probable)*

**Lemma 4.5 (the diagonal).** Let $\rho=\sum_a|\tau_a|^2/D_a$ and $D_{\mu\nu}=(\rho\,D_\mu D_\nu)^{-1}$; this is a multiplier diagonal in the plaquette orientation. Then, with $F=\mathrm{diag}(D_a)$,
$$\sigma_1^*D\,\sigma_1=F^{-1}-\rho^{-1}F^{-1}\tau\,\tau^*F^{-1}.$$
So $d^*Dd$ is the precision $F^{-1}$ minimised over gauge directions. For the empty history, $D=1$ (the Wilson quadratic form).
*Sketch:* Lagrange's identity $\sum_{\mu<\nu}w_\mu w_\nu|\tau_\mu x_\nu-\tau_\nu x_\mu|^2=(\sum_aw_a|\tau_a|^2)(\sum_aw_a|x_a|^2)-|\sum_aw_a\bar\tau_ax_a|^2$, with $w=1/D$.
*Lean:* [`rotor_law`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signal.lean#L103-L120), [`pulse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Heart.lean#L22), [`vault`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Heart.lean#L20), [`pink`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Curl.lean#L54), [`blue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Curl.lean#L55), [`top_metric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Heart.lean#L140-L155).

**Lemma 4.6 (filled symbols, uniform analyticity).** The poles cancel. With $|\tau_M|^2=\sum_aM^2|e^{ip_a/M}-1|^2$:
$$D_a=\beta_a/|\tau_M|^2,\qquad \rho=|\tau_M|^4h,\qquad D_{\mu\nu}=(h\,\beta_\mu\beta_\nu)^{-1}.$$
Here $\beta_a$ is the principal term $|\chi_{v,a}(p/M)|^2$ plus $|\tau_M|^2$ times the non-principal and noise terms, and $h$ is a finite combination of filters without poles. For each $j\ge4$ there are $\theta,C,c>0$ such that, for all histories of index $j$, $\beta_a$ and $h$ are analytic and bounded by $C$ on the complex cube of half-width $\theta$, and $|\beta_a|,|h|\ge c$ at real momenta. Hence $D$ and $D^{-1}$ lie in a common $\mathcal S(\alpha,\Omega)$, uniformly over histories of index $j$.
*Sketch:*

- Upper bounds: Lemma 4.3 summed over the aliases.
- Lower bound on $\beta_a$: its principal term (4.3 and 4.2(c)).
- Lower bound on $h$: from $|\tau_M|^2h=\sum_a|\tau_a|^2/\beta_a$ and $\beta_a\le C$.
- Inverses: a lower bound at real momenta plus an analytic bound gives a lower bound on a thinner complex cube, so the inverses stay analytic.

*Lean:* [`Train.bulb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L39), [`Train.bend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L43-L44), [`Train.pole_split`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L192-L201), [`Train.lift_bend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L88-L100), [`Train.recover_rho`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L150-L153), [`Train.bulb_firm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L160-L163), [`Train.bend_firm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L188-L194), [`heart_banked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Dispatch.lean#L40-L47), [`Moderate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Moderate.lean#L105-L106). *(proof read, except the alias-sum budget lemmas)*

**Lemma 4.7 (amended metric).** For $\lambda\ge0$, let
$$H^{-1}=D^{-1}+\lambda\,X^*X,\quad X=d_2D^{-1},\qquad \mathcal T_\lambda=(1+\lambda\,X d_2^*)^{-1}\ \text{on 3-forms}.$$
Then on every torus: $HH^{-1}=1$, $Hd=Dd$, $XH=\mathcal T_\lambda d_2$, and $H,\mathcal T_\lambda$ are symmetric. Moreover $\hat H(0)=1$, and $H,H^{-1},\mathcal T_\lambda,\mathcal T_\lambda^{-1}$ have strip bounds and two-sided bounds at real momenta, uniformly over histories of index $j$. The amendment changes $H$ only away from exact 2-forms, and leaves $d^*Hd=d^*Dd$ unchanged.
*Sketch:*

- $XDd=d_2d=0$, which gives $Hd=Dd$.
- $(1+\lambda Xd_2^*)X=d_2H^{-1}$, which gives $XH=\mathcal T_\lambda d_2$.
- $H^{-1}\ge D^{-1}\ge c$, which gives the two-sided bounds.

*Lean:* [`pledge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L30), [`amend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L31), [`bail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L32), [`treble`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L33), [`obligations`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L95-L127), [`pledge_warm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L41-L59), [`insurance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L78-L79), [`forced_amend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L80-L94).

**Lemma 4.8 (metric data of every history; III.3.1(a)).** Let $\kappa>0$, $\lambda\ge0$, $j\ge4$. There are $\gamma,\sigma,\eta,C>0$ with the following property. For every clip with $c\le\gamma$ and every history of index $j$, the explicit $D,D^{-1},H,H^{-1}$, together with $R$ the symmetric square root of $H-c\,1$, satisfy III.3.1(a).
*Sketch:*

- $\gamma$ is half the real-momentum lower bound of $H$, so $H-c\,1$ has two-sided bounds.
- III.6's square-root theorem gives $R\in\mathcal S$ with $R^*R=H-c\,1$ on every torus.
- Torus bounds follow from symbol bounds, since $\Lambda_n$ is diagonalised by the momenta $2\pi\mathbb Z^4/n$.
- The symmetry follows from Lemma 4.3.
- $D=1$ for the empty history by Lemma 4.5.

*Lean:* [`bid_bed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Ground.lean#L69-L120), [`Defined`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Ground.lean#L54-L58), [`full_cover`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Ground.lean#L22-L35), [`low_ceiling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Ground.lean#L37-L51), [`sworn_metric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signed.lean#L65-L70).

### 4.3 Transfer kernels of one flight

A flight of index $(j,t)$ consists of an odd block size $L\ge3$, a fine history $v$ of index $j$, and the coarse history (hop $(L,j)$ after $v$) of index $t\in\{j-1,j\}$.

**Lemma 4.9 (alias symbols and derivative bounds).** The explicit $W$ and $T$ of a flight are cross kernels; at this stage $M_f=M_n=O=0$. Their fibre at coarse momentum $p$ and fine residue $r$ is
$$L^{-e}\sum_\ell e^{iq_\ell\cdot r}w_e(p,\ell),\qquad e=1\ (W),\quad e=2\ (T),$$
with explicit per-alias symbols built from the filters and from $\beta_a,h$ of both histories. At the harmonic point $w_e(0,0)=1$ and $w_e(0,\ell)=0$ for $\ell\ne0$. For $j,t\ge4$, each $w_e(\cdot,\ell)$ is analytic on a complex cube of half-width $\theta$ and bounded by $C\prod_a(1+|\ell_a|)^{-j}$, uniformly over flights. Hence, for words $u$ with $|u|\le j-2$, $\nabla_uW\in\mathcal S(\alpha,CL^{-1-|u|})$ and $\nabla_uT\in\mathcal S(\alpha,CL^{-2-|u|})$.
*Sketch:* A fine difference in direction $a$ multiplies the alias term by $e^{i(q_\ell)_a}-1=O((1+|\ell|)/L)$. The sum $\sum_\ell(1+|\ell|)^{|u|}\prod_a(1+|\ell_a|)^{-j}$ converges for $|u|\le j-2$. In other words, the order $j$ of the smoothing pays for $j-2$ derivatives. Decay is measured on the coarse lattice, so the fine-lattice rate is $\alpha/L$.
*Lean:* [`Flight.duo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Primal.lean#L24-L29), [`Flight.pilot_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Docked.lean#L103-L110), [`Flight.ahead_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Docked.lean#L53-L71), [`Flight.wire_budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Cable.lean#L97-L103), [`secure_both`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Strands.lean#L30-L38), [`Secured.propels`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Strands.lean#L85-L107). *(proof read for the derivative argument and the assembly; per-alias budget lemmas: statement only)*

**Lemma 4.10 (exact identities for one flight).** Let $t\ge4$, and take any pair of tori with $f=cL$. Then (D1)–(D4) hold for:

- $W$, $T$ of the flight and $Q$ of the step;
- $D$, $D'$ the diagonals of the fine and coarse histories;
- $H$, $H'$ the amended metrics for any amendments $\ge0$.

*Sketch:*

- All operators commute with coarse translations. On the Bloch fibre over $p$, the identities become identities between per-alias symbols, for each alias $q=q_\ell$:
  - $(\sigma_1^*D\sigma_1)(q)\,W_\ell=h_1(q)^*(\sigma_1^*D'\sigma_1)(p)$, giving (D1);
  - $\sigma_1(q)^*T_\ell=h_1(q)^*\sigma_1(p)^*$, giving (D3);
  - $T_\ell D'(p)\sigma_1(p)=D(q)\sigma_1(q)W_\ell$, giving (D4);
  - the alias sum $\sum_\ell h_1(q_\ell)W_\ell=1-\kappa^{-1}(\sigma_1^*D'\sigma_1)(p)$, giving (D2).
- Here $h_r(q)=a_L(q)^j\prod_{a\in\text{face}}\mathrm{rail}_L(q_a)$ is the alias symbol of the $r$-form average. It intertwines the exterior derivatives at the two scales: $h_{r+1}(q)\,L\sigma_r(q)=\sigma_r(p)\,h_r(q)$, from $L\,\mathrm{rail}_L(q)(e^{iq}-1)=e^{iLq}-1$.
- The point $p=0$ is treated separately: the box filter vanishes at the non-principal aliases of $0$.
- The identities pass from the fibres to the tori through the alias-resolved Fourier transform.
- Replacing $D$ by the amended $H$ in (D1)–(D2) changes nothing, since $d^*Hd=d^*Dd$.

*Lean:* [`Flight.tangent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Primal.lean#L63-L118), [`diagonal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L44-L56), [`Flight.scaled_tri`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Primal.lean#L33-L49), [`hinge_transport`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signal.lean#L60-L63), [`ZeroAlias.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/ZeroAlias.lean). *(proof read for the assembly and the harmonic point; the identities at $p\ne0$ in `Scripts.lean`: statement only)*

### 4.4 The defect and the amendment

**Lemma 4.11 (unamended defect).** In the setting of 4.10, let $\mathcal V=D'^{-1}-T^*D^{-1}T-\kappa^{-1}dd^*$ on $\Omega^2(\Lambda_c)$. Then $D'\mathcal VD'$ is symmetric, and $D'\mathcal VD'd=0$ on every torus. Consequently there is an explicit symmetric 3-form kernel $C$, decaying uniformly over flights of index $(j,t)$, with
$$\mathcal V=(d_2D'^{-1})^*\,C\,(d_2D'^{-1})\quad\text{on every torus.}$$
*Sketch:*

- By (D4), (D3), (D2): $T^*D^{-1}TD'd=T^*dW=dQW=d-\kappa^{-1}dd^*D'd$. Hence $\mathcal VD'd=0$.
- A symmetric decaying 2-form kernel $A$ with $Ad=0$ on every torus equals $d_2^*Bd_2$, for an explicit decaying 3-form kernel $B$. This is a lattice Poincaré lemma for translation-invariant kernels, proved by an axis-by-axis contracting homotopy of the Koszul complex of $(e^{ip_a}-1)_a$.
- The hypothesis is needed on all tori, not on one: at a single period the harmonic (zero-momentum) forms obstruct the factorisation.

*Lean:* [`Flight.gap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Sell.lean#L33-L35), [`Flight.dep_zero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Sell.lean#L158-L187), [`Double.duplex`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lifts.lean#L121-L143), [`Flight.fund`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Sell.lean#L43), [`Flight.banked_dollars`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Sell.lean#L215-L227). *(proof read; the homotopy read at the level of its recursion)*

**Lemma 4.12 (amended defect: identity (Δ)).** Take fine amendment $\mu$ and coarse amendment $\lambda$. Then (Δ) holds on every pair of tori, with $P=\mathcal P_{\mu,\lambda}$ where
$$\mathcal P_{\mu,\lambda}=\mathcal T_\lambda^*\big(C+\lambda\,1-\mu\,S^*S\big)\mathcal T_\lambda .$$
Here $S$ is the 3-form transfer kernel of the flight, with $S\,d_2D'^{-1}=d_2D^{-1}T$, and $S^*S$ has strip bounds $O(L^{-2})$.
*Sketch:* Write $X=d_2D^{-1}$ and $X'=d_2D'^{-1}$. Then
$$H'^{-1}-T^*H^{-1}T-\kappa^{-1}dd^*=\mathcal V+\lambda X'^*X'-\mu\,T^*X^*XT .$$
Since $XT=SX'$, the last term is $-X'^*(\mu S^*S)X'$; with Lemma 4.11 the whole expression is $X'^*(C+\lambda-\mu S^*S)X'$. Conjugate by $H'$ and use $X'H'=\mathcal T_\lambda d_2$ (Lemma 4.7).
*Lean:* [`Flight.rebased`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L144-L181), [`Flight.rollFunds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L27-L29), [`Flight.render`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L23-L25), [`Flight.intake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Sell.lean#L136-L149), [`Flight.sale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Curl.lean#L90), [`Flight.netted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L34-L41), [`check_bleep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L57-L58).

**Lemma 4.13 (positivity; III.3.4).**
*Sketch:*

- The strip bound on $C$ bounds its entries at real momenta, so $C\ge-C_1$.
- $\mu S^*S\le\mu B/L^2\le1$.
- Hence $C+\lambda-\mu S^*S\ge1$ for $\lambda\ge C_0=C_1+2$.
- $\mathcal T_\lambda^{-1}=1+\lambda Xd_2^*$ has bounded entries, so $|x|^2\le W|\mathcal T_\lambda x|^2$, and $\hat{\mathcal P}\ge W^{-1}$.
- The upper bound and the strip bound follow from products of strip-bounded kernels.

*Lean:* [`Flight.absorb_before`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L58-L95), [`Flight.frontier`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L99-L140).

### 4.5 The catalogue

**Lemma 4.14 (III.3.1).**

- *One hop.* For each $(j,t)$ there is $\lambda_0(j,t)$ with the following property: for every coarse amendment $\lambda\ge\lambda_0$ and fine amendment $\mu\ge0$, there are rates, constants and an integer $b>\mu B(j,t)$ for which III.3.1(b) holds. The proof combines Lemma 4.13 with Lemma 4.9 at $e=1,2$.
- *Assembly.* Set $\lambda_j=\max(\lambda_0(j,j),\lambda_0(j+1,j))$: each stage's amendment acts as the coarse amendment of the hops $(j,j)$ and $(j+1,j)$, and as the fine amendment of $(j,j)$ and $(j,j-1)$. Then:
  - $\alpha_j$ is the minimum of the rates of the bottom quote (Lemma 4.8 with $\lambda_j$) and of the hops $(j,j)$, $(j,j-1)$;
  - $\Omega_j$ is the corresponding maximum, and $\eta_j$ the corresponding minimum;
  - $b_j=\max(b(j,j),b(j,j-1))$;
  - weaker constants are always admissible.
- The block size enters only through $b_j$, which guarantees $\lambda_jB\le L^2$. The code uses the stronger $L\ge b_j>\lambda_jB$.

*Lean:* [`buys`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L46-L65), [`pledges`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L67-L93).

### 4.6 Along a schedule: pre-repair, repair, output

**Lemma 4.15 (pre-repair family).** Let a trajectory satisfy the credit condition. Define:

- $\mathcal B^{N,i}$: the metric data of Lemma 4.8 for the history of level $i$ in mesh $N$, with the clip of level $i$ (allowed by (C1));
- $W^{N,i},T^{N,i}$: those of the flight of step $i$, of index $(J(i+1),J(i))$ (allowed since $J(i)\le J(i+1)\le J(i)+1$).

This family satisfies the pre-repair conditions of III.3.2(2):

- the bounds, from III.3.1;
- (D1)–(D4), from Lemma 4.10;
- (Δ), with $P$ the rolled kernel;
- the positivity of $P$, from III.3.1(b) and (C2).

*Lean:* [`shelves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L90-L120), [`stageHop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L64-L65), [`location`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L73), [`destination`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L74).

**Lemma 4.16 (repair; III.10 with III.6's theorems).** For every sheet and every table $X$ there is a table $X'$ with the following property. Every pre-repair family for $X$ (for a trajectory with the sheet's profile and kernel) has a repaired family with the same metric data and the same $W,T$, which satisfies the output conditions for $X'$. For step $i$ the construction is:

1. **F06** applied to $P$ from (Δ): a kernel $P_1$ with two-sided bounds at real momenta, a strip bound, and $d_2^*P_1d_2=d_2^*Pd_2$ on every torus.
2. **F07**: a symmetric decaying square root, $P_1=P_2^*P_2$.
3. **F08**: kernels with the same $W,T$ and
   $$M_f=V H^{-1}T\,V'^*,\qquad M_n=\kappa^{-1/2}d^*V'^*,\qquad O=\big(1-\Pi,\ P_2\,d_2H'^{-1}V'^*\big),\qquad \Pi=V'H'^{-1}V'^*,$$
   with the derivative bounds of III.3.2(3). The constants depend only on $X$, $\kappa$ and the sheet's clip coefficients.
4. **F09** (algebra) gives (R1)–(R6). Since $V'^*V'=H'$, $\Pi$ is the orthogonal projection onto the range of $V'$. Then:
   - (R1): $M_f^*M_f+M_n^*M_n+O^*O=V'(T^*H^{-1}T+\kappa^{-1}dd^*+H'^{-1}d_2^*P_1d_2H'^{-1})V'^*+1-\Pi=1$, by (Δ);
   - (R2) and (R4) follow from $V'^*V'=H'$;
   - (R3) follows from (D4) and $H'd=D'd$, $Hd=Dd$;
   - (R5) follows from $(1-\Pi)V'=0$ and $d_2d=0$;
   - (R6) follows from (D3).

The second table depends on the sheet only through the clip coefficients, which enter $V,V'$. Its floor constants $\eta$ are those of the catalogue.
*Lean:* [`Bid.pinning`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L107-L166), [`F06`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L84-L85), [`F07`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L90-L91), [`F08`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L93-L96), [`F09`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L99-L101), [`Replaces`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L53-L58). *(proof of the repair theorem read; the F09 algebra checked against the statements, its own proof not read)*

**Lemma 4.17 (III.3.2 and its variant).** The proof takes the catalogue (4.14), then the second table from the repair theorem with III.6's theorems (4.16), then the pre-repair family (4.15), then its repair. The explicit formulas and the symmetry carry over because the metric data and $W,T$ are unchanged. In the variant, the payment record of the schedule turns sheet-level bounds into (C1)–(C2). A preliminary sheet is handled by re-running the construction for a copy of the trajectory with the preliminary profile; this changes neither the histories nor the clip coefficients.
*Lean:* [`retained_support`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L134-L145), [`retained_presents`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L121-L126), [`before_paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Calendar.lean#L108-L124), [`credit_from_sheet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Calendar.lean#L95-L102).

### 4.7 All tori

**Lemma 4.18 (rigidity of decaying kernels).** Suppose two finite sums of products of decaying kernels, or of cross kernels of the same block size, define equal matrices on tori $\Lambda_{c_k}$ (respectively on pairs $(c_k,c_kL)$) with $c_k\to\infty$. Then they are equal on every torus (pair).
*Sketch:* Sums and products of decaying kernels are decaying kernels, so each side is a single kernel. A summable kernel is the limit of its periodisations as the period tends to infinity. The schedule sides of each step tend to infinity.
*Lean:* [`Echo.all`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Echo.lean#L77-L81), [`Echo.allAcross`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Echo.lean#L105-L116), [`Echo.Sound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Echo.lean#L38), [`Echo.schedule_sides`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Echo.lean#L118-L119). *(statement only for the underlying periodisation lemma)*

**Lemma 4.19 (III.3.3).**
*Sketch:*

- (R1)–(R5) are identities between finite sums of products of kernels, with $M_f$ and $W$ as cross kernels. Apply 4.18 on the schedule tori.
- (R6) contains $Q$. Given (D3) and (R2) at $(c,f)$, (R6) is equivalent to $(V\,d)^*M_f=d^*(T\,V'^*)$, which is again an identity between kernels.
- (D1)–(D4) at arbitrary $(c,f)$ follow by the same argument, because $Q$ is itself given by a cross kernel (III.10). They also follow directly from Lemma 4.10 for any family realising the explicit formulas.

*Lean:* [`complete_roll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Tori.lean#L109-L157), [`orthogonal_iff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Tori.lean#L87-L98), [`panes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Purl.lean#L20-L53), [`universal_diagonal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Tori.lean#L46-L60).

### 4.8 Free covariance of the curvature (III.3.6)

**Lemma 4.20 (lower bound).**
*Sketch:*

- $\sigma_1^*\sigma_1+\sigma_0\sigma_0^*=|\tau|^2\,1$ on 1-form symbols; this is $d^*d+dd^*=-\Delta$ in Fourier space.
- A firm $f$ has $\hat f(p)\ge\eta$ at every real $p$: the torus bounds give it at the frequencies $2\pi\mathbb Z^4/n$, and these are dense; conclude by continuity.
- Hence $\Phi_f\ge\min(\eta,1)|\tau|^2$.
- $|\tau(p)|^2\ge c_0|p|^2$ for $|p_a|\le3\pi/2$, since $e^{ir}\ne1$ for $0<|r|\le3\pi/2$ (compactness).

*Lean:* [`blade_id`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Core.lean#L41-L57), [`ion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Core.lean#L68-L79), [`real_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Floor.lean#L94-L100), [`tank_full`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Core.lean#L115-L125).

**Lemma 4.21 (smooth symbols).** This is III.3.6(c).
*Sketch:* Differentiate the Fourier series termwise and use $|y|^n\le(n/\alpha)^ne^{\alpha|y|}$.
*Lean:* [`radial_prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Plain.lean#L101-L133).

**Lemma 4.22 (comparison with the continuum).** This is III.3.6(b). Let $S^k(U)$ be the class of families with $\|\partial^ng\|\le C_n|p|^{k-n}$ on $U$, uniformly over the family. It is closed under sums and products, and under inverses of elements that are bounded below in the appropriate scaling.
*Sketch:*

- $\tau-ip\in S^2$ (Taylor at $0$), and $\hat f-1\in S^1$ (since $\hat f(0)=1$, and by Lemma 4.21).
- Hence $\Phi_f\in S^2$ and $\Phi_f-|p|^2\in S^3$.
- By (a) and the resolvent identity, $\Phi_f^{-1}\in S^{-2}$ and $\Phi_f^{-1}-|p|^{-2}\in S^{-1}$.
- Hence $G_f\in S^0$ and $G_f-G_\infty\in S^1$.

*Lean:* [`gem_quote`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Alloy.lean#L110-L120), [`Weight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Weight.lean#L39-L41), [`Value`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Gem.lean#L17). *(proof structure read; the symbol-class calculus: statement only)*

### 4.9 Calculus lemmas (III.3.7)

**Lemma 4.23.**
*Sketch:*

- **(a)** Split at $|x|_1=L$.
  - For $|x|_1\le L$: localised Newton remainder estimate, $\|p(x)-\sum_{i<k}P_i(x)\|\le M'(1+|x|_1)^k$ with $M'$ the bound on $k$-th differences.
  - For $|x|_1>L$: bound $p$ and the pieces directly, using $L^{-1-i}(1+|x|)^i\le L^{-1-k}(1+|x|)^b$ when $L^{-1}(1+|x|)\ge1$.
- **(b)** Substitute $z\mapsto\sum_vt^{Y_v}p_vz$ in the Taylor polynomial of $f$ and read off the coefficient of $t^m$. All weighted components of weight $\le d$ of every Taylor coefficient vanish. A component of weight $>d$ vanishes on the given inputs by the support condition.
- **(c)** Restrict to the links used by $X$ (locality), and apply (b) with the weights of the test-jet scaling.
- **(d)** $r=(j+2)^{-1}\sum_ax_aQ_a$ is homogeneous of degree $j+2$, and Euler's identity gives $\sum_ax_a(Q_a-\partial_ar)=0$.
- **(e)** On the unit ball, $\|g(sv)-g(0)\|\le s\|g(v)-g(0)\|+Q(1-s)\|v\|^2$ for the plaquette holonomy $g$ of four link variables (second-order Taylor bound). Hence the chord distance at $sv$ is at most $s\tau+(1-s)\tau$.

*Lean:* see III.3.7. *(proof read for (b), (d), (e) and the structure of (a), (c))*

### 4.10 Other packages in the closure

Three small packages are not free-kernel mathematics. They are placed here by the clustering; their consumers are elsewhere.

- `CORRECTED_LIFT_COEFFICIENTS`: coefficients of a corrected lift of observables ([`Screen.reproduces`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/CORRECTED_LIFT_COEFFICIENTS/Original.lean#L134-L146)). Consumed by the rank-covariance part of III.11, by VII.2 and by VII.4.
- `CUTOFF_PROJECTORS`: finite-dimensional orthogonal projections onto equation spaces and their spectral separation ([`spectral_bank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/CUTOFF_PROJECTORS/Bank.lean#L161-L169)). Consumed by the projector-calibration packages and by the physical-period limit (III.6).
- `GRID_RENEWED_RESERVES`: cost bounds at literal stencils ([`Speeds.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProofPorts/GRID_RENEWED_RESERVES/Speeds.lean)). Consumed by the remainder comparison (III.15, probable).



## 5. Where the difficulty lies

- **The content is uniformity, not the identities.** The identities are finite algebra. What a written proof must reproduce is that every strip bound depends only on the stage index $j$, uniformly over histories of any length and over all block sizes. The mechanism is in Lemmas 4.2–4.3:
  - geometric dilation along the history;
  - a lower bound on the principal alias, with an exponent linear in $M/L$;
  - $J$-fold smoothing, which gives $\prod_a(1+|\ell_a|)^{-J}$ alias decay and therefore $J-2$ derivatives on $W,T$.
- **Positivity is proved only at real momenta.** $|\tau|^{-2}$ is never estimated on a strip. Every symbol is put in a filled form (Lemma 4.6) whose denominators are bounded below at real momenta, and inverses are taken on a thinner complex cube. This replaces Balaban's position-space propagator bounds; a paper needs the corresponding Banach algebra of decaying kernels with analytic symbols.
- **Unusual features.**
  - The amendment $\lambda_j$ (Lemma 4.7) is not in Balaban's construction. It modifies the metric only off exact 2-forms, so $d^*Hd$ is unchanged, and it exists only to make the defect's 3-form factor positive.
  - $L$ enters the catalogue only through $\lambda_jB\le L^2$.
  - The second table depends on the sheet through the clip coefficients.
  - The factorisation of the defect (Lemma 4.11) needs the identities on all tori, because of the harmonic forms.
  - [`universal_diagonal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Tori.lean#L46-L60) is not in the main-theorem closure. There, the identities on all tori come from the output conditions by rigidity.
- **Units.** Decay is in the $\ell^1$ norm, on the lattice where the kernel acts. For $W,T,M_f$ that is the coarse lattice, so the fine-lattice rate is $\alpha/L$, with amplitudes $L^{-1}$, $L^{-2}$ and an extra $L^{-1}$ per fine difference. These are the scalings of Balaban's background field: smooth on scale $L$.
- **Statement strength.** III.3.2 is an existence statement whose output is a package of bounds and identities. Downstream units consume (R1)–(R6), the floors and the strip bounds. The positivity of $P$ is not part of the output.

## 6. Notation

| Written proof | Lean (glossary) | Meaning |
|---|---|---|
| $R$, $\hat R$, $R_n$; $\mathcal S(\alpha,\Omega)$ | [`Row`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L22), [`Row.strip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L26) | translation-invariant kernel, symbol, action on $\Lambda_n$; strip bound |
| cross kernel | [`Cross`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L26), [`installed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L35) | coarse-to-fine kernel and its action |
| $\mathrm{plank}_M,\mathrm{rail}_M,a_L,a_L^J$ | [`plank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L38), [`rail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L34), [`area`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L18), [`massFilter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L23) | line, box and $J$-fold box filters |
| history $v$, dilation $M_v$, filter $s_v$ | [`Train`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L22-L24), [`Train.smooth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L36) | finite history of block averages |
| flight of index $(j,t)$ | [`Flight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signal.lean#L22-L29), [`Flight.land`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signal.lean#L35) | one step: block size, fine history, coarse history |
| $D_a$; $\rho$; $\beta_a$, $h$ | [`Train.levelD`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L133-L134); [`Train.rho`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L46); [`Train.bulb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L39), [`Train.bend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L43-L44) | 1-form covariance; gauge factor; filled symbols |
| $D$, $D^{-1}$ | [`pink`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Curl.lean#L54), [`blue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Curl.lean#L55) | diagonal 2-form multiplier, inverse |
| $H^{-1}$, $H$; $\mathcal T_\lambda$; $\lambda$ | [`pledge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L30), [`amend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L31); [`treble`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L33) | amended inverse metric, metric; 3-form factor; amendment |
| metric data $\mathcal B$, $V$ | [`Bed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L35-L40), [`Bed.full`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L49-L51), [`Floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68) | $(D,D^{-1},H,H^{-1},R)$; $V=(\sqrt c\,1,R)$ |
| transfer kernels $(W,T,M_f,M_n,O)$ | [`Towers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L70-L75) (`A0`, `T`, `mf`, `mn`, `o`), [`Flight.duo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Primal.lean#L24-L29) | background-field map, curvature transport, isometry blocks |
| (D1)–(D4); (R1)–(R6); (Δ) | [`Towers.Diagonal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L82-L86), [`Inputs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L76-L79); [`Towers.Roll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L88-L96); [`Bleeps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L32) | identities of one step |
| $C$, $S$, $\mathcal P_{\mu,\lambda}$ | [`Flight.fund`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Sell.lean#L43), [`Flight.sale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Curl.lean#L90), [`Flight.rollFunds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L27-L29) | unamended 3-form defect, 3-form transport, rolled 3-form kernel |
| derivative bounds | [`Donate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L21-L22), [`Towers.Deep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L111-L114) | $\nabla_u$ bounds with $L^{-1-|u|}$, $L^{-2-|u|}$ |
| positive on $\mathrm{ran}\,\sigma_2$; two-sided at real momenta | [`Reaches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L34-L36), [`Funds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L38-L40) | positivity conditions on 3-form kernels |
| kernel family; pre-repair; output conditions | [`Horizon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L119-L121); [`Craft.Rack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L63-L73); [`Horizon.Suffices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L132-L139) | metric data and transfer kernels for all $(N,i)$ |
| explicit formulas; credit condition | [`Present`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L82-L85); [`Credit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L87-L88) | (III.3.2(1)); (C1)–(C2) |
| catalogue; price table | [`Catalog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L29-L33); [`MapPrices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L123-L128) | constants fixed before $L$ |
| hypercubic symmetry of $d^*Hd$ | [`Bid.Sworn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55) | invariance under signed permutations |
| firm kernel; $\Phi_f$; $G_f$; $G_\infty$ | [`Firm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Floor.lean#L17-L21); [`fuel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Core.lean#L62); [`garnet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Alloy.lean#L15); [`pearl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Alloy.lean#L17) | curvature covariance, lattice and continuum |

## 7. Open points for the writer

1. **Per-alias formulas.** The explicit symbols of $W$ and $T$, and the per-alias identities at $p\ne0$ (`Pilot.lean`, `Wire.lean`, `Scripts.lean`), were read only as statements. So were the alias-sum budget lemmas behind Lemmas 4.6 and 4.9. A written proof must give the closed forms of $w_1,w_2$; their derivation from Lemma 4.5 and the intertwining relation is the computational core of Lemma 4.10.
2. **Interpretation of Lemma 4.4.** The Lean defines $D_a$ by the formula given. Its reading as the covariance of the block-averaged Feynman-gauge field is not stated there. Check it against III.1 (the value identity [`action`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L93-L103)) and III.4. (probable)
3. **Downstream use of the isometry.** The orthogonal splitting in §1 follows from (R1)–(R6) and (D2). How $M_f,M_n,O$ enter the change of Gaussian variables should be checked in III.4 and III.10.
4. **Constants of the factorisation.** The decay constants of the factorisation in Lemma 4.11 (the contracting homotopy) and the rigidity lemma behind 4.18 were not traced.
5. **Symbol-class calculus.** The calculus in [`Gem.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Gem.lean) and [`Weight.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Weight.lean) was not read. The name of the package is not explained in the code.
6. **III.3.7(c).** The precise moment spaces in (c), and the files `Powers.lean`, `Mediator.lean`, `Pattern.lean` of the same package, were not read. (tentative)
7. **Placement of the auxiliary packages.** The three packages of §4.10, and III.3.6–III.3.7, belong mathematically with their consumers (III.11, III.10, VII.2, VII.4, III.15). Their placement here is an artefact of the clustering of the Lean source.

**Builds on:** [I.1](I-1.md), [III.16](III-16.md), [III.1](III-1.md), [III.6](III-6.md), [II.1](II-1.md), [III.10](III-10.md), [IV.1](IV-1.md), [III.2](III-2.md).

**Used by:** [III.2](III-2.md), [III.13](III-13.md), [III.6](III-6.md), [III.11](III-11.md), [III.10](III-10.md), [III.4](III-4.md), [III.14](III-14.md), [VII.2](VII-2.md), [III.9](III-9.md), [VII.1](VII-1.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| work package [`YM/Next/FREE_KERNELS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS) | 5,450 |
| work package [`YM/MultiNext/SIGNED_SOURCE_CONTINUATION/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION) | 1,674 |
| work package [`YM/Further/FREE_COVARIANCE_KP/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP) | 924 |
| work package [`YM/UVNext/PRICED_KERNELS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS) | 533 |
| work package [`YM/Further/CORRECTED_LIFT_COEFFICIENTS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/CORRECTED_LIFT_COEFFICIENTS) | 248 |
| work package [`YM/Push/CUTOFF_PROJECTORS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/CUTOFF_PROJECTORS) | 139 |
| work package [`YM/ProofPorts/GRID_RENEWED_RESERVES/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProofPorts/GRID_RENEWED_RESERVES) | 30 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **III.3.1** [`Flight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signal.lean#L22-L29) *(numbered result)* — A structure packaging one orientation of a hop with two stage indices.
- **III.3.2** [`capital`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/TownHall.lean#L31-L90) *(numbered result)* — Under a drift hypothesis, the first k binomial pieces and the tail are bounded with powers of inverse L, polynomial in size.
- **III.3.3** [`cancel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Weighted.lean#L120-L147) *(numbered result)* — For a weighted-graded function, mixed derivatives at the origin vanish when total order is within the degree and each input has lower weight than its grade requires.
- **III.3.4** [`principal_plank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L162-L196) *(numbered result)* — A lower bound on the norm of a plank factor at real argument, of exponential form in the ratio M/L.
- **III.3.5** [`strings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Safeguard.lean#L148-L177) *(numbered result)* — If a radial endpoint configuration with small increments is healthy at threshold τ, then all rescaled configurations along the ray are healthy.
- **III.3.6** [`locale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Averaging.lean#L84-L114) *(numbered result)* — A positive-degree homogeneous family splits into a Taylor radial jet plus a gradient of a homogeneous function.
- **III.3.7** [`pilot_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Docked.lean#L103-L110) *(numbered result)* — A per-alias decay bound for the pilot kernels on the cube.
- **III.3.8** [`frontier`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L99-L140) *(numbered result)* — There exist constants such that for large scale ratio the strip estimate holds and, when mass is small relative to L squared, the funds condition holds with uniform constants.
- **III.3.9** [`wiped`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/PMOM.lean#L43-L61) *(key result)* — For a local gauge-invariant function vanishing on test jets to order b, mixed derivatives at the identity of total order up to b with screened direction constraints vanish.
- **III.3.10** [`retained_support`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L134-L145) *(main result)* — For any kernel choice there exist uniform catalog constants such that for every sheet and compatible levels, a horizon with the rack, retention, sufficiency and sworn properties exists, with prices fixed before the length.
- **III.3.11** [`complete_roll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Tori.lean#L109-L157) *(key result)* — If a horizon suffices for the map prices, then the all-period output holds at every scale step from c to f along the block structure.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

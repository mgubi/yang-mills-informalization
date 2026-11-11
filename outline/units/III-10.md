# III.10. One full nonlinear renormalization step: bounds on irrelevant terms

*Part III — Ultraviolet construction (renormalization group).* 49,448 lines of Lean in 5,929 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is **checked** against the Lean and rewritten by a second model; a final editing round is in progress. It is updated as it improves.


**Part:** III, Ultraviolet construction (renormalization group). **Lean:** [`YM/Work/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work) (items E01–E09, H01–H04, I01–I04), [`YM/Bid/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid), [`YM/Next/FLUCTUATIONS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS), [`YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6), [`YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP), [`YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD), [`YM/Pressure/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure) (definitions). **Size:** 49,448 lines in the main-theorem closure. About 38,800 of them are in the connected-activity and repeatable-step folders, 11,400 in `YM/Work/` (only part of which belongs here), 3,700 in the joint endpoint load, 1,700 in `FLUCTUATIONS` and 1,050 in `YM/Bid/`.

**Conventions.** Levels are indexed from coarse to fine, as in III.9.
- *Step and couplings.* One step $S$ goes from a fine torus of side $f=cL$ to a coarse torus of side $c$, with odd block factor $L\ge3$. The code writes $x$ for the coarse reference coupling $\hat\beta_m$. The fine coupling is $\beta_F=x+b_G\log L=\hat\beta_{m+1}$ ([`clock_next`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Intake.lean#L67-L70)), where $b_G>0$ is the one-loop slope of III.9.
- *Thresholds, radius and cutoff.*
$$t_c(x)=x^{-1/2}e^{(\log\log x)^2}\ \text{(coarse field)},\qquad t=t_c(\beta_F)\ \text{(fine field)},\qquad T=\beta_F^{-49/100}\ \text{(large field proper)},$$
  with cluster radius $B=\lceil(\log x)^2\rceil$ and path-length cutoff $R=\lfloor B/10^5\rfloor$.
- *Sizes.* Since $e^{(\log\log\beta)^2}=\beta^{o(1)}$, we have $t=\beta_F^{-1/2+o(1)}\ll T$. On the other hand $\beta_Ft^2=e^{2(\log\log\beta_F)^2}$ grows faster than every power of $\log\beta_F$.
- *Field sizes.* $\chi(g)$ is the chordal distance from $g\in G$ to $1$. For a plaquette $p$, $|U_p|=\chi(U_{\partial p})$. For a coarse bond $b$, $w_b=\chi(V_bQ_b^{-1})$ measures how far the coarse field $V$ is from the block-spin predictor $Q=Q(U,k)$ of the fine field $U$ with gauge-fixing tags $k$ (III.1).
- "For all large $x$" means for $x\ge x_0$, with $x_0$ independent of the period and of the volume.

## 1. What this unit proves

The unit does not construct the effective actions; that is III.9, with III.5–III.8. It proves the estimates on one nonlinear block-spin step that the construction consumes:
- a deterministic lower bound on the action gap of the step near large-field regions (III.10.1);
- bounds on the activities produced when the fluctuation field is integrated out, and on all their derivatives in the coarse field (III.10.2, III.10.3);
- bounds on the Gaussian sector of the step (III.10.4);
- the numerical schedule under which these estimates hold at every level (III.10.5).

III.10.6 collects two groups of auxiliary items (start-up fusion and markers) that are assigned to this unit. Every analytic statement has the same quantifier order: first the block factor $L\ge L_0$ (all earlier constants are "pre-$L$"), then the aisle multiplier $W\ge W_0(L)$, then $x\ge x_0(L,W,\dots)$. In the code, "price", "bill", "grant" and "cash" are numerical bounds (glossary, item 1).

**Data of a step.**
- *Request.* A request $P$ ([`Teller`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L89-L96)) consists of:
  - kernel choices $K$, with penalty $a>0$ and cuts;
  - a fine stage and a coarse stage, each with clip constants $\alpha,\lambda,\rho>0$ satisfying $\lambda<\alpha/16$ ([`Clip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139-L146)), a path width and a path budget;
  - a step index $j$ and constants $\eta>0$, $C$.
- *Tube.* A tube $T$ ([`Tube`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L94-L99)) carries the towers $\Phi,\Phi',N$ and the fine and coarse path data. $\Phi$ maps coarse plaquette coordinates to fine plaquette coordinates; $\Phi'$ maps them to coarse-bond ("interior") coordinates; $N$ maps them to gauge coordinates.
- *Admissibility.* A step with tube $(S,T)$ is admissible for $P$ ([`Teller.Funds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L101-L109)) if:
  - $S$ uses $K$ and index $j$;
  - the patch is well posed ([`Branches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185): unique minimizers for the frame and predictor problems, and nonempty axial tags);
  - the towers decay at rate $\eta$ with constant $C$;
  - the clips and path budgets are those of $P$;
  - the towers satisfy the exact identities [`Towers.Roll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L88-L96), among them the resolution of the identity
$$\Phi^*\Phi+\Phi'^*\Phi'+N^*N=1.$$

**Seeds.** A store $A=(A_F,A_I,A_\flat)$ ([`Stores`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L34-L37)) is a finite set of fine plaquettes ("costs"), coarse bonds ("aisles") and coarse sites ("flags"). $\sharp A$ is its total cardinality, and $D_r(A)$ is the coarse $r$-neighbourhood of the positions of the seeds. $A$ is *consistent* with $(U,k,V)$ at $(x,W)$ ([`Plot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L51-L58)) if the following hold on $D_{5B}(A)$:
- $p\in A_F\Rightarrow |U_p|\ge t/4$, and $p\notin A_F\Rightarrow|U_p|\le t/2$;
- $b\in A_I\Rightarrow w_b\ge Wt$, and $b\notin A_I\Rightarrow w_b\le 2Wt$;
- $A_\flat$ is exactly the set of sites flagged by $V$ at threshold $t_c(x)$;
- the tags $k$ have positive weight.

Nothing is assumed outside $D_{5B}(A)$. The *spent* seeds $A^{\rm sp}$ are the costs with $|U_p|>T$ and the aisles with $w_b>T$.

**Action gap.**
- *Clipped density.* For a stage with clip $(\alpha,\lambda,\rho)$ and threshold $s$, the clipped density of a plaquette is $\phi_s(|U_p|)+\mathbf 1_{\rm kept}\tfrac12|\ell_p(U)|^2$ ([`crown`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L68)). Here:
  - $\phi_s(r)=\alpha r^2/2$ for $r\le s$ and $\phi_s(r)=\lambda sr$ for $r>s$ ([`clipped`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L218-L219));
  - $\ell_p(U)$ is the path series of the stage, cut at length $R$;
  - "kept" means $|U_q|\le s\,e^{{\rm dist}(p,q)/\rho}$ for all $q$ ([`kept`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L210-L211)).
- *Actions.* $\mathcal A_F(U)$ is the fine clipped action (fine stage, threshold $t$) and $\mathcal A_c(V)$ the coarse one (coarse stage, threshold $t_c(x)$).
- *Step functional.* $\mathcal E_A(U,V)$ ([`assessed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L85)) is the sum of the row contributions of Lemma 4.1 over the rows located in $D_{2B}(A)$. Summed over all rows of the torus, the same contributions give exactly
$$\mathcal A_F(U)+\frac a2\sum_b w_b^2-\mathcal A_c(V).$$
  So $\mathcal E_A$ is the action gap of the step (fine action, plus block-spin penalty, minus coarse action), localized near the seeds.

**Proposition III.10.1 (energy per seed).** Let $P$ be a request. There is $L_0$ such that for every block factor $L\ge L_0$ there is $W_0(L)$ such that for every $W\ge W_0$ there is $x_0$ with the following property. Take $x\ge x_0$ and:
- a step $S$ of block factor $L$ with coarse side $c\ge100(1+B)$, and a tube $T$ admissible for $P$;
- a spanning forest $F$ of the block structure, and a fine field $U$ equal to $1$ on the trunks of $F$;
- a store $A$, tags $k$ and a coarse field $V$ such that $A$ is consistent with $(U,k,V)$ at $(x,W)$.

Then
$$\kappa\,t^2\,\sharp A\;\le\;\mathcal E_A(U,V),\qquad \kappa=\tfrac12\min\{\lambda_F/8,\ a/32,\ \alpha_c/64\},$$
where $\lambda_F$ is the linear clip constant of the fine stage and $\alpha_c$ the quadratic clip constant of the coarse stage.

*Status:* theorem, with no hypotheses.
- The Lean statement ([`Teller.cash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L124-L125), [`Teller.Grants`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L129-L131)) asserts only some $\kappa>0$ chosen after $L$ and $W$. The value above is the one the proof produces (Lemma 4.14), and it is independent of $L$ and $W$.
- The docstring calls the bound "energy per seed, before tails in output channels … not enough to start expansion". It is the deterministic input of III.10.2, which adds the Gaussian tails.

*Lean:* proved by [`Fluctuations.grants`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L24). This is [`Integrated.pressure_grants`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L222-L225) applied to [`Fluctuations.bare`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Bare.lean#L64-L120), through [`Bid.issues`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L155-L158).

**Proposition III.10.2 (activities of one step).** Let $P$ be a request and $\mathcal T$ target data ([`Target`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/OptionCost.lean#L62-L76)): constants $\varepsilon,\delta>0$, $e\ge0$, a rate $r\in(-\tfrac12,0)$, a halo $h\ge500$ and a local exponential chart of $G$, with $4\varepsilon$ below the support exponent of the fine stage and $8\varepsilon$ below both stage widths.

There is $L_0$ such that for every $L\ge L_0$ and every large $W$ there is $\mu>0$ with the following property. For every patch $D$ of block factor $L$ satisfying `Branches` there are window constants $o$ ([`Target.Order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L33-L46): a decay rate, a spectral gap, a shell width $K$, a Lipschitz constant $\gamma$, a drift cap, a plateau $a_o$ and a trigger level $\xi$) and a constant $C\ge0$ such that the following holds for all large $x$, every step $S$ on $D$ with $c\ge100(1+B)$ and every tube admissible for $P$ ([`Works`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Room.lean#L25-L28)).

- (a) The conclusions [`GrantBodies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L51-L71) hold:
  1. the bound of III.10.1 holds at this $x$ with constant $\mu$ ([`PointCharge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L29-L32));
  2. on small-field bonds every fine link lies within $Kt$ of the replicated coarse link, and the Lie logarithm is reliable at that radius ([`ShellAccess`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Coat.lean#L25-L29));
  3. in every sector whose flags are the actual flags of $V$ ([`manifest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Currents.lean#L21)), the Hessian of the fluctuation integral is symmetric, has exponentially decaying rows and a spectrum bounded below, and its windowed inverse is positive definite ([`Rotator`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Shutter.lean#L110-L117));
  4. the stationary drift is at most ${\rm cap}\cdot t$, and at sites farther than $30B$ from the seeds a fluctuation inside the Gaussian window creates no new seed (tags of mass one, $|U_p|<t/4$, $w_b<Wt$);
  5. numerical margins hold ($4a_ot$ is below the chart radius, and two series in $B$ sum to less than $1$).
- (b) The conclusions [`Invoices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L73-L88) hold for every tube satisfying the free-kernel compatibility condition [`Stamp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Voyage.lean#L25-L27), and for every input representation $K$ of the fine-level density as in [`Intake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Intake.lean#L42-L49). The input has coupling $\beta\in[\beta_F/2,2\beta_F]$, the path data and clips of $T$, cluster radius $B(\beta_F)$, and activities obeying the incoming bounds of III.9: $E$-norm $\beta_F^{-11/10}$, $K$-norm $e^{-M^{1/5}}$ and loop budget $2M$, where $M$ is the fine monitor. The conclusions are:
  1. the cost record with gain $\beta\mu t^2$ per seed and spend $C\,{\rm bill}(x)^5$, where ${\rm bill}=1+B+(\log\beta_F)^2$, passes the tree-graph summability test [`Buy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L47-L58);
  2. the letters of the new gas carry weights $k_i,y_i,E$ satisfying a rooted Kotecký–Preiss condition with exponent $\varepsilon$ and total $\beta_F^{\,r}$ ([`Sales`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Weights.lean#L27-L29)). The letters are the forced activities of $K$, the logarithmic letters, and the warning letters;
  3. in every manifest sector, the following bounds hold:
     - the old activities are bounded by $k_i$;
     - the logarithmic letters $\ell_i$ and the differences $e^{\ell_i}-1$ are bounded by $y_i$;
     - every packet weight satisfies $|{\rm Pack}|\le\exp\big((C\,{\rm bill}^5-\beta\mu t^2)\,\sharp A\big)$ ([`Pack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Revenue.lean#L23-L24));
     - for every set $v$ of warning sites, the Gaussian measure of the catastrophe set is at most $E^{\sharp v}$. The catastrophe set consists of the fluctuations $z$ for which, near each site of $v$, some coordinate within distance $2B$ satisfies $|z_j|\ge\xi t\sqrt\beta$. Every fluctuation that triggers the warnings on $v$ lies in that set.

*Status:* theorem. The target data, the input representation and `Stamp` are hypotheses; they are supplied along the RG trajectory (III.9).
- *Quantifier order:* $L_0$, then $W$, then $\mu$ (uniform in $D$), then $(o,C)$ for each patch, then $x$.
- *Size of the per-seed factor.* Since $\beta\mu t^2\ge\frac\mu2e^{2(\log\log\beta_F)^2}$ and ${\rm bill}^5=O((\log\beta_F)^{10})$, the factor $e^{C{\rm bill}^5-\beta\mu t^2}$ is eventually smaller than every power of $\beta_F$.

*Lean:* [`Target.issue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L94-L185). [`Target.quotesTogether`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/IssuePlan.lean#L53-L69) repackages the output as the bundle [`Cash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Batch.lean#L82-L97) (the `Invoices` together with witnesses for the letter weights).

**Proposition III.10.3 (derivatives of the new activities).** Let $P$ and $\mathcal T$ be as in III.10.2. There is $L_0$ with the following property. Fix:
- $L\ge L_0$ and a patch $D$ satisfying `Branches`;
- a jet order $i$, a sector type $\chi$, $W>0$, $\mu>0$ and window constants $o$;
- chart constants $(A,f)$ satisfying the condition `Canary`;
- a nonnegative function $\mathcal V$ of rate $-\tfrac12$.

Then there are $C\ge0$, a function $q$ of rate $-\tfrac12$, functions $r,p$ of rate $0$, and $l\in\mathbb N$ such that the following holds for all large $x$, every step on $D$ satisfying `Stamp`, every fine representation $R$, and every bundle $H$ of conclusions of III.10.2 at $(W,x,\mu)$ (`Cash`). We have $8a_ot\le A/2$, and there is a structure $\Xi$ ([`Utopia`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Das.lean#L27-L46)) with:
- letter weights satisfying the Kotecký–Preiss condition of III.10.2(b) with total $\beta_F^{\,r}$, and catastrophe probabilities at most $({\rm rad}^2)^{\sharp v}$;
- jet bounds. Take any finite-dimensional family of coarse fields whose link matrices have $m$-th derivatives at most a constant times $\mathcal V(x)^m$ ([`Mode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Tint.lean#L21-L23)). Along it, every letter of the new gas in a healthy region has $m$-th derivatives at most ${\rm cost}_i\,(r(x)\,{\rm span}_i)^m$ for $m\le i$ ([`Brush`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Brush.lean#L44-L47)).

The structure also satisfies the integrated bound [`Herd`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Daisy/Charm.lean#L48-L55). For every connected molecule $p$ of letters in a healthy, unflagged region, the $i$-jet in the coarse field of the molecule integrand is bounded pointwise in the fluctuation $z$ by some $g(z)$ with
$$\int g\,d\gamma\le|p(x)|\prod_{i\in p}{\rm fare}_i\,(1+{\rm shape}(p))^l,$$
where $\gamma$ is the Gaussian fluctuation measure. The same holds for molecules that carry one marked source letter.

*Status:* theorem. This is the form in which the step's irrelevant part, with all derivatives up to order $i$, reaches the per-step construction of the RG run (see §7).

*Lean:* [`Utopia.whittle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Das.lean#L49-L102) (the `Utopia` part, same quantifiers), [`timing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Daisy/Charm.lean#L58-L179) (with `Herd`). [`Captain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Captains.lean#L27-L36) and [`rocketsC`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Daisy/Sparks.lean#L36-L61) add jet control along moving directions (the field scale grows by $q$ per derivative).

**Proposition III.10.4 (Gaussian sector of the step).** Let $D$ be a patch satisfying `Branches`, $Q$ a request, $B_0>0$ an aperture, $\chi$ a sector type, and $k,p\in\mathbb N$. There are constants $\sigma>0$, $d>0$ and $\pi\ge1$ ([`Charges`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Costs.lean#L34-L42)) with the following property. Take all large $x$, all $\beta\in(0,2\beta_F]$, every budget point of power $p$ and threshold $t_c(x)$, every step on $D$ with $c\ge100(1+B)$ admissible for $Q$, every store $A$ whose flags are those of $V$, every forest and all tags. Consider the Gaussian integral over the fluctuation field with $A$ frozen, at radius $B_0t$ ([`Value`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Costs.lean#L60-L74)). Then:
- its Hessian $\Gamma$ and the approximate inverse $\tilde\Gamma$ are positive definite;
- the sector mean equals the stationary log-mean;
- in directions $|A_e|\le t_c(x)(1+{\rm dist}(e,o))^p$, all derivatives in $V$ of order at most $k$ satisfy
$$|D^k\Gamma_{ij}|\le\pi e^{-\sigma{\rm dist}(i,j)},\quad |D^k(\Gamma\tilde\Gamma-1)_{ij}|\le e^{-dB}\pi e^{-\sigma{\rm dist}(i,j)},\quad |D^km_i|\le\pi t,\quad |D^kh_i|\le e^{-dB}\pi,$$
  each with an extra factor $(1+{\rm dist}(i,o))^{pk}$. Here $m$ is the stationary mean and $h=-g^{-1}\times$(residual of the stationarity equation).

*Status:* theorem. [`JointLoad.stage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Supply.lean#L72-L98) adds a covariance cap and a Gaussian trigger-tail bound.

*Lean:* [`JointLoad.capital`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Costs.lean#L92-L157).

**Proposition III.10.5 (schedule).**
- (a) Let $P$ be a sheet of pre-$L$ data (III.2) and $K$ a price map. There are floors $k_i$ with the following property. Take block factors $L_i\ge k_i$, any protection, any delays $V$ and any $m\ge0$. Then there are delays $W$, differing from $V$ only by larger entry couplings $\beta^*_i$, and numbers $F_{ij}\ge m$, such that for every pair of adjacent stages $j\le i\le j+1$ the bound of III.10.1 holds at every coarse coupling $x\ge\beta^*_i$, for the request with fine stage $i$ and coarse stage $j$, with block factor $L_i$, aisle multiplier $F_{ij}$ and some $\mu_{ij}>0$ ([`Ringing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L161-L163)).
- (b) If $G$ is simple, then for every window datum of III.2 (`Wait`) there is a level schedule that meets all requirements of III.2 ([`Paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162)) and whose periods are divisible: for every side $c$ and every $z$ there is a period index $p\ge z$ with $c\mid{\rm period}(p)$.
- (c) Along a schedule built from (a), at level $m$ and $x=\hat\beta_m$, one has $\mu\,t_c(\hat\beta_{m+1})^2\,\sharp A\le\mathcal E_A$ for all admissible data.

*Status:* theorems. Part (a) is unconditional ([`pressure_pricing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L32-L37) applies [`Bid.pricing_order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L173-L202) to III.10.1). Divisibility is what lets torus tilings fit in III.12–III.13.

*Lean:* [`Wait.engine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L26-L135), [`notation_ticket`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L166-L181).

**Proposition III.10.6 (start-up fusion H01–H04; markers I01–I04).**

(H) *Setting.* Fix a budget point and:
- a *pipe* $X$: regular and forced addresses, and supports of logarithmic letters;
- a *tap* $d$: regular activities, forced activities $K_i$ and logarithmic letters $\ell_i$.

The *fused* gas ([`fused`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L78)) groups the forced activities and the factors $e^{\ell_i}-1$ into connected clusters (pellets). Each pellet contains at least one forced activity, and the forced supports in a pellet are pairwise disjoint.

*Hypotheses.*
- $d$ is *digested* ([`Digests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L81-L90)): the gas is valid, and each $\ell_i$ vanishes on healthy configurations and is dominated, gauge invariant, local and translation covariant.
- $d$ is *bought* with constants $\kappa,\gamma$ ([`Buys`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L94-L98)): $|K_i|\le e^{-\kappa}f_i$ and $|e^{\ell_i}-1|\le f_i$, where $f$ satisfies a rooted Kotecký–Preiss condition of total $\gamma$ and $(2B+1)^4\gamma\le1$.

*Conclusions.*
- (H01) For every configuration $V$, the fused gas equals the original gas times $\exp(\sum_i\ell_i(V))$.
- (H02) The fused activities satisfy the $K$-bound with any price $v\ge e^{-\kappa}(e^\gamma-1)$.
- (H03) The fused system is a forced family and admits the lattice-symmetry moves.
- (H04) If the tap varies continuously, with uniform bounds, along a parameter set, then the fused representation is a continuous curve.

(I)
- (I01) Let $B\ge8$, let $F$ be a set of at least two markers with pairwise separation at least $B^2$, and let $F\subset H$. Then $B\,\sharp F\le64\,N_B(H)$, where $N_B$ is the number of $B$-balls needed to cover $H$.
- (I02) Given I01, marker bands whose stubs hold at level $r>0$ are radial with weight $r/({\rm order})!$.
- (I03) For a family with tabs and $k\ge1$, the marker work items hold at all open stop levels: centring, alignment, and separation at least $k\,B_r^2$ between distinct camps at every level $r$ of the window.
- (I04) Assume $G$ is simple, $p>0$, and ${\rm order}_i!\le{\rm columns}_i$ for all $i$. Then the widths
$$w_i=\frac{\hat\beta_i^{\,r}}{p\,{\rm columns}_i\prod_{m<i}{\rm columns}_{m+1}}$$
  are positive, and for every $\varepsilon>0$ eventually $5-\log(w_i/{\rm order}_i!)\le\varepsilon\,{\rm scale}_i$.

*Status:* theorems. In the main-theorem closure:
- H01–H04 are used by the start-up representation of the finest level (`Progress.DirectedRecipe`, `Repeat.Marlin`);
- I01, I03 and I04 are used by the marker constructions in `FullVolume`, `MergeProof` and `Next.Rank`;
- the assemblies [`Oust.begins`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L56-L66) and [`Bid.installs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Fuels.lean#L146-L174) are not in the closure.

*Lean:*
- Statements: [`H01`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L15-L16), [`H02`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L20-L21), [`H03`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L23-L24), [`H04`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L33-L35), [`I01`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Fuels.lean#L124-L126)–[`I04`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Fuels.lean#L140-L142).
- Proofs: [`H01.gathered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H01.lean#L245-L251), [`H02.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H02.lean#L17-L80), [`H03.fused_forcedFamily`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H03.lean#L138-L209), [`H04.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H04.lean#L155-L161), [`I01.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I01.lean#L19-L82), [`I02.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I02.lean#L159-L180), [`I03.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I03.lean#L43-L63), [`I04.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I04.lean#L76-L129).

## 2. What it uses

**From other units.**
- *III.1 (block-spin step and gauge fixing).*
  - The step data: patch, kernel choices, tree gauge, predictor $Q$ and tags.
  - The definitions of request, admissible tube, store, consistency and action gap, including the identity [`Tube.locates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L145-L163).
  - The condition `Branches`. It is proved for the kernel choices of the construction by [`Foundations.branches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L70-L71) (from [`Axial.viable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L137-L142)) and is carried by every sheet ([`Sheet.has`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35)).
  - The curvature bound for the predictor [`qdc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L210-L252):
    - $|Q_p|\le C_QL^{-2}\,{\rm port}(x,U)$;
    - $|V_p|\le\sum_{b\subset\partial p}w_b+C_QL^{-2}\,{\rm port}(x,U)$.

    Here ${\rm port}(x,U)$ is the sum of the fine $|U_q|$ over the macro box of the coarse site $x$. Block averaging reduces curvature by $L^{-2}$.
- *III.2 (constants and schedule):* sheets, block factors, protection, delays, bar and waits. The target data and window constants are also chosen there (probable).
- *III.3 and III.4 (free kernels, Gaussian integration):* the towers, with `Towers.Roll` and their decay (probable for the attribution); the Gaussian tail bound [`rectangle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Many.lean#L89-L101), which for covariance at most $M$ reads $\Pr(|\xi_i|>s\ \forall i\in X)\le2^{|X|}e^{(-\nu s+M\nu^2/2)|X|}$ for every $\nu>0$.
- *III.5 (cluster expansion):* polymer norms, budget points, representations `Rep`, Kotecký–Preiss sums.
- *III.6–III.8 (stationary branch, matching, connected activities):* the stationary mean and its jets, the quartic matching of the path data, and the locality of connected activities.
- *III.9:* the slope $b_G$, the thresholds, the monitor and the incoming allowances. III.9 supplies the input representation (`Intake`) at each level and uses III.10.2–III.10.3 through `Cash` (probable).
- *I.1, II.2, III.16:* lattice, Haar measure, chordal distance, polymer activities, Taylor jets.

**Standard mathematics.**
- Balaban's renormalization group for lattice gauge theories:
  - averaging operations and gauge fixing (CMP 98, 99, 1985);
  - propagators (CMP 95, 96, 1984);
  - the variational problem and background fields (CMP 102, 1985);
  - the small-field step and cluster expansions (*Renormalization group approach to lattice gauge field theories I, II*, CMP 109, 1987; CMP 116, 1988);
  - large fields (*Large field renormalization I, II*, CMP 119, 1988; CMP 122, 1989).
- Kotecký–Preiss criterion (CMP 103, 1986).
- Brydges, *A short course on cluster expansions* (Les Houches 1984).
- Glimm–Jaffe, *Quantum Physics*, ch. 18–20.
- Schur's test.
- Chernoff-type Gaussian tail bounds.
- Taylor's formula with uniform constants on compact charts.

**Imported constants and assumptions.**
- The request, target and window data are parameters, chosen pre-$L$ in III.2. $G$ simple is required by Wait.engine and I04.
- The following are internal choices of the proof: the exponent $49/100$ in $T$; the factor $10^{-5}$ in $R$; the hysteresis thresholds $t/4$, $t/2$, $Wt$, $2Wt$; and the radii $5B$, $2B$, $4B/5$, $2B/5$, $30B$.
- The incoming bounds on the fine activities ($\beta_F^{-11/10}$, $e^{-M^{1/5}}$, $2M$) are hypotheses (`Intake`) supplied by III.9.

## 3. Strategy

**Mechanism.** The method is Balaban's large-field/small-field analysis. The integrand of one step is a Boltzmann factor for the action gap $\mathcal A_F(U)+\frac a2\sum_bw_b^2-\mathcal A_c(V)$; the Gaussian penalty in the mismatch $w_b$ between $V$ and the predictor $Q(U)$ replaces the block-spin delta function. Large-field regions are recorded by seeds. III.10.1 shows that the action gap localized near the seeds is at least $\kappa t^2$ per seed. With $\beta\asymp\beta_F$ this gives a suppression $e^{-\kappa\beta t^2}=e^{-\kappa e^{2(\log\log\beta)^2}}$ per seed, which:
- beats every polylogarithmic entropy or combinatorial factor (cluster volumes $B^4$, the spend ${\rm bill}^5$);
- is smaller than every power of $\beta$.

On the other hand $t=\beta^{-1/2+o(1)}$, so fields below threshold remain perturbatively small. This is the role of the factor $e^{(\log\log\beta)^2}$ in the threshold. Balaban's thresholds carry powers of $\log\beta$ (probable).

**Proof of III.10.1.** It rests on an exact completed-square identity (Lemma 4.1). Write the coarse field through its coordinates $v$, and form the predicted fine and interior coordinates $\Phi v$ and $\Phi'v$. By adjointness, the action gap splits into a sum of local rows:
- *fine rows* $\approx\frac12|X(U)-\Phi v|^2$;
- *interior rows* $\approx\frac12|Z-\Phi'v|^2$;
- *coarse rows*, nonnegative up to the clipping;
- *gauge rows* $\frac12|Nv|^2\ge0$;
- *two defect rows*, which vanish identically for the linearized uncut kernels because $\Phi^*\Phi+\Phi'^*\Phi'+N^*N=1$.

Each row is then bounded below locally:
- *Fine rows (fixes $L$).* A fine plaquette with $|U_p|\ge t/4$ cannot be explained by the coarse field, because $|\Phi v|=O(t/L^2)$. Each cost therefore pays $\alpha_Ft^2/128$, or $\lambda_Ft|U_p|$ above threshold.
- *Interior rows (fixes $W$).* An aisle pays $\frac a8w_b^2$ as soon as $Wt$ dominates the interior prediction $|\Phi'v|=O(t)$.
- *Coarse rows in the intermediate range.* They pay $\alpha_ct_c|V_p|/4$, which pays for the flags.
- *Coarse plaquettes above a fixed $\delta$ ("tides").* By qdc they lie within $4B/5$ of a spent seed. Their cost and the defects on these "hit" cells are charged to the fine and interior rows and to the spent seeds, which carry $tT\gg B^4t^2$.
- *All other cells.* An axial gauge brings both fields within $CB^{10}T$ of the identity on a ball of radius $2B/5$. The defects there are $O(h)\cdot\big((1+R)h+e^{-\tau R}\big)$ times $t$, which is $o(t^2)$ even after multiplication by $B^4$.

**Order of constants.**
1. Pre-$L$: the constants of E01, E03–E05, E07 and qdc.
2. $L$.
3. $W$.
4. $\kappa$ (explicit).
5. $x$ (through $Z(L,W)$, the E08 constant and the patch constants).

**III.10.2–III.10.4.** The step integral over the fluctuation field is expanded in sectors around the stationary mean, with the Gaussian measure given by the windowed inverse Hessian. The new gas has four kinds of letters:
- *packets:* large-field clusters, weighted by at most $e^{(C{\rm bill}^5-\beta\mu t^2)\sharp A}$ by III.10.1 and an annulus estimate;
- *the old forced activities;*
- *logarithmic letters:* Jacobians and determinants;
- *warning letters:* fluctuations leaving the window, priced by Gaussian tails.

These letters are shown to satisfy a Kotecký–Preiss condition with total $\beta_F^{\,r}$, $r<0$. All errors are of the form $\beta_F^{a+o(1)}$ (the rate calculus), which absorbs polylogarithmic losses. Derivatives in the coarse field are controlled by the Leibniz rule for jets, plus Cauchy–Schwarz against the catastrophe probabilities.

**Differences from Balaban.**
- Large fields are counted seed by seed, with explicit two-sided thresholds.
- The bound is proved for the full clipped action with path-series corrections, not only for its quadratic part.
- Every estimate is a separate theorem with explicit quantifier order (statements in `YM/Bid`, proofs in `YM/Work`), so that each holds at fixed $L$ and uniformly in the volume.

## 4. Steps

### 4.1 The algebraic identity

**Lemma 4.1 (completed squares).** Notation:
- $v=v(V)$ are the coarse coordinates ([`vision`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L104)). For each coarse plaquette $q$ they are the pair $(\sqrt{\alpha_c}\,{\rm curv}(V_q),\ \ell_q(V))$, with the first component multiplied by $\min(1,t_c/|V_q|)$ and the second set to $0$ unless $q$ is kept.
- $X(U)$ and $X^c(V)$ are the unthinned fine and coarse coordinates.
- $Z_b=\sqrt a\,{\rm curv}(V_bQ_b^{-1})$.

The rows are:
- *fine plaquette $p$:* $\mathrm{crown}_F(U,p)+\tfrac12|(\Phi v)_p|^2-\langle(\Phi v)_p,X_p\rangle$;
- *coarse bond $b$:* $\tfrac a2w_b^2+\tfrac12|(\Phi'v)_b|^2-\langle(\Phi'v)_b,Z_b\rangle$;
- *coarse plaquette $q$:* $\langle v_q,X^c_q\rangle-\tfrac12|v_q|^2-\mathrm{crown}_c(V,q)$;
- *gauge coordinate $n$:* $\tfrac12|(Nv)_n|^2$;
- *defects at $q$:*
  - the linear gap $\langle v_q,(\Phi^*X+\Phi'^*Z-X^c)_q\rangle$;
  - the completeness gap $\tfrac12\langle v_q,(v-(\Phi^*\Phi+\Phi'^*\Phi'+N^*N)v)_q\rangle$.

Their sum over the torus is $\mathcal A_F(U)+\frac a2\sum_bw_b^2-\mathcal A_c(V)$. The functional $\mathcal E_A$ keeps only the rows located in $D_{2B}(A)$.

*Proof:* adjointness for the three kernels; all cross terms cancel. No hypothesis on $v$ is needed.

*Lean:* [`Tube.locates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L145-L163); rows [`workF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L122-L124), [`workI`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L126-L127), [`workC`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L129-L131), [`workN`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L136), [`workL`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L133-L134), [`workD`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L138-L140).

### 4.2 Packing and geometry

**Lemma 4.2 (packing; E01).** For every $\delta>0$ there is $N$, depending on $P$ and $\delta$ but not on $L$ or $W$, such that for all $L$, all $W>0$, all large $x$ and all admissible data with $A$ consistent:
- (i) ${\rm port}(x,U)=\sum_qm(x,q)|U_q|$ with integer charges $m$ satisfying $\sum_xm(x,q)\le N$, and $m(x,q)>0\Rightarrow{\rm dist}(x,\bar q)\le N$;
- (ii) every coarse plaquette of $D_{2B}(A)$ with $|V_q|>\delta$ (a tide) lies within $4B/5$ of $A^{\rm sp}$ (the hit set);
- (iii) $\sharp A_\flat\le4\,\sharp\{q\in D_{2B}:|V_q|>t_c\}$;
- (iv) $\sharp\{\text{tides}\}\le N\sharp A^{\rm sp}$;
- (v) the coarse plaquettes of $D_{2B}(A)$ number at most $NB^4\sharp A$, and the hit set at most $NB^4\sharp A^{\rm sp}$.

*Sketch:* the macro box has radius $(J+7)L$, so each fine plaquette is charged by a bounded number of coarse sites. A tide is witnessed by a large input at bounded distance: by qdc, $|V_q|\le\sum w_b+C_QL^{-2}{\rm port}$, and the non-seed tolls ($\le t/2$) and wires ($\le2Wt$) are below $\delta$ for large $x$ (probable). The counts use balls of radius $\sim B$ in four dimensions. *(statement read; proof only through the docstring of `witnessed`)*

*Lean:* [`Bid.E01`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L40-L41) ([`Payments`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L27-L32), [`MacroStore`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L35-L38)), [`Work.E01.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E01.lean#L289-L324).

**Lemma 4.3 (shell comparison; E02).** For $G,L,j,K$ there is $C>0$ with the following property. Take a step whose fine side is at least $100$ times the macro radius, with $c>1$; any $U$ in the tree gauge; any $V$; and any fine link $e$ with usable tags. Then
$$\chi(U_e\tilde V_e^{-1})\le C\,{\rm port}(\bar e,U)+w_{(\bar e,\mu)},$$
where $\tilde V$ is the replica of $V$ on fine links and $\bar e$ the parent block. The last term is present only when the ends of $e$ lie in different blocks.

*Sketch:* close $e$ by the two tree paths, lift the loop to $\mathbb Z^4$, and bound the chord of the product by the sum of chords along a walk whose length is bounded by the macro budget. *(proof partly read)*

*Lean:* [`Bid.E02`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L49-L52), [`Work.E02.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E02.lean#L132-L244).

### 4.3 Kernel bounds

**Lemma 4.4 (rows and columns; E03).** There is $A>0$, independent of $L$ and $W$, such that:
- $\Phi$ has row sums at most $A/L^2$ and column sums at most $AL^2$;
- $\Phi'$ and $N$ have row and column sums at most $A$;
- all entries vanish beyond distance $B/50$.

The tool is a Schur-type count on the torus ([`anchored_of_terms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E03.lean#L39-L90)).

*Lean:* [`Bid.E03`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L67) ([`Allowance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L61-L64)), [`Work.E03.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E03.lean#L228-L256).

**Lemma 4.5 (path series and predictions; E04, given E03).** There is $A$, independent of $L$ and $W$, such that:
- the fine and coarse path series have absolute row and column sums at most $A$ and range at most $B/50$;
- $|\ell_p(U)|\le\sum_q c_{pq}|U_q|$, and $|\ell_p|\le As$ on kept plaquettes;
- $|v|\le At$, $|\Phi v|\le At/L^2$ and $|\Phi'v|\le At$.



*Lean:* [`Bid.E04`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L89-L91) ([`LaneCounts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L74-L81), [`Maximum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L83-L86)), [`Work.E04.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E04.lean#L282-L307).

### 4.4 Row-by-row lower bounds

**Lemma 4.6 (coarse rows; E05).** There are $\delta,B_1>0$, independent of $L$ and $W$, such that for every coarse plaquette with $\tau=|V_q|$:
- $t_c<\tau\le\delta$ implies row $\ge\frac{\alpha_c}4t_c\tau$;
- $\tau\le t_c$ implies row $\ge-B_1t_c^4$;
- $\tau>\delta$ implies row $\ge-\lambda_ct_c\tau$.

*Sketch:* in matrix space the curvature is the tangential projection of $V_q-1$, so $\chi^2-|{\rm curv}|^2$ is the squared normal displacement, which is $O(\chi^4)$ in a tubular neighbourhood of $G$.
- For $\tau\le t_c$ nothing is thinned, and the row equals $-\frac{\alpha_c}2(\chi^2-|{\rm curv}|^2)$.
- For $t_c<\tau\le\delta$ the row is $\ge\alpha_ct_c\tau(1-O(\delta^2))-\frac{\alpha_c}2t_c^2-\lambda_ct_c\tau\ge\frac{\alpha_c}4t_c\tau$, using $\lambda_c<\alpha_c/16$ (probable).

*(statement and header only)*

*Lean:* [`Bid.E05`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L101) ([`Crowds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L94-L97)), [`Work.E05.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E05.lean#L211-L228).

**Lemma 4.7 (fine and interior rows; E06, given E03, E04).** There is $L_1$ such that for every $L\ge L_1$ and every $W\ge2A/\sqrt a$ (with $A$ from E04), for large $x$, with $d=\alpha_F/128$:
$$\tfrac{\lambda_F}2\,t\!\!\sum_{p\in A_F,\,|U_p|>t}\!\!|U_p|+d\,t^2\,\sharp\{p\in A_F:|U_p|\le t\}\le\sum\text{fine rows},\qquad\tfrac a8\sum_{b\in A_I}w_b^2\le\sum\text{interior rows}.$$

*Proof:*
- *Costs with $|U_p|\le t$.* The direct part of the fine row is at least $\frac12(\sqrt{\alpha_F}|U_p|-|(\Phi v)_p|)^2$. For a cost, $|U_p|\ge t/4$, while $|(\Phi v)_p|\le At/L^2\le\sqrt{\alpha_F}t/8$ for $L\ge L_1$; this gives $\alpha_Ft^2/128$.
- *Costs with $|U_p|>t$.* The clipped action is $\lambda_Ft|U_p|$, and the cross term is at most $AL^{-2}\sqrt{\alpha_F}t|U_p|\le\frac{\lambda_F}4t|U_p|$.
- *Path-series part.* It is a complete square on kept plaquettes. On dropped plaquettes the cross term is paid by the column bounds of E04, at total cost $\frac{\lambda_F}4t\sum|U_p|$; this works only after summation, not row by row.
- *Aisles.* On an aisle $w_b\ge Wt$ and $|(\Phi'v)_b|\le At\le\frac{\sqrt a}2w_b$, so the row is at least $\frac12(\frac{\sqrt a}2w_b)^2=\frac a8w_b^2$.
- *All other rows* are complete squares, hence $\ge0$.



*Lean:* [`Bid.E06`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L110) ([`Seals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L103-L107)), [`Work.E06.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E06.lean#L413-L440).

**Lemma 4.8 (affected cells; E07, given E01, E03, E04).** There is a pre-$L$ constant $C_7$, and for every $L$ and $W>0$ a constant $Z$, such that for large $x$:
$$\text{defects}({\rm hit})+\frac{C_7}{L^2}t\!\!\sum_{p\in A_F,|U_p|>t}\!\!|U_p|+C_7t\sum_{b\in A_I}w_b+Zt^2B^4\sharp A^{\rm sp}\ \ge\ \lambda_ct_c\sum_{\rm tides}|V_q|.$$

*Proof:*
1. By qdc, on the hit set $|V_q|\le r_0t+H_q$. The macro excess $H$ is bounded, through the charges of E01, by a pre-$L$ constant times $L^{-2}\sum_{\rm swell}|U_p|+\sum_{A_I}w_b$.
2. The defect rows on hit cells are bounded below by Cauchy–Schwarz, using $|v|\le At$ and the kernel bounds of E03–E04. The inputs $X$, $Z$, $X^c$ split into a uniform part, $O(t)$ per cell, and the excess.
3. The uniform part is paid by $Zt^2\sharp{\rm hit}\le ZNt^2B^4\sharp A^{\rm sp}$; the excess is paid by the two middle terms.

No cancellation of linear terms is used.

*Lean:* [`Bid.E07`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L130) ([`Lapse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L121-L128)), [`Work.E07.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E07.lean#L115-L158).

**Lemma 4.9 (unaffected cells; E08, given E01, E02).** For every $L$ and $W>0$ there is $C$ such that for large $x$ the following holds. For every coarse plaquette $q$ of $D_{2B}(A)$ outside the hit set there is a gauge transformation $z$ with:
- $\chi(V^z_b)\le h:=CB^{10}T$ for all coarse bonds within $2B/5$ of $q$;
- $\chi(U^{z\circ\,\rm parent}_e)\le h$ for all fine bonds whose parent is within $2B/5$.

*Sketch:* there is no spent seed within $4B/5$ of $q$, so all tolls and wires near $q$ are at most $T$. An axial gauge on a box of the coarse cover, with E02 transferring the bound to fine links, loses a polynomial in $B$. *(statement and docstrings)*

*Lean:* [`Bid.E08`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L140) ([`Stitches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L134-L138)), [`Work.E08.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E08.lean#L342-L344).

### 4.5 Linearization defects on unaffected cells

**Lemma 4.10 (flat identities).** Consider the linearized uncut kernels $\Phi_0,\Phi_0',N_0$ (scalar matrices built from the towers), and the linearized inputs for log-fields $a$ (fine) and $b$ (coarse): $X_0(a)$ (face curls and path series of $a$) and $Z_0(a,b)=\sqrt a\,(b-{\rm probe}\,a)$. Then:
$$\Phi_0^*X_0(a)+\Phi_0'^*Z_0(a,b)-X_0^c(b)=0,\qquad w-(\Phi_0^*\Phi_0+\Phi_0'^*\Phi_0'+N_0^*N_0)w=0.$$
*Proof:* the identities of `Towers.Roll`, applied componentwise.

*Lean:* [`roll_l`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Linear.lean#L89-L136), [`roll_d`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Linear.lean#L69-L87).

**Lemma 4.11 (chart estimates on the torus).** For a patch $D$ satisfying `Branches` there are $C,\tau,r>0$ with the following property. For every admissible step on $D$, all tags, all $R$, and all log-fields $a$, $b$ with $\|a\|,\|b\|\le h\le r$, set $U=\exp a$ and $V=\exp b$. Then at every coarse plaquette:
- $|\text{linear gap}|\le Ch\,\omega$;
- $|\text{completeness gap}(w)|\le Cq\,\omega$ whenever $\|w\|\le q$.

Here $\omega=\omega(R,h,\tau)=(1+R)h+e^{-\tau R}$ ([`widen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Defs.lean#L70)).

*Proof:* compare every actual object with its linearization, then subtract Lemma 4.10.
- *Kernels:* they are close to their flat versions ([`kernel_chart_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Kernel.lean#L264-L298)).
- *Path-series coordinates* ([`x_chart_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Slots.lean#L83-L158)):
  - transporting a curvature of size $O(h)$ along a path of length at most $R$ costs $O(Rh\cdot h)$;
  - the paths longer than $R$ are paid by the weight $e^{\sigma\,\rm length}$ in the path budget, which gives $e^{-(\sigma/d)R}$.
- *Predictor coordinates:* quadratic error ([`z_chart_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Prediction.lean#L243-L267)).



*Lean:* [`global_chart_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Global.lean#L76-L148).

**Lemma 4.12 (interior cost).** For the same $D$ there are $C,\tau,r>0$ with the following property. Suppose that in some gauge $z$ both $U$ and $V$ are within $h\le r$ of the identity on all bonds within distance $3R+4+{\rm reach}$ of a coarse plaquette $q$, where ${\rm reach}$ is the predictor reach. Then the bounds of Lemma 4.11 hold at $q$.

*Proof:*
1. *Gauge covariance:* the gaps transform by ${\rm Ad}(z_q)$ ([`gauge_gaps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Covariance.lean#L151-L185)).
2. *Locality:* the gaps depend only on nearby bonds ([`local_gaps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Locality.lean#L151-L174)).
3. *Extension:* a configuration that is $h$-close to $1$ on a ball agrees there with $\exp$ of a global log-field of norm $O(h)$ ([`extend_interior`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Charts.lean#L89-L106)).
4. Apply Lemma 4.11.



*Lean:* [`interior_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Interior.lean#L22-L63).

**Lemma 4.13 (unaffected defects; EBare).** Assume E03, E04 and the conclusion of E08 at $(P,L,W)$. Then for every $\varepsilon>0$ and all large $x$, the sum of the defect rows over the unhit coarse plaquettes of $D_{2B}(A)$ is at least $-\varepsilon t^2\sharp A$.

*Proof:*
1. Take $h=CB^{10}T$ from E08 and $\omega=\omega(R,h,\tau)$. Lemma 4.12 applies, since $3R+4+{\rm reach}\le2B/5$.
2. Cauchy–Schwarz with $|v|\le At$ gives, on every unhit cell, defects at least $-\ell$, where $\ell=2(At)(Ch\omega)+(At)(CAt\,\omega)$.
3. There are at most $NB^4\sharp A$ such cells (E01 with $\delta=1$).
4. $NB^4\ell\le\varepsilon t^2$ for large $x$, because $B^n\omega\to0$ and $B^nh\omega/t\to0$ for every $n$ ([`radius_stitch_errors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Scales.lean#L116-L152)). Indeed $h=\beta_F^{-0.49+o(1)}$, $h^2/t=\beta_F^{-0.48+o(1)}$, and $e^{-\tau R}\le\beta_F^{-1}$ because $R\asymp(\log x)^2$.
5. If no patch with the request's data satisfies `Branches`, the statement is vacuous.



*Lean:* [`Bid.EBare`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L148) ([`Belly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L142-L144)), [`Fluctuations.bare`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Bare.lean#L64-L120).

### 4.6 Assembly of III.10.1

**Lemma 4.14 (E09).** E01, Seals, CoverStore($\delta$), Lapse($\delta$) and the Belly bound together imply the conclusion of III.10.1.

*Choice of constants:*
- $L\ge\max(L_1,L_7)$, where $C_7/L_7^2\le\lambda_F/4$;
- $W\ge\max(1,\ 2A/\sqrt a,\ 16C_7/a)$;
- $m=\min(\lambda_F/8,\ \alpha_F/128,\ a/32,\ \alpha_c/64)$ and $\kappa=m/2$; since $\lambda_F<\alpha_F/16$, this is the value in III.10.1;
- $x$ so large that: $t_c\le\delta$; $t\le T$; $t\le2t_c$; $(4mN+ZB^4)t^2\le m\,tT$; $B_1t_c^4NB^4\le\frac m4t^2$; and the Belly bound holds with $\varepsilon=m/4$.

*Proof:* add the rows.
1. *Swell costs:* $\frac{\lambda_F}2t|U_p|$. Half of it pays the $C_7L^{-2}$ term of Lemma 4.8; the remainder is at least $2mt^2$, and at least $m\,tT$ when the cost is spent.
2. *Other costs:* at least $\alpha_Ft^2/128\ge mt^2$.
3. *Aisles:* $\frac a8w^2-C_7tw\ge\frac a{16}w^2\ge mt^2$; spent aisles carry $m\,tT$.
4. *Tides:* paid by Lemma 4.8.
5. *Coarse plaquettes in the intermediate range:* $\frac{\alpha_c}4t_c|V_q|\ge\frac{\alpha_c}{16}t^2$, which pays $4mt^2$ per flag, since $\sharp A_\flat\le4(\sharp\text{intermediate}+N\sharp A^{\rm sp})$.
6. *Small coarse plaquettes:* in total at least $-\frac m4t^2\sharp A$.
7. *Gauge rows:* $\ge0$.
8. *Defects:* on hit cells they are inside Lemma 4.8; on unhit cells they total at least $-\frac m4t^2\sharp A$.
9. *Spent seeds:* their $m\,tT$ covers the flag charge against $A^{\rm sp}$ and the $Z$ term.

The total is at least $\frac m2t^2\sharp A$.

*Lean:* [`Bid.E09`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L151-L152), [`Work.E09.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E09.lean#L113-L159) (with [`assemble`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E09.lean#L69-L111) and [`bank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E09.lean#L23-L62)), [`Bid.issues`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L155-L158).

### 4.7 Activities of one step

**Lemma 4.15 (rate calculus).** A function $w$ has rate $a$ if for every $v>a$, $|w(x)|\le\beta_F^{\,v}$ eventually. Rates add under products, are stable under sums and comparison, and constants have rate $0$. Thus $t$ has rate $-\frac12$, and $B$ and ${\rm bill}$ have rate $0$.

*Lean:* [`Rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Numerics.lean#L22-L23).

**Lemma 4.16 (from the action gap to packet weights).**
- (a) There is $L_0$ such that for all $L\ge L_0$ and all large $W$ there is $\mu>0$ with two properties. First, the bound of III.10.1 holds with constant $\mu$ at all large $x$ ([`Grant.order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Grants.lean#L52-L71); here $\mu$ is the $\kappa$ of III.10.1). Second, the gain $\beta\mu t^2$ passes the tree-graph tests against spends $D\,{\rm bill}^d M^z$ with $z<2$.
- (b) On the annulus $2B<{\rm dist}\le200B$ around the seeds, the remainder of the packet energy is at least $-E$ with $E$ of rate $-\frac32$ ([`Coat.annulus`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Annulus.lean#L164-L185)). Consequently the energy near the seeds is at least $(\mu t^2-E)\sharp A$ ([`Coat.earns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/AssignedPrice.lean#L54-L86)). Since $\beta E=\beta_F^{-1/2+o(1)}$, the loss is absorbed in ${\rm bill}^5$.
- (c) In every manifest sector, $|{\rm Pack}|\le\exp\big((C\,{\rm bill}^5-\beta\mu t^2)\sharp A\big)$ ([`steam_prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Revenue.lean#L99-L140)).

*((a) and (c) proof read; (b) statement only)*

**Lemma 4.17 (old letters).** Let the input have rate $-1$ and let $-\frac12<s<0$. Then the forced letters and the logarithmic letters of the input representation are each Kotecký–Preiss summable with total $\beta_F^{\,s}$, and the old activities, $\ell_i$ and $e^{\ell_i}-1$ are bounded by these weights. Only the actual inputs are used.

*Lean:* [`recommends`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Quotation.lean#L47-L92).

**Lemma 4.18 (window, drift, no new seeds).** For each patch there are window constants such that, for large $x$:
- every manifest sector satisfies the Hessian conditions of III.10.2(a)(iii) ([`shoots`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Shutter.lean#L119-L144));
- the drift is $O(t)$ and the residual of the stationarity equation has rate $-1$ (`tends_val`);
- there is $\xi>0$ with $\sharp\{\text{colours}\}\cdot\xi\le1$ such that fluctuations in the window create no seeds farther than $30B$ from the given ones ([`Coat.ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Peak.lean#L92-L188)).

*(statements only)*

**Lemma 4.19 (catastrophes).** For every set $v$ of warning sites, the Gaussian measure of the catastrophe set is at most $E^{\sharp v}$, with $E$ eventually smaller than every power of $\beta_F$. The threshold $\xi t\sqrt\beta$ equals $\xi e^{(\log\log\beta_F)^2}(\beta/\beta_F)^{1/2}$ in Gaussian units, and the basis of the estimate is `rectangle`.

*Lean:* [`Coat.alarm_bills`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/ResponsePrice.lean#L65-L112).

**Lemma 4.20 (assembly of III.10.2).**
1. The floor on $L$ is the sum of the floors from Grant.order, Coat.scopes and `recommends`.
2. $W$ is taken large for Grant.order and Coat.scopes; $\mu$ comes from Grant.order and does not depend on the patch.
3. For each patch:
   - $K,\gamma$ come from `shell_access`;
   - the window constants from `shoots`;
   - the drift constant $C_d$ from `tends_val`, and $a_o=\max(C_d+1,\gamma K)$;
   - $\xi$ from `Coat.ready`;
   - $C$ from `steam_prices`;
   - $s$ is chosen with $-\frac12<s<r$.
4. All conditions holding for large $x$ are merged into one threshold. The three letter totals have rate $s<r$, so their sum is eventually at most $\beta_F^{\,r}$.

*(proof read; ingredients statement only)*

*Lean:* [`Target.issue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L94-L185).

### 4.8 Derivatives

**Lemma 4.21 (letter jets; `whittle`).** This is III.10.3 without the `Herd` part. Here ${\rm rad}=\beta_F^{\,s}$ with $-\frac12<s<r$, the warning weight is a patch constant, and the jet scale is $r(x)=B(x)+A(x)$ (rate $0$). The jet bounds for each letter along `Mode` families come from the `Clutch` lemmas, and the catastrophe probabilities from Lemma 4.19. *(partly read)*

**Lemma 4.22 (molecule integrals; `timing`).**
1. *Leibniz rule.* Products of letter jets have the product scale ([`Brush`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Brush.lean#L44-L47)). This gives the pointwise factor $(1+|U|+2(r+J'))^i(1+{\rm shape})^i\,{\rm facescale}^{ki}$.
2. *Integration.* The result is integrated against the Gaussian measure, using Cauchy–Schwarz with the catastrophe probabilities: $\int{\rm facescale}^{ki}\le e\cdot{\rm rad}^{\sharp\text{blaze}}$. This gives $p=e\cdot v$, of rate $0$.

*(statement and first steps read)*

### 4.9 Start-up fusion and markers

**Lemma 4.23 (H01–H04).**
- *H01* is the Mayer identity $e^{\sum\ell_i}=\prod_i(1+(e^{\ell_i}-1))$, regrouped with the forced activities into pellets. It is proved on the actual series (`flatten`, `mayer_sum`), without assuming summability of the new gas.
- *H02:* a product bound together with the Kotecký–Preiss sum.
- *H03:* transport of corners, flags and touched sets.
- *H04:* continuity.

*(H01 skimmed; others statement only)*

**Lemma 4.24 (I01–I04).**
- *I01* is a covering argument with $B$-balls.
- *I04* follows from [`columns_receipt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I04.lean#L24-L62): for every level schedule, $\sum_{m<i}\log{\rm columns}_{m+1}=o({\rm scale}_i)$. Combine this with $\log{\rm order}_i!\le\log{\rm columns}_i$ and $\log\hat\beta_i=o({\rm scale}_i)$.



### 4.10 The schedule

**Lemma 4.25 (pricing order).**
1. For each pair of adjacent stages, III.10.1 gives a floor $b_{ij}$; set $k_i=\max(b_{ii},b_{i,i-1},\text{sheet floor}_i)$.
2. For $L_i\ge k_i$, choose $W\ge m$ in the admissible range and a threshold $x_{ij}$.
3. Raise $\beta^*_i$ to $\max(\beta^*_i,x_{ii},x_{i,i-1})$.
4. The conclusion persists under further raising ([`recheck`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L204-L208)).



**Lemma 4.26 (divisible schedule; `Wait.engine`).** The construction:
1. Entry couplings come from the bar (using $G$ simple), leads from the wait data, and a monotone stage-index function $J$ with steps at most $1$ and $J\to\infty$ from `Program.exhaust`.
2. The scales are $s_i$; the initial length $M$ is the minimal length plus the largest bill over the first stages; the periods are $4(M+p+1)$.

The checks:
- $\hat\beta_m\ge$ the bar value, and $\hat\beta_m\ge\beta^*_{J(m+1)}$;
- the scale entries;
- the volume inequalities: ${\rm shells}\cdot(1+B_i+B_{i+1})^{\rm growth}\le$ side, $100(B_i+1)\le$ side, and $100(\text{patch radius}+1)\le$ next side;
- the mesh condition $\log L_{J(i+1)}/s_i\to0$;
- divisibility: $p=c(M+z+1)-(M+1)$ gives the period $4c(M+z+1)$.

 The docstring calls this "only numeric logic".

## 5. Where the difficulty lies

- **The nonperturbative lower bound III.10.1**, uniform in the volume, is the core. It is short (about 3,400 lines for E01–E09, plus 1,700 in `FLUCTUATIONS`) because of three design choices:
  - the exact completed-square identity, built on the resolution of the identity of the towers;
  - two-sided thresholds that make the seed set stable;
  - the strict separation of pre-$L$, post-$L$ and post-$W$ constants.

  The fine-row estimate needs $L$ large because the coarse prediction on a fine plaquette is $O(t/L^2)$. The interior estimate needs $W$ large because the interior prediction is $O(t)$. Everything else is paid on the $x$-tail.
- **The bulk of the Lean (about 39,000 lines) is III.10.2–III.10.4:** sector decomposition, Gaussian windows, catastrophe sets and jets of arbitrary order. Mathematically this is the content of Balaban's small/large-field step. The size comes from carrying jets of order $i$ through every letter and from the sector data.
- **Routine but long:** the rate calculus and the schedule.
- **Unusual points.**
  - (i) $\kappa$ is explicit and independent of $L$ and $W$; only the threshold $x_0$ depends on them. The Lean statement does not record this.
  - (ii) Two docstrings are stale: [`Bid.EBare`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L148) says "red … Need prove", and `Integrated.pressure_grants` says it "still requires the separately unfunded EBare input". Both are discharged by `Fluctuations.bare`.
  - (iii) The rates are far from sharp (annulus $-\frac32$, activity totals $\beta_F^{\,r}$ with $r\in(-\frac12,0)$). Only strict negativity is used.
  - (iv) The H and I items have nothing to do with a single RG step; they belong to the start-up and marker constructions.

## 6. Notation

| Written proof | Lean (glossary) | Meaning |
|---|---|---|
| $x=\hat\beta_m$, $\beta_F=x+b_G\log L$ | [`betaF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23) | coarse and fine reference couplings |
| $t_c(x)$, $t=t_c(\beta_F)$ | [`temp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L25), [`fiery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L26) | small-field thresholds; `fiery` is at the **fine** coupling |
| $T=\beta_F^{-49/100}$ | [`largeT`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L27) | spent-seed threshold |
| $B$, $R$ | [`radiusB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22), [`till`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L77) | cluster radius $\lceil(\log x)^2\rceil$, path cutoff $B/10^5$ |
| $\lvert U_p\rvert$, $w_b$ | [`toll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L55), [`wire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L187) | plaquette size; mismatch $\chi(V_bQ_b^{-1})$ |
| request $P$; admissible | `Teller`, `Teller.Funds` | data of one call of the step estimator |
| $A=(A_F,A_I,A_\flat)$, consistent | `Stores`, `Stores.Plot` | seeds; two-sided thresholds on $D_{5B}$ |
| $A^{\rm sp}$, tides, hit | `spend`, `tides`, `hit` | seeds above $T$; coarse plaquettes above $\delta$; cells near $A^{\rm sp}$ |
| $\mathcal E_A$ | `Stores.assessed` | localized action gap |
| $v$, $\Phi,\Phi',N$ | `vision`, `Φ`, `Φ'`, `N` | coarse coordinates; tower kernels |
| $\omega(R,h,\tau)$ | `widen` | $(1+R)h+e^{-\tau R}$ |
| rate $a$ | `Rate` | $\le\beta_F^{a+o(1)}$ |
| target data $\mathcal T$ | `Target` | $\varepsilon,\delta,e$, rate $r$, halo, chart |
| letter weights, KP condition | `Sales`, `Buy` | rooted Kotecký–Preiss and tree-graph tests |
| new-gas bounds | `Cash`, `Utopia`, `Herd`, `Captain` | III.10.2 bundle; letter jets; molecule integrals |
| Gaussian sector | `Value`, `Charges` | Hessian, approximate inverse, mean, residual |

## 7. Open points for the writer

1. **From III.10.2 to III.9.** The chain of uses is `Target.quotesTogether` → `Planning.exists_floors` → `Planning.sponsors` → `Repeat.budgets` → `Roof`/`Roost` → `Legato.multitude`. The dictionary between `Sales`/`Buy` and the $E$- and $K$-norms of II.2 and III.5 used in III.9's induction is not yet written out.
2. **`Stamp`.** This hypothesis on the tube (fine and coarse beds with `Diagonal`, `Roll`, `Attached`, `Floor`) is a compatibility condition with the free kernels (tentative). Where it is established along the trajectory, and where `Towers.Roll` and `Deep` are proved for the actual towers (III.3, probable), remains to be located.
3. **Consumers of III.10.3.**
   - `rocketsC` → `awakening` → `Mallow` (`Arena`: the per-step Captain/Herd bounds for every adjacent stage pair) → `Legato.multitude`.
   - `rocketsC` → `RG12.annex` → `garment10` → `Independent.constructionRun`.
   - `whittle` is also used directly in `FullVolume/E6`, `FullVolume/Sector` and `UVExtension`, still with per-step quantifiers.

   The marked integrands (`persona`, `jewelDebt`) have not been translated.
4. **III.10.4.** `JointLoad.stage` adds a trigger tail bound in the scales `Scales.b`, `Scales.p`, which have not been unpacked. Its consumers (`Heir.repair`, `Clockwork.offer` → `Brim`) reach the RG05 preconstruction.
5. **Further results of this unit in the closure.**
   - [`meritBar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Alabaster/Molt.lean#L25-L77) and [`rimfire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Alabaster/Basin.lean#L23-L49) give Lipschitz dependence of the step's activities on the input representation: if two inputs agree within $t\le s$, the jets of the difference are at most $t$ times a summable budget.
   - [`erudite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Shellac/Sables.lean#L26-L65) gives positivity of a residual and $\beta_F^{-23/20}$ bounds on the jets of its off-diagonal part.

   Their role in the reset of III.9 should be stated.
6. **Proofs not read beyond headers:** E01–E05 and E08. The mechanisms in §4.2–4.4 come from the statements and docstrings; the mechanism of E05 in particular is (probable).
7. **Correspondence with Balaban.**
   - III.10.1 corresponds to the lower bound on the action in large-field regions in *Large field renormalization I* (CMP 119).
   - III.10.2–III.10.3 correspond to CMP 109, 116 and 122.

   These have not been matched lemma by lemma.

**Builds on:** [III.1](III-1.md), [I.1](I-1.md), [III.5](III-5.md), [III.4](III-4.md), [III.6](III-6.md), [III.9](III-9.md), [IV.1](IV-1.md), [III.2](III-2.md), [II.1](II-1.md), [II.2](II-2.md), [VIII.1](VIII-1.md), [III.16](III-16.md), [VI.1](VI-1.md), [III.15](III-15.md), [III.3](III-3.md), [V.2](V-2.md), [V.1](V-1.md).

**Used by:** [III.13](III-13.md), [III.12](III-12.md), [III.11](III-11.md), [III.2](III-2.md), [III.15](III-15.md), [III.4](III-4.md), [VIII.1](VIII-1.md), [VII.4](VII-4.md), [III.5](III-5.md), [III.6](III-6.md), [VII.2](VII-2.md), [III.14](III-14.md), [II.1](II-1.md), [V.2](V-2.md), [V.1](V-1.md), [III.7](III-7.md), [III.3](III-3.md), [III.9](III-9.md), [VI.1](VI-1.md), [IV.1](IV-1.md), [V.3](V-3.md), [VII.6](VII-6.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| work package [`YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6), with [`YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP) | 38,787 |
| work package [`YM/Work/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work) (in part, 30%) | 11,420 |
| work package [`YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD) | 3,666 |
| work package [`YM/Next/FLUCTUATIONS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS) | 1,723 |
| work package [`YM/Bid/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid) | 1,052 |
| work package [`YM/Work/E07/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E07) | 425 |
| work package [`YM/Work/E09/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E09) | 252 |
| work package [`YM/AnalyticBridge/COUPLING_SHAPE_ESTIMATE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/COUPLING_SHAPE_ESTIMATE) | 59 |
| work package [`YM/R2I/Vale/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Vale) | 38 |
| work package [`YM/Planned/ATOM_FORCED_ESTIMATE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_FORCED_ESTIMATE) | 6 |
| work package [`YM/UVNext/UV_STATION_TRANSFER/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/UV_STATION_TRANSFER) | 5 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **III.10.1** [`anchored_of_terms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E03.lean#L39-L90) *(numbered result)* — Torus sums of kernel terms satisfying a cover envelope and separation bound give anchored row and column estimates with cardinality-weighted constants.
- **III.10.2** [`gathered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H01.lean#L245-L251) *(key result)* — The fused gas occurrence series sums to the poured gas times the exponential of the sum of logarithms.
- **III.10.3** [`kernel_chart_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Kernel.lean#L264-L298) *(key result)* — At a fixed patch, kernel factors of the defects are near their flat matrices with constants independent of period, store and cut.
- **III.10.4** [`columns_receipt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I04.lean#L24-L62) *(numbered result)* — The accumulated log of column counts across levels is little-o of the schedule scale.
- **III.10.5** [`Rack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L63-L73) *(numbered result)* — A packaging predicate collecting uniformity properties of raw cumulative kernels for a horizon at given levels and prices.
- **III.10.6** [`x_chart_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Slots.lean#L83-L158) *(key result)* — On the chart, the linear map is bounded by C h and the plotted-minus-linear error is bounded by C h times a widening factor, for small h.
- **III.10.7** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E02.lean#L132-L244) *(key result)* — A fine-link shell comparison estimate holds, bounding fine-link quantities against parent shell data.
- **III.10.8** [`pricing_order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L173-L202) *(key result)* — Given grants for all test queries, there is a floor such that any sheet with larger floor admits raised delay records satisfying a ringing condition with arbitrarily large values.
- **III.10.9** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E01.lean#L289-L324) *(key result)* — Macro charges and packing estimates hold on a single oriented sector (price E01 in the chain).
- **III.10.10** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E07.lean#L115-L158) *(key result)* — A bound on all affected departures (E07 item in the price chain), using macro multiplicity and stencil clipping.
- **III.10.11** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E06.lean#L413-L440) *(key result)* — Lower bounds on the F+I rows hold, with column and witness costs of order 1/L² times the swell currency at fixed pre-L data.
- **III.10.12** [`z_chart_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Prediction.lean#L243-L267) *(key result)* — At a fixed patch, the linearization of the Z prediction is bounded linearly and approximates the test with quadratic error uniformly, independent of the torus.
- **III.10.13** [`global_chart_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Global.lean#L76-L148) *(numbered result)* — Post-L, uniform small-log estimates on the full torus bound both defects in terms of a log-field size h.
- **III.10.14** [`local_gaps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Locality.lean#L151-L174) *(numbered result)* — Gap quantities depend only on configurations within distance D of the site, so agreeing near the site gives equal values.
- **III.10.15** [`interior_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Interior.lean#L22-L63) *(key result)* — Within a halo, the two cut defects (linear gap and derivative gap) are bounded by a constant times h times a widening factor, uniformly over step data.
- **III.10.16** [`bare`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Bare.lean#L64-L120) *(main result)* — The bare defect-producer statement EBare holds unconditionally.
- **III.10.17** [`grants`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L24) *(key result)* — For every teller, the pre- and post-pressure grants hold unconditionally, without a separate bare-estimate input.
- **III.10.18** [`pressure_pricing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L32-L37) *(numbered result)* — For any price map there is a threshold on the parameters beyond which the delay data can be enlarged in the beta entry so that a ringing function bounded below by any given constant exists.
- **III.10.19** [`healthy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L91-L97) *(main result)* — For a cleaner sequence of tables, there exists a hierarchy among the limit table that has the required orientation.
- **III.10.20** [`rectangle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Many.lean#L89-L101) *(numbered result)* — For a Gaussian with covariance bounded above by M, the probability that all coordinates in a set exceed t in absolute value is at most 2^|X| exp((-st+Ms²/2)|X|).
- **III.10.21** [`gathered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Mallow/Passage.lean#L264-L270) *(numbered result)* — The fused gas occurrence series sums to the product of the gas and the exponential of the summed logarithms.
- **III.10.22** [`Coat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Coat.lean#L49-L56) *(numbered result)* — A structure packaging the input data of a sector as a view without new variables.
- **III.10.23** [`Intake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Intake.lean#L42-L49) *(numbered result)* — A packaged structure of hypotheses serving as input to the connected-activity jet service.
- **III.10.24** [`Target`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/OptionCost.lean#L62-L76) *(numbered result)* — A bundled record of hypotheses and parameters (ordering of epsilon before L, allowed marks) for the connected-activity jet estimate.
- **III.10.25** [`Room`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Room.lean#L39-L48) *(numbered result)* — A structure collecting stencil and delay hypotheses (enough room) for core and annulus analytic estimates.
- **III.10.26** [`tail_bills`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/PathPrices.lean#L127-L142) *(numbered result)* — Tail sums of path prices with exponential length weights are negligible for large x.
- **III.10.27** [`required`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Coat.lean#L133-L142) *(numbered result)* — Under shell access and interior hypotheses with bounded hot directions, the signal is grafted at the base point with the stated radius and bound.
- **III.10.28** [`tickets_le`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Mask.lean#L125-L145) — The product of local ticket weights is bounded by an exponential in the number of shares with a rate depending on the patch.
- **III.10.29** [`engine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L26-L135) *(main result)* — There exists a level schedule satisfying the payment requirements whose scales are divisibly spaced.
- **III.10.30** [`dressed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Harmonic.lean#L46-L101) *(key result)* — For a fixed patch there are radii such that all sufficiently small displacements within the same chart keep the dressed quantities controlled uniformly over step data.
- **III.10.31** [`approves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/MinBranches.lean#L134-L173) *(numbered result)* — If the configuration is close to trivial within distance d of a site, the predictors are within delta of the identity and tag masses equal one.
- **III.10.32** [`marks_here`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/PatchCap.lean#L115-L151) *(numbered result)* — Actual tags are read correctly under weak local conditions, uniformly for large x.
- **III.10.33** [`atoms_meet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Receiving.lean#L82-L111) *(numbered result)* — Atoms with summed budget are translated with bounds certified by a Sales capacity at power r of beta.
- **III.10.34** [`letters_LD`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Outer.lean#L85-L131) *(numbered result)* — Both mismatch rows after the short cut in the unaffected chart are bounded by a rate-order -3/2 function.
- **III.10.35** [`input_decays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Compression.lean#L137-L181) *(numbered result)* — A weighted exponential-decay bound on the response of the extracted rows to a single impulse at a bond, in terms of distance to the focus.
- **III.10.36** [`f0_agrees`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Folio/Base.lean#L107-L123) *(numbered result)* — The extension function on F0 depends only on configurations near the relevant region, so two locally agreeing configurations give equal values.
- **III.10.37** [`within`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Accuracy.lean#L64-L163) *(numbered result)* — Within protected stencils, the jet remainder is bounded by explicit rate functions of orders −1/2 and −1.
- **III.10.38** [`soft_bills`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Remainder.lean#L110-L179) *(numbered result)* — The soft term differs from half the squared reply norm by at most a rate −3/2 error on weak annulus cells.
- **III.10.39** [`survey`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Survey.lean#L92-L109) *(key result)* — For a patch with branching predictor, eventually in x, the forecast of the bare predictor model satisfies a uniform bound on directions of bounded norm for all steps and tubes.
- **III.10.40** [`certified`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Supply.lean#L110-L120) *(numbered result)* — Under the stated hypotheses, a day datum is valid and satisfies clearing and admission conditions.
- **III.10.41** [`allocation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Intake.lean#L57-L59) *(numbered result)* — An intake with point charge yields a charged allocation and portion-cost data without altering weights.
- **III.10.42** [`issue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L94-L185) *(key result)* — For large side length L and large width W, there exist order, constants and a rate so that the required bounds hold simultaneously for all admissible tubes and steps, yielding the needed invoices.
- **III.10.43** [`retreat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Resolve.lean#L59-L131) *(numbered result)* — Remote affine paths are small at the local stationary mean, with an error of rate −1.
- **III.10.44** [`quoted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Export.lean#L48-L74) *(numbered result)* — A single uniform beta cost per vertex handles the log/determinant correction, with rate-b error functions.
- **III.10.45** [`ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Peak.lean#L92-L188) *(key result)* — For rare-event configurations away from seeds, a Gaussian-scale excursion lower bound holds uniformly for large x, with a fixed small constant.
- **III.10.46** [`earns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/AssignedPrice.lean#L54-L86) *(key result)* — The quoted cost near the point charge is at least (κ t² − E(x)) times the number of shares, with E decaying at rate −3/2.
- **III.10.47** [`dividend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/AffOrd.lean#L93-L136) *(numbered result)* — Mean and residual of the affine-ordered cost are bounded by a constant times t, with a rate-controlled error for the fixed-L exponent.
- **III.10.48** [`rear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Via.lean#L95-L108) *(numbered result)* — A linear identity holds for a response and turns in a unified function near a remote row.
- **III.10.49** [`light_costs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Annulus.lean#L103-L160) *(numbered result)* — Weak unmasked estimates on the light remainder at each stencil: bounded below by a rate −E and above on selected packets.
- **III.10.50** [`recommends`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Quotation.lean#L47-L92) *(main result)* — For large sides and all admissible stamped tubes, the offer of non-packet gas letters holds with prescribed power-of-beta bounds, using only actual inputs.
- **III.10.51** [`annulus`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Annulus.lean#L164-L185) *(key result)* — On the annulus between radii 2B and 200B, the remainders of a sector packet's debit are bounded below by an O(x^{-3/2})-rate error, before determinant or Gaussian corrections.
- **III.10.52** [`condenses`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Rewards.lean#L44-L87) *(key result)* — Local log differences of the condensation are bounded away from seeds by a rate −1/2 error.
- **III.10.53** [`unified_exp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/UnifiedValue.lean#L40-L73) *(key result)* — The assembled dictionary gives a unified exponential value formula for the coat at the manifest width, used by the consolidated and selection-run results.
- **III.10.54** [`seat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Buoy.lean#L46-L78) *(numbered result)* — The integral over shifted stages equals an integral over the full coordinate split with the actual reference density.
- **III.10.55** [`timing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Daisy/Charm.lean#L58-L179) *(key result)* — For large lattice size and uniform parameters, given a rate-controlled V, there exist rate-controlled q, p and a Utopia structure on every admissible step whose Herd bound holds with the stated pressure bound.
- **III.10.56** [`patch_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Diags.lean#L92-L107) *(numbered result)* — The difference of the joint window quantities for two admissible fields is bounded by the number of colors times a pulse cost in the uniform gauge difference.
- **III.10.57** [`fountain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Boulevard/Clasp.lean#L83-L101) *(numbered result)* — Eventually in k, derivatives of a truncated auxiliary analytic charge are bounded by a ticket bound plus a site-count term.
- **III.10.58** [`burst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Thrills.lean#L47-L69) *(key result)* — For the auxiliary lattice step, a positivity bound holds and a brush-type estimate holds at admissible positions.
- **III.10.59** [`read_guides`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Guide.lean#L115-L163) *(numbered result)* — The linear response of costs to the target field on a clean patch is bounded by a rate-controlled function of order -1.
- **III.10.60** [`ligatures`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Laud.lean#L27-L60) *(key result)* — At critical station parameters with c at least 2, the comparisons on auxiliary lattices hold (statement truncated).
- **III.10.61** [`capital`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Costs.lean#L92-L157) *(main result)* — There are uniform per-jump receipt constants for the endpoint windows, valid for all large x and all admissible tubes, stores, and configurations.
- **III.10.62** [`abides`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Rain/Room.lean#L88-L92) *(key result)* — For large n, all derivatives up to the given order of the actual weight function in the allowed directions are bounded by an explicit ticket-cost estimate.
- **III.10.63** [`GrantBodies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L51-L71) *(numbered result)* — A structure bundling the conclusions of a one-step vacuum production of normalized bounds for all words.
- **III.10.64** [`Order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L33-L46) *(numbered result)* — A record of posted parameters and retained covariance bounds for all sectors in one step.
- **III.10.65** [`Rotator`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Shutter.lean#L110-L117) *(numbered result)* — A structure of real-sector window hypotheses at one torus coat.
- **III.10.66** [`stage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Supply.lean#L72-L98) *(main result)* — For a branching patch and local ratio, there is a kiosk of constants such that every matching desk satisfies the quantitative stage procurement bound for all large x.
- **III.10.67** [`erudite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Shellac/Sables.lean#L26-L65) *(key result)* — For large scale t, the full residual is positive and has derivative bounds of order beta^(-23/20) uniformly over admissible step data.
- **III.10.68** [`school`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Calls.lean#L46-L49) *(key result)* — Given delays, one can enlarge them so that all further enlargements satisfy the planks (schedule) conditions.
- **III.10.69** [`rimfire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Alabaster/Basin.lean#L23-L49) *(key result)* — There exist constants such that for an equalized representation with small perturbation t, a summable budget function controls the change of the contribution on healthy molecules.
- **III.10.70** [`meritBar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Alabaster/Molt.lean#L25-L77) *(main result)* — There exist constants K and s such that for equalized representations with t≤s, the orbit is consumed uniformly at unforced molecules with summable budget K.
- **III.10.71** [`spectra`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Alabaster/Satin.lean#L70-L109) *(key result)* — For small t there is a summable budget with constant K controlling the pointed application certificate on varying configurations, with order V.order+2j.
- **III.10.72** [`pressure_mean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Mean.lean#L100-L145) *(key result)* — Away from the seeds, the real path at the stationary mean is uniformly bounded by an error of rate −1.
- **III.10.73** [`cooler`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Sienna/Crone.lean#L60-L90) *(key result)* — Under an exponential-weight and budget inequality, a good configuration slice exists in the staying set with all tolls at most half the threshold.
- **III.10.74** [`treasure`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Malachite/Grain.lean#L42-L79) *(key result)* — There exist rate functions bounding, for large scale x, the first-order jet quantities of the step for all admissible data.
- **III.10.75** [`coaches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Coach.lean#L122-L158) *(key result)* — For any base b≥2 and M>0 there is a uniform constant C≥1 such that, for all steps and tubes with funds, every forest satisfies the linear tree and principal-route licensing bound.
- **III.10.76** [`lookingGlass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Lantern/Lens.lean#L41-L89) *(key result)* — Given rate-controlled data and a Bolt bound with a negative decay rate, there exists a rate-0 function B bounding the quantity eventually.
- **III.10.77** [`royaltyB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Brim/Lode.lean#L32-L100) *(key result)* — There is a rate of order -1/2 giving a uniform remainder bound for every singleton after tuning, for large s.
- **III.10.78** [`sterling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Yearling/Garter.lean#L34-L53) *(key result)* — If the target has positive exponent, there is a threshold side length such that for large parameter x every admissible data admits a nonempty year-structure certificate.
- **III.10.79** [`spicules`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Brim/Heights.lean#L44-L82) *(key result)* — There exist rate functions of given polynomial orders such that a tentacle-type bound holds uniformly over all steps, tubes, supports and configurations.
- **III.10.80** [`rocketsC`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Daisy/Sparks.lean#L36-L61) *(key result)* — For large lattice size, uniformly in parameters, there exist rate-controlled constants and functions such that every admissible step datum has a Captain whose conduit satisfies the Herd bound.
- **III.10.81** [`saleD`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Malachite/Searchlight.lean#L38-L70) *(key result)* — Compact-stencil derivative bounds with decay rates -1 and -1/2 for the dislocation and gap quantities.
- **III.10.82** [`batten`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Yearling/Headwind.lean#L32) *(key result)* — For targets with expenses, there exists M such that the Yearling hood property holds.
- **III.10.83** [`trove`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Mercury/Radio.lean#L31-L101) *(key result)* — A uniform remainder bound with rate -1/2 holds for every singleton contribution after broadcast, for all large scales.
- **III.10.84** [`ired`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Alabaster/Grotto.lean#L25-L98) *(key result)* — For all large x, every step datum with given patch and cash structure has its tube covered, uniformly.
- **III.10.85** [`feather`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Alabaster/Merry.lean#L33-L75) *(key result)* — All log-head and catalog costs at a given point are bounded by a uniform constant for equalized data, uniformly along smooth families.
- **III.10.86** [`masterP`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Alabaster/Courage.lean#L66-L75) *(key result)* — For equalized representations with small t, the emerging quantity changes by at most t times a summable-budget function.
- **III.10.87** [`takeover`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Census/Mettle.lean#L129-L152) *(key result)* — For sufficiently large lattice size, uniformly over patches and parameters, there exist rate-controlled constants and functions such that every admissible step datum admits a 'Captain' structure with a heavy conduit.
- **III.10.88** [`logos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Cub/Chant.lean#L50-L88) *(key result)* — For large enough x, under mild index and smallness conditions, a nonempty structure 'Eve' (bundle of step data at stages) exists.
- **III.10.89** [`twinkles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Census/Horns.lean#L24-L86) *(key result)* — There is a threshold on L such that for all patches and targets, a heavy Utopia structure exists with constant and rate bounds for all large x.
- **III.10.90** [`sweaters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Brim/Sun.lean#L39-L98) *(key result)* — There exist rates N, δ, V of given orders such that a score bound holds uniformly for all sectors and tickets within budget.
- **III.10.91** [`songs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Entrance.lean#L61-L82) *(key result)* — Withdrawing epoch receipts at fixed adjacent-stage prices, there exists a record with small error that is tight and gives the plays bounds for all large x.
- **III.10.92** [`dissent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Dissent.lean#L111-L170) *(key result)* — For large x, the deviation of the Lie predictor vanishes at the origin and its derivative there is bounded by a small temperature-dependent quantity.
- **III.10.93** [`shoots`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Shutter.lean#L119-L144) *(key result)* — For a fixed patch, window parameters exist such that for large x every manifest coat is a rotator, i.e. windows apply in real sectors.
- **III.10.94** [`whittle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Das.lean#L49-L102) *(key result)* — For all large sides, uniformly over patches and cash data, a Utopia structure with controlled constants exists.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

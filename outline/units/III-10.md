# III.10. One full nonlinear renormalization step: bounds on irrelevant terms

*Part III — Ultraviolet construction (renormalization group).*

Bounds the large-field and fluctuation contributions produced by one nonlinear renormalization step.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/III-10.md) · [← Previous: III.9](III-9.md) · [Next: III.11 →](III-11.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** [`YM/Work/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work) (items E01–E09, H01–H04, I01–I04), [`YM/Bid/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid), [`YM/Next/FLUCTUATIONS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS), [`YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6), [`YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP), [`YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD), [`YM/Pressure/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure) (definitions). **Size:** 49,448 lines in the source allocation.

**Conventions.** Levels are indexed from coarse to fine, as in III.9.

- *Step and couplings.* One step $S$ goes from a fine torus of side $f=cL$ to a coarse torus of side $c$, with odd block factor $L\ge3$. Write $x$ for the coarse reference coupling $\hat\beta_m$. The fine coupling is $\beta_F=x+b_G\log L=\hat\beta_{m+1}$ ([`clock_next`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Intake.lean#L67-L70)), where $b_G\ge0$ is the one-loop slope of III.9; $b_G>0$ when the Lie algebra of $G$ is simple.
- *Thresholds, radius and cutoff.*
$$t_c(x)=x^{-1/2}e^{(\log\log x)^2}\ \text{(coarse field)},\qquad t=t_c(\beta_F)\ \text{(fine field)},\qquad T=\beta_F^{-49/100}\ \text{(large field proper)},$$
  with cluster radius $B=\lceil(\log x)^2\rceil$ and path-length cutoff $R=\lfloor B/10^5\rfloor$.

- *Sizes.* Since $e^{(\log\log\beta)^2}=\beta^{o(1)}$, we have $t=\beta_F^{-1/2+o(1)}\ll T$. On the other hand $\beta_Ft^2=e^{2(\log\log\beta_F)^2}$ grows faster than every power of $\log\beta_F$.
- *Field sizes.* $\chi(g)$ is the chordal distance from $g\in G$ to $1$. For a plaquette $p$, $|U_p|=\chi(U_{\partial p})$. For a coarse bond $b$, $w_b=\chi(V_bQ_b^{-1})$ measures how far the coarse field $V$ is from the block-spin predictor $Q=Q(U,k)$ of the fine field $U$ with gauge-fixing tags $k$ (III.1).
- "For all large $x$" means $x\ge x_0$, with $x_0$ independent of the period and volume. Other dependencies are specified in each statement.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

One-step energy, activity, derivative and Gaussian bounds support the effective-action construction of III.9; III.10.6 supplies start-up fusion and marker estimates.

**Data of a step.**

- *Request.* A request $P$ ([`Teller`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L89-L96)) consists of:
  - kernel choices $K$, with penalty $a>0$ and cuts;
  - a fine stage and a coarse stage, each with clip constants $\alpha,\lambda,\rho>0$ satisfying $\lambda<\alpha/16$ ([`Clip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139-L146)), a path width and a path budget;
  - a step index $j$ and constants $\eta>0$, $C$.
- *Tube.* A tube $\mathscr T$ ([`Tube`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L94-L99)) carries the towers $\Phi,\Phi',N$ and the fine and coarse path data. $\Phi$ maps coarse plaquette coordinates to fine plaquette coordinates; $\Phi'$ maps them to coarse-bond ("interior") coordinates; $N$ maps them to gauge coordinates.
- *Admissibility.* A step with tube $(S,\mathscr T)$ is admissible for $P$ ([`Teller.Funds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L101-L109)) if:
  - $S$ uses $K$ and index $j$;
  - the patch is well posed ([`Branches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185): unique minimizers whenever the frame or predictor selector uses minimization, and a nonempty set of eligible axial tags for every configuration);
  - the scalar tower coefficients have exponentially weighted absolute sums at rate $\eta$ bounded by $C/L^2$ for the fine kernel and $C$ for the interior and gauge kernels. Finite differences of order $\ell\le j-2$ of the one-form and two-form cross kernels have bounds $C/L^{1+\ell}$ and $C/L^{2+\ell}$, respectively ([`YM.Precision.Towers.Deep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L111-L114));
  - the clips and path budgets are those of $P$;
  - the flat, uncut tower matrices satisfy the exact identities [`Towers.Roll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L88-L96), among them the resolution of the identity
$$\Phi_0^*\Phi_0+\Phi_0'^*\Phi_0'+N_0^*N_0=1.$$
The transported kernels cut at length $R$ need not satisfy this identity; their defects are estimated in Steps 5–6.

**Seeds.** A store $A=(A_F,A_I,A_\flat)$ ([`Stores`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L34-L37)) consists of finite sets of fine plaquettes ("costs"), coarse bonds ("aisles") and coarse sites ("flags"). $\sharp A$ is the sum of their cardinalities, including coincident seeds of different types. $D_r(A)$ is the coarse $r$-neighbourhood of their positions: all parent sites touched by a fine plaquette, both endpoints of a coarse bond, and each flag site. $A$ is *consistent* with $(U,k,V)$ at $(x,W)$ ([`Plot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L51-L58)) if the following hold:

- whenever a parent site touched by $p$ meets $D_{5B}(A)$, $p\in A_F$ implies $|U_p|\ge t/4$, and $p\notin A_F$ implies $|U_p|\le t/2$;
- whenever an endpoint of $b$ meets $D_{5B}(A)$, $b\in A_I$ implies $w_b\ge Wt$, and $b\notin A_I$ implies $w_b\le2Wt$;
- $A_\flat$ agrees with the flags of $V$ at threshold $t_c(x)$ on $D_{5B}(A)$;
- each site tag based in $D_{5B}(A)$ has positive frame weight.

Nothing is assumed outside $D_{5B}(A)$. The *spent* seeds $A^{\rm sp}$ are the costs with $|U_p|>T$ and the aisles with $w_b>T$.

**Action gap.**

- *Clipped density.* For a stage with clip $(\alpha,\lambda,\rho)$ and threshold $s$, the clipped density of a plaquette is $\phi_s(|U_p|)+\mathbf 1_{\rm kept}\tfrac12|\ell_p(U)|^2$ ([`crown`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L68)). Here:
  - $\phi_s(r)=\alpha r^2/2$ for $r\le s$ and $\phi_s(r)=\lambda sr$ for $r>s$ ([`clipped`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L218-L219));
  - $\ell_p(U)$ is the path series of the stage, cut at length $R$;
  - "kept" means $|U_q|\le s\,e^{{\rm dist}(p,q)/\rho}$ for all $q$ ([`kept`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L210-L211)).
- *Actions.* $\mathcal A_F(U)$ is the fine clipped action (fine stage, threshold $t$) and $\mathcal A_c(V)$ the coarse one (coarse stage, threshold $t_c(x)$).
- *Step functional.* $\mathcal E_A(U,V)$ ([`assessed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L85)) is the sum of the row contributions of Step 1 over the rows located in $D_{2B}(A)$. Summed over all rows of the torus, the same contributions give exactly
$$\mathcal A_F(U)+\frac a2\sum_b w_b^2-\mathcal A_c(V).$$
  So $\mathcal E_A$ is the action gap of the step (fine action, plus block-spin penalty, minus coarse action), localized near the seeds.

**Proposition III.10.1 (energy per seed).** Let $P$ be a request. There is $L_0$ such that for every block factor $L\ge L_0$ there is $W_0(L)$ such that for every $W\ge W_0$ there is $x_0$ with the following property. Take $x\ge x_0$ and:

- a step $S$ of block factor $L$ with coarse side $c\ge100(1+B)$, and a tube $\mathscr T$ admissible for $P$;
- a spanning forest $F$ of the block structure, and a fine field $U$ equal to $1$ on the trunks of $F$;
- a store $A$, tags $k$ and a coarse field $V$ such that $A$ is consistent with $(U,k,V)$ at $(x,W)$.

Then
$$\kappa\,t^2\,\sharp A\;\le\;\mathcal E_A(U,V),\qquad \kappa=\tfrac12\min\{\lambda_F/8,\ a/32,\ \alpha_c/64\},$$
where $\lambda_F$ is the linear clip constant of the fine stage and $\alpha_c$ the quadratic clip constant of the coarse stage.

*Status:* theorem under the stated admissibility, tree-gauge and consistency hypotheses.

- The Lean statement ([`Teller.cash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L124-L125), [`Teller.Grants`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L129-L131)) asserts only some $\kappa>0$ chosen after $L$ and $W$. The value above is the one the proof produces (Step 7), and it is independent of $L$ and $W$.
- This deterministic estimate precedes the Gaussian tail and activity bounds of III.10.2.

*Lean:* proved by [`Fluctuations.grants`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L24). This is [`Integrated.pressure_grants`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L222-L225) applied to [`Fluctuations.bare`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Bare.lean#L64-L120), through [`Bid.issues`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L155-L158).

**Proposition III.10.2 (activities of one step).** Let $P$ be a request and $\mathcal T$ target data ([`Target`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/OptionCost.lean#L62-L76)): constants $\varepsilon,\delta>0$, $e\ge0$, a rate $r\in(-\tfrac12,0)$, a halo $h\ge500$ and a local exponential chart of $G$, with $4\varepsilon$ below the support exponent of the fine stage and $8\varepsilon$ below both stage widths. Put $a_*=e+2\varepsilon+\delta$.

There is $L_0$ such that for every $L\ge L_0$ and every large $W$ there is $\mu>0$ with the following property. For every patch $D$ of block factor $L$ satisfying the branch condition there are window constants $o$ ([`Target.Order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L33-L46): a decay rate, a spectral gap, a shell width $K$, a Lipschitz constant $\gamma$, a drift cap, a plateau $a_o$ and a trigger level $\xi$) and a constant $C\ge0$ such that the following holds for all large $x$, every step $S$ on $D$ with $c\ge100(1+B)$ and every tube admissible for $P$ ([`Works`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Room.lean#L25-L28)).

- (a) The conclusions [`GrantBodies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L51-L71) hold:
  1. the bound of III.10.1 holds at this $x$ with constant $\mu$ ([`PointCharge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L29-L32));
  2. if $U$ is in tree gauge and, within coarse distance $B/4$ of the bond's parent site, site tags have positive frame weight, fine plaquettes have size at most $t/2$, and coarse mismatches are at most $2Wt$, that link lies within $Kt$ of the replicated coarse link; the Lie logarithm is reliable at that radius ([`ShellAccess`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Coat.lean#L25-L29));
  3. in every sector whose flags are the actual flags of $V$ ([`manifest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Currents.lean#L21)), the Gaussian precision matrix is symmetric, has exponentially decaying entries and a positive spectral lower bound, and the covariance formed from its local inverses is positive definite ([`Rotator`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Shutter.lean#L110-L117));
  4. the Gaussian centring drift has norm at most ${\rm cap}\cdot t$ at each fine bond. If the tube also satisfies the compatibility condition in (b), then, for every $\beta>0$, a fluctuation satisfying $|z_j|\le\xi t\sqrt\beta$ on all coordinates within distance $B$ of a site farther than $30B$ from the seeds has site and bond tag masses one, $|U_p|<t/4$ for plaquettes based there, and $w_b<Wt$ for bonds based there;
  5. numerical margins hold: $4a_ot$ is below the chart radius, and, for the window's positive inverse-kernel constants $\tau_0,C_0$ and window bound $Q_0\ge1$, the quantity $\epsilon_B=e^{-\tau_0B}(Q_0C_0+1)$ satisfies $\epsilon_B<1$ and $Q_0C_0\epsilon_B<1$.
- (b) The conclusions [`Invoices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L73-L88) hold for every tube satisfying the free-kernel compatibility condition [`Stamp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Voyage.lean#L25-L27), and for every input representation $K$ of the fine-level density as in [`Intake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Intake.lean#L42-L49). The input has the fine-stage support exponent, threshold $t$, coupling $\beta\in[\beta_F/2,2\beta_F]$, the path data and clips of $\mathscr T$, cluster radius $B(\beta_F)$, and activities obeying the incoming bounds of III.9: $E$-norm $\beta_F^{-11/10}$, $K$-norm $e^{-M^{1/5}}$ and loop budget $2M$, where $M$ is the fine monitor. The conclusions are:
  1. the cost record with gain $\beta\mu t^2$ per seed and spend $C\,{\rm bill}(x)^5$, where ${\rm bill}=1+B+(\log\beta_F)^2$, passes the tree-graph summability test [`Buy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L47-L58);
  2. the letters of the new gas carry weights $k_i,y_i,E$ satisfying a rooted Kotecký–Preiss condition with exponent $\varepsilon$ and total $\beta_F^{\,r}$ ([`Sales`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Weights.lean#L27-L29)). For a letter with support $X_i$ and extra length $d_i$, this means nonnegative weights $u_i$ with
$$\sum_{i:o\in X_i}u_i\exp\big(a_*N_B(X_i)+2\varepsilon d_i\big)\le\beta_F^r\qquad\text{for every coarse site }o.$$
     Here $N_B(H)$ is the minimum number of radius-$B$ balls whose connected union contains $H$. The letters are the forced activities of $K$, the logarithmic letters, and the warning letters. Their weights are respectively $k_i$, $y_i$ and $E$ times a fixed patch-dependent warning-amplitude bound; warning letters have $d_i=0$;
  3. in every manifest sector, the following bounds hold:
     - the old activities are bounded by $k_i$;
     - the logarithmic letters $\ell_i$ and the differences $e^{\ell_i}-1$ are bounded by $y_i$;
     - every packet weight satisfies $|{\rm Pack}|\le\exp\big((C\,{\rm bill}^5-\beta\mu t^2)\,\sharp A\big)$ ([`Pack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Revenue.lean#L23-L24));
     - for every set $v$ of warning addresses, the Gaussian measure of the catastrophe set is at most $E^{\sharp v}$. The catastrophe set consists of the fluctuations $z$ for which, near the anchor of each address in $v$, some coordinate within distance $2B$ satisfies $|z_j|\ge\xi t\sqrt\beta$. Every fluctuation that triggers the warnings on $v$ lies in that set.

*Status:* theorem. The target data, fine input bounds and free-kernel compatibility are hypotheses. The input bounds are supplied along the RG trajectory (III.9); the compatibility construction is discussed in §7.

- *Quantifier order:* $L_0$, then $W$, then $\mu$ (uniform in $D$), then $(o,C)$ for each patch, then $x$.
- *Size of the per-seed factor.* Since $\beta\mu t^2\ge\frac\mu2e^{2(\log\log\beta_F)^2}$ and ${\rm bill}^5=O((\log\beta_F)^{10})$, the factor $e^{C{\rm bill}^5-\beta\mu t^2}$ is eventually smaller than every power of $\beta_F$.

*Lean:* [`Target.issue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L94-L185). [`Target.quotesTogether`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/IssuePlan.lean#L53-L69) repackages the output as the bundle [`Cash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Batch.lean#L82-L97) (the activity estimates together with witnesses for the letter weights).

**Proposition III.10.3 (derivatives of the new activities).** Let $P$ and $\mathcal T$ be as in III.10.2. There is $L_0$ with the following property. Fix $L\ge L_0$, a patch $D$ satisfying the branch condition, an order $i\in\mathbb N$, a sector cutoff $\chi$, $W,\mu>0$, window constants $o$, and chart constants $(A,f)$ satisfying [`YM.ConnectedActivityE6.Blaze.Eider.Canary`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Eider.lean#L32-L37). The latter require $A,f>0$, $\log(\exp u)=u$ for $|u|\le2A$, $\exp(\log(\exp u\,g))=\exp u\,g$ for $|u|\le A$ and $\|g-1\|\le f$, and analyticity of $M\mapsto\log(\exp u\,M)$ for $|u|\le2A$, $\|M-1\|\le f$. Fix a function $\mathcal V$ of rate $-1/2$ that is eventually nonnegative (rate as defined in §6).

There are $C\ge0$, functions $q,\rho,p$ of rates $-1/2,0,0$, respectively, and $l\in\mathbb N$ such that, for all large $x$, the following holds for every step on $D$ satisfying the compatibility condition, every fine representation $R$, and every bound bundle $H$ of III.10.2 at $(W,x,\mu)$. One has $8a_ot\le A/2$ and a derivative-bound structure $\Xi$ ([`Utopia`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Das.lean#L27-L46)) with the following properties in every sector at $x$, of shell width $K$ from $o$, cutoff $\chi$, and with the actual coarse flags.

- Its nonpacket weights satisfy the rooted bound of III.10.2(b) with total $\beta_F^r$. Its catastrophe probabilities, with trigger $\xi/2$, are at most $(\mathrm{rad}^2)^{\sharp v}$.
- Let $V(y)$ be a family of coarse fields on a finite-dimensional real normed parameter space, based at the sector field $V(y_0)=V_0$. Suppose each link matrix is $C^i$ at $y_0$ and
$$\|D^m V_e(y_0)\|\le c_G\mathcal V(x)^m\qquad(0\le m\le i),$$
  where $c_G$ is the fixed matrix-norm bound in [`Mode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Tint.lean#L21-L23). Transport the fluctuation coordinates compatibly with this family: the physical and Gaussian coordinates represent the same field, their physical displacement has all derivatives through order $i$ bounded by $q(x)$, and, near $y_0$, the resulting fine field agrees with the held fine field on every cold bond and on every hot bond whose physical coordinate has norm at most $8a_ot$ ([`YM.ConnectedActivityE6.Blaze.Silica.Clutch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Eskim.lean#L86-L95)). In a region disjoint from the coarse flags, each letter $a_j$ is $C^i$ at $y_0$ and satisfies
$$\|D^m a_j(y_0)\|\le\mathrm{cost}_j\big(\rho(x)\mathrm{span}_j\big)^m\qquad(0\le m\le i)$$
  ([`Brush`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Brush.lean#L44-L47)). Packet spans are one; other spans include their support and path lengths. The costs use the packet estimate and the nonpacket weights before extracting the catastrophe-probability factor.

The same $\Xi$ satisfies an integrated estimate ([`Herd`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Daisy/Charm.lean#L48-L55)). Let $\mathfrak p$ be a finite molecule with connected support-overlap graph and total support disjoint from the flags. Require that its packet stores are connected with pairwise disjoint radius-$hB$ neighbourhoods, that its old forced supports are pairwise disjoint, and that every site in an old forced inventory touches a fine-plaquette seed in the union of the packet stores. Along a family $V(y)$ as above, the prescribed transported integrand is $C^i$ at $y_0$ and has every derivative of order at most $i$ bounded by an integrable function $g$. With $d\nu=d\lambda_F\,d\gamma$, the product of tree-slice Haar measure and Gaussian fluctuation measure,
$$\int g\,d\nu\le |p(x)|\prod_{j\in\mathfrak p}\mathrm{fare}_j\,(1+\mathrm{shape}(\mathfrak p))^l.$$
The fares include a factor $\mathrm{rad}$ for each distinct warning address. For one measurable, gauge-invariant source letter of amplitude at most $w_M$, local with its eligibility tests included, the same estimate replaces its fare by $w_M$. A forced source must vanish outside the original eligibility set; a regular source occupies an unused regular-letter address. The remaining warning and shape factors are unchanged.

*Status:* theorem, conditional on the input bound bundle and compatibility. The constants and functions are uniform in the volume. [`Captain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Captains.lean#L27-L36) and [`rocketsC`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Daisy/Sparks.lean#L36-L61) also control iterated left derivatives in spatially weighted directions.

*Lean:* [`Utopia.whittle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Das.lean#L49-L102) (letter jets), [`timing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Daisy/Charm.lean#L58-L179) (integrable majorants).

**Proposition III.10.4 (Gaussian sector of the step).** Fix a patch $D$, a request $Q$ for which $D$ satisfies the branch condition, an aperture $B_0>0$, a sector cutoff $\chi$, and $k,p\in\mathbb N$. There are $\sigma,d>0$ and $\pi\ge1$ ([`Charges`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Costs.lean#L34-L42)) such that the following holds for all large $x$.

Take $0<\beta\le2\beta_F$, a budget point of power $p$ and threshold $t_c(x)$, a step on $D$ with $c\ge100(1+B)$ admissible for $Q$, a forest, tags, and a store $A$ whose flags equal the flags of $V$ on the whole coarse torus. Freeze $A$, the forest and tags while differentiating. Let $\Gamma$ be the sector precision matrix, $\widetilde\Gamma$ its local approximate inverse, $m$ the smooth sector mean at aperture $B_0t$, and $h=-g^{-1}$ times its stationarity residual, with $g=\beta^{-1/2}$. These are the objects in [`Value`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Costs.lean#L60-L74). Then $\Gamma$ and $\widetilde\Gamma$ are positive definite, and $m$ equals the stationary logarithmic mean for every frozen-link input.

For a coarse site $o$ and $0\le m\le k$, let $\mathcal D^m$ be an iterated left derivative in $m$ directions satisfying $|A_e|\le t_c(x)(1+\mathrm{dist}(e,o))^p$. If $x_i$ is the coarse location of coordinate $i$, put
$$G_i=(1+\mathrm{dist}(x_i,o))^{pk}.$$
The bounds are
$$|\mathcal D^m\Gamma_{ij}|\le\pi e^{-\sigma\mathrm{dist}(x_i,x_j)}G_i^m,\qquad |\mathcal D^m(\Gamma\widetilde\Gamma-1)_{ij}|\le e^{-dB}\pi e^{-\sigma\mathrm{dist}(x_i,x_j)}G_i^m,$$
$$|\mathcal D^m m_i|\le\pi tG_i^m,\qquad |\mathcal D^m h_i|\le e^{-dB}\pi G_i^m.$$
Thus the spatial exponent at derivative order $m$ is $pkm$.

*Status:* theorem. [`JointLoad.stage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Supply.lean#L72-L98) also supplies a covariance cap and a trigger-tail estimate; its scales are given in §7.

*Lean:* [`JointLoad.capital`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Costs.lean#L92-L157).

**Proposition III.10.5 (schedule).**

- (a) Let $P$ be a sheet of pre-$L$ data (III.2) and $K$ a price map. There are floors $k_i$ with the following property. Take block factors $L_i\ge k_i$, any protection, any delays $V$ and any $m\ge0$. Then there are delays $W$, differing from $V$ only by larger entry couplings $\beta^*_i$, and numbers $F_{ij}\ge m$, such that for every pair of stages $j\le i\le j+1$ with $j$ at least the first stage of $P$ the bound of III.10.1 holds at every coarse coupling $x\ge\beta^*_i$, for the request with fine stage $i$, coarse stage $j$ and step index $i$, with block factor $L_i$, aisle multiplier $F_{ij}$ and some $\mu_{ij}>0$ uniform in $x$, period and volume ([`Ringing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L161-L163)).
- (b) If $G$ is simple, then for every window datum of III.2 (entry and plateau requirements) there is a level schedule that meets all requirements of III.2 ([`Paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162)) and whose periods are divisible: for every side $c$ and every $z$ there is a period index $p\ge z$ with $c\mid{\rm period}(p)$.
- (c) Along a directed trajectory satisfying (a), fix an adjacent stage pair $i=J(m)$, $j=J(m+1)$ with $i$ at least the first stage of $P$. There is $\mu>0$, uniform in the cutoff $N$, level $m$ and period, such that for $m<N$ at this pair and $x=\hat\beta_m$, one has $\mu\,t_c(\hat\beta_{m+1})^2\,\sharp A\le\mathcal E_A$ whenever the fine field is in the chosen tree gauge and the store is consistent at multiplier $F_{ji}$.

*Status:* theorems. Part (a) is unconditional ([`pressure_pricing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L32-L37) applies [`Bid.pricing_order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L173-L202) to III.10.1). Divisibility is what lets torus tilings fit in III.12–III.13.

*Lean:* [`Wait.engine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L26-L135), [`notation_ticket`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L166-L181).

**Proposition III.10.6 (start-up fusion H01–H04; markers I01–I04).**

(H) *Setting.* Fix a budget point and:

- a *pipe* $X$: regular and forced addresses, and supports of logarithmic letters;
- a *tap* $d$: regular activities, forced activities $K_i$ and logarithmic letters $\ell_i$.

The *fused* gas ([`fused`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L78)) groups the forced activities and the factors $e^{\ell_i}-1$ into connected clusters (pellets). Each pellet contains at least one forced activity, and the forced supports in a pellet are pairwise disjoint.

*Hypotheses.* Fix a bijective enumeration of the pellets. Let $\kappa,\gamma\ge0$.

- $d$ is *digested* ([`Digests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L81-L90)): the gas is valid with specified regular and forced bounds; the logarithmic family has a summable uniform majorant, and each letter is measurable, gauge invariant, local with the flag tests included, vanishes on healthy configurations, and is translation and lattice-symmetry covariant.
- $d$ is *bought* with constants $\kappa,\gamma$ ([`Buys`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L94-L98)): $|K_i|\le e^{-\kappa}f_i$ and $|e^{\ell_i}-1|\le f_i$, where $f\ge0$ satisfies the rooted Kotecký–Preiss condition at support exponent one larger than the budget exponent, with total $\gamma$, and $(2B+1)^4\gamma\le1$.

*Conclusions.*

- (H01) For every configuration $V$, the fused gas equals the original gas times $\exp(\sum_{i=0}^\infty\ell_i(V))$.
- (H02) The fused activities satisfy the $K$-bound with any price $v\ge e^{-\kappa}(e^\gamma-1)$.
- (H03) The fused system is a forced family and admits the lattice-symmetry moves.
- (H04) Fix the paths, clip, budget point, addresses and pellet enumeration. Suppose the original representations form a continuous curve on a subset of $\mathbb R$, each forced or exponentiated logarithmic letter varies continuously in the supremum norm over configurations, and a single nonnegative rooted majorant as above works throughout the parameter set. Then the fused representations form a continuous curve in the same representation norm. This is a fixed-volume assertion.

(I)

- (I01) Let $B\ge8$, let $F$ be a set of at least two markers with pairwise separation at least $B^2$, and let $F\subset H$. Then $B\,\sharp F\le64\,N_B(H)$, where $N_B(H)$ is the minimum number of radius-$B$ balls with connected union covering $H$. The markers lie on a finite periodic lattice with its max-distance; no nonwrapping hypothesis is required.
- (I02) Fix a representation with budget order $n$. Suppose marker bands satisfy [`YM.Mix.Stubs.Holds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Fuels.lean#L66-L70) at $r>0$: valid local addresses, $r$ times every unit amplitude at most one, $B\ge8$ and separation at least $B^2$ for each pair of distinct markers, factorially weighted derivative majorants, and separate rooted budgets at most one for single-marker and multiple-marker terms. For the multiple-marker budget one may instead use positive weights $t_v$ and an extra exponent $\delta\ge0$, with $r\le t_v e^{\delta B/64}$ for every marker $v$ and a rooted budget at most one using support exponent increased by $\delta$. Then, at weight $r/n!$, the bands satisfy [`YM.Overlay.Bands.Radial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Overlay/Table.lean#L56-L65): positive weights, unit-amplitude bound one, and rooted ordinary derivative and forced-entry bounds at most two each.
- (I03) Let a family satisfy the marker schedule condition: $B_{r+1}^2\le2B_r^2$ for every $r$, and $(L_rB_r^2)^4\mathcal F_{r+1}=o(\mathrm{scale}_{r+1})$. Here $a_r$ is the lattice spacing, $L_r=a_r/a_{r+1}$, and the vacuum bound is
$$\mathcal F_r=2(2+4P_r)+1+6(\alpha_r+P_r^2)+4d_G\big(\log16+\tfrac12\log\hat\beta_r\big),$$
  with $P_r$ the stage's path budget, $\alpha_r$ its direct clip coefficient and $d_G=\dim_{\mathbb R}M_m(\mathbb C)$ for the defining matrix representation. This is the hypothesis of [`YM.Stock.Tabs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Overlay/Prior.lean#L15-L18). Fix $k\ge1$ and levels $m\le i$ such that $kB_i^2\le a_m/a_i$ (an open stop). For every $N\ge i$ and every period, the centred copies at level $N$ are the embedded sites from level $m$; their parents agree at consecutive levels from $m$ to $N$; and distinct embedded sites are separated by at least $kB_r^2$ for every $i\le r\le N$.

- (I04) Assume $G$ is simple. For every family, every $p>0$ and $r\in\mathbb N$, if ${\rm order}_i!\le{\rm columns}_i$ for all $i$, then the widths
$$w_i=\frac{\hat\beta_i^{-r/2}}{p\,{\rm columns}_i\prod_{m<i}{\rm columns}_{m+1}}$$
  are positive, and for every $\varepsilon>0$ eventually $5-\log(w_i/{\rm order}_i!)\le\varepsilon\,{\rm scale}_i$.

*Status:* theorems. In the main-theorem closure:

- H01–H04 are used by the start-up representation at the finest level;
- I01, I03 and I04 are used by the replicated-marker constructions;
- the assemblies [`Oust.begins`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L56-L66) and [`Bid.installs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Fuels.lean#L146-L174) are not in the closure.

*Lean:*

- Statements: [`H01`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L15-L16), [`H02`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L20-L21), [`H03`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L23-L24), [`H04`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L33-L35), [`I01`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Fuels.lean#L124-L126)–[`I04`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Fuels.lean#L140-L142).
- Proofs: [`H01.gathered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H01.lean#L245-L251), [`H02.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H02.lean#L17-L80), [`H03.fused_forcedFamily`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H03.lean#L138-L209), [`H04.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H04.lean#L155-L161), [`I01.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I01.lean#L19-L82), [`I02.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I02.lean#L159-L180), [`I03.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I03.lean#L43-L63), [`I04.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I04.lean#L76-L129).

<a id="unit-inputs"></a>

## 2. What it uses

- **III.1:** block-spin patches, tree gauge, predictor and tags; predictor-curvature reduction by $L^{-2}$ ([`qdc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L210-L252)). The branch condition holds for the construction's kernel choices ([`Foundations.branches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L70-L71)).
- **III.2:** sheets, block factors, protection, delays, entry and plateau requirements.
- **III.3–III.4:** flat tower identities and exponential decay (III.3 attribution probable), Gaussian integration and rectangle tails.
- **III.5–III.8:** polymer representations and Kotecký–Preiss bounds, stationary means and jets, quartic matching, connected-activity locality.
- **III.9:** $b_G$, thresholds, monitor and the incoming allowances $\beta_F^{-11/10}$, $e^{-M^{1/5}}$, $2M$.
- **I.1, II.2, III.16:** lattice geometry, Haar measure, chordal distance, activities and Taylor jets.

Standard results: Balaban's lattice-gauge renormalization method, rooted Kotecký–Preiss and tree-graph bounds, Schur's test, Gaussian exponential moments and Taylor estimates on compact charts. Request and target data precede $L$; window constants follow $L,W$ and the patch. Simplicity is required in III.10.5(b) and I04.

<a id="unit-strategy"></a>

## 3. Strategy

Seeds cost $\kappa t^2$ each. At $\beta\ge\beta_F/2$, their Boltzmann suppression pays every fixed polylogarithmic entropy loss. Completed squares isolate positive row contributions and two kernel defects: affected cells are paid by spent seeds, while local gauge fixing and flat identities reduce unaffected defects to chart errors and exponentially small tails.

Gaussian integration produces packet, old forced, logarithmic and warning letters. Energy and annulus estimates bound packets; simultaneous Gaussian excursions bound warnings. Rooted bounds sum connected molecules. Compatible fluctuation transport controls derivatives, and Cauchy–Schwarz preserves one square root of the simultaneous-warning probability in integrated bounds.

<a id="unit-steps"></a>

## 4. Steps

Steps 1–7 use III.10.1's admissibility, tree gauge and consistency hypotheses; all thresholds are independent of period. Steps 8–10 use III.10.2–III.10.3's activity, compatibility and derivative hypotheses; Steps 11–12 use III.10.6 and III.10.5, respectively.

1. **Complete the squares.** Fine, interior, coarse and gauge rows, together with the linear and completeness defects, sum exactly to $\mathcal A_F+\frac a2\sum_b w_b^2-\mathcal A_c$ by adjoint cancellation; $\mathcal E_A$ retains rows in $D_{2B}(A)$. [`Tube.locates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L145-L163).

2. **Pack seeds and compare links.** Fine plaquettes have bounded macro-box multiplicity; coarse plaquettes above a fixed $\delta>0$ lie within $4B/5$ of spent seeds, and the relevant neighbourhood contains $O(B^4\sharp A)$ coarse plaquettes. Closing fine links by tree paths bounds their distance from replicated coarse links by macro-box curvature plus crossing mismatches. [`Work.E01.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E01.lean#L289-L324); [`Work.E02.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E02.lean#L132-L244).

3. **Bound kernels and predictions.** Absolute row and column sums control transported kernels and path series; in particular $|v|\le At$, $|\Phi v|\le At/L^2$, $|\Phi'v|\le At$, with $A$ independent of $L,W$. Norm-one adjoint transport and exponentially weighted coefficient sums give these estimates. [`Work.E03.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E03.lean#L228-L256); [`Work.E04.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E04.lean#L282-L307).

4. **Obtain positive row charges.** Large $L$ separates fine seeds from their predictions, and large $W$ separates mismatch seeds; dropped path terms are paid after summation by column bounds. Coarse rows above $t_c$ and below a fixed $\delta$ are positive, while small coarse rows lose $O(t_c^4)$; affected-cell losses are charged to large fine inputs, mismatches and $O(t^2B^4\sharp A^{\rm sp})$. [`Work.E05.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E05.lean#L211-L228); [`Work.E06.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E06.lean#L413-L440); [`Work.E07.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E07.lean#L115-L158).

5. **Cancel flat defects.** Outside the affected set, local axial gauge fixing makes fine and coarse links $h=CB^{10}T$-close to identity; the flat uncut tower identities cancel both linearized defects. Comparing transported, truncated quantities with their flat versions leaves errors governed by $\omega=(1+R)h+e^{-\tau R}$. [`Work.E08.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E08.lean#L342-L344); [`roll_l`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Linear.lean#L89-L136); [`roll_d`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Linear.lean#L69-L87); [`global_chart_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Global.lean#L76-L148).

6. **Sum unaffected defects.** Gauge covariance, locality and extension to global log-fields apply the chart estimates locally; the total defect loss is at most $\varepsilon t^2\sharp A$ for every $\varepsilon>0$ and all large $x$. The factor $B^4$ is absorbed because $B^n\omega\to0$ and $B^nh\omega/t\to0$ for every $n$. [`interior_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Interior.lean#L22-L63); [`Fluctuations.bare`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Bare.lean#L64-L120).

7. **Assemble the energy bound.** Choose $L$, then $W$, then $x$: the first absorbs fine cross terms, the second mismatch losses, and the last all remaining losses, using spent-seed charges of size $tT$. The row sum gives exactly III.10.1's $\kappa$. [`Work.E09.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E09.lean#L113-L159).

8. **Bound packets and other letters.** The annulus remainder has rate $-3/2$ and is absorbed into $C\,\mathrm{bill}^5$; retained energy gives the packet estimate. Incoming bounds and rate calculus control old and logarithmic letters, including both $\ell_i$ and $e^{\ell_i}-1$. [`Coat.earns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/AssignedPrice.lean#L54-L86); [`steam_prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Revenue.lean#L99-L140); [`recommends`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Quotation.lean#L47-L92). *(annulus statement only; other proofs read)*

9. **Control Gaussian warnings.** Coercivity and exponentially decaying rows give a positive precision and covariance, an $O(t)$ drift and a small residual; compatibility gives the no-new-seed margins. Gaussian rectangle tails, summed over local witnesses, make catastrophe weights smaller than every inverse power of $\beta_F$; these bounds combine with Step 8 into III.10.2. [`shoots`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Shutter.lean#L119-L144); [`Coat.ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Peak.lean#L92-L188); [`Coat.alarm_bills`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/ResponsePrice.lean#L65-L112); [`Target.issue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L94-L185).

10. **Differentiate letters and integrate molecules.** Compatible coordinate transport gives letter jets with rate-zero derivative scale and catastrophe probability $\mathrm{rad}^{2\sharp v}$. Leibniz bounds and Gaussian moments, followed by Cauchy–Schwarz, retain $\mathrm{rad}^{\sharp v}$ in the integrable molecule majorant; a source amplitude replaces its fare. [`Utopia.whittle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Das.lean#L49-L102); [`timing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Daisy/Charm.lean#L58-L179).

11. **Fuse and propagate markers.** Absolute convergence justifies Mayer regrouping; a retained forced-letter factor and rooted tree sum give $e^{-\kappa}(e^\gamma-1)$, while common domination gives continuity. Connected ball-cover traversal proves I01; extra support decay and factorial rescaling give I02, composing centred embeddings gives I03, and subscale logarithmic column growth gives I04. [`H01.gathered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H01.lean#L245-L251); [`H02.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H02.lean#L17-L80); [`H04.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H04.lean#L155-L161); [`I01.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I01.lean#L19-L82); [`I02.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I02.lean#L159-L180); [`I03.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I03.lean#L43-L63); [`I04.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I04.lean#L76-L129). *(proof read; H03 symmetry moves statement only)*

12. **Choose levels and periods.** Adjacent-stage floors and larger entry couplings enforce the energy estimates; finite-request scheduling supplies the remaining requirements. Periods $4(M+p+1)$ admit arbitrarily late multiples of every side. [`Bid.pricing_order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L173-L202); [`Wait.engine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L26-L135).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

Fine-input coefficients must remain independent of $L$, and mismatch coefficients independent of $W$, until those parameters absorb the cross terms. Transported, truncated kernels lack exact completeness: only their flat versions cancel, so local gauge fixing and tail estimates must control the defects after neighbourhood summation. Derivative integration must also retain a gain for every distinct warning address under compatible fluctuation transport.

<a id="unit-notation"></a>

## 6. Notation

$\sharp A$ counts all three seed types, including coincident types; $D_r(A)$ uses coarse max-distance. $\Phi,\Phi',N$ are transported towers, with subscript zero denoting flat uncut operators; $v$ denotes thinned coarse coordinates. $N_B(H)$ is the minimum connected radius-$B$ ball-cover size. A function has rate $a$ when, for every $v>a$, its absolute value is eventually at most $\beta_F^v$ ([`Rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Numerics.lean#L22-L23)). In III.10.3, $\rho$ is the rate-zero jet scale and $\mathrm{rad}$ is the square root of a warning-probability bound; in III.10.4, $\Gamma,\widetilde\Gamma,m,h$ denote precision, approximate inverse, mean and scaled stationarity residual.

<a id="unit-limitations"></a>

## 7. What remains unexplained

- The full conversion of rooted letter and packet/tree bounds to III.9's outgoing $E$- and $K$-norms, including reset, remains unwritten.
- Compatibility is constructed on the auxiliary torus by [`YM.PhysicalNext.Repeat.Pane.ovation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Rooms.lean#L39-L41) assuming lattice symmetry of the beds at every period; that symmetry for the selected trajectory and the exact III.3 attribution remain unchecked.
- Underlying stationary coercivity, local-inverse, packet-jet and individual letter-jet proofs have not all been checked through; H03's full symmetry lift also remains unchecked.
- Additional reset estimates and the full use of [`JointLoad.stage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Supply.lean#L72-L98)'s covariance and trigger bounds remain outside the numbered outputs. The trigger uses $1+B$ and $e^{(\log\log\beta_F)^2}$, absorbing fixed powers of the former into $e^{-c e^{2(\log\log\beta_F)^2}}$ per distinct endpoint.
- Exact correspondences with Balaban's lemmas, thresholds and normalizations remain open.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/III-10.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [III.1](III-1.md), [I.1](I-1.md), [III.5](III-5.md), [III.4](III-4.md), [III.6](III-6.md), [III.9](III-9.md), [VIII.1](VIII-1.md), [III.2](III-2.md), [II.2](II-2.md), [IV.1](IV-1.md), [III.16](III-16.md), [II.1](II-1.md), [III.15](III-15.md), [VI.1](VI-1.md), [III.3](III-3.md), [V.1](V-1.md), [V.2](V-2.md).

**Referenced by:** [III.13](III-13.md), [III.12](III-12.md), [III.11](III-11.md), [III.2](III-2.md), [III.15](III-15.md), [III.4](III-4.md), [VIII.1](VIII-1.md), [VII.4](VII-4.md), [III.6](III-6.md), [III.5](III-5.md), [VII.2](VII-2.md), [III.14](III-14.md), [V.1](V-1.md), [II.1](II-1.md), [V.2](V-2.md), [III.7](III-7.md), [III.3](III-3.md), [VI.1](VI-1.md), [IV.1](IV-1.md), [III.9](III-9.md), [V.3](V-3.md), [VII.6](VII-6.md), [VII.1](VII-1.md).

## Lean source

**Source allocation:** 49,448 attributed lines; 5,929 line-counted declarations; 7,823 assigned declaration names. Of the assigned names, 7,561 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- work package [`YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6), with [`YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP) — 38,787 lines.
- work package [`YM/Work/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work) (in part, 30%) — 11,420 lines.
- work package [`YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD) — 3,666 lines.
- work package [`YM/Next/FLUCTUATIONS/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS) — 1,723 lines.
- work package [`YM/Bid/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid) — 1,052 lines.
- work package [`YM/Work/E07/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E07) — 425 lines.
- work package [`YM/Work/E09/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E09) — 252 lines.
- work package [`YM/AnalyticBridge/COUPLING_SHAPE_ESTIMATE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/COUPLING_SHAPE_ESTIMATE) — 59 lines.
- work package [`YM/R2I/Vale/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Vale) — 38 lines.
- work package [`YM/Planned/ATOM_FORCED_ESTIMATE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_FORCED_ESTIMATE) — 6 lines.
- work package [`YM/UVNext/UV_STATION_TRANSFER/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/UV_STATION_TRANSFER) — 5 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`YM.ConnectedActivityE6.Coat.tends_val`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/StampQ.lean#L50-L59)
- [`Bid.E05`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L101)
- [`Seals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L103-L107)
- [`Bid.E06`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L110)
- [`Lapse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L121-L128)
- [`Bid.E07`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L130)
- [`Stitches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L134-L138)
- [`Bid.E08`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L140)
- [`Belly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L142-L144)
- [`Bid.EBare`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L148)
- [`Bid.E09`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L151-L152)
- [`recheck`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L204-L208)
- [`Payments`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L27-L32)
- [`MacroStore`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L35-L38)
- [`Bid.E01`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L40-L41)
- [`Bid.E02`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L49-L52)
- [`Allowance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L61-L64)
- [`Bid.E03`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L67)
- [`LaneCounts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L74-L81)
- [`Maximum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L83-L86)
- [`Bid.E04`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L89-L91)
- [`Crowds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L94-L97)
- [`Axial.viable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L137-L142)
- [`extend_interior`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Charts.lean#L89-L106)
- [`gauge_gaps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Covariance.lean#L151-L185)
- [`widen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Defs.lean#L70)
- [`radius_stitch_errors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Scales.lean#L116-L152)
- [`wire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L187)
- [`vision`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L104)
- [`workF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L122-L124)
- [`workI`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L126-L127)
- [`workC`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L129-L131)
- [`workL`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L133-L134)
- [`workN`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L136)
- [`workD`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L138-L140)
- [`toll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L55)
- [`radiusB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22)
- [`betaF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23)
- [`temp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L25)
- [`fiery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L26)
- [`largeT`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L27)
- [`till`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L77)
- [`Sheet.has`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35)
- [`Grant.order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Grants.lean#L52-L71)
- [`bank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E09.lean#L23-L62)
- [`assemble`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E09.lean#L69-L111)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-iii-10-1"></a>

- **K-III.10.1** [`anchored_of_terms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E03.lean#L39-L90) *(numbered result)* — Torus sums of kernel terms satisfying a cover envelope and separation bound give anchored row and column estimates with cardinality-weighted constants.

<a id="k-iii-10-2"></a>

- **K-III.10.2** [`gathered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H01.lean#L245-L251) *(key result)* — The fused gas occurrence series sums to the poured gas times the exponential of the sum of logarithms.

<a id="k-iii-10-3"></a>

- **K-III.10.3** [`kernel_chart_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Kernel.lean#L264-L298) *(key result)* — At a fixed patch, kernel factors of the defects are near their flat matrices with constants independent of period, store and cut.

<a id="k-iii-10-4"></a>

- **K-III.10.4** [`columns_receipt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I04.lean#L24-L62) *(numbered result)* — The accumulated log of column counts across levels is little-o of the schedule scale.

<a id="k-iii-10-5"></a>

- **K-III.10.5** [`Rack`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L63-L73) *(numbered result)* — A packaging predicate collecting uniformity properties of raw cumulative kernels for a horizon at given levels and prices.

<a id="k-iii-10-6"></a>

- **K-III.10.6** [`x_chart_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Slots.lean#L83-L158) *(key result)* — On the chart, the linear map is bounded by C h and the plotted-minus-linear error is bounded by C h times a widening factor, for small h.

<a id="k-iii-10-7"></a>

- **K-III.10.7** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E02.lean#L132-L244) *(key result)* — A fine-link shell comparison estimate holds, bounding fine-link quantities against parent shell data.

<a id="k-iii-10-8"></a>

- **K-III.10.8** [`pricing_order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L173-L202) *(key result)* — Given grants for all test queries, there is a floor such that any sheet with larger floor admits raised delay records satisfying a ringing condition with arbitrarily large values.

<a id="k-iii-10-9"></a>

- **K-III.10.9** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E01.lean#L289-L324) *(key result)* — Macro charges and packing estimates hold on a single oriented sector (price E01 in the chain).

<a id="k-iii-10-10"></a>

- **K-III.10.10** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E07.lean#L115-L158) *(key result)* — A bound on all affected departures (E07 item in the price chain), using macro multiplicity and stencil clipping.

<a id="k-iii-10-11"></a>

- **K-III.10.11** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E06.lean#L413-L440) *(key result)* — Lower bounds on the F+I rows hold, with column and witness costs of order 1/L² times the swell currency at fixed pre-L data.

<a id="k-iii-10-12"></a>

- **K-III.10.12** [`z_chart_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Prediction.lean#L243-L267) *(key result)* — At a fixed patch, the linearization of the Z prediction is bounded linearly and approximates the test with quadratic error uniformly, independent of the torus.

<a id="k-iii-10-13"></a>

- **K-III.10.13** [`global_chart_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Global.lean#L76-L148) *(numbered result)* — Post-L, uniform small-log estimates on the full torus bound both defects in terms of a log-field size h.

<a id="k-iii-10-14"></a>

- **K-III.10.14** [`local_gaps`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Locality.lean#L151-L174) *(numbered result)* — Gap quantities depend only on configurations within distance D of the site, so agreeing near the site gives equal values.

<a id="k-iii-10-15"></a>

- **K-III.10.15** [`interior_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Interior.lean#L22-L63) *(key result)* — Within a halo, the two cut defects (linear gap and derivative gap) are bounded by a constant times h times a widening factor, uniformly over step data.

<a id="k-iii-10-16"></a>

- **K-III.10.16** [`bare`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Bare.lean#L64-L120) *(main result)* — The bare defect-producer statement EBare holds unconditionally.

<a id="k-iii-10-17"></a>

- **K-III.10.17** [`grants`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L24) *(key result)* — For every teller, the pre- and post-pressure grants hold unconditionally, without a separate bare-estimate input.

<a id="k-iii-10-18"></a>

- **K-III.10.18** [`pressure_pricing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L32-L37) *(numbered result)* — For any price map there is a threshold on the parameters beyond which the delay data can be enlarged in the beta entry so that a ringing function bounded below by any given constant exists.

<a id="k-iii-10-19"></a>

- **K-III.10.19** [`healthy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L91-L97) *(main result)* — For a cleaner sequence of tables, there exists a hierarchy among the limit table that has the required orientation.

<a id="k-iii-10-20"></a>

- **K-III.10.20** [`rectangle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Many.lean#L89-L101) *(numbered result)* — For a Gaussian with covariance bounded above by M, the probability that all coordinates in a set exceed t in absolute value is at most 2^|X| exp((-st+Ms²/2)|X|).

<a id="k-iii-10-21"></a>

- **K-III.10.21** [`gathered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Mallow/Passage.lean#L264-L270) *(numbered result)* — The fused gas occurrence series sums to the product of the gas and the exponential of the summed logarithms.

<a id="k-iii-10-22"></a>

- **K-III.10.22** [`Coat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Coat.lean#L49-L56) *(numbered result)* — A structure packaging the input data of a sector as a view without new variables.

<a id="k-iii-10-23"></a>

- **K-III.10.23** [`Intake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Intake.lean#L42-L49) *(numbered result)* — A packaged structure of hypotheses serving as input to the connected-activity jet service.

<a id="k-iii-10-24"></a>

- **K-III.10.24** [`Target`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/OptionCost.lean#L62-L76) *(numbered result)* — A bundled record of hypotheses and parameters (ordering of epsilon before L, allowed marks) for the connected-activity jet estimate.

<a id="k-iii-10-25"></a>

- **K-III.10.25** [`Room`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Room.lean#L39-L48) *(numbered result)* — A structure collecting stencil and delay hypotheses (enough room) for core and annulus analytic estimates.

<a id="k-iii-10-26"></a>

- **K-III.10.26** [`tail_bills`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/PathPrices.lean#L127-L142) *(numbered result)* — Tail sums of path prices with exponential length weights are negligible for large x.

<a id="k-iii-10-27"></a>

- **K-III.10.27** [`required`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Coat.lean#L133-L142) *(numbered result)* — Under shell access and interior hypotheses with bounded hot directions, the signal is grafted at the base point with the stated radius and bound.

<a id="k-iii-10-28"></a>

- **K-III.10.28** [`tickets_le`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Mask.lean#L125-L145) — The product of local estimate weights is bounded by an exponential in the number of shares with a rate depending on the patch.

<a id="k-iii-10-29"></a>

- **K-III.10.29** [`engine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L26-L135) *(main result)* — There exists a level schedule satisfying the payment requirements whose scales are divisibly spaced.

<a id="k-iii-10-30"></a>

- **K-III.10.30** [`dressed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Harmonic.lean#L46-L101) *(key result)* — For a fixed patch there are radii such that all sufficiently small displacements within the same chart keep the dressed quantities controlled uniformly over step data.

<a id="k-iii-10-31"></a>

- **K-III.10.31** [`approves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/MinBranches.lean#L134-L173) *(numbered result)* — If the configuration is close to trivial within distance d of a site, the predictors are within delta of the identity and tag masses equal one.

<a id="k-iii-10-32"></a>

- **K-III.10.32** [`marks_here`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/PatchCap.lean#L115-L151) *(numbered result)* — Actual tags are read correctly under weak local conditions, uniformly for large x.

<a id="k-iii-10-33"></a>

- **K-III.10.33** [`atoms_meet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Receiving.lean#L82-L111) *(numbered result)* — Atoms with summed budget are translated with bounds certified by a Sales capacity at power r of beta.

<a id="k-iii-10-34"></a>

- **K-III.10.34** [`letters_LD`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Outer.lean#L85-L131) *(numbered result)* — Both mismatch rows after the short cut in the unaffected chart are bounded by a rate-order -3/2 function.

<a id="k-iii-10-35"></a>

- **K-III.10.35** [`input_decays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Compression.lean#L137-L181) *(numbered result)* — A weighted exponential-decay bound on the response of the extracted rows to a single impulse at a bond, in terms of distance to the focus.

<a id="k-iii-10-36"></a>

- **K-III.10.36** [`f0_agrees`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Folio/Base.lean#L107-L123) *(numbered result)* — The extension function on F0 depends only on configurations near the relevant region, so two locally agreeing configurations give equal values.

<a id="k-iii-10-37"></a>

- **K-III.10.37** [`within`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Accuracy.lean#L64-L163) *(numbered result)* — Within protected stencils, the jet remainder is bounded by explicit rate functions of orders −1/2 and −1.

<a id="k-iii-10-38"></a>

- **K-III.10.38** [`soft_bills`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Remainder.lean#L110-L179) *(numbered result)* — The soft term differs from half the squared reply norm by at most a rate −3/2 error on weak annulus cells.

<a id="k-iii-10-39"></a>

- **K-III.10.39** [`survey`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Survey.lean#L92-L109) *(key result)* — For a patch with branching predictor, eventually in x, the forecast of the bare predictor model satisfies a uniform bound on directions of bounded norm for all steps and tubes.

<a id="k-iii-10-40"></a>

- **K-III.10.40** [`certified`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Supply.lean#L110-L120) *(numbered result)* — Under the stated hypotheses, a day datum is valid and satisfies clearing and admission conditions.

<a id="k-iii-10-41"></a>

- **K-III.10.41** [`allocation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Intake.lean#L57-L59) *(numbered result)* — An intake with point charge yields a charged allocation and portion-cost data without altering weights.

<a id="k-iii-10-42"></a>

- **K-III.10.42** [`issue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L94-L185) *(key result)* — For large side length L and large width W, there exist order, constants and a rate so that the required bounds hold simultaneously for all admissible tubes and steps, yielding the needed invoices.

<a id="k-iii-10-43"></a>

- **K-III.10.43** [`retreat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Resolve.lean#L59-L131) *(numbered result)* — Remote affine paths are small at the local stationary mean, with an error of rate −1.

<a id="k-iii-10-44"></a>

- **K-III.10.44** [`quoted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Export.lean#L48-L74) *(numbered result)* — A single uniform beta cost per vertex handles the log/determinant correction, with rate-b error functions.

<a id="k-iii-10-45"></a>

- **K-III.10.45** [`ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Peak.lean#L92-L188) *(key result)* — For rare-event configurations away from seeds, a Gaussian-scale excursion lower bound holds uniformly for large x, with a fixed small constant.

<a id="k-iii-10-46"></a>

- **K-III.10.46** [`earns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/AssignedPrice.lean#L54-L86) *(key result)* — The quoted cost near the point charge is at least (κ t² − E(x)) times the number of shares, with E decaying at rate −3/2.

<a id="k-iii-10-47"></a>

- **K-III.10.47** [`dividend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/AffOrd.lean#L93-L136) *(numbered result)* — Mean and residual of the affine-ordered cost are bounded by a constant times t, with a rate-controlled error for the fixed-L exponent.

<a id="k-iii-10-48"></a>

- **K-III.10.48** [`rear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Via.lean#L95-L108) *(numbered result)* — A linear identity holds for a response and turns in a unified function near a remote row.

<a id="k-iii-10-49"></a>

- **K-III.10.49** [`light_costs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Annulus.lean#L103-L160) *(numbered result)* — Weak unmasked estimates on the light remainder at each stencil: bounded below by a rate −E and above on selected packets.

<a id="k-iii-10-50"></a>

- **K-III.10.50** [`recommends`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Quotation.lean#L47-L92) *(main result)* — For large sides and all admissible stamped tubes, the offer of non-packet gas letters holds with prescribed power-of-beta bounds, using only actual inputs.

<a id="k-iii-10-51"></a>

- **K-III.10.51** [`annulus`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Annulus.lean#L164-L185) *(key result)* — On the annulus between radii 2B and 200B, the remainders of a sector packet's debit are bounded below by an O(x^{-3/2})-rate error, before determinant or Gaussian corrections.

<a id="k-iii-10-52"></a>

- **K-III.10.52** [`condenses`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Rewards.lean#L44-L87) *(key result)* — Local log differences of the condensation are bounded away from seeds by a rate −1/2 error.

<a id="k-iii-10-53"></a>

- **K-III.10.53** [`unified_exp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/UnifiedValue.lean#L40-L73) *(key result)* — The assembled dictionary gives a unified exponential value formula for the coat at the manifest width, used by the consolidated and selection-run results.

<a id="k-iii-10-54"></a>

- **K-III.10.54** [`seat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Buoy.lean#L46-L78) *(numbered result)* — The integral over shifted stages equals an integral over the full coordinate split with the actual reference density.

<a id="k-iii-10-55"></a>

- **K-III.10.55** [`timing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Daisy/Charm.lean#L58-L179) *(key result)* — For large lattice size and uniform parameters, given a rate-controlled V, there exist rate-controlled q, p and a Utopia structure on every admissible step whose Herd bound holds with the stated pressure bound.

<a id="k-iii-10-56"></a>

- **K-III.10.56** [`patch_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Diags.lean#L92-L107) *(numbered result)* — The difference of the joint window quantities for two admissible fields is bounded by the number of colors times a pulse cost in the uniform gauge difference.

<a id="k-iii-10-57"></a>

- **K-III.10.57** [`fountain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Boulevard/Clasp.lean#L83-L101) *(numbered result)* — Eventually in k, derivatives of a truncated auxiliary analytic charge are bounded by a estimate bound plus a site-count term.

<a id="k-iii-10-58"></a>

- **K-III.10.58** [`burst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Thrills.lean#L47-L69) *(key result)* — For the auxiliary lattice step, a positivity bound holds and a brush-type estimate holds at admissible positions.

<a id="k-iii-10-59"></a>

- **K-III.10.59** [`read_guides`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Guide.lean#L115-L163) *(numbered result)* — The linear response of costs to the target field on a clean patch is bounded by a rate-controlled function of order -1.

<a id="k-iii-10-60"></a>

- **K-III.10.60** [`ligatures`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Laud.lean#L27-L60) *(key result)* — At critical station parameters with c at least 2, the comparisons on auxiliary lattices hold (statement truncated).

<a id="k-iii-10-61"></a>

- **K-III.10.61** [`capital`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Costs.lean#L92-L157) *(main result)* — There are uniform per-jump receipt constants for the endpoint windows, valid for all large x and all admissible tubes, stores, and configurations.

<a id="k-iii-10-62"></a>

- **K-III.10.62** [`abides`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Rain/Room.lean#L88-L92) *(key result)* — For large n, all derivatives up to the given order of the actual weight function in the allowed directions are bounded by an explicit estimate-cost estimate.

<a id="k-iii-10-63"></a>

- **K-III.10.63** [`GrantBodies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L51-L71) *(numbered result)* — A structure bundling the conclusions of a one-step vacuum production of normalized bounds for all words.

<a id="k-iii-10-64"></a>

- **K-III.10.64** [`Order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L33-L46) *(numbered result)* — A record of posted parameters and retained covariance bounds for all sectors in one step.

<a id="k-iii-10-65"></a>

- **K-III.10.65** [`Rotator`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Shutter.lean#L110-L117) *(numbered result)* — A structure of real-sector window hypotheses at one torus coat.

<a id="k-iii-10-66"></a>

- **K-III.10.66** [`stage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Supply.lean#L72-L98) *(main result)* — For a branching patch and local ratio, there is a kiosk of constants such that every matching desk satisfies the quantitative stage procurement bound for all large x.

<a id="k-iii-10-67"></a>

- **K-III.10.67** [`erudite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Shellac/Sables.lean#L26-L65) *(key result)* — For large scale t, the full residual is positive and has derivative bounds of order beta^(-23/20) uniformly over admissible step data.

<a id="k-iii-10-68"></a>

- **K-III.10.68** [`school`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Calls.lean#L46-L49) *(key result)* — Given delays, one can enlarge them so that all further enlargements satisfy the planks (schedule) conditions.

<a id="k-iii-10-69"></a>

- **K-III.10.69** [`rimfire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Alabaster/Basin.lean#L23-L49) *(key result)* — There exist constants such that for an equalized representation with small perturbation t, a summable budget function controls the change of the contribution on healthy molecules.

<a id="k-iii-10-70"></a>

- **K-III.10.70** [`meritBar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Alabaster/Molt.lean#L25-L77) *(main result)* — There exist constants K and s such that for equalized representations with t≤s, the orbit is consumed uniformly at unforced molecules with summable budget K.

<a id="k-iii-10-71"></a>

- **K-III.10.71** [`spectra`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Alabaster/Satin.lean#L70-L109) *(key result)* — For small t there is a summable budget with constant K controlling the pointed application certificate on varying configurations, with order V.order+2j.

<a id="k-iii-10-72"></a>

- **K-III.10.72** [`pressure_mean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Mean.lean#L100-L145) *(key result)* — Away from the seeds, the real path at the stationary mean is uniformly bounded by an error of rate −1.

<a id="k-iii-10-73"></a>

- **K-III.10.73** [`cooler`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Sienna/Crone.lean#L60-L90) *(key result)* — Under an exponential-weight and budget inequality, a good configuration slice exists in the staying set with all tolls at most half the threshold.

<a id="k-iii-10-74"></a>

- **K-III.10.74** [`treasure`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Malachite/Grain.lean#L42-L79) *(key result)* — There exist rate functions bounding, for large scale x, the first-order jet quantities of the step for all admissible data.

<a id="k-iii-10-75"></a>

- **K-III.10.75** [`coaches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Coach.lean#L122-L158) *(key result)* — For any base b≥2 and M>0 there is a uniform constant C≥1 such that, for all steps and tubes with funds, every forest satisfies the linear tree and principal-route licensing bound.

<a id="k-iii-10-76"></a>

- **K-III.10.76** [`lookingGlass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Lantern/Lens.lean#L41-L89) *(key result)* — Given rate-controlled data and a Bolt bound with a negative decay rate, there exists a rate-0 function B bounding the quantity eventually.

<a id="k-iii-10-77"></a>

- **K-III.10.77** [`royaltyB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Brim/Lode.lean#L32-L100) *(key result)* — There is a rate of order -1/2 giving a uniform remainder bound for every singleton after tuning, for large s.

<a id="k-iii-10-78"></a>

- **K-III.10.78** [`sterling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Yearling/Garter.lean#L34-L53) *(key result)* — If the target has positive exponent, there is a threshold side length such that for large parameter x every admissible data admits a nonempty year-structure certificate.

<a id="k-iii-10-79"></a>

- **K-III.10.79** [`spicules`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Brim/Heights.lean#L44-L82) *(key result)* — There exist rate functions of given polynomial orders such that a tentacle-type bound holds uniformly over all steps, tubes, supports and configurations.

<a id="k-iii-10-80"></a>

- **K-III.10.80** [`rocketsC`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Daisy/Sparks.lean#L36-L61) *(key result)* — For large lattice size, uniformly in parameters, there exist rate-controlled constants and functions such that every admissible step datum has a Captain whose conduit satisfies the Herd bound.

<a id="k-iii-10-81"></a>

- **K-III.10.81** [`saleD`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Malachite/Searchlight.lean#L38-L70) *(key result)* — Compact-stencil derivative bounds with decay rates -1 and -1/2 for the dislocation and gap quantities.

<a id="k-iii-10-82"></a>

- **K-III.10.82** [`batten`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Yearling/Headwind.lean#L32) *(key result)* — For targets with expenses, there exists M such that the Yearling hood property holds.

<a id="k-iii-10-83"></a>

- **K-III.10.83** [`trove`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Mercury/Radio.lean#L31-L101) *(key result)* — A uniform remainder bound with rate -1/2 holds for every singleton contribution after broadcast, for all large scales.

<a id="k-iii-10-84"></a>

- **K-III.10.84** [`ired`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Alabaster/Grotto.lean#L25-L98) *(key result)* — For all large x, every step datum with given patch and cash structure has its tube covered, uniformly.

<a id="k-iii-10-85"></a>

- **K-III.10.85** [`feather`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Alabaster/Merry.lean#L33-L75) *(key result)* — All log-head and catalog costs at a given point are bounded by a uniform constant for equalized data, uniformly along smooth families.

<a id="k-iii-10-86"></a>

- **K-III.10.86** [`masterP`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Alabaster/Courage.lean#L66-L75) *(key result)* — For equalized representations with small t, the emerging quantity changes by at most t times a summable-budget function.

<a id="k-iii-10-87"></a>

- **K-III.10.87** [`takeover`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Census/Mettle.lean#L129-L152) *(key result)* — For sufficiently large lattice size, uniformly over patches and parameters, there exist rate-controlled constants and functions such that every admissible step datum admits a 'Captain' structure with a heavy conduit.

<a id="k-iii-10-88"></a>

- **K-III.10.88** [`logos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Cub/Chant.lean#L50-L88) *(key result)* — For large enough x, under mild index and smallness conditions, a nonempty structure 'Eve' (bundle of step data at stages) exists.

<a id="k-iii-10-89"></a>

- **K-III.10.89** [`twinkles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Census/Horns.lean#L24-L86) *(key result)* — There is a threshold on L such that for all patches and targets, a heavy Utopia structure exists with constant and rate bounds for all large x.

<a id="k-iii-10-90"></a>

- **K-III.10.90** [`sweaters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Brim/Sun.lean#L39-L98) *(key result)* — There exist rates N, δ, V of given orders such that a score bound holds uniformly for all sectors and estimates within budget.

<a id="k-iii-10-91"></a>

- **K-III.10.91** [`songs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Entrance.lean#L61-L82) *(key result)* — Withdrawing epoch receipts at fixed adjacent-stage prices, there exists a record with small error that is tight and gives the plays bounds for all large x.

<a id="k-iii-10-92"></a>

- **K-III.10.92** [`dissent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Dissent.lean#L111-L170) *(key result)* — For large x, the deviation of the Lie predictor vanishes at the origin and its derivative there is bounded by a small temperature-dependent quantity.

<a id="k-iii-10-93"></a>

- **K-III.10.93** [`shoots`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Shutter.lean#L119-L144) *(key result)* — For a fixed patch, window parameters exist such that for large x every manifest coat is a rotator, i.e. windows apply in real sectors.

<a id="k-iii-10-94"></a>

- **K-III.10.94** [`whittle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Das.lean#L49-L102) *(key result)* — For all large sides, uniformly over patches and cash data, a Utopia structure with controlled constants exists.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

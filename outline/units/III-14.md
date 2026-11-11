# III.14. The construction run: flat representations and the ultraviolet rate

*Part III — Ultraviolet construction (renormalization group).* 14,290 lines of Lean in 2,509 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is **checked** against the Lean and rewritten by a second model; a final editing round is in progress. It is updated as it improves.


**Part:** III, Ultraviolet construction (renormalization group). **Lean:**
- the endpoint [`YM/Independent/ConstructionRun.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean);
- the native component recipe [`YM/Integration/NativeComponentRecipe.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean) and [`ActualRunNativeComponentRecipe.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ActualRunNativeComponentRecipe.lean);
- the flat-representation chain [`YM/RG08/Flat/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat), [`YM/RG08/Packets/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets) and [`YM/RG08/Rate/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate);
- the local-estimate package of [`YM/RG12/Burst/Wardrobe.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean);
- the packages that define the numerical floors of the recipe: [`YM/RG08/Redo/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Redo), `Yamen/`, `Sideshow/`, `Necks/`, `Rudder/`, `Room/`, `Weald/`, `Wisp/`, `Trill/`, `Halo/`, `Line/`, … (§4.6).

**Size:** 14,290 lines in the main-theorem closure (2,509 declarations). About 7,700 lines lie under the proof of the transit estimate `harbor` and about 4,800 under the proof of `constructionRun`; the rest is in small packages.

The unit has two layers.

- **The endpoint.** For a simple group $G$ and a penalty $b>0$ it selects a *run*: the Wilson family of the main theorem, together with the schedule, horizon and bookkeeping from which it is built. It records that the run is *funded* and that the *native component recipe* is attached to it.
- **The flat-representation theorem.** The Gaussian (order-zero) quadratic part of the effective action at a fixed stage converges, as the ultraviolet cutoff is removed, at a power rate in the ratio of lattice spacings (Proposition III.14.3). This is the substantial mathematics of the unit. It is one of three components of the recipe.

**Logical status.** The only consumer of the endpoint is VIII.1 ([`continuum_with_position_tests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L28-L48)). It uses the run, its penalty, the pillars and the funded property, and it discards the third conjunct, the attached recipe.

The selection theorem of III.2 that builds the run is generic in the "demand" it receives. The recipe enters it only in two ways:
- through the *existence* of a recipe (Proposition III.14.2), which makes the demand nonempty;
- through numerical floors on the block factors and on the running coupling.

Propositions III.14.2–III.14.6 and the packages of §4.6 (about 10,000 of the 14,290 lines) are proved in full. They carry no logical weight for the main theorem: they only make the selected run satisfy further largeness conditions. (The code facts are certain; the conclusion that a trivial demand would serve equally well is *probable*, see §7.)

## 1. What this unit proves

**Conventions.** These follow III.1.
- **Level system.** A level system $\mathcal L$ fixes stages $i\in\mathbb N$ (finer as $i$ grows), odd block factors $L_i\ge3$ for the step $i+1\to i$, and spacings $a_0=1$, $a_{i+1}=a_i/L_i$, with log-scales $s_i=\log(1/a_i)$. It also fixes a clock $J_i$ (nondecreasing, $J_{i+1}\le J_i+1$), the block-spin kernel with its penalty $b$, and the one-loop running inverse coupling $\hat\beta_i=\bar\beta+s_G\,s_i>1$, with $s_G=11C_G/(24\pi^2)$ ([`hatBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79), [`slopeConstant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184)).
- **Cutoff.** "Cutoff $N$" means the lattice of spacing $a_N$, renormalized through stages $N,N-1,\dots$.
- **Horizon.** A horizon $H$ assigns to each $i\le N$ a translation-invariant metric $M_{N,i}$ on plaquette variables, kinetically normalized ($\widehat M_{N,i}(0)=1$), and transfer data between consecutive stages. On a torus $\mathbb T$ of the stage-$i$ lattice the Gaussian quadratic form on 1-forms is $\mathcal K^{\mathbb T}_{N,i}=d^\top M_{N,i}\,d$.
- **Price map and sufficiency.** A price map $P=(\alpha_j,\Omega_j)_j$ gives a width and a constant for each clock value. $H$ is *sufficient* for $P$ when:
  - the metrics and transfer data satisfy exponential (strip) bounds of width $\alpha_{J_i}$ and constant $\Omega_{J_i}$;
  - consecutive stages satisfy the background-field relations of Proposition III.14.5;
  - $\mathcal K^{\mathbb T}_{N,N}=d^\top d$ (the bare free Maxwell form).
- **Position-space kernel.** $\mathcal O^H_{N,i}=d^\top\widehat M_{N,i}\,d$ is the kernel of the quadratic form on the links of $\mathbb Z^4$ ([`output`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Curl.lean#L18)).
- **Row norm.** For a kernel $F$ on links, $\lVert F\rVert_\sigma=\sup_{u}\sup_{\phi}\sum_{y\in\mathbb Z^4}|F(u,(y,\phi))|\,e^{\sigma|u-y|}$, where $|\cdot|$ is the $\ell^1$ distance of base points and $\phi$ runs over link orientations.
- **Age.** $\Lambda_{k,i}=5+\log\hat\beta_k+|s_i-s_k|$ is the age of stage $i$ seen from a reporting scale $k$.

**Proposition III.14.1 (the construction run).** Let $G$ be a simple compact gauge group and $b>0$. There exist a run $R$, a campaign $T$ for $R$ and pillars $W$ for $(R,T)$ such that:

1. the penalty of the block-spin kernel of $R$ equals $b$;
2. $R$ is *funded* relative to the local-estimate package $\Delta_{10}$. This is a conjunction of thirteen clauses (§6):
   - the one-step local estimates of $\Delta_{10}$ hold along the run;
   - an auxiliary sequence $Q\to\infty$ (in the construction $Q(i)=i+2$, *probable*);
   - support exponent $100$ at every stage;
   - existence of the "sky" data;
   - several extraction, OPE and thermal gates;
3. the native component recipe is *attached* to $R$. There are a sheet $s$, a price map $q$, a recipe $C$ for $s$ (Proposition III.14.2) and floors $n\ge\max(\text{floor}_s,\ \mathrm{floor}(s,q,C))$ such that:
   - $R$ is built on $s$ with floors raised to $n$, with price map $\mathrm{raging}(s,q)$;
   - the pre-length requests and the post-length bill of the recipe are paid on $R$'s levels, in particular $\mathrm{post}(J_{m+1})\le\hat\beta_m$ for all $m$;
   - the realized recipe (Lemma 4.14) holds on $R$'s own levels and horizon.

*Status:* theorem. The only hypotheses are $G$ simple and $b>0$. The run is then fixed by choice as [`fundedRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L30-L31). VIII.1 uses items 1 and 2 and the pillars; item 3 is discarded.

*Lean:* [`YM.Independent.constructionRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28); [`R2I.Funded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L60-L73); [`garment10`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean#L63); [`Campaign.Pillars`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Vendee.lean#L22-L27); [`ActualRunNativeComponentRecipe.Attached`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ActualRunNativeComponentRecipe.lean#L56-L69).

**Proposition III.14.2 (existence of the native component recipe).** Let $G$ be simple and let $s$ be a sheet (the kernel choice and stage profile, fixed before any block factor). There exist a price map $X$ (the *secondary* price map) and floors $E^{\flat},E^{\rm sw},E^{\rm du}:\mathbb N\to\mathbb N$ with the following properties, for every level system $\mathcal L$ with the kernel and stage profile of $s$.

- **(flat)** If $L_i\ge E^\flat(J_{i+1})$ for all $i$, the conclusion of Proposition III.14.3 holds for every $e$ for which the delay condition $\Omega^X_{J_i}\le\log\hat\beta_i$ $(i\ge e)$ holds.
- **(point-group invariance)** If $L_i\ge E^{\rm sw}(J_{i+1})$ for all $i$, then for every horizon $H$ sufficient for some price map, every $i\le N$ and every torus, the colour-summed form $\sum_a\langle A^a,\mathcal K^{\mathbb T}_{N,i}A^a\rangle$ on Lie-algebra-valued 1-forms is invariant under the lattice point group (signed permutations of the axes; *probable* reading of the group action).
- **(background-field identities)** If $L_i\ge E^{\rm du}(J_{i+1})$ for all $i$, then for every such $H$, every $m<N$ and every torus, the canonical free background-field map of III.3 satisfies the relations of Proposition III.14.5 with $(M_{N,m+1},M_{N,m})$. In other words, it is the exact minimizer for the actual quadratic forms.

*Status:* theorem.
*Lean:* [`NativeComponentRecipe.Choice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L29-L51), [`available`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L54-L59); the three suppliers are [`Flat.entrance_gate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Entrance.lean#L28-L50), [`Cast.assured`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Cast/Profile.lean#L16-L34) (with [`Bid.Sworn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55)) and [`Aura.dual_support`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Aura/Publisher.lean#L28-L52) (with [`Aura.licensed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Aura/Publisher.lean#L24-L26)).

**Proposition III.14.3 (ultraviolet rate for the Gaussian quadratic part).** Let $G$ be simple and $s$ a sheet. There exist a price map $X$ and a floor $E:\mathbb N\to\mathbb N$ with the following property. Let $\mathcal L$ be a level system with the kernel and stage profile of $s$ and with $L_i\ge E(J_{i+1})$ for **all** $i\ge0$. Let $e\in\mathbb N$ satisfy $\Omega^X_{J_i}\le\log\hat\beta_i$ for $i\ge e$. Then there are kernels $F_i$ ($i\ge e$) on the links of $\mathbb Z^4$ and constants $A,B\ge0$, $c>0$, $d,l\in\mathbb N$ such that the following holds for every horizon $H$ of $\mathcal L$ sufficient for some price map, every reporting scale $k$ and every $i\ge e$. Write $w_j=\min(1,\alpha^X_j,\alpha^X_{j+1})$.

- (a) $\lVert F_i\rVert_{w_{J_i}}\le B\,\Lambda_{k,i}^{\,l}$;
- (b) $\mathcal O^H_{n,i}(u,v)\to F_i(u,v)$ as $n\to\infty$, for all links $u,v$;
- (c) $\lVert\mathcal O^H_{N,i}-F_i\rVert_{w_{J_i}}\le A\,\Lambda_{k,i}^{\,d}\,(a_N/a_i)^{c}$ for all $N\ge i$.

The proof gives $c=1/4$ and $d=l=1$. It also gives $A=34\,\sigma_0|\mathcal F|(1+s_G)/(1-3^{-1/8})$ and $B=\sigma_0|\mathcal F|(1+s_G)$. Here $|\mathcal F|$ is the number of plaquette orientations and $\sigma_0$ is a lattice constant (a strip bound for $d$). So the constants are independent of $\mathcal L$, $e$ and $H$, although the statement places them after $\mathcal L$ and $e$ (read from the proofs).

*Status:* theorem. It concerns only the order-zero Gaussian quadratic form $d^\top\widehat M d$. It says nothing about the "off-curl" part of $M$, about positive orders, or about source kernels (module docstring of [`Mesh.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean)).
*Lean:* [`Flat.Quorum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Entrance.lean#L13-L21) (the three clauses), [`Flat.entrance_gate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Entrance.lean#L28-L50) (existence), [`Flat.supplies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L107-L164), [`Flat.meshed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L75-L101), [`Flat.clock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L30), [`Flat.curve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L14), [`Flat.Delay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L19).

**Proposition III.14.4 (flat representations at all stages, abstract form).** Let $P$ be a price map, $\theta>0$, and $w:\mathbb N\to(0,\infty)$. Let $(\mathcal L_x,H_x,\ell_x\le N_x\le n_x,k_x,Z_x\ge0)_{x\in X}$ be a family of level systems with horizons, stage ranges, reporting scales and offsets. Put $\Lambda_x(i)=2+Z_x+|s_i-s_{k_x}|$. Assume:

- each $H_x$ is sufficient for $P$, and its transfer data at cutoff $N_x$ and stages $\ell_x\le i<N_x$ are the canonical free data of III.3;
- (*funding*) $w_j\le\alpha_j$ for all $j$, and for $\ell_x\le i<N_x$:
  - $w_{J_i}\le\min(1,\alpha_{J_i},\alpha_{J_{i+1}})$;
  - $2w_{J_i}\le L_i\,w_{J_{i+1}}$;
  - $q_i(w_{J_{i+1}})\le L_i^{-\theta}$, where $q_i$ is the one-step factor of Lemma 4.3;
- $2|\mathcal F|\,\Omega_{J_{N_x}}\le A_0\Lambda_x(N_x)^{d_0}$ with $A_0,d_0$ independent of $x$.

Then there are $A\ge0$, $c>0$, $d$ and kernels $K_{x,i}$ such that, for all $x$ and $\ell_x\le i\le N_x$, $K_{x,i}$ is a flat representation (Definition 4.1) of $\mathcal K_{n_x,i}-\mathcal K_{N_x,i}$ at stage $i$, of width $w_{J_i}$ and cost $A\,\Lambda_x(i)^d(a_{N_x}/a_i)^c$. The proof gives $c=\min(1,\theta/2)$ and $d=d_0$, with $A$ depending only on $A_0,d_0,\theta$.

*Status:* theorem.
*Lean:* [`Flat.World.overlap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L165-L174), with [`World`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L82-L91), [`World.Funding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L101-L110), [`World.Provides`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L112-L115).

**Proposition III.14.5 (Schur identity for two cutoffs, and the flat step).**

*Identity.* Fix one RG step: a fine torus $\mathbb T_f$ with $L$ times the side of the coarse torus $\mathbb T_c$, the block average $Q$ and the penalty $b$. Say that $(W;M,M')$ satisfies the background-field relations when
$$\mathcal K(M)\,W=Q^\top\mathcal K(M'),\qquad QW=1-b^{-1}\mathcal K(M').$$
These are the Euler–Lagrange equations of $A'\mapsto\min_A\{\langle A,\mathcal K(M)A\rangle+b|A'-QA|^2\}$ with minimizer $A=WA'$, and $\mathcal K(M')$ is the resulting coarse form. If $(W_1;M_1,M_1')$ and $(W_2;M_2,M_2')$ satisfy them, with $M_2,M_2'$ symmetric, then
$$\mathcal K(M_2')-\mathcal K(M_1')=W_2^\top\big(\mathcal K(M_2)-\mathcal K(M_1)\big)W_1 .$$

*Flat step.* Suppose $B$ is a neutral, translation-invariant kernel on plaquettes with $\lVert B\rVert_\tau\le r$ representing $\mathcal K(M_2)-\mathcal K(M_1)$ on $\mathbb T_f$. Let $T,U$ be the curvature-transport kernels of the two steps. Assume they are strip-bounded of order 2 with constants $q,p$ in width $\omega$, and that $U$ has position-independent row sums. If $0\le\sigma\le\omega$ and $2\sigma\le L\tau$, then $B'(y,z)=\sum_{x,w}T(x,y)B(x,w)U(w,z)$ is neutral, translation invariant and represents $\mathcal K(M_2')-\mathcal K(M_1')$ on $\mathbb T_c$, with
$$\lVert B'\rVert_\sigma\le\frac{2|\mathcal F|^2qp}{\tau L}\,r .$$

*Status:* theorem. No inverse of the curvature form and no Fourier estimate at zero momentum is used.
*Lean:* [`Flat.poised`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/FlatStep.lean#L24-L38) (identity), [`Flat.toward`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/FlatStep.lean#L50-L78) (step), [`Packets.push_null`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Lines.lean#L87-L113), [`neutralCoin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Lines.lean#L84-L85).

**Proposition III.14.6 (rate lemma for fine-to-coarse recursions).** Consider stages $\ell_x\le i\le t_x$, indexed by $x\in X$, with $L_i\ge3$ and ages $\Lambda_x(i)$ as above. Let $f\ge0$ satisfy
- $f_x(i)\le L_i^{-\theta}f_x(i+1)+g_x(i)$ for $i<t_x$, and $f_x(t_x)\le g_x(t_x)$, where $\theta>0$;
- $g_x(i)\le A_0\Lambda_x(i)^{d_0}(a_{t_x}/a_i)^{c_0}$.

Then $f_x(i)\le A\Lambda_x(i)^{d_0}(a_{t_x}/a_i)^{\mu}$ with $\mu=\min(c_0,\theta/2)$. One can take $A=A_0(K+1)^{d_0}/(1-3^{-\theta'/2})$, with $\theta'=\theta-\mu$ and $K=2(d_0+1)/\theta'$, uniformly in $x$.

*Status:* theorem.
*Lean:* [`Rate.Stair.fade_solve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Ascent.lean#L118-L134), [`poly_solve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Ascent.lean#L56-L116), [`slope`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Ascent.lean#L26-L54), [`Fade.cap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Shadows.lean#L90-L97).

**Further content.** Most of the unit's lines prove existence statements whose only role is to define the numerical floors and bills of the recipe (§4.6). The largest is the one-step transit estimate [`harbor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Sideshow/Orbit.lean#L81-L190). Others are the curvature-coefficient lifts [`arc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rudder/Sym/Oaks.lean#L65-L81) and [`warehouse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Spar/Overhead.lean#L39-L49), and the Gaussian change-of-variables identities [`bottle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Time.lean#L54-L81), [`still`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Glass.lean#L98-L111) and [`absorbed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Alight.lean#L86-L123).

## 2. What it uses

**From other units.**

- **III.1 (block-spin step and its linearization).**
  - Level systems: stages, spacings, block factors, the clock $J$, and $\hat\beta_i$.
  - Horizons and their sufficiency for a price map, and the metric data with kinetic normalization $\widehat M(0)=1$.
  - The background-field relations, and the identity $\mathcal K(M')=W^\top\mathcal K(M)W+b(1-QW)^\top(1-QW)$.
  - Links: [`Levels`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131-L134), [`Horizon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L119-L121), [`Horizon.Suffices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L132-L139), [`MapPrices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L123-L128), [`Floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68), [`Precision.K`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L68-L69), [`Inputs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L76-L79), [`action`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L93-L103).
- **III.2 (choosing the constants).**
  - Sheets: [`Sheet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35).
  - The run-selection theorem with a preselected demand: [`selectRunWithTreasuryPeriod_preselected_quote_orders_postnumeric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L99-L114) and [`PostnumericPreselection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L31-L46). Its proof is not read here.
- **III.3 (free kernels).** [`retained_support`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L134-L145) gives, for each kernel choice, the following:
  - a clip profile $\gamma$ and a floor $n$;
  - for every sheet with that kernel, a price map $X$ such that every level system with clip parameters $\le\gamma$ and $L_i\ge n(J_{i+1})$ (the "credit", [`Credit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L87-L88)) carries a horizon sufficient for $X$, whose transfer data are the canonical free data ([`destination`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L74)) and whose forms are point-group invariant.
- **III.8 (kernel norms).** Weighted row and column norms, and order-$m$ strip bounds for kernels from fine to coarse lattices: [`RowCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Atlas.lean#L28-L29), [`Atlas`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Atlas.lean#L37-L42), the carrier map [`carrier`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Inherit.lean#L24).
- **III.12.** The structures [`Run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48) and [`Pillars`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Vendee.lean#L22-L27), and the run's price map [`raging`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Fiscal.lean#L18).
- **III.15.**
  - The funded property [`Funded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L60-L73).
  - The predicate [`EventuallyPaid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Clock.lean#L36-L38): a property of level systems is eventually paid if it can be enforced by raising the entry thresholds of $\beta$. Here it is applied to the trivial property.
- **I.1.** The group data and the one-loop slope $s_G$.
- **Consumer.** VIII.1: [`continuum_with_position_tests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L28-L48) feeds the funded property to [`R2IGoals.fromFunded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L150-L167) and drops the attached recipe.

**Standard mathematics.**

- Gaussian block-spin transformation with background field (Balaban, *Propagators and renormalization transformations for lattice gauge theories I, II*, CMP 95 (1984), CMP 96 (1984); *Averaging operations for lattice gauge theories*, CMP 98 (1985); Gawędzki–Kupiainen, *Block spin renormalization group for dipole gas and $(\nabla\varphi)^4$*, Ann. Phys. 147 (1983)). The coarse quadratic form is the Schur complement obtained by minimizing over the fine field.
- Exponentially weighted $\ell^1$ kernel norms and their behaviour under composition and blocking (as in Balaban's propagator estimates; cf. Combes–Thomas, CMP 34 (1973)).
- A discrete Grönwall argument for $f_i\le\lambda_if_{i+1}+g_i$.
- Uniqueness of a translation-invariant kernel of finite weighted row norm from its periodizations on tori of diverging size (dominated convergence).

**Imported constants and assumptions.**

- Only $G$ simple and $b>0$ enter `constructionRun`.
- The local-estimate package $\Delta_{10}$ is defined in this unit, in [`Wardrobe.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean#L63). It is the pair of the predicate [`Attic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean#L30-L34) and the lemma [`annex`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean#L36-L61):
  - `Attic` collects one-step connected-activity bounds at block factor $L$ and inverse coupling $x$ (*probable*);
  - `annex` shows that these bounds hold for $L$ beyond a threshold and $x$ large.
- Inside the flat chain every hypothesis is discharged in this unit or in III.3:
  - sufficiency, free transfer data and point-group invariance come from `retained_support` via the shadow (Lemma 4.11);
  - the width conditions follow from the floors (Lemma 4.6);
  - the delay condition follows from the post-length bill (Lemma 4.14).

## 3. Strategy

**The endpoint.** `constructionRun` is an assembly of the generic selection theorem of III.2 with a *demand*: for each sheet $s$, the type of recipes for $s$, together with numerical floors and requests. The choices are made in order:
1. sheet and price map;
2. a recipe $C$ chosen from the sheet alone (Proposition III.14.2), with pre-length floors $\mathrm{floor}(s,q,C)$;
3. block factors $L_i$ above those floors;
4. a post-length bill $\mathrm{post}(s,q,C;L)$ paid by the running coupling, $\hat\beta_m\ge\mathrm{post}(J_{m+1})$.

The selection theorem returns a run, a campaign, pillars and the funded property, together with a certificate that the demand was met on the run's own data. A ten-line binding theorem then realizes the recipe on the run's own levels and horizon: no replacement family, horizon or kernel is chosen after the run.

**The flat chain.** This is the quantitative convergence of the Gaussian part of Balaban's block-spin RG for the free Maxwell form $d^\top d$, as the UV cutoff is removed.

- *Setup.* Fix two cutoffs $N\le n$ and follow both RG histories down to the same stage $i$. The difference $\mathcal K_{n,i}-\mathcal K_{N,i}$ is carried as a *curvature representative*: a translation-invariant kernel $K$ on plaquettes of $\mathbb Z^4$ with $\mathcal K_{n,i}-\mathcal K_{N,i}=d^\top K_{\rm per}d$ on every torus.
- *Start.* At stage $N$ the representative is $\widehat M_{n,N}-\widehat M_{N,N}$. It has norm $\le2|\mathcal F|\Omega_{J_N}$, and it is *neutral* (zero symbol at zero momentum) because both metrics are kinetically normalized.
- *One step.* By the Schur identity (Proposition III.14.5) the coarse difference is the pullback of the fine one by the two background-field maps $W_n,W_N$. Since $dW=C\,d$ for a curvature-transport kernel $C$, the representative is pushed forward as $K'=C_n^\top K C_N$.
- *Scaling count.* The transport kernels have the scaling of a two-form: row sums $O(L^{-2})$, column sums $O(L^{2})$, fine differences $O(L^{-3})$. For a general $K$ the push is therefore marginal ($L^{4}\cdot L^{-2}\cdot L^{-2}=1$). Neutrality allows one to subtract the value of $C_N$ at the base point of the first leg, which turns one factor $L^{-2}$ into a first difference $O(L^{-3})$ times a distance. The distance is absorbed by the exponential weight, at the price of halving the width. Each step thus gains $O(L^{-1})$: the difference of the two quadratic forms is an irrelevant (dimension-five) perturbation of $F^2$.
- *Conclusion.* The block factors are taken large enough that this factor is $\le L_i^{-1/2}$. A Grönwall-type solver absorbs the polynomial growth of the constants (in $\log\hat\beta$ and the scale distance) at the cost of another half, giving the rate $(a_N/a_i)^{1/4}$. The rate passes to the position-space kernel $d^\top K d$, and a Cauchy argument in the weighted row norm produces the limit $F_i$.

**Two features differ from the textbook treatment.**
- The curvature form $d^\top Md$ has a large kernel (gauge directions) and $\widehat M$ is never inverted at zero momentum. Only representatives modulo kernels annihilated by $d^\top\cdot\,d$ are carried, and they are tested on all tori. No Lipschitz bound on Fourier symbols at the pole is needed.
- The Gaussian quadratic forms are shown to be *independent of the horizon*: they are determined by $d^\top d$, $Q$ and $b$ through the Schur recursion. This lets one prove the estimate on an auxiliary "shadow" level system, on which III.3 supplies a horizon with canonical free data, and transfer it back.

The docstring of `World.lean` stresses that no qualitative continuum convergence is invoked, since no rate would follow from it.

## 4. Steps

### 4.1 Flat representations and their propagation

**Definition 4.1 (flat representation).** Let $H$ be a horizon of $\mathcal L$, $N\le n$, and $i\le N$. A kernel $K$ on plaquettes $\mathbb Z^4\times\mathcal F$ is a *flat representation* at stage $i$ of width $\sigma$ and cost $p$ if:
- $\sup_x\sum_y|K(x,y)|e^{\sigma|x-y|}\le p$;
- $\sum_{u\in\mathbb Z^4}K(x,(u,\varphi))=0$ for every $x$ and every orientation $\varphi$ (*neutral*);
- $K(x+u,y+u)=K(x,y)$;
- for every torus $\mathbb T$ of the stage-$i$ schedule, the periodization $K^{\mathbb T}$ satisfies $d^\top K^{\mathbb T}d=\mathcal K^{\mathbb T}_{n,i}-\mathcal K^{\mathbb T}_{N,i}$.

*Lean:* [`Flat.FlatRep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L36-L40), [`Sigil`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/FlatStep.lean#L43-L44), [`Folded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Stacks.lean#L14), [`neutral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/NullPair.lean#L9), [`town`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Torus.lean#L18).

**Lemma 4.2 (the finest stage).** Let $H$ be sufficient for $P$, $N\le n$, and $0<\sigma\le\alpha_{J_N}$. Then $\widehat M_{n,N}-\widehat M_{N,N}$ is a flat representation at stage $N$ of width $\sigma$ and cost $2|\mathcal F|\Omega_{J_N}$.
*Sketch:* each metric has norm $\le|\mathcal F|\Omega_{J_N}$ by its strip bound. The difference is neutral because $\widehat M(0)=1$ for both metrics. The torus identity is $\mathcal K(M_{n,N})-\mathcal K(M_{N,N})=d^\top(M_{n,N}-M_{N,N})d$.
*Lean:* `at_end` (private, [`World.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean)), via [`turn_class`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Present.lean#L52-L78); cost [`topTab`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L24).

**Lemma 4.3 (one step to a coarser stage).** Let $H$ be sufficient for $P$, with $i<N\le n$. Assume the transfer data of $H$ at $(N,i)$ are the canonical free data. Let $K$ be a flat representation at stage $i+1$ of width $u>0$ and cost $p\ge0$, and let $0<\sigma\le\min(1,\alpha_{J_i},\alpha_{J_{i+1}})$ with $2\sigma\le L_iu$. Then
$$K'(y,z)=\sum_{x,w}T_{n,i}(x,y)\,K(x,w)\,T_{N,i}(w,z)$$
is a flat representation at stage $i$ of width $\sigma$ and cost $q_i(u)\,p$, where:
- $T_{m,i}=\widehat M^{-1}_{m,i+1}\,\mathcal T_{m,i}\,\widehat M_{m,i}$ is the curvature-transport kernel at cutoff $m$;
- $q_i(u)=2|\mathcal F|^2h_i^2/(uL_i)$;
- $h_i=e^4|\mathcal F|^2\Omega_{J_{i+1}}^2\Omega_{J_i}$.

*Sketch:* the four properties come from four inputs.
- *Algebra.* The torus identity follows from the Schur identity and from the intertwining $dW_m=C_md$ ([`inherited_precision`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Inherit.lean#L32-L34)). These give $\mathcal K_{n,i}-\mathcal K_{N,i}=d^\top C_n^\top K^{\mathbb T}C_N d$, and $C_n^\top K^{\mathbb T}C_N$ is the periodization of $K'$ ([`town_hall`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Pushed.lean#L116-L122)).
- *Bounds on the transport kernels.* Both are order-2 strip-bounded with constant $h_i$ ([`response`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Coin.lean#L40), [`allotment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Keys.lean#L14)).
- *Neutrality.* $T_{N,i}$ has position-independent row sums, because the free transfer data are translation-covariant ([`travels`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Swing.lean#L75)). Hence constants go to constants and neutrality passes to $K'$ ([`invariant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Swing.lean#L77-L104)).
- *Norm.* This is `push_null`. Neutrality replaces $T_{N,i}(w,z)$ by $T_{N,i}(w,z)-T_{N,i}(\bar w,z)$, with $\bar w$ moved to the base point of $x$. This difference costs $|w-x|\,h_i/L_i^3$, and $|w-x|e^{\sigma|w-x|/L_i}\le(2/u)e^{u|w-x|}$ when $2\sigma\le L_iu$. The column sums of $T_{n,i}$ contribute $h_iL_i^2$.

*Lean:* `to_here` (private, [`World.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean)); [`toward`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/FlatStep.lean#L50-L78), [`poised`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/FlatStep.lean#L24-L38), [`push_null`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Lines.lean#L87-L113), [`quote`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L23). *(proof read: `to_here`, `toward`, `poised`, `push_null`, `invariant`; statement only: `town_hall`, `inherited_precision`, `push_est`, the strip bound of the transport kernel)*

**Lemma 4.4 (induction over stages).** Under the hypotheses of Proposition III.14.4 there are flat representations $K_{x,i}$ ($\ell_x\le i\le N_x$) of width $w_{J_i}$ and cost $c_x(i)=2|\mathcal F|\Omega_{J_{N_x}}(a_{N_x}/a_i)^\theta$.
*Sketch:* the costs are defined explicitly, so that $c_x(i)=L_i^{-\theta}c_x(i+1)$. The proof is downward induction on $N_x-i$:
- start with Lemma 4.2;
- apply Lemma 4.3 with $u=w_{J_{i+1}}$, $\sigma=w_{J_i}$;
- use $q_i(w_{J_{i+1}})\le L_i^{-\theta}$ and monotonicity of flat representations in the cost.

The representatives for all $(x,i)$ are then fixed by choice.
*Lean:* `existsRows` (private, [`World.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean)).

**Lemma 4.5 (the rate; proof of Proposition III.14.4).** Write $g_x(i)=2|\mathcal F|\Omega_{J_{N_x}}\mathbf 1_{i=N_x}$. The costs of Lemma 4.4 satisfy the recursion of Proposition III.14.6 with forcing $g$. By the last hypothesis of III.14.4, $g$ has the required form with $c_0=1$ (it vanishes below the top). Proposition III.14.6 then gives cost $\le A\Lambda_x(i)^{d_0}(a_{N_x}/a_i)^{\min(1,\theta/2)}$.

*Proof of III.14.6.*
1. Multiply by $(a_i/a_t)^{\mu}$; the recursion keeps its form with $\theta'=\theta-\mu\ge\theta/2$.
2. Prove $\tilde f_x(i)\le\tilde B\,(K+\Lambda_x(i))^{d_0}$ by downward induction, with $\tilde B=A_0/(1-3^{-\theta'/2})$.
3. The step uses `slope`: since $\Lambda_x(i+1)\le\Lambda_x(i)+\log L_i$, one has $(K+\Lambda_x(i+1))^{d}L_i^{-\theta'}\le(K+\Lambda_x(i))^{d}L_i^{-\theta'/2}$ when $d\le K\theta'/2$. Then $L_i^{-\theta'/2}\le3^{-\theta'/2}$, and $\tilde B3^{-\theta'/2}+A_0=\tilde B$.

*Lean:* [`World.overlap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L165-L174), [`fade_solve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Ascent.lean#L118-L134), [`poly_solve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Ascent.lean#L56-L116), [`slope`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Ascent.lean#L26-L54), [`Fade.of_top`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Shadows.lean#L83-L87), [`drop_length`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Stair.lean#L79-L82).

### 4.2 Choice of widths and passage to position space

**Lemma 4.6 (choice of widths).** Let $X$ be a price map and $w_j=\min(1,\alpha^X_j,\alpha^X_{j+1})$. Put
$$\beta_{j,j'}=2|\mathcal F|^2h_{j,j'}^2/w_j,\qquad h_{j,j'}=e^4|\mathcal F|^2(\Omega^X_j)^2\Omega^X_{j'},\qquad E^\flat(j)=\lceil 2/w_j+\beta_{j,j}^2+\beta_{j,j-1}^2\rceil.$$
Suppose $L_i\ge E^\flat(J_{i+1})$ and $\Omega^X_{J_i}\le\log\hat\beta_i$ for $i\ge e$. Then for $i\ge e$:
- $w_{J_i}\le\min(1,\alpha_{J_i},\alpha_{J_{i+1}})$;
- $2w_{J_i}\le L_iw_{J_{i+1}}$;
- $q_i(w_{J_{i+1}})\le L_i^{-1/2}$;
- $\Omega^X_{J_j}\le(1+s_G)\Lambda_{k,j}$ for all $k$ and all $j\ge e$.

*Sketch:* since $J_i\in\{J_{i+1},J_{i+1}-1\}$, the constant $h_i$ is one of $h_{j,j},h_{j,j-1}$ with $j=J_{i+1}$. Then $q_i(w_j)=\beta/L_i\le L_i^{-1/2}$ because $\beta^2\le L_i$. Next, $2w_{J_i}\le2\le L_iw_j$. For the age cap: $\hat\beta$ is affine in $s$, so $\log\hat\beta_j\le\log\hat\beta_k+s_G|s_j-s_k|$.
*Lean:* [`spacing_choice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L64-L92), [`universeClock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L38-L62), [`work items`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L29), [`entrance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L25), [`before`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L21-L23), [`Spacing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L32-L41).

**Lemma 4.7 (spacing implies funding).** Assume the conclusions of Lemma 4.6 (with $\theta=1/2$ and $Z_k=3+\log\hat\beta_k$) and let $H$ be sufficient for $X$. Index the family by $x=(k,N,n)$ with $e\le N\le n$, and put $\ell_x=e$. Then the hypotheses of Proposition III.14.4 hold with $A_0=2|\mathcal F|(1+s_G)$ and $d_0=1$.
*Lean:* [`berth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L45-L54), [`Spacing.funded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L56-L68).

**Lemma 4.8 (from a representative to the position-space kernel).** Let $0\le\sigma\le1$, $0\le\varepsilon\le1$, let both metrics be strip-bounded in width $\sigma$, and let $K$ be a representation of $\mathcal K_{n,i}-\mathcal K_{N,i}$ on tori of diverging side with $\sup_x\sum_y|K(x,y)|e^{\varepsilon|x-y|}\le C$. Then
$$\mathcal O_{n,i}-\mathcal O_{N,i}=d^\top K\,d\quad\text{on the links of }\mathbb Z^4,\qquad \lVert\mathcal O_{n,i}-\mathcal O_{N,i}\rVert_\varepsilon\le\sigma_0C,\qquad \sigma_0=|\mathcal F|^2\lambda_d^2,$$
where $\lambda_d$ is a strip bound for $d$.
*Sketch:* the three kernels $\mathcal O_{n,i}$, $\mathcal O_{N,i}$ and $d^\top Kd$ have finite row norms and periodize to the same matrices on every torus; such kernels coincide (`readahead`).
*Lean:* [`resolve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Curl.lean#L101-L115), [`output_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Curl.lean#L89-L90), [`sumToken`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Curl.lean#L66).

**Lemma 4.9 (rate for pairs of cutoffs).** Under the conclusions of Lemma 4.6, with $H$ sufficient for $X$ and with free transfer data at all $(N,i)$, $e\le i<N$, we have
$$\lVert\mathcal O_{n,i}-\mathcal O_{N,i}\rVert_{w_{J_i}}\le A\,\Lambda_{k,i}\,(a_N/a_i)^{1/4}\qquad\text{for all }k\text{ and }e\le i\le N\le n.$$
*Sketch:* apply Proposition III.14.4 to the family of Lemma 4.7, then Lemma 4.8.
*Lean:* [`meshed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L75-L101).

**Lemma 4.10 (the limit kernel).** Under the same hypotheses there are kernels $F_i$ satisfying (a)–(c) of Proposition III.14.3, in the same width $w_{J_i}$.
*Sketch:* for fixed $i$ the sequence $n\mapsto\mathcal O_{n,i}$ is Cauchy in the weighted row norm, with modulus $A\Lambda_{k,i}(a_n/a_i)^{1/4}\to0$. A completeness lemma for weighted $\ell^1$ rows ([`solvent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Limit.lean#L51-L59)) gives a limit, pointwise and in norm, together with the tail bound (c). The bound (a) is inherited from the uniform bound $\lVert\mathcal O_{n,i}\rVert\le\sigma_0|\mathcal F|\Omega_{J_i}\le\sigma_0|\mathcal F|(1+s_G)\Lambda_{k,i}$. The limit does not depend on $k$, by uniqueness of pointwise limits.
*Lean:* [`supplies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L107-L164). *(proof read; `solvent` statement only)*

### 4.3 Uniqueness of the Gaussian part; the three suppliers

**Lemma 4.11 (the Gaussian quadratic forms do not depend on the horizon).** Let $H,H'$ be horizons, each sufficient for some price map, on level systems $\mathcal L,\mathcal L'$ that differ at most in the clip parameters of their stages; for example $\mathcal L'$ may be the *shadow* of $\mathcal L$, with clip profile replaced by $\gamma$. Then $\mathcal K^{\mathbb T}_{N,i}(H)=\mathcal K^{\mathbb T}_{N,i}(H')$ for all $i\le N$ and all tori, and $\mathcal O^H_{N,i}=\mathcal O^{H'}_{N,i}$.
*Sketch:* downward induction from $i=N$, where both forms equal $d^\top d$. If the forms agree at stage $i+1$, the Schur identity gives $\mathcal K_{N,i}(H)-\mathcal K_{N,i}(H')=W^\top\cdot0\cdot W'=0$; the clip parameters do not enter the step data. Equality of the position-space kernels follows as in Lemma 4.8.
*Lean:* [`same_path`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Agreement.lean#L23-L36), [`same_output`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Agreement.lean#L38-L43), [`same_terminal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Agreement.lean#L19-L21), [`shadow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Shadow.lean#L30-L50), [`same_shadow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Shadow.lean#L52-L75).

**Lemma 4.12 (the flat supplier; proof of Proposition III.14.3).** Take $\gamma$, $n$ and $X$ from `retained_support` (III.3), applied to the sheet with clip profile $\gamma$, and set $E=\max(E^\flat,n)$. Given $\mathcal L$ and $e$, the shadow $\mathcal L'$ has the credit of III.3, so it carries a horizon $Y$ sufficient for $X$ with free transfer data. Apply Lemmas 4.6–4.10 to $(\mathcal L',Y)$; the delay condition is unchanged, since $\hat\beta$ and the schedule are the same. Then transfer (b) and (c) to any sufficient horizon $H$ of $\mathcal L$ by Lemma 4.11. The floor $E$ is required at all stages, not only beyond $e$, because the shadow must satisfy the credit everywhere.
*Lean:* [`entrance_gate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Entrance.lean#L28-L50), [`rearrange`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Shadow.lean#L21-L23).

**Lemma 4.13 (the point-group and background-field suppliers).** Both use the same shadow construction and the same floor as Lemma 4.12.
- *Point-group invariance.* III.3 supplies point-group invariance for the shadow horizon, and the forms coincide by Lemma 4.11.
- *Background-field identities.* On the shadow the free background-field map satisfies the relations of Proposition III.14.5, because its transfer data are the free data. The shadow's quadratic forms equal those of $H$ (Lemma 4.11), and the free data of $\mathcal L$ and of its shadow coincide. Hence the same relations hold for $H$.

*Lean:* [`Cast.assured`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Cast/Profile.lean#L16-L34), [`Aura.dual_support`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Aura/Publisher.lean#L28-L52), [`available`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L54-L59).

### 4.4 Realizing the recipe on a run

**Lemma 4.14 (realization).** Let $s$ be a sheet, $q$ a price map, $C$ a recipe for $s$, and $\mathcal L$ a level system with the kernel and profile of $s$. Let $H$ be a horizon of $\mathcal L$ sufficient for $\mathrm{raging}(s,q)$. Assume:
- $L$ satisfies the pre-length floor $\mathrm{floor}(s,q,C)$, the maximum of $E^\flat,E^{\rm sw},E^{\rm du}$ and of two numerical floors $\mathrm{need}$ and $\mathrm{rail}$;
- $\hat\beta_m\ge\mathrm{post}(s,q,C;L)(J_{m+1})$ for all $m$, where $\mathrm{post}$ is the maximum of two bills $\mathrm{after}$ and $\mathrm{shade}$ that depend on the actual block factors.

Then on $(\mathcal L,H)$:
- the floors and bills of the two numerical rails hold;
- the background-field identities and point-group invariance hold;
- Proposition III.14.3 holds with $e=0$.

*Sketch:* the delay condition with $e=0$ follows from the bill: $\Omega^X_{J_i}\le\mathrm{stamp}(\text{patch}_i)\le\log\hat\beta_i$ ([`Yamen.hatch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Yamen/Penny.lean#L56-L64)). Everything else is a projection of the maxima.
*Lean:* [`realize`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L132-L182), [`Realized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L117-L128), [`floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L61-L65), [`post`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L75-L79), [`numeric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L71-L72). The module docstring states that this does not identify the formal marked data with the physical marked packets.

**Lemma 4.15 (binding to the run).** Let $R$ be a run whose sheet is $s$ with floors raised to $n\ge\mathrm{floor}(s,q,C)$, whose price map is $\mathrm{raging}(s,q)$, and whose levels pay the post-length bill. Then the recipe is realized on $R$'s own levels and horizon. The selection certificate of III.2 supplies exactly these hypotheses.
*Lean:* [`on_run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ActualRunNativeComponentRecipe.lean#L25-L54), [`of_preselection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ActualRunNativeComponentRecipe.lean#L71-L77).

### 4.5 The run

**Lemma 4.16 (selection with a preselected demand; III.2).** Let $G$ be simple, $b>0$, $\Lambda$ a property of level systems that is eventually paid, and $\Delta$ a local-estimate package. Let the following be given:
- a demand $\mathcal D(s,q)$, nonempty for every sheet $s$ and price map $q$;
- floors, pre-length requests and post-length requests attached to the demand.

Then there are a run $R$ and a campaign $T$ such that:
- the penalty is $b$ and $\Lambda$ holds on the levels of $R$;
- the pillars are nonempty and $R$ is funded for $\Delta$;
- there is a certificate $(s,q,\text{chosen}\in\mathcal D(s,q),n)$ that the floors are met by the block factors, the requests by $\log\log\hat\beta$, and the post-length bill by $\hat\beta$;
- further clauses are discarded by `constructionRun`.

*Lean:* [`selectRunWithTreasuryPeriod_preselected_quote_orders_postnumeric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L99-L114); the plain version is [`selectRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L75-L84). *(statement only; the construction behind it belongs to III.2)*

**Lemma 4.17 (`constructionRun`).** Apply Lemma 4.16 with the following data: $\Lambda=$ true, $\Delta=\Delta_{10}$, demand $\mathcal D(s,q)=\{\text{recipes for }s\}$ (nonempty by Proposition III.14.2), floor $\mathrm{floor}$, requests $\mathrm{numeric}=1/\mathrm{width}$, and post-length requests $\mathrm{post}$. Conclude with Lemma 4.15.
*Lean:* [`constructionRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28), [`postnumeric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ActualRunNativeComponentRecipe.lean#L21-L23).

### 4.6 The packages behind the numerical floors

In the dependency graph, every package below reaches the endpoint only through the *definitions* of the numerical floor [`rail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Redo/Scaling.lean#L46) and the bill [`receipt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Redo/Scaling.lean#L65)/[`after`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Redo/Scaling.lean#L67). Some also go through [`Yamen.need`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Yamen/Pledge.lean#L36) and [`Yamen.stamp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Yamen/Penny.lean#L48).

Those numbers are defined by choice from existence statements whose proofs use the packages. The flat chain does not use them, nor do the point-group and background-field suppliers. The one-line descriptions come from the statements and are *tentative*.

- **One-step transit and graded differences.** [`harbor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Sideshow/Orbit.lean#L81-L190): for admissible parameters there are a constant $A\ge1$ and a growth function $J$ of controlled degree bounding a one-step transit of paired marked kernel families. Supporting results: [`DocketBill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Elect.lean#L78-L140), [`slushy_uniform`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Prior.lean#L61-L95), [`conquer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Lob.lean#L32-L124), [`drive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Tides.lean#L45-L88) (graded differences of two kernel families with scale-independent constants).
- **Curvature-coefficient lifts with linear cost.** A translation-invariant coefficient on the fine lattice is written as a coefficient of a function of the curvature, at a loss of width and a cost linear in its size: [`line_legs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rudder/FinalLegs.lean#L49-L74), [`doubleLift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rudder/Loop/Empty.lean#L81-L107), [`arc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rudder/Sym/Oaks.lean#L65-L81), [`warehouse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Spar/Overhead.lean#L39-L49), [`arm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/QUARTIC_MATCH/Cells/LiftOne.lean#L198-L206), [`multi`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/QUARTIC_MATCH/Cells/Resolve.lean#L158-L178).
- **Gaussian evolution under a near-identity change of variables.** The heat evolution of a density equals the Gaussian bracket of the Jacobian-corrected density: [`bottle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Time.lean#L54-L81), [`still`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Glass.lean#L98-L111), [`absorbed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Alight.lean#L86-L123), [`impress`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Refresh.lean#L87-L106).
- **Formal Ward identities and gauge recursions.** [`stirred`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Wisp/Chord.lean#L48-L76), [`welcomed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Weald/Pitch.lean#L80-L98), [`spark`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flint/Hunger.lean#L77-L91), and the related `summer`, `self`, `Lobby`, `rooted`, `spark_band` listed on the unit page.
- **Equivalence of representatives.** Block-integral germs and rescaled evaluations agree for gauge-equivalent representatives: [`blossom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Atlas/Furnace.lean#L32-L51), [`switch_rep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Aggregate/Voice.lean#L84-L94), [`hatch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Carrel/Works.lean#L43-L52).
- **Marked-kernel receipts.** Bounds on marked kernels including the exact leading term, with constants announced before the block factor: [`podium`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Trill/Swift.lean#L40-L96), [`baton`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Halo/Kumi.lean#L63-L106), and `notes`, `holy`, `badges`, `quarry`, `septet` on the unit page.
- **Line inverse in cell coordinates.** A strip bound before blocking and a polynomial cost in $L$ after: [`jointProjection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Line/Solid.lean#L21-L38), [`preheat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Line/Recipe.lean#L60-L83), [`transcribe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Line/Complex.lean#L108-L138).

## 5. Where the difficulty lies

- **Most of the unit is logically idle for the main theorem.** VIII.1 discards the recipe. The selection theorem needs only a nonempty demand and some numbers. The roughly 10,000 lines of §4.6 enter only through definitions by choice of numerical floors. A written proof of the main theorem can omit Propositions III.14.2–III.14.6 and §4.6. A written account of this unit should present the flat rate as a self-contained theorem on the Gaussian RG.
- **The flat rate is the real analysis.** It is short once set up:
  - the Schur identity for two cutoffs;
  - the intertwining $dW=Cd$;
  - the neutral push estimate, which gains $1/L$ from one derivative;
  - a Grönwall solver.

  The non-routine points are: avoiding any inversion of the curvature form (zero modes); carrying representatives modulo the kernel of $d^\top\cdot\,d$; and the horizon independence (Lemma 4.11), which makes the shadow argument possible.
- **The exponent is weak.** One expects a rate close to $a_N/a_i$. Half of the $1/L$ gain is spent making the factor $2|\mathcal F|^2h_i^2/w$ smaller than $L_i^{1/2}$, and half of the rest pays for the polynomial age. This gives $(a_N/a_i)^{1/4}$.
- **The polynomial factor is bookkeeping, not physics.** The age $5+\log\hat\beta_k+|s_i-s_k|$ appears only because the strip constants $\Omega_{J_i}$ of the price map are allowed to grow with the clock. The delay condition $\Omega_{J_i}\le\log\hat\beta_i$ caps this growth.
- **Scope.** Only the order-zero Gaussian form $d^\top\widehat Md$ is controlled. Neither the off-curl part of $M$ nor positive orders or sources are. "UV rate" here does not mean a rate for the whole effective action.
- **Order of constants.** The floor $E^\flat(j)$ depends only on the price map at the clock values $j,j-1$, so it is fixed before $L$. The delay is paid after $L$, through $\hat\beta$. This is where the apparent circularity between widths and block factors is resolved (cf. III.2).

## 6. Notation

| Written proof | Lean | Meaning |
|---|---|---|
| run $R$, campaign $T$, pillars $W$ | [`Run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48), `Campaign`, [`Pillars`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Vendee.lean#L22-L27) | Wilson family with its schedule, horizon and bookkeeping; extraction data; for each $(N,p)$ a selected history from the initial step with per-step bounds (*tentative*) |
| funded | [`R2I.Funded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L60-L73) | 13 clauses: `localBudget`, `attentive`, `logCopy`, `locrian`, `wild`, `silk`, `poly`, `fixed`, `tic`, `halo`, `paced`, `stoves`, `hasSky` |
| $\Delta_{10}$ | [`garment10`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean#L63), [`Decal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean#L18-L20) | local one-step estimate package with its eventual-validity lemma |
| sheet $s$ | [`Sheet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35) | kernel choice, stage profile, floors; fixed before $L$ |
| price map $P=(\alpha_j,\Omega_j)$ | [`MapPrices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L123-L128) | strip width and constant for each clock value |
| horizon $H$, sufficient for $P$ | [`Horizon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L119-L121), [`Suffices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L132-L139) | metrics $M_{N,i}$ and transfer data, with strip bounds and Schur relations |
| $\mathcal K^{\mathbb T}_{N,i}=d^\top M_{N,i}d$ | [`Precision.K`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L68-L69), `quadratic` | Gaussian quadratic form on a torus |
| $\mathcal O_{N,i}$ | [`output`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Curl.lean#L18), [`writ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Curl.lean#L15-L16) | position-space kernel $d^\top\widehat M d$ on links |
| background-field relations | [`Inputs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L76-L79) | $\mathcal K W=Q^\top\mathcal K'$, $QW=1-b^{-1}\mathcal K'$ |
| curvature transport $T_{m,i}$ | [`fine_share`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Keys.lean#L15), [`response`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Coin.lean#L40) | $\widehat M_{m,i+1}^{-1}\mathcal T\widehat M_{m,i}$ |
| $h_i$, $q_i(u)$ | [`header`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L22), [`quote`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L23), [`neutralCoin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Lines.lean#L84-L85) | $e^4\lvert\mathcal F\rvert^2\Omega_{J_{i+1}}^2\Omega_{J_i}$; $2\lvert\mathcal F\rvert^2h_i^2/(uL_i)$ |
| flat representation | [`FlatRep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L36-L40), [`Sigil`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/FlatStep.lean#L43-L44) | Definition 4.1 |
| weighted norms | [`Folded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Stacks.lean#L14), [`RowCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Atlas.lean#L28-L29), [`Atlas`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Atlas.lean#L37-L42) | plaquette norm $\sup_x\sum_y\lvert K\rvert e^{\sigma\lvert x-y\rvert}$; link row norm; order-$m$ strip bound |
| neutral, translation invariant | [`neutral`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/NullPair.lean#L9), [`town`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Torus.lean#L18) | zero symbol at zero momentum; $K(x+u,y+u)=K(x,y)$ |
| $w_j$, $\Lambda_{k,i}$ | [`curve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L14), [`clock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L30), [`Lambda'`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L17) | $\min(1,\alpha_j,\alpha_{j+1})$; $5+\log\hat\beta_k+\lvert s_i-s_k\rvert$ |
| delay condition | [`Delay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L19) | $\Omega_{J_i}\le\log\hat\beta_i$ for $i\ge e$ |
| flat rate (III.14.3) | [`Quorum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Entrance.lean#L13-L21) | clauses (a)–(c) |
| family, funding | [`World`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L82-L91), [`Funding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L101-L110), [`Spacing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L32-L41) | hypotheses of III.14.4; their scheduled form |
| stairs, drop, weight | [`Stair`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Stair.lean#L24-L30), [`drop`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Stair.lean#L66), [`Fade`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Stair.lean#L108) | index family; $L_i^{-\theta}$; age polynomial times $(a_t/a_i)^c$ |
| shadow | [`shadow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Shadow.lean#L30-L50) | same level system with clip profile replaced |
| recipe, floor, bill | [`Choice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L29-L51), [`floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L61-L65), [`post`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L75-L79) | three suppliers with pre-length floors; post-length bill |
| point-group invariance ("sworn") | [`Bid.Sworn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55) | colour-summed form invariant under signed axis permutations |
| background-field identities ("licensed") | [`Aura.licensed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Aura/Publisher.lean#L24-L26) | free background map is the exact minimizer for the actual forms |
| "prices", "bill", "floor", "numeric", "post" | — | numerical thresholds on $L_i$ and $\hat\beta$ (glossary: nothing economic) |

## 7. Open points for the writer

1. **Is the recipe really dispensable?** VIII.1 discards the attached recipe (certain), and the selection theorem is generic in the demand (certain from its statement). The writer should still confirm, when writing III.2, that instantiating the demand with a trivial type changes nothing in the funded run. One point to check: the pre-length requests must satisfy $1\le1+\log\log\hat\beta_m$, which the run supplies anyway.
2. **The funded property.** The route to the main theorem ([`fromFunded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L150-L167), then its `refine` field) uses the clauses `hasSky`, `locrian`, `wild`, `attentive`, `poly`, `halo`, `silk`, `tic`, `fixed` and `logCopy`. It does not use `localBudget` (the only clause involving $\Delta_{10}$), `paced` or `stoves`. The meaning of the used clauses belongs to III.15 and later units and is not analyzed here.
3. **The pillars and the III.9 histories.** That the pillars contain the selected histories of III.9 for all $(N,p)$ is read from the field types only (*tentative*). The construction (`allFactor…`, `engage…`) belongs to III.2 and was not read.
4. **Uniformity of the flat constants.** Resolved from the proofs: $c=1/4$, $d=l=1$, and $A,B$ depend only on $G$ and lattice constants. The Lean statement does not record this; a written version should state the uniform form.
5. **The packages of §4.6.** Their role is now clear: they define the floors `rail`/`receipt` and the Yamen bills. Their statements, and whether the numbers they define could be replaced by any finite numbers, were not examined; the descriptions are *tentative*.
6. **Point-group reading.** The group acting in `Sworn` (signed permutations of axes fixing the origin) is inferred from the definition of `pulled` and is *probable*.
7. **Relation to the assessment.** No statement of the group's assessment corresponds to Proposition III.14.3. Its "kinetic normalization" (quadratic term normalized to the identity) matches $\widehat M(0)=1$, which is what makes the representatives neutral.

**Builds on:** [III.8](III-8.md), [I.1](I-1.md), [III.1](III-1.md), [III.7](III-7.md), [III.16](III-16.md), [III.6](III-6.md), [III.10](III-10.md), [III.15](III-15.md), [II.1](II-1.md), [III.2](III-2.md), [III.3](III-3.md), [III.9](III-9.md), [III.5](III-5.md), [III.12](III-12.md), [VIII.1](VIII-1.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| proof of [`harbor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Sideshow/Orbit.lean#L81-L190) and the results it chains to | 7,716 |
| proof of [`constructionRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28) | 4,831 |
| work package [`YM/RG08/Line/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Line) | 371 |
| work package [`YM/RG08/Necks/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks) | 316 |
| work package [`YM/RG08/Atlas/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Atlas) | 110 |
| work package [`YM/RG08/Rows/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rows) | 110 |
| work package [`YM/RG08/Cell/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Cell) | 99 |
| work package [`YM/RG08/Cairn/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Cairn) | 76 |
| work package [`YM/RG08/Prism/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Prism) | 75 |
| work package [`YM/RG08/Quarry/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Quarry) | 66 |
| work package [`YM/RG08/Lagoon/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Lagoon) | 64 |
| work package [`YM/RG08/Hatch/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Hatch) | 58 |
| work package [`YM/RG08/Trill/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Trill) | 54 |
| work package [`YM/RG08/Clef/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Clef) | 53 |
| work package [`YM/RG08/Weald/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Weald) | 50 |
| work package [`YM/RG08/Trickle/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Trickle) | 41 |
| work package [`YM/RG08/Tack/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Tack) | 39 |
| work package [`YM/RG08/Gallery/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gallery) | 32 |
| work package [`YM/RG08/Atrium/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Atrium) | 27 |
| work package [`YM/RG08/Sideshow/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Sideshow) | 27 |
| work package [`YM/RG08/Nacre/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Nacre) | 20 |
| work package [`YM/RG08/Billet/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Billet) | 18 |
| work package [`YM/RG08/Aggregate/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Aggregate) | 8 |
| work package [`YM/RG08/Slate/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Slate) | 8 |
| work package [`YM/RG08/Spar/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Spar) | 6 |
| work package [`YM/RG08/Aura/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Aura) | 5 |
| work package [`YM/RG08/Yurt/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Yurt) | 5 |
| work package [`YM/RG08/Flint/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flint) | 4 |
| work package [`YM/RG08/Fold/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Fold) | 1 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **III.14.1** [`jointProjection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Line/Solid.lean#L21-L38) *(numbered result)* — Under stated algebraic hypotheses on inverse, gauge kernel and section, the triangular projection of the joint inverse recovers x from B x on the tree slice.
- **III.14.2** [`septet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flint/Score.lean#L74-L79) *(numbered result)* — For symmetric multilinear coefficient families, a bound on all-direction evaluations of the total polynomial by W·B yields a bound on any single coefficient by a constant times B.
- **III.14.3** [`stood`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Saloon.lean#L94-L96) *(numbered result)* — Conditioning a centered Gaussian bracket by substituting means on integrated coordinates equals the prescribed finite-sum expression on the survivors.
- **III.14.4** [`arm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/QUARTIC_MATCH/Cells/LiftOne.lean#L198-L206) *(key result)* — Any priced array of given rank can be lifted in one argument to rank plus one with controlled width and constants, preserving other ranks and closures.
- **III.14.5** [`multi`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/QUARTIC_MATCH/Cells/Resolve.lean#L158-L178) *(key result)* — A priced array with rank-1 closed slots in all legs can be lifted to a rank-2 array with comparable pricing, with no harmonic exception.
- **III.14.6** [`quarry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Yurt/Cairns.lean#L46-L69) *(numbered result)* — Uniform constant B bounds deterministic cancellation errors for odd block sizes under the tutor hypotheses.
- **III.14.7** [`push_null`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Lines.lean#L87-L113) *(key result)* — Pushing a neutral folded packet through atlas substitutions yields a folded packet with a smaller radius and neutral-coin constant multiplier.
- **III.14.8** [`toward`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/FlatStep.lean#L50-L78) *(key result)* — A precision-difference identity for the flat step shows how diagonal Towers data and kernel matches propagate folded bounds to the next step without Fourier Lipschitz at the pole.
- **III.14.9** [`fade_solve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Ascent.lean#L118-L134) *(key result)* — A nonnegative array satisfying a fine-to-coarse recursive inequality with a contracting weight and a decaying forcing term itself decays, giving a uniform majorant.
- **III.14.10** [`overlap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L165-L174) *(key result)* — Under funding, flat representations exist at all stages with cost A·age^d·(a_fine/a_i)^c, i.e. a geometric UV rate.
- **III.14.11** [`bottle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Time.lean#L54-L81) *(key result)* — For a near-identity moving coordinate change, the bracket of the Jacobian-weighted density has vanishing component along the spare variable, comparing volume via a velocity path.
- **III.14.12** [`still`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Glass.lean#L98-L111) *(key result)* — With a spare variable not used in the data, the Gaussian evolution under a near-identity nonlinear change of coordinates equals the bracket of the Jacobian-corrected density.
- **III.14.13** [`absorbed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Alight.lean#L86-L123) *(key result)* — Without any spare variable, under a near-identity nonlinear coordinate change, evolving by the heat kernel equals the formal Gaussian bracket of the Jacobian-corrected density, in centered coordinates.
- **III.14.14** [`stirred`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Wisp/Chord.lean#L48-L76) *(numbered result)* — A formal Ward identity holds for the centered joint polynomial, with scalar and vacuum terms retained, for a single mark.
- **III.14.15** [`line_legs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rudder/FinalLegs.lean#L49-L74) *(key result)* — Translation-invariant cell coefficients of arity at least three admit a literal linear-cost lift to the cover with weaker width, reusable on differences.
- **III.14.16** [`doubleLift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rudder/Loop/Empty.lean#L81-L107) *(key result)* — Rank-two translation-invariant cells with vanishing first moment admit a linear-cost lift with weaker width.
- **III.14.17** [`arc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rudder/Sym/Oaks.lean#L65-L81) *(key result)* — For symmetric (adjoint-graded) coefficient spaces, a curvature-coefficient lift exists with uniform width loss, linear cost and Lipschitz control on differences.
- **III.14.18** [`warehouse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Spar/Overhead.lean#L39-L49) *(key result)* — For symmetric graded spaces there exist fixed θ and K such that the lift is rigged: the same θ may be reused at every stage.
- **III.14.19** [`impress`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Refresh.lean#L87-L106) *(key result)* — Under a finite cover transformation of sincere ledgers, the transformed quadratic plus connected part equals the original.
- **III.14.20** [`notes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Trickle/Airs.lean#L75-L97) *(key result)* — Symbol clocks for the time PDE flows are computed directly at all degrees as a Note.
- **III.14.21** [`report`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Trickle/Fleet.lean#L59-L61) *(numbered result)* — One step of the finite prescription transforms the marker as a Markov column identity, giving a recursion formula.
- **III.14.22** [`badges`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Halo/Charge.lean#L39-L52) *(numbered result)* — Scaling identity for the sonic functional under filtered perturbations, giving homogeneity at threshold.
- **III.14.23** [`lunch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Yurt/Ferry.lean#L15-L59) *(numbered result)* — Pointwise funded cell estimate: a constant D bounds the cell expression in terms of inputs with null consumed.
- **III.14.24** [`supplies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L107-L164) *(key result)* — The row UV convergence holds in the same width, with no count-dependent loss, giving every fixed position-moment under finite width discount.
- **III.14.25** [`summer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Weald/Growth.lean#L95-L98) *(numbered result)* — Ward identity at finite regulator for analytic precursors with external and gauge parameters linearized around the trivial orbit.
- **III.14.26** [`welcomed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Weald/Pitch.lean#L80-L98) *(key result)* — The formal Ward receipt for the cover before normalization holds, with normalized transport produced via logs.
- **III.14.27** [`holy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Trill/Cast.lean#L78-L93) *(numbered result)* — The multilinear operator is exactly invariant under the group action on polynomial-growth coefficients.
- **III.14.28** [`hymn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Trill/Snaps.lean#L59-L84) *(numbered result)* — A uniform constant bounds first-grade test quantities in terms of the sequence bounds, uniformly in the call data.
- **III.14.29** [`spark`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flint/Hunger.lean#L77-L91) *(key result)* — A Ward estimate replacing any list of growing probe directions with only lower-order costs, with a constant announced before block length.
- **III.14.30** [`spark_band`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flint/Hero.lean#L24-L54) *(numbered result)* — A multilinear product bound with a single derivative insertion and weight restoration holds with a uniform constant for lists of growing probe directions.
- **III.14.31** [`constructionRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28) *(main result)* — For any simple gauge group and positive penalty there exists a Wilson run with campaign and pillars with the specified funded and native-recipe properties.
- **III.14.32** [`harbor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Sideshow/Orbit.lean#L81-L190) *(key result)* — A one-step precise lower-triangular estimate: for admissible parameters there are constants and a growth function such that the transit bound holds for bouquets of kernels in the race.
- **III.14.33** [`podium`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Trill/Swift.lean#L40-L96) *(key result)* — A single-rank receipt for certified primary projections on deterministic legs, giving a bound including the exact leading term at leading weight.
- **III.14.34** [`self`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Weald/Fields.lean#L85-L103) *(key result)* — The exact pre-reset gauge recursion for each cover kernel preserves the admissibility and comb-type properties of the carrier family of grains.
- **III.14.35** [`entrance_gate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Entrance.lean#L28-L50) *(key result)* — For simple gauge group and kernel choices, the flat supply admits precision receipts: explicit kernels and constants giving a quorum estimate for admissible levels beyond a length threshold.
- **III.14.36** [`baton`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Halo/Kumi.lean#L63-L106) *(key result)* — Polynomial diagonal engineering before whole-graph recursion: positive-order output is bounded by fixed lower terms plus input times a power of L, with exact principal propagation when B=0.
- **III.14.37** [`available`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L54-L59) *(key result)* — For a simple gauge group and a given scale sheet, a choice of native RG/lattice components exists.
- **III.14.38** [`preheat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Line/Recipe.lean#L60-L83) *(key result)* — The flat Gaussian line inverse in cell coordinates has a pre-block strip bound and post-block cost uniformly across compatible sides, periods and cutoffs.
- **III.14.39** [`slushy_uniform`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Prior.lean#L61-L95) *(key result)* — For given parameters there is a single function J controlling, uniformly over all gauge/patch data, a comparison of two configurations whose components agree within budget for the relevant ranks.
- **III.14.40** [`transcribe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Line/Complex.lean#L108-L138) *(numbered result)* — A strip bound for the completed matrix on harmonic modes gives a real position-space inverse with polynomial norm cost in L.
- **III.14.41** [`Lobby`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Lagoon/Hull.lean#L56-L68) *(numbered result)* — Step normalization and coefficient data for the cover kernels satisfy an exact gauge recursion.
- **III.14.42** [`rooted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Wisp/Carry.lean#L69-L104) *(numbered result)* — If the rail transform shifts variables at scale g before the chart, a compatibility identity of marked block functionals transfers between two grain families.
- **III.14.43** [`realize`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L132-L182) *(numbered result)* — Pre-length floors and a paid post-length bill suffice to realize the native component recipe on a given clock.
- **III.14.44** [`conquer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Lob.lean#L32-L124) *(numbered result)* — A fully marked RG step yields a graded difference bound for two kernels with constants independent of the scale.
- **III.14.45** [`drive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Tides.lean#L45-L88) *(numbered result)* — Along deterministic legs, the graded kernel entries satisfy a driven bound with controlled constants.
- **III.14.46** [`DocketBill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Elect.lean#L78-L140) *(numbered result)* — Under novice-parameter hypotheses there exist constants and growth function such that differences of two graded kernel families satisfy a docket bound at each rank.
- **III.14.47** [`blossom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Atlas/Furnace.lean#L32-L51) *(key result)* — If two jets of fields agree to the relevant order on the penalty germ and are related by a gauge transformation, their block-integral germs coincide.
- **III.14.48** [`switch_rep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Aggregate/Voice.lean#L84-L94) *(key result)* — Rescaled evaluations of a gauge-invariant packet coincide for two representatives of a field whose lattice representations differ by a gauge transformation and a symbol shift, up to finite order.
- **III.14.49** [`hatch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Carrel/Works.lean#L43-L52) *(key result)* — Completed unmarked packets at all ranks have their positive rescaled evaluations compared, with a stated identification of the completion.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

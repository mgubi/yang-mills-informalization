# VIII.1. Assembly of the main theorem

*Part VIII — Assembly of the main theorem.*

Assembles the construction and translates its conclusions into the public theorem.

**Status: checked.** Checked against the linked Lean and rewritten; final editing remains. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [← Previous: VII.6](VII-6.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** VIII, Assembly of the main theorem. **Lean:** the top-level files [`Solution.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean), [`Construction.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean) and [`ConcreteSU2.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean); the bridges [`WilsonBridge.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean), [`HierarchyBridge.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean), [`TraceBridge.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean) and [`ContactBridge.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactBridge.lean); the public definitions [`PublicTheory`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean), [`PublicWilson`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean), [`PublicView`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicView.lean), [`ChallengeSpec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean) and [`ContactSpec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactSpec.lean); the folders [`YM/Nonperturbative`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative), [`YM/Independent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent), [`YM/Spec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec), [`YM/Org`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org) and [`YM/Pert/Parity`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Parity); the files [`YM/R2I/Campaign/Accepted.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean) and [`YM/RG17/Joint.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean); and parts of `YM/FullVolume`, `YM/EveryPhase`, `YM/TraceExtension`, `YM/OPE`, `YM/Contacts` and `YM/Pert`. **Size:** 12,060 lines in 1,674 declarations. They break down as follows:
- about 5,000 lines are lemmas in the dependency closure of the every-phase reconstruction theorem. That theorem is itself in V.3; these lemmas are filed here.
- 4,600 lines are the proof of `fromFunded`.
- 2,100 lines are corollaries of the reconstruction arcs.
- 2,100 lines are the ultraviolet endpoint `Jewel` and its chain.
- 400 lines are the public theorem and the bridges.
- About 200 lines each are the parity endpoint, `YM/Org` and the public definitions.

The unit has little new mathematics. It does four things:
- It fixes one renormalization-group run for each gauge group and each block-spin parameter $b$.
- It upgrades the subsequential ultraviolet limit to a limit along the full sequence of lattice spacings.
- For each requested extraction order it collects, on one refinement, the outputs of Parts III–VII. They all concern one table, one reconstruction, one field algebra and one OPE reader.
- It translates the result into the public vocabulary of [statement.md](../../statement.md).

</details>

<a id="unit-results"></a>

## 1. What this unit proves

**Conventions.** The notation follows statement.md:
- $(m,G,\mathfrak g)$ is a gauge group.
- $\mathcal W=(L_p,D_N,\beta_{N,p},h,\mathcal T,I_{N,p})$ is a Wilson family, with $a_N=1/D_N$, smeared moments $C_{N,p}(v;f)$ and separated configurations $\mathrm{Conf}_n$.
- A hierarchy consists of $\mathfrak W,F_d,\iota_d,\pi,X,\nu,\xi_*,S^s,\mathsf F_n,\mathrm{Ch}_j,O_{j,\kappa},c_{j,\kappa},\Theta$, and $G_\Theta$ is the time-axis trace correlation.
- (Reg1)–(Reg4), (R1)–(R15), (O1)–(O2), (T1)–(T4), (P1)–(P4) and (D1)–(D16) are as in statement.md.
- $b_0=11C_{\mathfrak g}/(48\pi^2)$.

Internal objects:
- An *extraction order* is a pair $\sigma=(\sigma^{\rm m},\sigma^{\rm v})$ of strictly increasing maps $\mathbb N\to\mathbb N$: a mesh sequence and a volume sequence.
- Its *refinement* by $\tau$ is $\sigma\circ\tau:=(\sigma^{\rm m}\circ\tau^{\rm m},\sigma^{\rm v}\circ\tau^{\rm v})$. The full sequence is written $\mathrm{id}$.
- An *internal family* $\mathcal C$ is the record of a renormalization-group construction: trajectory, couplings $\beta_{N,p}(m)$ at levels $m\le N$, labels and local lattice sections. (D3) is its construction predicate, and $\mathcal W(\mathcal C)$ is its Wilson family, with $\beta_{N,p}:=\beta_{N,p}(N)$.
- A *table* $S$ is a family of continuum correlation functions $S(v;x)$ indexed by token lists.

*Ordered limit.* $\mathrm{Ord}_\sigma(\mathcal C,S)$ means the following. For every $n$, $v\in\mathcal T^n$ and $t\in C^\infty_c(\mathrm{Conf}_n)$:
- $t$ is $\sigma^{\rm v}(k)$-admissible for large $k$;
- there are numbers $R_p$ with $C_{\sigma^{\rm m}(j),p}(v;t)\to R_p$ for every admissible $p$;
- $R_{\sigma^{\rm v}(k)}\to\int tS(v;\cdot)$.

*Final object.* A final object $\mathfrak F$ on $(\mathcal C,\sigma,S)$ consists of five parts:
1. The property that the trajectory of $\mathcal C$ is generated by an explicit recursion from chosen constants and step data (D6).
2. A *seed*: (D3), $\mathrm{Ord}_\sigma(\mathcal C,S)$, point limits, the Euclidean hierarchy axioms for $S$, cell hypotheses and corrected-field widths.
3. A field algebra: derivatives, rotations and a stress tensor.
4. A phase selection with its certificate.
5. Analytic continuations of the mixed and selected correlations, and a Wightman theory realizing the selected one.

**Proposition VIII.1.1 (main theorem, public form).** Let $(m,G,\mathfrak g)$ be a gauge group with $\mathfrak g$ simple. Then there is a Wilson family $\mathcal W$ for $G$ satisfying (Reg1)–(Reg4), with the following property. For every strictly increasing $p:\mathbb N\to\mathbb N$ there are a strictly increasing $q$ and a hierarchy over $\mathcal W$ satisfying (P1)–(P4) along $p\circ q$:
- **(P1)** For every $n$, every $v\in\mathcal T^n$ and every $f\in C^\infty_c(\mathrm{Conf}_n)$, $\lim_{N\to\infty}C_{N,p'}(v;f)=:R_{p'}$ exists for every $p'$ for which $f$ is $p'$-admissible. The limit is along the full sequence of $N$. Moreover $R_{p(q(k))}\to\int f\,S^{\rm mix}(\pi(v);\cdot)$.
- **(P2)** The selected phase carries a Wightman theory satisfying (W0)–(W3), with faithful fields. The mixed correlations are the $\nu$-average of continuous phase correlations, with $\nu$ a probability measure of full support. The Wightman functions are boundary values of the analytic continuation in the times of $S^{\xi_*}$ (R1)–(R15).
- **(P3)** The OPE bounds (O1)–(O2) hold with one system of coefficients, uniformly in the state $s\in X\sqcup\{\mathrm{mix}\}$.
- **(P4)** $\Theta$ has zero vacuum expectation. $r^8(\log 1/r)^2G_\Theta(r)\to 3\dim\mathfrak g/\pi^4$ as $r\downarrow0$. No Wick profile coincides with $G_\Theta$ on any interval $(0,\delta)$.

*Status:* theorem. The only hypothesis is simplicity. The proof uses only the axioms `propext`, `Classical.choice` and `Quot.sound` (assessment §9.1).
*Lean:* [`YangMills.jointExistence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean#L4-L10), statement [`JointExistence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L186-L188), with [`WilsonRegularity`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L12-L22), [`Hierarchy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L24-L48), [`Properties`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L177-L181), [`Converges`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L85-L90), [`Reconstructed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L117-L143), [`OperatorProductExpansion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L70-L80) and [`TraceTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L168-L175).

**Proposition VIII.1.2 (detailed construction theorem).** Let $\mathfrak g$ be simple and $b>0$. Then there is an internal family $\mathcal C$ such that:
- its block-spin kernel has penalty $b$ (D16);
- (D3) holds;
- $\mathcal W(\mathcal C)$ satisfies (Reg1)–(Reg4).

Moreover, for every extraction order $\sigma$ there are:
- a refinement $\tau$ and a table $S$;
- a final object $\mathfrak F$ on $(\mathcal C,\sigma\circ\tau,S)$;
- an every-phase reconstruction $\mathfrak L$, an OPE reader $Q$, contact devices $\mathsf M$ and a scaling sequence $\Sigma=(r_k,U_k)$;

such that the following hold:
1. The public hierarchy $T(\mathfrak F,Q)$ over $\mathcal W(\mathcal C)$ has (P1)–(P4) along $(\sigma\circ\tau)^{\rm v}$, and every correlation $S^s(a;\cdot)$ extends to a distribution on $(\mathbb R^4)^n$ (D1, D2).
2. $\mathrm{Ord}_{(\mathrm{id},(\sigma\circ\tau)^{\rm v})}(\mathcal C,S)$ holds: the ordered limit with the full mesh sequence (D4).
3. Positional ultraviolet convergence at every fixed volume holds along the full mesh sequence (D5). See VIII.1.6.
4. The trajectory of $\mathcal C$ is generated by an explicit recursion (D6).
5. The bundle `Core` holds: OPE services, reconstruction in every phase, the trace tests, the OPE foundation, and integrated OPE remainder bounds against complex measures of bounded total variation.
6. The internal Wightman axioms hold for the selected phase and for every phase $\xi\in X$, and the public (W0)–(W3) hold for every phase. The $\nu$-average of the phase Wightman distributions is the boundary distribution of the mixed continuation (D7).
7. The separated OPE and the nested OPE over finite trees hold (D8, D10).
8. The seven trace exclusions hold (D9; listed in VIII.1.n).
9. The contact devices use the reader's basis and give a full contact resolution, a real system basis and contact thresholds (D11)–(D13).
10. The first-order comparison with free Maxwell fields along $\Sigma$ and the normalization at degree four hold (D14, D15).

The family $\mathcal C$ depends only on $(G,b)$. Items 3 and 4 are properties of $\mathcal C$ alone, although they are stated inside the quantifier over $\sigma$.
*Status:* theorem.
*Lean:* [`YangMills.constructed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L40). Internal form: [`Nonperturbative.existence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Headlines.lean#L19-L36), statement [`Headline.WilsonExistence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L143-L155).

**Proposition VIII.1.3 (continuum theorem for the funded run).** Let $\mathcal C_{G,b}$ be the family of the run $\mathsf R_{G,b}$ chosen in VIII.1.a. Its penalty is $b$. For every $\sigma$ there are $\tau,S,\mathfrak F,\mathfrak L,Q,\mathsf M$ with the following properties:
- items 2, 3, 5 and 9 of VIII.1.2;
- the uniform nested OPE (`Nesting.Uniform`);
- a scaling sequence $\Sigma$ with (D14) and (D15).

*Status:* theorem.
*Lean:* [`continuum_with_position_tests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L28-L48). The form without $\Sigma$ is [`continuum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L52-L66).

**Proposition VIII.1.4 (a funded run supplies everything).** Let $\mathsf R$ be a run with campaign $T$ and pillars $W$, let $\Delta$ be a choice of local step estimates, and let $\mathfrak g$ be simple. Assume $\mathsf R$ is *funded* (Fd): see §2, item 1. Then the bundle `Broad` holds:
1. (Fd).
2. The ultraviolet endpoint `Jewel` (VIII.1.5).
3. The logarithmic OPE package.
4. The dense-coverage property of the sharp Gram family.
5. For every $\sigma$, every table $S$ and every final object $\mathfrak F$ on $(\mathcal C_{\mathsf R},\sigma,S)$: the trace result of VIII.1.h.
6. For every $\sigma$ there are $\tau$, numbers $(B_m)_{m\in\mathbb N}$ and data $S,\mathfrak F$ (on $\sigma\circ\tau$), $\Sigma,\mathfrak L,Q$ such that:
   - for every level $m$ the couplings $\beta_{N,p}(m)$ have the ordered limit $B_m$ along $\sigma\circ\tau$;
   - $\mathrm{Ord}_{(\mathrm{id},(\sigma\circ\tau)^{\rm v})}(\mathcal C_{\mathsf R},S)$ and (D5) hold;
   - (D14) holds;
   - the reconstruction in every phase holds;
   - the trace result holds;
   - the OPE facilities, the OPE foundation for $Q$ and the uniform nested OPE hold;
   - the all-shapes OPE holds for every coherent prescription;
   - for every ultrafilter on $\mathbb N^2$ finer than the extraction filter of $\sigma\circ\tau$ there is a "mantle" (a compatible allocation of the sharp Gram data).

*Status:* theorem.
*Lean:* [`R2IGoals.fromFunded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L150-L167), statement [`Broad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L130-L148).

**Proposition VIII.1.5 (ultraviolet endpoint).** Let $\mathfrak g$ be simple and let $\mathsf R,T,W$ satisfy three conditions of (Fd): the stationary-point and amplification condition, the delay condition, and the weight-and-tableau data $(\Theta,v)$. Then `Jewel` holds:
1. (D3) holds for $\mathcal C_{\mathsf R}$, and the weight data exist.
2. *Sampler.* Every $\sigma$ has a refinement $\tau$ carrying a table $S$ and a final object on $(\mathcal C_{\mathsf R},\sigma\circ\tau,S)$, and $\mathrm{Ord}_{(\mathrm{id},(\sigma\circ\tau)^{\rm v})}$ holds.
3. The trajectory at every $(p,N)$ competes in, and is issued by, the fixed tuning recursion.
4. *Tuning.* Fix $(p,N)$ and a target parameter $s\in[-1,1]$, that is, a target coupling $\bar\beta+ws$ at level $0$. The bare coupling at level $N$ whose trajectory reaches that target is unique within the recursion. As a function of $s$ it is the restriction of a function holomorphic on the unit disc.
5. At every level $m$ the stripped cost is bounded below by some $c>0$, uniformly in $N\ge m$, and the fixed-point exponent $v$ tends to $-\infty$ as $N\to\infty$. (The meaning of these two quantities is tentative.)
6. The volume-uniform bounds `FixedBounds` hold.
7. (D5) holds along the full mesh sequence.
8. For every $p$ there is a fan of parameter-dependent trajectories with the travel property.

*Status:* theorem. It is assembled here; its ingredients are in III.12–III.15.
*Lean:* [`FullVolume.Final.jewelOf17`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L102-L111) and [`Jewel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L133-L149).

**Proposition VIII.1.6 (the ultraviolet limit along the full spacing sequence).** For $p\in\mathbb N$, let $\mathrm{NoHit}_p$ be the set of configurations no two of whose points are congruent modulo $L_p\mathbb Z^4$.
(a) For the family of a run satisfying `Jewel`'s hypotheses, the following holds for every $p$, $n$ and $v\in\mathcal T^n$. There is $f_{p,v}\in C^\infty(\mathrm{NoHit}_p)$ such that:
   - $C_{N,p}(v;t)\to\int t\,f_{p,v}$ as $N\to\infty$ along all $N$, for every $p$-admissible $t$;
   - for every finite list of lattice difference operators, the interpolated lattice differences of the lattice correlations converge locally uniformly on $\mathrm{NoHit}_p$ to the corresponding derivatives of $f_{p,v}$, also after smearing.
(b) Suppose a final object exists on $(\mathcal C,\sigma,S)$ and (a) holds for $\mathcal C$. Then $\mathrm{Ord}_{(\mathrm{id},\sigma^{\rm v})}(\mathcal C,S)$ holds.

*Status:* theorems.
*Lean:* (a) [`Campaign.realUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L45), with the definition [`PositionsUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L25-L36). (b) [`FullVolume.Final.from_spec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L117-L126).

**Proposition VIII.1.7 (public bridges).** Let $\mathfrak F$ be a final object on $(\mathcal C,\sigma,S)$ and $Q$ a reader, and let $T(\mathfrak F,Q)$ be the public hierarchy built from them (VIII.1.p).
1. The public Wilson energy, Wilson measure, lattice moments and smeared moments of $\mathcal W(\mathcal C)$ equal the internal ones. $\mathrm{Ord}_{(\mathrm{id},s)}(\mathcal C,S)$ implies (P1) along $s$.
2. If (D3) holds and $\mathfrak g$ is simple, then $\mathcal W(\mathcal C)$ satisfies (Reg1)–(Reg4), with $b_*=2b_0$.
3. The reconstruction in every phase implies (R1)–(R15).
4. The internal separated OPE implies (O1)–(O2).
5. The internal trace exclusions imply (T1)–(T4), with $3\dim\mathfrak g/\pi^4$ identified with the internal amplitude.
6. The full contact resolution implies (D2).

*Status:* theorems.
*Lean:* [`wilsonFamily`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L20-L30) and [`fromWilson`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L62-L67) (1); [`regular`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L16-L25) (2); [`publicReconstruction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L79-L133) (3); [`publicOPE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L68-L77) (4); [`publicTrace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean#L35-L44) (5); [`contactDistribution`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactBridge.lean#L14-L49) (6).

**Proposition VIII.1.8 (exclusion of Wick descriptions in momentum space).** Let $\mathfrak F$ be a final object. Assume $s^8(\log 1/s)^2\,G_\Theta(s)\to A$ as $s\downarrow0$, with $A>0$, where $G_\Theta$ is the selected Euclidean two-point function of the centered trace. Let $W$ be any finite list $(c_\alpha,\text{track}_\alpha)$ of coefficients and products of mass-shell modes. Then the following identity fails for some Schwartz functions $f,g$ on $\mathbb R^4$ for which the momentum-space test $\widehat{f\otimes g}$ attached to $f\otimes g$ has compact support:
$$\mathcal W^{\xi_*}_2(\Theta^*,\Theta)(f\otimes g)=\sum_\alpha c_\alpha\,\mathrm{read}_\alpha\big(\widehat{f\otimes g}\big).$$
Here the left side is the selected Wightman two-point function of $\Theta$, and the right side is the mass-shell (Wick) expression of $W$.
*Status:* theorem. It enters the trace chain (VII.3) through `crest_ready`. The public (T4) uses the Euclidean form `euclidean_excludes` (VII.2) directly (VIII.1.r).
*Lean:* [`TraceExtension.Wick.polynomial_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105).

**Proposition VIII.1.9 ($SU(2)$).** $\mathfrak{su}(2)\subset M_2(\mathbb C)$ is simple. Hence VIII.1.1 holds for $(2,SU(2),\mathfrak{su}(2))$.
*Status:* theorem.
*Lean:* [`su2Simple`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L12) (from [`Examples.SU2.simple`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Examples/SU2.lean#L79-L106)) and [`su2Theory`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L15-L18).

**Proposition VIII.1.10 (definitions filed here and used elsewhere).** Several definitions used by III.10–III.15, V.1–V.3, VI.1–VI.2 and VII.1–VII.4 are filed in this unit:
- the structure of a final object and its parts: [`Spec.Final`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73), [`Seed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26), [`Locals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L34-L43), [`Materializes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L45-L47), [`Relativistic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L50-L54) and [`Calibrated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L58-L61);
- the input bundles [`Org.Alloy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L47-L54), [`Assembly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L64-L66), [`MaxwellData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170), [`IR`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L172-L175) and [`UV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L177-L186);
- the volume-uniform bounds of `YM/FullVolume`, for example [`FixedBounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L50-L52) and [`genuine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L62).

*Status:* definitions, and theorems described in the units that use them.

<a id="unit-inputs"></a>

## 2. What it uses

**From other units.**
1. **III.14 and III.2 (selection of the run).** For simple $\mathfrak g$ and $b>0$ there are a run $\mathsf R$, a campaign $T$ and pillars $W$ such that the penalty is $b$ and $\mathsf R$ is funded for the fixed choice $\Delta$ (`garment10 G`). A run records levels, schedule of constants, step budgets, the trajectory and its tuning, the reference levels and the transfer data of the labels.
   - (Fd) is a conjunction of thirteen conditions on the schedule and the step budgets of the run, described in III.15:
     - the local step estimates for $\Delta$;
     - an attentiveness condition, which supplies the gallery and coverage properties used below;
     - compatibility conditions between the schedule, the delays and the frame targets;
     - a fixed support exponent $100$ at every level;
     - budget conditions for the logarithmic OPE and the halo gate;
     - the weight and tableau data $(\Theta,v)$ ("sky").
   - The run is produced by a selection theorem for runs with a fixed treasury period, a preselected component recipe and the default dynamics (III.2).
   - *Lean:* [`Independent.constructionRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28), [`Funded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L60-L73), and the selection theorem in [`NativePreselectedPostnumericPeriodRun.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean).
2. **III.12–III.15 (ultraviolet bounds and convergence).** Used for `Jewel` (VIII.1.5) and (D5):
   - the convergence and alignment of the activities along the tuning recursion (`offers`);
   - uniqueness and analyticity of the trial couplings;
   - the volume-uniform bounds on correlation kernels and their lattice differences at separated points (`financed`, behind [`FullVolume.genuine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L62));
   - the pointwise Cauchy property of lattice correlations along the full spacing sequence at fixed volume (`cinema`, used in [`Campaign.sees`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L30-L38));
   - the property that every extraction order has a refinement carrying a final object ([`Run.again`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L73-L75), through [`ahead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Forge.lean#L60-L72)).
3. **I.1, II.1–II.2 (setting and construction record).** The internal family, (D3) including the running law $|\beta_{N,p}(m)-\hat\beta_m|\le\varepsilon\log(1/a_m)$ for $m$ large and all $N\ge m$ and all $p$, where $\hat\beta_m=\bar\beta+2b_0\log(1/a_m)$; the band condition $\beta_{N,p}(m)\in[\hat\beta_m/2,2\hat\beta_m]$; tokens, local sections and their stencils; tables.
4. **IV.1 (infinite volume).** The seed: a subsequential table $S$ with $\mathrm{Ord}_{\sigma\circ\tau}$, point limits, the Euclidean hierarchy axioms, cell hypotheses and corrected-field widths. It is produced inside the run's `Ahead` property and read off in `extractible17`.
5. **V.1–V.3 (phases and reconstruction).**
   - The phase selection with its certificate (`Phase.Loom.cleanse`, work items B01–B18).
   - The Osterwalder–Schrader–Wightman reconstruction of the selected phase ([`after_materializes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L247-L255)).
   - The reconstruction in every phase, [`EveryPhase.all_characters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L75-L80) with [`Completed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L51-L71) (V.3).
6. **VI.1–VI.2 (symmetry).** The field algebra (derivatives, rotations, conserved stress tensor) and its local laws: the `Commission` built by [`Bid.station`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L159-L168) from work items A01–A17, and [`Org.Tab`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L19-L24).
7. **VII.1 (free Maxwell comparison).** The free-Maxwell data [`maxwell_supplies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L45-L48) and [`FreeStress.fire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L137-L150); the leading short-distance comparison (`readyA`, `mixed_leading`); the degree-four normalization ([`credible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L50-L52), [`square_four`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L13-L15)).
8. **VII.2–VII.3 (trace).**
   - The gallery property [`Trace.Over.Gallery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L41-L44) and the chain from it to the trace result.
   - The Euclidean Wick exclusion [`euclidean_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L75-L80), with [`real_profile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L18-L22) and [`no_powerlog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Log.lean#L96-L108).
9. **VII.4 (OPE and contacts).**
   - The existence of a coherent prescription ([`Prescription.chosen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Legacy.lean#L20-L31)).
   - The OPE services, which are produced in `extractible17`.
   - The integrated estimates [`estimates_weighted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Profile.lean#L98-L108).
   - The contact resolution [`Solstice.provided`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L65-L69), [`real_basis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Transport/Register.lean#L52-L61), [`installs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Gates.lean#L30-L36) and [`detector_exists`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultipleContact/Detector.lean#L28-L35).
10. **VII.5 (asymptotic freedom).** The value of the slope, $2b_0=11C_{\mathfrak g}/(24\pi^2)$, and $C_{\mathfrak g}>0$ ([`casimir_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L160-L172)).

**Standard mathematics used.** The assembly itself uses only elementary facts:
- uniqueness of limits, and stability of limits under passage to subsequences;
- sequential compactness of countable products of compact intervals (Tychonoff), with a diagonal extraction;
- an Arzelà–Ascoli argument, for (D5);
- dominated convergence, and the Laplace transform of a positive measure (Källén–Lehmann representation of the trace two-point function: Källén 1952, Lehmann 1954), for VIII.1.8;
- asymptotic scales $r^a(\log r)^k$, for (T4).

The inputs rest on further standard mathematics:
- Bałaban's block-spin renormalization group for lattice gauge fields (Bałaban, CMP 1984–1989);
- cluster expansions (Brydges, Les Houches 1984);
- chessboard estimates (Fröhlich–Israel–Lieb–Simon, CMP 1978);
- Osterwalder–Schrader reconstruction (CMP 1973, 1975) and Glaser's linear-growth argument;
- decomposition of a translation-invariant state through the commutative algebra on the zero-energy subspace (Borchers; Ruelle; see Glimm–Jaffe, *Quantum Physics*, §19.7);
- one-loop asymptotic freedom (Gross–Wilczek, Politzer 1973) and the trace anomaly (Collins–Duncan–Joglekar 1977).

**Imported constants and assumptions.** No unproved hypotheses remain.
- (Fd), `Broad`, the `Org` bundles, final objects and `Core` are all produced inside the dependency closure. The docstrings "Not proven" and "STIPULATION" in `YM/Org` and `Bid` are out of date.

Free parameters:
- The penalty $b>0$ of the block-spin kernel. The coarse link $V$ is drawn around the block prediction $Q$ with weight $\exp(-\beta b\,\varrho(VQ^{-1}))$ ([`penaltyWeight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean)). It plays the role of Bałaban's averaging parameter and is unrelated to $b_*$.
- The choice $\Delta$ of local step estimates.
- The default dynamics and the custody record passed to the selection theorem.

Constants:
- $b_0=11C_{\mathfrak g}/(48\pi^2)$, and $b_*=2b_0$ in (Reg1).
- The trace amplitude $A_{\mathfrak g}=12(d_2/b_0)^2\dim\mathfrak g/\pi^4$ with $d_2=-b_0/2$, so $A_{\mathfrak g}=3\dim\mathfrak g/\pi^4$.
- $\bar\beta>0$, the reference coupling at level $0$.

<a id="unit-strategy"></a>

## 3. Strategy

The order of choices is the whole design.
1. **The run.** Given $(G,b)$, one run $\mathsf R_{G,b}$ is chosen once, by the axiom of choice, from the existence theorem of III.14. Its family $\mathcal C_{G,b}$ is chosen before any extraction order. It contains the lattice spacings, volumes, bare couplings and insertions of the public Wilson family. Hence the public $\exists\mathcal W$ precedes $\forall p$.
2. **One refinement per order.** For each extraction order $\sigma$, all continuum data are obtained on one common refinement. This is done by composing refinements:
   - first a refinement $\sigma\circ g$ along which the couplings at every fixed level converge (Tychonoff and a diagonal extraction);
   - then a further refinement $(\sigma\circ g)\circ w$ on which the infinite-volume table $S$ and a final object exist (IV.1–VI, assembled in `extractible17`).
   Every later object is attached to this final object: the reconstruction in every phase, the trace result, the OPE reader, the contact devices and the scaling sequence. Ordered limits survive further refinement because the mesh and volume components only pass to subsequences (`Order.retained`, `Order.upon`). So everything refers to one table, one reconstruction, one field algebra and one reader.
3. **Full spacing sequence.** The extraction of IV.1 is subsequential in both the mesh and the volume. The public (P1) requires the full sequence $N\to\infty$ at each fixed volume. This is obtained from a genuine ultraviolet limit at fixed volume (VIII.1.6(a), from III.12–III.15):
   - the lattice correlations and their finite differences are bounded at separated points, uniformly in $N$ and $p$;
   - they are pointwise Cauchy along all $N$ on a dense set;
   - Arzelà–Ascoli then gives convergence along all $N$.

   Since the subsequential row limits coincide with the full-sequence limits, the mesh subsequence can be dropped (VIII.1.6(b)). The only subsequence left in the public theorem is the one in the volume.
4. **Translation.** The public theorem is obtained in three steps:
   - The detailed theorem is specialized to $b=1$ and $\sigma=(\mathrm{id},p)$. The public $q$ is the volume part of the refinement.
   - The public hierarchy is read off from the final object $\mathfrak F$ and the reader $Q$.
   - Each public clause is checked from the matching internal clause.

   The translation is a dictionary, with three small lemmas:
   - the plaquette conventions agree;
   - the Wick profiles of the public statement are exactly the internal ones;
   - the internal amplitude equals $3\dim\mathfrak g/\pi^4$.

<a id="unit-steps"></a>

## 4. Steps

### 4.1 The run and the ultraviolet endpoint

**Lemma VIII.1.a (the chosen run).** For simple $\mathfrak g$ and $b>0$, let $(\mathsf R,T,W)$ be a choice of a funded run with penalty $b$, as in §2 item 1. Set $\mathsf R_{G,b}:=\mathsf R$ and $\mathcal C_{G,b}:=$ the family of $\mathsf R$. The extra "native component recipe" conclusion is discarded.
*Proof sketch.* `constructionRun` applies the selection theorem of III.2 to the trivial schedule predicate, which is eventually paid. `fundedRun` takes the chosen witness. The alternative selection `selectRun`, built from `allFactor` and `engage`, and its consequences `investPlan` and `commencement` are not on the path of the main theorem.
*Lean:* [`constructionRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28) (III.14) and [`fundedRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L30-L31). *(proof read; selection theorem statement only)*

**Lemma VIII.1.b (ultraviolet endpoint).** This is VIII.1.5.
*Proof sketch.* The proof assembles the following pieces:
- The convergence and alignment property of the campaign (`offers`, III.13–III.15) gives the curves.
- `wins` gives the uniqueness in item 4: two successful trials with the same target coincide by the uniqueness clause of the recursion.
- `bareTrial` gives the analytic interpolation of the bare coupling in the target parameter.
- `saved` and `field_independent` give the costs.
- `genuine` gives `FixedBounds`.
- `realUV` gives (D5).
- [`clients`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L101-L113) gives the fans.
- The sampler combines `Run.again` (a refinement with a final object) with VIII.1.6(b).

`Funded.jewel` applies this with the sky data of (Fd).
*Lean:* [`jewelOf17`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L102-L111), [`wins`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L60-L68), [`bareTrial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L70-L77) and [`Funded.jewel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L89-L91). *(assembly, `wins` and `bareTrial` proofs read; `offers`, `clients` and the cost lemmas statement only)*

**Lemma VIII.1.c (convergence along all spacings at fixed volume).** This is VIII.1.6(a).
*Proof sketch.* There are three steps.
1. *Bounds* (`genuine`, giving `FixedBounds`). For every $n$, $v$, list of difference operators and $r>0$, there is $B$ with the following property. For all $N\ge N_0$ and all $p$, the lattice correlation kernel and its lattice differences are bounded by $B$ at $r$-separated configurations on the torus.
2. *Pointwise Cauchy along all $N$* (`purchased`). At configurations in $\mathrm{NoHit}_p$ made of points that are lattice points for all large $N$ (a dense set, since $D_N\mid D_{N+1}$, probable), the correlations form a Cauchy sequence in $N$ (`sees`). This comes from the step-by-step comparison of III.12 (`cinema`). Equicontinuity from step 1 (`growFrom`) extends the Cauchy property to all of $\mathrm{NoHit}_p$.
3. *Limit* (`positioned`). Bounds on one more difference give equicontinuity of each difference quotient. Arzelà–Ascoli then gives locally uniform convergence of all interpolated differences to the derivatives of a smooth limit $f_{p,v}$. The Riemann sums $C_{N,p}(v;t)$ converge to $\int t f_{p,v}$.

*Lean:* [`realUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L45), [`purchased`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L40-L44), [`positioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L42-L47) and [`FixedBounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L50-L52). *(top level read; the Arzelà–Ascoli step inside `reachable` and `pudding` is probable)*

**Lemma VIII.1.d (removing the mesh subsequence).** This is VIII.1.6(b).
*Proof sketch.* The seed of $\mathfrak F$ gives, for each admissible $p$, $C_{\sigma^{\rm m}(j),p}(v;t)\to R_p$, and also $R_{\sigma^{\rm v}(k)}\to\int tS(v;\cdot)$. By VIII.1.c, $C_{N,p}(v;t)\to\int t f_{p,v}$ along all $N$. Since $\sigma^{\rm m}$ is cofinal, uniqueness of limits gives $R_p=\int t f_{p,v}$. Thus the same rows $R_p$ are limits along all $N$, and the volume limit is unchanged.
*Lean:* [`from_spec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L117-L126).

**Lemma VIII.1.e (OPE and logarithmic packages).** If $\mathsf R$ is funded, then the family carries the OPE package and the logarithmic OPE package. The OPE package comes from the pillars, the polynomial accord, the halo gate and the sky data. The logarithmic package adds:
- an exit estimate (`exodusL`);
- the logarithmic budget;
- divergence of the composed schedule $m\mapsto Q(J(m))$, where $J$ is the entry stage;
- the fixed support exponent.

*Lean:* [`Funded.logPackage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L100-L106) and [`opePackage17`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Witness.lean#L98-L106). *(`logPackage` proof read; `opePackage17` statement only)*

### 4.2 The data at one extraction order

**Lemma VIII.1.f (limits of the couplings at fixed level).** Assume (D3) holds for $\mathcal C$, and let $\sigma$ be an extraction order. Then there are $g$ and $(B_m)_m$ such that, for every $m$, $\beta_{N,p}(m)$ has the ordered limit $B_m$ along $\sigma\circ g$. Moreover $B_m/\log(1/a_m)\to 2b_0$.
*Proof sketch.* Set $c_N(p,m):=\beta_{N,p}(m)$ for $m\le N$ and $c_N(p,m):=\hat\beta_m$ for $m>N$. By the band condition of (D3), $c_N\in\prod_{(p,m)}[\hat\beta_m/2,2\hat\beta_m]$, a compact metrizable space.
1. Extract $g^{\rm m}$ with $c_{\sigma^{\rm m}(g^{\rm m}(j))}\to a$ in the product.
2. Extract $g^{\rm v}$ with $a(\sigma^{\rm v}(g^{\rm v}(k)),\cdot)\to B$ in $\prod_m[\hat\beta_m/2,2\hat\beta_m]$.
3. For fixed $m$ the truncation is eventually inactive.
4. The running law of (D3) gives $|B_m-\hat\beta_m|\le\varepsilon\log(1/a_m)$ for large $m$, hence the slope.

The slope is not used by the main theorem.
*Lean:* [`Running.extraction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PertExtension/Running.lean#L40-L56) and [`Running.discrete`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PertExtension/Running.lean#L64-L84).

**Lemma VIII.1.g (a final object on a refinement).** Let $\mathsf R$ be a run with the OPE package, and let $\sigma$ be an extraction order. Then there are $w$, a table $S$, a final object $\mathfrak F$ on $(\mathcal C_{\mathsf R},\sigma\circ w,S)$ and a scaling sequence $\Sigma$, with OPE services and (D14).
*Proof sketch.* The proof goes in order:
1. The run's `Ahead` property yields, for $\sigma$, a refinement $w$, a table $S$ and a seed on $(\mathcal C,\sigma\circ w,S)$, together with the recursion property (D6). This is where IV.1 enters.
2. The free-Maxwell data are added: `maxwell_supplies` and `FreeStress.fire`, normalized so that $\kappa^{-1}J$ is the free Maxwell stress tensor.
3. The complete weak property and `readyA` give the infrared data, the scaling sequence $\Sigma$ and the supplier of the first comparison.
4. `Bid.station`, fed with the work items A01–A17, produces the `Commission`. Its `picks` give the field algebra: derivatives $E$, rotations, stress tensor $J$, and their local laws.
5. [`Pert.withFinal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Construction.lean#L21-L31) assembles the final object with this algebra. The phase selection (`Phase.Loom.cleanse`, B01–B18) and the selected reconstruction (`after_materializes`) are produced inside it (discharge.md).
6. (D14) follows from `attached`: the leading mixed comparison, the rank-one space of conserved tensors, and the limits of derivatives and rotations.

*Lean:* [`Run.extractible17`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L60-L90). *(proof read at the top level; the pieces it calls statement only)*

**Lemma VIII.1.h (trace result for every final object).** Assume (Fd) and $\mathfrak g$ simple. For every $\sigma$, every table $S$ and every final object $\mathfrak F$ on $(\mathcal C_{\mathsf R},\sigma,S)$, the following hold:
- $d_2=-b_0/2$, and the amplitude $A_{\mathfrak g}$ is positive;
- the centered trace $\Theta$ is real and Lorentz scalar, and $\langle\Omega,\Theta(f)\Omega\rangle=0$;
- $\Theta(f)=(\sum_aT_{aa})(f)-\langle\sum_aT_{aa}\rangle_{\xi_*}\big(\int f\big)\,\mathrm{id}$, and $\Theta\ne0$;
- $s^8(\log 1/s)^2G_\Theta(s)\to A_{\mathfrak g}$;
- $\Theta$ has a unique spectral measure, with a log-corrected scaling limit at high momenta proportional to $A_{\mathfrak g}\,\mathsf m(p)^2dp$ on the forward cone;
- comparison of the stress tensor along an ultrafilter in every admissible renormalization scheme;
- the three exclusions: Wick models in momentum space (VIII.1.8), free Maxwell Fock embeddings, and their projected form.

*Proof sketch.* The attentiveness clause of (Fd) gives the gallery property for $\sigma$. Then `crest_ready`, `arenaT` and `assembled` give the result. The mathematics is in VII.2–VII.3.
*Lean:* [`Trace.Target.Result`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L99-L120), [`assembled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L138-L152), [`arenaT`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Agora.lean#L69-L74), [`crest_ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Belfry.lean#L31-L37) and [`Funded.gallery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L93-L95). *(`assembled` read at term level; the rest statement only)*

**Lemma VIII.1.i (Wick exclusion in momentum space).** This is VIII.1.8.
*Proof sketch.*
1. Let $\mu$ be the trace spectral measure, which exists and is unique by `traceSpectrum_exists`. It is tempered and supported in the forward cone. The selected Wightman two-point function of $\Theta$ is $\varphi\mapsto\int\widehat\varphi\,d\mu$, and $G_\Theta(s)=\int e^{-sp^4}\mu(dp)$ for $s>0$.
2. The assumed identity gives $\int v\,d\mu=\sum_\alpha c_\alpha\mathrm{read}_\alpha(v)$ for every compactly supported Schwartz $v$. Indeed, take $u$ whose one-variable momentum transform has modulus $1$ on a ball containing $\mathrm{supp}\,v$ (`probe_one`). Solve for $w$ with $\widehat{u\otimes w}=v$ (`testPlus_onto`).
3. Approximate $e^{-sp^4}$ by compactly supported cutoffs $w_n$ with $|w_n|\le e^{-sp^4}$. Dominated convergence on both sides gives $G_\Theta(s)=\sum_\alpha c_\alpha K_\alpha(s)$ for $0<s<1$ (`identifies_euclid`).
4. This contradicts the Euclidean exclusion (VIII.1.r).

*Lean:* [`polynomial_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105), [`identifies_euclid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L62-L73) and [`traceSpectrum_exists`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L99-L119).

**Lemma VIII.1.j (reconstruction in every phase; input from V.3).** For every final object $\mathfrak F$ there is $\mathfrak L$ such that, for every phase $\xi\in X$:
1. A Wightman theory $\mathfrak W_\xi$ realizes the continuation attached to $\xi$, with the same labels.
2. The comparison map from $\mathfrak W_\xi$ to the Osterwalder–Schrader space of $\xi$ is onto.
3. The Euclidean ground state of $\xi$ is unique.
4. The zero-energy subspace of $\mathfrak W_\xi$ is $\mathbb C\Omega_\xi$.
5. For every finite sum $A$ of field words there is $M_A$, independent of $\xi$, such that:
   - $\mu_{A\Omega_\xi}(\{0<p^4\le u\})\le M_Au^2$ for $u\in(0,1]$;
   - $0\le\langle A\Omega_\xi,(e^{-sH_\xi}-P_0)A\Omega_\xi\rangle\le M_As^{-2}$ for $s\ge1$.
6. The weak commutant of the fields is $\mathbb C\,\mathrm{id}$.
7. The stress tensor continues to $\mathfrak W_\xi$.
8. The Wightman distributions are continuous in $\xi$.
9. $\int S^\xi\,d\nu=S$ on separated words, and $\int\mathcal W^\xi\,d\nu=\mathcal W^{\rm mix}$ on joint tests.

*Proof sketch (V.1, V.3).* The phases are the characters of a commutative $C^*$-algebra. It is generated by time-slab word operators compressed to the zero-energy subspace of the Osterwalder–Schrader space of $S$. The measure $\nu$ represents the vacuum. The barycentre identity holds after a time translation of the word into a slab (`Resolution.barycenter`). The remaining clauses are the lemmas `boundary_realizes`, `reaches`, `every`, `boundary_zero_energy`, `light_bound`, `inverse_square`, `irreducible`, `force`, `word_continuity` and `barycenter`.
*Lean:* [`all_characters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L75-L80) and [`Completed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L51-L71). *(statement and top-level proof read)*

**Lemma VIII.1.k (the OPE reader and its estimates).** Let $\mathfrak F$ carry OPE services. Choose a coherent prescription $P$ for the field derivatives, adapted to the symmetric laws of the table and to the transport injection. Let $Q$ be the reader formed by $P$, its coherence, the Euclidean kernel and the transport data (injection, orientation, local laws). Then:
- the OPE foundation holds for $Q$;
- the uniform nested OPE holds;
- the all-shapes OPE holds for every coherent prescription;
- under the coverage property, a mantle exists for every ultrafilter finer than the extraction filter.

*Lean:* [`Prescription.chosen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Legacy.lean#L20-L31) (VII.4), [`Orbits.produce`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L67-L68), [`Nesting.uniform`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Endpoint.lean#L31-L36) and [`attains_mantle17`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Canvas.lean#L54-L58). *(statements only)*

**Lemma VIII.1.l (assembly of `Broad`).** This is VIII.1.4.
*Proof sketch.* The proof has three parts.
- *Global items.* `Jewel` comes from VIII.1.b and the logarithmic package from VIII.1.e. The trace result for every $(\sigma,S,\mathfrak F)$ comes from VIII.1.h. Coverage comes from the attentiveness clause.
- *At an order $\sigma$.* Apply VIII.1.f to obtain $(g,B)$. Apply VIII.1.g to $\sigma\circ g$ to obtain $(w,S,\mathfrak F,\Sigma)$. Apply VIII.1.j to obtain $\mathfrak L$, and VIII.1.k to obtain $Q$. Then:
  - `Order.retained` carries the coupling limits from $\sigma\circ g$ to $(\sigma\circ g)\circ w=\sigma\circ(g\circ w)$;
  - VIII.1.d, with `Jewel`'s full-mesh clause, gives $\mathrm{Ord}_{(\mathrm{id},(\sigma\circ g\circ w)^{\rm v})}$;
  - the facilities are the services together with the logarithmic package.
- *Output.* The refinement returned is $\tau=g\circ w$.

*Lean:* [`fromFunded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L150-L167) and [`Order.retained`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L66-L68).

### 4.3 The internal headline

**Lemma VIII.1.m (contact devices).** Let $\mathfrak F$ carry a reader $Q$ and OPE services. Then there are devices $\mathsf M$ with the following properties:
- the basis of $\mathsf M$ equals the reader's port;
- the full contact resolution holds;
- there is a real system basis containing the unit field;
- there are thresholds $t_n\downarrow0$.

*Proof sketch.* $\mathsf M$ is assembled from the port, its spanning property, the rotations, the Euclidean kernel and the four transport fields of the phase certificate, together with a multiple-contact detector in each degree. Then `provided` (VII.4) gives the resolution from the services, `real_basis` gives the system basis, and `installs` with constant weights $1$ gives the thresholds.
*Lean:* [`contacts_on`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L14-L24) and [`MultipleLight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L52-L63).

**Lemma VIII.1.n (continuum theorem).** This is VIII.1.3.
*Proof sketch.* Take $(T,W)$ and (Fd) from the specification of $\mathsf R_{G,b}$, and apply the refinement clause of VIII.1.4 at $\sigma$. The coupling limits, the all-shapes OPE and the mantles are discarded. Contacts come from VIII.1.m. `Core` is assembled by `Core.of_receipts`:
- the OPE services;
- the reconstruction in every phase;
- the trace tests, read off from the trace result by `of_result`;
- the OPE foundation;
- the integrated remainder bounds from `estimates_weighted`: for a complex measure $\mu$ on a parameter space, a density $w$ with $\int|w|\,d\mu\le B$ and cluster–spectator configurations that are admissible at scale $r$ almost everywhere, the integrated remainder is at most $B\,r^{D+1-w(a)-\varepsilon}$, for every measurable choice of phases and for the mixed state.

The trace tests are:
- (T1);
- the operator identity of VIII.1.h;
- the asymptotics;
- $A_{\mathfrak g}>0$;
- the unique spectral law;
- the Wick countertest;
- the Maxwell countertest, for every isometry of $\mathcal H$ into an $n$-colour free Maxwell Fock space that maps the vacuum to the vacuum, intertwines translations and has physical image;
- its averaged form, localized in any ball.

Finally (D15) follows from (D14) by `four_on`.
*Lean:* [`continuum_with_position_tests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L28-L48), [`Core`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L18-L34), [`Core.of_receipts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L38-L44), [`ManuscriptTraceTests.of_result`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ManuscriptTraceTests.lean#L77-L89) and [`Pert.Position.four_on`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L49-L53). *(proof read; `four_on` read at the top level)*

**Lemma VIII.1.o (internal headline).** For simple $\mathfrak g$ and $b>0$, the statement `WilsonExistence` holds with $\mathcal C=\mathcal C_{G,b}$.
*Proof sketch.* Item by item:
- (D3) comes from the run, and (D6) from the final object.
- *Reconstruction.* It consists of:
  - the mixed and selected continuations;
  - the internal Wightman axioms for the selected theory and for every $\mathfrak W_\xi$: normalized cyclic vacuum, dense domain, temperedness, adjoints, the moment identity, positivity, locality, covariance, strong continuity, spectral representation, forward support, and uniqueness of the invariant vector;
  - the $\nu$-average of the phase Wightman distributions.
- *Separated OPE.* It consists of the coefficient bounds from the OPE foundation, the single-centre remainder bound (`Core.point`) and the integrated bounds of `Core`.
- *Trace exclusions.* These are seven clauses: centered, identified, short distance, positive amplitude, Wick, Maxwell and invariant.

*Lean:* [`Nonperturbative.existence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Headlines.lean#L19-L36), [`Reconstruction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L75-L81), [`WightmanAxioms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L52-L71), [`SeparatedOPE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L24-L48), [`NestedOPE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L128-L138), [`TraceExclusions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L84-L120) and [`Core.point`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L49-L63).

### 4.4 Translation to the public statement

**Lemma VIII.1.p (the public Wilson family and hierarchy).** The public Wilson family $\mathcal W(\mathcal C)$ is defined by:
- $L_p$ and $D_N$ are the period and denominator sequences of $\mathcal C$;
- $\beta_{N,p}=\beta_{N,p}(N)$;
- $h$ is the normalized Haar measure;
- $\mathcal T$ is the set of internal tokens;
- $I_{N,p}$ is the internal insertion.

The public Wilson energy equals the internal one. The proof matches the plaquette $U(y,\mu)U(y+e_\mu,\nu)U(y+e_\nu,\mu)^{-1}U(y,\nu)^{-1}$ with the internal face value. Hence the measures, the lattice moments and the smeared moments agree.

The hierarchy $T(\mathfrak F,Q)$ has the following components:
- $\mathcal H$ and $\mathfrak W$ are those of the selected reconstruction, through the identity dictionary `view`;
- $\mathcal L$ is the union of the field spaces, with $F_d=$ the quotient field spaces of $S$, $\iota_d=$ `pin` and $\pi=$ the class map of tokens;
- $(X,\nu,\xi_*)$ are the phase space, its measure and the selected point;
- $S^s$ is the table read in state $s$;
- $\mathsf F_n$ is the selected continuation;
- $(\mathrm{Ch}_j,O_{j,\kappa},c_{j,\kappa})$ come from $Q$;
- $\Theta=\sum_aT_{aa}-\langle\sum_aT_{aa}\rangle_{\xi_*}\mathbf 1_4$.

*Lean:* [`energy_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L32-L41), [`law_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L43-L46), [`moment_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L49-L55), [`smear_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L57-L60) and [`hierarchy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L27-L42).

**Lemma VIII.1.q (regularity and the Wilson limit).**
(a) If (D3) holds and $\mathfrak g$ is simple, then (Reg1)–(Reg4) hold:
- (Reg1): the running law of (D3) at $m=N$ gives $|\beta_{N,p}/\log D_N-2b_0|<\varepsilon$ for all large $N$ and all $p$, and $2b_0>0$ by $C_{\mathfrak g}>0$;
- (Reg2) and (Reg3): continuity and gauge invariance of the local sections;
- (Reg4): the stencil of the local section.
(b) If $\mathrm{Ord}_{(\mathrm{id},s)}(\mathcal C,S)$ holds, then (P1) holds along $s$. The smeared moments agree by VIII.1.p. The mixed correlation of $\pi(v)$ equals $S(v;\cdot)$ on $\mathrm{Conf}_n$, and $t=0$ off $\mathrm{Conf}_n$.
*Lean:* [`regular`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L16-L25), [`zeroUp_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L15-L30), [`fromWilson`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L62-L67) and [`wilsonLimit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L44-L56).

**Lemma VIII.1.r (reconstruction, OPE and trace clauses).**
(a) The reconstruction in every phase implies (R1)–(R15). Clause by clause:
- (R1): `view_axioms` maps the internal axioms one to one onto (W0)–(W3).
- (R2): faithfulness of the selected theory.
- (R3): injectivity of `pin`.
- (R4): the unit field of degree $0$ is nonzero, and faithfulness applies to it.
- (R5): the labels are covered by the derivative plan.
- (R6): token representatives.
- (R7), (R8): the phase decomposition.
- (R9), (R10): permutation symmetry and smoothness of each state.
- (R11): continuity of the characters, after moving a separated word into a time slab (`place_exists`).
- (R12): the barycentre identity of VIII.1.j.
- (R13), (R14): holomorphy and the values at Euclidean points of the selected continuation.
- (R15): the boundary values, together with `publicMoment`, which identifies the public vacuum expectations with the internal Wightman distributions.
(b) (O1) and (O2) are the internal separated OPE, after enumerating $I\sqcup J$ once.
(c) (T1) is the centered clause. For (T2) and (T3), the internal amplitude is $12(d_2/b_0)^2\dim\mathfrak g/\pi^4=3\dim\mathfrak g/\pi^4$ (`award_eq`), and $G_\Theta$ is by definition the internal Euclidean two-point function. For (T4), public and internal Wick profiles coincide (`profile_eq`); then apply `euclidean_excludes`. The real part of a finite Wick profile has, for every $k\in\mathbb Z$, an expansion modulo $O(r^k)$ in the span of $r^a(\log r)^j$ with $a\in\mathbb Z$ and $j\in\mathbb N$ (`real_profile`). No function with such an expansion modulo $O(1)$ satisfies $r^8(\log 1/r)^2f(r)\to A\ne0$, since that would need the power $(\log r)^{-2}$ (`no_powerlog`). So (T4) follows from (T3) alone.
*Lean:* [`publicReconstruction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L79-L133), [`view_axioms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicView.lean#L102-L142), [`publicMoment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicView.lean#L144-L172), [`publicOPE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L68-L77), [`publicTrace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean#L35-L44) and [`euclidean_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L75-L80). *(proofs read; `no_powerlog` read at the top level)*

**Lemma VIII.1.s (contact distributions).** Assume the full contact resolution. For every state $s$, every $k$ and every $a\in\mathbb F^k$, there is a continuous linear functional $\mathcal D$ on $C^\infty_c((\mathbb R^4)^k)$ with $\mathcal D(f)=\int fS^s(a;\cdot)$ whenever $\mathrm{supp}f\subset\mathrm{Conf}_k$.
*Proof sketch.* Apply the distribution clause of the resolution with:
- the identity embedding of $(\mathbb R^4)^k$;
- the full collision group, centred at $0$;
- $B=\min(1,\text{clearance}(\sum d_i))$ and $r=B/4$.

The recorded functional is $\mathcal D$. On a separated test, the harmonic identity (`harmonic`) and the field-reading identity (`read_fields`) give back the correlation pointwise.
*Lean:* [`contactDistribution`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactBridge.lean#L14-L49).

### 4.5 The headline theorems

**Lemma VIII.1.t (detailed theorem).** This is VIII.1.2.
*Proof sketch.* Apply VIII.1.o to obtain $\mathcal C$, the penalty and (D3). Regularity follows from VIII.1.q(a). For each $\sigma$, unpack the data and conclude as follows:
- (P1) by VIII.1.q(b);
- (P2) by VIII.1.r(a), from `Core`;
- (P3) by VIII.1.r(b);
- (P4) by VIII.1.r(c);
- (D2) by VIII.1.s;
- (W0)–(W3) for every phase by `view_axioms`.

*Lean:* [`constructed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L40).

**Lemma VIII.1.u (public theorem).** This is VIII.1.1.
*Proof sketch.* Apply VIII.1.t with $b=1$, at the lowest universe levels. Given $p$, let $\sigma=(\mathrm{id},p)$, and let $\tau$ be the refinement produced. Take $q:=\tau^{\rm v}$ and the hierarchy $T(\mathfrak F,Q)$. Then $(\sigma\circ\tau)^{\rm v}=p\circ q$, and the mesh part of $\tau$ plays no role because (P1) is proved along the full mesh sequence (VIII.1.d).
*Lean:* [`jointExistence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean#L4-L10) and [`Order.refine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L40).

**Lemma VIII.1.v ($SU(2)$).** $\mathfrak{su}(2)$ is spanned by three explicit matrices. Their brackets show that a nonzero ideal contains all three. Then apply VIII.1.u.
*Lean:* [`su2`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L8-L10) and [`su2Theory`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L15-L18). *(proof read; `Examples.SU2.simple` statement only)*

### 4.6 Endpoints filed here and not on the path of the main theorem

The dependency graph records no use of the following theorems by other declarations. They are stand-alone endpoints, each re-deriving part of VIII.1.2 for some family:
- the degree-four normalization [`normalized_four`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L56-L63), which calls `four_on` and not conversely;
- the parity results [`parityEndpoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Parity/End.lean#L21-L30) and [`low_read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Parity/EvenLow.lean#L44-L49): the finite-volume ledger entries of odd order at most $5$ vanish for simple $\mathfrak g$ (VII.6);
- the contact endpoint [`celestial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L78-L79), built on [`signed_placements`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Layers/Conclusion.lean#L20-L27) and [`OPE.single`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Single.lean#L57-L58) (VII.4);
- the alternative ultraviolet endpoints [`july`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L154-L164) and `RG17.supplies`;
- the alternative run selections `selectRun`, `investPlan` and `commencement`;
- the route `Spec.CLOSED`, `Org.YU` and `Legato.noel` (discharge.md).

The full-volume lemmas filed here, such as `pinnacle`, `ridgeT`, `headlands`, `compose` and `repriseQ`, belong mathematically to III.12–III.15. The reconstruction lemmas `establishing`, `attach`, `compatible`, `field_jet`, `spins_eq` and `er_path` belong to V.2–V.3 and VI.1.

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

*Routine.* The logic of the assembly and the bridges is routine. The bridge files total under 250 lines and mostly unwrap structures. The three computations in the bridges are:
- the plaquette convention;
- the identity $12(d_2/b_0)^2=3$;
- the identification of Wick profiles.

*The points that need care.*
1. **Order of choices.** The family depends on $(G,b)$ only. It is chosen by choice before any order, observable or test. Everything else is chosen on one refinement per order. Refinements are composed in a fixed order: couplings, then table and final object. Limits are carried along by `Order.retained` and `Order.upon`. This layering is why the theorem is subsequential.
2. **Full spacing sequence.** (P1) is a limit along all $N$. This rests on genuine ultraviolet convergence at fixed volume (VIII.1.c), which is stronger than what IV.1 supplies. VIII.1.d then removes the mesh subsequence. Without VIII.1.c the public statement would hold only along a subsequence of spacings.
3. **Reduction of the momentum-space Wick exclusion to the Euclidean one** (VIII.1.i). This requires that product tests $\widehat{u\otimes w}$ exhaust the compactly supported momentum tests.

*Weaker or stronger than expected.*
1. (T4) follows from (T3) by the elementary scale argument of VIII.1.r(c). As a public clause it adds nothing beyond (T3). The stronger countertests appear only in the detailed theorem: Wick models in momentum space, free Maxwell embeddings and their averaged form.
2. (P1) concerns the mixed state, while (T3) and (T4) concern the selected phase. Every phase carries a Wightman theory (D7), but the public statement keeps only $\xi_*$.
3. The low-energy and heat bounds of VIII.1.j are polynomial ($u^2$ and $s^{-2}$). No spectral gap is claimed.
4. `Broad` contains the coupling limits $B_m$ with $B_m/\log(1/a_m)\to 2b_0$, the all-shapes OPE and the mantles. VIII.1.3 discards them.
5. The penalty $b$ is a free parameter. The public theorem fixes $b=1$. Nothing relates the limits for different $b$, or for different choices of run.
6. The docstrings of `Accepted.lean` state limits that are still accurate: no all-order comparison with perturbation theory, and the weak measuring frames are not identified with those of the trace. Their "NOT" and "Not proven" remarks about missing proofs are out of date.

*Unusual.* The code names carry no meaning: `Jewel`, `Funded`, `Broad`, `Almanac`, `Treasury`, `Sky`, `Mantle`. About 5,000 lines of the closure of the V.3 theorem `all_characters`, and most of the full-volume ultraviolet bounds, are filed in this unit.

<a id="unit-notation"></a>

## 6. Notation

- **object:** gauge group

  **code name:** [`GaugeGroup`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L25-L33), [`IsSimple`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L39-L45)

  **proposed notation:** $(m,G,\mathfrak g)$, $\mathfrak g$ simple

- **object:** public Wilson family

  **code name:** [`wilsonFamily`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L20-L30)

  **proposed notation:** $\mathcal W(\mathcal C)=(L_p,D_N,\beta_{N,p},h,\mathcal T,I_{N,p})$

- **object:** regularity

  **code name:** [`WilsonRegularity`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L12-L22)

  **proposed notation:** (Reg1)–(Reg4)

- **object:** public hierarchy

  **code name:** [`hierarchy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L27-L42)

  **proposed notation:** $T(\mathfrak F,Q)$

- **object:** extraction order, refinement

  **code name:** [`Extraction.Order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L34-L36), [`refine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L40)

  **proposed notation:** $\sigma=(\sigma^{\rm m},\sigma^{\rm v})$, $\sigma\circ\tau$

- **object:** ordered limit

  **code name:** [`Ordered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L32-L35)

  **proposed notation:** $\mathrm{Ord}_\sigma(\mathcal C,S)$

- **object:** internal family, construction predicate

  **code name:** `Family`, `Makes`

  **proposed notation:** $\mathcal C$, (D3)

- **object:** run, funded

  **code name:** [`Run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48), [`fundedRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L30-L31), [`Funded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L60-L73)

  **proposed notation:** $\mathsf R_{G,b}$, (Fd)

- **object:** ultraviolet endpoint

  **code name:** [`Jewel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L133-L149)

  **proposed notation:** (UV$_\infty$)

- **object:** positional convergence

  **code name:** [`PositionsUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L25-L36)

  **proposed notation:** (D5), $f_{p,v}$

- **object:** broad goal

  **code name:** [`Broad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L130-L148)

  **proposed notation:** (Goal)

- **object:** table

  **code name:** `Table`

  **proposed notation:** $S$, read as $S^s$

- **object:** final object

  **code name:** [`Spec.Final`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73)

  **proposed notation:** $\mathfrak F$ on $(\mathcal C,\sigma,S)$

- **object:** reconstruction in every phase

  **code name:** [`Almanac`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L117-L132), [`Completed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L51-L71)

  **proposed notation:** $\mathfrak L=(\mathfrak W_\xi)_{\xi\in X}$

- **object:** OPE reader

  **code name:** [`Orbits.Reader`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L17-L23)

  **proposed notation:** $Q$; $(\mathrm{Ch}_j,O_{j,\kappa},c_{j,\kappa})$

- **object:** contact devices

  **code name:** [`Contacts.Devices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Tomography.lean#L17-L26)

  **proposed notation:** $\mathsf M$

- **object:** scaling sequence

  **code name:** [`Climb.Scaling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31)

  **proposed notation:** $\Sigma=(r_k,U_k)$

- **object:** final tests bundle

  **code name:** [`Independent.Core`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L18-L34)

  **proposed notation:** (Core)

- **object:** first comparison, degree-four normalization

  **code name:** [`FirstExtension`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L26-L39), [`FourMeters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L45-L47)

  **proposed notation:** (D14), (D15)

- **object:** centered trace, its two-point function

  **code name:** [`TraceExtension.center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L48), [`euclidean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L53)

  **proposed notation:** $\Theta$, $G_\Theta$

- **object:** trace amplitude

  **code name:** [`Trace.Verse.award`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L41)

  **proposed notation:** $A_{\mathfrak g}=3\dim\mathfrak g/\pi^4$

- **object:** one-loop constants

  **code name:** [`Pert.Asymptotics.b0`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L13), `Trace.Over.d2`

  **proposed notation:** $b_0=11C_{\mathfrak g}/(48\pi^2)$, $b_*=2b_0$, $d_2=-b_0/2$

- **object:** reference coupling

  **code name:** `Calendar.hatBeta`

  **proposed notation:** $\hat\beta_m=\bar\beta+2b_0\log(1/a_m)$

- **object:** penalty of the block-spin kernel

  **code name:** `KernelChoices.penalty`

  **proposed notation:** $b$


<a id="unit-limitations"></a>

## 7. What remains unexplained
1. **The run.** The selection theorem of III.2 and the meaning of the thirteen clauses of (Fd) were read only at the level of statements. The precise mathematical content of "attentive", "accord", "halo gate" and "sky" has to be taken from III.15.
2. **`Jewel`.** The ingredients `offers`, the cost lemmas and `clients` were read as statements only. The reading of item 5 of VIII.1.5 (stripped cost, exponent $v\to-\infty$) is tentative.
3. **VIII.1.c.** The Arzelà–Ascoli step (`reachable`, `pudding`) and the dense set used in `sees` are probable readings. The Cauchy estimate itself (`cinema`) is in III.12.
4. **Where the table comes from.** In `extractible17`, the seed and the table are read off the run's `Ahead` property. The link from there to the extraction theorem of IV.1 was not traced; discharge.md places it in `uv_log` and `Run.extractible17`.
5. **Inside `Pert.withFinal`.** Producing the phase selection and the selected reconstruction inside `withFinal` follows discharge.md. It was not re-read here.
6. **Dependency of the limits on $b$ and on the run.** This is not addressed in the Lean. The public statement fixes $b=1$ and one chosen run.
7. **Used-status of the endpoints in §4.6.** The unit page counts the proofs of `parityEndpoint`, `celestial` and `normalized_four` in the closure of the main theorem, but the dependency graph records no users for them. This should be checked against OpenAI's usage record.
8. **Universe levels.** `constructed`, `existence` and `Core` are universe-polymorphic. The trace clauses quantify over a colour type and an index type. `jointExistence` uses the lowest levels, and no public clause depends on them.

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [IV.1](IV-1.md), [I.1](I-1.md), [III.12](III-12.md), [VII.2](VII-2.md), [II.1](II-1.md), [VII.4](VII-4.md), [III.1](III-1.md), [V.2](V-2.md), [VI.1](VI-1.md), [III.16](III-16.md), [III.11](III-11.md), [III.10](III-10.md), [V.1](V-1.md), [VII.3](VII-3.md), [VI.2](VI-2.md), [III.2](III-2.md), [III.9](III-9.md), [VII.1](VII-1.md), [VII.6](VII-6.md), [II.2](II-2.md), [III.15](III-15.md), [III.6](III-6.md), [V.3](V-3.md).

**Referenced by:** [III.12](III-12.md), [III.13](III-13.md), [III.10](III-10.md), [VII.4](VII-4.md), [III.11](III-11.md), [III.2](III-2.md), [V.3](V-3.md), [VII.2](VII-2.md), [VI.1](VI-1.md), [VI.2](VI-2.md), [VII.1](VII-1.md), [V.1](V-1.md), [III.4](III-4.md), [III.15](III-15.md), [III.14](III-14.md), [III.6](III-6.md).

## Lean source

**Source allocation:** 12,060 attributed lines; 1,674 line-counted declarations; 2,245 assigned declaration names. Of the assigned names, 2,087 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- proof of [`all_characters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L75-L80) (in part, 23%) — 4,992 lines.
- proof of [`fromFunded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L150-L167) — 4,625 lines.
- shared machinery (corollaries of reconstructionArcs) — 2,141 lines.
- proof of [`jewel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L89-L91) and the results it chains to — 2,138 lines.
- proof of [`jointExistence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean#L4-L10) and the results it chains to — 404 lines.
- proof of [`parityEndpoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Parity/End.lean#L21-L30) — 200 lines.
- work package [`YM/Org/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org) — 192 lines.
- work package PublicTheory — Public gauge and Wightman definitions adapted from an earlier challenge, — 191 lines.
- proof of [`continuum_with_position_tests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L28-L48) — 143 lines.
- work package ChallengeSpec — The joint target. All correlation terms, including every spectator in the OPE, — 133 lines.
- work package [`YM/Pert/Parity/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Parity) — 109 lines.
- proof of [`su2Simple`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L12) — 88 lines.
- work package [`YM/OPE/Nesting/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting) — 80 lines.
- work package [`YM/FullVolume/Finale/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale) — 78 lines.
- work package PublicView — The public Hilbert space, domain, labels, fields and affine action are the — 74 lines.
- proof of [`celestial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L78-L79) — 64 lines.
- work package PublicWilson — Four-dimensional periodic Wilson lattice and its ordered continuum limit. — 61 lines.
- shared machinery (corollaries of finite_leading) — 51 lines.
- work package [`YM/FullVolume/Glide/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glide) — 46 lines.
- work package [`YM/Spec/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec) — 43 lines.
- proof of [`low_read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Parity/EvenLow.lean#L44-L49) — 32 lines.
- work package YM (in part, 18%) — 20 lines.
- work package WilsonBridge — 18 lines.
- proof of [`point`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L49-L63) — 15 lines.
- proof of [`continuum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L52-L66) — 15 lines.
- work package [`YM/Pert/Spatial/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Spatial) — 9 lines.
- proof of [`normalized_four`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L56-L63) — 8 lines.
- proof of [`su2Theory`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L15-L18) — 4 lines.
- work package ContactSpec — 3 lines.
- work package ConcreteSU2 — 3 lines.
- shared machinery (corollaries of constructionRun) — 2 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`investPlan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L169-L173)
- [`commencement`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L174-L179)
- [`selectRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L75-L84)
- [`Funded.logPackage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L99-L106)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-viii-1-1"></a>

- **K-VIII.1.1** [`Alloy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L47-L54) *(numbered result)* — A data structure bundling ordered input lists and support-ordering conditions for a construction.

<a id="k-viii-1-2"></a>

- **K-VIII.1.2** [`Final`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73) *(main result)* — The final specification asserting calibration, field algebra, phase selection and relativistic reconstruction for one family and extraction of the Wilson continuum limit.

<a id="k-viii-1-3"></a>

- **K-VIII.1.3** [`Seed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26) *(numbered result)* — The data package for the Wilson continuum limit: cutoff, ordered and generic point limits, hierarchy and corrected field estimates.

<a id="k-viii-1-4"></a>

- **K-VIII.1.4** [`Locals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L34-L43) *(numbered result)* — A bundle of hypotheses: field derivatives, rotations, stress tensor and charge laws on physical quotients for the Wilson continuum limit.

<a id="k-viii-1-5"></a>

- **K-VIII.1.5** [`MaxwellData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170) *(numbered result)* — A data structure collecting the assumed Maxwell weak/stress calibrated input needed for classification and identification.

<a id="k-viii-1-6"></a>

- **K-VIII.1.6** [`er_path`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/RotCurve.lean#L168-L183) *(numbered result)* — For a differentiable curve of rotations, there is a skew generator giving simultaneous right-factor velocities for the curve and its descended image.

<a id="k-viii-1-7"></a>

- **K-VIII.1.7** [`positioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L42-L47) *(key result)* — Fixed bounds and a purchased extraction sequence imply the ultraviolet positional convergence statement for the periodic lift.

<a id="k-viii-1-8"></a>

- **K-VIII.1.8** [`spins_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Unique.lean#L152-L176) *(key result)* — Two Lorentz witnesses descending from the same Euclidean rotation data coincide.

<a id="k-viii-1-9"></a>

- **K-VIII.1.9** [`field_jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Derivative.lean#L107-L160) *(key result)* — On the full Wick tube, the emitted function with a derivative in one slot equals the complex derivative of the undifferentiated one along the Wick direction.

<a id="k-viii-1-10"></a>

- **K-VIII.1.10** [`traceS`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Lease.lean#L88-L96) *(major result)* — existence with total field of power series.

<a id="k-viii-1-11"></a>

- **K-VIII.1.11** [`celestial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L78-L79) *(main result)* — For a simple gauge group there exist a calibrated family and devices such that Euclidean distributions exist at multiple collisions with transport basis and thresholds.

<a id="k-viii-1-12"></a>

- **K-VIII.1.12** [`point`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L49-L63) *(key result)* — Point correlations near a center have an OPE-type expansion with remainder of order r^(D+1-weight-ε), uniformly over viewers.

<a id="k-viii-1-13"></a>

- **K-VIII.1.13** [`low_read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Parity/EvenLow.lean#L44-L49) *(key result)* — For simple gauge groups and order at most 5, finite-volume ledger entries of odd order vanish exactly.

<a id="k-viii-1-14"></a>

- **K-VIII.1.14** [`normalized_four`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L56-L63) *(main result)* — For simple gauge group, determining tests at horizon four exist with leading readings comparable on the same scaling sequence, giving unconditional determinant and normalization.

<a id="k-viii-1-15"></a>

- **K-VIII.1.15** [`parityEndpoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Parity/End.lean#L21-L30) *(main result)* — For simple gauge group and positive penalty, there is a family whose extractions yield determining tests at horizon four with clean profiles, attained boards, and parity fields.

<a id="k-viii-1-16"></a>

- **K-VIII.1.16** [`jewelOf17`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L102-L111) *(main result)* — For a simple gauge group and a constructed Wilson run with campaign and pillars, the full-volume UV endpoint with every-phase joint statement holds.

<a id="k-viii-1-17"></a>

- **K-VIII.1.17** [`headlands`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Dusk/Wince.lean#L63-L99) *(numbered result)* — Here near-uniformity in the parameter, **all-volume only after fixing p**, and all near histories INCLUDING normalization.

<a id="k-viii-1-18"></a>

- **K-VIII.1.18** [`clients`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L101-L113) *(key result)* — Under the stated hypotheses there exists a fan of data satisfying the travel property at each level p.

<a id="k-viii-1-19"></a>

- **K-VIII.1.19** [`single`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Single.lean#L57-L58) *(main result)* — For a simple gauge group, there exist a family, extraction refinement, table and Final with a prescription so that all single-scale subpower OPE estimates hold jointly.

<a id="k-viii-1-20"></a>

- **K-VIII.1.20** [`standing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Atlas.lean#L94-L104) *(key result)* — On every compact set avoiding the hit set, the spending condition holds.

<a id="k-viii-1-21"></a>

- **K-VIII.1.21** [`charted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Tan.lean#L104-L109) *(key result)* — There exist a positive weight and beam data satisfying the bow conditions.

<a id="k-viii-1-22"></a>

- **K-VIII.1.22** [`astronomer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Stream.lean#L54-L77) *(key result)* — There exist constants, a positive weight, and sequences of beams satisfying the spine conditions on the configuration space.

<a id="k-viii-1-23"></a>

- **K-VIII.1.23** [`establishing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L167-L184) *(key result)* — Given Euclidean data satisfying reconstruction hypotheses, there exists a Wightman field with the prescribed spin and Lorentz data that carries a field core over the Euclidean input.

<a id="k-viii-1-24"></a>

- **K-VIII.1.24** [`attach`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Core.lean#L178-L189) *(key result)* — Every field core over given heat-vector data admits a unique bounded operator attaching it to the target Hilbert space, compatible with the field structure.

<a id="k-viii-1-25"></a>

- **K-VIII.1.25** [`coef_smooth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/System.lean#L39-L43) *(numbered result)* — Coefficient functions of the channels are smooth in positions and origin on the separated margin region.

<a id="k-viii-1-26"></a>

- **K-VIII.1.26** [`signed_placements`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Layers/Conclusion.lean#L20-L27) *(main result)* — For a simple gauge group there exist a family, extraction order, table, final object and devices satisfying all-arity signed subpower estimates and projection estimates.

<a id="k-viii-1-27"></a>

- **K-VIII.1.27** [`living`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Dusk/Real.lean#L51-L63) — ∀ᶠ c in 𝓝[>] (0:ℝ), ∃ t B:ℝ, 0 < t ∧ 0 ≤ B ∧ ∀ᶠ N in atTop,∀ U:Face T W, |evalV T W U p N- β|≤ c → let s

<a id="k-viii-1-28"></a>

- **K-VIII.1.28** [`noel_columns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Rough/Supply.lean#L29-L59) *(key result)* — For every positive penalty there is a family of Wilson constructions that is calibrated and carries OPE packages, weak-completeness, and extraction data at every order.

<a id="k-viii-1-29"></a>

- **K-VIII.1.29** [`fromBaseline`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Construction.lean#L33-L59) *(key result)* — For simple gauge group and positive penalty there is a family with Maxwell data and Final constructions carrying actual nonperturbative witnesses and UV receipts.

<a id="k-viii-1-30"></a>

- **K-VIII.1.30** [`deeper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Deeper.lean#L25-L73) *(key result)* — For positive penalty there is a family supporting the full ledger of calibrated, Ward and extraction data from the same construction.

<a id="k-viii-1-31"></a>

- **K-VIII.1.31** [`pinnacle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Dusk/Court.lean#L43-L53) *(key result)* — The parameter-dependent potential has fixed (uniform) bounds.

<a id="k-viii-1-32"></a>

- **K-VIII.1.32** [`firstTarget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L57-L81) *(main result)* — For simple gauge group there is a family and refinement with Final construction admitting a first extension: mean hierarchy correlations at the first perturbative order.

<a id="k-viii-1-33"></a>

- **K-VIII.1.33** [`realUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L45) *(key result)* — For the constructed run, the full extraction sequence yields ultraviolet positional convergence of correlations.

<a id="k-viii-1-34"></a>

- **K-VIII.1.34** [`compose`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Largo.lean#L22-L56) *(key result)* — Given step-by-step transfer estimates from level r up to N, one can assemble a full sung history (chain of single-step objects) from the top configuration down to level r.

<a id="k-viii-1-35"></a>

- **K-VIII.1.35** [`compatible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L200-L215) *(key result)* — The reconstructed fields are compatible with the Euclidean data, derivative structure and rotation/spin laws, i.e. the Wightman output realizes the input.

<a id="k-viii-1-36"></a>

- **K-VIII.1.36** [`repriseQ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Renaissance.lean#L37-L241) *(key result)* — One-step inductive passage from level m+1 to m for a linear column family, preserving format, remainder and cost bounds.

<a id="k-viii-1-37"></a>

- **K-VIII.1.37** [`ridgeT`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Dusk/Cargo.lean#L40-L70) *(main result)* — The assembled limit data satisfy the full list of conclusions: the Mauve family property, Fridge condition, existence of section and weave data with portfolio and hearthside properties, and the main extraction statement.

<a id="k-viii-1-38"></a>

- **K-VIII.1.38** [`traceSpectrum_exists`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L99-L119) *(key result)* — There exists a unique measure realizing the trace spectrum of the constructed object.

<a id="k-viii-1-39"></a>

- **K-VIII.1.39** [`simple`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Examples/SU2.lean#L79-L106) *(numbered result)* — The defining representation of SU(2) has a nonabelian simple real Lie algebra.

<a id="k-viii-1-40"></a>

- **K-VIII.1.40** [`su2Simple`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L12) *(major result)* — The Lie algebra su(2) is simple.

<a id="k-viii-1-41"></a>

- **K-VIII.1.41** [`continuum_with_position_tests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L28-L48) *(main result)* — The continuum theorem including position-space test functions: a Wilson family with extraction, reconstruction, OPE and contact resolution at each order.

<a id="k-viii-1-42"></a>

- **K-VIII.1.42** [`constructed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L40) *(main result)* — For any simple gauge group and any positive penalty, there is a Wilson family with regularity such that, for every extraction order, a continuum table exists with reconstruction, OPE, trace exclusions, contact and perturbative properties.

<a id="k-viii-1-43"></a>

- **K-VIII.1.43** [`existence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Headlines.lean#L19-L36) *(main result)* — For a simple gauge group and b>0, one Wilson family has at each extraction order a continuum table satisfying the entire public specification.

<a id="k-viii-1-44"></a>

- **K-VIII.1.44** [`continuum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L52-L66) *(main result)* — For a simple gauge group and b>0, one Wilson family is chosen once and each requested extraction order can be refined to a continuum table satisfying the specification.

<a id="k-viii-1-45"></a>

- **K-VIII.1.45** [`jointExistence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean#L4-L10) *(main result)* — For simple gauge groups, a Wilson family exists whose continuum limits satisfy existence, reconstruction, OPE and trace-exclusion requirements simultaneously.

<a id="k-viii-1-46"></a>

- **K-VIII.1.46** [`su2Theory`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L15-L18) *(main result)* — For SU(2) there is a regular Wilson family such that every strictly increasing sequence has a further subsequence along which a hierarchy with the required properties exists.

<a id="k-viii-1-47"></a>

- **K-VIII.1.47** [`fromFunded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L150-L167) *(key result)* — Funded hypotheses on a campaign imply the broad goal statement for a simple gauge group.

<a id="k-viii-1-48"></a>

- **K-VIII.1.48** [`polynomial_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105) *(key result)* — The vacuum correlations of the limit theory cannot be described by any finite polynomial-field (Wick-type) collection on compactly supported momentum tests.

<a id="k-viii-1-49"></a>

- **K-VIII.1.49** [`estimates_weighted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Profile.lean#L98-L108) *(key result)* — For small enough separation scale, weighted tested-OPE integrals over measures supported on separated apertures satisfy joint estimates with remainder proportional to the L¹ mass bound.

<a id="k-viii-1-50"></a>

- **K-VIII.1.50** [`uniform`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Endpoint.lean#L31-L36) *(key result)* — Finite nested operator products satisfy the uniform estimate property on separated fixed trees.

<a id="k-viii-1-51"></a>

- **K-VIII.1.51** [`outside`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L77-L88) *(key result)* — For a simple group and a gallery, the Euclidean asymptotic with constant award holds.

<a id="k-viii-1-52"></a>

- **K-VIII.1.52** [`tagline`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L50-L69) *(key result)* — At generic points, rescaled Euclidean correlators converge to the constant divided by the eighth power of the width.

<a id="k-viii-1-53"></a>

- **K-VIII.1.53** [`assembled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L138-L152) *(main result)* — The arena property implies the final centered stress trace result for the construction.

<a id="k-viii-1-54"></a>

- **K-VIII.1.54** [`attains_mantle17`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Canvas.lean#L54-L58) *(key result)* — Dense coverage at the cutoff scale guarantees existence of a compatible mantle (allocation) for the filter.

<a id="k-viii-1-55"></a>

- **K-VIII.1.55** [`opePackage17`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Witness.lean#L98-L106) *(key result)* — Given pillars, a simple group, delay and gate conditions, the run's family carries a full OPE package.

<a id="k-viii-1-56"></a>

- **K-VIII.1.56** [`of_receipts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L38-L44) *(key result)* — The Wilson table, phase selection and field quotients, together with trace-target, services and foundation inputs, assemble into the core structure for the construction.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

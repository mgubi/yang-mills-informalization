# VIII.1. Assembly of the main theorem

*Part VIII — Assembly of the main theorem.*

Assembles the construction and translates its conclusions into the public theorem.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/VIII-1.md) · [← Previous: VII.6](VII-6.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** VIII, Assembly of the main theorem. **Lean:** [`Solution.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean), [`Construction.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean), [`ConcreteSU2.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean), [`YM/Nonperturbative`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative), and the public translations. **Size:** 12,060 lines in 1,674 declarations.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

A gauge group $(m,G,\mathfrak g)$ has $m\ge1$, $G\subset U(m)$ closed, and $\mathfrak g=\{X:\exp(tX)\in G\text{ for all }t\in\mathbb R\}$. Simplicity includes nonabelianness; Lie-algebra dimensions are real. Clause labels refer to [statement.md](../../statement.md).

**Proposition VIII.1.1 (public theorem).** For every gauge group with simple $\mathfrak g$, there exists a Wilson family $\mathcal W$ satisfying (Reg1)–(Reg4). For every strictly increasing $p:\mathbb N\to\mathbb N$, there exist a strictly increasing $q$ and a hierarchy satisfying (P1)–(P4) along $p\circ q$:

- For every $n$, token list $v\in\mathcal T^n$ and $f\in C_c^\infty(\mathrm{Conf}_n)$, admissibility holds eventually along $p\circ q$. At every admissible volume $p'$, $C_{N,p'}(v;f)\to R_{p'}$ along all $N$, and $R_{p(q(k))}\to\int fS^{\rm mix}(\pi(v);\cdot)$.
- The selected theory satisfies (W0)–(W3), has faithful fields, and satisfies (R1)–(R15). The mixed correlations are averages of continuous phase correlations against a full-support probability measure $\nu$; the selected continuation is holomorphic in complex times at fixed real spatial positions, with selected Wightman boundary values on product Schwartz tests.
- (O1)–(O2) use common coefficients uniformly over all phases and the mixed state.
- $\Theta$ is centered and $r^8(\log1/r)^2G_\Theta(r)\to A_{\mathfrak g}=3\dim_{\mathbb R}\mathfrak g/\pi^4>0$ as $r\downarrow0$. Every finite Wick profile differs from $G_\Theta$ somewhere in every $(0,\delta)$, $\delta>0$.

*Status:* theorem. *Lean:* [`YangMills.jointExistence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean#L4-L10).

**Proposition VIII.1.2 (detailed construction).** For every such group and $b>0$, there exists an internal family $\mathcal C$, depending only on $(G,b)$, satisfying (D3), penalty $b$ (D16), and Wilson regularity. For every extraction order $\sigma$, there exist $\tau,S$, a final object $\mathfrak F$ on $(\mathcal C,\sigma\circ\tau,S)$, every-phase reconstruction $\mathfrak L$, reader $Q$, contact devices $\mathsf M$ and scaling data $\Sigma=(r_k,\xi_k,U_k)$ with $r_k\downarrow0$, $\xi_k>0$, satisfying (D1)–(D15) and (Core). These include (P1)–(P4) along $(\sigma\circ\tau)^{\rm v}$, distribution extensions, full-mesh ordered and positional limits, exact trajectory witnesses, every-phase Wightman axioms and barycentre identity, separated and nested OPE, trace and spectral laws, contact resolution with real bases and thresholds, Maxwell comparison and degree-four normalization. (Core) also includes integrated OPE remainder bounds for integrable complex densities against positive measures with bounded $L^1$ mass.

*Status:* theorem. *Lean:* [`YangMills.constructed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L40).

**Proposition VIII.1.3 (chosen run).** For every such group and $b>0$, the chosen funded run $\mathsf R_{G,b}$ has penalty $b$. For every $\sigma$, its family admits $\tau,S,\mathfrak F,\mathfrak L,Q,\mathsf M,\Sigma$ on $\sigma\circ\tau$ satisfying VIII.1.2's full-mesh ordered limit, positional convergence, (Core), contact conclusions, uniform nested OPE over admissible finite trees, and (D14)–(D15).

*Status:* theorem. *Lean:* [`continuum_with_position_tests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L28-L48).

**Proposition VIII.1.4 (funded runs).** Let $\mathfrak g$ be simple, $\mathsf R$ a run with campaign $T$ and pillars $W$, and $\Delta$ local step estimates. If [`Funded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L60-L73) (Fd) holds, then (Goal) holds: funding, (UV$_\infty$), logarithmic OPE, dense sharp-Gram coverage, and the trace result for every final object on every $(\mathcal C_{\mathsf R},\sigma,S)$. For every $\sigma$, one refinement carries ordered coupling limits $B_m$ at every level, $S,\mathfrak F,\Sigma,\mathfrak L,Q$, full-mesh ordered and positional convergence, (D14), every-phase reconstruction, trace results, OPE facilities, foundation and uniform nested OPE. All-shapes OPE holds for every coherent prescription; every ultrafilter finer than the refined extraction filter has a compatible sharp-Gram allocation.

*Status:* theorem. *Lean:* [`R2IGoals.fromFunded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L150-L167).

**Proposition VIII.1.5 (ultraviolet endpoint).** For simple $\mathfrak g$ and a run with campaign $T$ and pillars $W$, assume (Fd)'s stationary-point/amplification condition, delay condition and weight-and-tableau data $(\vartheta,v)$. Then (UV$_\infty$) holds: (D3), weights, refinement to final objects with full-mesh ordered limits, trajectories competing in and issued by the fixed tuning recursion, successful tuning to level-zero target $\bar\beta+ws$ for every $(p,N,s)$ with $s\in[-1,1]$ and fixed $w>0$, uniqueness of bare couplings within that recursion, analytic interpolation and coupling/activity convergence as $N\to\infty$ at every fixed $(m,p)$ whenever level-zero targets converge. Complex-parameter convergence, with all parameter derivatives, is uniform on compact subsets of the unit disc in the fixed weighted activity norm. For every fixed $(m,p)$ there is $c_{m,p}>0$ with $e^{-\mathrm{scalar}_{N,p,m}}Z_{N,p}\ge c_{m,p}$ for $N\ge m$; scalar density tends to $-\infty$. Volume-uniform bounds and (D5) hold. For every fixed $p$, a successful parameter family with targets $\bar\beta+\lambda ws$, some $\lambda>0$, has the chosen family as central member and the same step relations and insertion normalization. For every token list, compact $K\subset\mathrm{NoHit}_p$ and finite derivative order $h$, there are a neighbourhood $\Omega$ of $K$ and a smaller positive parameter width independent of $N$, giving a limiting correlation holomorphic in the parameter and $C^h$ in position, with convergence of coordinate differences of order at most $h$, their interpolants and admissible smearings, uniformly on compact parameter/position sets with all parameter derivatives.

*Status:* theorem. *Lean:* [`FullVolume.Final.jewelOf17`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L102-L111).

**Proposition VIII.1.6 (full spacing sequence).** Under VIII.1.5's hypotheses, for every $p,n$ and $v\in\mathcal T^n$ there is smooth $f_{p,v}$ on $\mathrm{NoHit}_p$ with $C_{N,p}(v;t)\to\int tf_{p,v}$ for every $p$-admissible $t$. Every fixed finite list of normalized forward, backward or centered coordinate differences with fixed integer widths converges, after interpolation, locally uniformly to the corresponding derivative; this also holds along approaching lattice configurations and arbitrary cutoff indices tending to infinity. Smeared differences converge to the integrable derivative pairing. Thresholds may depend on volume, tokens, compacts, tests and stencils. If a final object exists on $(\mathcal C,\sigma,S)$ and these positional limits hold, then $\mathrm{Ord}_{(\mathrm{id},\sigma^{\rm v})}(\mathcal C,S)$ holds.

*Status:* theorems. *Lean:* [`Campaign.realUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L45), [`FullVolume.Final.from_spec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L117-L126).

**Proposition VIII.1.7 (public translation).** For a final object on $(\mathcal C,\sigma,S)$ and reader $Q$, public and internal energies, measures and moments agree; $\mathrm{Ord}_{(\mathrm{id},s)}(\mathcal C,S)$ implies (P1) along $s$. Under (D3) and simplicity, regularity holds with $b_*=2b_0$. Every-phase reconstruction implies (R1)–(R15); separated OPE implies (O1)–(O2); under simplicity, the seven headline trace clauses imply (T1)–(T4). Full contact resolution implies (D2).

*Status:* theorems. *Lean:* [`fromWilson`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L62-L67), [`regular`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L16-L25), [`publicReconstruction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L79-L133), [`publicOPE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L68-L77), [`publicTrace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean#L35-L44), [`contactDistribution`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactBridge.lean#L14-L49).

**Proposition VIII.1.8 (momentum Wick exclusion).** For any final object with $s^8(\log1/s)^2G_\Theta(s)\to A>0$ as $s\downarrow0$, and every finite complex linear combination of products of mass-shell modes defining Wick profiles, there exist Schwartz $f,g$ on $\mathbb R^4$ with $v_{f,g}=\overline{\mathcal F_+f}\mathcal F_+g$ compactly supported such that $\mathcal W^{\xi_*}_2(\Theta^*,\Theta)(\bar f\otimes g)\ne\sum_\alpha c_\alpha\mathrm{read}_\alpha(v_{f,g})$.

*Status:* theorem. *Lean:* [`TraceExtension.Wick.polynomial_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105).

**Proposition VIII.1.9.** $\mathfrak{su}(2)$ is simple; VIII.1.1 holds for $(2,SU(2),\mathfrak{su}(2))$.

*Status:* theorem. *Lean:* [`su2Simple`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L12), [`su2Theory`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L15-L18).

**Proposition VIII.1.10.** Final-object structures, construction input bundles and volume-uniform bounds are filed here and used in III.10–III.15, V.1–V.3, VI.1–VI.2 and VII.1–VII.4.

*Status:* definitions and upstream theorems. *Lean:* [`Spec.Final`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73), [`Org.Alloy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L47-L54), [`FixedBounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L50-L52).

<a id="unit-inputs"></a>

## 2. What it uses

- I.1, II.1–II.2: gauge groups, families and running law; III.2, III.12–III.15: funded runs and ultraviolet estimates ([`Independent.constructionRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28)); IV.1: continuum seeds.
- V.1–V.3: phases and reconstruction; VI.1–VI.2: field algebra and stress tensor; VII.1–VII.5: Maxwell comparison, trace, OPE, contacts and asymptotic freedom ([`EveryPhase.all_characters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L75-L80), [`Solstice.provided`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L65-L69)).
- Countable-product compactness, diagonal extraction, equicontinuity, discrete Taylor estimates, dominated convergence, Fourier surjectivity and Källén–Lehmann representation. Final existence has no additional analytic hypotheses.

<a id="unit-strategy"></a>

## 3. Strategy

Fix the run before extraction. Refine first for coupling limits, then for the continuum table and final object; attach all later structures on that refinement. Fixed-volume convergence and uniqueness of limits remove the mesh subsequence. Public translation then gives the stated hierarchy.

<a id="unit-steps"></a>

## 4. Steps

1. Choose the funded run for $(G,b)$ using the run-selection theorem with the fixed dynamics, local estimates and component prescription. [`constructionRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28).
2. Recover smooth full-mesh limits from dense-grid Cauchy convergence, equicontinuity and discrete Taylor estimates; smear by dominated convergence. [`realUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L45).
3. Extract coupling limits by countable-product compactness, then a final object on a further refinement. [`Running.extraction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PertExtension/Running.lean#L40-L56), [`Pert.withFinal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Construction.lean#L21-L31).
4. Attach reconstruction, trace, OPE and contacts; subsequence stability retains earlier limits. [`fromFunded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L150-L167), [`contacts_on`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L14-L24).
5. For Wick exclusion, realize compactly supported relative-momentum tests as Fourier products. Dominated convergence gives equality of Laplace transforms under a hypothetical Wick identity, contradicting the trace asymptotic. [`polynomial_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105)
6. Translate the detailed theorem and set $b=1$, $\sigma=(\mathrm{id},p)$, $q=\tau^{\rm v}$. [`constructed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L40), [`jointExistence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean#L4-L10).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

Every conclusion must concern the same previously chosen family. The Wilson limit is mixed-state; the trace test is selected-phase. The polynomial low-energy and heat bounds do not establish a mass gap. Volume-subsequence independence and agreement between penalties are not asserted.

<a id="unit-notation"></a>

## 6. Notation

$\sigma=(\sigma^{\rm m},\sigma^{\rm v})$: increasing mesh/volume maps; refinement is componentwise composition. $\mathrm{Ord}$: mesh-then-volume smeared limit. $\mathcal C$: internal family; $\mathfrak F$: trajectory witnesses, continuum seed, field algebra, phase selection and realizing continuations; $Q$: OPE reader; $S$: correlation table; $\Theta$: centered stress trace. $\mathrm{NoHit}_p$: configurations distinct modulo $L_p\mathbb Z^4$. $\mathcal F_+$: unnormalized positive-sign Fourier transform. $b_0=11C_{\mathfrak g}/(48\pi^2)$.

<a id="unit-limitations"></a>

## 7. What remains unexplained

Exact funding inequalities and renormalization comparison estimates remain in III.12–III.15; every-phase analytic arguments in V.3; normalized trace-scheme conditions in VII.3.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/VIII-1.md).

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

- [`ChallengeSpec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean)
- [`Reconstructed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L117-L143)
- [`WilsonRegularity`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L12-L22)
- [`TraceTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L168-L175)
- [`Properties`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L177-L181)
- [`JointExistence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L186-L188)
- [`Hierarchy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L24-L48)
- [`OperatorProductExpansion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L70-L80)
- [`su2`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L8-L10)
- [`ContactBridge.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactBridge.lean)
- [`ContactSpec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactSpec.lean)
- [`HierarchyBridge.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean)
- [`hierarchy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L27-L42)
- [`wilsonLimit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L44-L56)
- [`PublicTheory`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean)
- [`GaugeGroup`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L25-L33)
- [`IsSimple`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L39-L45)
- [`PublicView`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicView.lean)
- [`view_axioms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicView.lean#L102-L142)
- [`publicMoment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicView.lean#L144-L172)
- [`PublicWilson`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean)
- [`Converges`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L85-L90)
- [`TraceBridge.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean)
- [`WilsonBridge.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean)
- [`wilsonFamily`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L20-L30)
- [`energy_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L32-L41)
- [`law_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L43-L46)
- [`moment_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L49-L55)
- [`smear_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L57-L60)
- [`Bid.station`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L159-L168)
- [`Climb.Scaling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31)
- [`YM.Contacts.Solstice.Thresholds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Gates.lean#L23-L28)
- [`installs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Gates.lean#L30-L36)
- [`MultipleLight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L52-L63)
- [`Contacts.Devices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Tomography.lean#L17-L26)
- [`real_basis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Transport/Register.lean#L52-L61)
- [`Completed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L51-L71)
- [`Almanac`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L117-L132)
- [`Ordered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L32-L35)
- [`Extraction.Order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L34-L36)
- [`Order.refine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L40)
- [`Order.retained`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L66-L68)
- [`Run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48)
- [`Run.again`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L73-L75)
- [`YM.FullVolume.Eves.dense`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Eves.lean#L13-L14)
- [`YM.FullVolume.Eves.lateAnch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Eves.lean#L15-L24)
- [`Campaign.sees`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L30-L38)
- [`purchased`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L40-L44)
- [`Jewel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L133-L149)
- [`july`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L154-L164)
- [`wins`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L60-L68)
- [`bareTrial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L70-L77)
- [`ahead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Forge.lean#L60-L72)
- [`YM.PhysicalNext.Repeat.Legato.Campaign.Winter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glide/Vac.lean#L31-L63)
- [`YM.PhysicalNext.Repeat.Legato.Campaign.offers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glide/Vac.lean#L65-L89)
- [`genuine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L62)
- [`PositionsUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L25-L36)
- [`YM.FullVolume.field_independent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Scalar.lean#L130-L143)
- [`YM.FullVolume.stripped`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Scalar.lean#L87-L88)
- [`YM.FullVolume.saved`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Scalar.lean#L97-L128)
- [`YM.FullVolume.pudding`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Smears.lean#L49-L82)
- [`YM.FullVolume.from_previous`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L71-L125)
- [`YM.FullVolume.honors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Wish.lean#L22-L49)
- [`YM.FullVolume.augments`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Wish.lean#L61-L81)
- [`casimir_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L160-L172)
- [`fundedRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L30-L31)
- [`Core`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L18-L34)
- [`ManuscriptTraceTests.of_result`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ManuscriptTraceTests.lean#L77-L89)
- [`NativePreselectedPostnumericPeriodRun.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean)
- [`detector_exists`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultipleContact/Detector.lean#L28-L35)
- [`after_materializes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L247-L255)
- [`maxwell_supplies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L45-L48)
- [`NestedOPE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L128-L138)
- [`Headline.WilsonExistence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L143-L155)
- [`SeparatedOPE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L24-L48)
- [`WightmanAxioms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L52-L71)
- [`Reconstruction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L75-L81)
- [`TraceExclusions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L84-L120)
- [`Orbits.Reader`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L17-L23)
- [`Orbits.produce`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L67-L68)
- [`Prescription.chosen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Legacy.lean#L20-L31)
- [`IR`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L172-L175)
- [`UV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L177-L186)
- [`Assembly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L64-L66)
- [`Org.Tab`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L19-L24)
- [`Pert.Asymptotics.b0`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L13)
- [`zeroUp_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L15-L30)
- [`FirstExtension`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L26-L39)
- [`credible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L50-L52)
- [`square_four`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L13-L15)
- [`FourMeters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L45-L47)
- [`Pert.Position.four_on`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L49-L53)
- [`Running.discrete`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PertExtension/Running.lean#L64-L84)
- [`YM/R2I/Campaign/Accepted.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean)
- [`Funded.logPackage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L100-L106)
- [`Broad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L130-L148)
- [`investPlan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L169-L173)
- [`commencement`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L174-L179)
- [`selectRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L75-L84)
- [`Funded.gallery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L93-L95)
- [`Funded.logPackage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L99-L106)
- [`penaltyWeight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean)
- [`YM/RG17/Joint.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean)
- [`Run.extractible17`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L60-L90)
- [`Materializes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L45-L47)
- [`Relativistic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L50-L54)
- [`Calibrated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L58-L61)
- [`arenaT`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Agora.lean#L69-L74)
- [`crest_ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Belfry.lean#L31-L37)
- [`Trace.Over.Gallery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L41-L44)
- [`Trace.Target.Result`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L99-L120)
- [`YM.TraceExtension.productTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Momentum.lean#L22)
- [`YM.TraceExtension.waveTest_product`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Momentum.lean#L26-L35)
- [`Trace.Verse.award`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L41)
- [`no_powerlog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Log.lean#L96-L108)
- [`real_profile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L18-L22)
- [`identifies_euclid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L62-L73)
- [`euclidean_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L75-L80)
- [`TraceExtension.center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L48)
- [`euclidean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L53)
- [`FreeStress.fire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L137-L150)
- [`YM/Independent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent)

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

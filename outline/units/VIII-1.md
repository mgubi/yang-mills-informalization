# VIII.1. Assembly of the main theorem

*Part VIII — Assembly of the main theorem.*

Assembles the construction and translates its conclusions into the public theorem.

**Status: draft.** Written from the Lean; the outline has not yet been checked against it. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [← Previous: VII.6](VII-6.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** VIII, assembly. **Lean:** the top-level files [`Solution.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean), [`Construction.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean), [`ConcreteSU2.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean), the bridges [`WilsonBridge.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean), [`HierarchyBridge.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean), [`TraceBridge.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean), [`ContactBridge.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactBridge.lean), the public definitions ([`PublicTheory`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean), [`PublicWilson`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean), [`PublicView`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicView.lean), [`ChallengeSpec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean), [`ContactSpec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactSpec.lean)), [`YM/Nonperturbative`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative), [`YM/Independent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent), [`YM/R2I/Campaign/Accepted.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean), [`YM/RG17/Joint.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean), [`YM/Org`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org), [`YM/Spec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec), [`YM/Pert/Parity`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Parity) and, for the chain of large results, parts of `YM/EveryPhase`, `YM/OPE`, `YM/Contacts`, `YM/TraceExtension`, `YM/FullVolume`. **Size:** about 12,000 lines in 1,674 declarations assigned to this unit. Of these, about 5,000 are the every-phase extension (`all_characters`, 23% of its proof), 4,600 the proof of `fromFunded`, 2,100 a body of corollaries of the reconstruction arcs, 2,100 the proof of `jewel` and what it chains to, 400 the proof of `jointExistence` and what it chains to, and about 200 each the parity endpoint, the organisation file `YM/Org`, and the public definitions.

This unit contains almost no new mathematics. It selects one construction run, applies the results of Parts III–VII to it, translates the resulting internal bundle into the public vocabulary, and unpacks the public theorem. Its value for the reader is the map of what depends on what and in which order the choices are made.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

Throughout, $g=(m,G,\mathfrak g)$ is a gauge group (a closed subgroup $G\subset U(m)$ with its Lie algebra); "simple" means that $\mathfrak g$ is nonabelian and has no proper nonzero ideal. An *extraction order* $f=(f_{\rm mesh},f_{\rm per})$ is a pair of strictly increasing maps $\mathbb N\to\mathbb N$ (a subsequence of spacings and one of volumes); $f\circ g$ is the refinement. The precise public statement is in [statement.md](../../statement.md); here only its logical structure matters.

**Proposition VIII.1.1 (main theorem, public form).** For every gauge group $g$ with simple Lie algebra there is a Wilson family $\mathcal W$ for $g$ that is regular, and for every strictly increasing $p:\mathbb N\to\mathbb N$ there is a strictly increasing $q$ and a hierarchy $T$ over $\mathcal W$ with the four properties along $p\circ q$:
(a) *Wilson limit*: for all $n$, labels $v$ and separated test functions $t$, the smeared lattice moments converge as $N\to\infty$ at each admissible volume, and the limits converge along $p\circ q$ to $\int t\,T_n(v;\cdot)$;
(b) *Reconstruction*: a Wightman-type theory (vacuum, positive energy, Poincaré covariance, locality, faithful fields) built from a selected phase, with the correlations an average over a probability space of phases of full support, and vacuum expectations equal to boundary values of the analytic continuation of the Euclidean correlations;
(c) *Operator product expansion*: coefficient bounds and remainder estimates, uniform over all states of the theory;
(d) *Trace test*: the centered trace $\Theta$ of the stress tensor satisfies $\langle\Omega,\Theta(f)\Omega\rangle=0$, $r^{8}\log^2(1/r)\,\langle\Theta(x)\Theta(y)\rangle\to 3\dim\mathfrak g/\pi^4$, and no finite combination of free (Wick) profiles equals the trace two-point function near $r=0$.
*Status:* theorem.
*Lean:* [`YangMills.jointExistence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean#L4-L10) (statement [`JointExistence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L186-L188), with [`Hierarchy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L24-L48), [`Properties`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L177-L181), [`Converges`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L85-L90), [`Reconstructed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L117-L143), [`OperatorProductExpansion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L70-L80), [`TraceTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L168-L175)).
No hypothesis beyond "simple" is assumed; the Lean proof uses only the standard axioms (assessment §9.1).

**Proposition VIII.1.2 (the detailed construction theorem).** For every simple $g$ and every $b>0$ there is a family $C$ (in the internal sense, with `Makes`: its construction conditions) whose block-spin kernel has penalty $b$, whose public image $\mathcal W(C)$ is regular, and such that for every extraction order $p$ there are a refinement $q$, a table $S$ (the continuum correlations), a `Final` object $F$ (field algebra, phase selection, Wightman reconstruction) on $(C,p\circ q,S)$, an every-phase almanac $L$ (reconstruction for every phase), an OPE reader $Q$, contact devices $M$ and a scaling sequence $X$, with:
(i) the ordered limit of the Wilson moments to $S$, and a stronger full-sequence positional convergence in the spacing (`PositionsUV`);
(ii) calibration of the family by stationary and reset witnesses;
(iii) the bundle `Core` (services, every-phase reconstruction, trace tests, OPE foundation, joint position estimates with bounded total variation);
(iv) separated and nested OPE estimates, trace exclusions (including exclusion of Wick profiles and of free Maxwell fields);
(v) extension of correlations to distributions across coincident points (contacts), with transport basis and thresholds;
(vi) a first-order perturbative comparison with free Maxwell fields (`FirstExtension`) and the leading position comparison at horizon four (`FourMeters`).
The public hierarchy attached to $F,Q$ satisfies the four properties of VIII.1.1 and has contact extensions.
*Status:* theorem.
*Lean:* [`YangMills.constructed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L40); the internal form is [`Nonperturbative.existence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Headlines.lean#L19-L36) with statement [`Headline.WilsonExistence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L143-L155).

**Proposition VIII.1.3 (the continuum theorem with position tests).** The same statement without the translation into the public vocabulary, for the specific run `fundedRun`, with $\mathrm{Core}$, uniform nested OPE estimates, contact devices, and (i)–(vi) as above.
*Status:* theorem. *Lean:* [`continuum_with_position_tests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L28-L48) and its weaker form [`continuum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L52-L66).

**Proposition VIII.1.4 (a Wilson run exists whose funded hypotheses hold).** For every simple $G$ and $b>0$ there are a run $R$ (the record of the whole RG construction: levels, schedule, couplings, tuning), a campaign $T$ and pillars $W$ with penalty $b$, such that $R$ is *funded*: the local budget of the stepwise renormalization, the polynomial and logarithmic accords, and the sky condition (the existence of the weight and tableau data of the campaign) hold.
*Status:* theorem (produced by Part III; assembled here). *Lean:* [`Independent.constructionRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28), [`fundedRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L30-L31), predicate [`Funded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L60-L73).

**Proposition VIII.1.5 (funded implies the broad goal).** If $R,T,W$ are as above and $G$ is simple, then $R$ satisfies the bundle `Broad`: the `Jewel` property (full-volume ultraviolet endpoint with every-phase joint statement), the log-OPE package, the dense-coverage property of the sharp Gram family, the trace result on every `Final` over the family, and for every extraction order $f$ a refinement $g$ with a table, a `Final`, a scaling sequence, an almanac, an OPE reader, coupling limits along the extraction, the ordered full-mesh limit, `FirstExtension`, completed every-phase reconstruction, the trace result, the OPE facilities, uniform nested OPE, the all-shapes OPE for every coherent prescription, and a mantle for every ultrafilter below the extraction filter.
*Status:* theorem. *Lean:* [`R2IGoals.fromFunded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L150-L167), statement [`Broad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L130-L148); with [`investPlan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L169-L173) and [`commencement`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L174-L179) (existence of $R,T,W$ with `Broad`, without conditions on the levels).

**Proposition VIII.1.6 (concrete case $G=SU(2)$).** $\mathfrak{su}(2)$ in its defining representation is simple, hence the main theorem holds for $SU(2)$.
*Status:* theorem. *Lean:* [`su2Simple`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L12) (from [`Examples.SU2.simple`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Examples/SU2.lean#L79-L106)), [`su2Theory`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L15-L18).

**Proposition VIII.1.7 (the public bridges).** The public notions are equal to, or implied by, the internal ones, for the hierarchy $\mathrm{hierarchy}(F,Q)$ built from $F,Q$:
(a) the public Wilson measure and moments equal the internal ones (`energy_eq`, `law_eq`, `moment_eq`, `smear_eq`); the ordered limit of the internal table gives `Converges`;
(b) $\mathcal W(C)$ is regular, with $b_*=2b_0$, $b_0=11C_{\mathfrak g}/(48\pi^2)$;
(c) completed every-phase reconstruction implies `Reconstructed`;
(d) the internal separated OPE implies the public OPE;
(e) the internal trace exclusions imply `TraceTest`, with the amplitude $3\dim\mathfrak g/\pi^4$ identified with the internal constant;
(f) the contact devices produce, for every viewer, a continuous linear functional on all test functions that agrees with $\int f\,S$ on tests supported in separated configurations.
*Status:* theorems. *Lean:* [`wilsonFamily`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L20-L30), [`fromWilson`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L62-L67) (a), [`regular`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L16-L25) (b), [`hierarchy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L27-L42), [`wilsonLimit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L44-L56) (a), [`publicReconstruction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L79-L133) (c), [`publicOPE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L68-L77) (d), [`publicTrace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean#L35-L44) (e), [`contactDistribution`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactBridge.lean#L14-L49) (f).

**Proposition VIII.1.8 (the polynomial/Wick exclusion).** Let the centered trace satisfy the Euclidean short-distance asymptotics $r^8\log^2(1/r)\,\langle\Theta\Theta\rangle(r)\to A>0$. Then for no finite polynomial-field (Wick) collection $W$ do the vacuum two-point functions of $\Theta$ coincide with the mass-shell Wick expressions for $W$ on all compactly supported momentum tests of product form. This is the "no free field" clause (assessment Thm 7.3), used in the trace exclusions.
*Status:* theorem. *Lean:* [`TraceExtension.Wick.polynomial_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105).

**Proposition VIII.1.9 (consequences used elsewhere).** Several results filed here are consumed upstream of Part VIII (the "used by" list includes III.10–III.13, V.1, VI.1/2, VII.1/2/4): the `Org` bundles (`Alloy`, `Assembly`, `MaxwellData`, `IR`, `UV`: [`Alloy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L47-L54), [`Assembly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L64-L66), [`MaxwellData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170), [`UV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L177-L186)), the structures `Spec.Seed`, `Spec.Locals`, `Spec.Final` ([`Seed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26), [`Locals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L34-L43), [`Final`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73)), and many volume-uniform estimates of the "full volume" folders (`positioned`, `realUV`, `pinnacle`, `ridgeT`, `traceS`, `charted`, `astronomer`), which mathematically belong to Part III and are described in III.12–III.15.
*Status:* definitions and theorems, described in the units that use them.

<a id="unit-inputs"></a>

## 2. What it uses

**From other units** (the units are used as black boxes; this list is the interface).

1. I.1 and II.1–II.2 (setting, labels, Wilson family and construction record): the objects $C$, `C.Makes`, `Family`, tokens, representatives $O_{N,p}(v,x)$, `Table`.
2. III.1–III.16 (ultraviolet construction): a *run* $R$ with its tuning, the funded hypotheses of VIII.1.4, `Jewel`, the stationary and reset witnesses behind `Calibrated`, the bounds of III.10–III.12 (uniform in the volume), the convergence in the spacing III.12, the common family III.13, flat representations and ultraviolet rate III.14, the cost accounting III.15. The construction is entirely inside `constructionRun`.
3. IV.1 (infinite volume): the subsequential limit table $S$, the Euclidean hierarchy, and the ordered limit (`Ordered`).
4. V.1–V.3 (phases and reconstruction): the selection of phase, `Almanac`, `Completed`; Osterwalder–Schrader reconstruction of a Wightman theory for every phase.
5. VI.1–VI.2 (symmetry): the rotation action, conserved stress tensor, local Ward charge, free Maxwell stress tensor (the data `MaxwellData` and `IR`).
6. VII.1–VII.6 (identification): short-distance convergence to free Maxwell, trace anomaly, non-freeness (`Trace.Target.Result`), the OPE and contact extensions, asymptotic freedom (the value $b_*=2b_0$ and the amplitude $3\dim\mathfrak g/\pi^4$), and the perturbative comparison (`FirstExtension`, `FourMeters`).

For each of these the unit uses the Lean statements as stated in the corresponding `Final`, `Core`, `Funded` and `Broad` bundles; it does not reopen any proof.

**Standard mathematics used.** Essentially none directly. The conclusions of the downstream units rest on Balaban's block-spin RG, cluster expansion (Brydges), chessboard estimates (Fröhlich–Israel–Lieb–Simon), Osterwalder–Schrader reconstruction, the Källén–Lehmann-type spectral representation for the trace two-point function (used in VIII.1.8), and the one-loop beta function (Gross–Wilczek, Politzer).

**Imported constants and assumptions.** There are none in the sense of unproved hypotheses: the formal argument has no axioms beyond the standard ones, and the hypotheses `Funded`, `Broad` and the `Org` bundles are produced in the used closure. Three points are inputs to this unit rather than theorems proved in it: (i) the penalty $b>0$ of the block-spin kernel, a free parameter of the construction that is not related to the limiting slope $b_*=2b_0$; (ii) the choice of run $R$ made once, before any extraction order or observable; (iii) the free-Maxwell data of Part VI/VII.1 (`MaxwellData`), whose docstring says "Not proven" but which is supplied by `Maxwell.Free.maxwell_supplies` and `UVNext.FreeStress.fire`.

<a id="unit-strategy"></a>

## 3. Strategy

The assembly is logically simple. One constructs, for the given $G$ and $b$, a single run $R$ (`constructionRun`): the full tower of block-spin steps with its couplings $\beta_{N,p}$, the budgets, and the tuning that makes them consistent. The run depends on $G$ and $b$ only. It is chosen *before* any extraction order, so that the Wilson family is independent of the volume sequence $p$, as the public statement requires.

Then, for each extraction order $p$, one applies the machinery of Parts IV–VII to $R$: the subsequence of IV.1 (refinement $q$, table $S$), the construction of a `Final` object on $(C,p\circ q,S)$ from the seed, the field algebra, the phase selection and Wightman reconstruction, the every-phase reconstruction, the OPE reader, the trace exclusions and the contact devices. These come from the single lemma `fromFunded`, which collects the endpoints of several earlier chains of lemmas (`jewel`, `logPackage`, `gallery`, `coverage`, `extractible17`, `all_characters`, `Trace.Target.assembled`, `Prescription.chosen`, `Orbits.produce`, `Nesting.uniform`, `attains_mantle17`). The refinements produced by the different ingredients are composed (`g.refine w`, with `Order.retained` showing that limits survive refinement), so that all conclusions refer to *one* table and *one* `Final`; this is the content of the remark in the docstring of `Headline` that "every conclusion inside a refinement refers to its one table, reconstruction, choice of fields and reader".

Finally the public theorem is read off. `jointExistence` takes `constructed` with $b=1$, forgets all but the four public properties, and uses the specific order $(\mathrm{full},p)$, that is, the full sequence of spacings and the given volume sequence. The difficulty is not in the logic but in the translation: the hierarchy is a structure of 25 fields over a Hilbert space and the bridge files establish each of them from internal `Final` data.

<a id="unit-steps"></a>

## 4. Steps

### 4.1 Choice of the run

**Lemma VIII.1.a (existence of a funded run).** For simple $G$ and $b>0$ there are $R,T,W$ with penalty $b$, $R$ funded, and with the "native component recipe" attached (the family is built from the chosen native components).
*Proof sketch.* The run is produced by a selection theorem from the RG chain (`selectRunWithTreasuryPeriod…`, with default dynamics and a custody record) applied to the trivial schedule predicate `EventuallyPaid (fun _ => True)`. All the content is in Part III. `selectRun` (a general version for schedule predicates $\Lambda$) combines `allFactor` (the factorization of the funded data) with `engage` (construction of $R$ and $T$ from it, using `Bandage.coming` and `rodB`).
*Lean:* [`constructionRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28); [`selectRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L75-L84). *(proof read for `selectRun` and the wrapper; not for `allFactor`, `engage`'s sources)*

**Lemma VIII.1.b (Jewel from funded).** If $R$ is funded and $G$ simple, then `Jewel` holds: the family satisfies `Makes`; the weight data exist; for every order $f$ there are a refinement, a table and a `Final` with ordered full-mesh limit; at each $(N,p)$ the bare coupling is uniquely determined by the successful-trial condition and depends analytically on the parameter in the unit disk; the costs are bounded below and the fixed-point exponents go to $-\infty$; and the fixed bounds hold.
*Proof sketch.* `jewelOf17` is assembled from `offers` (the offer data), `realUV` (the positional ultraviolet convergence), `wins`, `bareTrial` (trial couplings), `field_independent`, `genuine`, `clients`; the full-volume refinement is obtained from `R.again` and `from_spec`.
*Lean:* [`Funded.jewel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L89-L91), [`FullVolume.Final.jewelOf17`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L102-L111), the structure [`Jewel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L133-L149). *(statement and assembly read; the 2,100 lines of the chain behind it are in III.12–III.15 and were not read)*

**Lemma VIII.1.c (OPE package and log package).** From the pillars, the log-copy and halo gate, the run carries a full OPE package and a log-OPE package.
*Lean:* [`Funded.logPackage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L99-L106) with [`opePackage17`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Witness.lean#L98-L106). *(statement only for `opePackage17`)*

**Lemma VIII.1.d (a `Final` object on a refined extraction).** For a run with OPE package there are, for each order $f$, a refinement $g$, a table $S$, a `Final` $F$ on $(C,f\circ g,S)$, a scaling sequence $X$, OPE services, and the first perturbative extension.
*Proof sketch.* The `Final` is built from its five parts: the calibration (family construction, Part III); the seed (cutoff conditions `Makes`, ordered limit, generic point limits, the smooth hierarchy, cell hypotheses and corrected-field rank widths: Parts III–IV); the algebra (derivative plan, rotations, stress tensor: Part VI, via `Org.Tab` produced from the `Commission` which is built by `Bid.station` from the work items A01–A17); the phase selection, `Materializes` (Part V, via `Phase.Loom.cleanse` and `Bid.Looms`, work items B01–B18); and the relativistic reconstruction (Part V, `after_materializes`). The free-Maxwell data and the free stress tensor enter through `Maxwell.Free.maxwell_supplies` and `UVNext.FreeStress.fire`.
*Lean:* [`Run.extractible17`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L60-L90), [`Pert.withFinal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Construction.lean#L21-L31), structures [`Final`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73), [`Seed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26), [`Locals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L34-L43), [`Calibrated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L58-L61), [`FirstExtension`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L26-L39). *(proof of `extractible17` read; the pieces it calls were read at the level of statements)*

**Lemma VIII.1.e (reconstruction for every phase).** For a `Final` $F$ there is an almanac $L$ with `Completed`: for each phase $\xi$ a Wightman theory realizing the Euclidean data, onto the heat-vector chamber with unique heat vector; vacuum unique in the zero-energy space; a light-cone bound for sums of words; a heat bound $0\le r\le M s^{-2}$ for the Euclidean evolution; trivial commutant; the continued stress tensor; word continuity; and the barycentre property that averaging the phase correlations gives the unselected ones.
*Proof sketch.* Assembly of V.1–V.3; the proof of `all_characters` is a conjunction of eleven facts (`boundary_realizes`, `reaches`, `every`, `boundary_zero_energy`, `light_bound`, `inverse_square`, `irreducible`, `force`, `word_continuity`, `barycenter`) each established in the every-phase folder, which accounts for the 5,000 lines filed here.
*Lean:* [`EveryPhase.all_characters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L75-L80), [`Completed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L51-L71). *(statement read; proof read only at the top level)*

**Lemma VIII.1.f (trace result).** For every `Final` over the family, the trace result holds: Euclidean asymptotic of the centered trace with amplitude $A=3\dim\mathfrak g/\pi^4>0$ (via $d_2=-b_0/2$), real adjoint and scalar under Lorentz transformations, centering, the identity "pinned field = stress trace minus its vacuum expectation", and a comparison of the actual Wilson two-point function with the diagrammatic one.
*Proof sketch.* `Trace.Target.assembled` from the arena (`arenaT`) built from `crest_ready`, itself obtained from the gallery property `H.gallery f` that holds for each extraction order. Content in VII.2–VII.3.
*Lean:* [`Trace.Target.Result`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L99-L120), [`Trace.Target.assembled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L138-L152).

**Lemma VIII.1.g (exclusion of Wick profiles).** See VIII.1.8. *Proof sketch.* Let $\mu$ be the trace spectral measure (`traceSpectrum_exists`); the Euclidean two-point function is its heat transform. If the mass-shell Wick expression with collection $W$ agreed with the vacuum two-point function on compactly supported tests, then the measure would be that of $W$ on all of $\mathbb R^4$ (compactly supported products $\mathrm{waveTest}(u\otimes w)$ exhaust compactly supported tests, by an explicit construction), hence the Euclidean two-point function would equal the Wick profile near $0$ (`identifies_euclid`, via a dominated convergence). A Wick profile has the form of a polynomial in $r^{-1}$ and $\log r$ of lower singularity than $r^{-8}\log^{-2}r$ times a positive constant (`no_powerlog`, `real_profile`), which contradicts $A>0$.
*Lean:* [`polynomial_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105), [`euclidean_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L75-L80). The precise form of `no_powerlog` has not been checked; the formula "lower singularity" is a tentative reading.

### 4.2 Assembly of `fromFunded`

**Lemma VIII.1.h (`fromFunded`).** VIII.1.5.
*Proof sketch.* In order: obtain `Jewel` from VIII.1.b and the log package from VIII.1.c; the trace result for every `Final` from VIII.1.f; the coverage and gallery properties directly from the funded attentiveness hypothesis. Given an order $f$, obtain from the running-limits lemma (`PertExtension.Running.extraction`) a refinement $g$ and bound sequence $B$ such that for each level $m$ the coupling limits exist; from `extractible17` a second refinement $w$ with a `Final`; the almanac by VIII.1.e; the OPE reader by choosing a coherent prescription (`OPE.Prescription.chosen`) compatible with the symmetry of the table, with the transport `injection`, `rights`, `spots` of the phase; and finally the OPE foundation, uniform nesting and all-shapes statements for this reader, and a mantle from `attains_mantle17`. The couplings limit is transported to the refinement $g\circ w$ by `Order.retained`.
*Lean:* [`fromFunded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L150-L167), [`Running.extraction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PertExtension/Running.lean#L40-L56).

### 4.3 From funded run to the headline

**Lemma VIII.1.i (contacts).** Given a `Final` $F$, a reader $Q$ and OPE services, there are contact devices $M$ whose basis is the OPE port ($M.\mathrm{basis}=Q.\mathrm{port}$), with the multiple-light property, a transport system basis, and thresholds.
*Proof sketch.* The devices are assembled from the data of the reader and of the phase transport $t$ (`injection`, `rights`, `spots`, `motion`) and, for each degree, a multiple-contact detector (`detector_exists`); the other properties are applied lemmas of Part VII.4.
*Lean:* [`contacts_on`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L14-L24). *(proof read at the level of the term)*

**Lemma VIII.1.j (continuum theorem).** VIII.1.3.
*Proof sketch.* Take the funded run, `fundedRun`, and use `fromFunded` with its `refine p`; add the contacts by VIII.1.i; `Core` is assembled from the trace and OPE receipts by `Core.of_receipts`, using `estimates_weighted` to produce the joint estimates ("Joint position tests with bounded total variation") from the OPE services; the four-meter statement from `Position.four_on`.
*Lean:* [`continuum_with_position_tests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L28-L48), [`Core.of_receipts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L38-L44), [`Core.point`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L49-L63), [`Pert.Position.four_on`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L49-L53).

**Lemma VIII.1.k (the headline in internal terms).** VIII.1.2 in its internal form `existence`.
*Proof sketch.* From VIII.1.j, repackage: the reconstruction bundle (`Headline.Reconstruction`: Wightman axioms for the selected phase and for each phase, the weak form of the Euclidean-to-Minkowski link, and the average property); the separated OPE (coefficient bounds $\|c_{j,i}\|\le r^{j-\mathrm{wt}(d)-\varepsilon}$, remainder $\le r^{D+1-\mathrm{wt}(d)-\varepsilon}$, uniform in viewers); the nested OPE; the trace exclusions (seven clauses, including the exclusion of Wick profiles and of free Maxwell fields).
*Lean:* [`Nonperturbative.existence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Headlines.lean#L19-L36), structures [`Reconstruction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L75-L81), [`WightmanAxioms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L52-L71), [`SeparatedOPE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L24-L48), [`NestedOPE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L128-L138), [`TraceExclusions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L84-L120).

### 4.4 Translation to the public statement

**Lemma VIII.1.l (the public Wilson family).** The public family $\mathcal W(C)$ has periods $L_p=C.S.\mathrm{period}$, denominators $D_N=C.S.\mathrm{denominator}$, couplings $C.\beta$, the normalized Haar measure, tokens `C.book.Token` and insertions $C.\mathrm{seen}$. The public Wilson energy equals the internal one, so the public Wilson measure equals the internal law, the public finite moment equals the internal numeric moment, and the smeared moments agree.
*Proof sketch.* Termwise comparison of the plaquette variable (a computation with group-element conventions) and then rewriting.
*Lean:* [`energy_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L32-L41), [`law_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L43-L46), [`moment_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L49-L55), [`smear_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L57-L60).

**Lemma VIII.1.m (regularity).** $\mathcal W(C)$ is regular: continuity and gauge invariance of the insertions (from the construction), fixed finite stencil (from `localSection.stencil`), and $\beta_{N,p}/\log(1/a_N)\to 2b_0$ uniformly in $p$, with $b_0>0$ from the Casimir constant.
*Proof sketch.* The logarithmic running is `Pert.Asymptotics.zeroUp_bound`, which belongs to VII.5; the positivity of $2b_0$ is `casimir_pos`.
*Lean:* [`regular`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L16-L25).

**Lemma VIII.1.n (the hierarchy and its properties).** The hierarchy $T$ is built by reading: Hilbert space `stateSpace F.action`, the theory `view F.action`, labels $=$ `labelsOf S`, field map `S.pin`, projection `S.classTokens`, characters $=$ the phase space, phase measure, correlations by `S.useAt` of the spectator, continuation by the waves `F.A.waves`, OPE channels and coefficients from the reader $Q$, centered trace `TraceExtension.center F`. Then:
(a) `wilsonLimit`: the Wilson limit follows from `fromWilson` and the fact that $S.\mathrm{useAt}$ on $\mathrm{classTokens}\circ v$ equals $S.\mathrm{read}$ on separated configurations;
(b) `publicReconstruction`: the 14 fields of `Reconstructed` are taken from the realization (axioms, faithfulness), the injectivity of `pin`, existence of a nonzero field (the unit label, with `alive` and `faithful`), surjectivity of the label maps (from `covered`), normalization and full support of the phase measure, permutation symmetry and smoothness (`class_perm`, `class_smooth`), continuity in the character (from `decomposition.weak`), the barycentre identity, analyticity of the continuation and the root and boundary relations (from `F.realization.chosen.heat` and `emerges`);
(c) `publicOPE`: direct from `SeparatedOPE`, up to regrouping of the arguments;
(d) `publicTrace`: from `TraceExclusions`, with the identification $\text{award}(g)=3\dim\mathfrak g/\pi^4$ obtained from $d_2=-b_0/2$, the force constant and the slope constant of the Casimir.
*Lean:* [`hierarchy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L27-L42), [`wilsonLimit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L44-L56), [`publicReconstruction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L79-L133), [`publicOPE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L68-L77), [`publicTrace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean#L35-L44), [`view_axioms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicView.lean#L102-L142). *(proof read for the bridges; `view_axioms` statement only)*

**Lemma VIII.1.o (contact distribution on all tests).** For every viewer $s$, arity $k$ and labels $v$, there is a continuous linear functional $D$ on the test functions on $\mathrm{Points}_k$ with $D(f)=\int f\,S_s(v)$ whenever $\mathrm{supp}f\subset\mathrm{Conf}_k$.
*Proof sketch.* Apply the multiple-light property of the devices to the identity embedding, the trivial collapse at the origin, and a radius $r=\tfrac14\min(1,\mathrm{clearance})$; then compare the recorded distribution with $\int f\,S$ pointwise on separated configurations using the harmonic-tent identity (`harmonic`) and `read_fields`.
*Lean:* [`contactDistribution`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactBridge.lean#L14-L49).

### 4.5 The headline theorem

**Lemma VIII.1.p (`constructed`).** VIII.1.2.
*Proof sketch.* Apply `existence`, get $C,\mathrm{penalty},\mathrm{makes}$; regularity from VIII.1.m; for each $p$ obtain the data from `allOrders p`; assemble the four public properties by `wilsonLimit`, `publicReconstruction`, `publicOPE`, `publicTrace`; contacts by `contactDistribution`; repackage the rest.
*Lean:* [`constructed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L40).

**Lemma VIII.1.q (`jointExistence`).** VIII.1.1.
*Proof sketch.* Apply `constructed` with $b=1$. Given $p$, form the extraction order whose spacing sequence is the full one (`.full`) and whose volume sequence is $p$; take the refinement $q$ it produces and use $q$.per as the public refinement (it is strictly increasing). Take the hierarchy $\mathrm{hierarchy}(F,Q)$ and its properties from `constructed`. The volume sequence $p\circ q.\mathrm{per}$ is the public $p\circ q$, since the refinement of $(\mathrm{full},p)$ by $q$ has volume sequence $p\circ q.\mathrm{per}$ and spacing sequence $q.\mathrm{mesh}$ (and the Wilson limit is proved for the full spacing sequence by `PositionsUV`/`Ordered` with `Sequence.full`).
*Lean:* [`jointExistence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean#L4-L10).

**Lemma VIII.1.r (SU(2)).** `su2Theory` is `jointExistence` for the gauge group $\mathfrak{su}(2)$ in its defining representation, using `su2Simple`.
*Lean:* [`su2Theory`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L15-L18).

### 4.6 Further results filed in this unit (statements only)

The unit page lists a number of results which are parts of other chains and are not used for the public theorem except through `fromFunded`; they are the leading perturbative position comparison ([`normalized_four`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L56-L63), [`parityEndpoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Parity/End.lean#L21-L30), [`low_read`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Parity/EvenLow.lean#L44-L49): finite-volume ledger entries of odd order $\le5$ vanish for simple groups; these are the parity input to the perturbative comparison, belong to VII.6), the single-scale and all-arity OPE estimates ([`single`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Single.lean#L57-L58), [`signed_placements`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Layers/Conclusion.lean#L20-L27), [`uniform`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Endpoint.lean#L31-L36), [`estimates_weighted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Profile.lean#L98-L108): VII.4), the Euclidean trace asymptotic ([`outside`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L77-L88), [`tagline`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L50-L69), [`assembled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L138-L152): VII.2/VII.3), the construction of Wightman fields from the Euclidean data ([`establishing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L167-L184), [`attach`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Core.lean#L178-L189), [`compatible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L200-L215), [`field_jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Derivative.lean#L107-L160), [`spins_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Unique.lean#L152-L176), [`er_path`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/RotCurve.lean#L168-L183): V.2–V.3, VI.1) and the volume-uniform bounds of the full-volume folders ([`positioned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L42-L47), [`realUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L45), [`pinnacle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Dusk/Court.lean#L43-L53), [`ridgeT`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Dusk/Cargo.lean#L40-L70), [`headlands`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Dusk/Wince.lean#L63-L99), [`compose`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Largo.lean#L22-L56), [`repriseQ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Renaissance.lean#L37-L241): III.12–III.15). Their mathematical explanations are in the units listed above.

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

*Routine.* The logic of the assembly. Once the run is fixed and `fromFunded` is available, the headline theorem is a matter of repackaging and of the translation to the public vocabulary, as described above. The bridge files are short (about 130 lines for the hierarchy) and consist mostly of unwrapping structures.

*The one non-obvious structural point is the order of quantifiers.* The family is chosen first (depends on $G$ and $b$ only); then for each extraction order a refinement and *all* data (table, `Final`, almanac, reader, contacts, scaling) are chosen together. The public statement hides the family in $\exists\,\mathcal W$ and the penalty $b$ in the choice $b=1$. In `fromFunded`, refinements produced by different ingredients are composed (`f.refine g`, then `g.refine w`); this works because limits survive refinement (`Order.retained`, `Final.onward`, `Seed` and `Ordered` transfer to refinements), and it is the reason why the whole statement is "subsequential" in this layered way.

*What is weaker or stronger than expected.*
1. The public statement is for the full sequence of spacings $N\to\infty$ at each fixed volume, then the subsequence of volumes. The internal `Ordered` with `Sequence.full` for the mesh carries the spacing-limit through the whole sequence; this is the content of `PositionsUV` (III.12/IV.1 interface item 4), which is in the construction, not in the public statement. The IV.1 extraction yields a subsequence in both variables first; the full-mesh property is recovered via `PositionsUV` (probable; see §7).
2. The public theorem gives no uniqueness of the limit, no mass gap, no clustering, and the Wightman axioms are those of the project's own formulation (statement.md, §2). The strong form `constructed` retains much more, including all phases, contacts, nested OPE and the perturbative comparison.
3. The penalty $b$ is a free parameter, but the output does not depend on it in the public statement (`jointExistence` fixes $b=1$). Whether the limits for different $b$ coincide is not asserted.
4. `Core`, `Final` and the bundles are Props or structures with many fields, and are produced in the used closure; the old docstrings ("Not proven", "STIPULATION") in `YM/Org` and `Bid` are stale. A reader of the Lean must therefore not conclude that the theorem is conditional.

*Unusual.* The file names and code names are unrelated to the mathematics (`Jewel`, `Treasury`, `Alloy`, `Funded`, `Broad`, `Almanac`); the glossary translates them. The unit contains alternative routes that are not used, and the results `normalized_four`, `parityEndpoint` and `firstTarget` are used as inputs to `FourMeters` and the perturbative comparison, not to the public theorem.

<a id="unit-notation"></a>

## 6. Notation

- **object:** gauge group (matrix group and Lie algebra)

  **code name:** [`GaugeGroup`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L25-L33), `Gauge` (internal)

  **proposed notation:** $(m,G,\mathfrak g)$

- **object:** simple

  **code name:** [`IsSimple`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L39-L45)

  **proposed notation:** $\mathfrak g$ nonabelian simple

- **object:** public Wilson family

  **code name:** `WilsonFamily g`, [`wilsonFamily C`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L20-L30)

  **proposed notation:** $\mathcal W=(L_p,D_N,\beta_{N,p},h,\mathcal T,I_{N,p})$

- **object:** regular family

  **code name:** [`WilsonRegularity`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L12-L22)

  **proposed notation:** (Reg1)–(Reg4)

- **object:** extraction order

  **code name:** [`Extraction.Order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L34-L36) (`mesh`, `per`), `refine`

  **proposed notation:** $f=(f_{\rm mesh},f_{\rm per})$, $f\circ g$

- **object:** internal family (construction record)

  **code name:** `Family`, `C.Makes`

  **proposed notation:** $C$, (Mk)

- **object:** continuum table

  **code name:** `Table C.book`, `S.read`

  **proposed notation:** $S(v;x)$

- **object:** the final specification

  **code name:** [`Spec.Final`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73) (`calibration`, `room`=`Seed`, `sector`=`Algebra`, `α`=phase selection, `phase`, `B`,`A`=contours, `action`=`Wightman`, `realization`)

  **proposed notation:** $\mathfrak F=(\text{cal},\text{seed},\text{algebra},\text{phases},\text{reconstruction})$

- **object:** reconstruction for every phase

  **code name:** `EveryPhase.Almanac`, [`Completed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L51-L71)

  **proposed notation:** $\{\mathcal H^\xi,\Phi^\xi\}_{\xi\in X}$

- **object:** OPE reader

  **code name:** `OPE.Orbits.Reader` (`channels`, `coef`, `actor`)

  **proposed notation:** $(c_{j,i},\mathcal O_{j,i})$

- **object:** contact devices

  **code name:** `Contacts.Devices`

  **proposed notation:** contact data $\mathcal D$

- **object:** scaling sequence (perturbative)

  **code name:** [`Climb.Scaling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31)

  **proposed notation:** $(r_k,U_k)$

- **object:** run of the RG construction

  **code name:** `Run`, [`fundedRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L30-L31)

  **proposed notation:** $\mathsf{R}$

- **object:** funded hypotheses

  **code name:** [`Funded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L60-L73)

  **proposed notation:** (Fd)

- **object:** full-volume UV endpoint

  **code name:** [`Jewel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L133-L149)

  **proposed notation:** (UV$_\infty$)

- **object:** broad goal

  **code name:** [`Broad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L130-L148)

  **proposed notation:** (Goal)

- **object:** positional UV convergence

  **code name:** [`PositionsUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L25-L36)

  **proposed notation:** (PosUV)

- **object:** bundle of final tests

  **code name:** [`Independent.Core`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L18-L34)

  **proposed notation:** (Core)

- **object:** first perturbative extension / four meters

  **code name:** [`FirstExtension`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L26-L39), [`FourMeters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L45-L47)

  **proposed notation:** (Pert$_1$), (Pert$_4$)

- **object:** trace amplitude

  **code name:** `Trace.Verse.award`

  **proposed notation:** $A_{\mathfrak g}=3\dim\mathfrak g/\pi^4$

- **object:** asymptotic-freedom slope

  **code name:** `Pert.Asymptotics.b0`

  **proposed notation:** $b_0=11C_{\mathfrak g}/(48\pi^2)$, $b_*=2b_0$


<a id="unit-limitations"></a>

## 7. What remains unexplained
1. **Which parts were checked.** The whole of the top-level files, `Headlines`, `Continuum`, `HeadlineSpec`, `Core`, `ConstructionRun`, `Accepted`, `RG17/Joint`, `Spec/Closed`, `Wick/Refute` (end), `Pert/Position/Four`, and the first 200 lines of `Org/Input` have been checked. The proofs below `fromFunded` have not been checked in detail: `jewelOf17`'s ingredients, `all_characters`' eleven lemmas, `Trace.Target.assembled`'s `arenaT`, `Prescription.chosen`, `Orbits.produce`, `Nesting.uniform`, `attains_mantle17`, `Running.extraction`. The summaries in §4 of what they provide are taken from their statements (probable).
2. **Which statement is the one to write.** The public `jointExistence` is much weaker than `constructed`. The written proof should state `constructed` as the main result and derive the public form from it; whether to include contacts, nested OPE and the perturbative comparison is an editorial choice.
3. **Subsequence in the spacing.** The public `Converges` runs over the full spacing sequence $N\\to\\infty$. IV.1 as described in its note extracts a subsequence in both variables. The reconciliation (`PositionsUV`, `Jewel.sampler`, `Ordered` with `Sequence.full`, interface item 4 of the README) lies in III.12–III.15 and `FullVolume.Finale`; it has not been verified here. The statement in §5 that the full-mesh property is recovered by `PositionsUV` is a tentative reading.
4. **Role of the penalty $b$.** The theorem is for every $b>0$, but the public form fixes $b=1$; the relation of $b$ to the limiting coupling slope $b_*=2b_0$ (which does not depend on $b$) is not explained in this unit. Check III.2 and III.9.
5. **Universe levels.** `constructed`, `existence` and `Core` carry universe parameters $u,v$ (used for the quantification over `Wick` colours and the index types in `TraceExclusions.wick` and `invariant`). `jointExistence` instantiates them at $0$. Statements quantifying over all types (`Color : Type u`, `I : Type v`) in the trace exclusions are therefore stated only for the universe level used; for the written proof this can be ignored (tentative).
6. **Alternative routes.** `Spec.CLOSED`, `Org.YU`, `Legato.noel` and others are not used. The "keystone gate" in `Org` is not a real obstacle. A written proof need not mention them.
7. **Stale docstrings.** The docstrings of `Org/Input.lean` ("Not proven", "mission") and of `Accepted.lean` ("NOT identified…", "No all-order comparison") refer to earlier states of the project; the formal statements should be taken as authoritative. The caveats stated there on what is *not* claimed (no all-order comparison with perturbation theory; no identification of the weak measuring frames with the trace's own) are still accurate as limits of `Broad` and should appear in the account of what is proved.
8. **Public versus internal Wightman axioms.** The internal `WightmanAxioms` (14 fields) and the public `Reconstructed` + `view_axioms` agree only through `view_axioms`, whose proof has not been checked. The comparison with the public axioms in §1.10 of the statement (W0–W3) should be made there.

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

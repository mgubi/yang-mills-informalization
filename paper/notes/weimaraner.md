# Weimaraner: limit theory and identification

Updated 2026-11-11 (UTC). Role: Part II, units IV.1–VIII.1. Phase 1 complete; PLAN is READY and its assignments are accepted. The sole Phase 2 pilot is `part2/limit/01-infinite-volume.tex`. Later proposals below are retained as planning context, not authorization to draft further sections.

## Authority and status

- Read `paper/BRIEF.md` in full. Edit only `paper/part2/limit/*.tex`, this notes file and `paper/reports/weimaraner-*.md`; no commits, pushes or subagents.
- Lean source verified at `3456e5e75cf8d4cd558955a5c7638fba2d68f464` in `/root/code/OpenAI-YM-20261028`.
- Ran the required `git pull --ff-only` before reading Scott's current manuscript; it reported already up to date.
- Read the mandatory mathematical-writing skill and every reference, theorem statement, summary, provenance, all assigned unit outlines, detailed IV.1 notes, and the current manuscript. The pilot checks are recorded below; other unit investigations remain future work.
- At the initial inspection, `paper/` contained only the brief. Waited for `PLAN.md` with first line `STATUS: READY`, then read it and both collaborators' notes before the pilot. Shared notation and macros belong to dalmatian. Adopted the reserved `prop:uv-inputs` interface; its present PLANNED status supplies no proof.

## Proposed sections and precise outputs

The ordering below separates genuine prerequisites from the subject numbering of the outlines. The first section should be **Infinite volume** (IV.1); I will write only that section in Phase 2 and stop after report 1.

1. **Infinite volume** (`part2/limit/01-infinite-volume.tex`; IV.1; target 9–12 pages, to be adjusted by the lead).
   For the already chosen construction family and every extraction order, refine both indices to obtain continuous fixed-volume and infinite-volume kernels on configurations separated in every coordinate, with locally uniform convergence, integrable separated smearings, and ordered smeared limits. Construct inclusion and derivative maps using the relay approximation, null detector and separate rank bound. Obtain smooth representatives on all distinct-point configurations, intrinsic quotient maps, translation and signed-axis covariance, normalization, reality, point/smeared reflection positivity and polynomial derivative bounds. Use **the same family's** full-spacing fixed-volume convergence to remove the mesh refinement by uniqueness. The final statement retains only the prescribed volume refinement; it asserts neither full-volume convergence nor interchange of limits.
2. **Euclidean operators** (V.1.1–3, VII.4.5; target 5–7 pages).
   Construct OS Hilbert spaces and coordinate heat/spatial groups from the Euclidean hierarchy, then bounded slab operators. For every degree/norm bound, one constant and integer exponent control all slab widths and word lengths by `C^{|w|}(|w|/r)^{kappa |w|}`. Prove the reflected-train bound and the power argument removing the exterior-word factor. These mixed-state objects precede the rotation argument and require no phase decomposition.
3. **Maxwell fields and the conserved tensor** (VI.2, VII.1, VII.3; target 9–12 pages).
   Construct the free on-shell polynomial hierarchy from the curl–curl Green kernel; prove strict reflected positivity, null-space detection, derivative laws and polynomial Ward identities. State the conserved centered stress line, divergence ranks `(3,2,1)`, and its Ward normalization **with the source sign checked**. Transfer weak lattice comparisons to continuum isomorphisms and smooth scaling convergence, then construct a nonzero interacting conserved tensor. Keep bounded-degree weak comparisons distinct from one all-degree diagonal sequence.
4. **Ward identities and rotations** (VI.1; target 9–12 pages).
   Start from the lattice-produced shell maps. Derive collinear identities with vanishing exterior flux; identify translation maps as one common nonzero multiple of derivatives; extend angular Ward identities using analytic OS-vector estimates; remove the Lie-bracket defect; construct exact intertwiners and integrate to `O(4)`. Normalize and average the stress tensor and prove compatible Lorentz actions. No use of clustering or a positive mass gap.
5. **Phases** (V.1.4–9; target 6–8 pages).
   Compress slab words to the mixed ground space; prove commutativity using the restored rotations. Obtain a compact metrizable character space and full-support probability measure, continuous phase kernels with the barycenter identity, phasewise positivity/derivatives/Ward identities, and equality of null spaces. Select a phase with one-dimensional heat-fixed space from the almost-everywhere uniqueness argument. The selection is noncanonical and has no extra trace condition.
6. **Relativistic reconstruction** (V.2; target 10–13 pages).
   Construct strict-time analytic functions and polynomial bounds from slab operators; obtain unrestricted ordered-height boundary values on joint Schwartz tests; prove Lorentz covariance from continued Ward identities and forward-cone spectral support. Prove adjacent spacelike exchange via matching complex-boost germs. Independent heat parameters give Gram limits; word multiplication supplies the invariant dense domain, fields, adjoints, faithfulness, cyclic vacuum and selected vacuum uniqueness. State the public Wightman conventions without silently adding continuity/finite-dimensionality conditions on public label actions.
7. **Every phase** (V.3; target 5–7 pages; detailed-construction result).
   Reconstruct uniformly in the phase, prove continuity and barycenters on joint tests, surjectivity of the OS comparison isometry, the uniform bounds `mu_A(0<E<=u) <= M_A u^2` and heat decay `M_A s^{-2}` for compactly supported word sums, then upgrade vacuum uniqueness from almost every phase using full support. Continue stress identities and establish the specified weak-commutant statement. Keep polynomial decay distinct from a spectral gap.
8. **Trace and non-freeness** (VII.2, VII.3, VII.5–6; target 10–14 pages).
   Center the degree-four trace in the selected phase; prove its positive spectral representation, one-loop field comparison and exact amplitude `3 dim_R(g)/pi^4`. Use flexible readout bands to extract scaling subsequences from **every positive null sequence**, then monotonicity to pass from rounded configurations to all radii. Prove finite Wick-profile exclusion using integer-power/nonnegative-log expansions. Any additional Fock exclusion is a separate detailed-construction claim, with its isometry, translation, vacuum and transverse-image hypotheses retained.
9. **Products and contacts** (VII.4; target 9–12 pages).
   Construct one coherent degreewise coefficient system before spectators, state and truncation. For fixed cluster/spectator data, prove coefficient bound `r^{j-w-epsilon}` and remainder `r^{D+1-w-epsilon}`, uniformly in configuration and state below the allowed threshold. Give the integrated and finite-tree estimates with their actual geometry and quantifiers, and construct contact distributions by normal Taylor subtraction and forest/shell sums. No coefficient uniqueness, infinite-order convergence, contact positivity or lattice convergence at collisions.
10. **Assembly** (VIII.1; target 2–4 pages, or supply this argument to Part I).
    Fix the construction run from `(G,b)` before extraction; compose coupling and table refinements and attach every later object to that same table. Identify public/internal Wilson laws, insertions and moments. Set `b=1`, start with `(id,p)`, remove the mesh refinement and take the volume component of the common refinement. Check every public clause R1–R15, O1–O2 and T1–T4. Avoid repeating Part I's deduction if the lead places it there.

These targets are provisional, not a request to enlarge the paper. The full outline includes results stronger than the public theorem; the lead should decide which detailed-construction conclusions receive full proofs in the first manuscript.

## Inputs needed from the other parts

### From dalmatian

- Final section architecture, exact first filename, main proposition label(s), macro inventory and notation table.
- Definitions of the Wilson family, admissible separated tests and smear normalization `a_N^{4n}`; physical time is the fourth coordinate.
- A single convention for raw degree-`d` labels `V_d`, quotient fields `F_d`, null spaces, inclusions, unit labels, signed permutations, conjugation, generic vs distinct configurations, and the mixed/selected/phase notation.
- State whether the principal existence proposition bundles only the public endpoint or the detailed result; every additional conclusion needs its own verified hypotheses.

### From greyhound

For the family used by the public construction (III.14/`constructionRun`, not III.13's alternative family), supply usable statements and proof locations for:

1. Family specification, fixed stencils, reality/unit/signed covariance, nonnegative couplings and fixed reference insertion normalization.
2. Centered chessboard bounds at fixed volume and along ordered tails, including the local interior condition and common error parameter; root subadditivity and cell reflection positivity may be proved in my section if agreed.
3. Difference/inclusion relay approximants with subpolynomial cutoff coordinates, one vanishing error rate per approximation, projected-null observable detector, convergent bounded projections, and the separate free-dimension bound.
4. Full-spacing fixed-volume positional/smeared limits for the **same family** on configurations distinct modulo the period. A full-spacing upgrade is needed at every admissible volume, not merely a selected one.
5. Bounded grid approximants and corrected-field rank estimates for phase reflection and phase null-space equality.
6. Weak Maxwell/station comparison, shell identities and the one-step/cluster estimates used for slab trains, OPE replacement, trace transport and flexible reading bands; keep each assertion's source scope explicit.

## Weak points and source-resolution plan

| Point | What must remain explicit | Source route to read |
|---|---|---|
| Raw extraction | One refinement for countably many arities/degrees/basis labels/compacts and every fixed volume; generic configuration limits are not initially smooth on all distinct configurations. | `YM/Extraction/{Held,Lipschitz,...}`, `YM/Slice`, detailed IV.1 notes; `Extraction.crops`, `RawLimits.ready`. |
| Smoothness | Relay errors, normalization of approximants, projected null detection and the extra dimension comparison precede fixed derivative maps. | `YM/Work/D03`, D04; `YM/Dash`; `YM/Org/Input.lean` and the producer of `Arrives.serves`. |
| Full-spacing upgrade | Do not use III.13 properties without identifying families. Uniqueness of the scalar fixed-volume limit suffices once III.12's same-family limit is supplied. | `YM/FullVolume/Fields/Filled.lean` (`Campaign.realUV`), `YM/FullVolume/Final*`, `FullVolume.Final.from_spec`, Wilson bridge. |
| Phase reflection/null spaces | Characters alone do not imply phase reflection or equality of null spaces. | `YM/Work/B05`, B08, B09 and `YM/Phase/Retain*`; preserve cutoff-before-translation-before-copy/error order. |
| Exterior flux | Symmetry alone does not bound diagonal stress components; no clustering is available. | `YM/Push/STRESS_FLUX`, `Outer.blows`, Work A01–A05. Write the actual cutoffs and spectral bound or mark the missing estimate visibly. |
| Exact rotations | Asymptotically intertwined generators do not automatically yield exact compatible group actions. | `YM/Spin`, Work A08–A17; Casimir projection/purification and boost ODE uniqueness. |
| Reconstruction | Radial boundaries alone do not justify independently heated Gram limits; locality requires full matching jets, not just equality of values. | Work C01–C29, especially C04, C13, C17–C24 and C26–C29; `YM/Boundary`, `YM/Fields`. |
| Every-phase uniqueness | Uniform low-energy/heat bounds, continuity and full support are separate steps. | `YM/EveryPhase/{Decay,...}`; `light_bound`, `inverse_square`, `extends_decay`, `all_plant`, `onto`. |
| Trace amplitude | Matching the one-loop slope in two places cancels it in the amplitude, so the amplitude alone cannot verify the beta-function coefficient. | `YM/TraceExtension/Verse`, `Prom`, `Wick`; `Store_l`, `gang`, `outside`, `joint_limit`. |
| All radii | A single scaling sequence does not prove a full radius limit. | `pays_sky`, prescribed-null-sequence extraction, trace spectral monotonicity and sequential criterion. |
| Nested OPE/contacts | Keep nodewise truncation/radius rates and the partial-collision induction; a radial integrability estimate does not treat all collision strata. | `YM/OPE/{Nesting,Trees,...}`, `YM/Contacts/{Normal,Layers,Solstice,...}`. |
| Public translation | Same Wilson family, same table, quotient maps, all labels, same selected phase and same OPE coefficients; no unverified stronger interpretation. | `HierarchyBridge.lean`, `WilsonBridge.lean`, `TraceBridge.lean`, `PublicView.lean`, `Construction.lean`, `Solution.lean`. |

Any first-section statement not confirmed at the required level will retain an explicit `\gap{...}` with the smallest missing claim and an exact source location. I will distinguish an upstream theorem awaiting its own proof from an unconfirmed implication in my argument.

## Current manuscript: preliminary editorial observations

The current manuscript explicitly marks itself unfinished. Its generic/distinct/periodic configuration distinctions and the full-spacing upgrade are useful structural guides. The pilot was written independently from the pinned sources: it proves raw compactness before smoothness, exposes the separate null-space dimension input, and uses scalar uniqueness only after same-family full-spacing convergence. Exact source names occur in footnotes and the correspondence below. Scott's direct smooth compactness route would require the upstream difference bounds explicitly; it cannot be inferred from order-zero roots alone.

## Requests

### To dalmatian

- 2026-11-11: Please provide `PLAN.md` with `STATUS: READY`, the first owned filename, and shared macros/notation before Phase 2. Proposed first section: Infinite volume (IV.1). The raw extraction → derivative/smoothness → full-spacing order should remain visible.
- 2026-11-11: Please interleave mixed OS/slab construction before Ward/rotation restoration, and phase decomposition after rotations. A literal IV–V–VI ordering would hide dependencies.
- 2026-11-11: Please reserve a precise ultraviolet-input proposition containing the relay/rank and same-family fixed-volume statements, with proof locations in greyhound's part. An informal reference to “the RG bounds” will not suffice for the first limit section.

### To greyhound

- 2026-11-11: For the first limit section, please identify the specification, centered-root/cell, relay/null/rank and full-spacing fixed-volume results for the actual chosen construction family, with your intended statement labels and exact source locations. III.13's alternative coordinated family cannot silently substitute for it.
- 2026-11-11: Please clarify which lattice shell, bounded-grid and slab-train estimates you plan to prove and which should be proved in my sections; no ownership transfer is assumed pending the shared plan.


## Pilot correspondence and scope

All paths below are relative to the pinned Lean checkout; `YM/` is included explicitly. These are manual statement/proof readings, not a fresh Lean build or independent kernel verification. All four numbered results and all nine numbered equations in the pilot are accounted for. Elementary transports (finite nets, dominated convergence, Fourier inversion, scalar uniqueness) are written in the section; the upstream producers remain marked.

| Pilot label | Exact pinned source and checked content |
|---|---|
| `eq:iv-gentle` | `YM/Lattice/Scale.lean:129–150`: logarithmic definition and mesh inequality; `YM/OS/Halves.lean:24–43`: first-crossing lower bound. |
| `eq:iv-root` | `YM/Cells/Tiling.lean:218–228`: conjugated reflection copies and root definition; `YM/Cells/Chess.lean:19–26`: root power and nonnegativity. |
| `eq:iv-centered` | `YM/Extraction/Center.lean:21–55`: literal all-volume centered estimate; reference level before scale, cutoff threshold after scale. Same-run production is Gap 1. |
| `lem:iv-reflection`, `eq:iv-chessboard` | `YM/Slice/Positive.lean:28–98`, `YM/Slice/Reflection.lean:98–end`: nonnegative coupling, independent double Haar average, reflected form. `YM/Cells/Flood.lean:41–end`, `YM/Cells/Chess.lean:32–end`: unit-width band induction, finite maximizer, normalization and sum expansion; no dyadic period restriction. |
| `prop:iv-raw`, `eq:iv-auxiliary-limit` | `YM/Extraction/Held.lean:74–end`, `YM/Extraction/Lipschitz.lean:78–end`, `YM/Extraction/Integrate.lean:66–end`: separated bounds, common spacing extraction at every fixed period, common outer extraction, all-test integrals. `YM/Extraction/Difference.lean` and `YM/Complex/Gaps.lean`: dimension-free transfer-kernel oscillation estimate. |
| `eq:iv-rank-input` | `YM/Dash/Inert.lean:28–44`: kernel inclusion and additional shortage inequality; `YM/Next/RANK/Beam.lean:153–end`, `YM/MergeProof/Powder.lean:19–end`: retained same-family detector/rank producer. This is Gap 2, not a consequence of roots. |
| `lem:iv-representatives`, `eq:iv-weak-identities` | `YM/Work/D01.lean:22–end`, `YM/Work/D02.lean:24–end`, `YM/Work/D03.lean:117–end`, `YM/Work/D04.lean`: coefficient costs, errors, backward-test sign, normalized remainder. `YM/Dash/Limits.lean:28–end`, `YM/Dash/Inert.lean:55–106`: operator-norm convergence, compact normalization and fixed basiswise lifts for all spectators. |
| `prop:iv-smooth`, `eq:iv-field-derivative` | `YM/Dash/Regular.lean:21–end`, `YM/Dash/Twist.lean`, `YM/Org/Input.lean:83–115`: weak derivatives and smooth gluing with extraction retained. `YM/Extraction/Harvest.lean:46–end`: symmetry and smeared positivity. `YM/Work/D05.lean:26–end`, `YM/Work/B10.lean:21–end`: two-scale power and all derivative norms. `YM/Work/D06.lean:124–end`: conjugation and signed-action derivative orientation. |
| `eq:iv-full-limit` | `YM/FullVolume/Finale/Program.lean:117–128`: uniqueness at every admissible fixed volume, retained outer sequence; `HierarchyBridge.lean:44–57`: exact public transport. `YM/FullVolume/Fields/Filled.lean:30–56`: same-run producer, deferred as Gap 3. |

The relay error geometry was additionally read in `YM/Bid/Drops.lean`: one common vanishing rate for each comparison, all q/lower levels, a finer cell level before the ordered tail, both boundary margins, exact spectator invisibility, and a separate rank hypothesis. No properties of the alternative family in III.13 are imported.

### Deferred inputs in the pilot

1. Gap 1: chosen-run gentleness, insertion identities and the literal centered bound, uniformly in the original volume parameter. This is stronger than public regularity.
2. Gap 2: same-run inclusion/difference/null comparisons, terminal subpower cost and finite detector/rank inequality on a common retained extraction. The finite-dimensional consequence is proved conditionally in the pilot.
3. Gap 3: same-run full-spacing fixed-volume convergence. The pilot proves its uniqueness upgrade; it does not prove the ultraviolet Cauchy theorem.

The pilot has no phase decomposition or continuous rotation assertion. It supplies only the mixed, signed-axis-covariant portion of `prop:limit`; those later clauses remain assigned to later sections.

### Additional source finding for the lead

Scott's principal P9(c) permits arbitrary finite sums of smeared words in its low-energy formulation. The actual `YM/EveryPhase/Extension.lean:57–60` uses `finite A`; `YM/EveryPhase/Polynomials.lean:83–85` defines this as compact support of every word test. Preserve that restriction in any later detailed theorem. This is outside the current pilot and requires no change to the public headline.

### Requests after the pilot

- 2026-11-11, to dalmatian: The pilot follows PLAN and keeps three explicit upstream markers. Please retain the planned exact `prop:uv-inputs` statement in UV07, rather than interpreting `prop:uv` as supplying relay or rank estimates. No architectural decision is needed before reviewing this pilot.
- 2026-11-11, to greyhound: Reflection positivity, finite folding/chessboard and the two-cell complex trace estimate are now proved at their first use in limit01. Please cross-reference these for the centered-root production; same-run centered/relay/rank/full-spacing producers remain with your part. Repeated-word/slab estimates are reserved for mixed OS preparation in limit03, before rotations.


## Final pilot verification receipt

- 2026-11-11 UTC: `latexmk -pdf -interaction=nonstopmode main.tex` in `paper/` succeeded. The final combined PDF has 23 pages; the pilot occupies pages 16–23, within its 12-page cap. No LaTeX warnings, unresolved references/citations, or overfull/underfull boxes remain in the inspected final log.
- Rendered every pilot page to PNG with `pdftoppm`, then viewed all eight images at readable resolution, including the preceding UV text and following reference boundary. Checked equation widths, red deferred-input markers, source footnotes, theorem/proof flow, and page breaks. Temporary render images were removed afterward.
- Manual source checks cover the four numbered results and nine numbered equations, with source correspondence above. No Lean/Lake process was run; no independent reviewer was used, as the brief forbids subagents. The three upstream mathematical inputs remain open in this manuscript.
- Section SHA-256: `574f3005ea68b7803389a59628052f77f48ce741f58c87a3ddb85219d0f4d7c8`. Inspected PDF SHA-256: `ee7df3626a86d71f6470b3ead1f70c3430a65b0ada596916c301ae25a9943750`. The shared PDF may subsequently change when another owner rebuilds.
- Wrote only the first limit section and report 1. Stopping here as instructed; no later section has been drafted.

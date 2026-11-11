# Dalmatian working notes

2026-11-11 UTC. Read BRIEF and all mandatory skill files/references. Repository synchronized before reading Scott's manuscript; snapshot 2668d7cdb485f3c18d743074efdcee9a18a2ca6a. Lean checkout verified at 3456e5e75cf8d4cd558955a5c7638fba2d68f464. No Lean build, heartbeat change, subagent, commit or push.

## Requests

### Greyhound

- 2026-11-11: PLAN is READY. Pilot file `part2/uv/01-lattice.tex`, cap 10 pages. Read PLAN and notation. Supply source rows for numbered results/displays in your notes. Insertion finite stencil must have both endpoints inside the translated site patch. Gauge group need not be connected. Your chosen family must be the public construction's family; III.13 requires identification. Check the complex-tuning/real-cluster and Gram-covariance/Hessian distinctions. Additional lattice comparisons for null spaces, shell charges, trace and OPE are separate exports from root bounds.

### Weimaraner

- 2026-11-11: PLAN is READY. Pilot file `part2/limit/01-infinite-volume.tex`, cap 12 pages. Full inner limits at each admissible volume must be retained before the volume refinement; do not present the mesh refinement as final. Compactness alone supplies no null-space rank identification or phase algebra. Mark precise unverified upstream inputs. Source rows go in your own notes; phase/trace/OPE choices must refer to the same table.

### Follow-up after reading both Phase 1 notes

- 2026-11-11, to greyhound: Your narrower pilot on the Wilson law and exact invariances is accepted at the assigned path/cap; local-label definitions may be included if needed, but the full Taylor and transfer construction moves to section 02. Reserve `prop:uv-inputs` in section 07 for the literal relay/null/rank and full-spacing statements. It remains PLANNED until checked, not supplied by `prop:uv` alone. Weimaraner may prove original-law reflection positivity and cell inequalities at first use; cite his hypotheses explicitly.
- 2026-11-11, to weimaraner: Your dependency requests are adopted. Initial mixed OS/slab preparation begins section 03 before the rotation proof; phase commutativity follows in section 04. Reserve upstream `prop:uv-inputs` (UV07) and state its literal inputs in the pilot with markers wherever unverified. Do not treat Part I's fixed-volume existence proposition as supplying relay/rank estimates. You own the two-cell/repeated-word argument and original-law positivity/cells at first use. UV owns finite-cutoff shell identities and finite-cutoff comparisons.

## Source comparison and review

Scott's current draft has precise public clauses, useful fixed-level Cauchy and common-choice discussions. Its long setup mixes public objects and the construction, and its larger second theorem requires a substantially wider audit. We retain one headline theorem and five jointly chosen principal assertions, and put all public definitions in the pilot so it reads independently. No prose is copied from his manuscript. The phase/rotation dependency order is retained. Proof sketches are labelled as such; missing detailed manuscript proofs get visible markers.

## Correspondence at the pinned Lean revision

All paths in this table are relative to `/root/code/OpenAI-YM-20261028`, at verified commit `3456e5e75cf8d4cd558955a5c7638fba2d68f464`. `definition` means a notation translation; `composition` means a projection or elementary composition of the named source assertions. Source reading is not a fresh kernel verification and is not independent review. The manuscript proof ideas remain subject to the five explicit deferred-proof markers.

| Pilot labels | Kind | Pinned source spans and checked content |
|---|---|---|
| eq:gauge and the gauge/simplicity prose | definition | PublicTheory.lean:20–45; m = source n+1; real one-parameter Lie algebra; nonabelian real simplicity; no connectedness assumption |
| eq:wilson-energy, eq:wilson-law | definition | PublicWilson.lean:19–36; plaquette order, one unordered axis pair, trace divided by m, normalized product Haar density |
| energy bound and normalizer prose | elementary | each unitary diagonal real part in [-1,1], six pairs at each site; compact G; no positivity condition on beta required |
| def:family | definition | PublicWilson.lean:38–50 and ChallengeSpec.lean:12–22; strict positive integer sequences, regularity, stencil with both endpoints |
| eq:running | definition | ChallengeSpec.lean:13–15; N threshold before every p, existential positive slope |
| eq:smear | definition | PublicWilson.lean:51–56,78–81; original Wilson law, all site tuples, mesh^(4n) |
| eq:conf | definition | PublicWilson.lean:59–73; distinct points; global smooth tests with compact closed support in separated set |
| def:ordered, eq:ordered | definition | PublicWilson.lean:75–90; eventual admissibility, full fixed-p mesh limit, then retained-volume limit; unconstrained inadmissible rows |
| eq:spacetime | definition | PublicTheory.lean:51–68; coordinate relabelling 0–3 to 1–4; time last, Euclidean norm and forward cone |
| def:relativistic, eq:poincare | definition | PublicTheory.lean:93–118,166–263; field-system linearity, finite diagonal measures, normalized Borel PVM; state representation, affine coordinates/pullback and translation compatibility. Poincare topological group can be transported through the bijective affine coordinates. No extra condition on non-Borel values is imposed. |
| def:wightman; eq:spectrum, eq:domain, eq:adjoint, eq:covariance, eq:locality | definition | PublicTheory.lean:126–164,270–319; all W0a–c, W1a–e, W2a–d, W3; norm-tempered field action on word-span domain; arbitrary label action and antilinear adjoint map |
| def:hierarchy | definition | ChallengeSpec.lean:24–43; H1–H8, finite-dimensional normed fields, all-arity correlations/continuation, finite channel types, one trace field |
| def:reconstructed | definition | ChallengeSpec.lean:117–143; all R1–R15, including nonzero action and both surjections |
| eq:permutation, eq:mixture | definition | ChallengeSpec.lean:126–134; separated-point conditions, every state in permutation, phase continuity and mixture |
| eq:tube, eq:euclidean-root, eq:boundary | definition | ChallengeSpec.lean:95–115,135–143; ordered imaginary times, plus imaginary heights, product tests in prescribed operator order; retain integral-of-nonintegrable convention |
| eq:cluster, eq:clear | definition | ChallengeSpec.lean:65–68; weak cluster/clearance inequalities with positive r,eta,c |
| def:ope; eq:ope-coefficient, eq:ope-remainder | definition | ChallengeSpec.lean:58–80; finite-sum grouping, total degree, thresholds after fixed fields/spectators and before positions/state; coefficient 1 |
| eq:trace-pair | definition | ChallengeSpec.lean:146–149; selected phase at (-r/2)e4,(r/2)e4 |
| eq:mode, eq:wick | definition | ChallengeSpec.lean:152–166; nonnegative mass, continuous real homogeneous numerator, integer spatial/time orders, finite complex sums/products, empty products |
| def:trace, eq:trace-law | definition | ChallengeSpec.lean:168–175; all T1–T4, complex right limit, positive real amplitude, eventual-equality negation translated to arbitrarily small mismatch |
| main properties P1–P4 and thm:main | definition/composition | ChallengeSpec.lean:177–188 and Solution.lean:4–10; exact quantifier order and single hierarchy |
| prop:uv; eq:periodic-separated, eq:fixed-volume | composition | Construction.lean:15–40, HierarchyBridge.lean:16–26, YM/FullVolume/Profiles.lean:25–47; regularity and full PositionsUV. Although PositionsUV appears inside the order quantifier in Construction, it is a property of C alone: fix the full/full extraction order and project it. Its per-p,n,v kernel witnesses then serve all tests. No universal arbitrary-family theorem is asserted. |
| prop:limit | composition | Construction.lean:15–40; WilsonBridge.lean:62–68; HierarchyBridge.lean:44–57,82–119; take joint q,S,F,L,Q, then one hierarchy; P1 and R7–R12 |
| prop:reconstruction | composition | HierarchyBridge.lean:82–133; publicReconstruction's proof checked including nonzero unit/faithfulness, covered label, quotient representative, Euclidean root and product-boundary identity |
| prop:ope | composition | HierarchyBridge.lean:59–80; grouped_eq identifies all spectator slots with the same table; exact h.coefficient/h.remainder application |
| prop:trace | composition | TraceBridge.lean:14–44; native mode/track/profile conversion, source award simplification via equal Lie algebra dimensions and positive Casimir, publicTrace |
| deduction and joint-choice paragraphs | composition | Construction.lean:15–40; Solution.lean:4–10 fixes b=1 and starts with (full,p); q.per is public q. No analytic estimate is supplied by this deduction. |

The phase decomposition description was additionally checked in YM/Phase/Mixture.lean:65–86,113–117. The trace sandwich/arbitrary-sequence description was checked in YM/TraceExtension/Verse/Cape.lean:13–23,53–88; finite power/log exclusion in YM/TraceExtension/Wick/Log.lean:96–108. Their upstream hypotheses remain deferred, rather than inferred from these terminal lemmas.

## Findings and repairs

- D1: a first TeX write used single trailing backslashes in multiline displays; detected in source/build/render checks and repaired before acceptance. The related displays now use one equation number with `aligned`, retaining every formula.
- D2: long source paths and full unbreakable commit in the bibliography caused poor wrapping; paths now use wrappable `nolinkurl` in footnotes, and bibliography gives short pin while this correspondence table retains the full verified commit.
- D3: both collaborators request more than the five public-output propositions supply. PLAN now reserves the separate PLANNED `prop:uv-inputs` and explicitly forbids inferring relay/null/rank estimates from prop:uv. No unverified principal assertion was added to hide this need.
- D4: no independent reviewer was launched, as BRIEF forbids subagents. This is a source-checked, typeset pilot for Amélie's review, not an independently audited complete proof.


## Build coordination

- 2026-11-11, to greyhound: The combined build is successful but reports an 81.39236pt overfull display at your `01-lattice.tex:48` (Wilson law). Please break that display at its mathematical relation and rebuild within your ownership.
- 2026-11-11, to weimaraner: Your first section is present in the combined PDF. The current build has underfull source-footnote paragraphs around lines 185 and 338; I will make the shared source-footnote macro ragged-right to permit long source locators without stretched spacing. No change to your mathematical text is needed for that repair.

## Pilot acceptance record

2026-11-11 UTC. Owned pilot `part1/03-theorem.tex` SHA256 `ae150b4f9044c3660fdc19d8908755e3ee9f82640448a4b0b34b45c9aab7cedd`. Source-correspondence and explanatory-scope pass completed. Rendered pages 1–11 inspected initially; revised pages 7–11 inspected after OPE display and shared footnote repairs. Pilot occupies pages 2–11 (10 touched pages, below cap 20); source 3764 whitespace-separated words. No missing references or duplicate labels in assembled TeX; no control bytes; five explicit deferred-proof markers. No independent mathematical review claimed. The HCP reference profile was applied, but no exemplar PDF was available.

Combined build at this checkpoint: exit 0, 25 pages, PDF SHA256 `b136df5abf90824c85099d544b3bec0c26cbb779313408df6e4f0a78d99d29f8`. The sole remaining warning is greyhound's 81.39pt overfull Wilson-law display at UV01 line 48; reported without editing his file. Later concurrent changes may change that combined-PDF hash.

The five principal statements are checked projections/compositions on a joint witness; their deferred detailed proofs are OPEN as manuscript work. The separate UV input proposition requested by the limit writer remains PLANNED. Report 1 written; dalmatian stops here under BRIEF Phase 2, awaiting instructions.

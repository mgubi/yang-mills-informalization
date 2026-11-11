# Greyhound: ultraviolet construction

2026-11-11. Phase 1 plan and Phase 2 pilot record. Ownership: `paper/part2/uv/*.tex`, this notes file, and `paper/reports/greyhound-1.md`.
The planning notes preceded LaTeX drafting; dalmatian's `PLAN.md` was read after its first line became `STATUS: READY`.
The present assignment ends after one pilot section and report 1; detailed construction proofs remain deferred as marked below.

## Sources and mathematical authority

The brief and the mandatory LaTeX writing skill govern the work.
Lean source is pinned at `3456e5e75cf8d4cd558955a5c7638fba2d68f464` (verified locally).
The informalization was synchronized with `git pull --ff-only` (already up to date), at `2668d7cdb485f3c18d743074efdcee9a18a2ca6a` before reading Scott's manuscript.
The unit narratives are planning inputs; their conditional propositions and automatically generated statement inventories are not independent proofs.
The public theorem chooses the Wilson family before the requested volume sequence and takes the full ultraviolet limit before the refined volume limit.
In particular, III.13's alternative family cannot provide unverified properties of III.14's construction run.

## Proposed sections and their precise obligations

These are proposals for dalmatian's architecture, not competing section assignments.
Page estimates are provisional and concern the eventual complete proofs.

1. **Lattice measure and group geometry** (I.1; 7–10 pages). Define positive and negative link transports, plaquettes and the normalized Wilson law. Prove probability and invariance for every real inverse coupling. Establish the normalized chord identity, compact-group local charts, and the invariant-form scalar theorem for a simple nonabelian Lie algebra. State block geometry and connected covers with their actual parity and radius restrictions. If the first section is narrower, the Wilson law and its exact invariances form a self-contained first installment.
2. **Local labels and insertions** (II.1, relevant III.16; 10–14 pages). Construct finite-dimensional invariant radial-jet polynomial spaces of weight at most d and nested real pure-grade frames. Produce fixed finite-stencil polynomial sections with equality of Taylor jets through d, reality, gauge and signed-permutation covariance, and threshold-factor derivative bounds. Define reference-normalized insertions via the terminal transfer automorphism. The unit insertion is the appropriately scaled reference label, not automatically the raw coordinate e_0. Keep Maxwell-equation sections and their distant-spectator identities separate from identifying the continuum null space.
3. **Activities and marked products** (II.2, III.1, III.5; 8–12 pages). Define regular/forced supports, eligibility and the exact density; prove the square-zero marker norm is submultiplicative and the connected-support sum under its stated rooted smallness condition. For the scalar gas, prove absolute cluster tails and the deletion estimate under Ready, retaining real weights in the exact logarithm theorem. Complex tuning requires its own argument.
4. **Blocking and the background** (III.1, III.6; 12–16 pages). Construct the globally Borel, exactly normalized gauge-covariant Markov kernel with random fallback tags; prove exact mass preservation. Remove tree links by Haar invariance. Prove vertical coercivity, the analytic stationary branch, its prescribed tangent and quadratic value, forest independence of the thermal function, and localized derivatives on a volume-independent ball. Do not assert global minimization of the nonlinear action.
5. **Free kernels and Gaussian sectors** (III.3–III.4; 14–20 pages). Establish the actual filtered Fourier/Bloch identities, normalization at zero momentum, exponential bounds and repaired positive forms. Prove the exact active/frozen Gaussian change with its chart Jacobian, mean residual and precision defect. The covariance is the symmetrized window inverse of the row Gram matrix; any identification with the nonlinear stationary Hessian must be separately proved. Derive local determinant series and window errors with constants independent of volume and sector.
6. **Fourth-order matching and the one-loop term** (III.7; 12–18 pages). Match Wilson and each stationary coarse action through fourth order; construct the exponentially decaying curvature-atom representation. Transfer the auxiliary determinant coefficient to the actual thermal Hessian using the Faddeev–Popov determinant/Haar identity and alias/contact estimates. Prove the shift bound |alpha + kappa_G log L| <= D with D chosen before L. The construction has kappa_G = 11 C_g/(24 pi^2); no higher-loop claim follows.
7. **The nonlinear step and exact reset** (III.5, III.9–III.10, III.15; 16–24 pages). Prove the localized energy bound per seed, retaining every large-field sector. Convert Gaussian/letter estimates into the exact outgoing regular and forced norms, with the original support weights and derivative directions. Extract flat and isotropic quadratic parts, absorb failed-mask terms into the forced gas, and obtain the exact blocked density at every configuration. Prove continuity on parameter intervals in the weighted representation norms before using shooting.
8. **Constants and the marginal trajectory** (III.2, III.9; 8–12 pages; share constant-order exposition with Part I). Choose pre-block constants, odd block factors, protection, post-block constants, thresholds, reference coupling and level plateaux in their proved order. Produce selected trajectories with beta_0 = bar beta, prescribed bands and |beta_(m+1)-beta_m-kappa_G log L_m| <= omega_(J_(m+1)). Summation gives the uniform leading-log law, with an o(log(1/a_m)) error, not a bounded error.
9. **Observable bounds and difference quotients** (III.11–III.12, III.15; 14–20 pages). Prove the Haar numerator/denominator comparison with 3c-3 versus 3c+1 links, so the uncancelled coupling power is global. Derive centered chessboard bounds for bounded degree-d labels at each m >= r(d), eventually in cutoff uniformly in volume, of size A a_m^(-d-epsilon). Use corrected rank detection, exact equation sections and vanishing errors to bound all fixed finite difference lists on periodically separated configurations. Preserve the corrected map in the null-space identification.
10. **Convergence at fixed volume** (III.12, III.14; 10–14 pages). For the selected run used by the public theorem, prove fixed-level convergence, reference-transfer stability and a uniform remainder tending to zero as the intermediate level increases. Apply the two-stage Cauchy argument, then positional equicontinuity and difference estimates to obtain smooth limits off periodic coincidences and full-spacing smeared convergence at every admissible fixed volume. Analytic tuning statements retain their volume/degree/compact-set dependence. The order-zero quadratic-kernel rate of III.14 is not a rate for full correlations.

III.8's fixed-order connected coefficients, locality cones and exact conditional factorization fit at their first use in sections 5, 7 and 9; they do not assert convergence of a perturbation series.
III.13 will only be mentioned as an alternative source route if the editor wants a correspondence note; it is not needed as an additional construction in the paper's proof.

## Interfaces with the other parts

**From dalmatian.** One notation table, the exact public theorem, section paths and labels, macro/theorem environments, and the statement of the common construction proposition. I can restate local lattice objects where they are used, but will follow Part I's definitions and normalization. The finite stencil, chord, penalty and inverse-coupling conventions must agree.

**To weimaraner.** One chosen family, its original Wilson law and gauge-invariant continuous fixed-stencil insertions; uniform leading-log running; centered and offset reflection-cell root estimates, including all fixed finite differences; full-sequence fixed-volume convergence and smooth kernels off periodic coincidences; corrected-field comparison statements with all hypotheses. These are joint properties of that family. Infinite-volume extraction, Euclidean reflection positivity/chessboard inequalities and the field quotient belong to the limit part; ultraviolet uses of those results need explicit cross-references rather than treating them as consequences of activity bounds.

**Shared boundary.** The rank comparison and stress construction in III.11 already use extraction and free Maxwell data. Put the finite-cutoff comparison estimates here; let the limit part own the extracted field-space isomorphism and Ward/stress consequences. This avoids an artificial linear dependence on the outline's unit numbering.

## Weak points and how I will resolve them

| Issue in the existing account | Required source check before claiming closure |
|---|---|
| Connected-cover radius restriction M <= 2B | Trace the actual consecutive budget radii in `Corona.collapse`, the cluster step and reset. |
| Maxwell equation sections versus limit null labels | Read `Portfolio.build`, the exact distant-spectator identity, section-comparison maps and rank-detector argument; retain the dressing automorphism. |
| Gram covariance versus stationary Hessian | Compare `Rows.gram`/`fog` with the stationary thermal Hessian, including frozen/active coordinates; otherwise keep the definitions distinct. |
| One-loop coefficient reaches the actual step | Read `tribute`, `pouring`, `transition_cap`, contact and alias comparisons; record every input estimate still needing proof. |
| Nonlinear output to repeatable norms | Trace `Target.issue`, derivative-integral estimates and `Return.reset` through their outgoing E/K inequalities, fixed addresses, masks and continuity. |
| Real cluster weights and complex parameter | Inspect the analytic continuation/contraction proof for the actual construction run; no inference from the real gas theorem alone. |
| Fixed-volume convergence despite retuning | Read `Rising.cinema`, `Sever.echoes`, `Campaign.realUV` and their same-run fixed-level suppliers; write the uniform intermediate-level tail explicitly. |
| III.13 versus the public theorem's family | Use `constructionRun` and VIII.1's actual consumers; do not transfer `habitat`/`coordination` properties without equality of families. |
| Stationary branch radius versus thresholds | Check the selected run's post-block thresholds place the sector fields in the uniform analytic domain. |
| Quadratic-kernel rate mistaken for full UV rate | Keep III.14's rate scoped to the order-zero link kernel. |
| Imported estimates and literature attributions | Verify the local Lean proof; use a visible `\gap{...}` for any unpaid paper argument. Provenance comparisons remain qualified unless the original source is checked. |

## Notation proposals

Use representation size m_G (or n_G), volume side L_p, block ratio ell_m, inverse spacing D_N, stage J_m and inverse coupling beta_(N,p,m). Reserve b for the block-kernel penalty and kappa_G for the logarithmic slope. Let H_4 denote signed permutations. Use V_d for classical labels, F_d only for the limit quotient. Name the connected-cover radius and the Gaussian covariance separately. Coordinates 1–4 in prose, time coordinate 4.

## Requests

### Dalmatian

- 2026-11-11: Please choose the first UV section and path. I propose a bounded section on the Wilson law and its exact invariances, leaving local group geometry/cover estimates for their first substantial use if page targets require it. I will follow `PLAN.md` once ready.
- 2026-11-11: Please supply `\gap`, ordinary proposition/lemma environments, the chosen common notation, and an input path under `part2/uv/`. I will not edit shared files.
- 2026-11-11: III.11 has continuum consumers inside its unit. Please assign its finite-cutoff estimates to UV and its field-quotient/stress consequences to the limit part; keep III.13's alternative family distinct from III.14's selected run.
- 2026-11-11, response to READY plan: Adopted the narrower pilot in `part2/uv/01-lattice.tex`; full Taylor-section and transfer construction remains for section 02 and later RG sections. The pilot defines the section contract and proves insertion locality conditionally. Translation displacement is `z`, reserving `b` for the penalty. Source rows follow below. The Wilson display reported overfull in your checkpoint has been split; the revised combined build has no warnings.
- 2026-11-11, notation for integration: local additions are `H_4`, `V_d`, radial coefficient spaces `\mathcal A_j`, weight/factor grades `w_{d,i},f_{d,i}`, sections `P_d`, factor scaling `S_t`, reference map `\tau_{N,p,d}` and level `r(d)`. The physical unit in degree d is the label `a_{r(d)}^d1`; reality/orientation/unit are asserted only at N >= r(d), while locality/continuity/gauge invariance hold at every cutoff under the section hypothesis.

### Weimaraner

- 2026-11-11: Please expose the exact original-Wilson reflection-positivity and chessboard inequalities needed for UV root bounds, with parity/divisibility and cell-interiority hypotheses. I will supply same-family bounds and the full-spacing fixed-volume limit; please retain the latter separately from subsequential extraction.
- 2026-11-11, response to your interface requests: `prop:uv-law` checks the original law, every-real-beta invariance and integrability. `prop:uv-insertions` checks local polynomial insertion consequences **conditionally**, not the existence of a calibrated family. Pinned `YM/Source/Construction.lean:44–68,71–127` gives the section/calibration contracts, readout, translation, real/orientation/unit identities and all-cutoff locality; `YM/FullVolume/Cross.lean:30–71` attaches these contracts to the actual run. Only these first-section sources were proof-read to pilot depth. Nonnegative selected couplings and gentleness require the later selected-trajectory proof, not `prop:uv-law`.
- 2026-11-11, remaining inputs: Adopt dalmatian's reserved **PLANNED** `prop:uv-inputs` in section 07. Root/cell, relay/null/rank, bounded-grid and full-spacing fixed-volume estimates are not supplied by this pilot, nor by the public regularity definition. Your source route `YM/FullVolume/Fields/Filled.lean` and the III.14 selected run is the intended fixed-volume route; I do not certify its complete proof chain in this round. Preserve the exact missing inputs in your pilot. No III.13 family substitution is authorized.
- 2026-11-11, boundary: UV owns finite-cutoff shell integration by parts, bounded-grid/comparison estimates and the ultraviolet estimates entering slab/OPE/trace. Limit owns the repeated-word/two-cell argument, OS/slab operators, continuum shell passage and phase consequences. You may prove original-law positivity and chessboard inequalities at first use as PLAN allows; their hypotheses must remain explicit when section 07 cites them. This is a future ownership allocation, not a claim those estimates are already written or checked.

## Progress

The READY plan and both collaborators' notes have been reread. Exactly one LaTeX section is written: `part2/uv/01-lattice.tex`. It proves the lattice law and finite-label lemma; it defines, rather than asserts the existence of, normalized local sections, then proves a conditional insertion proposition. The one visible marker at the end records two deferred construction inputs: section existence with the required derivative bounds, and same-family invertible transfers with the displayed endpoint/unit conditions. No nonlinear RG, running-coupling, root, rank, or ultraviolet-limit theorem is claimed established by this pilot.

## Pinned correspondence for the pilot

All paths below are relative to `/root/code/OpenAI-YM-20261028`, commit `3456e5e75cf8d4cd558955a5c7638fba2d68f464`. Every numbered result and display has a row. Checks read declarations and relevant proof bodies; no Lean compilation or fresh kernel verification is claimed. Labels are stable; printed numbers/pages depend on the combined manuscript.

| Label | Status and pinned source correspondence |
|---|---|
| `eq:uv-gauge` | Definition and proved transport identity: `YM/Lattice/Path.lean:93–109,132–143`; cancellation works on both orientations. |
| `eq:uv-chord` | Definition: `YM/Gauge/MatrixGroup.lean:112–115`; matrix size m is source n+1. |
| `eq:uv-chord-square` | Elementary proof supplied: `YM/Gauge/MatrixGroup.lean:117–155`; normalized Frobenius chord, price range and product triangle. Continuity/inversion/conjugation checked at 157–174. |
| `eq:uv-wilson` | Definitions: `YM/Lattice/Path.lean:86,93–109`, `YM/Lattice/Faces.lean:13–14,47–49`, `YM/Wilson/Law.lean:29,55–76`. One site and increasing axis pair; no extra energy factor. |
| `prop:uv-law` | Proof supplied: `YM/Wilson/Law.lean:31–95,101–108`; `YM/Wilson/Symmetry.lean:25–104`; `YM/Gauge/MatrixGroup.lean:61–84,187–218`; face reindexing in `YM/Lattice/Faces.lean:57–145`. All real beta, every positive side, disconnected G allowed. |
| `eq:uv-law` | Normalized density: `YM/Wilson/Law.lean:74–95`. Finite positive partition function is proved before division. |
| `eq:uv-expectation-symmetry` | Integral change of variables: `YM/Wilson/Symmetry.lean:93–117`, with gauge measure preservation at 97–99; gauge moment identity is the same change-of-variables argument. Integrability is assumed, not inferred from a formal integral convention. |
| `eq:uv-radial` | Definition: `YM/Labels/Jet.lean:18–46`; symmetric Taylor coefficient of position degree j+1 and weight j+2. |
| `eq:uv-label-action` | Definition: `YM/Labels/Jet.lean:69–115`; label pullback uses the inverse action, `YM/Labels/Action.lean:78–100`. |
| `lem:uv-labels` | Proof supplied: `YM/Labels/Polynomial.lean:23–49,51–98,100–127`; `YM/Labels/Grading.lean:22–108`; `YM/Labels/Basis.lean:12–111`. Finite dimensions, real evaluation injectivity, pure-grade reality and nested bases checked separately. No field-equation quotient is taken. |
| `eq:uv-link-ode` | Definition: `YM/Source/Local.lean:31–52`. Existence checked in `YM/Source/ODE.lean:27–41,88–168`; parameter analyticity in `YM/Work/G02.lean:89–182`. Paper supplies the equivalent matrix Picard-series argument and group-valued step-exponential approximation; it does not assume connected G. |
| `def:uv-sections` | Contract only: `YM/Source/Local.lean:85–105,140–147`. Existence is deferred, visibly, not asserted by this definition. |
| `eq:uv-section-symmetry` | Contract only: `YM/Source/Local.lean:143–146`; all centered signed pullbacks and coefficient conjugation. |
| `eq:uv-section-taylor` | Contract only: `YM/Source/Local.lean:82–89,147`; truncation reads precisely weights <= d. These are Taylor identities through d, not finite-spacing equalities. |
| `eq:uv-insertion` | Definition: `YM/Source/Insertion.lean:70–87`; factor scaling in `YM/Labels/Reference.lean:58–78`; family observable `YM/Source/Construction.lean:42`. Order is inverse transfer, inverse threshold factor scaling, local section, a_N^(-d). |
| `eq:uv-reference-coordinates` | Assumed endpoints/unit, not a construction theorem: `YM/Source/Insertion.lean:103–114`; actual coefficient maps are linear by 100–102. Reference r(d) is independent of N,p. |
| `prop:uv-insertions` | Conditional proof supplied: `YM/Source/Local.lean:110–137,149–167`; `YM/Source/Construction.lean:65–127`; `YM/Source/Insertion.lean:118–130`. All-cutoff locality includes wrapping and requires both link endpoints in the image patch. Reality/orientation/unit retain N >= r(d). |
| `eq:uv-insertion-translation` | Exact translate, no retuning: `YM/Source/Local.lean:116–120`; `YM/Source/Construction.lean:70–72`. |
| `eq:uv-insertion-covariance` | Conditional affine covariance `YM/Source/Construction.lean:88–102`; scaled reference unit `YM/Source/Insertion.lean:119–130`. This does not identify the raw label 1 with the normalized unit. |

### Further source investigation retained for section 02

The G01–G07 finite-section route has been investigated, but is not an exported theorem in this pilot. `YM/Work/G03.lean` detects radial jets by square circulations and then finite-dimensional kernel descent; G04 splits that derivative equivariantly; `YM/Source/Drops.lean` uses the analytic inverse theorem. G05 composes labels with the ordinary Taylor polynomial of that inverse, retaining at least the label's factor number; it does **not** truncate the final polynomial back to degree d. G06 averages over signed permutations and encloses every transformed path in one fixed stencil. G07 proves threshold-factor bounds for each fixed derivative order/power, uniformly under wrapping; no uniformity in d, section or derivative order follows. These bodies and their contracts in `YM/Bid/Source.lean` were read. A complete paper proof, with all constants and budget directions, remains section 02 work.

## Display and rendered-page audit

- The Wilson display is split into plaquette, energy and partition function rows, with one equation number; this repairs dalmatian's reported overfull line.
- All 15 numbered displays fit; no manual negative spacing or font reduction. No raw code names appear in mathematical prose; pinned paths occur only in the correspondence footnote.
- The local section definition is distinguished from its existence theorem. The insertion proposition is conditional in both its statement and the closing marker.
- Shared notation is retained; `\varepsilon` is the local Taylor-spacing parameter, `z` the translation displacement, and the matrix size remains m.
- Rendered pages 11–16 of the revised combined PDF were inspected at 1600-pixel page height, including adjacent Part I/limit prose, every display and the closing visible marker. Section 2 occupies six touched pages, within its cap of ten. The definition's page break retains a complete sentence before its Taylor condition.

## Final pilot receipt

2026-11-11 UTC. Required build `latexmk -pdf -interaction=nonstopmode main.tex` in `paper/` completed with exit 0; final `main.log` has no warning/error, unresolved-reference/citation or overfull/underfull lines. The combined PDF has 23 pages. All pilot pages 11–16 were viewed; final pages 14–16 were viewed again after restricting the analyticity prose to the near-zero germ, correcting source spans and completing the deferred-input marker. All 19 numbered labels have correspondence rows; exactly one `\gap` and no unexpected control bytes. Temporary role-specific render files were removed after inspection.

Owned section SHA-256: `8fbf51d4b8d615aaba9ad05c345d0a4159e77b32ff8402a16608f4e334046f41`. Inspected combined PDF SHA-256: `0e4de327ed0b698dab674863ba52a0e9aceadbeaa687f46d2fd5e4c5ee6ed329`; later builds by another owner can change this shared artifact. No commits, pushes, source edits outside paper, subagents, Lean/Lake processes or heartbeat changes. Wrote report 1 and stop here; no second section drafted.

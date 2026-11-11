STATUS: READY
# Paper plan — dalmatian, 2026-11-11 UTC

## Scope and authority

Canonical entry point: `paper/main.tex`. This round stops after one complete pilot section per agent and `reports/<name>-1.md`; no later drafting is authorized by this plan. Mathematical authority: the public contract in `statement.md`, checked against `/root/code/OpenAI-YM-20261028` at `3456e5e75cf8d4cd558955a5c7638fba2d68f464`. Source-exposition snapshot: `2668d7cdb485f3c18d743074efdcee9a18a2ca6a`, after `git pull --ff-only`. All source material outside `paper/` is read-only; no commits or pushes.

We prove the public theorem. Additional construction facts enter as tools with their own hypotheses; they are not silently added to the main theorem. In particular no claim of mass gap, uniqueness/universality, diagonal limits, full OPE convergence, or general exclusion of Gaussian composites is made. The alternative family of III.13 may not supply facts for the public family's proof without an explicit identification.

The mandatory writing skills have been read. The specific BRIEF overrides the orchestration skill's generic delegation and editor-only rules: dalmatian writes Part I; nobody launches subagents. Authorship/affiliations/acknowledgments remain for Amélie; the pilot has an empty author block, not an invented attribution. Final title/abstract/introduction are deferred until the body stabilizes.

## Contents and working page allowances

These are targets and caps for calibration, not measured claims about the eventual paper. A section over its cap must be shortened or its cap revised before acceptance. The theorem pilot has a generous definition allowance so its contract is readable independently.

| Part | File under paper/ | Subject / exit result | Target / cap | Owner |
|---|---|---|---|---|
| I | part1/01-introduction.tex | Problem, contribution, provenance; write last | 3 / 4 | dalmatian |
| I | part1/02-setting.tex | Construction notation beyond the public definitions | 3 / 4 | dalmatian |
| I | part1/03-theorem.tex | **Pilot:** exact public theorem, definitions, five principal propositions, proof ideas, deduction | 14 / 20 | dalmatian |
| I | part1/04-constants.tex | Acyclic parameter choices and uniformities | 2 / 3 | dalmatian |
| II UV | part2/uv/01-lattice.tex | **Pilot:** lattice law and symmetries; local-label definitions if needed (I.1, II.1) | 8 / 10 | greyhound |
| II UV | part2/uv/02-activities.tex | Local-label/section construction, nilpotent insertions, activity norms (II.1–II.2) | 7 / 9 | greyhound |
| II UV | part2/uv/03-blocking.tex | Total normalized block kernel, gauge coordinates, stationary branch (III.1, III.3, III.6) | 14 / 18 | greyhound |
| II UV | part2/uv/04-integration.tex | Gaussian sector identity, determinants, connected sums (III.4, III.5, III.8) | 15 / 20 | greyhound |
| II UV | part2/uv/05-step.tex | Seed energy, nonlinear integration, exact reset (III.7, III.9, III.10) | 18 / 24 | greyhound |
| II UV | part2/uv/06-flow.tex | Growing block ratios, common endpoint, running coupling (III.2, III.14, VII.5 interface) | 8 / 11 | greyhound |
| II UV | part2/uv/07-observables.tex | Uniform roots, differences, full fixed-volume convergence (III.11–III.12, III.15–III.16); III.13 only with identification | 17 / 23 | greyhound |
| II limit | part2/limit/01-infinite-volume.tex | **Pilot:** common extraction, full-spacing upgrade, derivative/null-space interface (IV.1) | 9 / 12 | weimaraner |
| II limit | part2/limit/02-maxwell.tex | Free curvature hierarchy, finite detectors, moving frames (VII.1, VI.2, VII.6) | 10 / 14 | weimaraner |
| II limit | part2/limit/03-ward.tex | OS preparation, shell identities, exterior flux, rotations and stress (VI.1–VI.2) | 12 / 17 | weimaraner |
| II limit | part2/limit/04-phases.tex | Slab bounds, commutative ground algebra, phases (V.1) | 8 / 11 | weimaraner |
| II limit | part2/limit/05-reconstruction.tex | Continuation, boundary values, locality, spectrum, every phase (V.2–V.3) | 12 / 16 | weimaraner |
| II limit | part2/limit/06-trace.tex | Centering, flexible scales, all-radii law, finite Wick exclusion (VII.2–VII.3, VII.5–VII.6) | 10 / 14 | weimaraner |
| II limit | part2/limit/07-products.tex | One OPE prescription, nested/integrated products, contacts, assembly (VII.4, VIII.1) | 13 / 18 | weimaraner |

Target body approximately 194 pages; caps are local revision triggers, not an asserted total bound. Only the three pilot sections are written this round. An empty input is a reserved file, not a claim of completion. No appendices or extra reports without a reason tied to a principal result.

## Frozen principal statements

The pilot defines all public objects and uses labels below. The five propositions assert **one joint construction**, with quantifier order

`for each gauge group with simple real nonabelian Lie algebra, choose W; for every strictly increasing p, choose strictly increasing q and ONE hierarchy H; all later assertions hold for that same H`.

They do not assert extension for arbitrary regular Wilson families or arbitrary smooth Euclidean tables. Part II must exhibit this joint choice, not combine unrelated existence results. The source witnesses are `constructed` and its `Final`, all-phase and OPE data; source identifiers stay in notes/correspondence tables or footnotes.

1. `prop:uv` (ultraviolet construction; proved in UV §§1–7). There exists a regular Wilson family W, chosen before p, with the following full fixed-volume property: for every volume index j, arity n and token list v, there exists a kernel K_{j,v}, smooth where x_i-x_l is not in L_j Z^4, such that for every j-admissible separated test f, `lim_N C_{N,j}(v;f)=integral f K_{j,v}` along the entire N sequence. No volume-uniform cutoff threshold is asserted for this convergence. The definition of regularity retains Reg1–Reg4 exactly, including a merely existential positive slope in the public theorem. Sources: `Construction.lean:15–40`, `HierarchyBridge.lean:16–26`, `YM/FullVolume/Profiles.lean:25–36`.
2. `prop:limit` (limit and phases; proved in limit §§1,3–4). For every strictly increasing p there exist one strictly increasing q and hierarchy data H1–H8 for W such that P1 and R7–R12 hold: the full inner limit at every admissible volume, outer limit along p∘q, smooth symmetric mixed/phase kernels, continuous phase values, and probability/full-support phase mixture. This is a construction-specific existence result; phase decomposition uses restored rotations, not just compactness. Sources: `HierarchyBridge.lean:44–57,82–119`, `WilsonBridge.lean:62–68`.
3. `prop:reconstruction` (proved in limit §5, using §§2–4). For that joint choice, R1–R6 and R13–R15 hold exactly: W0–W3, faithful labels, injective degree maps, nonzero action, coverage, lattice representatives, holomorphy in ordered complex times at fixed spatial positions, Euclidean values, product-Schwartz boundary values. Do not add finite-dimensional Poincaré label action, involution of the adjoint label map or positive-height integrability to the public definition. Sources: `PublicTheory.lean:93–319`, `HierarchyBridge.lean:82–133`.
4. `prop:ope` (proved in limit §7). The SAME coefficients and fields chosen in H7 satisfy O1–O2 of the pilot: for each fixed finite cluster list a, `|c_{j,k}| <= r^(j-w(a)-eps)` eventually, uniformly in cluster geometry; for each fixed spectator list b, clearance c, D and eps, the remainder is at most `r^(D+1-w(a)-eps)` eventually, uniformly in states and allowed positions. Coefficients are chosen before spectators, D and state. Radius thresholds may depend on b. Sources: `ChallengeSpec.lean:58–80`, `HierarchyBridge.lean:68–80`.
5. `prop:trace` (proved in limit §6). For the SAME selected theory and degree-four field, T1–T4 hold: vacuum centering for every Schwartz test; amplitude `3 dim_R(g)/pi^4>0`; full right limit `r^8 log^2(1/r) G_Theta(r)` equal to that amplitude; no finite Wick profile agrees on any interval next to zero. Modes and profiles are defined exactly, including continuous real homogeneous numerators and empty products. Sources: `ChallengeSpec.lean:146–175`, `TraceBridge.lean:14–44`.

`thm:main` is statement.md Theorem 2.1, with properties P1–P4 precisely defined by those clauses. Its Part I deduction uses the five propositions and no analytic estimate. No second headline theorem claims an unchecked expansion of D1–D16.

## Interfaces and dependency order

Greyhound exports the SAME regular W, its actual local insertions, full fixed-volume kernels, and volume-uniform root/difference estimates needed for extraction, equation relations, Maxwell detectors, shell charges, trace and OPE. Root bounds alone do not supply all later source comparisons. State each additional estimate explicitly at its first use; leave a visible `\gap{...}` if its supplier is unverified. The primitive covariance is the inverse gauge-fixed Gram form; do not identify it with the stationary Hessian without proof. The one-loop coefficient must be attached to the actual stationary determinant. Complex tuning must not be justified by a cluster theorem proved only for real weights.

Weimaraner receives these precise estimates and constructs one limit table on one common refinement, quotient fields, OS spaces, Maxwell comparison and shell maps. Mixed OS preparation precedes the Ward/rotation argument; rotations precede commutativity of the phase algebra; phase reconstruction and finite OPE estimates then use those phases. Thus the original part numbers are not a linear dependency order. The first pilot may state downstream inputs precisely and mark missing source verifications; it must not import the absent technical sections as proved.

Source quotient maps identify token moments with field correlations only on separated configurations; multiply by the separated test before transporting equality in the Wilson limit. All phases share field/null-space data only where proved. Selected phase is chosen for a one-dimensional ground space, with no extra trace condition. One OPE prescription is shared with contact channel bases; contact projections need not equal OPE projections. Full radius trace passage requires flexible scaling plus positive spectral monotonicity.

## Notation and house style

Canonical symbols/macros are in `notation.md` and `macros.tex`. Coordinates 1–4, time last; N cutoff, p volume index, k subsequence index, h a test only when locally declared; m the matrix size, mu,nu axis indices. Use W for the lattice family, T for token set only as calligraphic `\mathcal T`, F_d continuum fields, mathbb F their disjoint union, L calligraphic for relativistic labels, D calligraphic for domain, pi for token projection, iota for degree-label maps, X/nu/xi_* for phases, S^mix/S^xi for kernels, mathsf F_n for continuation, Theta for the trace-test field. Temporary construction symbols are introduced locally; do not change shared symbols without a request.

Style: article 11pt, Computer Modern, 1.05in margins, dark blue links RGB 0,0,114, sequential sections across parts. Short concrete titles. Each construction-specific estimate and its cancellation/uniformity is written out; standard algebra, compactness and geometric sums may be short or exactly cited. Define before use; proof ideas outside theorem environments; no code nicknames. Use `\gap{missing mathematical statement; source location}` visibly for unresolved proof/source edges. This explicit requirement overrides the writing skill's word ban for that marker. One sentence per source line is allowed by BRIEF. No blanket unverified literature citations; bibliography entries alone do not pay a proof input. Every numbered result and numbered display gets a pinned correspondence row in dalmatian's notes; other agents provide their rows in their own notes for later integration.

## Verification and acceptance

Build inside paper: `latexmk -pdf -interaction=nonstopmode main.tex`. Check log for errors, references, citations and overfull material; render/read every pilot page. No Lean build is requested or claimed. Source reading checks declarations and the relevant proof bodies at the pin. Keep mathematical status distinct from typography and from later independent review. No delegated review in this round (BRIEF).

Pilot questions: Can the reader state which family precedes p? Explain why only volume is refined? Distinguish mixed lattice limit from selected Minkowski theory? Identify exactly the Wick class excluded? Explain why rotations must be restored before phases?

## Coordination status

Both Phase 1 notes have now been read in full and incorporated. Greyhound's finite-cutoff versus continuum rank division is adopted: UV owns the finite-lattice comparisons; limit owns extracted quotients, derivatives, stress and rotations. Greyhound may keep the first pilot to the Wilson law, exact invariances and the local-label definitions needed there; a complete Taylor/transfer construction belongs in the next section and is not required inside the 10-page pilot. This resolves his requested narrower first section without changing its path. Weimaraner's first section and 12-page cap are adopted. His requested OS preparation precedes rotations: the initial mixed OS/slab construction goes at the start of `03-ward.tex`; `04-phases.tex` proves compression commutativity and the decomposition after rotations. `05-reconstruction.tex` includes the every-phase extension as a subordinate detailed result, rather than a second headline theorem. The assembly deduction stays in Part I; the limit writer supplies same-table identifications in `07-products.tex`.

Reserve `prop:uv-inputs` in UV `07-observables.tex` for the precise centered/offset roots, difference/inclusion relay approximants, projected null detector and separate Maxwell dimension comparison, plus same-family full-spacing convergence. This interface is PLANNED, not yet a checked theorem: its quantifiers must be frozen from actual source declarations before drafting. The limit pilot must state these upstream inputs explicitly and distinguish deferred proofs from unverified implications. Original-Wilson reflection positivity and cell chessboard inequalities may be proved by weimaraner at first use; greyhound cites those labels with their even-period, interiority and nonnegative-coupling hypotheses. Shell integration by parts and finite-cutoff estimates belong to UV; the repeated-word/two-cell argument and operator bounds belong to limit. No transfer of existing file ownership.

Recheck both notes before each new section and before reporting. Shared macros and reserved inputs are installed. The pilot's deferred analytic work remains explicit even when the build is green.

## Pilot checkpoint

Dalmatian's first section and report 1 are written. The pilot spans printed pages 2–11 and fits its 20-page allowance. All definitions and numbered assertions/displays have pinned correspondence rows in his notes; five deferred analytic proof markers remain. The shared build succeeds, with a separately reported overfull display in UV01. This READY status authorizes the two collaborators' assigned first sections, not drafting beyond the Phase 2 stopping boundary.

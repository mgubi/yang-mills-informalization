# Weimaraner — first-section report

2026-11-11 UTC. Phase 2 pilot delivered; stopping as instructed.

**Written.** `part2/limit/01-infinite-volume.tex`: original-Wilson reflection positivity and chessboard estimates, common two-index extraction, fixed derivative/inclusion representatives, smooth mixed quotient fields, positivity and polynomial derivative bounds, then removal of the spacing refinement. It occupies pages 16–23 of the present PDF, within the 12-page cap. Later sections remain empty.

**Checked.** Read the pinned Lean at `3456e5e75cf8d4cd558955a5c7638fba2d68f464`, following the proofs and hypotheses behind every numbered result and equation. `notes/weimaraner.md` records the correspondence. Particular checks: independent double Haar averaging; finite folding without a dyadic assumption; dimension-free trace differences; one extraction for all labels/tests and every fixed period; backward-test derivative sign; normalized compactness for all spectator functionals; the separate rank inequality; the two-scale power bound; and full-spacing uniqueness at every admissible volume. These are manual source checks, without a Lean build or independent review.

**Every remaining gap.** Three visible markers defer ultraviolet proofs for the same chosen family:
1. Gentleness, insertion identities and the literal volume-uniform centered-root bound.
2. Inclusion/difference/null comparisons, terminal subpower coefficient cost, and finite detector/rank bound on a retained common extraction.
3. Full-spacing fixed-volume convergence from its Cauchy/positional estimates.

The downstream statements explicitly assume these inputs. Neither the alternative family of III.13 nor public regularity supplies them. Phase decomposition and continuous rotations are reserved for later sections.

**Departure from Scott.** I separate raw order-zero compactness from derivative identification and smoothness, exposing the additional rank input. The full-spacing upgrade is a final uniqueness argument. An additional finding for later drafting: Scott’s P9(c) omits the compact-support restriction present in the source’s detailed low-energy word estimate; the exact locators are in my notes.

**Validation and decisions.** The prescribed `latexmk` command succeeds; the final log has no warnings, undefined references/citations or bad boxes. I rendered and inspected all eight affected pages. Keep the planned `prop:uv-inputs` statement in UV07 with the literal same-family hypotheses; no further architectural decision is needed for this pilot. The three deferred proofs remain manuscript obligations.

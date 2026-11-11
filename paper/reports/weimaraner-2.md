# Weimaraner — round 2 report

2026-11-11 UTC. Revised the infinite-volume pilot under `feedback/round-1.md`; no later section was written.

**What changed.** The opening now explains the two tasks: extracting correlations and identifying their derivatives. Every result has an explanatory introduction and a shorter mathematical statement. The former `prop:iv-smooth` is split into smooth correlations and quotient operations, followed by Euclidean symmetry, positivity and derivative estimates. Its original conclusions are retained.

Repeated public setup is replaced by hyperlinks to Part I’s unique definitions. Concrete coefficient spaces, actions, insertions and reference maps link to greyhound’s section. Reflection copies, folds, coordinate separation, slab kernels and coefficient comparisons are explained before use. Ordinary fractions use `\frac`; referred-to comparison and result items have linked labels.

Two source clarifications are explicit: tilings are cubical with a common even cell count and seam kind, matching the pinned definition; the reflected-product formula places the power inside the trace. The earlier unused rectangular generality is removed. The derivative representative is renamed to distinguish it from the reference-transfer map.

**What remains open.** Exactly three visible markers retain the same-family obligations:
1. Scale conditions, insertion identities and volume-uniform centered bounds.
2. Inclusion/difference/null comparisons, coefficient costs and the separate rank estimate.
3. Full-spacing fixed-volume convergence.

The revision closes none of these ultraviolet proofs. The full inner limit still precedes the refined outer limit; phases and continuous rotations remain later work.

**Validation.** The prescribed `latexmk` build succeeds without warnings, undefined references/citations or bad boxes. I rendered and reread all eleven touched pages, within the twelve-page cap, and rechecked the final repaired passage. The notes record the source correspondence for all 22 numbered displays and five results, preservation checks and artifact hashes. Source pin: `3456e5e`; no Lean build or independent review was run.

**Decisions.** No further editorial decision is needed for this checkpoint. The precise ultraviolet inputs remain assigned to the planned later proofs. Stopping here.

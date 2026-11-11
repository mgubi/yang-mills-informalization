# Dalmatian — round 2

2026-11-11 UTC. Revised Part I and shared architecture under `feedback/round-1.md`; `PLAN.md` now records that controlling structure.

**Changed.** Part I is *The main theorem* and opens with *The result*. Rewrote the opening and whole-paper outline. Gathered the public definitions in one pedagogical section, separating observable labels, local insertions, families, regularity and test support. Explained plaquettes and replaced the pilot's unexplained terminology. The main theorem now states its four conclusions explicitly; the nonclaims and final deduction remain. Added a strategy section with a linked dependency diagram and rewrote all five proof ideas around their mathematical purpose. This reorganizes the exposition independently of Scott's section order while preserving the public contract.

All 41 Reg/W/H/R/O/T/P items have individual hyperlink targets; mentions and range endpoints link to them. Statements link directly used definitions. Ordinary arithmetic quotients use `\frac`. Coordinated canonical definitions and aliases through both colleagues' Requests; Part II uses those shared targets. No new Part II section was written.

**Checked.** Reverified Lean pin `3456e5e75cf8d4cd558955a5c7638fba2d68f464`; compared the rewritten clauses with `PublicWilson`, `PublicTheory`, `ChallengeSpec`, `Construction` and `Solution`. Correspondence and exact scope are recorded in `notes/dalmatian.md`. No Lean build or independent proof audit is claimed.

The required `latexmk -pdf -interaction=nonstopmode main.tex` succeeds. The inspected PDF has 31 pages; Part I occupies pages 2–15. Read every rendered Part I page and the construction opening, repairing the strategy diagram and final page break. The final log has no warnings, errors or unresolved references/citations. Static checks found no duplicate labels, missing references or control bytes; extracted PDF links include 705 valid internal page links.

**Still open.** Five visible markers retain the missing analytic proofs: ultraviolet integration and fixed-volume convergence; same-family infinite-volume estimates, rotations and phase commutation; reconstruction boundary estimates and locality; the quantitative OPE; and stress normalization, full-radius trace asymptotics and finite-profile exclusion. The separate upstream `prop:uv-inputs` remains PLANNED.

**For review.** No mathematical scope decision is pending. Amélie's assessment of the definitions' pacing and the new strategy explanation is the next editorial input. Report written; stopping here as instructed.

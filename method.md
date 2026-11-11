# How the map was made

This page separates checking the formal proof, interpreting its statement, extracting declaration references and reviewing the explanations. The source is fixed at commit [`3456e5e75cf8d4cd558955a5c7638fba2d68f464`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464). The [FAQ evidence table](faq.md#what-each-check-establishes) gives the scope of each check.

## Source compilation and kernel checking

The released source uses Lean 4.32.0 and pinned external libraries. Its [verification log](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/verification/joint-check.log) records a type comparison for `YangMills.jointExistence`, an axiom check for seventeen named results, and a successful kernel replay of 100,168 project declarations reachable from those results. It reports only `propext`, `Classical.choice` and `Quot.sound` as endpoint axioms. The [checking program](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/VerifyJoint.lean) compares the solution with a separately loaded reference and replays project declarations with only external libraries initially present.

These are checks of formal declarations and proof terms. They do not establish that an English statement expresses the intended physics, that an outline explains every estimate, or that the mass-gap problem has been solved. The placeholder in the reference `Challenge.lean` is separate from the solution's imports; the source's [verification account](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/README.md#verification) explains this distinction.

To rebuild the project from source, use a fresh checkout without the precompiled project archive. The following follows the [source verification instructions](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/README.md#verification); it downloads compiled dependencies, compiles the project and runs the separate checks:

```sh
git clone https://github.com/yang-mills-group/OpenAI-YM-20261028
cd OpenAI-YM-20261028
git checkout 3456e5e75cf8d4cd558955a5c7638fba2d68f464
lake exe cache get
lake build WilsonReference WilsonConstruction
lake env lean -j1 -DmaxHeartbeats=0 -DmaxRecDepth=4096 VerifyJoint.lean
lake env lean -j1 -DmaxHeartbeats=0 verification/Usage.lean
lake env lean -j1 verification/CompactCheck.lean
```

The build targets are specified in the pinned [Lake file](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/lakefile.toml). Expected messages from `VerifyJoint.lean` include `TYPE_MATCH`, `ENDPOINT_AXIOMS` and `REPLAY_PASS`; inspect the complete output and exit status. This recipe still trusts the downloaded external libraries. The separate [compiled project release](https://github.com/scottnarmstrong/yang-mills-informalization/releases/tag/lean-build-3456e5e) is convenient for exploring the proof, but loading it and finding all build targets up to date does not independently recompile the project. A checksum checks the downloaded archive against its published digest.

## 1. The dependency graph

- **Files.** The import lines give 9,477 files and 22,454 imports. The only external imports are Mathlib and Lean core.
- **Declarations, from the compiled Lean.** The graph records references in elaborated types and proof terms read from the compiled `.olean` files: 2.26 million references, including implicit instances, coercions and other inserted terms. Generated auxiliary constants are attributed to the declaration that owns them. References in types are distinguished from references in proofs.
- **Exact comparison roots.** The comparison uses all seventeen names in the pinned [headline list](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/verification/joint-headlines.txt). These include `YangMills.jointExistence`, `YangMills.constructed`, the SU(2) results, contact and comparison results, and `YM.SharpGram.habitat` with its related results. It is a union of their reachable sets, not the closure of the public theorem alone.
- **Comparison with OpenAI's record.** The released [declaration-usage table](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/verification/declaration-usage.tsv) records 100,151 reached constants, including auxiliaries, or 74,115 declarations after attribution to owners. Our graph reaches 74,093 declarations from the same roots. The sets differ by 50: 36 structure constructors reached through recursors in the record, and 14 small definitions reached through shared auxiliary constants. These counts use a different convention from the kernel replay count above.
- **Limits of the comparison.** Agreement of reachable sets tests coverage at those roots. It does not check every reference edge, turn declaration references into mathematical prerequisites, or validate the English explanations. The unit assignment and size tables have their own counting scope; see the [data](data/).
- **The earlier graph, from source text.** Until 11 November the map used source text, corrected with OpenAI's record. Of its 0.96 million references, about 57,000 resolved to the wrong declarations; the compiled graph added 1.36 million missing references, nearly all implicit. One unit dependency had been missing (V.3 on II.1), and some earlier links rested on wrongly resolved names: for instance, III.7 does not build on IV.1, V.1, V.2 or VI.1. The unit pages now use the compiled graph for declaration references.

## 2. Coarse-graining

The declaration graph is reduced in four steps. Inclusion in the unit assignment table should not itself be read as a claim of reachability from `YangMills.jointExistence`.

1. **Ownership.** Within a chosen set of roots, helpers reached only through one result are folded into that result, using the dominator tree.
2. **Scales.** A result is retained at scale M when its proof and folded helpers occupy at least M lines. Scales from 100 to 3,200 lines give increasingly coarse views.
3. **Shared material.** Material used by many results is grouped by source folders and similarity of use, much of it in the renormalization-group estimates.
4. **Units.** Groups are cut and merged into thirty-two mathematically coherent units. A unit's declaration allocation and its explanatory subject can differ. The [assignment table](data/declaration-units.tsv) records allocation; the [unit index](outline/units.md) describes the questions the outlines address. References between units can occur in both directions because each unit contains several declarations; this does not imply a circular formal proof.

## 3. Key statements

- **Grouping and ranking.** Results are grouped with single-use helpers, variants and restatements, then ranked by proof size, documentation and reuse.
- **Readers.** Two independent AI readers (Claude Sonnet) read 2,424 candidate statements in 106 coherent groups. Each assigned an importance label (main result, key result, technical lemma or bookkeeping) and wrote a one-sentence explanation.
- **Agreement.** Cohen's κ = 0.72 measures agreement on “main or key” versus the other importance labels. It is not a measured accuracy rate for the mathematical summaries, nor a probability that a theorem is correct.
- **Selection.** The 989 selected key statements include numbered results and those rated main or key.
- **Earlier test.** On the separate Navier–Stokes formalization, selection matched the human-written paper about twice as well as graph ranking alone, and 14 of 15 sampled sentences were accurate. Those spot checks were not performed on these Yang–Mills summaries and give no measured accuracy rate for this repository.

## Statement and explanation checks

The [statement page](statement.md) transcribes the public theorem, its definitions, quantifiers and qualifications against the pinned Lean. The extra conclusions D1–D16 have a different scope: as that page records, D3 and D5–D15 are summarized from definitions and comments and were not all unfolded to the last definition. This comparison is an AI-assisted interpretation of formal text, separate from a kernel check and from an independent mathematical reading of the proof.

The glossary was written from definitions, fields and uses. Its *certain*, *probable* and *tentative* labels describe the strength of that interpretation. They are not unit review statuses or certificates of mathematical correctness. The architecture and work-item descriptions likewise need to be read with their linked sources and qualifications.

## 5. The unit outlines and the summary

### Unit outline status

Each outline has a place in a three-round review. All outlines are published; the [index](outline/units.md) gives their current statuses.

| Status | Review described by the label | Limit |
|---|---|---|
| **Draft** | Claude Sonnet writes propositions, hypotheses, strategy and proof sketches from the source and key statements. | The explanation has not completed the next two reviews. |
| **Checked** | Claude Opus compares numbered statements with the linked Lean, including hypotheses and quantifiers, reads the main proof steps, and corrects and rewrites the account. | Subsidiary estimates may remain at statement level; see the unit's “What remains unexplained” section. |
| **Edited** | A GPT model makes a further comparison with the Lean and edits the exposition. | This is not a complete independent human proof review; local limitations still apply. |

The second round found dropped hypotheses and overbroad statements in the first two units. It also found that the coupling's one-loop coefficient is computed in the proof, where the draft had described it as assumed. The labels record review of exposition; a draft outline does not mean the linked formal result is unproved.

The summary was written from the outlines by a GPT model and edited by Claude Opus. It is revised as the outlines improve. Human mathematical judgment remains needed to assess whether these explanations give a satisfactory account of the construction; the manuscript being written in public is [under construction](https://github.com/scottnarmstrong/yang-mills-manuscript).

## Published evidence and tools

The [data directory](data/) contains the published unit, declaration-assignment and key-statement tables. The source's verification programs and logs linked above are available at the fixed commit. The separate programs used here to extract and group the graph and select statements were tested on the earlier Navier–Stokes formalization; they have been announced for publication but are not yet included in this repository. References to unpublished working analyses are not reproducible evidence for readers.

[Report a correction](https://github.com/scottnarmstrong/yang-mills-informalization/issues) with the page, heading, quoted sentence and proposed correction or pinned Lean reference.

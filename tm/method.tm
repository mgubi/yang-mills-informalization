<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|index.tm><ym-nav-sep><hlink|The
  theorem|statement.tm><ym-nav-sep><hlink|The proof in one
  reading|summary.tm><ym-nav-sep><hlink|Architecture|outline/index.tm><ym-nav-sep><hlink|Units|outline/units.tm><ym-nav-sep><hlink|Manuscript|manuscript/index.tm><ym-nav-sep><hlink|Glossary|glossary.tm><ym-nav-sep><hlink|FAQ|faq.tm><ym-nav-sep><hlink|Work
  items|outline/work-items.tm><ym-nav-sep><hlink|Data|data/index.tm><ym-nav-sep><ym-nav-here|Method><ym-nav-sep><hlink|Provenance|provenance.tm><ym-nav-sep><hlink|Changes|CHANGELOG.tm>>

  <ym-title|How the map was made><label|how-the-map-was-made>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Source
    compilation and kernel checking> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1. The
    dependency graph> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2.
    Coarse-graining> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3. Key
    statements> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Statement and
    explanation checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. The unit
    outlines and the summary> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <with|par-left|1tab|Unit outline status
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Published
    evidence and tools> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>
  </table-of-contents>

  This page separates checking the formal proof, interpreting its statement,
  extracting declaration references and reviewing the explanations. The
  source is fixed at commit <hlink|<verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464>.
  The <hlink|FAQ evidence table|faq.tm#what-each-check-establishes> gives the
  scope of each check.

  <section|Source compilation and kernel checking><label|source-compilation-and-kernel-checking>

  The released source uses Lean 4.32.0 and pinned external libraries. Its
  <hlink|verification log|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/verification/joint-check.log>
  records a type comparison for <verbatim|YangMills.jointExistence>, an axiom
  check for seventeen named results, and a successful kernel replay of
  100,168 project declarations reachable from those results. It reports only
  <verbatim|propext>, <verbatim|Classical.choice> and <verbatim|Quot.sound>
  as endpoint axioms. The <hlink|checking
  program|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/VerifyJoint.lean>
  compares the solution with a separately loaded reference and replays
  project declarations with only external libraries initially present.

  These are checks of formal declarations and proof terms. They do not
  establish that an English statement expresses the intended physics, that an
  outline explains every estimate, or that the mass-gap problem has been
  solved. The placeholder in the reference <verbatim|Challenge.lean> is
  separate from the solution's imports; the source's <hlink|verification
  account|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/README.md#verification>
  explains this distinction.

  To rebuild the project from source, use a fresh checkout without the
  precompiled project archive. The following follows the <hlink|source
  verification instructions|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/README.md#verification>;
  it downloads compiled dependencies, compiles the project and runs the
  separate checks:

  <\shell-code>
    git clone https://github.com/yang-mills-group/OpenAI-YM-20261028

    cd OpenAI-YM-20261028

    git checkout 3456e5e75cf8d4cd558955a5c7638fba2d68f464

    lake exe cache get

    lake build WilsonReference WilsonConstruction

    lake env lean -j1 -DmaxHeartbeats=0 -DmaxRecDepth=4096 VerifyJoint.lean

    lake env lean -j1 -DmaxHeartbeats=0 verification/Usage.lean

    lake env lean -j1 verification/CompactCheck.lean
  </shell-code>

  The build targets are specified in the pinned <hlink|Lake
  file|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/lakefile.toml>.
  Expected messages from <verbatim|VerifyJoint.lean> include
  <verbatim|TYPE_MATCH>, <verbatim|ENDPOINT_AXIOMS> and
  <verbatim|REPLAY_PASS>; inspect the complete output and exit status. This
  recipe still trusts the downloaded external libraries. The separate
  <hlink|compiled project release|https://github.com/scottnarmstrong/yang-mills-informalization/releases/tag/lean-build-3456e5e>
  is convenient for exploring the proof, but loading it and finding all build
  targets up to date does not independently recompile the project. A checksum
  checks the downloaded archive against its published digest.

  <section|1. The dependency graph><label|1-the-dependency-graph>

  <\itemize-minus>
    <item><strong|Files.> The import lines give 9,477 files and 22,454
    imports. The only external imports are Mathlib and Lean core.

    <item><strong|Declarations, from the compiled Lean.> The graph records
    references in elaborated types and proof terms read from the compiled
    <verbatim|.olean> files: 2.26 million references, including implicit
    instances, coercions and other inserted terms. Generated auxiliary
    constants are attributed to the declaration that owns them. References in
    types are distinguished from references in proofs.

    <item><strong|Exact comparison roots.> The comparison uses all seventeen
    names in the pinned <hlink|headline list|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/verification/joint-headlines.txt>.
    These include <verbatim|YangMills.jointExistence>,
    <verbatim|YangMills.constructed>, the SU(2) results, contact and
    comparison results, and <verbatim|YM.SharpGram.habitat> with its related
    results. It is a union of their reachable sets, not the closure of the
    public theorem alone.

    <item><strong|Comparison with OpenAI's record.> The released
    <hlink|declaration-usage table|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/verification/declaration-usage.tsv>
    records 100,151 reached constants, including auxiliaries, or 74,115
    declarations after attribution to owners. Our graph reaches 74,093
    declarations from the same roots. The sets differ by 50: 36 structure
    constructors reached through recursors in the record, and 14 small
    definitions reached through shared auxiliary constants. These counts use
    a different convention from the kernel replay count above.

    <item><strong|Limits of the comparison.> Agreement of reachable sets
    tests coverage at those roots. It does not check every reference edge,
    turn declaration references into mathematical prerequisites, or validate
    the English explanations. The unit assignment and size tables have their
    own counting scope; see the <hlink|data|data/index.tm>.

    <item><strong|The earlier graph, from source text.> Until 11 November the
    map used source text, corrected with OpenAI's record. Of its 0.96 million
    references, about 57,000 resolved to the wrong declarations; the compiled
    graph added 1.36 million missing references, nearly all implicit. One
    unit dependency had been missing (V.3 on II.1), and some earlier links
    rested on wrongly resolved names: for instance, III.7 does not build on
    IV.1, V.1, V.2 or VI.1. The unit pages now use the compiled graph for
    declaration references.
  </itemize-minus>

  <section|2. Coarse-graining><label|2-coarse-graining>

  The declaration graph is reduced in four steps. Inclusion in the unit
  assignment table should not itself be read as a claim of reachability from
  <verbatim|YangMills.jointExistence>.

  <\enumerate>
    <item><strong|Ownership.> Within a chosen set of roots, helpers reached
    only through one result are folded into that result, using the dominator
    tree.

    <item><strong|Scales.> A result is retained at scale M when its proof and
    folded helpers occupy at least M lines. Scales from 100 to 3,200 lines
    give increasingly coarse views.

    <item><strong|Shared material.> Material used by many results is grouped
    by source folders and similarity of use, much of it in the
    renormalization-group estimates.

    <item><strong|Units.> Groups are cut and merged into thirty-two
    mathematically coherent units. A unit's declaration allocation and its
    explanatory subject can differ. The <hlink|assignment
    table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/declaration-units.tsv>
    records allocation; the <hlink|unit index|outline/units.tm> describes the
    questions the outlines address. References between units can occur in
    both directions because each unit contains several declarations; this
    does not imply a circular formal proof.
  </enumerate>

  <section|3. Key statements><label|3-key-statements>

  <\itemize-minus>
    <item><strong|Grouping and ranking.> Results are grouped with single-use
    helpers, variants and restatements, then ranked by proof size,
    documentation and reuse.

    <item><strong|Readers.> Two independent AI readers (Claude Sonnet) read
    2,424 candidate statements in 106 coherent groups. Each assigned an
    importance label (main result, key result, technical lemma or
    bookkeeping) and wrote a one-sentence explanation.

    <item><strong|Agreement.> Cohen's \<kappa\> = 0.72 measures agreement on
    \Pmain or key\Q versus the other importance labels. It is not a measured
    accuracy rate for the mathematical summaries, nor a probability that a
    theorem is correct.

    <item><strong|Selection.> The 989 selected key statements include
    numbered results and those rated main or key.

    <item><strong|Earlier test.> On the separate Navier\UStokes
    formalization, selection matched the human-written paper about twice as
    well as graph ranking alone, and 14 of 15 sampled sentences were
    accurate. Those spot checks were not performed on these Yang\UMills
    summaries and give no measured accuracy rate for this repository.
  </itemize-minus>

  <section|Statement and explanation checks><label|statement-and-explanation-checks>

  The <hlink|statement page|statement.tm> transcribes the public theorem, its
  definitions, quantifiers and qualifications against the pinned Lean. The
  extra conclusions D1\UD16 have a different scope: as that page records, D3
  and D5\UD15 are summarized from definitions and comments and were not all
  unfolded to the last definition. This comparison is an AI-assisted
  interpretation of formal text, separate from a kernel check and from an
  independent mathematical reading of the proof.

  The glossary was written from definitions, fields and uses. Its
  <em|certain>, <em|probable> and <em|tentative> labels describe the strength
  of that interpretation. They are not unit review statuses or certificates
  of mathematical correctness. The architecture and work-item descriptions
  likewise need to be read with their linked sources and qualifications.

  <section|5. The unit outlines and the summary><label|5-the-unit-outlines-and-the-summary>

  <subsection|Unit outline status><label|unit-outline-status>

  Each outline has a place in a three-round review. All outlines are
  published; the <hlink|index|outline/units.tm> gives their current statuses.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Status>>|<cell|<strong|Review
  described by the label>>|<cell|<strong|Limit>>>|<row|<cell|<strong|Draft>>|<cell|Claude
  Sonnet writes propositions, hypotheses, strategy and proof sketches from
  the source and key statements.>|<cell|The explanation has not completed the
  next two reviews.>>|<row|<cell|<strong|Checked>>|<cell|Claude Opus compares
  numbered statements with the linked Lean, including hypotheses and
  quantifiers, reads the main proof steps, and corrects and rewrites the
  account.>|<cell|Subsidiary estimates may remain at statement level; see the
  unit's \PWhat remains unexplained\Q section.>>|<row|<cell|<strong|Edited>>|<cell|A
  GPT model makes a further comparison with the Lean and edits the
  exposition.>|<cell|This is not a complete independent human proof review;
  local limitations still apply.>>>>>

  The second round found dropped hypotheses and overbroad statements in the
  first two units. It also found that the coupling's one-loop coefficient is
  computed in the proof, where the draft had described it as assumed. The
  labels record review of exposition; a draft outline does not mean the
  linked formal result is unproved.

  The summary was written from the outlines by a GPT model and edited by
  Claude Opus. It is revised as the outlines improve. Human mathematical
  judgment remains needed to assess whether these explanations give a
  satisfactory account of the construction; the manuscript being written in
  public is <hlink|under construction|manuscript/index.tm>.

  <section|Published evidence and tools><label|published-evidence-and-tools>

  The <hlink|data directory|data/index.tm> contains the published unit,
  declaration-assignment and key-statement tables. The source's verification
  programs and logs linked above are available at the fixed commit. The
  separate programs used here to extract and group the graph and select
  statements were tested on the earlier Navier\UStokes formalization; they
  have been announced for publication but are not yet included in this
  repository. References to unpublished working analyses are not reproducible
  evidence for readers.

  <hlink|Report a correction|https://github.com/scottnarmstrong/yang-mills-informalization/issues>
  with the page, heading, quoted sentence and proposed correction or pinned
  Lean reference.
</body>

<\initial>
  <\collection>
    <associate|html-title|How the map was made \U Yang\UMills
    informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-the-dependency-graph|<tuple|2|2>>
    <associate|2-coarse-graining|<tuple|3|3>>
    <associate|3-key-statements|<tuple|4|3>>
    <associate|5-the-unit-outlines-and-the-summary|<tuple|6|4>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|3>>
    <associate|auto-4|<tuple|4|3>>
    <associate|auto-5|<tuple|5|3>>
    <associate|auto-6|<tuple|6|4>>
    <associate|auto-7|<tuple|6.1|4>>
    <associate|auto-8|<tuple|7|4>>
    <associate|how-the-map-was-made|<tuple|?|1>>
    <associate|published-evidence-and-tools|<tuple|7|4>>
    <associate|source-compilation-and-kernel-checking|<tuple|1|1>>
    <associate|statement-and-explanation-checks|<tuple|5|3>>
    <associate|unit-outline-status|<tuple|6.1|4>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Source
      compilation and kernel checking> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1.
      The dependency graph> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2.
      Coarse-graining> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3.
      Key statements> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Statement
      and explanation checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      The unit outlines and the summary> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Unit outline status
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Published
      evidence and tools> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../../outline/index.tm><ym-nav-sep><hlink|Units|../../outline/units.tm><ym-nav-sep><hlink|Manuscript|../index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../../outline/work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-title|Source migration and attribution \V inherited adaptations in
  HumanizeYM_v2><label|source-migration-and-attribution--inherited-adaptations-in-humanizeym_v2>

  The base is Scott Armstrong, <hlink|<em|Yang\UMills
  informalization>|https://github.com/scottnarmstrong/yang-mills-informalization/tree/daf1db452866dd773b17aa955d534e56196a4efc>,
  November 13, 2026 draft, commit <verbatim|daf1db452866dd773b17aa955d534e56196a4efc>,
  Apache License 2.0. HumanizeYM_v2 revises that draft for exposition and
  corrects several local mathematical arguments. No authorship of the
  original Lean formalization is claimed. Original source notices and
  third-party notices remain applicable.

  The identified adaptations derive from contributors to Martin Hairer's
  <hlink|<verbatim|humanise-yang-mills>|https://github.com/hairer/humanise-yang-mills/tree/ec39889740f4409441b27a832c5c25ed3b329faf>,
  commit <verbatim|ec39889740f4409441b27a832c5c25ed3b329faf>. Except where
  other notices apply, its original material is licensed <hlink|CC BY
  4.0|https://creativecommons.org/licenses/by/4.0/>. Its README and
  <verbatim|LICENSE> specify that imported <verbatim|Lean/> material has
  separate upstream terms. The two source licenses are not merged or
  relabelled. This directory contains byte-identical <verbatim|LICENSE> and
  <verbatim|Scott source CITATION.cff> from the Scott source and
  <verbatim|LICENSE-HUMANISE-CC-BY-4.0> from Humanise; their hashes match the
  pinned copies. Humanise source paths below are relative to the pinned
  upstream repository.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Destination
  in Scott-based revision>>|<cell|<strong|Adaptation and precise
  source>>|<cell|<strong|Review and limitations>>>|<row|<cell|<verbatim|part1/08-correspondence.tex>,
  <verbatim|sec:public-witness>>|<cell|Compressed and adapted from
  <verbatim|manuscript/existence/statement.tex>,
  <verbatim|rem:ex-target-adequacy> and <verbatim|prop:ex-target-free-witness>:
  generalized free seed, unit/double-unit repair, constant-insertion
  family.>|<cell|G Sol checked Q0\UQ6 and the local example. It illustrates
  the public specification, not the stronger construction; no independent
  formal replay was performed.>>|<row|<cell|<verbatim|part2/B-section.tex>,
  B2 Steps 4 and 6, <verbatim|eq:B-transfer-columns> and
  <verbatim|eq:B-root-centred>>|<cell|The native non-diagonal two-form
  transport, pole cancellation and counting normalization are adapted from
  <verbatim|manuscript/existence/kernel-transport-identities.tex:80\U123,135\U236,253\U287>;
  coefficient and strip bounds from <verbatim|free-kernel-components.tex>,
  <verbatim|prop:ex-lattice-wire-entrywise-bound>, and
  <verbatim|free-kernel-estimates.tex>, <verbatim|thm:ex-lattice-wire-tower-strip>;
  the compatible two-sided exterior lift and positive inverse amendment from
  <verbatim|curvature-horizon-producer.tex:81\U101,138\U247>. The
  rooted/centered representatives are reconciled by a joint gauge
  transformation at fixed external field, using a periodic trace-covariance
  scalar lift.>|<cell|B Sol, Hemmingway and Enterprise independently checked
  the algebra and source match. The earlier component-diagonal transfer fails
  the required curl identity and positive defect. The replacement is accepted
  at the free-kernel scope; B Sol independently signed off on final source
  <verbatim|d4e01ff04628e60c8b10313d8e36529288d2307078834d458d027b64195ad01f>.
  The selected interacting-sector and uniform inserted-vertex inputs remain
  separate. No Lean compilation is certified.>>|<row|<cell|<verbatim|part2/C-section.tex>,
  C6 Step 1>|<cell|Fixed-ratio nonprincipal alias/longitudinal Ward proof and
  principal normalization from <verbatim|manuscript/existence/quadratic-pole-transport.tex:58\U155>.>|<cell|A
  Sol reviewed the C-side calculation; B7's actual uniform inserted-strip
  supplier remains open.>>|<row|<cell|<verbatim|part2/C-section.tex>, C7
  after <verbatim|eq:C-integrand>>|<cell|Marked left-coordinate chain rule,
  regulator and trajectory estimates from
  <verbatim|manuscript/existence/annulus-same-data-binding.tex:175\U248,263\U410>
  and <verbatim|manuscript/existence/annulus-fleet-face-estimates.tex:121\U197,459\U813>.>|<cell|A
  Sol checked the C-side marked vertices and shell calculation; uniform
  blocked-determinant strip and reflected-healthy-chart estimates remain open
  at their callers.>>|<row|<cell|<verbatim|part2/C-section.tex>,
  finite-period recording paragraph>|<cell|Adapted raw-versus-normalized
  factors, site count and Fourier grid-to-integral error mechanism from
  <verbatim|manuscript/existence/annulus-recording-yield.tex:74\U149>,
  translated to the blocked coarse Bloch grid.>|<cell|The finite-period
  uniform marked-strip and derivative bounds remain conditional; matching of
  jets is not equality of full actions.>>|<row|<cell|<verbatim|part2/E-Gaussian-sources.tex>,
  <verbatim|lem:E-source-integral>>|<cell|Axial tree and four wrap-link
  elimination from <verbatim|manuscript/existence/rank-root-normalization.tex:47\U110>.>|<cell|D
  Sol checked finite-side combinatorics and general indexing; separate
  same-sample and normalized-source suppliers remain
  open.>>|<row|<cell|<verbatim|part2/G-section.tex>, <verbatim|lem:G3.1> Step
  3>|<cell|Bochner strong-differentiation argument from
  <verbatim|manuscript/existence/physical-ward-analytic-continuation.tex:43\U54>.>|<cell|F
  Sol accepted the local vector argument; its upstream comparison inputs
  remain conditional.>>|<row|<cell|<verbatim|part2/G-section.tex>,
  <verbatim|lem:G-collinear-flux>>|<cell|Compact-flux exposition from
  <verbatim|manuscript/existence/physical-ward-propagation.tex:369\U435> and
  its expansion around <verbatim|eq:ward-shell-budget> in an intermediate
  adaptation. The signed bridge was worked out in that draft, not copied
  verbatim from the pinned prose.>|<cell|F Sol checked the focused signed
  bridge. Formal suppliers in the area F handoff are separately consulted
  source, with their own notices.>>|<row|<cell|<verbatim|part2/H-section.tex>,
  <verbatim|lem:H1.3>>|<cell|Bounded extension and evaluation of the
  collision-free operator-valued shell integral from
  <verbatim|manuscript/existence/phase-ward-inheritance.tex>, near
  <verbatim|prop:phase-ward-inheritance>.>|<cell|F Sol accepted the local
  bounded-evaluation proof; positivity or multiplicativity outside the phase
  algebra is not asserted.>>|<row|<cell|<verbatim|part2/J-section.tex>,
  <verbatim|lem:J-power-separated> Step 3>|<cell|Whole-segment OPE slot
  comparison from <verbatim|manuscript/existence/ope-grid.tex>,
  <verbatim|eq:ope-interpolation-slot>, re-expressed in Scott
  objects.>|<cell|E Sol checked the local derivative identity;
  selected-family marked and quotient suppliers remain open.>>>>>

  The Humanise file <verbatim|manuscript/existence/stationary-germ-symmetry.tex:83\U165>
  was consulted as a related antecedent for gauge versus signed covariance. A
  confirms that the actual C argument was formulated from Scott B1/B3/B4 and
  does not port that passage verbatim. The formal Lean files cited in the
  area handoffs are separately scoped primary-source comparisons, not
  automatically CC BY prose adaptations.

  The archive <verbatim|blueprint/units/YM-000026/handoff/results/G01/formal/FreeField/Main.lean>
  theorem <verbatim|YangMills.jointExistence_of_freeField> and its adjacent
  README report a distinct zero-tag/zero-actor formal witness. The prose
  unit/double-unit construction is not represented as that same
  kernel-checked term, and this team has not rerun the archive's reported
  checks. The formal files retain their own notices and licensing.

  This is the area-by-area adaptation register for the review snapshot. It
  records the independently reviewed local contributions and preserves the
  separate unresolved upstream conditions; it does not certify the full proof
  or imply that consulted formal code was relicensed.
</body>

<\initial>
  <\collection>
    <associate|html-title|Source migration and attribution \V inherited
    adaptations in HumanizeYM_v2 \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|source-migration-and-attribution--inherited-adaptations-in-humanizeym_v2|<tuple|?|1>>
  </collection>
</references>
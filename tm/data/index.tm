<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../index.tm><ym-nav-sep><hlink|The
  theorem|../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../summary.tm><ym-nav-sep><hlink|Architecture|../outline/index.tm><ym-nav-sep><hlink|Units|../outline/units.tm><ym-nav-sep><hlink|Glossary|../glossary.tm><ym-nav-sep><hlink|FAQ|../faq.tm><ym-nav-sep><hlink|Work
  items|../outline/work-items.tm><ym-nav-sep><ym-nav-here|Data><ym-nav-sep><hlink|Method|../method.tm><ym-nav-sep><hlink|Provenance|../provenance.tm><ym-nav-sep><hlink|Changes|../CHANGELOG.tm>>

  <ym-title|Data dictionary><label|data-dictionary>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Counting
    scopes> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <with|par-left|1tab|Roots and overlapping closures
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2>>

    <with|par-left|1tab|Ownership and lines
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|units.tsv>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <with|par-left|1tab|Code dependencies
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|declaration-units.tsv>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|key-statements.tsv>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Outline status>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Limits and
    reuse> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>
  </table-of-contents>

  These tables describe the <hlink|unit map|../outline/units.tm> of the Lean
  source at commit <hlink|<verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464>.
  <strong|Data version: 2026-11-11-r3.> The version identifies this
  documented table format and census; it is separate from the source commit
  and from the review status of an outline.

  Every file in this directory:

  <\itemize-minus>
    <item><hlink|README.md|index.tm>: this dictionary, the census and the
    limits of the data.

    <item><hlink|units.tsv|https://github.com/mgubi/yang-mills-informalization/blob/main/data/units.tsv>:
    one row per unit, with source-allocation statistics and code-reference
    lists.

    <item><hlink|declaration-units.tsv|https://github.com/mgubi/yang-mills-informalization/blob/main/data/declaration-units.tsv>:
    one source-allocation unit for each listed declaration name.

    <item><hlink|key-statements.tsv|https://github.com/mgubi/yang-mills-informalization/blob/main/data/key-statements.tsv>:
    selected statements, their unit identifiers, pinned Lean links,
    importance labels and short summaries.
  </itemize-minus>

  The three tables are UTF-8, tab-separated text with one header row. Counts
  exclude that header. Integers have no thousands separators. Semicolons
  separate unit identifiers within a field; an empty list is an empty field.
  An empty importance or link field means that no label or source location
  was available, respectively. No numerical field is a physical quantity.

  <section|Counting scopes><label|counting-scopes>

  The compiled dependency graph records references in elaborated Lean
  statements and proofs, including implicit instances, coercions and other
  inserted terms. It contains <strong|2,263,533 reference pairs> between
  retained project declarations. Dependencies on Lean core and Mathlib are
  outside these project counts. Project declarations can have names outside
  <verbatim|YM>: the used set contains 73,721 distinct <verbatim|YM> names,
  200 <verbatim|YangMills> names, 170 <verbatim|Vintage> names and two
  project declarations in <verbatim|Filter>. A namespace alone does not
  identify a declaration's library.

  The following quantities count different objects:

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|-1|2|2|cell-halign|r>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Quantity>>|<cell|<strong|Count>>|<cell|<strong|Meaning>>>|<row|<cell|Compiled
  used rows>|<cell|74,171>|<cell|Database rows with <verbatim|used=1>,
  including repeated names.>>|<row|<cell|Compiled used
  declarations>|<cell|74,093>|<cell|<strong|Distinct names> with
  <verbatim|used=1>, reached from the seventeen roots
  below.>>|<row|<cell|OpenAI's owner-attributed used
  declarations>|<cell|74,115>|<cell|Used and headline constants in the
  released usage record, after attribution to owning
  declarations.>>|<row|<cell|Source-allocation
  assignments>|<cell|74,204>|<cell|Distinct names in
  <verbatim|declaration-units.tsv>: the declarations reached from the roots
  when every auxiliary constant is attributed to the nearest enclosing
  project declaration with a source range (74,203 names; this attribution
  differs from the one behind the 74,093 above), plus one selected statement
  head outside them.>>|<row|<cell|Line-counted
  declarations>|<cell|58,552>|<cell|Canonical declarations with a positive
  attributed line count, summed in <verbatim|units.tsv>.>>|<row|<cell|Attributed
  source lines>|<cell|413,085>|<cell|Sum of <verbatim|units.tsv.lines> under
  the allocation's counting convention.>>|<row|<cell|Selected key
  statements>|<cell|989>|<cell|Rows in <verbatim|key-statements.tsv>, also
  the sum of <verbatim|units.tsv.key_statements>.>>|<row|<cell|Units /
  parts>|<cell|32 / 8>|<cell|Mathematical groupings in the map.>>>>>

  The used-row count has <strong|78 excess rows for repeated names>. The
  declaration count is obtained with <verbatim|COUNT(DISTINCT name)>, not
  <verbatim|COUNT(*)>:

  <\verbatim-code>
    SELECT COUNT(*) AS used_rows,

    \ \ \ \ \ \ \ COUNT(DISTINCT name) AS used_declarations

    FROM nodes

    WHERE used = 1;

    -- 74171 \| 74093
  </verbatim-code>

  The graph and <hlink|OpenAI's usage record|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/verification/declaration-usage.tsv>
  agree to within <strong|50 of about 74,000> owner-attributed declarations:
  their intersection has 74,079 names; 14 occur only in the graph and 36 only
  in the record. The symmetric difference is 50, although the totals differ
  by 22. Most of the 36 are constructors reached through recursors; the 14
  arise through shared auxiliary constants. This checks reached-name sets,
  not every edge, mathematical necessity, or the English account.

  In data version r2 the allocation was inherited from the earlier
  source-text map: it had 77,099 names, of which 3,430 lay outside the
  compiled used set, and 424 compiled-used names had no assignment. In r3,
  <verbatim|declaration-units.tsv> is restricted to the compiled used set and
  covers all of it (see <hlink|below|#declaration-unitstsv>). The line
  weights in <verbatim|units.tsv> and the statement selection are still those
  of the source-text map; <verbatim|units.tsv> (lines, declarations and code
  references) has not been recomputed for r3. The 438 newly allocated
  declarations change none of its code-reference lists. Accordingly,
  \P413,085 compiled-used lines\Q is not a description of these tables.

  For example, I.1 has 595 line-counted declarations but 1,136 assigned
  names; III.13 has 3,224 line-counted declarations but 4,212 assigned names.
  These are not competing estimates of the same quantity.

  <subsection|Roots and overlapping closures><label|roots-and-overlapping-closures>

  The roots are exactly those in the released
  <hlink|<verbatim|verification/joint-headlines.txt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/verification/joint-headlines.txt>:

  <\verbatim-code>
    YangMills.jointExistence

    YangMills.constructed

    YangMills.su2Simple

    YangMills.su2Theory

    YM.Nonperturbative.existence

    YM.Nonperturbative.continuum

    YM.Nonperturbative.continuum_with_position_tests

    YM.Contacts.Solstice.celestial

    YM.Pert.Position.finite_leading

    YM.Pert.Position.normalized_four

    YM.Pert.Parity.parityEndpoint

    YM.Pert.Parity.low_read

    YM.Pert.Asymptotics.comparison

    YM.SharpGram.habitat

    YM.SharpGram.inletFirst

    YM.SharpGram.outletFirst

    YM.Independent.Core.point
  </verbatim-code>

  The used set is the <strong|union> of their transitive reference closures,
  including the roots. Shared declarations are counted once; adding the sizes
  of individual closures would count overlaps repeatedly. This is broader
  than the closure of <verbatim|YangMills.constructed> alone and includes
  alternative constructions such as <verbatim|habitat>. The <hlink|public
  theorem and detailed construction|../statement.tm> and the 989 selected
  statements are also different objects.

  <subsection|Ownership and lines><label|ownership-and-lines>

  Two attributions must be distinguished. First, compiled auxiliary constants
  (such as generated proof terms, pattern matches and equation lemmas) are
  attributed to their owning declarations for extraction and for comparison
  with the usage record. This is why the record's 100,151 used constants,
  plus its 17 headline constants, are not a count of 100,168 separately
  written mathematical results.

  Second, the source map folds derived fields, constructors, projections and
  local helpers into canonical declarations, and can also fold instances and
  wrappers into the declarations they serve. The allocation's canonical line
  weights come from source ranges, with folded contributions attributed to
  the canonical declaration. These ranges include declaration statements and
  proofs and can include comments or blank lines within them. They are not
  proof-only line counts or a count of distinct physical file lines. A
  noncanonical assignment contributes zero additional lines and zero to
  <verbatim|units.tsv.declarations>; its name remains in
  <verbatim|declaration-units.tsv>.

  Each declaration has one allocation unit. For shared source groups,
  module-prefix rules choose the longest matching prefix; remaining cases use
  the existing construction-family attribution and defaults. The assignment
  is a way to organize and count source, not a proof that a result is
  mathematically explained only in that unit. The public two-column
  assignment table does not include canonical names or individual line
  weights; reconstructing those weights requires the underlying
  source-allocation tables as well.

  <section|units.tsv><label|unitstsv>

  Produced by combining the mathematical unit catalogue with the retained
  declaration allocation and canonical line weights, the retained
  selected-statement table, and references from the compiled dependency
  graph. The display title can be clarified to match the outline without
  moving declarations.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Column>>|<cell|<strong|Type
  / unit>>|<cell|<strong|Definition>>>|<row|<cell|<verbatim|unit>>|<cell|Identifier>|<cell|Unique
  unit identifier, such as <verbatim|III.10>. Its page is
  <verbatim|outline/units/III-10.md>.>>|<row|<cell|<verbatim|part>>|<cell|Roman
  numeral>|<cell|One of <verbatim|I>\U<verbatim|VIII>, the part containing
  the unit.>>|<row|<cell|<verbatim|title>>|<cell|Text>|<cell|Reader-facing
  title, also used on the generated unit page.>>|<row|<cell|<verbatim|lines>>|<cell|Nonnegative
  integer; attributed source lines>|<cell|Sum of canonical line weights
  assigned to this unit; noncanonical names add
  zero.>>|<row|<cell|<verbatim|declarations>>|<cell|Nonnegative integer;
  line-counted declarations>|<cell|Number of assigned canonical declarations
  with positive line weight. This is not the number of assigned names or the
  compiled used count.>>|<row|<cell|<verbatim|key_statements>>|<cell|Nonnegative
  integer; selected statements>|<cell|Number of rows of
  <verbatim|key-statements.tsv> assigned to this unit. Definitions and
  packages can be selected as well as theorems.>>|<row|<cell|<verbatim|builds_on>>|<cell|Semicolon-separated
  unit identifiers>|<cell|Other allocation units referenced by this unit's
  declarations, using the rule below. The public pages label this
  \PReferences to.\Q>>|<row|<cell|<verbatim|used_by>>|<cell|Semicolon-separated
  unit identifiers>|<cell|Reverse of <verbatim|builds_on>: units referencing
  declarations assigned here. The pages label this \PReferenced by.\Q>>>>>

  <subsection|Code dependencies><label|code-dependencies>

  For each reference <verbatim|src \<rightarrow\> dst> in the compiled graph,
  retain it if both names have an allocation, the source is its own canonical
  declaration in that allocation, and the units differ. The generator accepts
  reference labels <verbatim|exact> and <verbatim|dot>; in this database all
  accepted references are compiled pairs labelled <verbatim|exact>. It counts
  each retained declaration pair once, without weighting by occurrences,
  source lines, or whether the reference is in a statement or proof. Targets
  need not themselves be canonical; folded sources are not expanded again.

  A unit is listed in <verbatim|builds_on> only if at least <strong|25> such
  pairs go from the current unit to it. <verbatim|used_by> reverses those
  same pairs and threshold. Lists are ordered by decreasing pair count, with
  decreasing identifier as the tie-break. The numerical pair weights are not
  published in these columns. An empty field means no pair reaches the
  threshold, not that the unit is independent.

  These lists describe <strong|code references>, which may involve
  definitions, record types or additional fields carried through a
  construction. They are not mathematical prerequisites, a reading order or a
  minimal proof. Grouping declarations into units can create apparent cycles
  even when the declaration proof graph has none. A mathematical argument may
  be explained in one unit while its concluding declarations are allocated to
  another.

  Unit pages additionally show source folders and chains of results. A group
  is displayed for the unit with the largest share, and for any other unit
  with at least a 15% share. Shares use the weight \Pattributed lines plus
  one per assigned name.\Q The displayed line count is for the <strong|whole
  group>, including shares allocated elsewhere; it need not sum to the unit's
  <verbatim|lines>. Suppressing a percentage above 85% does not mean every
  declaration belongs to that unit. These inventories are not independent
  proof-closure sizes to add together.

  If a revised outline changes a citation range, the page retains previously
  published pinned links under \PAdditional source locations,\Q using the
  committed or existing page as a source-location catalogue. These links do
  not add statements or declarations to the tables, or supply mathematical
  claims independently of the current outline.

  <section|declaration-units.tsv><label|declaration-unitstsv>

  Rows are the declarations reached from the seventeen roots in the compiled
  graph, with generated auxiliary constants attributed to their owning
  declarations (74,203 names), plus the selected statement head
  <verbatim|YM.Extra.Iteration.extend>, which these roots do not reach. Rows
  are sorted by full declaration name. Private declarations appear under
  their compiled names, <verbatim|_private.\<less\>module\<gtr\>.0.\<less\>name\<gtr\>>.

  Units are assigned as follows:

  <\enumerate>
    <item>The allocation of data version r2 is kept wherever it names the
    declaration (69,170 names), including under the plain name of a private
    declaration (4,596 names). That allocation was produced from the
    source-text map, split and merged into the 32 mathematical units using
    source-group membership, module-prefix rules and construction-family
    defaults.

    <item>A declaration without such an allocation receives the unit most
    common among allocated declarations of its Lean module (288 names), or
    else of the nearest enclosing module prefix (146 names). Ties are broken
    by the units of its neighbours in the compiled graph (4 names). On
    private declarations, whose r2 unit is known, this rule reproduces the r2
    unit in 95% of cases.
  </enumerate>

  Compared with r2, 3,393 names were removed: 1,269 that are not compiled
  declarations (artefacts of the source-text map, such as section variables)
  and 2,124 compiled declarations not reached from the roots.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Column>>|<cell|<strong|Type
  / unit>>|<cell|<strong|Definition>>>|<row|<cell|<verbatim|declaration>>|<cell|Lean
  name>|<cell|Full declaration name, including its namespace. Unique within
  this table. Derived or folded names are retained; these are project
  declarations, not just theorem statements.>>|<row|<cell|<verbatim|unit>>|<cell|Identifier>|<cell|The
  single allocation unit; a foreign key to <verbatim|units.tsv.unit>.>>>>>

  This table has 74,204 rows and 74,204 distinct declaration names. It has no
  usage flag, canonical-owner column, mathematical-necessity flag or review
  status. In particular, allocating a declaration to III.13 does not say that
  the alternative Wilson family is used by <verbatim|YangMills.constructed>.

  <section|key-statements.tsv><label|key-statementstsv>

  Produced from the existing statement selection, retaining statements
  flagged as key and assigning each statement's head declaration through
  <verbatim|declaration-units.tsv>. Selection combines graph-ranked numbered
  results with importance judgements from independent readings. Statements
  can group helpers, variants and restatements. All 989 selected heads have
  an allocation. Ordering follows the existing numerical statement order
  within each unit, then renumbers locally; it is not a new topological sort
  of the compiled graph.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Column>>|<cell|<strong|Type
  / unit>>|<cell|<strong|Definition>>>|<row|<cell|<verbatim|number>>|<cell|Identifier>|<cell|Unique
  generated identifier <verbatim|K-\<less\>unit\<gtr\>.\<less\>position\<gtr\>>,
  such as <verbatim|K-I.1.6>; positions start at 1 within each unit. The
  <verbatim|K-> prefix separates this list from outline propositions and
  lemmas.>>|<row|<cell|<verbatim|unit>>|<cell|Identifier>|<cell|Allocation
  unit of the head declaration; a foreign key to
  <verbatim|units.tsv.unit>.>>|<row|<cell|<verbatim|lean_name>>|<cell|Lean
  name>|<cell|Full name of the selected head declaration; also present in
  <verbatim|declaration-units.tsv.declaration>.>>|<row|<cell|<verbatim|link>>|<cell|URL>|<cell|Pinned
  GitHub source file and starting line from the declaration database. Unit
  pages can link a longer line range. An empty value would mean the database
  has no source path.>>|<row|<cell|<verbatim|importance>>|<cell|Label, or
  empty>|<cell|<verbatim|main result> if either reading labels it
  <verbatim|MAIN>; otherwise <verbatim|key result> if either labels it
  <verbatim|KEY>; otherwise <verbatim|major result> for graph tier 1 or
  <verbatim|numbered result> for tier 2. Empty if none applies. This is an
  importance label, not a correctness or review
  label.>>|<row|<cell|<verbatim|summary>>|<cell|Text>|<cell|First available
  nonempty short summary in sorted reader-file order, falling back to the
  statement label. Public wording and GitHub math are normalized. This is not
  the full Lean statement or a completeness guarantee for its
  hypotheses.>>>>>

  The current importance labels are: 59 main results, 605 key results, five
  major results, 312 numbered results and eight empty labels. The selection
  flag comes from the retained statement table; it is not recomputed from the
  display label.

  Generated identifiers retain their position-based meaning only while the
  selected order is unchanged. For a durable citation, include the data
  version, full <verbatim|lean_name>, source commit and line link. The unit
  pages provide explicit anchors such as <verbatim|outline/units/I-1.md#k-i-1-6>.
  An outline proposition <verbatim|I.1.6> and key statement
  <verbatim|K-I.1.6> are different entries.

  <section|Outline status><label|outline-status>

  An outline's status is read from its accompanying status file; it is not
  inferred from declaration counts, importance labels or a successful Lean
  build.

  <\itemize-minus>
    <item><strong|Draft:> written from the Lean; the outline has not yet been
    checked against it.

    <item><strong|Checked:> checked against the linked Lean and rewritten;
    final editing remains.

    <item><strong|Edited:> checked against the linked Lean and edited; local
    limitations still apply.
  </itemize-minus>

  These describe review of the outline, not independent verification of every
  underlying analytic proof or certification of the generated key-statement
  summaries. Each unit links to what remains unexplained. See <hlink|the
  account of the checks|../method.tm> for their scope.

  <section|Limits and reuse><label|limits-and-reuse>

  Use the tables for locating declarations, comparing source allocations and
  finding the pinned formal statements. Use the outlines and their stated
  inputs for mathematical reading routes. Neither a code-reference edge nor
  an importance label establishes that an estimate is necessary, that a
  record field is consumed by the final conclusion, or that a source group
  can be removed. A missing entry can reflect the retained allocation, the
  25-reference threshold, or a missing source location.

  The public tables do not contain the compiled database, canonical weights
  or the original statement-selection inputs. Regenerating the graph,
  refreshing the allocation or rechecking an English claim requires those
  additional inputs; the tables alone do not reproduce those checks. Source
  links fix the Lean version, while outline statuses and descriptions may
  change. Cite the table version and consult the exact source for hypotheses
  and quantifiers.
</body>

<\initial>
  <\collection>
    <associate|html-title|Data dictionary \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1.1|3>>
    <associate|auto-3|<tuple|1.2|3>>
    <associate|auto-4|<tuple|2|4>>
    <associate|auto-5|<tuple|2.1|4>>
    <associate|auto-6|<tuple|3|5>>
    <associate|auto-7|<tuple|4|6>>
    <associate|auto-8|<tuple|5|6>>
    <associate|auto-9|<tuple|6|7>>
    <associate|code-dependencies|<tuple|2.1|4>>
    <associate|counting-scopes|<tuple|1|1>>
    <associate|data-dictionary|<tuple|?|1>>
    <associate|declaration-unitstsv|<tuple|3|5>>
    <associate|key-statementstsv|<tuple|4|6>>
    <associate|limits-and-reuse|<tuple|6|7>>
    <associate|outline-status|<tuple|5|6>>
    <associate|ownership-and-lines|<tuple|1.2|3>>
    <associate|roots-and-overlapping-closures|<tuple|1.1|3>>
    <associate|unitstsv|<tuple|2|4>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Counting
      scopes> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Roots and overlapping closures
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|Ownership and lines
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|units.tsv>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Code dependencies
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|declaration-units.tsv>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|key-statements.tsv>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Outline
      status> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Limits
      and reuse> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
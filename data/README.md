# Data dictionary

These tables describe the [unit map](../outline/units.md) of the Lean source at commit [`3456e5e75cf8d4cd558955a5c7638fba2d68f464`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464). **Data version: 2026-11-11-r2.** The version identifies this documented table format and census; it is separate from the source commit and from the review status of an outline.

Every file in this directory:

- [README.md](README.md): this dictionary, the census and the limits of the data.
- [units.tsv](units.tsv): one row per unit, with source-allocation statistics and code-reference lists.
- [declaration-units.tsv](declaration-units.tsv): one source-allocation unit for each listed declaration name.
- [key-statements.tsv](key-statements.tsv): selected statements, their unit identifiers, pinned Lean links, importance labels and short summaries.

The three tables are UTF-8, tab-separated text with one header row. Counts exclude that header. Integers have no thousands separators. Semicolons separate unit identifiers within a field; an empty list is an empty field. An empty importance or link field means that no label or source location was available, respectively. No numerical field is a physical quantity.

## Counting scopes

The compiled dependency graph records references in elaborated Lean statements and proofs, including implicit instances, coercions and other inserted terms. It contains **2,263,533 reference pairs** between retained project declarations. Dependencies on Lean core and Mathlib are outside these project counts. Project declarations can have names outside `YM`: the used set contains 73,721 distinct `YM` names, 200 `YangMills` names, 170 `Vintage` names and two project declarations in `Filter`. A namespace alone does not identify a declaration's library.

The following quantities count different objects:

| Quantity | Count | Meaning |
|---|---:|---|
| Compiled used rows | 74,171 | Database rows with `used=1`, including repeated names. |
| Compiled used declarations | 74,093 | **Distinct names** with `used=1`, reached from the seventeen roots below. |
| OpenAI's owner-attributed used declarations | 74,115 | Used and headline constants in the released usage record, after attribution to owning declarations. |
| Source-allocation assignments | 77,099 | Distinct names in `declaration-units.tsv`; this is an inherited allocation, not the compiled used set. |
| Line-counted declarations | 58,552 | Canonical declarations with a positive attributed line count, summed in `units.tsv`. |
| Attributed source lines | 413,085 | Sum of `units.tsv.lines` under the allocation's counting convention. |
| Selected key statements | 989 | Rows in `key-statements.tsv`, also the sum of `units.tsv.key_statements`. |
| Units / parts | 32 / 8 | Mathematical groupings in the map. |

The used-row count has **78 excess rows for repeated names**. The declaration count is obtained with `COUNT(DISTINCT name)`, not `COUNT(*)`:

```sql
SELECT COUNT(*) AS used_rows,
       COUNT(DISTINCT name) AS used_declarations
FROM nodes
WHERE used = 1;
-- 74171 | 74093
```

The graph and [OpenAI's usage record](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/verification/declaration-usage.tsv) agree to within **50 of about 74,000** owner-attributed declarations: their intersection has 74,079 names; 14 occur only in the graph and 36 only in the record. The symmetric difference is 50, although the totals differ by 22. Most of the 36 are constructors reached through recursors; the 14 arise through shared auxiliary constants. This checks reached-name sets, not every edge, mathematical necessity, or the English account.

The allocation and the compiled used set intersect in **73,669** names. There are **3,430** assigned names outside that used set and **424** compiled-used names without an assignment. Unit code-reference lists therefore do not cover the entire compiled graph. The allocation, its line weights and the statement selection were retained from the earlier source-text map when references were replaced by compiled references. They were not recomputed from `used=1` for this data version. Accordingly, “77,099 declarations used by the main theorem” and “413,085 compiled-used lines” are not descriptions of these tables.

For example, I.1 has 595 line-counted declarations but 1,136 assigned names; III.13 has 3,224 line-counted declarations but 4,212 assigned names. These are not competing estimates of the same quantity.

### Roots and overlapping closures

The roots are exactly those in the released [`verification/joint-headlines.txt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/verification/joint-headlines.txt):

```text
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
```

The used set is the **union** of their transitive reference closures, including the roots. Shared declarations are counted once; adding the sizes of individual closures would count overlaps repeatedly. This is broader than the closure of `YangMills.constructed` alone and includes alternative constructions such as `habitat`. The [public theorem and detailed construction](../statement.md) and the 989 selected statements are also different objects.

### Ownership and lines

Two attributions must be distinguished. First, compiled auxiliary constants (such as generated proof terms, pattern matches and equation lemmas) are attributed to their owning declarations for extraction and for comparison with the usage record. This is why the record's 100,151 used constants, plus its 17 headline constants, are not a count of 100,168 separately written mathematical results.

Second, the source map folds derived fields, constructors, projections and local helpers into canonical declarations, and can also fold instances and wrappers into the declarations they serve. The allocation's canonical line weights come from source ranges, with folded contributions attributed to the canonical declaration. These ranges include declaration statements and proofs and can include comments or blank lines within them. They are not proof-only line counts or a count of distinct physical file lines. A noncanonical assignment contributes zero additional lines and zero to `units.tsv.declarations`; its name remains in `declaration-units.tsv`.

Each declaration has one allocation unit. For shared source groups, module-prefix rules choose the longest matching prefix; remaining cases use the existing construction-family attribution and defaults. The assignment is a way to organize and count source, not a proof that a result is mathematically explained only in that unit. The public two-column assignment table does not include canonical names or individual line weights; reconstructing those weights requires the underlying source-allocation tables as well.

## units.tsv

Produced by combining the mathematical unit catalogue with the retained declaration allocation and canonical line weights, the retained selected-statement table, and references from the compiled dependency graph. The display title can be clarified to match the outline without moving declarations.

| Column | Type / unit | Definition |
|---|---|---|
| `unit` | Identifier | Unique unit identifier, such as `III.10`. Its page is `outline/units/III-10.md`. |
| `part` | Roman numeral | One of `I`–`VIII`, the part containing the unit. |
| `title` | Text | Reader-facing title, also used on the generated unit page. |
| `lines` | Nonnegative integer; attributed source lines | Sum of canonical line weights assigned to this unit; noncanonical names add zero. |
| `declarations` | Nonnegative integer; line-counted declarations | Number of assigned canonical declarations with positive line weight. This is not the number of assigned names or the compiled used count. |
| `key_statements` | Nonnegative integer; selected statements | Number of rows of `key-statements.tsv` assigned to this unit. Definitions and packages can be selected as well as theorems. |
| `builds_on` | Semicolon-separated unit identifiers | Other allocation units referenced by this unit's declarations, using the rule below. The public pages label this “References to.” |
| `used_by` | Semicolon-separated unit identifiers | Reverse of `builds_on`: units referencing declarations assigned here. The pages label this “Referenced by.” |

### Code dependencies

For each reference `src → dst` in the compiled graph, retain it if both names have an allocation, the source is its own canonical declaration in that allocation, and the units differ. The generator accepts reference labels `exact` and `dot`; in this database all accepted references are compiled pairs labelled `exact`. It counts each retained declaration pair once, without weighting by occurrences, source lines, or whether the reference is in a statement or proof. Targets need not themselves be canonical; folded sources are not expanded again.

A unit is listed in `builds_on` only if at least **25** such pairs go from the current unit to it. `used_by` reverses those same pairs and threshold. Lists are ordered by decreasing pair count, with decreasing identifier as the tie-break. The numerical pair weights are not published in these columns. An empty field means no pair reaches the threshold, not that the unit is independent.

These lists describe **code references**, which may involve definitions, record types or additional fields carried through a construction. They are not mathematical prerequisites, a reading order or a minimal proof. Grouping declarations into units can create apparent cycles even when the declaration proof graph has none. A mathematical argument may be explained in one unit while its concluding declarations are allocated to another.

Unit pages additionally show source folders and chains of results. A group is displayed for the unit with the largest share, and for any other unit with at least a 15% share. Shares use the weight “attributed lines plus one per assigned name.” The displayed line count is for the **whole group**, including shares allocated elsewhere; it need not sum to the unit's `lines`. Suppressing a percentage above 85% does not mean every declaration belongs to that unit. These inventories are not independent proof-closure sizes to add together.

If a revised outline changes a citation range, the page retains previously published pinned links under “Additional source locations,” using the committed or existing page as a source-location catalogue. These links do not add statements or declarations to the tables, or supply mathematical claims independently of the current outline.

## declaration-units.tsv

Produced from the retained source-allocation table, split and merged into the 32 mathematical units using source-group membership, module-prefix rules and construction-family defaults. Rows are sorted by full declaration name. There is one row per distinct assigned name, with no restriction to current `used=1` names.

| Column | Type / unit | Definition |
|---|---|---|
| `declaration` | Lean name | Full declaration name, including its namespace. Unique within this table. Derived or folded names are retained; these are project declarations, not just theorem statements. |
| `unit` | Identifier | The single allocation unit; a foreign key to `units.tsv.unit`. |

This table has 77,099 rows and 77,099 distinct declaration names. It has no usage flag, canonical-owner column, mathematical-necessity flag or review status. In particular, allocating a declaration to III.13 does not say that the alternative Wilson family is used by `YangMills.constructed`.

## key-statements.tsv

Produced from the existing statement selection, retaining statements flagged as key and assigning each statement's head declaration through `declaration-units.tsv`. Selection combines graph-ranked numbered results with importance judgements from independent readings. Statements can group helpers, variants and restatements. All 989 selected heads have an allocation. Ordering follows the existing numerical statement order within each unit, then renumbers locally; it is not a new topological sort of the compiled graph.

| Column | Type / unit | Definition |
|---|---|---|
| `number` | Identifier | Unique generated identifier `K-<unit>.<position>`, such as `K-I.1.6`; positions start at 1 within each unit. The `K-` prefix separates this list from outline propositions and lemmas. |
| `unit` | Identifier | Allocation unit of the head declaration; a foreign key to `units.tsv.unit`. |
| `lean_name` | Lean name | Full name of the selected head declaration; also present in `declaration-units.tsv.declaration`. |
| `link` | URL | Pinned GitHub source file and starting line from the declaration database. Unit pages can link a longer line range. An empty value would mean the database has no source path. |
| `importance` | Label, or empty | `main result` if either reading labels it `MAIN`; otherwise `key result` if either labels it `KEY`; otherwise `major result` for graph tier 1 or `numbered result` for tier 2. Empty if none applies. This is an importance label, not a correctness or review label. |
| `summary` | Text | First available nonempty short summary in sorted reader-file order, falling back to the statement label. Public wording and GitHub math are normalized. This is not the full Lean statement or a completeness guarantee for its hypotheses. |

The current importance labels are: 59 main results, 605 key results, five major results, 312 numbered results and eight empty labels. The selection flag comes from the retained statement table; it is not recomputed from the display label.

Generated identifiers retain their position-based meaning only while the selected order is unchanged. For a durable citation, include the data version, full `lean_name`, source commit and line link. The unit pages provide explicit anchors such as `outline/units/I-1.md#k-i-1-6`. An outline proposition `I.1.6` and key statement `K-I.1.6` are different entries.

## Outline status

An outline's status is read from its accompanying status file; it is not inferred from declaration counts, importance labels or a successful Lean build.

- **Draft:** written from the Lean; the outline has not yet been checked against it.
- **Checked:** checked against the linked Lean and rewritten; final editing remains.
- **Edited:** checked against the linked Lean and edited; local limitations still apply.

These describe review of the outline, not independent verification of every underlying analytic proof or certification of the generated key-statement summaries. Each unit links to what remains unexplained. See [the account of the checks](../method.md) for their scope.

## Limits and reuse

Use the tables for locating declarations, comparing source allocations and finding the pinned formal statements. Use the outlines and their stated inputs for mathematical reading routes. Neither a code-reference edge nor an importance label establishes that an estimate is necessary, that a record field is consumed by the final conclusion, or that a source group can be removed. A missing entry can reflect the retained allocation, the 25-reference threshold, or a missing source location.

The public tables do not contain the compiled database, canonical weights or the original statement-selection inputs. Regenerating the graph, refreshing the allocation or rechecking an English claim requires those additional inputs; the tables alone do not reproduce those checks. Source links fix the Lean version, while outline statuses and descriptions may change. Cite the table version and consult the exact source for hypotheses and quantifiers.

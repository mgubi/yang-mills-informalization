# How the manuscript is written

This page describes, in detail, how the [manuscript](README.md) is being written: who does what, what is checked, by whom,
against what, and what the checks do and do not establish. The process is still in use and is revised when it fails; the
changes are recorded at the end.

## 1. What is being written, and against what

The manuscript gives a complete natural-language proof of the result formalized in OpenAI's Lean proof of the construction
of four-dimensional quantum Yang–Mills theory, at the fixed commit
[`3456e5e`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464).
It has two parts:

- **Part I** (about 30 pages): the setting, the definitions, the main theorems, the principal statements on which the
  proof rests, each with the idea of its proof, and the complete deduction of the main theorems from them.
- **Part II** (about 120 pages): the proofs, in ten sections, numbered 10–19 after the nine sections of Part I.

**The authority is the Lean.** The manuscript claims nothing the Lean does not prove. A statement may be weaker than its
Lean counterpart, or stated in a more natural form, but never stronger. "The Lean" means the declarations that the main
theorem actually depends on, as computed from the compiled files (about 74,000 declarations; see the
[method](../method.md)). The source also contains alternative routes that the main theorem does not use; these are not
evidence for anything in the manuscript.

The rest of this repository (the [summary](../summary.md), the [unit outlines](../outline/units.md), the
[dependency graph](../method.md)) serves as a map for finding things in the Lean. It is never cited as evidence.

## 2. Why a process at all

The obvious approach is to ask a capable model to write the paper from the Lean. We tried that, and it failed in ways
that are easy to miss:

- **Statements take the shape of the formal code.** The first drafts were faithful but unreadable. Propositions ran
  to nearly a page because they copied the Lean's long conjunctions and packaging structures. One section was 92%
  definitions, one of them 776 words long. Those drafts were rejected.
- **Length grows when nobody measures it.** The unit outlines in this repository grew to 4.4 times their intended length
  over several rounds of review, because each round added detail and none measured the total.
- **Prose sounds true without being true.** An explanatory sentence ("this follows from the bound of Lemma X") can be
  plausible, fluent and wrong.
- **Conditions disappear quietly.** When a statement is shortened, a hypothesis or a binding of variables can be lost,
  and nothing breaks: the text still compiles and still reads well.
- **A model that wrote a proof is a poor judge of it.** It tends to confirm its own reading.

The process below is built against these failure modes. Much of it comes from an earlier project of the same kind, a
paper written from a completed Lean proof, where the same failures occurred.

## 3. Statements first: the spine

Before any prose is written, every statement of Part I is fixed in a single document, the *spine*:

- the definitions Part I needs;
- the main theorems: **Theorem A**, the existence statement exactly as formalized, and **Theorem B**, the detailed
  construction as far as the Lean proves it;
- fifteen principal statements, from the one-step renormalization bound (RG) to the contact extensions of the operator
  product expansion (CT);
- the deduction of Theorems A and B from them;
- the list of Part II lemmas that prove them.

Each statement is written in **natural form**: one result per statement, quantifiers first, conclusion displayed. The
objects it uses are set up in the text before it, and side conditions of the formal version go to Part II lemmas. A
**clause map** then checks that nothing was lost: every clause of the Lean's main statements is assigned to a statement
of the spine, and the union of the natural statements must equal what the Lean proves.

**Freezing.** The project lead approves the spine, after which the principal statements and the main theorems are frozen.
A frozen statement can change only through the **drift protocol**: the old text, the new text and the reason go to the
project lead, and nothing changes without approval. Part II lemmas are not frozen. They can be split, added or reworded
as the proofs are written, and every such change is recorded in a drift log.

## 4. Style rules (binding, partly enforced by a program)

| rule | limit |
|---|---|
| statement (theorem, proposition, lemma) | target 100 words, hard cap 150 |
| definition | target 120 words, hard cap 200 |
| ideas per statement | one |
| "there exists a family such that the following assertions hold" | never: the conditions go in the setup |
| definitions | concrete, by formula, with one sentence of purpose; never a translation of a Lean structure |
| Part II | about one numbered lemma per page; a proof longer than three pages is split at a genuine intermediate statement |
| standard results | cited exactly: name, hypotheses, numbering, checked against the source |
| Lean names, file paths, process vocabulary | never in the text |
| references between numbered items | always by cross-reference, never by a typed number |

The exposition follows the presentation of the renormalization group in the work of Bauerschmidt, Brydges and Slade, in
this order: the objects, the inductive step, the multiscale theorem, the continuum results, the deduction of the main
theorem, the constructions.

## 5. Who does what

| role | who | does |
|---|---|---|
| **project lead** | a person | sets the goals, approves the spine and every change to a frozen statement, reads each finished part and sets the level of detail and length |
| **editor** | an AI model (Claude) | writes the tasks, integrates proposals into the manuscript (the only one who edits it), runs the checks, keeps the records, decides on findings |
| **writers** | AI models (GPT-6.1 Sol, high or extra-high reasoning effort) | write *proposals* for one section at a time, in a separate directory; never edit the manuscript |
| **reviewers** | AI models (Claude Opus), each in a fresh context | read a frozen snapshot and report; never edit anything |

The separation is deliberate. Writers propose and the editor integrates, so that one reader sees the whole manuscript and
its notation stays consistent. Reviewers have no access to the writer's reasoning, only to the text, the spine and the
Lean, so they cannot inherit its mistakes.

## 6. The cycle for each section

1. **Task.** The editor writes the task: what the section must contain (its statements from the spine), its sources, its
   page allowance and the rules above. Over the allowance means not done.
2. **Proposal.** A writer drafts the section in its own directory. Alongside the text it delivers a table pairing each
   statement with the Lean declarations it rests on, notes recording what it could not do and its least certain
   sentence, and the results of its own checks.
3. **Integration.** The editor reads the proposal in context, integrates it into the manuscript, compiles, and runs the
   automatic checks.
4. **Frozen snapshot.** The section, everything before it, the spine and the style rules are copied into a snapshot with
   a manifest of SHA-256 hashes. A review verdict applies to that snapshot only.
5. **Independent reviews**, each by a separate reviewer:
   - **Owner of each principal statement.** One reviewer per statement. It reads the manuscript in order up to the
     statement before opening any source, then maps each clause to the spine and the Lean and tries to break it. It
     judges three criteria: (i) the statement is correct against the spine and the Lean; (ii) it can be understood from
     the text before it; (iii) it serves the statements that use it.
   - **Mathematical review** (Part II): every proof step is checked against the Lean. Is it correct, complete at the
     stated level of detail, and no stronger than what is proved? Gaps written around are the main target.
   - **Fresh reader:** an expert reader with no prior context, and no access to the Lean, reads the text linearly. It
     reports every place where it had to guess an object, a normalization, a quantifier or the next step, judges the
     length, and ends with a two-sentence summary of what the section proves. The summary is compared with what the
     section is meant to prove.
   - **Prose truth:** every explanatory sentence outside the statements is marked true, false or unsupported, with
     evidence. Every condition removed in a rewrite is traced to the places that used it.
6. **Response table.** Every finding gets a row: the finding, the decision (applied, or declined with a mathematical
   reason), the exact edit, and how it was checked. Findings are never deleted or rewritten. The fixes are made by a
   writer as a new proposal and integrated by the editor.
7. **Re-check.** The same reviewers check the new version against their own earlier findings and mark each one resolved
   or not resolved. They also check the reasons given for declining findings, and report anything the fixes broke.
8. **Delivery review.** A last reviewer checks:
   - that the compiled PDF matches the reviewed sources;
   - that every finding is closed or deferred to a named owner;
   - that every principal statement passes all three criteria;
   - that every proof address exists;
   - that all references resolve.

   It looks at every rendered page and states what its review does not establish.
9. **The project lead reads it.** Comments on level and length become binding style rules for the sections not yet
   written.

Part II starts with two **pilot sections**, one on the ultraviolet side (§12, path actions and the coupling reset) and
one on the infrared side (§15, infinite volume). They go through the whole cycle and are read by the project lead
before the other eight sections are written. Each later section then follows the same cycle.

## 7. Automatic checks

Run after every integration:

- **compilation:** no errors, no undefined or duplicate references, no overfull lines;
- **shape:** the word count of every statement and definition against the limits of §4;
- **vocabulary:** no Lean names, no file paths, no process words, no words on a list of habitual machine phrasing; the
  check also covers TeX comments;
- **Lean links:** every Lean name in the correspondence table must be among the declarations the main theorem depends
  on. For Part I: 657 rows, 807 names, all of them dependencies of the main theorem.

Passing these checks means none of these mechanical faults is present. It says nothing about whether the mathematics is
right.

## 8. Records

- **The statement register:** one row per numbered statement, giving its owner, mathematical status, review status, rendering
  status, where in Part II it is proved, and its open findings.
- **The correspondence table:** each numbered statement and definition, with the Lean declarations it corresponds to and
  the relation between them (direct, weaker, composition, cited, none). It will be published with the manuscript.
- **The response tables** of every review round, and the **drift log** of every change to the spine.

The working records (tasks, review reports, response tables, the statement register) are kept in a separate working repository.

## 9. What this has caught so far

Examples from the first rounds. None of them would have been caught by compiling the text:

- **Theorem B was weaker than the Lean.** As first written, it said that hierarchy data exist, not that they are the
  objects constructed. Its owner rejected it on criterion (i). The repair changes the wording of a frozen statement, so
  it goes to the project lead under the drift protocol.
- **A pilot section assumed what it had to prove.** The first draft of §15 used two inputs, the correction estimate and a
  rank comparison, as hypotheses with no statement to cite. The mathematical review found the Lean declarations that
  prove them. The revision states them as labelled lemmas matching the Lean.
- **A hypothesis was missing.** The first draft of §12 omitted a bound on a kinetic constant that the Lean carries
  explicitly. Without it, one of the section's identities cannot hold. The bound now appears in the definition, in Part I
  and in the table of constants.
- **The editor's own edits introduced errors**, and were caught in turn:
  - axiom labels stripped from definition titles during integration (Theorem A refers to them);
  - a sentence left broken by a deletion;
  - Part II numbers that collided with addresses used in Part I.

  The third led to the rule that numbered items are referred to only by cross-reference.
- **True-sounding prose that was false.** For example: a sentence attributing a smooth extension to the wrong
  estimate; a unit stated so that, read naturally, the axiom would be false for fields of positive degree.

## 10. What the process does and does not establish

- **It does establish** that every numbered statement has been compared, clause by clause, with the Lean declarations
  it rests on, by a reviewer who did not write it. It also establishes that every explanatory sentence has been checked
  for truth, and that every finding has a recorded decision.
- **It does not establish** correctness in the sense of a human referee's report. The reviewers are AI models; they are
  independent of the writers but not of each other's training, and they can share blind spots. The correctness of the
  *theorem* rests on the Lean, which is machine-checked. The faithfulness of the *manuscript* to the Lean is checked by
  the reviews above, not by a machine.
- **It is not finished.** Until a section is marked *checked* in the [status table](README.md#status), it is a draft.
  Corrections from readers are welcome as issues.

## Changes to this process

- **11 November 2026.** Statements first, in natural form, with the length limits of §4. This was adopted after the first
  drafts were rejected for their shape.
- **11 November 2026.** Numbered items in Part II are referred to only by cross-reference. Part II sections are numbered
  10–19, continuing the numbering of Part I.
- **11 November 2026.** After the first draft: (1) a **cross-section check** compares every place where one section cites
  another's result with what that result states, and mismatches are repaired on both sides (three rounds, the last confirming
  all items resolved); (2) an **independent referee review** of the whole manuscript (three referees, on Part I, Sections 10–14
  and Sections 15–19); every suggestion is **adjudicated** against the text and the Lean (accept, accept modified, reject, or left
  to the project lead) before writers apply it, and a confirmation review checks the applied changes; (3) main theorems are
  measured too, and a statement may cite at most four other results.

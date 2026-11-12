<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../index.tm><ym-nav-sep><hlink|The
  theorem|../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../summary.tm><ym-nav-sep><hlink|Architecture|../outline/index.tm><ym-nav-sep><hlink|Units|../outline/units.tm><ym-nav-sep><hlink|Manuscript|index.tm><ym-nav-sep><hlink|Glossary|../glossary.tm><ym-nav-sep><hlink|FAQ|../faq.tm><ym-nav-sep><hlink|Work
  items|../outline/work-items.tm><ym-nav-sep><hlink|Data|../data/index.tm><ym-nav-sep><hlink|Method|../method.tm><ym-nav-sep><hlink|Provenance|../provenance.tm><ym-nav-sep><hlink|Changes|../CHANGELOG.tm>>

  <ym-title|How the manuscript is written><label|how-the-manuscript-is-written>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1. What is
    being written, and against what> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2. Why a
    process at all> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3. Statements
    first: the spine> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4. Style rules
    (binding, partly enforced by a program)>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Who does
    what> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. The cycle
    for each section> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. Automatic
    checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|8. Records>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|9. What this
    has caught so far> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|10. What the
    process does and does not establish> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Changes to this
    process> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>
  </table-of-contents>

  This page describes, in detail, how the <hlink|manuscript|index.tm> is
  being written: who does what, what is checked, by whom, against what, and
  what the checks do and do not establish. The process is still in use and is
  revised when it fails; the changes are recorded at the end.

  <section|1. What is being written, and against
  what><label|1-what-is-being-written-and-against-what>

  The manuscript gives a complete natural-language proof of the result
  formalized in OpenAI's Lean proof of the construction of four-dimensional
  quantum Yang\UMills theory, at the fixed commit
  <hlink|<verbatim|3456e5e>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464>.
  It has two parts:

  <\itemize-minus>
    <item><strong|Part I> (about 30 pages): the setting, the definitions, the
    main theorems, the principal statements on which the proof rests, each
    with the idea of its proof, and the complete deduction of the main
    theorems from them.

    <item><strong|Part II> (about 120 pages): the proofs, in ten sections,
    numbered 10\U19 after the nine sections of Part I.
  </itemize-minus>

  <strong|The authority is the Lean.> The manuscript claims nothing the Lean
  does not prove. A statement may be weaker than its Lean counterpart, or
  stated in a more natural form, but never stronger. "The Lean" means the
  declarations that the main theorem actually depends on, as computed from
  the compiled files (about 74,000 declarations; see the
  <hlink|method|../method.tm>). The source also contains alternative routes
  that the main theorem does not use; these are not evidence for anything in
  the manuscript.

  The rest of this repository (the <hlink|summary|../summary.tm>, the
  <hlink|unit outlines|../outline/units.tm>, the <hlink|dependency
  graph|../method.tm>) serves as a map for finding things in the Lean. It is
  never cited as evidence.

  <section|2. Why a process at all><label|2-why-a-process-at-all>

  The obvious approach is to ask a capable model to write the paper from the
  Lean. We tried that, and it failed in ways that are easy to miss:

  <\itemize-minus>
    <item><strong|Statements take the shape of the formal code.> The first
    drafts were faithful but unreadable. Propositions ran to nearly a page
    because they copied the Lean's long conjunctions and packaging
    structures. One section was 92% definitions, one of them 776 words long.
    Those drafts were rejected.

    <item><strong|Length grows when nobody measures it.> The unit outlines in
    this repository grew to 4.4 times their intended length over several
    rounds of review, because each round added detail and none measured the
    total.

    <item><strong|Prose sounds true without being true.> An explanatory
    sentence ("this follows from the bound of Lemma X") can be plausible,
    fluent and wrong.

    <item><strong|Conditions disappear quietly.> When a statement is
    shortened, a hypothesis or a binding of variables can be lost, and
    nothing breaks: the text still compiles and still reads well.

    <item><strong|A model that wrote a proof is a poor judge of it.> It tends
    to confirm its own reading.
  </itemize-minus>

  The process below is built against these failure modes. Much of it comes
  from an earlier project of the same kind, a paper written from a completed
  Lean proof, where the same failures occurred.

  <section|3. Statements first: the spine><label|3-statements-first-the-spine>

  Before any prose is written, every statement of Part I is fixed in a single
  document, the <em|spine>:

  <\itemize-minus>
    <item>the definitions Part I needs;

    <item>the main theorems: <strong|Theorem A>, the existence statement
    exactly as formalized, and <strong|Theorem B>, the detailed construction
    as far as the Lean proves it;

    <item>fifteen principal statements, from the one-step renormalization
    bound (RG) to the contact extensions of the operator product expansion
    (CT);

    <item>the deduction of Theorems A and B from them;

    <item>the list of Part II lemmas that prove them.
  </itemize-minus>

  Each statement is written in <strong|natural form>: one result per
  statement, quantifiers first, conclusion displayed. The objects it uses are
  set up in the text before it, and side conditions of the formal version go
  to Part II lemmas. A <strong|clause map> then checks that nothing was lost:
  every clause of the Lean's main statements is assigned to a statement of
  the spine, and the union of the natural statements must equal what the Lean
  proves.

  <strong|Freezing.> The project lead approves the spine, after which the
  principal statements and the main theorems are frozen. A frozen statement
  can change only through the <strong|drift protocol>: the old text, the new
  text and the reason go to the project lead, and nothing changes without
  approval. Part II lemmas are not frozen. They can be split, added or
  reworded as the proofs are written, and every such change is recorded in a
  drift log.

  <section|4. Style rules (binding, partly enforced by a
  program)><label|4-style-rules-binding-partly-enforced-by-a-program>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|rule>>|<cell|<strong|limit>>>|<row|<cell|statement
  (theorem, proposition, lemma)>|<cell|target 100 words, hard cap
  150>>|<row|<cell|definition>|<cell|target 120 words, hard cap
  200>>|<row|<cell|ideas per statement>|<cell|one>>|<row|<cell|"there exists
  a family such that the following assertions hold">|<cell|never: the
  conditions go in the setup>>|<row|<cell|definitions>|<cell|concrete, by
  formula, with one sentence of purpose; never a translation of a Lean
  structure>>|<row|<cell|Part II>|<cell|about one numbered lemma per page; a
  proof longer than three pages is split at a genuine intermediate
  statement>>|<row|<cell|standard results>|<cell|cited exactly: name,
  hypotheses, numbering, checked against the source>>|<row|<cell|Lean names,
  file paths, process vocabulary>|<cell|never in the
  text>>|<row|<cell|references between numbered items>|<cell|always by
  cross-reference, never by a typed number>>>>>

  The exposition follows the presentation of the renormalization group in the
  work of Bauerschmidt, Brydges and Slade, in this order: the objects, the
  inductive step, the multiscale theorem, the continuum results, the
  deduction of the main theorem, the constructions.

  <section|5. Who does what><label|5-who-does-what>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|role>>|<cell|<strong|who>>|<cell|<strong|does>>>|<row|<cell|<strong|project
  lead>>|<cell|a person>|<cell|sets the goals, approves the spine and every
  change to a frozen statement, reads each finished part and sets the level
  of detail and length>>|<row|<cell|<strong|editor>>|<cell|an AI model
  (Claude)>|<cell|writes the tasks, integrates proposals into the manuscript
  (the only one who edits it), runs the checks, keeps the records, decides on
  findings>>|<row|<cell|<strong|writers>>|<cell|AI models (GPT-6.1 Sol, high
  or extra-high reasoning effort)>|<cell|write <em|proposals> for one section
  at a time, in a separate directory; never edit the
  manuscript>>|<row|<cell|<strong|reviewers>>|<cell|AI models (Claude Opus),
  each in a fresh context>|<cell|read a frozen snapshot and report; never
  edit anything>>>>>

  The separation is deliberate. Writers propose and the editor integrates, so
  that one reader sees the whole manuscript and its notation stays
  consistent. Reviewers have no access to the writer's reasoning, only to the
  text, the spine and the Lean, so they cannot inherit its mistakes.

  <section|6. The cycle for each section><label|6-the-cycle-for-each-section>

  <\enumerate>
    <item><strong|Task.> The editor writes the task: what the section must
    contain (its statements from the spine), its sources, its page allowance
    and the rules above. Over the allowance means not done.

    <item><strong|Proposal.> A writer drafts the section in its own
    directory. Alongside the text it delivers a table pairing each statement
    with the Lean declarations it rests on, notes recording what it could not
    do and its least certain sentence, and the results of its own checks.

    <item><strong|Integration.> The editor reads the proposal in context,
    integrates it into the manuscript, compiles, and runs the automatic
    checks.

    <item><strong|Frozen snapshot.> The section, everything before it, the
    spine and the style rules are copied into a snapshot with a manifest of
    SHA-256 hashes. A review verdict applies to that snapshot only.

    <item><strong|Independent reviews>, each by a separate reviewer:

    <\itemize-minus>
      <item><strong|Owner of each principal statement.> One reviewer per
      statement. It reads the manuscript in order up to the statement before
      opening any source, then maps each clause to the spine and the Lean and
      tries to break it. It judges three criteria: (i) the statement is
      correct against the spine and the Lean; (ii) it can be understood from
      the text before it; (iii) it serves the statements that use it.

      <item><strong|Mathematical review> (Part II): every proof step is
      checked against the Lean. Is it correct, complete at the stated level
      of detail, and no stronger than what is proved? Gaps written around are
      the main target.

      <item><strong|Fresh reader:> an expert reader with no prior context,
      and no access to the Lean, reads the text linearly. It reports every
      place where it had to guess an object, a normalization, a quantifier or
      the next step, judges the length, and ends with a two-sentence summary
      of what the section proves. The summary is compared with what the
      section is meant to prove.

      <item><strong|Prose truth:> every explanatory sentence outside the
      statements is marked true, false or unsupported, with evidence. Every
      condition removed in a rewrite is traced to the places that used it.
    </itemize-minus>

    <item><strong|Response table.> Every finding gets a row: the finding, the
    decision (applied, or declined with a mathematical reason), the exact
    edit, and how it was checked. Findings are never deleted or rewritten.
    The fixes are made by a writer as a new proposal and integrated by the
    editor.

    <item><strong|Re-check.> The same reviewers check the new version against
    their own earlier findings and mark each one resolved or not resolved.
    They also check the reasons given for declining findings, and report
    anything the fixes broke.

    <item><strong|Delivery review.> A last reviewer checks:

    <\itemize-minus>
      <item>that the compiled PDF matches the reviewed sources;

      <item>that every finding is closed or deferred to a named owner;

      <item>that every principal statement passes all three criteria;

      <item>that every proof address exists;

      <item>that all references resolve.
    </itemize-minus>

    It looks at every rendered page and states what its review does not
    establish.

    <item><strong|The project lead reads it.> Comments on level and length
    become binding style rules for the sections not yet written.
  </enumerate>

  Part II starts with two <strong|pilot sections>, one on the ultraviolet
  side (Ÿ12, path actions and the coupling reset) and one on the infrared
  side (Ÿ15, infinite volume). They go through the whole cycle and are read
  by the project lead before the other eight sections are written. Each later
  section then follows the same cycle.

  <section|7. Automatic checks><label|7-automatic-checks>

  Run after every integration:

  <\itemize-minus>
    <item><strong|compilation:> no errors, no undefined or duplicate
    references, no overfull lines;

    <item><strong|shape:> the word count of every statement and definition
    against the limits of Ÿ4;

    <item><strong|vocabulary:> no Lean names, no file paths, no process
    words, no words on a list of habitual machine phrasing; the check also
    covers TeX comments;

    <item><strong|Lean links:> every Lean name in the correspondence table
    must be among the declarations the main theorem depends on. For Part I:
    657 rows, 807 names, all of them dependencies of the main theorem.
  </itemize-minus>

  Passing these checks means none of these mechanical faults is present. It
  says nothing about whether the mathematics is right.

  <section|8. Records><label|8-records>

  <\itemize-minus>
    <item><strong|The statement register:> one row per numbered statement,
    giving its owner, mathematical status, review status, rendering status,
    where in Part II it is proved, and its open findings.

    <item><strong|The correspondence table:> each numbered statement and
    definition, with the Lean declarations it corresponds to and the relation
    between them (direct, weaker, composition, cited, none). It will be
    published with the manuscript.

    <item><strong|The response tables> of every review round, and the
    <strong|drift log> of every change to the spine.
  </itemize-minus>

  The working records (tasks, review reports, response tables, the statement
  register) are kept in a separate working repository.

  <section|9. What this has caught so far><label|9-what-this-has-caught-so-far>

  Examples from the first rounds. None of them would have been caught by
  compiling the text:

  <\itemize-minus>
    <item><strong|Theorem B was weaker than the Lean.> As first written, it
    said that hierarchy data exist, not that they are the objects
    constructed. Its owner rejected it on criterion (i). The repair changes
    the wording of a frozen statement, so it goes to the project lead under
    the drift protocol.

    <item><strong|A pilot section assumed what it had to prove.> The first
    draft of Ÿ15 used two inputs, the correction estimate and a rank
    comparison, as hypotheses with no statement to cite. The mathematical
    review found the Lean declarations that prove them. The revision states
    them as labelled lemmas matching the Lean.

    <item><strong|A hypothesis was missing.> The first draft of Ÿ12 omitted a
    bound on a kinetic constant that the Lean carries explicitly. Without it,
    one of the section's identities cannot hold. The bound now appears in the
    definition, in Part I and in the table of constants.

    <item><strong|The editor's own edits introduced errors>, and were caught
    in turn:

    <\itemize-minus>
      <item>axiom labels stripped from definition titles during integration
      (Theorem A refers to them);

      <item>a sentence left broken by a deletion;

      <item>Part II numbers that collided with addresses used in Part I.
    </itemize-minus>

    The third led to the rule that numbered items are referred to only by
    cross-reference.

    <item><strong|True-sounding prose that was false.> For example: a
    sentence attributing a smooth extension to the wrong estimate; a unit
    stated so that, read naturally, the axiom would be false for fields of
    positive degree.
  </itemize-minus>

  <section|10. What the process does and does not
  establish><label|10-what-the-process-does-and-does-not-establish>

  <\itemize-minus>
    <item><strong|It does establish> that every numbered statement has been
    compared, clause by clause, with the Lean declarations it rests on, by a
    reviewer who did not write it. It also establishes that every explanatory
    sentence has been checked for truth, and that every finding has a
    recorded decision.

    <item><strong|It does not establish> correctness in the sense of a human
    referee's report. The reviewers are AI models; they are independent of
    the writers but not of each other's training, and they can share blind
    spots. The correctness of the <em|theorem> rests on the Lean, which is
    machine-checked. The faithfulness of the <em|manuscript> to the Lean is
    checked by the reviews above, not by a machine.

    <item><strong|It is not finished.> Until a section is marked <em|checked>
    in the <hlink|status table|index.tm#status>, it is a draft. Corrections
    from readers are welcome as issues.
  </itemize-minus>

  <section|Changes to this process><label|changes-to-this-process>

  <\itemize-minus>
    <item><strong|11 November 2026.> Statements first, in natural form, with
    the length limits of Ÿ4. This was adopted after the first drafts were
    rejected for their shape.

    <item><strong|11 November 2026.> Numbered items in Part II are referred
    to only by cross-reference. Part II sections are numbered 10\U19,
    continuing the numbering of Part I.

    <item><strong|11 November 2026.> After the first draft: (1) a
    <strong|cross-section check> compares every place where one section cites
    another's result with what that result states, and mismatches are
    repaired on both sides (three rounds, the last confirming all items
    resolved); (2) an <strong|independent referee review> of the whole
    manuscript (three referees, on Part I, Sections 10\U14 and Sections
    15\U19); every suggestion is <strong|adjudicated> against the text and
    the Lean (accept, accept modified, reject, or left to the project lead)
    before writers apply it, and a confirmation review checks the applied
    changes; (3) main theorems are measured too, and a statement may cite at
    most four other results.

    <item><strong|12 November 2026.> Second draft: an editorial pass merging
    two expert human reviews, six reviewer reports (four Opus at maximum
    effort, two GPT-6 Astra) and a comparison with a collaborator's draft
    into one plan, with page budgets per section (ceiling 265 pages);
    confirmation reviews of every changed statement against the Lean and a
    fresh reader asked to explain five mechanisms of the proof; targeted
    re-checks before publication. The statement-to-declaration correspondence
    is published as <verbatim|correspondence.tsv>.
  </itemize-minus>
</body>

<\initial>
  <\collection>
    <associate|html-title|How the manuscript is written \U Yang\UMills
    informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-is-being-written-and-against-what|<tuple|1|1>>
    <associate|10-what-the-process-does-and-does-not-establish|<tuple|10|6>>
    <associate|2-why-a-process-at-all|<tuple|2|2>>
    <associate|3-statements-first-the-spine|<tuple|3|2>>
    <associate|4-style-rules-binding-partly-enforced-by-a-program|<tuple|4|3>>
    <associate|5-who-does-what|<tuple|5|3>>
    <associate|6-the-cycle-for-each-section|<tuple|6|4>>
    <associate|7-automatic-checks|<tuple|7|5>>
    <associate|8-records|<tuple|8|5>>
    <associate|9-what-this-has-caught-so-far|<tuple|9|6>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|10|6>>
    <associate|auto-11|<tuple|11|7>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|3>>
    <associate|auto-5|<tuple|5|3>>
    <associate|auto-6|<tuple|6|4>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|8|5>>
    <associate|auto-9|<tuple|9|6>>
    <associate|changes-to-this-process|<tuple|11|7>>
    <associate|how-the-manuscript-is-written|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1.
      What is being written, and against what>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2.
      Why a process at all> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3.
      Statements first: the spine> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4.
      Style rules (binding, partly enforced by a program)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Who does what> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      The cycle for each section> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      Automatic checks> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8.
      Records> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9.
      What this has caught so far> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|10.
      What the process does and does not establish>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Changes
      to this process> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../index.tm><ym-nav-sep><hlink|The
  theorem|../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../summary.tm><ym-nav-sep><hlink|Architecture|../outline/index.tm><ym-nav-sep><hlink|Units|../outline/units.tm><ym-nav-sep><ym-nav-here|Manuscript><ym-nav-sep><hlink|Glossary|../glossary.tm><ym-nav-sep><hlink|FAQ|../faq.tm><ym-nav-sep><hlink|Work
  items|../outline/work-items.tm><ym-nav-sep><hlink|Data|../data/index.tm><ym-nav-sep><hlink|Method|../method.tm><ym-nav-sep><hlink|Provenance|../provenance.tm><ym-nav-sep><hlink|Changes|../CHANGELOG.tm>>

  <ym-title|The construction of four-dimensional quantum Yang\UMills
  theory><label|the-construction-of-four-dimensional-quantum-yangmills-theory>

  <ym-manuscript-link|<hlink|Read the manuscript (HTML version, converted
  from the LaTeX source)|main.tm>>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Status>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|How it is
    written> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Building>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|License>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>
  </table-of-contents>

  <\quotation>
    \<#1F6A7\> <strong|Under construction.> This manuscript is being written.
    Most sections do not exist yet, and those that do may change
    substantially until they are marked <em|checked> in the <hlink|status
    table|#status>. Do not cite it as a finished proof.
  </quotation>

  A manuscript, written in public, giving a complete mathematical proof of
  the result formalized in OpenAI's Lean proof of the construction of
  four-dimensional quantum Yang\UMills theory
  (<hlink|source|https://github.com/yang-mills-group/OpenAI-YM-20261028>,
  commit <hlink|<verbatim|3456e5e>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464>).
  The reader we write for is a mathematician working in constructive field
  theory or probability. It is written in collaboration with Martin Hairer's
  <hlink|humanise-yang-mills|https://github.com/hairer/humanise-yang-mills>
  project, a crowd-sourced effort to turn the Lean formalization into a
  human-readable monograph.

  <\itemize-minus>
    <item><strong|Part I. The theorem and the architecture of its proof>
    (about 30 pages): the setting and notation, the main theorem, the
    principal statements on which the proof rests, each stated exactly with
    the idea of its proof, and the complete deduction of the main theorem
    from them.

    <item><strong|Part II. Proofs> (about 120 pages, Sections 10\U19): the
    proofs of the principal propositions, with every estimate specific to the
    construction written out and standard results cited.
  </itemize-minus>

  The PDF is <hlink|<verbatim|main.pdf>|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/manuscript/main.pdf>.
  It is updated as sections are written; until a section is marked
  <em|checked> below, it is a draft.

  The process by which it is written and checked is described in <hlink|How
  this manuscript is written|PROCESS.tm>.

  <section|Status><label|status>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|>|<cell|<strong|section>>|<cell|<strong|status>>>|<row|<cell|Part
  I>|<cell|1. Introduction>|<cell|to be written last>>|<row|<cell|>|<cell|2.
  Wilson theory>|<cell|reviewed; with the project lead for
  reading>>|<row|<cell|>|<cell|3. Renormalization>|<cell|reviewed; with the
  project lead for reading>>|<row|<cell|>|<cell|4. The continuum
  limit>|<cell|reviewed; with the project lead for
  reading>>|<row|<cell|>|<cell|5. Stress and rotations>|<cell|reviewed; with
  the project lead for reading>>|<row|<cell|>|<cell|6. Phases and
  reconstruction>|<cell|reviewed; with the project lead for
  reading>>|<row|<cell|>|<cell|7. Trace and products>|<cell|reviewed; with
  the project lead for reading>>|<row|<cell|>|<cell|8. Main
  theorems>|<cell|reviewed; with the project lead for
  reading>>|<row|<cell|>|<cell|9. Constants and order of
  choice>|<cell|reviewed; with the project lead for reading>>|<row|<cell|Part
  II>|<cell|12. Path actions and the coupling reset>|<cell|reviewed; with the
  project lead for reading>>|<row|<cell|>|<cell|15. Infinite volume and field
  calculus>|<cell|reviewed; with the project lead for
  reading>>|<row|<cell|>|<cell|10, 11, 13, 14, 16\U19>|<cell|statements
  listed (including the inputs that Sections 12 and 15 use), proofs not yet
  written>>>>>

  "Reviewed" means the full cycle of the <hlink|process|PROCESS.tm> has run:
  owner, fresh-reader and truth reviews, re-check and delivery review. A
  section is marked <em|checked> only after the project lead's reading and
  any changes it leads to.

  <section|How it is written><label|how-it-is-written>

  The manuscript is written with AI models under human direction, by the
  process described in <strong|<hlink|How this manuscript is
  written|PROCESS.tm>>. In short: the paper claims nothing the Lean does not
  prove; statements are fixed first and kept short; writers propose, one
  editor integrates; and every statement is reviewed against the Lean by a
  separate reviewer. The correspondence between the numbered statements and
  the Lean declarations will be published with the manuscript.

  For shorter routes into the proof, see the <hlink|rest of this
  repository|../index.tm>, which presents it at several levels of detail,
  from the theorem in one page to outlines of its thirty-two units linked to
  the Lean; this manuscript is the most detailed level. Corrections are
  welcome as issues.

  <section|Building><label|building>

  <verbatim|latexmk -pdf main.tex>

  <section|License><label|license>

  <hlink|Apache License 2.0|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/LICENSE>,
  as for the rest of this repository.
</body>

<\initial>
  <\collection>
    <associate|html-title|The construction of four-dimensional quantum
    Yang\UMills theory \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|2>>
    <associate|building|<tuple|3|2>>
    <associate|how-it-is-written|<tuple|2|2>>
    <associate|license|<tuple|4|2>>
    <associate|status|<tuple|1|2>>
    <associate|the-construction-of-four-dimensional-quantum-yangmills-theory|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Status>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|How
      it is written> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Building>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|License>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
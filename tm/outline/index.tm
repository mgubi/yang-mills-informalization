<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../index.tm><ym-nav-sep><hlink|The
  theorem|../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../summary.tm><ym-nav-sep><ym-nav-here|Architecture><ym-nav-sep><hlink|Units|units.tm><ym-nav-sep><hlink|Glossary|../glossary.tm><ym-nav-sep><hlink|FAQ|../faq.tm><ym-nav-sep><hlink|Work
  items|work-items.tm><ym-nav-sep><hlink|Data|../data/index.tm><ym-nav-sep><hlink|Method|../method.tm><ym-nav-sep><hlink|Provenance|../provenance.tm><ym-nav-sep><hlink|Changes|../CHANGELOG.tm>>

  <ym-title|Overview of the proof><label|overview-of-the-proof>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|The order of
    limits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|The eight
    parts> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <with|par-left|1tab|Ultraviolet units
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|What each part
    hands to the next> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <with|par-left|1tab|Ultraviolet \<rightarrow\> infinite volume
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|Infinite volume \<rightarrow\> phases, reconstruction
    and symmetry <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|Reconstruction \<rightarrow\> identification
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|Symmetry \<rightarrow\> identification
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|Into the assembly
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|The work items
    of the limit theory> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|What does not
    follow the order of the parts> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|How reliable is
    this> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn>
  </table-of-contents>

  This page describes how OpenAI's Lean proof of the construction of
  four-dimensional Yang\UMills theory is organised: its eight parts, what
  each part hands to the next, and the units that make up each part
  (<hlink|detailed map|units.tm>).

  It is read from the Lean statements and documentation and from the
  dependency graph. The mathematical framing follows the Yang\UMills group's
  <hlink|assessment|https://github.com/yang-mills-group/YM/blob/main/docs/assessment-1.pdf>.
  Lean names link to the fixed source commit
  <hlink|<verbatim|3456e5e>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464>.

  <section|The order of limits><label|the-order-of-limits>

  The construction uses Wilson lattice theories on tori of side
  <math|L<rsub|p>>, with lattice spacings <math|a<rsub|N>> and couplings
  <math|\<beta\><rsub|N,p>> satisfying <math|\<beta\><rsub|N,p>/log
  <around|(|1/a<rsub|N>|)>\<to\>11*C<rsub|G>/<around|(|24*\<pi\><rsup|2>|)>>.
  The public theorem leaves the positive limiting constant unspecified; see
  the <hlink|exact statement|../statement.tm>.

  Correlations of renormalized local observables are first taken to the limit
  <strong|<math|N\<to\>\<infty\>> at fixed volume>, along the whole sequence
  of spacings. They are then taken to the limit
  <strong|<math|p\<to\>\<infty\>>>, along a subsequence that may be extracted
  from any prescribed sequence of volumes. The public form of this statement
  is <hlink|<verbatim|WilsonFamily.Converges>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L85-L90>.

  The renormalization group is used only for the first limit. The second is
  obtained by compactness.

  <section|The eight parts><label|the-eight-parts>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|part>>|<cell|<strong|name>>|<cell|<strong|units>>>|<row|<cell|I>|<cell|Setting>|<cell|<hlink|I.1|units/I-1.tm>>>|<row|<cell|II>|<cell|Data
  of the construction>|<cell|<hlink|II.1|units/II-1.tm>,
  <hlink|II.2|units/II-2.tm>>>|<row|<cell|III>|<cell|Ultraviolet
  construction>|<cell|<hlink|III.1\UIII.16|#ultraviolet-units>>>|<row|<cell|IV>|<cell|Infinite
  volume>|<cell|<hlink|IV.1|units/IV-1.tm>>>|<row|<cell|V>|<cell|Phases and
  reconstruction>|<cell|<hlink|V.1|units/V-1.tm>, <hlink|V.2|units/V-2.tm>,
  <hlink|V.3|units/V-3.tm>>>|<row|<cell|VI>|<cell|Symmetry>|<cell|<hlink|VI.1|units/VI-1.tm>,
  <hlink|VI.2|units/VI-2.tm>>>|<row|<cell|VII>|<cell|Identification as
  Yang\UMills>|<cell|<hlink|VII.1|units/VII-1.tm>,
  <hlink|VII.2|units/VII-2.tm>, <hlink|VII.3|units/VII-3.tm>,
  <hlink|VII.4|units/VII-4.tm>, <hlink|VII.5|units/VII-5.tm>,
  <hlink|VII.6|units/VII-6.tm>>>|<row|<cell|VIII>|<cell|Assembly>|<cell|<hlink|VIII.1|units/VIII-1.tm>>>>>>

  <subsection|Ultraviolet units><label|ultraviolet-units>

  <\itemize-minus>
    <item>Blocking, constants and Gaussian estimates:
    <hlink|III.1|units/III-1.tm>, <hlink|III.2|units/III-2.tm>,
    <hlink|III.3|units/III-3.tm>, <hlink|III.4|units/III-4.tm>.

    <item>Cluster expansion, stationary field, matching and dependence:
    <hlink|III.5|units/III-5.tm>, <hlink|III.6|units/III-6.tm>,
    <hlink|III.7|units/III-7.tm>, <hlink|III.8|units/III-8.tm>.

    <item>Coupling reset, nonlinear step and observable limits:
    <hlink|III.9|units/III-9.tm>, <hlink|III.10|units/III-10.tm>,
    <hlink|III.11|units/III-11.tm>, <hlink|III.12|units/III-12.tm>.

    <item>Alternative coordinated family, construction data and analytic
    tools: <hlink|III.13|units/III-13.tm>, <hlink|III.14|units/III-14.tm>,
    <hlink|III.15|units/III-15.tm>, <hlink|III.16|units/III-16.tm>.
  </itemize-minus>

  The limit theory (Parts IV\UVI) is written in the code around numbered
  <hlink|work items|work-items.tm>; the units of those parts follow them.

  <section|What each part hands to the next><label|what-each-part-hands-to-the-next>

  <subsection|Ultraviolet \<rightarrow\> infinite
  volume><label|ultraviolet--infinite-volume>

  Let <math|G> be a compact matrix group with simple nonabelian Lie algebra,
  and <math|b\<gtr\>0> a parameter of the block-spin kernel. The ultraviolet
  construction provides a Wilson family with the following properties.

  <\enumerate>
    <item><strong|Specification.> The family satisfies its normalization,
    covariance and budget conditions, and its couplings obey the
    asymptotic-freedom law above.

    <item><strong|Chessboard bound, uniform in the volume.> For each degree
    <math|d> and <math|\<varepsilon\>\<gtr\>0>, every renormalized local
    observable at block scale <math|m> satisfies a chessboard bound of order
    <math|a<rsub|m><rsup|-d-\<varepsilon\>>>, uniformly in the volume, once
    the lattice is fine enough. A chessboard bound is a bound on the root of
    a product of reflected copies.

    <item><strong|Differences.> The same holds for finite-difference
    quotients, so correlation kernels at <math|r>-separated points are
    bounded uniformly in the volume.

    <item><strong|Fixed volume.> At each fixed volume the correlation kernels
    converge along the whole sequence of spacings, to smooth limits.

    <item><strong|Corrected fields.> The same estimates hold for the
    corrected fields.
  </enumerate>

  For the subsequential extraction, the infinite-volume part uses 1\U3 and 5,
  together with the reflection-positivity inequality on cells, which holds
  for every <math|\<beta\>\<geqslant\>0>. Its conclusion: for every
  increasing sequence of volumes there is a subsequence along which all
  smeared correlations converge to kernels that are smooth away from
  coincident points. The fixed-volume convergence in item 4 then removes the
  spacing refinement; see <hlink|IV.1|units/IV-1.tm>. These two limits
  correspond to Theorems 4.1 and 5.1 of the group's assessment.

  A caution about the code. About three quarters of the code filed under
  "full volume" (folder <hlink|<verbatim|YM/FullVolume>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume>)
  belongs to the ultraviolet construction: it proves the volume-uniform
  bounds. The genuinely infinite-volume argument is short, about 7,000 lines.

  <subsection|Infinite volume \<rightarrow\> phases, reconstruction and
  symmetry><label|infinite-volume--phases-reconstruction-and-symmetry>

  The limit satisfies a Euclidean <em|hierarchy>:

  <\itemize-minus>
    <item>translation homogeneity;

    <item>reflection positivity, including for smeared joint test functions;

    <item>smoothness on separated configurations, with controlled
    derivatives;

    <item>a compatible calculus of derivatives.
  </itemize-minus>

  Reconstruction also needs a uniform bound on products of fields in thin
  time slabs.

  <subsection|Reconstruction \<rightarrow\>
  identification><label|reconstruction--identification>

  For every phase, a completed Wightman theory: unique vacuum, a light-cone
  bound, heat-kernel decay, and a trivial weak commutant. The heat bound is
  polynomial; no mass gap follows.

  <subsection|Symmetry \<rightarrow\> identification><label|symmetry--identification>

  A conserved stress tensor and its Ward identities. Both are compared, along
  sequences of scales tending to zero, with the corresponding objects for
  free Maxwell fields.

  <subsection|Into the assembly><label|into-the-assembly>

  A single Wilson family serves every part of the public theorem, from
  extraction to the trace test; <hlink|VIII.1|units/VIII-1.tm> describes the
  assembly. The construction run exists for every allowed <math|G> and every
  <math|b\<gtr\>0>. <hlink|III.13|units/III-13.tm> describes an alternative
  coordinated family; its properties require a separate identification before
  they can be used for this family.

  <section|The work items of the limit theory><label|the-work-items-of-the-limit-theory>

  Parts IV\UVI are written in the code as about seventy numbered work items.
  Each states one obligation, a "proof request" in the code's vocabulary, and
  proves it in its own file.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|family>>|<cell|<strong|items>>|<cell|<strong|part>>|<cell|<strong|content>>>|<row|<cell|D>|<cell|6>|<cell|IV>|<cell|the
  limit passes to derivatives of the correlation kernels; the Euclidean
  hierarchy>>|<row|<cell|B>|<cell|18>|<cell|V>|<cell|time-slab operators,
  decomposition into phases, reflection positivity and smoothness for each
  phase>>|<row|<cell|C>|<cell|29>|<cell|V>|<cell|Osterwalder\USchrader
  \<rightarrow\> Wightman: continuation in time, boost covariance, gluing of
  tubes, locality>>|<row|<cell|A>|<cell|17>|<cell|VI>|<cell|so(4) brackets,
  integration to the rotation action, the averaged conserved stress tensor,
  boosts, comparison with free Maxwell fields>>>>>

  These families interleave. D supplies the limit hierarchy; B begins with
  its OS spaces and slab operators. A uses those spaces and the free Maxwell
  comparison to obtain rotations and Ward identities. Those symmetry results
  enter both the phase decomposition in B and the boost and covariance
  arguments in C. The part numbers organize the subjects; they do not give a
  linear dependency order. See <hlink|the
  strategy|../summary.tm#the-strategy> and the <hlink|work-item
  introductions|work-items.tm>.

  The same mechanism appears in the ultraviolet construction: families E\UI
  cover the energy chain of one renormalization step, its stationary point
  and Hessian, label polynomials, and support bookkeeping.

  See <hlink|work-items.md|work-items.tm> for the complete list.

  <section|What does not follow the order of the
  parts><label|what-does-not-follow-the-order-of-the-parts>

  The Lean is not written in this order everywhere. Some definitions are
  needed before the part that explains their properties:

  <\itemize-minus>
    <item>the reflection-positive cells and chessboard roots;

    <item>the record of the whole construction run;

    <item>the basic types of the renormalization group and of the labels.
  </itemize-minus>

  Some sections are filed far from their mathematical home. Two examples:

  <\itemize-minus>
    <item>the rotation-invariance estimate, in folder
    <verbatim|Next/ROTATIONS>;

    <item>some renormalization-group pieces filed with the trace-anomaly
    code.
  </itemize-minus>

  None of this involves new mathematics. A written account should simply
  state these definitions early.

  <section|How reliable is this><label|how-reliable-is-this>

  <\itemize-minus>
    <item>Reachable declaration sets for seventeen named results were
    compared with OpenAI's compiled record. This comparison does not verify
    every edge or the mathematical interpretation of the interfaces
    (<hlink|method|../method.tm#1-the-dependency-graph>).

    <item>The plain-language interfaces summarize statements and
    documentation. The <hlink|unit index|units.tm> gives each outline's
    review status; its local limitations describe which arguments remain at
    statement level. The <hlink|exact statement|../statement.tm>
    distinguishes the public theorem from additional construction
    conclusions.

    <item><hlink|Report a correction|https://github.com/scottnarmstrong/yang-mills-informalization/issues>
    with the page, heading and source reference.
  </itemize-minus>
</body>

<\initial>
  <\collection>
    <associate|html-title|Overview of the proof \U Yang\UMills
    informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|4|3>>
    <associate|auto-11|<tuple|5|4>>
    <associate|auto-12|<tuple|6|4>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|2.1|2>>
    <associate|auto-4|<tuple|3|2>>
    <associate|auto-5|<tuple|3.1|2>>
    <associate|auto-6|<tuple|3.2|3>>
    <associate|auto-7|<tuple|3.3|3>>
    <associate|auto-8|<tuple|3.4|3>>
    <associate|auto-9|<tuple|3.5|3>>
    <associate|how-reliable-is-this|<tuple|6|4>>
    <associate|infinite-volume--phases-reconstruction-and-symmetry|<tuple|3.2|3>>
    <associate|into-the-assembly|<tuple|3.5|3>>
    <associate|overview-of-the-proof|<tuple|?|1>>
    <associate|reconstruction--identification|<tuple|3.3|3>>
    <associate|symmetry--identification|<tuple|3.4|3>>
    <associate|the-eight-parts|<tuple|2|2>>
    <associate|the-order-of-limits|<tuple|1|1>>
    <associate|the-work-items-of-the-limit-theory|<tuple|4|3>>
    <associate|ultraviolet--infinite-volume|<tuple|3.1|2>>
    <associate|ultraviolet-units|<tuple|2.1|2>>
    <associate|what-does-not-follow-the-order-of-the-parts|<tuple|5|4>>
    <associate|what-each-part-hands-to-the-next|<tuple|3|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|The
      order of limits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|The
      eight parts> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Ultraviolet units
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|What
      each part hands to the next> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Ultraviolet \<rightarrow\> infinite volume
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|Infinite volume \<rightarrow\> phases,
      reconstruction and symmetry <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|Reconstruction \<rightarrow\>
      identification <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|Symmetry \<rightarrow\> identification
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|Into the assembly
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|The
      work items of the limit theory> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|What
      does not follow the order of the parts>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|How
      reliable is this> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
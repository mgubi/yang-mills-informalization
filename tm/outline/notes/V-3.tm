<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> V.2 Osterwalder-Schrader reconstruction
  of a Wightman theory (notes)|V-2.tm>|<hlink|Part
  V|../units.tm#part-v-phases-and-reconstruction><ym-nav-sep><hlink|Unit
  outline|../units/V-3.tm>|<hlink|VI.1 Ward identities, the rotation action
  and the conserved stress tensor (notes) \<rightarrow\>|VI-1.tm>>

  <ym-title|V.3. Reconstruction in every phase \V detailed
  notes><label|v3-reconstruction-in-every-phase--detailed-notes>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1. What this
    unit proves> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2. What it
    uses> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3. Strategy>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4. Steps>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <with|par-left|1tab|4.1 Slab bounds and the family of reconstructions
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 Continuity in the phase and barycenter
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 Surjectivity of the boundary isometry
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 Low-energy bound and heat decay
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 Every phase <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.6 Irreducibility
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|4.7 The continued stress tensor
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <with|par-left|1tab|4.8 Assembly <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Where the
    difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Notation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. What remains
    unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-15><vspace|0.5fn>
  </table-of-contents>

  <\quotation>
    The full account of unit V.3: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/V-3.tm>.
  </quotation>

  <hlink|Unit page|../units/V-3.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> V, phases and reconstruction. <strong|Lean:>
  <hlink|<verbatim|YM/EveryPhase>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase>
  (34 files). Its hypotheses are recorded in
  <hlink|<verbatim|YM/Spec/Closed.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L73>
  and <hlink|<verbatim|YM/Phase/Mixture.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L65-L148>.
  <strong|Size:> 5,268 lines.

  <\itemize-minus>
    <item>The 436 declarations occupy about 4,180 lines; 419 of them (about
    4,070 lines) occur in the main theorem\<#2019\>s dependency graph.

    <item>About half the folder (15 files, about 2,600 lines) continues the
    stress tensor (Ÿ4.7).
  </itemize-minus>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Setting.> Fix a Wilson family, an extraction and the limit table
  <math|S=S<rsup|<math-up|mix>>>, together with a record
  <hlink|<verbatim|Final>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73>
  for them. The unit uses the following parts of it.

  <\itemize-minus>
    <item>The Euclidean axioms of <math|S<rsup|<math-up|mix>>> (IV.1).

    <item>The phase decomposition of V.1:

    <\itemize-minus>
      <item>a compact metric space <math|X> with a Borel probability measure
      <math|\<nu\>> of full support;

      <item>the commutative C<math|<rsup|\<ast\>>>-algebra <math|\<frak-A\>>
      generated by the time-slab operators of <math|S<rsup|<math-up|mix>>>,
      compressed to the ground space <math|\<cal-D\>> of the
      Osterwalder\USchrader (OS) space <math|\<cal-H\><rsup|<math-up|OS>>> of
      <math|S<rsup|<math-up|mix>>>;

      <item>continuous characters <math|\<chi\><rsub|\<xi\>>> of
      <math|\<frak-A\>>, indexed bijectively by <math|X>, with
      <math|\<xi\>\<mapsto\>\<chi\><rsub|\<xi\>><around|(|M|)>> continuous
      for every <math|M\<in\>\<frak-A\>> and
      <math|<big|int><rsub|X>\<chi\><rsub|\<xi\>><around|(|M|)>*<space|0.17em>d*\<nu\>=<around|\<langle\>|\<omega\>,M*\<omega\>|\<rangle\>>>;

      <item>spatial translations acting trivially on <math|\<cal-D\>>;

      <item>tables <math|S<rsup|\<xi\>>> satisfying the Euclidean axioms,
      with <math|S<rsup|\<xi\>><around|(|w|)>=\<chi\><rsub|\<xi\>><around|(|M<rsub|w>|)>>
      for every word <math|w> of pairwise distinct points. Here
      <math|M<rsub|w>\<in\>\<frak-A\>> is the compressed slab operator of a
      time translate of <math|w>.
    </itemize-minus>

    <item>The relativistic theory <math|\<frak-W\><rsub|\<xi\><rsub|\<ast\>>>>
    of V.2 at the selected phase <math|\<xi\><rsub|\<ast\>>>, and the
    analytic continuations of <math|S<rsup|<math-up|mix>>> and
    <math|S<rsup|\<xi\><rsub|\<ast\>>>>.

    <item>The field algebra of VI.1 (derivatives, rotations, the Euclidean
    stress tensor <math|T<rsup|<math-up|E>><rsub|a*b>\<in\>F<rsub|4>>), and
    the Euclidean Ward identities in every phase.
  </itemize-minus>

  <strong|Notation.>

  <\itemize-minus>
    <item><strong|OS side.> For each <math|\<xi\>>,
    <math|\<cal-H\><rsup|<math-up|OS>><rsub|\<xi\>>> is an OS space of
    <math|S<rsup|\<xi\>>> for the time axis. It carries the transfer
    semigroup <math|e<rsup|-s*H<rsup|<math-up|OS>><rsub|\<xi\>>>> and the
    Euclidean vacuum <math|\<omega\><rsub|\<xi\>>>. Its ground space is
    <math|\<cal-D\><rsub|\<xi\>>=<around|{|v:e<rsup|-s*H<rsup|<math-up|OS>><rsub|\<xi\>>>*v=v<text|for
    all >s\<geqslant\>0|}>>.

    <item><strong|Wightman theory.> <math|\<frak-W\><rsub|\<xi\>>=<around|(|\<cal-H\><rsub|\<xi\>>,\<frak-D\><rsub|\<xi\>>,\<Omega\><rsub|\<xi\>>,\<phi\><rsub|\<xi\>>,U<rsub|\<xi\>>,P<rsub|\<xi\>>|)>>
    consists of:

    <\itemize-minus>
      <item>a Hilbert space <math|\<cal-H\><rsub|\<xi\>>> and a dense common
      invariant domain <math|\<frak-D\><rsub|\<xi\>>> spanned by word
      vectors;

      <item>a unit vacuum <math|\<Omega\><rsub|\<xi\>>>;

      <item>fields <math|\<phi\><rsub|\<xi\>><around|(|a,f|)>> for labels
      <math|a\<in\>\<bbb-F\>> (the common label space generated by the
      <math|F<rsub|d>>) and <math|f\<in\>\<cal-S\><around|(|\<bbb-R\><rsup|4>|)>>;

      <item>a strongly continuous unitary Poincaré representation
      <math|U<rsub|\<xi\>>> and an energy\Umomentum spectral measure
      <math|P<rsub|\<xi\>>>.
    </itemize-minus>

    <item><strong|Time and energy.> Time is the fourth coordinate.
    <math|H<rsub|\<xi\>>> generates the time translations, and
    <math|P<rsup|0><rsub|\<xi\>>=P<rsub|\<xi\>><around|(|<around|{|p<rsup|4>=0|}>|)>>.

    <item><strong|Words.> A <em|finite sum of words> is
    <math|A=<big|sum><rsub|k>c<rsub|k>*<space|0.17em>\<phi\><around|(|a<rsub|k*1>,f<rsub|k*1>|)>*\<cdots\>*\<phi\><around|(|a<rsub|k*n<rsub|k>>,f<rsub|k*n<rsub|k>>|)>>.
    It is <em|compactly supported> if every
    <math|f<rsub|k*j>\<in\>C<rsup|\<infty\>><rsub|c><around|(|\<bbb-R\><rsup|4>|)>>.
    <math|A<rsup|\<dagger\>>> is its formal adjoint (conjugate coefficients
    and tests, apply the star operation to labels, and reverse each word).
    The spectral measure of <math|A*\<Omega\><rsub|\<xi\>>> is
    <math|\<mu\><rsup|\<xi\>><rsub|A><around|(|B|)>=<around|\<langle\>|A*\<Omega\><rsub|\<xi\>>,P<rsub|\<xi\>><around|(|B|)>*A*\<Omega\><rsub|\<xi\>>|\<rangle\>>>.

    <item><strong|Continuations.> <math|<math-ss|F><rsup|\<xi\>><rsub|n><around|(|a;z,<wide|x|\<vect\>>|)>>
    is the analytic continuation of <math|S<rsup|\<xi\>>> to complex times
    with <math|<math-up|Im>z<rsub|1>\<less\>\<ldots\>\<less\><math-up|Im>z<rsub|n>>.
    <math|W<rsup|\<xi\>><rsub|n><around|(|a;g|)>>, for
    <math|g\<in\>\<cal-S\><around|(|<around|(|\<bbb-R\><rsup|4>|)><rsup|n>|)>>,
    are its boundary distributions. <math|W<rsup|<math-up|mix>><rsub|n>> are
    those of the continuation of <math|S<rsup|<math-up|mix>>> (V.2).
  </itemize-minus>

  <strong|Proposition V.3.1 (reconstruction in every phase).> There is a
  family indexed by <math|X> with the following data for each
  <math|\<xi\>\<in\>X>:

  <\itemize-minus>
    <item>an OS space <math|\<cal-H\><rsup|<math-up|OS>><rsub|\<xi\>>> of
    <math|S<rsup|\<xi\>>> with its time-slab operators;

    <item>a continuation <math|<math-ss|F><rsup|\<xi\>>> of
    <math|S<rsup|\<xi\>>> with boundary distributions <math|W<rsup|\<xi\>>>;

    <item>a Wightman theory <math|\<frak-W\><rsub|\<xi\>>> on the label space
    <math|\<bbb-F\>>, with the same star operation and the same Poincaré
    action on labels as <math|\<frak-W\><rsub|\<xi\><rsub|\<ast\>>>>;

    <item>an isometry <math|J<rsub|\<xi\>>:\<cal-H\><rsub|\<xi\>>\<to\>\<cal-H\><rsup|<math-up|OS>><rsub|\<xi\>>>
    with <math|J<rsub|\<xi\>>*\<Omega\><rsub|\<xi\>>=\<omega\><rsub|\<xi\>>>.
    It intertwines the space\Utime translations and sends word vectors to the
    boundary values of the corresponding Euclidean vectors at imaginary times
    (Lemma V.3.b).
  </itemize-minus>

  At <math|\<xi\>=\<xi\><rsub|\<ast\>>> these are the data of V.1 and V.2.
  For <strong|every> <math|\<xi\>\<in\>X>, with no exceptional set, the
  following hold.

  <\enumerate>
    <item><em|Wightman axioms.>

    <\itemize-minus>
      <item>The vacuum expectation values of products of fields are
      <math|W<rsup|\<xi\>>>.

      <item>The Hilbert-space adjoint of <math|\<phi\><rsub|\<xi\>><around|(|a,f|)>>
      extends <math|\<phi\><rsub|\<xi\>><around|(|a<rsup|\<ast\>>,<wide|f|\<bar\>>|)>>.

      <item>Fields with spacelike separated supports commute on
      <math|\<frak-D\><rsub|\<xi\>>>.

      <item><math|U<rsub|\<xi\>>> implements Poincaré covariance.

      <item>The joint spectrum of the translations lies in the closed forward
      cone <math|<wide|V|\<bar\>><rsub|+>>.

      <item>For every nonzero label <math|a>, there is a test function
      <math|f> for which <math|\<phi\><rsub|\<xi\>><around|(|a,f|)>\<ne\>0>
      on <math|\<frak-D\><rsub|\<xi\>>>.

      <item>Every translation-invariant vector is a multiple of
      <math|\<Omega\><rsub|\<xi\>>>.
    </itemize-minus>

    <item><em|Surjectivity.> <math|J<rsub|\<xi\>>> is unitary.

    <item><em|Euclidean vacuum.> <math|\<cal-D\><rsub|\<xi\>>=\<bbb-C\>*\<omega\><rsub|\<xi\>>>.

    <item><em|Zero energy.> For every <math|x\<in\>\<cal-H\><rsub|\<xi\>>>,
    <math|P<rsup|0><rsub|\<xi\>>*x=x> if and only if
    <math|x\<in\>\<bbb-C\>*\<Omega\><rsub|\<xi\>>>.

    <item><em|Low-energy bound.> For every compactly supported finite sum of
    words <math|A> there is <math|M\<geqslant\>0> such that
    <math|\<mu\><rsup|\<xi\>><rsub|A><around|(|<around|{|0\<less\>p<rsup|4>\<leqslant\>u|}>|)>\<leqslant\>M*u<rsup|2>>
    for all <math|\<xi\>\<in\>X> and <math|u\<in\><around|(|0,1|]>>.

    <item><em|Heat decay.> For every such <math|A> there is
    <math|M\<geqslant\>0> such that, for all <math|\<xi\>\<in\>X> and
    <math|s\<geqslant\>1>,
  </enumerate>

  <\equation*>
    0\<leqslant\><around*|\<langle\>|A*\<Omega\><rsub|\<xi\>>,<around|(|e<rsup|-s*H<rsub|\<xi\>>>-P<rsup|0><rsub|\<xi\>>|)>*A*\<Omega\><rsub|\<xi\>>|\<rangle\>>\<leqslant\>M*s<rsup|-2>.
  </equation*>

  <\enumerate>
    <assign|item-nr|6><item><em|Irreducibility.> For a bounded complex-linear
    operator <math|B> on <math|\<cal-H\><rsub|\<xi\>>>, the following are
    equivalent: <math|B\<in\>\<bbb-C\>*<space|0.17em>1>; and, for every
    <math|a>, <math|f> and <math|u,v\<in\>\<frak-D\><rsub|\<xi\>>>, one has
    <math|u\<in\><math-up|dom><space|0.17em>\<phi\><rsub|\<xi\>><around|(|a,f|)><rsup|\<ast\>>>
    and <math|<around|\<langle\>|\<phi\><rsub|\<xi\>><around|(|a,f|)><rsup|\<ast\>>*u,B*v|\<rangle\>>=<around|\<langle\>|u,B*\<phi\><rsub|\<xi\>><around|(|a,f|)>*v|\<rangle\>>>.

    <item><em|Stress tensor.> The conclusions (T0)\U(T6) of Proposition V.3.y
    hold for <math|\<frak-W\><rsub|\<xi\>>>.

    <item><em|Dependence on the phase.>

    <\itemize-minus>
      <item>For all <math|n>, <math|a\<in\>\<bbb-F\><rsup|n>> and
      <math|g\<in\>\<cal-S\><around|(|<around|(|\<bbb-R\><rsup|4>|)><rsup|n>|)>>,
      the map <math|\<xi\>\<mapsto\>W<rsup|\<xi\>><rsub|n><around|(|a;g|)>>
      is continuous and <math|<big|int><rsub|X>W<rsup|\<xi\>><rsub|n><around|(|a;g|)>*<space|0.17em>d*\<nu\><around|(|\<xi\>|)>=W<rsup|<math-up|mix>><rsub|n><around|(|a;g|)>>.

      <item>For every word <math|w> of pairwise distinct points,
      <math|<big|int><rsub|X>S<rsup|\<xi\>><around|(|w|)>*<space|0.17em>d*\<nu\><around|(|\<xi\>|)>=S<rsup|<math-up|mix>><around|(|w|)>>.
    </itemize-minus>
  </enumerate>

  In item 6, <math|e<rsup|-s*H<rsub|\<xi\>>>> is defined as
  <math|J<rsub|\<xi\>><rsup|\<ast\>>*e<rsup|-s*H<rsup|<math-up|OS>><rsub|\<xi\>>>*J<rsub|\<xi\>>>.
  Since <math|J<rsub|\<xi\>>> intertwines the spectral projections (V.3.b),
  this equals <math|<big|int>e<rsup|-s*p<rsup|4>>*<space|0.17em>d*P<rsub|\<xi\>><around|(|p|)>>.
  The projection subtracted in item 6 is the full zero-energy projection.
  Items 5 and 6 are therefore proved before item 4 and independently of it.

  <em|Status:> theorem, for an arbitrary record
  <hlink|<verbatim|Final>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73>.
  The record is constructed in the proof of the main theorem (VIII.1), so the
  statement is unconditional there.

  <\itemize-minus>
    <item>The detailed main theorem states V.3.1 as its clause (D7), via
    <hlink|<verbatim|Independent.Core>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L18-L34>.

    <item>The public theorem uses the Euclidean barycenter formula of item 9
    for clause (R12), via <hlink|<verbatim|publicReconstruction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L79-L133>.

    <item>Item 1 and the averaged Wightman distributions of item 9 enter
    <hlink|<verbatim|Headline.Reconstruction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L75-L81>.

    <item>No unit uses items 2\U8 as hypotheses.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|all_characters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L75-L80>,
  <hlink|<verbatim|Completed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L51-L71>
  (the statement; see Ÿ6 for the fields),
  <hlink|<verbatim|member>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L19-L22>
  (weak commutant), <hlink|<verbatim|Almanac>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L117-L132>
  (the data), <hlink|<verbatim|almanac>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L157-L194>
  (existence).

  <strong|Proposition V.3.2 (no exceptional phase).> For every
  <math|\<xi\>\<in\>X> and <math|x\<in\>\<cal-H\><rsub|\<xi\>>>,

  <\equation*>
    P<rsup|0><rsub|\<xi\>>*x=<around|\<langle\>|\<Omega\><rsub|\<xi\>>,x|\<rangle\>>*<space|0.17em>\<Omega\><rsub|\<xi\>>.
  </equation*>

  <em|Status:> theorem (Lemma V.3.r). Items 3, 4 and 7 of V.3.1 are derived
  from it. <em|Lean:> <hlink|<verbatim|all_plant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L115-L144>,
  <hlink|<verbatim|boundary_zero_energy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L158-L162>.

  <strong|Remark V.3.3 (recorded consequences, not used by the main
  theorem).> Under V.3.1, for every <math|\<xi\>\<in\>X> and
  <math|x\<in\>\<cal-H\><rsub|\<xi\>>>:

  <\itemize-minus>
    <item>(a) <math|e<rsup|-s*H<rsub|\<xi\>>>*x=x> for all
    <math|s\<geqslant\>0> if and only if <math|x\<in\>\<bbb-C\>*\<Omega\><rsub|\<xi\>>>;

    <item>(b) <math|x> is invariant under all translations if and only if
    <math|x\<in\>\<bbb-C\>*\<Omega\><rsub|\<xi\>>>;

    <item>(c) for every degree <math|d> and degree-<math|d> token coefficient
    vector <math|v>, <math|v> is null for <math|S<rsup|\<xi\>>> if and only
    if the field associated to its class in <math|F<rsub|d>> vanishes on
    every test function;

    <item>(d) reflection positivity holds for every affine hyperplane. More
    precisely, let <math|O\<in\>O<around|(|4|)>>,
    <math|b\<in\>\<bbb-R\><rsup|4>> and <math|a\<in\><around|{|1,2,3,4|}>>.
    For any finite family of words <math|w<rsub|i>> with distinct points in
    <math|<around|{|x:<around|(|O<rsup|-1><around|(|x-b|)>|)><rsup|a>\<gtr\>0|}>>,
  </itemize-minus>

  <\equation*>
    <big|sum><rsub|i,j><wide|c<rsub|i>|\<bar\>>c<rsub|j>*<space|0.17em>S<rsup|\<xi\>>*<around|(|\<theta\><rsub|O,b,a>*w<rsub|i>*<space|0.17em>w<rsub|j>|)>\<geqslant\>0*<space|2em><around|(|c<rsub|i>\<in\>\<bbb-C\>|)>.
  </equation*>

  Here <math|\<theta\><rsub|O,b,a>> reverses the word, reflects its points
  across the hyperplane, and acts on labels by transporting the <math|a>-axis
  reflection through <math|O>.

  <em|Lean:> <hlink|<verbatim|fixedHeat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L100-L102>,
  <hlink|<verbatim|exactly_fixed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L103-L106>,
  <hlink|<verbatim|recognizes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L90-L98>,
  <hlink|<verbatim|allPlanes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L84-L88>.

  <section|2. What it uses><label|2-what-it-uses>

  <strong|From other units.>

  <\itemize-minus>
    <item><strong|IV.1 (infinite volume).> The Euclidean axioms of
    <math|S<rsup|<math-up|mix>>>: translation homogeneity, reflection
    positivity, smoothness. Lean: <hlink|<verbatim|Seed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26>.

    <item><strong|V.1 (decomposition into phases).> The data:

    <\itemize-minus>
      <item>the triple <math|<around|(|X,\<nu\>,\<chi\>|)>> with the
      properties of Ÿ1: <hlink|<verbatim|Resolution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L65-L72>,
      <hlink|<verbatim|Resolution.Out>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L78-L86>,
      <hlink|<verbatim|Resolution.receives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L89-L91>;

      <item>for every <math|\<xi\>>: the Euclidean axioms of
      <math|S<rsup|\<xi\>>>, null spaces equal to those of
      <math|S<rsup|<math-up|mix>>>, the inclusion, derivative and rotation
      laws, and the Euclidean Ward identities of the stress tensor;

      <item>the slab laws of <math|S<rsup|<math-up|mix>>>, including its copy
      bounds (below): <hlink|<verbatim|Selection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L127-L134>,
      <hlink|<verbatim|Selection.Certificate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L136-L148>.
    </itemize-minus>

    <item><strong|V.1, tools.>

    <\itemize-minus>
      <item>The OS space of a table: <hlink|<verbatim|OS.realization>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L106-L107>.

      <item>The multiple-reflection bound for slab operators:
      <hlink|<verbatim|OS.producer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Train.lean#L116-L123>.

      <item>A countable family of positive-time words whose OS vectors are
      total in the OS space of every symmetric smooth table:
      <hlink|<verbatim|Work.B14.universal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B14.lean#L119-L143>.

      <item>Continuity of OS vectors in the points:
      <hlink|<verbatim|Work.B14.plant_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B14.lean#L99-L107>.

      <item>The full slab laws from the copy bounds:
      <hlink|<verbatim|Work.B02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B02.lean#L17-L30>.

      <item>Almost-everywhere uniqueness of the Euclidean vacuum (Lemma
      V.3.c): <hlink|<verbatim|Cluster.lifts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Unique.lean#L91-L110>.

      <item>The Euclidean barycenter formula:
      <hlink|<verbatim|Resolution.barycenter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L113-L117>.
    </itemize-minus>

    <item><strong|V.2 (OS reconstruction).>

    <\itemize-minus>
      <item>The continuations of <math|S<rsup|<math-up|mix>>> and of
      <math|S<rsup|\<xi\><rsub|\<ast\>>>>, and the theory
      <math|\<frak-W\><rsub|\<xi\><rsub|\<ast\>>>> with all Wightman axioms:
      <hlink|<verbatim|Relativistic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L50-L54>.

      <item>Compatibility of both continuations with the slab operators,
      which includes the polynomial bound on one-point slab operators used in
      V.3.d: <hlink|<verbatim|onFinal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Compatibility.lean#L26-L29>.

      <item>The estimates of work items C01\UC29 on the continuation and its
      partial boundary values (used in V.3.d, V.3.g, V.3.i).
    </itemize-minus>

    <item><strong|Reconstruction machinery from V.2:>

    <\itemize-minus>
      <item>Wightman data lacking only vacuum uniqueness:
      <hlink|<verbatim|FieldCore>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Core.lean#L34-L44>.

      <item>The boundary isometry and its properties:
      <hlink|<verbatim|Attachment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Core.lean#L156-L161>,
      <hlink|<verbatim|Attachment.measures>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Core.lean#L198-L204>,
      <hlink|<verbatim|Attachment.projections>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Core.lean#L207-L246>,
      <hlink|<verbatim|Attachment.with_heat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Core.lean#L191-L194>.

      <item>The constructions run at each phase:
      <hlink|<verbatim|contour>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L46-L49>,
      <hlink|<verbatim|compatible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L200-L215>,
      <hlink|<verbatim|establishing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L167-L184>.
    </itemize-minus>

    <item><strong|VI.1 (Ward identities, rotations, stress tensor).>
    Derivative plan, rotations and Euclidean stress tensor:
    <hlink|<verbatim|Algebra>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L28-L31>.
    Their laws (conservation and symmetry of <math|T<rsup|<math-up|E>>>,
    tensor covariance, rotation laws): <hlink|<verbatim|Locals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L34-L43>.
  </itemize-minus>

  <strong|Standard mathematics.>

  <\itemize-minus>
    <item>OS reconstruction: Osterwalder\USchrader, CMP 31 (1973) and CMP 42
    (1975); Glimm\UJaffe, <em|Quantum Physics>, Ch. 6 and 19.

    <item>Boundedness of transfer operators by iterated reflection and the
    Cauchy\USchwarz inequality: Glimm\UJaffe, Ch. 10;
    Fröhlich\UIsrael\ULieb\USimon, CMP 62 (1978).

    <item>Decomposition of a state along an abelian algebra of the vacuum
    sector, used in V.1 and in V.3.c: Bratteli\URobinson, vol. 1, Ch. 4.

    <item>Spectral theorem for unitary representations of
    <math|\<bbb-R\><rsup|4>>, Bochner's theorem, Laplace transforms of
    positive measures: Reed\USimon I\UII.

    <item>Boundary values of holomorphic functions of polynomial growth and
    their Taylor representation: Streater\UWightman, Ch. 2; Reed\USimon II,
    ŸIX.3.

    <item>Complex analysis: Vitali\UMontel theorem, identity theorem,
    Morera's theorem, Liouville's theorem.

    <item>Uniqueness of the vacuum and irreducibility of the field algebra:
    Streater\UWightman, Ch. 4; Jost, <em|The General Theory of Quantized
    Fields>.
  </itemize-minus>

  <strong|Imported constants and assumptions.> The record
  <hlink|<verbatim|Final>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73>
  is the only hypothesis. Its quantitative inputs are as follows.

  <\itemize-minus>
    <item><strong|(i) Copy bounds of <math|S<rsup|<math-up|mix>>>> (V.1, from
    the chessboard estimates). For every degree bound <math|D> and
    coefficient bound <math|R> there are <math|C\<gtr\>0> and
    <math|Q\<in\>\<bbb-N\>> with
  </itemize-minus>

  <\equation*>
    <around|\<\|\|\>|\<Pi\><around|(|d,w|)>|\<\|\|\>>\<leqslant\>C<rsup|<around|\||w|\|>>*<around|(|<around|\||w|\|>/r|)><rsup|Q<around|\||w|\|>>.
  </equation*>

  This holds for every word <math|w> of <math|<around|\||w|\|>> points with
  degrees <math|\<leqslant\>D> and coefficients <math|\<leqslant\>R>, lying
  in the slab <math|<around|[|r,d-r|]>>, with points <math|r>-separated and
  <math|0\<less\>r\<leqslant\>1>.

  <\itemize-minus>
    <item><strong|(ii) One-point slab operators> (V.2). For each label
    <math|a\<in\>\<bbb-F\>> there are <math|Q<rsub|a>\<gtr\>0> and
    <math|N<rsub|a>\<in\>\<bbb-N\>> such that the one-point slab operator of
    <math|S<rsup|<math-up|mix>>>, of thickness <math|2*p> with <math|a> at
    <math|<around|(|<wide|0|\<vect\>>,p|)>>, has norm at most
    <math|Q<rsub|a>*p<rsup|-N<rsub|a>>> for <math|0\<less\>p\<less\>1>. The
    exponent <math|N<rsub|a>> is a bound, not an asserted scaling dimension.
  </itemize-minus>

  The one-point bound is <hlink|<verbatim|Boundary.Small.rated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Tall.lean#L62-L63>.

  The unit's own constants are explicit:

  <\itemize-minus>
    <item><math|R=4*r+1> in V.3.m;

    <item><math|c<around|(|R,M|)>=16*\<pi\><space|0.17em><around|\||B<rsub|1>|\|><space|0.17em><around|\||B<rsub|R>|\|>*<space|0.17em>M/c<rsub|3>>
    in V.3.k, where <math|<around|\||B<rsub|r>|\|>> is the volume of the ball
    of radius <math|r> in <math|\<bbb-R\><rsup|3>> and
    <math|c<rsub|3>=<around|(|2*\<pi\>|)><rsup|3>> for the Fourier convention
    in V.3.k;

    <item>the factor <math|2> in V.3.l;

    <item><math|\<Gamma\><around|(|3|)>=2> in V.3.o.
  </itemize-minus>

  The Fourier convention and constant are
  <hlink|<verbatim|Boundary.Probe.hat_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Distribution/Tests.lean#L84-L90>,
  <hlink|<verbatim|Boundary.Probe.pref>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Distribution/Tests.lean#L48>.

  <section|3. Strategy><label|3-strategy>

  V.2 reconstructs a relativistic theory at a selected phase
  <math|\<xi\><rsub|\<ast\>>>. The same construction applies to every
  <math|S<rsup|\<xi\>>> before vacuum uniqueness is known. The norm of each
  phase\<#2019\>s slab operator is bounded by the corresponding norm for
  <math|S<rsup|<math-up|mix>>> (V.3.a): repeated reflection gives a power
  bound, and the fixed norm of the character disappears on taking roots. This
  gives polynomial continuation bounds uniform in <math|\<xi\>>. Character
  continuity at imaginary times propagates to complex times by
  Vitali\<#2019\>s theorem, then to boundary distributions by a Taylor
  formula with an integrable remainder. Integration over phases commutes with
  both passages (V.3.d\UV.3.h).

  Vacuum uniqueness holds almost everywhere by the phase decomposition
  (V.3.c). To extend it to every phase, fix a compactly supported finite sum
  of words <math|A> and set

  <\equation*>
    r<rsub|\<xi\>><around|(|s|)>=<around|\<langle\>|A*\<Omega\><rsub|\<xi\>>,e<rsup|-s*H<rsub|\<xi\>>>*A*\<Omega\><rsub|\<xi\>>|\<rangle\>>-<around|\||<around|\<langle\>|\<Omega\><rsub|\<xi\>>,A*\<Omega\><rsub|\<xi\>>|\<rangle\>>|\|><rsup|2>.
  </equation*>

  Locality makes the vacuum commutator vanish at large spatial separation for
  <math|<around|\||t|\|>\<leqslant\>1>. Its time-averaged odd part is the
  spatial Fourier transform of a positive measure, weighted by
  <math|<around|(|1-cos E|)>/E>. A momentum bump of radius <math|u> bounds
  its shell mass by <math|O<around|(|u<rsup|2>|)>>: the bump contributes
  <math|u<rsup|3>>, while the weight contributes <math|u>. Dyadic summation
  and a Laplace transform give decay <math|M*s<rsup|-2>>, uniformly in
  <math|\<xi\>>, after subtracting the full zero-energy projection
  (V.3.k\UV.3.o). Almost everywhere this is the vacuum projection. Since
  <math|r<rsub|\<xi\>><around|(|s|)>> is continuous, the same estimate holds
  everywhere by full support of <math|\<nu\>>. Letting
  <math|s\<to\>\<infty\>> identifies the zero-energy projection with the
  vacuum projection at every phase (V.3.q\UV.3.r). This needs no continuity
  of the zero-energy projection itself.

  Separately, positive-height Euclidean vectors are images of Wightman
  vectors with exponentially weighted frequency tests, so
  <math|J<rsub|\<xi\>>> is onto (V.3.i\UV.3.j). Vacuum uniqueness therefore
  holds on both sides. A Liouville argument gives irreducibility. Finally,
  continuation of the Euclidean Ward identities gives the local stress-charge
  commutator (V.3.u\UV.3.y). The removal of the exceptional set uses uniform
  low-energy control from locality, rather than a mass gap.

  <section|4. Steps><label|4-steps>

  <subsection|4.1 Slab bounds and the family of
  reconstructions><label|41-slab-bounds-and-the-family-of-reconstructions>

  <strong|Lemma V.3.a (slab operators of a phase are dominated).> Fix
  <math|\<xi\>\<in\>X>. Let <math|\<cal-K\>> be any OS space of
  <math|S<rsup|\<xi\>>> for the time axis, and <math|\<Pi\><rsub|\<xi\>>> any
  family of slab operators on it. Then for every thickness <math|d\<gtr\>0>
  and every word <math|w> of pairwise distinct points in the slab
  <math|<around|(|0,d|)>>,

  <\equation*>
    <around|\<\|\|\>|\<Pi\><rsub|\<xi\>><around|(|d,w|)>|\<\|\|\>>\<leqslant\><around|\<\|\|\>|\<Pi\><around|(|d,w|)>|\<\|\|\>>,
  </equation*>

  where <math|\<Pi\>> are the slab operators of <math|S<rsup|<math-up|mix>>>
  on <math|\<cal-H\><rsup|<math-up|OS>>>. Here <math|\<Pi\><around|(|d,w|)>>
  maps the OS vector of a positive-time word <math|v> to that of <math|w>
  followed by <math|v> translated by <math|d>.

  <em|Sketch.>

  <\enumerate>
    <item>Let <math|u=\<Pi\><around|(|d,w|)>> and
    <math|D\<gtr\><around|\<\|\|\>|u|\<\|\|\>>>. For a positive-time word
    <math|v>, let <math|X<around|(|v|)>> be the slab operator of <math|v>
    restricted to the ground space <math|\<cal-D\>>.

    <item>The compression of the doubled word
    <math|\<theta\>*v*<space|0.17em>v> is
    <math|X<around|(|v|)><rsup|\<ast\>>*X<around|(|v|)>\<in\>\<frak-A\>>. Let
    <math|r<rsub|n>> be <math|v> with <math|n> reflected pairs of copies of
    <math|w> inserted. Then <math|X<around|(|r<rsub|n>|)>=<around|(|u<rsup|\<ast\>>*u|)><rsup|n>*X<around|(|v|)>>.

    <item>Hence the diagonal Gram entry of <math|r<rsub|n>> in
    <math|S<rsup|\<xi\>>> satisfies
  </enumerate>

  <\equation*>
    <around|\||S<rsup|\<xi\>>*<around|(|\<theta\>*r<rsub|n>*<space|0.17em>r<rsub|n>|)>|\|>=<around|\||\<chi\><rsub|\<xi\>>*<around|(|X<around|(|r<rsub|n>|)><rsup|\<ast\>>*X<around|(|r<rsub|n>|)>|)>|\|>\<leqslant\><around|\<\|\|\>|\<chi\><rsub|\<xi\>>|\<\|\|\>><space|0.17em><around|\<\|\|\>|X<around|(|v|)>|\<\|\|\>><rsup|2>*D<rsup|4*n>.
  </equation*>

  <\enumerate>
    <assign|item-nr|3><item>The power argument (iterated Cauchy\USchwarz on
    the span of OS vectors) turns this into an operator on <math|\<cal-K\>>
    of norm at most <math|D> that inserts <math|w>. The fixed factor
    <math|<around|\<\|\|\>|\<chi\><rsub|\<xi\>>|\<\|\|\>><space|0.17em><around|\<\|\|\>|X<around|(|v|)>|\<\|\|\>><rsup|2>>
    disappears in the limit.

    <item>Slab operators are determined by their action on OS vectors, so
    this operator is <math|\<Pi\><rsub|\<xi\>><around|(|d,w|)>>. Finally let
    <math|D*\<downarrow\><around|\<\|\|\>|u|\<\|\|\>>>.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|sameBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L95-L100>,
  with <hlink|<verbatim|x_train>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L32-L50>,
  <hlink|<verbatim|buys>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L53-L74>,
  <hlink|<verbatim|actual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L76-L91>,
  and <hlink|<verbatim|OS.producer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Train.lean#L116-L123>.

  <strong|Lemma V.3.b (the family of reconstructions).> For every
  <math|\<xi\>> there are:

  <\itemize-minus>
    <item>(i) an OS space <math|\<cal-H\><rsup|<math-up|OS>><rsub|\<xi\>>> of
    <math|S<rsup|\<xi\>>> with slab operators <math|\<Pi\><rsub|\<xi\>>>
    satisfying the slab laws (copy bounds, smoothness in the positions,
    derivative rule), with the copy constants of
    <math|S<rsup|<math-up|mix>>>, hence uniformly in <math|\<xi\>>;

    <item>(ii) a continuation <math|<math-ss|F><rsup|\<xi\>>> of
    <math|S<rsup|\<xi\>>> with non-tangential boundary values
    <math|W<rsup|\<xi\>>>;

    <item>(iii) a Wightman theory <math|\<frak-W\><rsub|\<xi\>>> with all
    properties of V.3.1(1) except uniqueness of the vacuum, with the star
    operation and label action of <math|\<frak-W\><rsub|\<xi\><rsub|\<ast\>>>>;

    <item>(iv) an isometry <math|J<rsub|\<xi\>>> with
    <math|J<rsub|\<xi\>>*\<Omega\><rsub|\<xi\>>=\<omega\><rsub|\<xi\>>> and
    <math|J<rsub|\<xi\>>*U<rsub|\<xi\>><around|(|a|)>=U<rsup|<math-up|OS>><rsub|\<xi\>><around|(|a|)>*J<rsub|\<xi\>>>
    for <math|a\<in\>\<bbb-R\><rsup|4>>, where
    <math|U<rsup|<math-up|OS>><rsub|\<xi\>>> is the OS translation group. It
    is uniquely determined by the following boundary property: Euclidean word
    vectors at positive imaginary heights, smeared with a joint Schwartz test
    <math|g>, converge in Hilbert norm to
    <math|J<rsub|\<xi\>>*\<Phi\><rsub|\<xi\>><around|(|a;g|)>> as the heights
    and slab widths tend to zero with the positive margins of V.3.i. Here
    <math|\<Phi\><rsub|\<xi\>>> is the continuous extension of word vectors
    to joint tests.
  </itemize-minus>

  At <math|\<xi\><rsub|\<ast\>>> these are the data of V.1\UV.2. Moreover:

  <\itemize-minus>
    <item><math|J<rsub|\<xi\>>*P<rsub|\<xi\>><around|(|B|)>=P<rsup|<math-up|OS>><rsub|\<xi\>><around|(|B|)>*J<rsub|\<xi\>>>
    for every Borel set <math|B\<subset\>\<bbb-R\><rsup|4>>, so
    <math|\<mu\><rsup|\<xi\>><rsub|x>> is the spectral measure of
    <math|J<rsub|\<xi\>>*x>;

    <item>if <math|\<cal-D\><rsub|\<xi\>>=\<bbb-C\>*\<omega\><rsub|\<xi\>>>,
    then <math|\<frak-W\><rsub|\<xi\>>> satisfies all of V.3.1(1).
  </itemize-minus>

  <em|Sketch.>

  <\itemize-minus>
    <item>For <math|\<xi\>\<ne\>\<xi\><rsub|\<ast\>>>, the OS space is built
    from <math|S<rsup|\<xi\>>> and the slab operators are those of V.3.a.

    <item>Their copy bounds are those of <math|S<rsup|<math-up|mix>>>, by
    V.3.a; the remaining slab laws follow from the copy bounds.

    <item>The continuation, the compatibility data and a theory without
    vacuum uniqueness come from the reconstruction machinery of V.2. The
    boundary property in (iv) determines the isometry on a dense span of word
    vectors.

    <item>At <math|\<xi\><rsub|\<ast\>>> the existing data are taken, so the
    construction does not alter V.2.

    <item>The intertwining of the spectral projections follows from
    intertwining the translations, by comparing characteristic functions.

    <item>The last assertion holds because a translation-invariant <math|x>
    has <math|J<rsub|\<xi\>>*x\<in\>\<cal-D\><rsub|\<xi\>>> and
    <math|J<rsub|\<xi\>>> is injective.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|storeys>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L134-L155>,
  <hlink|<verbatim|almanac>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L157-L194>,
  <hlink|<verbatim|Almanac.priced>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L196-L199>,
  <hlink|<verbatim|Attachment.projections>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Core.lean#L207-L246>,
  <hlink|<verbatim|Attachment.with_heat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Core.lean#L191-L194>.
  <em|(proof read for these; <hlink|<verbatim|contour>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L46-L49>,
  <hlink|<verbatim|compatible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L200-L215>,
  <hlink|<verbatim|establishing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L167-L184>
  and <hlink|<verbatim|Work.B02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B02.lean#L17-L30>
  also read; underlying analytic inputs from V.2)>

  <strong|Lemma V.3.c (unique Euclidean vacuum for almost every phase; from
  V.1).> For <math|\<nu\>>-almost every <math|\<xi\>>,
  <math|\<cal-D\><rsub|\<xi\>>=\<bbb-C\>*\<omega\><rsub|\<xi\>>>.

  <em|Sketch (a variance identity).> For a positive-time word <math|b>, let
  <math|\<Psi\><rsub|\<xi\>><around|(|b|)>\<in\>\<cal-H\><rsup|<math-up|OS>><rsub|\<xi\>>>
  be its OS vector and <math|Q<rsub|\<xi\>>> the projection onto
  <math|\<cal-D\><rsub|\<xi\>>>.

  <\enumerate>
    <item><math|<around|\<\|\|\>|Q<rsub|\<xi\>>*\<Psi\><rsub|\<xi\>><around|(|b|)>|\<\|\|\>><rsup|2>=lim<rsub|s\<to\>\<infty\>>
    S<rsup|\<xi\>>*<around|(|\<theta\>*b<rsub|s>*<space|0.17em>b<rsub|s>|)>>,
    where <math|b<rsub|s>> is <math|b> translated by <math|s> in time. The
    terms are character values, continuous in <math|\<xi\>>, nonincreasing in
    <math|s> and dominated by the value at <math|s=0>.

    <item>By dominated convergence and the barycenter identity,
    <math|<big|int><around|\<\|\|\>|Q<rsub|\<xi\>>*\<Psi\><rsub|\<xi\>><around|(|b|)>|\<\|\|\>><rsup|2>*d*\<nu\>=<around|\<\|\|\>|Q*\<Psi\><around|(|b|)>|\<\|\|\>><rsup|2>>.

    <item>On the other hand <math|S<rsup|\<xi\>><around|(|b|)>=\<chi\><rsub|\<xi\>><around|(|M<rsub|b>|)>>
    and <math|M<rsub|b>*\<omega\>=Q*\<Psi\><around|(|b|)>>. Multiplicativity
    of characters gives <math|<big|int><around|\||S<rsup|\<xi\>><around|(|b|)>|\|><rsup|2>*d*\<nu\>=<big|int>\<chi\><rsub|\<xi\>>*<around|(|M<rsub|b><rsup|\<ast\>>*M<rsub|b>|)>*<space|0.17em>d*\<nu\>=<around|\<\|\|\>|Q*\<Psi\><around|(|b|)>|\<\|\|\>><rsup|2>>.

    <item>Hence the nonnegative function <math|<around|\<\|\|\>|Q<rsub|\<xi\>>*\<Psi\><rsub|\<xi\>><around|(|b|)>|\<\|\|\>><rsup|2>-<around|\||S<rsup|\<xi\>><around|(|b|)>|\|><rsup|2>=<around|\<\|\|\>|Q<rsub|\<xi\>>*\<Psi\><rsub|\<xi\>><around|(|b|)>-S<rsup|\<xi\>><around|(|b|)>*\<omega\><rsub|\<xi\>>|\<\|\|\>><rsup|2>>
    has integral zero, so <math|Q<rsub|\<xi\>>*\<Psi\><rsub|\<xi\>><around|(|b|)>\<in\>\<bbb-C\>*\<omega\><rsub|\<xi\>>>
    almost everywhere.

    <item>Let <math|b> run over a countable family of words whose OS vectors
    are total in every OS space (<hlink|<verbatim|Work.B14.universal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B14.lean#L119-L143>).
  </enumerate>

  <em|Lean:> <hlink|<verbatim|Almanac.almostEvery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L208-L212>,
  <hlink|<verbatim|Cluster.lifts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Unique.lean#L91-L110>,
  <hlink|<verbatim|Cluster.exp_real>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Unique.lean#L56-L86>.

  <subsection|4.2 Continuity in the phase and
  barycenter><label|42-continuity-in-the-phase-and-barycenter>

  <strong|Lemma V.3.d (polynomial bound, uniform in the phase).> For every
  <math|n> and <math|a\<in\>\<bbb-F\><rsup|n>> there are
  <math|m\<in\>\<bbb-N\>> and <math|C<rsub|0>\<geqslant\>0> with the
  following property. For all <math|\<xi\>>, all real configurations
  <math|x>, and all heights <math|y> with
  <math|y<rsub|j>-y<rsub|i>\<geqslant\>k> for <math|i\<less\>j>, where
  <math|k\<in\><around|(|0,1|]>>,

  <\equation*>
    <around|\||<math-ss|F><rsup|\<xi\>><rsub|n><around|(|a;<space|0.17em>t<around|(|x|)>+i*y,<space|0.17em><wide|x|\<vect\>>|)>|\|>\<leqslant\>C<rsub|0>*<space|0.17em>k<rsup|-m>.
  </equation*>

  <em|Sketch.>

  <\itemize-minus>
    <item><math|<math-ss|F><rsup|\<xi\>><rsub|n>> at such points is a matrix
    element, between <math|\<omega\><rsub|\<xi\>>> and
    <math|\<omega\><rsub|\<xi\>>>, of a product of contractions (complex-time
    evolutions, spatial translations) and one-point slab operators of
    thickness of order <math|k>.

    <item>Each one-point slab operator is bounded by the corresponding one
    for <math|S<rsup|<math-up|mix>>> (V.3.a), which is polynomial in
    <math|1/k> (input (ii) of Ÿ2).

    <item>Choose slab half-width <math|p=k/8>. With the constants of Ÿ2(ii),
    take <math|m=<big|sum><rsub|j>N<rsub|a<rsub|j>>> and
    <math|C<rsub|0>=<big|prod><rsub|j><around|(|Q<rsub|a<rsub|j>>*8<rsup|N<rsub|a<rsub|j>>>|)>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|power>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pages.lean#L19-L46>.
  <em|(proof read; the matrix-element representation of the continuation
  comes from V.2)>

  <strong|Lemma V.3.e (strict heights).> For all <math|n>, <math|a>, real
  <math|x> and <math|y<rsub|1>\<less\>\<ldots\>\<less\>y<rsub|n>>, the map
  <math|\<xi\>\<mapsto\><math-ss|F><rsup|\<xi\>><rsub|n><around|(|a;t<around|(|x|)>+i*y,<wide|x|\<vect\>>|)>>
  is continuous and its <math|\<nu\>>-integral is
  <math|<math-ss|F><rsup|<math-up|mix>><rsub|n><around|(|a;t<around|(|x|)>+i*y,<wide|x|\<vect\>>|)>>.

  <em|Sketch.>

  <\enumerate>
    <item>At purely imaginary times <math|z<rsub|j>=i*y<rsub|j>>,
    <math|<math-ss|F><rsup|\<xi\>><rsub|n>> is <math|S<rsup|\<xi\>>> of a
    word of distinct points, hence a character value. It is therefore
    continuous in <math|\<xi\>>, with barycenter
    <math|S<rsup|<math-up|mix>>>.

    <item>Along the complex line <math|c\<mapsto\>i*y+c*<space|0.17em>t<around|(|x|)>>,
    for <math|c> in a strip <math|<around|\||<math-up|Im>c|\|>\<less\>\<delta\>>
    (where the heights stay ordered with gaps <math|\<geqslant\>k/2>), the
    functions are holomorphic and bounded uniformly in <math|\<xi\>> by
    V.3.d.

    <item>By Vitali's theorem, convergence along nets
    <math|\<xi\><rprime|'>\<to\>\<xi\>> on the imaginary segment through
    <math|0> propagates to the whole strip.

    <item>The integral over <math|X> is holomorphic in <math|c>. It agrees
    with the unselected function on that segment, hence on the strip by the
    identity theorem. Evaluate at <math|c=1>.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|imaginary_evaluation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pages.lean#L152-L170>,
  <hlink|<verbatim|strict_evaluation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pages.lean#L193-L228>,
  <hlink|<verbatim|integral_holomorphic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pages.lean#L114-L146>,
  <hlink|<verbatim|propagate_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vitali.lean#L67-L89>.

  <strong|Lemma V.3.f (tested strict heights).> For
  <math|y<rsub|1>\<less\>\<ldots\>\<less\>y<rsub|n>> and
  <math|g\<in\>\<cal-S\><around|(|<around|(|\<bbb-R\><rsup|4>|)><rsup|n>|)>>,
  define <math|\<psi\><rsup|\<xi\>><around|(|a,y,g|)>=<big|int><math-ss|F><rsup|\<xi\>><rsub|n><around|(|a;t<around|(|x|)>+i*y,<wide|x|\<vect\>>|)>*<space|0.17em>g<around|(|x|)>*<space|0.17em>d*x>.
  Then <math|\<xi\>\<mapsto\>\<psi\><rsup|\<xi\>><around|(|a,y,g|)>> is
  continuous, and <math|<big|int>\<psi\><rsup|\<xi\>>*<space|0.17em>d*\<nu\>=\<psi\><rsup|<math-up|mix>>>.

  <em|Sketch.> Dominated convergence with dominator
  <math|C<rsub|0>*k<rsup|-m><around|\||g|\|>> (V.3.d), and Fubini.

  <em|Lean:> <hlink|<verbatim|eager>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Barycenter.lean#L18-L42>.

  <strong|Lemma V.3.g (continuity and barycenter of the Wightman
  distributions).> Item 9 of V.3.1, first part.

  <em|Sketch.> Let <math|\<rho\>=<around|(|0,1,\<ldots\>,n-1|)>> and
  <math|D=-i*<big|sum><rsub|j=1><rsup|n><around|(|j-1|)>*\<partial\><rsub|t<rsub|j>>>
  on joint test functions. The Cauchy\URiemann equations and integration by
  parts give <math|<frac|d|d*t>*\<psi\><around|(|a,y+t*\<rho\>,g|)>=\<psi\><around|(|a,y+t*\<rho\>,D*g|)>>.

  <\enumerate>
    <item>With <math|m> as in V.3.d, the boundary value has the Taylor
    representation
  </enumerate>

  <\equation*>
    W<rsup|\<xi\>><rsub|n><around|(|a;g|)>=<big|sum><rsub|k=0><rsup|m><frac|<around|(|-1|)><rsup|k>|k!>*<space|0.17em>\<psi\><rsup|\<xi\>><around|(|a,\<rho\>,D<rsup|k>*g|)>-<big|int><rsub|0><rsup|1><frac|<around|(|-t|)><rsup|m>|m!>*<space|0.17em>\<psi\><rsup|\<xi\>><around|(|a,t*\<rho\>,D<rsup|m+1>*g|)>*<space|0.17em>d*t.
  </equation*>

  <\enumerate>
    <assign|item-nr|1><item>By V.3.d the integrand is bounded by
    <math|C<rsub|0>*<around|\<\|\|\>|D<rsup|m+1>*g|\<\|\|\>><rsub|L<rsup|1>>>,
    uniformly in <math|t> and <math|\<xi\>>.

    <item>Continuity then follows from V.3.f and dominated convergence in
    <math|t>.

    <item>For the barycenter: <math|\<psi\><rsup|\<xi\>><around|(|a,y,g|)>\<to\>W<rsup|\<xi\>><rsub|n><around|(|a;g|)>>
    as <math|y\<to\>0> among ordered heights, with a bound uniform in
    <math|\<xi\>> and <math|y> given by the same representation. Integrate
    over <math|X> by dominated convergence, and use V.3.f at each <math|y>.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|word_continuity>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Barycenter.lean#L48-L73>,
  <hlink|<verbatim|barycenter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Barycenter.lean#L75-L90>,
  <hlink|<verbatim|Waves.desired>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Breath.lean#L27-L28>,
  <hlink|<verbatim|Waves.meant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Breath.lean#L50-L66>.
  The derivative convention is <hlink|<verbatim|Boundary.Waves.clock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Ridge.lean#L78>.

  <strong|Lemma V.3.h (inner products).> For finite sums of words
  <math|A,A<rprime|'>>:

  <\itemize-minus>
    <item><math|\<xi\>\<mapsto\><around|\<langle\>|A*\<Omega\><rsub|\<xi\>>,A<rprime|'>*\<Omega\><rsub|\<xi\>>|\<rangle\>>>
    is continuous on <math|X>;

    <item><math|M<rsub|A>\<assign\>sup<rsub|\<xi\>><around|\<\|\|\>|A*\<Omega\><rsub|\<xi\>>|\<\|\|\>><rsup|2>=sup<rsub|\<xi\>>
    \<mu\><rsup|\<xi\>><rsub|A><around|(|\<bbb-R\><rsup|4>|)>\<less\>\<infty\>>.
  </itemize-minus>

  <em|Sketch.> <math|<around|\<langle\>|\<phi\><rsub|\<xi\>><around|(|w|)>*\<Omega\><rsub|\<xi\>>,\<phi\><rsub|\<xi\>><around|(|w<rprime|'>|)>*\<Omega\><rsub|\<xi\>>|\<rangle\>>=W<rsup|\<xi\>>*<around|(|w<rsup|\<dagger\>>*w<rprime|'>|)>>,
  with the same star operation for all <math|\<xi\>>. Apply V.3.g, then use
  compactness of <math|X>.

  <em|Lean:> <hlink|<verbatim|word_pair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L179-L183>,
  <hlink|<verbatim|sum_pair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L185-L195>,
  <hlink|<verbatim|word_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L197-L206>.

  <subsection|4.3 Surjectivity of the boundary
  isometry><label|43-surjectivity-of-the-boundary-isometry>

  <strong|Lemma V.3.i (Euclidean vectors at positive heights are in the
  range).> Fix <math|n\<geqslant\>1>, <math|\<xi\>\<in\>X>, labels
  <math|a\<in\>\<bbb-F\><rsup|n>>, heights
  <math|0\<less\>y<rsub|1>\<less\>\<ldots\>\<less\>y<rsub|n>> and
  <math|p\<in\><around|(|0,1|)>> with <math|4*p\<less\>y<rsub|1>> and
  <math|4*p\<less\>y<rsub|j+1>-y<rsub|j>> for <math|1\<leqslant\>j\<less\>n>.

  <\itemize-minus>
    <item>Let <math|B<rsub|\<xi\>,p><around|(|a|)>> be the centered one-point
    slab operator of thickness <math|2*p>. For
    <math|<math-up|Im>z\<gtr\>\<ell\>> put
  </itemize-minus>

  <\equation*>
    R<rsub|\<xi\>,\<ell\>><around|(|z,<wide|x|\<vect\>>|)>=e<rsup|-<around|(|<math-up|Im>z-\<ell\>|)>*H<rsup|<math-up|OS>><rsub|\<xi\>>>*e<rsup|i<math-up|Re>z*H<rsup|<math-up|OS>><rsub|\<xi\>>>*U<rsup|<math-up|OS>><rsub|\<xi\>><around|(|<wide|x|\<vect\>>|)>.
  </equation*>

  For a real configuration <math|q>, write
  <math|z<rsub|j>=q<rsub|j><rsup|4>+i*y<rsub|j>> and define

  <\equation*>
    \<Psi\><rsup|\<xi\>><rsub|p><around|(|a;q+i*y|)>=R<rsub|\<xi\>,p><around|(|z<rsub|1>,<wide|q|\<vect\>><rsub|1>|)>*B<rsub|\<xi\>,p><around|(|a<rsub|1>|)><around*|(|<big|prod><rsub|j=2><rsup|n>R<rsub|\<xi\>,2*p><around|(|z<rsub|j>-z<rsub|j-1>,<wide|q|\<vect\>><rsub|j>-<wide|q|\<vect\>><rsub|j-1>|)>*B<rsub|\<xi\>,p><around|(|a<rsub|j>|)>|)>*\<omega\><rsub|\<xi\>>,
  </equation*>

  where the factors are ordered by increasing <math|j> from left to right;
  the product is empty when <math|n=1>.

  <\itemize-minus>
    <item>Let <math|h\<in\>C<rsup|\<infty\>><rsub|c><around|(|<around|(|\<bbb-R\><rsup|4>|)><rsup|n>|)>>
    and use the convention <math|g<around|(|q|)>=<wide|h|^><around|(|q|)>=<big|int>e<rsup|-i*<big|sum><rsub|j>p<rsub|j>\<cdot\>q<rsub|j>>*h<around|(|p|)>*<space|0.17em>d*p>.
    Set <math|g<rsub|y>=<wide|e<rsup|-<big|sum><rsub|j>y<rsub|j>*p<rsub|j><rsup|4>>*h|^>>.
    Then
  </itemize-minus>

  <\equation*>
    <big|int>g<around|(|q|)>*<space|0.17em>\<Psi\><rsup|\<xi\>><rsub|p><around|(|a;q+i*y|)>*<space|0.17em>d*q=J<rsub|\<xi\>>*<space|0.17em>\<Phi\><rsub|\<xi\>><around|(|a;g<rsub|y>|)>.
  </equation*>

  Here <math|\<Phi\><rsub|\<xi\>><around|(|a;\<cdot\>|)>> is the joint-test
  extension from V.3.b. Compact support of <math|h> ensures that the
  exponential multiplier preserves the Schwartz class.

  <\itemize-minus>
    <item>Consequently every <math|\<Psi\><rsup|\<xi\>><rsub|p><around|(|a;q+i*y|)>>
    lies in <math|<math-up|ran><space|0.17em>J<rsub|\<xi\>>>.
  </itemize-minus>

  <em|Sketch.>

  <\enumerate>
    <item>Call the two sides <math|v> and <math|J<rsub|\<xi\>>*\<Phi\>>.
    Their squared norms and their inner product,
    <math|<around|\<\|\|\>|v|\<\|\|\>><rsup|2>>,
    <math|<around|\<langle\>|v,J<rsub|\<xi\>>*\<Phi\>|\<rangle\>>> and
    <math|<around|\<\|\|\>|J<rsub|\<xi\>>*\<Phi\>|\<\|\|\>><rsup|2>>, are
    each expressed through partial boundary values of <math|W<rsup|\<xi\>>>
    at heights <math|y>.

    <item>On tests of compact frequency support these partial boundary values
    equal <math|W<rsup|\<xi\>>> tested against the damped test functions, so
    the three numbers coincide and <math|<around|\<\|\|\>|v-J<rsub|\<xi\>>*\<Phi\>|\<\|\|\>>=0>.

    <item>Density of compact-frequency tests and continuity in <math|g>
    extend the membership in <math|<math-up|ran><space|0.17em>J<rsub|\<xi\>>>
    to all Schwartz <math|g>.

    <item>Testing against all <math|g>, and using continuity in <math|q>,
    gives the pointwise statement. The range is closed since
    <math|J<rsub|\<xi\>>> is an isometry.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|vector_cooled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Hot.lean#L29-L75>,
  <hlink|<verbatim|vector_in>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Hot.lean#L99-L109>,
  <hlink|<verbatim|shot_in>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Hot.lean#L111-L124>,
  <hlink|<verbatim|boundary_tilt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Frequency.lean#L103-L111>,
  <hlink|<verbatim|chilled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Frequency.lean#L83>.
  <em|(proof read; V.2's partial-boundary identities statement only)>

  <strong|Lemma V.3.j (surjectivity).> Item 2 of V.3.1.

  <em|Sketch.>

  <\enumerate>
    <item>The empty word gives <math|\<omega\><rsub|\<xi\>>=J<rsub|\<xi\>>*\<Omega\><rsub|\<xi\>>>.
    Take a nonempty positive-time Euclidean word with strictly increasing
    times. Its OS vector is a vector <math|\<Psi\><rsup|\<xi\>><rsub|p>> of
    V.3.i (real times <math|0>, heights equal to the Euclidean times), so it
    lies in the range.

    <item>Take a general positive-time word. By symmetry its points may be
    reordered so that the times are nondecreasing, say <math|r>. Then
    <math|r+u*\<rho\>> is strictly increasing for <math|u\<gtr\>0>.

    <item>Its OS vector is the limit, as <math|u*\<downarrow\>*0>, of OS
    vectors in the range, by continuity of OS vectors in the points. It
    therefore lies in the range, because the range is closed.

    <item>These vectors span a dense subspace, so
    <math|<math-up|ran><space|0.17em>J<rsub|\<xi\>>> is dense and closed.
  </enumerate>

  Vacuum uniqueness is not used.

  <em|Lean:> <hlink|<verbatim|onto>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Surjective.lean#L178-L223>,
  <hlink|<verbatim|ordered_covered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Surjective.lean#L160-L176>,
  <hlink|<verbatim|bright_shot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Surjective.lean#L119-L128>,
  <hlink|<verbatim|reaches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Projection.lean#L20-L25>.

  <subsection|4.4 Low-energy bound and heat
  decay><label|44-low-energy-bound-and-heat-decay>

  <strong|Lemma V.3.k (time-averaged commutator).> Let
  <math|\<rho\>,\<sigma\>> be finite positive measures on
  <math|\<bbb-R\><rsup|4>> supported in <math|<wide|V|\<bar\>><rsub|+>>, with
  <math|\<rho\><around|(|\<bbb-R\><rsup|4>|)>+\<sigma\><around|(|\<bbb-R\><rsup|4>|)>\<leqslant\>M>.
  Put

  <\equation*>
    <wide|\<rho\>|^><around|(|<wide|x|\<vect\>>,t|)>=<big|int>e<rsup|i*<around|(|<wide|p|\<vect\>>\<cdot\><wide|x|\<vect\>>+p<rsup|4>*t|)>>*<space|0.17em>d*\<rho\><around|(|p|)>,<space|2em>a=<wide|\<rho\>|^><around|(|\<cdummy\>|)>-<wide|\<sigma\>|^><around|(|-<space|0.17em>\<cdot\>|)>,<space|2em>D<around|(|<wide|x|\<vect\>>|)>=<big|int><rsub|0><rsup|1><frac|a<around|(|<wide|x|\<vect\>>,t|)>-a<around|(|<wide|x|\<vect\>>,-t|)>|2*i>*<space|0.17em>d*t.
  </equation*>

  Then <math|<around|\||D|\|>\<leqslant\>M>. Write
  <math|\<cal-F\>*f<around|(|x|)>=<big|int>e<rsup|-i<wide|p|\<vect\>>\<cdot\>x>*f<around|(|<wide|p|\<vect\>>|)>*<space|0.17em>d<wide|p|\<vect\>>>,
  so <math|c<rsub|3>=<around|(|2*\<pi\>|)><rsup|3>>. If moreover
  <math|D<around|(|<wide|x|\<vect\>>|)>=0> for
  <math|<around|\||<wide|x|\<vect\>>|\|>\<gtr\>R>, then for
  <math|0\<less\>u\<leqslant\>1>

  <\equation*>
    \<rho\><around|(|<around|{|u/2\<less\>p<rsup|4>\<leqslant\>u|}>|)>\<leqslant\>c<around|(|R,M|)>*<space|0.17em>u<rsup|2>,<space|2em>c<around|(|R,M|)>=16*\<pi\><space|0.17em><around|\||B<rsub|1>|\|><space|0.17em><around|\||B<rsub|R>|\|>*<space|0.17em>M/c<rsub|3>.
  </equation*>

  <em|Sketch.>

  <\enumerate>
    <item>By Fubini, <math|D> is the spatial Fourier transform of
    <math|\<rho\><rsup|\<sharp\>>+\<sigma\><rsup|\<sharp\>>>. Here
    <math|\<rho\><rsup|\<sharp\>>> is the image under
    <math|p\<mapsto\><wide|p|\<vect\>>> of
    <math|\<pi\><around|(|p<rsup|4>|)>*<space|0.17em>d*\<rho\><around|(|p|)>>,
    with <math|\<pi\><around|(|E|)>=<big|int><rsub|0><rsup|1>sin
    <around|(|E*t|)>*<space|0.17em>d*t>, equal to <math|<around|(|1-cos
    E|)>/E> for <math|E\<gtr\>0> and to <math|0> at <math|E=0>, and
    <math|\<sigma\><rsup|\<sharp\>>> is the analogous image of
    <math|\<sigma\>> under <math|p\<mapsto\>-<wide|p|\<vect\>>>.

    <item>On <math|<wide|V|\<bar\>><rsub|+>> one has
    <math|\<pi\><around|(|p<rsup|4>|)>\<geqslant\>0> at all energies, and
    <math|\<pi\><around|(|E|)>\<geqslant\>E/\<pi\>> for
    <math|0\<leqslant\>E\<leqslant\>1>.

    <item>Test <math|D> against <math|\<cal-F\>*f>, where <math|f> is a
    smooth spatial-momentum bump with <math|0\<leqslant\>f\<leqslant\>1>,
    equal to <math|1> on the ball of radius <math|u> and supported in the
    ball of radius <math|2*u>. Then <math|<around|\||\<cal-F\>*f|\|>\<leqslant\><around|\||B<rsub|2*u>|\|>=8<around|\||B<rsub|1>|\|>*u<rsup|3>>.
    Since <math|D> vanishes outside <math|B<rsub|R>>, the pairing is at most
    <math|8<around|\||B<rsub|1>|\|><around|\||B<rsub|R>|\|>*M*<space|0.17em>u<rsup|3>>.

    <item>The pairing equals <math|c<rsub|3>*<around*|(|<big|int>f*<space|0.17em>d*\<rho\><rsup|\<sharp\>>+<big|int>f*<space|0.17em>d*\<sigma\><rsup|\<sharp\>>|)>>,
    which is at least <math|c<rsub|3><space|0.17em><tfrac|u|2*\<pi\>><space|0.17em>\<rho\><around|(|<around|{|u/2\<less\>p<rsup|4>\<leqslant\>u|}>|)>>.
    On that shell <math|<around|\||<wide|p|\<vect\>>|\|>\<leqslant\>p<rsup|4>\<leqslant\>u>,
    so <math|f=1> there, and <math|\<pi\><around|(|p<rsup|4>|)>\<geqslant\>u/<around|(|2*\<pi\>|)>>.

    <item>Thus the exponent <math|2> is <math|3> (spatial dimension, from the
    volume of the momentum ball) minus <math|1> (first-order vanishing of the
    weight).
  </enumerate>

  <em|Lean:> <hlink|<verbatim|annulus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L43-L129>,
  <hlink|<verbatim|averaged_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L16-L25>,
  <hlink|<verbatim|fee>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L35-L36>,
  <hlink|<verbatim|two_average>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Average.lean#L149-L160>,
  <hlink|<verbatim|one_average>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Average.lean#L113-L147>,
  <hlink|<verbatim|pulse_positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Average.lean#L35-L44>,
  <hlink|<verbatim|pulse_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Average.lean#L46-L59>.

  <strong|Lemma V.3.l (dyadic summation).> Let <math|\<rho\>> be a finite
  measure and <math|C\<geqslant\>0> with <math|\<rho\><around|(|<around|{|u/2\<less\>p<rsup|4>\<leqslant\>u|}>|)>\<leqslant\>C*u<rsup|2>>
  for all <math|u\<in\><around|(|0,1|]>>. Then
  <math|\<rho\><around|(|<around|{|0\<less\>p<rsup|4>\<leqslant\>u|}>|)>\<leqslant\>2*C*u<rsup|2>>
  for <math|u\<in\><around|(|0,1|]>>.

  <em|Sketch.> Cover <math|<around|(|0,u|]>> by the shells with
  <math|u<rsub|n>=u*2<rsup|-n>>. Then <math|<big|sum><rsub|n>C*u<rsup|2>*<space|0.17em>4<rsup|-n>\<leqslant\><frac|4|3>*C*u<rsup|2>>;
  the bound <math|2> follows already from the coarser majorant
  <math|<big|sum><rsub|n>2<rsup|-n>=2>.

  <em|Lean:> <hlink|<verbatim|dyadic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L135-L168>.

  <strong|Lemma V.3.m (locality at large distance, uniformly in the phase).>
  Let <math|A> be a compactly supported finite sum of words, and
  <math|r\<geqslant\>0> a bound for <math|<around|\||t|\|>> and
  <math|<around|\||<wide|x|\<vect\>>|\|>> on the supports of all its test
  functions. Put <math|R=4*r+1>. Then for all <math|\<xi\>>,
  <math|<around|\||t|\|>\<leqslant\>1> and
  <math|<around|\||<wide|x|\<vect\>>|\|>\<gtr\>R>:

  <\equation*>
    <wide|\<mu\>|^><rsup|\<xi\>><rsub|A><around|(|<wide|x|\<vect\>>,t|)>-<wide|\<mu\>|^><rsup|\<xi\>><rsub|A<rsup|\<dagger\>>><around|(|-<wide|x|\<vect\>>,-t|)>=<around|\<langle\>|\<Omega\><rsub|\<xi\>>,<around|[|A<rsup|\<dagger\>>,\<alpha\><rsub|<around|(|<wide|x|\<vect\>>,t|)>>*A|]>*<space|0.17em>\<Omega\><rsub|\<xi\>>|\<rangle\>>=0,
  </equation*>

  where <math|\<alpha\>> denotes translation of the test functions. Hence the
  function <math|D> of V.3.k, built from <math|\<rho\>=\<mu\><rsup|\<xi\>><rsub|A>>
  and <math|\<sigma\>=\<mu\><rsup|\<xi\>><rsub|A<rsup|\<dagger\>>>>, vanishes
  for <math|<around|\||<wide|x|\<vect\>>|\|>\<gtr\>R>.

  <em|Sketch.>

  <\itemize-minus>
    <item>The first identity follows from covariance and the adjoint
    relation.

    <item>The supports of <math|A<rsup|\<dagger\>>> and
    <math|\<alpha\><rsub|<around|(|<wide|x|\<vect\>>,t|)>>*A> are spacelike
    separated, so the commutator vanishes by locality.

    <item><math|R> depends only on the supports, and translating test
    functions is the same operation for every <math|\<xi\>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|late>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L208-L219>,
  <hlink|<verbatim|distant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Polynomials.lean#L146-L160>,
  <hlink|<verbatim|comm_expect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Polynomials.lean#L175-L207>,
  <hlink|<verbatim|op_comm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Polynomials.lean#L106-L119>.

  <strong|Proposition V.3.n (low-energy bound).> Item 5 of V.3.1, with
  <math|M=2*c<around|(|R,M<rsub|A>+M<rsub|A<rsup|\<dagger\>>>|)>>.

  <em|Sketch.> Apply V.3.k to <math|\<rho\>=\<mu\><rsup|\<xi\>><rsub|A>> and
  <math|\<sigma\>=\<mu\><rsup|\<xi\>><rsub|A<rsup|\<dagger\>>>>. These are
  supported in <math|<wide|V|\<bar\>><rsub|+>> by the spectrum condition,
  with mass bounds from V.3.h and <math|R> from V.3.m. Then apply V.3.l.

  <em|Lean:> <hlink|<verbatim|light_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L221-L232>.

  <strong|Proposition V.3.o (heat decay with the full zero-energy
  projection).> Item 6 of V.3.1, with <math|M=2*max
  <around|(|M<rsub|A>,2*c<around|(|R,M<rsub|A>+M<rsub|A<rsup|\<dagger\>>>|)>|)>>.

  <em|Sketch.>

  <\enumerate>
    <item>By the spectral theorem and <math|<math-up|supp><space|0.17em>\<mu\><rsup|\<xi\>><rsub|A>\<subset\><around|{|p<rsup|4>\<geqslant\>0|}>>:
  </enumerate>

  <\equation*>
    <around|\<langle\>|A*\<Omega\><rsub|\<xi\>>,<around|(|e<rsup|-s*H<rsub|\<xi\>>>-P<rsup|0><rsub|\<xi\>>|)>*A*\<Omega\><rsub|\<xi\>>|\<rangle\>>=<big|int><rsub|<around|{|p<rsup|4>\<gtr\>0|}>>e<rsup|-s*p<rsup|4>>*<space|0.17em>d*\<mu\><rsup|\<xi\>><rsub|A>\<geqslant\>0.
  </equation*>

  <\enumerate>
    <assign|item-nr|1><item>Let <math|\<rho\>> be a finite measure with
    <math|\<rho\><around|(|<around|{|0\<less\>p<rsup|4>\<leqslant\>t|}>|)>\<leqslant\>C*t<rsup|2>>
    for all <math|t\<gtr\>0>; for <math|t\<gtr\>1> this follows from the
    total-mass bound. Write <math|e<rsup|-s*E>=<big|int><rsub|E><rsup|\<infty\>>s*e<rsup|-s*t>*<space|0.17em>d*t>.
    Fubini gives
  </enumerate>

  <\equation*>
    <big|int><rsub|<around|{|p<rsup|4>\<gtr\>0|}>>e<rsup|-s*p<rsup|4>>*d*\<rho\>=<big|int><rsub|0><rsup|\<infty\>>s*e<rsup|-s*t>*\<rho\><around|(|<around|{|0\<less\>p<rsup|4>\<leqslant\>t|}>|)>*<space|0.17em>d*t\<leqslant\>C*s*<big|int><rsub|0><rsup|\<infty\>>t<rsup|2>*e<rsup|-s*t>*d*t=\<Gamma\><around|(|3|)>*<space|0.17em>C*<space|0.17em>s<rsup|-2>.
  </equation*>

  <em|Lean:> <hlink|<verbatim|residual_pair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Projection.lean#L145-L150>,
  <hlink|<verbatim|decay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decay.lean#L22-L75>,
  <hlink|<verbatim|inverse_square>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decay.lean#L173-L192>,
  <hlink|<verbatim|bHeat_pair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Projection.lean#L97-L100>.

  <strong|Lemma V.3.p (continuity of the heat form).> For every finite sum of
  words <math|A> and <math|s\<gtr\>0>, <math|\<xi\>\<mapsto\><around|\<langle\>|A*\<Omega\><rsub|\<xi\>>,e<rsup|-s*H<rsub|\<xi\>>>*A*\<Omega\><rsub|\<xi\>>|\<rangle\>>=<big|int>e<rsup|-s*p<rsup|4>>*<space|0.17em>d*\<mu\><rsup|\<xi\>><rsub|A>>
  is continuous.

  <em|Sketch.>

  <\enumerate>
    <item>The Fourier transform <math|<wide|\<mu\>|^><rsup|\<xi\>><rsub|A><around|(|p|)>=<around|\<langle\>|A*\<Omega\><rsub|\<xi\>>,<around|(|\<alpha\><rsub|p>*A|)>*\<Omega\><rsub|\<xi\>>|\<rangle\>>>
    is continuous in <math|\<xi\>> by V.3.h, and bounded by <math|M<rsub|A>>.

    <item>Hence <math|<big|int>h*<space|0.17em>d*\<mu\><rsup|\<xi\>><rsub|A>>
    is continuous in <math|\<xi\>> for every Schwartz <math|h>, by Parseval
    and dominated convergence.

    <item>On <math|<wide|V|\<bar\>><rsub|+>> outside the ball of radius
    <math|2*N> one has <math|p<rsup|4>\<geqslant\>N>. Multiplying
    <math|e<rsup|-s*p<rsup|4>>> by a bump equal to <math|1> on that ball
    changes the integral by at most <math|M<rsub|A>*e<rsup|-s*N>>, uniformly
    in <math|\<xi\>>.

    <item>A uniform limit of continuous functions is continuous.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|uniform_heat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decay.lean#L113-L170>,
  <hlink|<verbatim|char_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decay.lean#L82-L88>,
  <hlink|<verbatim|test_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decay.lean#L93-L111>.

  <subsection|4.5 Every phase><label|45-every-phase>

  <strong|Lemma V.3.q (vacuum-subtracted decay at every phase).> For every
  compactly supported finite sum of words <math|A> there is
  <math|M\<geqslant\>0> such that <math|0\<leqslant\>r<rsub|\<xi\>><around|(|s|)>\<leqslant\>M*s<rsup|-2>>
  for all <math|\<xi\>\<in\>X> and <math|s\<geqslant\>1>, with
  <math|r<rsub|\<xi\>><around|(|s|)>> as in Ÿ3.

  <em|Sketch.>

  <\enumerate>
    <item><math|r<rsub|\<xi\>><around|(|s|)>> is continuous in <math|\<xi\>>
    by V.3.p and V.3.h; <math|\<Omega\><rsub|\<xi\>>> is the vector of the
    empty word.

    <item>Where <math|\<cal-D\><rsub|\<xi\>>=\<bbb-C\>*\<omega\><rsub|\<xi\>>>,
    which is <math|\<nu\>>-almost everywhere by V.3.c, <math|J<rsub|\<xi\>>>
    intertwines the zero-energy projections. Then
    <math|P<rsup|0><rsub|\<xi\>>*x=<around|\<langle\>|\<Omega\><rsub|\<xi\>>,x|\<rangle\>>*\<Omega\><rsub|\<xi\>>>,
    so <math|r<rsub|\<xi\>><around|(|s|)>=<around|\<langle\>|A*\<Omega\><rsub|\<xi\>>,<around|(|e<rsup|-s*H<rsub|\<xi\>>>-P<rsup|0><rsub|\<xi\>>|)>*A*\<Omega\><rsub|\<xi\>>|\<rangle\>>\<in\><around|[|0,M*s<rsup|-2>|]>>
    by V.3.o.

    <item>The set <math|<around|{|\<xi\>:r<rsub|\<xi\>><around|(|s|)>\<in\><around|[|0,M*s<rsup|-2>|]>|}>>
    is closed and of full measure. Since <math|\<nu\>> charges every nonempty
    open set, it is <math|X>.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|proj_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L22-L39>,
  <hlink|<verbatim|univ_of_closed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L42-L46>,
  <hlink|<verbatim|extends_decay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L51-L78>.

  <strong|Lemma V.3.r (zero-energy projection = vacuum projection).>
  Proposition V.3.2.

  <em|Sketch.>

  <\enumerate>
    <item><math|e<rsup|-s*H<rsub|\<xi\>>>\<to\>P<rsup|0><rsub|\<xi\>>>
    strongly as <math|s\<to\>\<infty\>>, so V.3.q gives
    <math|<around|\<langle\>|x,P<rsup|0><rsub|\<xi\>>*x|\<rangle\>>=<around|\||<around|\<langle\>|\<Omega\><rsub|\<xi\>>,x|\<rangle\>>|\|><rsup|2>>
    for <math|x=A*\<Omega\><rsub|\<xi\>>>.

    <item>Since <math|P<rsup|0><rsub|\<xi\>>> is an orthogonal projection
    with <math|P<rsup|0><rsub|\<xi\>>*\<Omega\><rsub|\<xi\>>=\<Omega\><rsub|\<xi\>>>,
    this gives <math|<around|\<\|\|\>|P<rsup|0><rsub|\<xi\>>*x-<around|\<langle\>|\<Omega\><rsub|\<xi\>>,x|\<rangle\>>*\<Omega\><rsub|\<xi\>>|\<\|\|\>><rsup|2>=<around|\<\|\|\>|P<rsup|0><rsub|\<xi\>>*x|\<\|\|\>><rsup|2>-<around|\||<around|\<langle\>|\<Omega\><rsub|\<xi\>>,x|\<rangle\>>|\|><rsup|2>=0>.

    <item>The identity extends from compactly supported to Schwartz test
    functions by cutoffs converging in <math|\<cal-S\>> and continuity of the
    word vectors in the joint test function.

    <item>Bounded operators that agree on all word vectors are equal.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|groundvac>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L16-L20>,
  <hlink|<verbatim|bHeat_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Projection.lean#L102-L109>,
  <hlink|<verbatim|cluster_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L80-L112>,
  <hlink|<verbatim|all_plant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L115-L144>.

  <strong|Lemma V.3.s (Euclidean vacuum and Wightman axioms at every phase).>
  Items 1, 3 and 4 of V.3.1.

  <em|Sketch.>

  <\enumerate>
    <item>Let <math|v\<in\>\<cal-D\><rsub|\<xi\>>>. By V.3.j,
    <math|v=J<rsub|\<xi\>>*x> for some <math|x>.

    <item>The projection onto <math|\<cal-D\><rsub|\<xi\>>> equals the
    zero-energy spectral projection of the OS translation group: both are the
    strong limit of <math|e<rsup|-s*H<rsup|<math-up|OS>><rsub|\<xi\>>>>.

    <item>Intertwining with V.3.2 gives <math|v=J<rsub|\<xi\>>*P<rsup|0><rsub|\<xi\>>*x=<around|\<langle\>|\<Omega\><rsub|\<xi\>>,x|\<rangle\>>*<space|0.17em>\<omega\><rsub|\<xi\>>>.
    This is item 3.

    <item>Item 1 then follows from V.3.b, and item 4 from V.3.2.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|every>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L146-L153>,
  <hlink|<verbatim|reflection_projection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Projection.lean#L77-L86>,
  <hlink|<verbatim|boundary_realizes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L155-L156>,
  <hlink|<verbatim|boundary_zero_energy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L158-L162>.

  <subsection|4.6 Irreducibility><label|46-irreducibility>

  <strong|Proposition V.3.t (trivial weak commutant).> Item 7 of V.3.1.

  <em|Sketch.> The weak commutant is first rewritten with
  <math|\<phi\><rsub|\<xi\>><around|(|a<rsup|\<ast\>>,<wide|f|\<bar\>>|)>> in
  place of the Hilbert adjoint, since the former is the restriction of the
  latter to <math|\<frak-D\><rsub|\<xi\>>>. The converse direction is the
  adjoint relation. Now let <math|B> be weakly central and write
  <math|\<Omega\>=\<Omega\><rsub|\<xi\>>>.

  <\enumerate>
    <item>For word vectors <math|u=\<phi\><around|(|w|)>*\<Omega\>> and
    <math|v=\<phi\><around|(|w<rsup|\<dagger\>>|)>*\<Omega\>>, and
    <math|<math-up|Im>z\<geqslant\>0>, set
  </enumerate>

  <\equation*>
    p<around|(|z|)>=<around|\<langle\>|J<rsub|\<xi\>>*u,e<rsup|i*z*H<rsup|<math-up|OS>><rsub|\<xi\>>>*J<rsub|\<xi\>>*B*\<Omega\>|\<rangle\>>,<space|2em>q<around|(|z|)>=<around|\<langle\>|J<rsub|\<xi\>>*B<rsup|\<ast\>>*\<Omega\>,e<rsup|i*z*H<rsup|<math-up|OS>><rsub|\<xi\>>>*J<rsub|\<xi\>>*v|\<rangle\>>.
  </equation*>

  Both are bounded, continuous, and holomorphic for
  <math|<math-up|Im>z\<gtr\>0>. On the real axis
  <math|p<around|(|t|)>=<around|\<langle\>|u,U<rsub|\<xi\>><around|(|t|)>*B*\<Omega\>|\<rangle\>>>,
  and at <math|z=i*s> one has <math|p*<around|(|i*s|)>=<around|\<langle\>|u,e<rsup|-s*H<rsub|\<xi\>>>*B*\<Omega\>|\<rangle\>>>.

  <\enumerate>
    <assign|item-nr|1><item>Covariance and weak centrality give
    <math|p<around|(|t|)>=q*<around|(|-t|)>> for real <math|t>.

    <item>Gluing <math|p> on the upper half-plane to
    <math|q*<around|(|-<space|0.17em>\<cdot\>|)>> on the lower one gives a
    bounded continuous function, holomorphic off <math|\<bbb-R\>>. It is
    entire by Morera's theorem and constant by Liouville's theorem.

    <item>Hence <math|<around|\<langle\>|u,e<rsup|-s*H<rsub|\<xi\>>>*B*\<Omega\>|\<rangle\>>=<around|\<langle\>|u,B*\<Omega\>|\<rangle\>>>
    for all <math|s\<geqslant\>0>. Letting <math|s\<to\>\<infty\>> and using
    V.3.2 gives <math|B*\<Omega\>=a*\<Omega\>> with
    <math|a=<around|\<langle\>|\<Omega\>,B*\<Omega\>|\<rangle\>>>.

    <item>Weak centrality then gives <math|<around|\<langle\>|\<phi\><around|(|c|)>*\<Omega\>,B*\<phi\><around|(|b|)>*\<Omega\>|\<rangle\>>=<around|\<langle\>|\<phi\><around|(|b<rsup|\<dagger\>>|)>*\<phi\><around|(|c|)>*\<Omega\>,B*\<Omega\>|\<rangle\>>=a<around|\<langle\>|\<phi\><around|(|c|)>*\<Omega\>,\<phi\><around|(|b|)>*\<Omega\>|\<rangle\>>>
    for all words, so <math|B=a*<space|0.17em>1>.
  </enumerate>

  The proof uses V.3.2 and the reconstruction data of V.3.b. It requires
  neither surjectivity of <math|J<rsub|\<xi\>>> nor invariance of
  <math|\<frak-D\><rsub|\<xi\>>> under <math|B>.

  <em|Lean:> <hlink|<verbatim|commutant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Irreducible.lean#L118-L193>,
  <hlink|<verbatim|saturated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Irreducible.lean#L56-L84>,
  <hlink|<verbatim|paste>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Irreducible.lean#L22-L54>,
  <hlink|<verbatim|precise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Irreducible.lean#L195-L205>,
  <hlink|<verbatim|irreducible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Irreducible.lean#L207-L216>.

  <subsection|4.7 The continued stress tensor><label|47-the-continued-stress-tensor>

  <strong|Conventions.>

  <\itemize-minus>
    <item>Indices <math|a,b\<in\><around|{|1,2,3,4|}>>, with <math|4> the
    time index.

    <item><math|\<eta\>=<math-up|diag><around|(|-1,-1,-1,1|)>>,
    <math|\<zeta\><rsub|4>=-i>, <math|\<zeta\><rsub|j>=1>.

    <item>The Minkowski stress labels are
    <math|T<rsup|<math-up|M>><rsub|a*b>=-\<zeta\><rsub|a>*\<zeta\><rsub|b>*T<rsup|<math-up|E>><rsub|a*b>>,
    that is <math|T<rsup|<math-up|M>><rsub|44>=T<rsup|<math-up|E>><rsub|44>>,
    <math|T<rsup|<math-up|M>><rsub|4*j>=i*T<rsup|<math-up|E>><rsub|4*j>>,
    <math|T<rsup|<math-up|M>><rsub|j*k>=-T<rsup|<math-up|E>><rsub|j*k>>.
    Write <math|T<rsub|a*b><around|(|f|)>=\<phi\><rsub|\<xi\>><around|(|T<rsup|<math-up|M>><rsub|a*b>,f|)>>.

    <item>A Killing field is <math|K<around|(|x|)>=k+V*x>, where
    <math|k\<in\>\<bbb-R\><rsup|4>> and <math|V<rsup|<math-ss|T>>*\<eta\>+\<eta\>*V=0>.
    Write <math|\<Sigma\><rsub|K>> for the infinitesimal label action of
    <math|V> (VI.1). Its Euclidean continuation is
    <math|K<rsub|<math-up|E>><rsup|b><around|(|y|)>=\<zeta\><rsub|b>*<around|(|k<rsup|b>+<big|sum><rsub|c>V<rsub|b*c>*\<kappa\><rsub|c>*y<rsup|c>|)>>,
    where <math|\<kappa\><rsub|4>=i> and <math|\<kappa\><rsub|j>=1> for
    <math|j\<leqslant\>3>. The Euclidean derivative label is denoted by
    <math|\<partial\><rsub|b><rsup|<math-up|E>>*B>
    (<hlink|<verbatim|EveryPhase.Stress.Killing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Killing.lean#L20-L23>).

    <item>The charge is
  </itemize-minus>

  <\equation*>
    Q<rsub|K><around|(|f,c|)>=<big|sum><rsub|b>T<rsub|4*b>*<around*|(|K<rsup|b>*<space|0.17em><around|(|c\<otimes\>f|)>|)>,
  </equation*>

  for a time profile <math|f> and a spatial cutoff <math|c>.

  <strong|Lemma V.3.u (Euclidean contact identity and current jump).> Fix
  <math|\<xi\>\<in\>X>, distinct Euclidean points
  <math|x<rsub|1>,\<ldots\>,x<rsub|n+1>>, a distinguished label
  <math|B\<in\>F<rsub|d>> at <math|x<rsub|k>>, arbitrary spectator labels,
  and a Killing field <math|K>. Let <math|\<chi\>\<in\>C<rsup|\<infty\>><rsub|c><around|(|\<bbb-R\><rsup|4>;\<bbb-R\>|)>>
  equal <math|1> near <math|x<rsub|k>>, with every other <math|x<rsub|j>>
  outside <math|<math-up|supp><space|0.17em>\<chi\>>. Then the following
  integral is absolutely convergent and

  <\equation*>
    -<big|int><big|sum><rsub|a,b>\<partial\><rsub|a>*\<chi\><around|(|y|)>*<space|0.17em>K<rsup|b><rsub|<math-up|E>><around|(|y|)>*<space|0.17em>S<rsup|\<xi\>><around|(|\<ldots\>,T<rsup|<math-up|E>><rsub|a*b><around|(|y|)>,\<ldots\>|)>*<space|0.17em>d*y=S<rsup|\<xi\>><around|(|\<ldots\>,\<Sigma\><rsub|K>*B<around|(|x<rsub|k>|)>,\<ldots\>|)>+<big|sum><rsub|b>K<rsup|b><rsub|<math-up|E>><around|(|x<rsub|k>|)>*<space|0.17em>S<rsup|\<xi\>><around|(|\<ldots\>,\<partial\><rsub|b><rsup|<math-up|E>>*B<around|(|x<rsub|k>|)>,\<ldots\>|)>.
  </equation*>

  If the exterior Euclidean times are strictly ordered and
  <math|c\<in\>C<rsup|\<infty\>><rsub|c><around|(|\<bbb-R\><rsup|3>;\<bbb-R\>|)>>
  equals <math|1> near <math|<wide|x|\<vect\>><rsub|k>>, the difference of
  the currents <math|<big|sum><rsub|b><big|int>c<around|(|<wide|y|\<vect\>>|)>*K<rsub|<math-up|E>><rsup|b><around|(|<wide|y|\<vect\>>,t|)>*S<rsup|\<xi\>><around|(|\<ldots\>,T<rsup|<math-up|E>><rsub|4*b><around|(|<wide|y|\<vect\>>,t|)>,\<ldots\>|)>*<space|0.17em>d<wide|y|\<vect\>>>,
  with the stress insertion immediately after <math|B> at
  <math|t=x<rsub|k><rsup|4>+\<varepsilon\>> and immediately before <math|B>
  at <math|t=x<rsub|k><rsup|4>-\<varepsilon\>>, tends to the right side as
  <math|\<varepsilon\>*\<downarrow\>*0>.

  <em|Sketch.> Decompose <math|V> into a spatial rotation and a boost. The
  translation and rotation Ward identities give the displayed formula,
  including the Wick factors. Choose <math|\<chi\><around|(|y|)>=c<around|(|<wide|y|\<vect\>>|)>*h*<around|(|y<rsup|4>-x<rsub|k><rsup|4>|)>>
  with a fixed smooth time cutoff supported between the neighboring exterior
  times. Conservation identifies the time derivative of the integrated
  current with the flux through <math|\<nabla\>*c>. The fundamental theorem
  of calculus, applied on both sides of <math|x<rsub|k><rsup|4>>, gives the
  jump. For complex exterior times, the spacelike continuation germs in (T0)
  give equal limits for the two spatial fluxes; bounded derivatives give
  joint current limits. Vitali\<#2019\>s theorem then continues the jump
  identity from imaginary exterior times. Only spatially integrated currents
  have a jump limit here.

  <em|Lean:> <hlink|<verbatim|euclidean_shell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Shell.lean#L128-L176>,
  <hlink|<verbatim|Stress.pure_clock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pure.lean#L43-L115>,
  <hlink|<verbatim|Stress.through_jump>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Through.lean#L129-L142>.
  The cutoff condition is <hlink|<verbatim|Table.Window>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L72-L73>.

  <strong|Lemma V.3.v (Minkowski jump identity).> Fix <math|\<xi\>>, a
  Killing field <math|K>, labels at <math|n+1> points and a distinguished
  index <math|k>. Let <math|M\<in\>C<rsup|\<infty\>><rsub|c><around|(|<around|(|\<bbb-R\><rsup|4>|)><rsup|n+1>|)>>,
  <math|f\<in\>C<rsup|\<infty\>><rsub|c><around|(|\<bbb-R\>|)>> and
  <math|c\<in\>C<rsup|\<infty\>><rsub|c><around|(|\<bbb-R\><rsup|3>;\<bbb-R\>|)>>.
  For every <math|x\<in\><math-up|supp><space|0.17em>M>, assume that
  <math|c=1> near <math|<wide|x|\<vect\>><rsub|k>> and

  <\equation*>
    <around|\||s-x<rsub|k><rsup|4>|\|>\<less\><around|\||<wide|y|\<vect\>>-<wide|x|\<vect\>><rsub|k>|\|>*<space|2em><around|(|s\<in\><math-up|supp><space|0.17em>f,<wide|y|\<vect\>>\<in\><math-up|supp><space|0.17em>\<partial\><rsub|j>*c,j=1,2,3|)>.
  </equation*>

  Then

  <\equation*>
    <big|sum><rsub|b>\<zeta\><rsub|b>*<around*|[|W<rsup|\<xi\>><around|(|\<ldots\>,a<rsub|k>,\<cal-T\><rsub|b>,\<ldots\>|)>-W<rsup|\<xi\>><around|(|\<ldots\>,\<cal-T\><rsub|b>,a<rsub|k>,\<ldots\>|)>|]>=<around*|(|<big|int>f|)>*<around*|[|W<rsup|\<xi\>><around|(|\<ldots\>,\<Sigma\><rsub|K>*a<rsub|k>,\<ldots\>;M|)>+<big|sum><rsub|b>\<zeta\><rsub|b>*W<rsup|\<xi\>><around|(|\<ldots\>,\<partial\><rsub|b><rsup|<math-up|E>>*a<rsub|k>,\<ldots\>;K<rsup|b><rsub|k>*M|)>|]>.
  </equation*>

  The left side is tested jointly against <math|M> in the original variables
  and <math|K<rsup|b><around|(|y|)>*c<around|(|<wide|y|\<vect\>>|)>*f<around|(|y<rsup|4>|)>>
  in the inserted stress variable <math|y>. Thus <math|\<cal-T\><rsub|b>>
  denotes the Euclidean label <math|T<rsup|<math-up|E>><rsub|4*b>> inserted
  immediately after, respectively before, the <math|k>-th field. On the
  right, <math|K<rsup|b><rsub|k>*M<around|(|x|)>=K<rsup|b><around|(|x<rsub|k>|)>*M<around|(|x|)>>.

  <em|Sketch.>

  <\itemize-minus>
    <item>Use the common sequence of tied heights from (T0). At each height,
    integrate the continued current jump of V.3.u against
    <math|M<around|(|x|)>*f<around|(|t|)>>. Joint convergence and compactness
    of the test supports give a common integrable bound; the right side is
    independent of <math|t>, producing <math|<big|int>f>.

    <item>Pass to the limit with the continuity of the partial boundary
    values.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Stress.verdict>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decree.lean#L208-L242>,
  <hlink|<verbatim|Stress.partial_jump>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decree.lean#L77-L164>,
  <hlink|<verbatim|Stress.Jury>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decree.lean#L73-L75>.

  <strong|Lemma V.3.w (Ward identity with arbitrary spectators).> In V.3.v
  take <math|<big|int>f=1> and a product test with a compactly supported
  factor <math|m> at the distinguished field. The resulting identity holds
  with arbitrary Schwartz spectator words before and after the inserted pair.
  The cutoff conditions need hold only for points of
  <math|<math-up|supp><space|0.17em>m>.

  <em|Sketch.> Cut off the spectator test functions. Apply V.3.v. Pass to the
  limit by continuity of <math|W<rsup|\<xi\>>> on joint test functions.

  <em|Lean:> <hlink|<verbatim|Stress.Schwartz_shells>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Court.lean#L147-L163>,
  <hlink|<verbatim|Stress.compact_shells>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Court.lean#L77-L117>.

  <strong|Lemma V.3.x (the charge generates the transformation).> Fix
  <math|\<xi\>\<in\>X>, <math|B\<in\>F<rsub|d>> and a Killing field <math|K>.
  Let <math|\<cal-O\>\<subset\>\<bbb-R\><rsup|4>> be compact,
  <math|m\<in\>C<rsup|\<infty\>><rsub|c><around|(|\<bbb-R\><rsup|4>|)>> with
  <math|<math-up|supp><space|0.17em>m\<subset\>\<cal-O\>>, and
  <math|f\<in\>C<rsup|\<infty\>><rsub|c><around|(|\<bbb-R\>;\<bbb-R\>|)>>
  with <math|<big|int>f=1>. Let <math|c\<in\>C<rsup|\<infty\>><rsub|c><around|(|\<bbb-R\><rsup|3>;\<bbb-C\>|)>>
  equal <math|1> on an open ball such that, for every
  <math|s\<in\><math-up|supp><space|0.17em>f>, every point
  <math|<around|(|<wide|y|\<vect\>>,s|)>> over its complement is strictly
  spacelike to every point of <math|\<cal-O\>>. Then, on
  <math|\<frak-D\><rsub|\<xi\>>>,

  <\equation*>
    i<around|[|Q<rsub|K><around|(|f,c|)>,\<phi\><rsub|\<xi\>><around|(|B,m|)>|]>=\<phi\><rsub|\<xi\>><around|(|\<Sigma\><rsub|K>*B,m|)>-<big|sum><rsub|a=1><rsup|4>\<phi\><rsub|\<xi\>><around*|(|B,\<partial\><rsub|a>*<around|(|K<rsup|a>*m|)>|)>.
  </equation*>

  The derivative includes the affine coefficient <math|K<rsup|a>>.
  Equivalently, the last term is <math|<big|sum><rsub|a>\<zeta\><rsub|a>*\<phi\><rsub|\<xi\>><around|(|\<partial\><rsub|a><rsup|<math-up|E>>*B,K<rsup|a>*m|)>>.

  <em|Sketch.>

  <\itemize-minus>
    <item>Replace <math|c> by its real part. The difference of the two
    charges commutes with <math|\<phi\><rsub|\<xi\>><around|(|B,m|)>> by
    locality, since it is supported off the ball.

    <item>Then take matrix elements between word vectors and apply V.3.w.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Stress.local_action>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Charge.lean#L143-L177>,
  <hlink|<verbatim|Stress.measure_identity>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Charge.lean#L104-L137>,
  <hlink|<verbatim|Stress.Charge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Charge.lean#L80-L81>,
  <hlink|<verbatim|Stress.Season>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Charge.lean#L14-L17>,
  <hlink|<verbatim|Stress.Reservation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Charge.lean#L37-L40>.

  <strong|Proposition V.3.y (the stress tensor of
  <math|\<frak-W\><rsub|\<xi\>>>).> For every <math|\<xi\>\<in\>X> the
  following hold. Statements (T1)\U(T4) hold for all
  <math|f\<in\>\<cal-S\><around|(|\<bbb-R\><rsup|4>|)>>,
  <math|a,b\<in\><around|{|1,2,3,4|}>> and
  <math|u,v,x\<in\>\<frak-D\><rsub|\<xi\>>>.

  <\itemize-minus>
    <item><strong|(T0)> There are holomorphic extensions of
    <math|<math-ss|F><rsup|\<xi\>>> to the full forward tube and continuous
    tested partial boundary values, equal to <math|W<rsup|\<xi\>>> at zero
    height. For each adjacent pair there is a sequence of tied imaginary
    heights tending to zero, independent of the labels, at which the two
    field orders have equal continuation germs at spacelike separation. The
    tube consists of complex configurations with consecutive imaginary
    differences in the open forward cone; partial boundary values are taken
    on the corresponding closed cone. These data are used in V.3.u\UV.3.v.

    <item><strong|(T1)> <math|U<rsub|\<xi\>><around|(|g|)>*\<frak-D\><rsub|\<xi\>>\<subset\>\<frak-D\><rsub|\<xi\>>>
    for every proper orthochronous Poincaré transformation <math|g>, and
    <math|U<rsub|\<xi\>><around|(|g|)>*T<rsub|a*b><around|(|f|)>*x=<big|sum><rsub|i,j>\<Lambda\><around|(|g|)><rsub|i*a>*\<Lambda\><around|(|g|)><rsub|j*b>*<space|0.17em>T<rsub|i*j>*<around|(|f\<circ\>g<rsup|-1>|)>*<space|0.17em>U<rsub|\<xi\>><around|(|g|)>*x>.

    <item><strong|(T2)> <math|T<rsub|a*b>=T<rsub|b*a>>.

    <item><strong|(T3)> <math|<around|\<langle\>|T<rsub|a*b><around|(|f|)>*u,v|\<rangle\>>=<around|\<langle\>|u,T<rsub|a*b><around|(|<wide|f|\<bar\>>|)>*v|\<rangle\>>>.

    <item><strong|(T4)> <math|<big|sum><rsub|a>\<eta\><rsub|a*a>*<space|0.17em>T<rsub|a*b>*<around|(|\<partial\><rsub|a>*f|)>=0>.

    <item><strong|(T5)> The commutator identity of V.3.x.

    <item><strong|(T6)> Under the cutoff and profile conditions of V.3.x, for
    every finite sum of words <math|A> whose test functions are supported in
    <math|\<cal-O\>>, <math|i<around|[|Q<rsub|K><around|(|f,c|)>,A|]>> is the
    sum obtained by replacing one factor at a time by the right side of V.3.x
    and retaining the original order of the other factors. The formula holds
    for any choice of representatives of the labels in the spaces
    <math|F<rsub|d>>.
  </itemize-minus>

  <em|Sketch.>

  <\itemize-minus>
    <item>(T0) is supplied by the full-tube and partial-boundary
    reconstruction of V.2, with one common sequence of exchange heights for
    all labels (<hlink|<verbatim|EveryPhase.Stress.Prospect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Cross.lean#L76-L83>,
    <hlink|<verbatim|EveryPhase.Stress.Gallery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decree.lean#L167-L171>).

    <item>(T1)\U(T4) are the tensor covariance, symmetry, reality and
    conservation of <math|T<rsup|<math-up|E>>> (VI.1), read through the Wick
    factors and the derivative rule for fields.

    <item>(T5) is V.3.x; (T6) follows from (T5) by the derivation property of
    commutators.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Stress.Force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Implement.lean#L81-L92>,
  <hlink|<verbatim|Stress.force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Implement.lean#L94-L116>,
  <hlink|<verbatim|Stress.Generated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Implement.lean#L64-L78>,
  <hlink|<verbatim|Stress.tensor_lorentz>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Tensor.lean#L210-L215>,
  <hlink|<verbatim|Stress.tensor_herm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Tensor.lean#L217-L220>,
  <hlink|<verbatim|Stress.tensor_conserved>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Tensor.lean#L227-L237>.

  <subsection|4.8 Assembly><label|48-assembly>

  <strong|Proof of V.3.1.> Take the family of V.3.b. Then:

  <\itemize-minus>
    <item>item 1 is V.3.s; item 2 is V.3.j; item 3 is V.3.s; item 4 is V.3.2;

    <item>item 5 is V.3.n; item 6 is V.3.o; item 7 is V.3.t; item 8 is V.3.y;

    <item>item 9: the Wightman part is V.3.g; the Euclidean part is V.1's
    barycenter formula, which translates a word of distinct points into a
    slab using the homogeneity of <math|S<rsup|<math-up|mix>>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|all_characters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L75-L80>,
  <hlink|<verbatim|Resolution.barycenter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L113-L117>.

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The delicate points are the common bounds near the analytic boundary, the
  recovery of positive-height Euclidean vectors from joint frequency tests,
  and the joint current limits in the stress-tensor argument. The last
  passage uses equal continuation germs only at spacelike separation; the
  current itself is spatially integrated. It gives a charge commutator for
  every admissible time profile, without defining a stress field at a fixed
  real time.

  The low-energy estimate needs only locality, the spectrum condition and the
  two vector-norm bounds. Its positive weight avoids differentiating spectral
  integrals or imposing generator-domain bounds. The exponent <math|2> is
  compatible with the massless scalar measure, since
  <math|<big|int><rsub|<around|\||<wide|p|\<vect\>>|\|>\<leqslant\>u>d<rsup|3>*p/<around|\||<wide|p|\<vect\>>|\|>\<sim\>u<rsup|2>>.
  Thus this estimate does not imply a mass gap. For removal of the
  exceptional set, any decay rate tending to zero uniformly in <math|\<xi\>>
  would suffice.

  The remaining integrations, dyadic summation and assembly are routine once
  their uniform bounds have been established.

  <em|What looks unusual.>

  <\itemize-minus>
    <item>Item 8 quantifies over all admissible time profiles and spatial
    cutoffs. Admissible profiles and cutoffs exist
    (<hlink|<verbatim|Stress.accepts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Charge.lean#L24-L35>,
    <hlink|<verbatim|Stress.reservable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Charge.lean#L42-L59>);
    this existence assertion is separate from the commutator conclusion. The
    main theorem does not use it or the auxiliary results of Remark V.3.3.

    <item>The reconstruction agrees with V.2 at <math|\<xi\><rsub|\<ast\>>>.
    The subsequent proof of vacuum uniqueness applies to every phase.

    <item>The Euclidean half of item 9 restates V.1, and the public clause
    (R12) is derived from it.

    <item>Nothing here or in the main theorem decides whether <math|X> is a
    single point. Each <math|\<frak-W\><rsub|\<xi\>>> is irreducible, while
    <math|S<rsup|<math-up|mix>>> is the <math|\<nu\>>-mixture of the
    <math|S<rsup|\<xi\>>>.
  </itemize-minus>

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|object>>|<cell|<strong|code
  name>>|<cell|<strong|proposed notation>>>|<row|<cell|phases, measure,
  selected phase>|<cell|<verbatim|F.\<alpha\>.space.X>,
  <verbatim|F.\<alpha\>.space.\<mu\>>, <verbatim|F.\<alpha\>.atPoint>>|<cell|<math|X>,
  <math|\<nu\>>, <math|\<xi\><rsub|\<ast\>>>>>|<row|<cell|characters of the
  ground algebra>|<cell|<verbatim|F.\<alpha\>.space.character>,
  <hlink|<verbatim|Spread.algebra>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L54>>|<cell|<math|\<chi\><rsub|\<xi\>>>
  on <math|\<frak-A\>>>>|<row|<cell|unselected table; table of phase
  <math|\<xi\>>>|<cell|<verbatim|S>; <verbatim|F.\<alpha\>.ensemble
  \<xi\>>>|<cell|<math|S<rsup|<math-up|mix>>>;
  <math|S<rsup|\<xi\>>>>>|<row|<cell|OS space and slab operators of
  <math|S<rsup|<math-up|mix>>>>|<cell|<verbatim|F.\<alpha\>.room>,
  <verbatim|F.\<alpha\>.unselected>>|<cell|<math|\<cal-H\><rsup|<math-up|OS>>>,
  <math|\<Pi\><around|(|d,w|)>>>>|<row|<cell|ground space, Euclidean
  vacuum>|<cell|<verbatim|Chamber.D>, <verbatim|Chamber.omega0>>|<cell|<math|\<cal-D\><rsub|\<xi\>>>,
  <math|\<omega\><rsub|\<xi\>>>>>|<row|<cell|one-dimensional ground
  space>|<cell|<hlink|<verbatim|Chamber.UniqueHeat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L35>>|<cell|<math|\<cal-D\><rsub|\<xi\>>=\<bbb-C\>*\<omega\><rsub|\<xi\>>>>>|<row|<cell|family
  of reconstructions>|<cell|<hlink|<verbatim|Almanac>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L117-L132>>|<cell|<math|<around|(|\<cal-H\><rsup|<math-up|OS>><rsub|\<xi\>>,\<Pi\><rsub|\<xi\>>,<math-ss|F><rsup|\<xi\>>,\<frak-W\><rsub|\<xi\>>,J<rsub|\<xi\>>|)><rsub|\<xi\>\<in\>X>>>>|<row|<cell|OS
  space, slab operators of <math|S<rsup|\<xi\>>>>|<cell|<verbatim|L.chambers
  \<xi\>>, <verbatim|L.spreads \<xi\>>>|<cell|<math|\<cal-H\><rsup|<math-up|OS>><rsub|\<xi\>>>,
  <math|\<Pi\><rsub|\<xi\>><around|(|d,w|)>>>>|<row|<cell|continuation and
  boundary values>|<cell|<verbatim|L.contours \<xi\>> (<verbatim|waves>,
  <verbatim|world>)>|<cell|<math|<math-ss|F><rsup|\<xi\>><rsub|n>>,
  <math|W<rsup|\<xi\>><rsub|n>>>>|<row|<cell|Wightman theory of phase
  <math|\<xi\>>>|<cell|<verbatim|L.actors
  \<xi\>>>|<cell|<math|\<frak-W\><rsub|\<xi\>>=<around|(|\<cal-H\><rsub|\<xi\>>,\<frak-D\><rsub|\<xi\>>,\<Omega\><rsub|\<xi\>>,\<phi\><rsub|\<xi\>>,U<rsub|\<xi\>>,P<rsub|\<xi\>>|)>>>>|<row|<cell|boundary
  isometry>|<cell|<verbatim|L.J \<xi\>>, <verbatim|L.links \<xi\>>
  (<hlink|<verbatim|Attachment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Core.lean#L156-L161>)>|<cell|<math|J<rsub|\<xi\>>>>>|<row|<cell|Wightman
  data without vacuum uniqueness>|<cell|<hlink|<verbatim|FieldCore>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Core.lean#L34-L44>>|<cell|\V>>|<row|<cell|heat
  semigroup on <math|\<cal-H\><rsub|\<xi\>>>>|<cell|<hlink|<verbatim|bHeat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Projection.lean#L94-L95>>|<cell|<math|e<rsup|-s*H<rsub|\<xi\>>>=J<rsub|\<xi\>><rsup|\<ast\>>*e<rsup|-s*H<rsup|<math-up|OS>><rsub|\<xi\>>>*J<rsub|\<xi\>>>>>|<row|<cell|zero-energy
  projection>|<cell|<verbatim|momentum.region
  zeroE>>|<cell|<math|P<rsup|0><rsub|\<xi\>>>>>|<row|<cell|finite sum of
  words; compact supports; adjoint; vector>|<cell|<hlink|<verbatim|SumOfWords>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Polynomials.lean#L14>,
  <hlink|<verbatim|finite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Polynomials.lean#L85>,
  <hlink|<verbatim|reverseP>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Polynomials.lean#L42>,
  <hlink|<verbatim|stands>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Polynomials.lean#L55>>|<cell|<math|A>,
  <math|A<rsup|\<dagger\>>>, <math|A*\<Omega\><rsub|\<xi\>>>>>|<row|<cell|spectral
  measure of <math|A*\<Omega\><rsub|\<xi\>>>>|<cell|<hlink|<verbatim|\<nu\>letter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L173-L174>>|<cell|<math|\<mu\><rsup|\<xi\>><rsub|A>>>>|<row|<cell|low-energy
  region; shell>|<cell|<hlink|<verbatim|lowE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L132>,
  <hlink|<verbatim|ringE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L40>>|<cell|<math|<around|{|0\<less\>p<rsup|4>\<leqslant\>u|}>>;
  <math|<around|{|u/2\<less\>p<rsup|4>\<leqslant\>u|}>>>>|<row|<cell|vacuum
  commutator function>|<cell|<hlink|<verbatim|delta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Polynomials.lean#L171-L173>>|<cell|<math|<around|\<langle\>|\<Omega\><rsub|\<xi\>>,<around|[|A<rsup|\<dagger\>>,\<alpha\><rsub|p>*A|]>*\<Omega\><rsub|\<xi\>>|\<rangle\>>>>>|<row|<cell|time-averaged
  odd part; weight>|<cell|<hlink|<verbatim|averaged>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Average.lean#L88-L89>,
  <verbatim|pulse>>|<cell|<math|D<around|(|<wide|x|\<vect\>>|)>>;
  <math|\<pi\><around|(|0|)>=0>, <math|\<pi\><around|(|E|)>=<around|(|1-cos
  E|)>/E> for <math|E\<gtr\>0>>>|<row|<cell|strict-height values; tested
  values>|<cell|<verbatim|waves.restricted>,
  <verbatim|waves.psi>>|<cell|<math|<math-ss|F><rsup|\<xi\>><rsub|n><around|(|a;t<around|(|x|)>+i*y,<wide|x|\<vect\>>|)>>;
  <math|\<psi\><rsup|\<xi\>><around|(|a,y,g|)>>>>|<row|<cell|weak
  commutant>|<cell|<hlink|<verbatim|member>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L19-L22>,
  <hlink|<verbatim|weaklyCentral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Irreducible.lean#L93-L96>>|<cell|\V>>|<row|<cell|Minkowski
  stress labels and fields>|<cell|<hlink|<verbatim|Stress.M>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Tensor.lean#L27>,
  <hlink|<verbatim|Stress.fieldM>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Tensor.lean#L206>>|<cell|<math|T<rsup|<math-up|M>><rsub|a*b>>,
  <math|T<rsub|a*b><around|(|f|)>>>>|<row|<cell|Killing field; charge; Lie
  derivative of a field>|<cell|<verbatim|Stress.Killing>,
  <hlink|<verbatim|Stress.Charge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Charge.lean#L80-L81>,
  <hlink|<verbatim|Stress.action>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Charge.lean#L86-L88>>|<cell|<math|K>,
  <math|Q<rsub|K><around|(|f,c|)>>, <math|\<phi\>*<around|(|\<Sigma\><rsub|K>*B|)>+K<rsup|a>*\<partial\><rsub|a>*\<phi\><around|(|B|)>>>>|<row|<cell|stress
  record>|<cell|<hlink|<verbatim|Stress.Force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Implement.lean#L81-L92>
  (fields appointment, orbital, symmetric, hermitian, conserve, commutator,
  rule)>|<cell|(T0)\U(T6)>>|<row|<cell|complete
  record>|<cell|<hlink|<verbatim|Completed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L51-L71>
  (fields isTheory, into_onto, euclid, mink, light, heat, commutant,
  continued_stress, depends, at_boundary, at_words)>|<cell|items 1, 2, 3, 4,
  5, 6, 7, 8, 9, 9, 9 of V.3.1>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Analytic inputs from V.2.> The constructions
    <hlink|<verbatim|contour>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L46-L49>,
    <hlink|<verbatim|compatible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L200-L215>,
    <hlink|<verbatim|establishing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L167-L184>
    and their use here were checked in source. The underlying C01\UC29
    analytic estimates, including the partial-boundary identities used in
    V.3.i and the exchange continuations in (T0), remain inputs from V.2;
    their proofs are not audited here. The local statements and proof
    sketches have been checked against the declarations that consume them.

    <item><strong|Partial-boundary data.> (T0) states the existence and
    compatibility needed for the current-jump argument. A detailed proof must
    specify the admissible tube faces and the spacelike neighborhoods of the
    tied pair; it must not replace integrated current limits by pointwise
    limits of the stress insertion.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> V.2 Osterwalder-Schrader reconstruction
  of a Wightman theory (notes)|V-2.tm>|<hlink|Part
  V|../units.tm#part-v-phases-and-reconstruction><ym-nav-sep><hlink|Unit
  outline|../units/V-3.tm>|<hlink|VI.1 Ward identities, the rotation action
  and the conserved stress tensor (notes) \<rightarrow\>|VI-1.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|V.3. Reconstruction in every phase \V detailed
    notes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|1>>
    <associate|2-what-it-uses|<tuple|2|5>>
    <associate|3-strategy|<tuple|3|7>>
    <associate|4-steps|<tuple|4|7>>
    <associate|41-slab-bounds-and-the-family-of-reconstructions|<tuple|4.1|7>>
    <associate|42-continuity-in-the-phase-and-barycenter|<tuple|4.2|9>>
    <associate|43-surjectivity-of-the-boundary-isometry|<tuple|4.3|11>>
    <associate|44-low-energy-bound-and-heat-decay|<tuple|4.4|12>>
    <associate|45-every-phase|<tuple|4.5|14>>
    <associate|46-irreducibility|<tuple|4.6|15>>
    <associate|47-the-continued-stress-tensor|<tuple|4.7|16>>
    <associate|48-assembly|<tuple|4.8|19>>
    <associate|5-where-the-difficulty-lies|<tuple|5|19>>
    <associate|6-notation|<tuple|6|20>>
    <associate|7-what-remains-unexplained|<tuple|7|21>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|4.6|15>>
    <associate|auto-11|<tuple|4.7|16>>
    <associate|auto-12|<tuple|4.8|19>>
    <associate|auto-13|<tuple|5|19>>
    <associate|auto-14|<tuple|6|20>>
    <associate|auto-15|<tuple|7|21>>
    <associate|auto-2|<tuple|2|5>>
    <associate|auto-3|<tuple|3|7>>
    <associate|auto-4|<tuple|4|7>>
    <associate|auto-5|<tuple|4.1|7>>
    <associate|auto-6|<tuple|4.2|9>>
    <associate|auto-7|<tuple|4.3|11>>
    <associate|auto-8|<tuple|4.4|12>>
    <associate|auto-9|<tuple|4.5|14>>
    <associate|v3-reconstruction-in-every-phase--detailed-notes|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1.
      What this unit proves> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2.
      What it uses> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3.
      Strategy> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4.
      Steps> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1 Slab bounds and the family of
      reconstructions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 Continuity in the phase and barycenter
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 Surjectivity of the boundary isometry
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 Low-energy bound and heat decay
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 Every phase
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.6 Irreducibility
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|4.7 The continued stress tensor
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|4.8 Assembly
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Where the difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      What remains unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
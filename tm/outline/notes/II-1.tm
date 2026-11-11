<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> I.1 Lattice, symmetries, gauge groups and
  the Wilson measure (notes)|I-1.tm>|<hlink|Part
  II|../units.tm#part-ii-data-of-the-construction><ym-nav-sep><hlink|Unit
  outline|../units/II-1.tm>|<hlink|II.2 Marker algebra, polymer combinatorics
  and Gaussian estimates (notes) \<rightarrow\>|II-2.tm>>

  <ym-title|II.1. Field labels and their lattice representatives \V detailed
  notes><label|ii1-field-labels-and-their-lattice-representatives--detailed-notes>

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

    <with|par-left|1tab|4.1 Label spaces and frames
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 Test holonomies and the slot map (G01\UG04)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 Primary sections (G05\UG07)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 Readout <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 Equation sections
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.6 Source histories
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|4.7 Properties of the observables
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <with|par-left|1tab|4.8 Comparison estimates
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
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
    The full account of unit II.1: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/II-1.tm>.
  </quotation>

  <hlink|Unit page|../units/II-1.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> II, Data of the construction. <strong|Lean:> work items
  G01\UG07: <hlink|<verbatim|YM/Labels/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels>,
  <hlink|<verbatim|YM/Source/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source>,
  <hlink|<verbatim|YM/Work/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work>
  (G01\UG07), <hlink|<verbatim|YM/Next/FOUNDATIONS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS>,
  <hlink|<verbatim|YM/Push/RELAY_MARK/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK>,
  <hlink|<verbatim|YM/Extra/SOURCE_HISTORIES/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES>,
  <hlink|<verbatim|YM/Push/LOCAL_SPLITTING/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING>,
  <hlink|<verbatim|YM/Push/RELAY_DIFFERENCE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE>,
  <hlink|<verbatim|YM/Planned/ATOM_GUARDED_LAYOUT/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_GUARDED_LAYOUT>,
  <hlink|<verbatim|YM/Further/LOCAL_LOG_JETS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/LOCAL_LOG_JETS>,
  <hlink|<verbatim|YM/LocalH/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/LocalH>.
  <strong|Size:> 10,805 lines in the main-theorem closure:

  <block|<tformat|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|package>>|<cell|<strong|lines>>>|<row|<cell|equation
  sections (RELAY_MARK)>|<cell|2,336>>|<row|<cell|source histories
  (SOURCE_HISTORIES)>|<cell|1,801>>|<row|<cell|local splitting
  (LOCAL_SPLITTING)>|<cell|1,485>>|<row|<cell|primary sections and readout
  (FOUNDATIONS)>|<cell|1,196>>|<row|<cell|comparison estimates
  (RELAY_DIFFERENCE)>|<cell|858>>|<row|<cell|record, sections, transfers
  (Source)>|<cell|594>>|<row|<cell|work items
  G05\UG07>|<cell|934>>|<row|<cell|guarded layout, Haar chart, log
  jets>|<cell|749>>|<row|<cell|other files (labels, G01\UG04)>|<cell|852>>>>>

  <strong|Conventions.>

  <\itemize-minus>
    <item><strong|Gauge group.> <math|G\<subset\>U<around|(|n|)>> is a
    compact matrix group, with <math|n\<geqslant\>1>; nothing in this unit
    uses simplicity. Use the <math|<math-up|Ad>>-invariant inner product
    <math|<around|\<langle\>|X,Y|\<rangle\>>=-<math-up|Re><space|0.17em><math-up|tr><around|(|X*Y|)>/n>
    on its Lie algebra <math|\<frak-g\>>, and the Frobenius norm on matrices.
    For a plaquette <math|P>, <math|F<rsub|P><around|(|U|)>\<in\>\<frak-g\>>
    is the orthogonal projection of <math|<tfrac|1|2><around|(|U<rsub|P>-U<rsub|P><rsup|-1>|)>>,
    and <math|\<vartheta\><around|(|U<rsub|P>|)>=<around|\<lVert\>|U<rsub|P>-1|\<rVert\>>/<sqrt|n>>
    is its chord. <math|S<rsub|W><around|(|U|)>=<big|sum><rsub|P><around|(|1-<math-up|Re><space|0.17em><math-up|tr><space|0.17em>U<rsub|P>/n|)>>
    is the Wilson energy, summed once over each site and axis pair
    <math|\<mu\>\<less\>\<nu\>>, and <math|<around|\<langle\>|\<cdummy\>|\<rangle\>><rsub|\<beta\>>>
    is the Wilson expectation on a torus <math|\<Lambda\><rsub|\<ell\>>=<around|(|\<bbb-Z\>/\<ell\>|)><rsup|4>>,
    where <math|\<ell\>\<geqslant\>1>.

    <item><strong|Cover and placement.> Many objects live on the cover
    <math|\<bbb-Z\><rsup|4>>. A function <math|f> of finitely many cover
    links is <em|placed> at a site <math|o\<in\>\<Lambda\><rsub|\<ell\>>> by
    lifting the torus periodically around <math|o>; the result is written
    <math|f<around|(|o;U|)>>.

    <item><strong|Small fields.> <math|<math-up|Hy><rsub|t><around|(|X|)>> is
    the set of configurations in which no plaquette touching <math|X> has
    chord <math|\<gtr\>t>.

    <item><strong|Levels.> <math|m=0> is the coarsest level and <math|m=N>
    the Wilson lattice. <math|L<rsub|m>> is the odd block factor of the step
    <math|m+1\<to\>m>, the spacing satisfies
    <math|a<rsub|m>=L<rsub|m>*a<rsub|m+1>>, and <math|s<rsub|m>=log
    <around|(|1/a<rsub|m>|)>> is the scale.

    <item><strong|Couplings and level constants (III.9).>
    <math|<wide|\<beta\>|^><rsub|m>=<wide|\<beta\>|\<bar\>>+b<rsub|0>*s<rsub|m>>
    with <math|b<rsub|0>=11*C<rsub|A>/<around|(|24*\<pi\><rsup|2>|)>>. The
    small-field threshold is <math|\<theta\><rsub|m>=<wide|\<beta\>|^><rsub|m><rsup|-1/2>*exp
    <around|(|<around|(|log log <wide|\<beta\>|^><rsub|m>|)><rsup|2>|)>> and
    the <em|forced allowance> is <math|w<rsub|m>=exp <around|(|-exp
    <around|(|<around|(|log log <wide|\<beta\>|^><rsub|m>|)><rsup|2>/5|)>|)>>.
    <math|J<around|(|m|)>> is the nondecreasing stage index,
    <math|<wide|\<kappa\>|\<bar\>><rsub|j>\<geqslant\>1> the stage-<math|j>
    constant, <math|\<kappa\><rsub|m>=<wide|\<kappa\>|\<bar\>><rsub|J<around|(|m|)>>>
    the level-<math|m> constant, and <math|b<rsub|m>> its budget point.
    <math|\<rho\><rsub|m>=\<rho\><rsub|N,p,m>=e<rsup|\<cal-V\><rsub|m>><space|0.17em><math-up|gas><rsub|m>>
    is the polymer representation of the level-<math|m> density, with vacuum
    exponent <math|\<cal-V\><rsub|m>> (II.2).
    <math|T<rsup|<around|(|m|)>><rsub|\<beta\>>> is the blocking push-forward
    from level <math|m+1> to level <math|m> (III.1).

    <item><strong|Budget norms (II.2).> A budget point <math|b> has order
    <math|k<rsub|b>\<geqslant\>6>, power <math|P<rsub|b>\<geqslant\>2>,
    threshold <math|t<rsub|b>\<in\><around|(|0,1|]>>, a support exponent and
    a cover size. <math|f> is <em|<math|b>-regular on <math|X>> if it is
    local on links with both endpoints in <math|X>, measurable and gauge
    invariant, and <math|A\<mapsto\>f*<around|(|e<rsup|A>*U|)>> is
    <math|C<rsup|k<rsub|b>>> at <math|A=0> for every
    <math|U\<in\><math-up|Hy><rsub|t<rsub|b>><around|(|X|)>>. All ordered
    left derivatives through order <math|k<rsub|b>> must exist there. Write
    <math|<around|\<lVert\>|f|\<rVert\>><rsub|b;o,X>\<leqslant\>c> when
    <math|c\<geqslant\>0> bounds every such derivative, including the value,
    in every list of directions satisfying
    <math|<around|\<lvert\>|A<rsub|e>|\<rvert\>>\<leqslant\>t<rsub|b>*<around|(|1+<math-up|dist><around|(|e<rsub|->,o|)>|)><rsup|P<rsub|b>>>.
    Here <math|e<rsub|->> is the initial vertex of the positive link
    <math|e>, and <math|<math-up|dist>> is the periodic
    <math|\<ell\><rsup|\<infty\>>> distance. All bounds are pointwise,
    including at the small-field boundary.
  </itemize-minus>

  <strong|What the unit does.> It defines the field labels and their lattice
  representatives, and specifies the renormalized observables
  <math|O<rsub|N,p>>.

  <\enumerate>
    <item><strong|Sections.> For each label it constructs gauge-invariant
    polynomials in the link matrices on a fixed stencil that reproduce the
    label to Taylor order <math|d> in the spacing, with symmetry and
    small-field bounds (Ÿ4.1\U4.3).

    <item><strong|Readout.> It proves the converse: every regular lattice
    function has a label, and the label's size is bounded by the function's
    budget norm uniformly in the lattice side, support and norm parameters
    (Ÿ4.4).

    <item><strong|Equation sections.> From the lattice Schwinger\UDyson
    identity it builds a second kind of section on which every label of the
    free-Maxwell equation ideal becomes orthogonal to remote spectators
    (Ÿ4.5).

    <item><strong|Observables.> It specifies the record carrying a label
    through the RG history, proves the exact birth formula at the Wilson end,
    and collects the numerical conditions and comparison estimates used
    downstream (Ÿ4.6\U4.8).
  </enumerate>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Proposition II.1.1 (label spaces and frames).> For
  <math|j\<geqslant\>0> let <math|<math-up|Tay><rsub|j>> be the real space of
  <math|4>-tuples <math|A=<around|(|A<rsub|\<mu\>>|)>> of symmetric
  <math|<around|(|j+1|)>>-linear maps <math|<around|(|\<bbb-R\><rsup|4>|)><rsup|j+1>\<to\>\<frak-g\>>
  satisfying the radial-gauge condition <math|<big|sum><rsub|\<mu\>>z<rsub|\<mu\>>*A<rsub|\<mu\>><around|(|z,\<ldots\>,z|)>=0>.
  Its elements are the Taylor coefficients of weight <math|j+2> of a
  connection in radial gauge. A <em|jet> is a sequence
  <math|J=<around|(|J<rsub|j>|)><rsub|j\<geqslant\>0>>. Fix a real basis of
  each <math|<math-up|Tay><rsub|j>>, and give its coordinates weight
  <math|j+2>. Let <math|V<rsub|d>> be the space of complex polynomials in
  these coordinates of total weight <math|\<leqslant\>d> that are invariant
  under <math|J\<mapsto\><math-up|Ad><around|(|g|)>*J> for all
  <math|g\<in\>G>. Then:

  (a) <math|V<rsub|d>> is finite-dimensional,
  <math|1\<in\>V<rsub|d>\<subset\>V<rsub|d+1>>, and an element of
  <math|V<rsub|d>> is determined by its values on real jets.

  (b) <math|V<rsub|d>=<big|oplus><rsub|w,f>V<rsub|d><rsup|<around|(|w,f|)>>>,
  where <math|<around|(|w,f|)>> = (weight, number of factors).
  <math|V<rsub|d><rsup|<around|(|0,0|)>>=\<bbb-C\>*1>, and
  <math|V<rsub|d><rsup|<around|(|w,0|)>>=0> for <math|w\<gtr\>0>. Complex
  conjugation <math|p\<mapsto\><wide|p|\<bar\>>> and the orthogonal group
  <math|O<around|(|4|)>>, acting by rotating the jet, preserve the grades.

  (c) There is a coherent system of <em|frames>. For each <math|d> there is a
  basis <math|b<rsub|0>=1,b<rsub|1>,\<ldots\>,b<rsub|K<rsub|d>>> of
  <math|V<rsub|d>> with these properties:

  <\itemize-minus>
    <item>each <math|b<rsub|i>> is real (<math|<wide|b|\<bar\>><rsub|i>=b<rsub|i>>)
    and of pure grade <math|<around|(|w<rsub|i>,f<rsub|i>|)>>, with
    <math|<around|(|w<rsub|0>,f<rsub|0>|)>=<around|(|0,0|)>>,
    <math|w<rsub|i>\<leqslant\>d> and <math|f<rsub|i>\<geqslant\>1> for
    <math|i\<neq\>0>;

    <item>the basis of <math|V<rsub|d>> is contained in that of
    <math|V<rsub|d+1>>.
  </itemize-minus>

  In coordinates <math|c\<in\>\<bbb-C\><rsup|K<rsub|d>+1>> we write
  <math|<around|(|S<rsub|t>*c|)><rsub|i>=t<rsup|f<rsub|i>>*c<rsub|i>>,
  <math|<around|\<lVert\>|c|\<rVert\>><rsub|1>=<big|sum><rsub|i><around|\<lvert\>|c<rsub|i>|\<rvert\>>>,
  <math|c<rsup|\<circ\>>=c-c<rsub|0>*e<rsub|0>>, and <math|s\<cdot\>c> for
  the <math|O<around|(|4|)>> action, defined by
  <math|p<rsub|s\<cdot\>c><around|(|J|)>=p<rsub|c>*<around|(|s<rsup|-1>*J|)>>.
  <em|Status:> definitions; (a)\U(c) are theorems. <em|Lean:>
  <hlink|<verbatim|Labels.Taylor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L39>,
  <hlink|<verbatim|radial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L22-L37>,
  <hlink|<verbatim|limited>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L60-L61>,
  <hlink|<verbatim|invariantSpace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L103-L107>,
  <hlink|<verbatim|Label>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L112>,
  <hlink|<verbatim|cap_finite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L63-L94>,
  <hlink|<verbatim|eval_ext>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L38-L49>,
  <hlink|<verbatim|Grade>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L17-L18>,
  <hlink|<verbatim|decompose>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L87-L105>,
  <hlink|<verbatim|Frame>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L50-L57>,
  <hlink|<verbatim|Frames>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L102-L104>,
  <hlink|<verbatim|frames>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L107-L111>,
  <hlink|<verbatim|Frame.scaled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L58-L61>,
  <hlink|<verbatim|Frame.act>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L83-L84>,
  <hlink|<verbatim|Frame.core>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L123-L126>,
  <hlink|<verbatim|Frame.coeffSize>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L128>.
  The field spaces <math|F<rsub|d>> of the main theorem are quotients of
  <math|V<rsub|d>> by the null labels. That quotient is formed in V.1/V.2,
  not here.

  <strong|Proposition II.1.2 (test holonomies and sound sections).>

  (a) Fix <math|d>, a jet <math|J>, <math|h\<in\>\<bbb-R\>> and a cover edge
  <math|<around|(|x,\<mu\>|)>>, and let <math|A<rsup|<around|(|d|)>><rsub|\<mu\>><around|(|z|)>=<big|sum><rsub|j+2\<leqslant\>d>J<rsub|j,\<mu\>><around|(|z,\<ldots\>,z|)>>,
  with an empty sum when <math|d\<less\>2>. Let <math|u:\<bbb-R\>\<to\>G>
  solve <math|u<rprime|'><around|(|t|)>=u<around|(|t|)>*<space|0.17em>h*A<rsup|<around|(|d|)>><rsub|\<mu\>>*<around|(|h*<around|(|x+t*e<rsub|\<mu\>>|)>|)>>
  with <math|u<around|(|0|)>=1>. The solution exists and is unique, and we
  put <math|U<rsup|<around|(|d|)>><rsub|J,h><around|(|x,\<mu\>|)>=u<around|(|1|)>>.
  Moreover <math|U<rsup|<around|(|d|)>><rsub|J,h>=U<rsup|<around|(|d|)>><rsub|<math-up|sc><rsub|h>J,1>>,
  where <math|<math-up|sc><rsub|h>J=<around|(|h<rsup|j+2>*J<rsub|j>|)><rsub|j>>,
  and <math|U<rsup|<around|(|d|)>><rsub|J,0>\<equiv\>1>. A <em|holonomy
  datum> is such a choice of solutions; by uniqueness its links do not depend
  on the choice.

  (b) A <em|section> on a frame of <math|V<rsub|d>> is a pair
  <math|<around|(|S,\<Phi\>|)>>: a finite stencil
  <math|S\<subset\>\<bbb-Z\><rsup|4>> and a <math|\<bbb-C\>>-linear map
  <math|c\<mapsto\>\<Phi\><rsub|c>> into polynomials in the entries, and
  their conjugates, of the link matrices on <math|S>.

  (c) The section is <em|sound> if:

  <\itemize-minus>
    <item><math|0\<in\>S> and <math|S> is invariant under signed
    permutations;

    <item>each <math|\<Phi\><rsub|c>> is gauge invariant,
    <math|\<Phi\><rsub|e<rsub|0>>=1>, and
    <math|\<Phi\><rsub|<wide|c|\<bar\>>>=<wide|\<Phi\><rsub|c>|\<bar\>>>;

    <item><math|\<Phi\><rsub|c>*<around|(|s<rsup|\<ast\>>*U|)>=\<Phi\><rsub|s\<cdot\>c><around|(|U|)>>
    for every signed permutation <math|s>, where <math|s<rsup|\<ast\>>> is
    the pull-back under <math|y\<mapsto\>s*y>;

    <item>(<em|projection>) for every <math|c> and every jet <math|J>, the
    functions <math|h\<mapsto\>\<Phi\><rsub|c><around|(|U<rsup|<around|(|d|)>><rsub|J,h>|)>>
    and <math|h\<mapsto\>p<rsub|c><around|(|<math-up|sc><rsub|h>J|)>>, with
    <math|p<rsub|c>=<big|sum><rsub|i>c<rsub|i>*b<rsub|i>>, are
    <math|C<rsup|d>> at <math|0> and have equal derivatives of order
    <math|\<leqslant\>d> there.
  </itemize-minus>

  <em|Status:> definitions; the ODE facts are theorems. <em|Lean:>
  <hlink|<verbatim|Source.Hol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L55-L57>,
  <hlink|<verbatim|partConnection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L34-L35>,
  <hlink|<verbatim|SolvesLink.unique>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L42-L52>,
  <hlink|<verbatim|Hol.exists_ode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/ODE.lean#L162-L168>,
  <hlink|<verbatim|scaleJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L82>,
  <hlink|<verbatim|Projects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L85-L89>,
  <hlink|<verbatim|SectionData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L103-L105>,
  <hlink|<verbatim|SectionData.Sound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L140-L147>.

  <strong|Proposition II.1.3 (primary sections).> For every gauge group
  <math|G>, every holonomy datum and every coherent system of frames, there
  are sections <math|\<Sigma\><rsub|d>=<around|(|S<rsub|d>,\<Phi\><rsup|<around|(|d|)>>|)>>
  on the frames of <math|V<rsub|d>> such that, for every <math|d>:

  <\enumerate>
    <item><math|\<Sigma\><rsub|d>> is sound.

    <item>(<em|slot structure>) Each column is
    <math|\<Phi\><rsup|<around|(|d|)>><rsub|e<rsub|i>><around|(|U|)>=P<rsub|i><around|(|\<sigma\><rsub|1><around|(|U|)>,\<ldots\>,\<sigma\><rsub|m><around|(|U|)>|)>>.
    Here the <math|\<sigma\><rsub|l>> are slots with stencils in
    <math|S<rsub|d>>, <math|P<rsub|i>> is a complex polynomial in their real
    components, and every monomial of <math|P<rsub|i>> has degree
    <math|\<geqslant\>f<rsub|i>>. A <em|slot>
    <math|\<sigma\>=<around|(|\<omega\>,P|)>> is a lattice walk
    <math|\<omega\>> from <math|0> followed by a plaquette <math|P> at its
    end, with <math|\<sigma\><around|(|U|)>=<math-up|Ad><around|(|U<rsub|\<omega\>>|)>*F<rsub|P><around|(|U|)>\<in\>\<frak-g\>>.

    <item>(<em|cost>) For all <math|k,P\<in\>\<bbb-N\>> there is
    <math|A\<geqslant\>0>, depending on the chosen section and on <math|k,P>,
    with the following property. For every budget point <math|b> of order
    <math|k> and power <math|P> (any threshold and support exponent), every
    side <math|\<ell\>>, site <math|o> and index <math|i>, the placed column
    <math|\<Phi\><rsup|<around|(|d|)>><rsub|e<rsub|i>><around|(|o;\<cdot\>|)>>
    is <math|b>-regular on its footprint <math|Y<rsub|o>=o+S<rsub|d>> with
    sup bound <math|A*<space|0.17em>t<rsub|b><rsup|f<rsub|i>>>.
  </enumerate>

  For the fixed primary sections used in the final family, two further facts
  hold:

  <\enumerate>
    <assign|item-nr|3><item>one nondecreasing bound
    <math|\<pi\><around|(|D|)>\<geqslant\>1> serves in item 3 for all
    <math|d,k,P\<leqslant\>D>;

    <item>there is <math|c<rsub|d>\<geqslant\>1> with
    <math|<around|\<lvert\>|\<Phi\><rsup|<around|(|d|)>><rsub|e<rsub|i>>|\<rvert\>>\<leqslant\>c<rsub|d>>
    at every configuration and every placement.
  </enumerate>

  <em|Status:> theorem, assembled from G01\UG07; no simplicity assumption on
  <math|G>. <em|Lean:> <hlink|<verbatim|Integrated.source_sections>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L216-L219>,
  <hlink|<verbatim|Bid.teaching>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L76-L86>,
  <hlink|<verbatim|Bid.Learns>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L72-L74>,
  <hlink|<verbatim|Bid.pop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L55-L56>,
  <hlink|<verbatim|Bid.Credit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L63-L66>,
  <hlink|<verbatim|Foundations.hol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L92>,
  <hlink|<verbatim|localSection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L101>,
  <hlink|<verbatim|sound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L103-L104>,
  <hlink|<verbatim|valuation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L106-L107>,
  <hlink|<verbatim|price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L126>,
  <hlink|<verbatim|priced>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L133-L142>,
  <hlink|<verbatim|full_value_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L147-L163>.
  These are the sections of the final Wilson family (Prop. II.1.6).

  <strong|Proposition II.1.4 (readout of a lattice function).> Fix a holonomy
  datum, <math|d>, and a frame of <math|V<rsub|d>>.

  (a) Let <math|b> be a budget point of order <math|\<geqslant\>d>, let
  <math|X\<subset\>\<Lambda\><rsub|\<ell\>>>,
  <math|o\<in\>\<Lambda\><rsub|\<ell\>>>, and let <math|f> be
  <math|b>-regular on <math|X>. There is a unique <math|p\<in\>V<rsub|d>>
  that <em|reads> <math|f> at <math|o>:

  <\itemize-minus>
    <item>if <math|X> does not wrap around <math|o>
    (<math|10<space|0.17em><math-up|dist><around|(|x,o|)>\<less\>\<ell\>> for
    all <math|x\<in\>X>), then for every jet <math|J> the function
    <math|h\<mapsto\>f<around|(|U<rsup|<around|(|d|)>,o><rsub|J,h>|)>> is
    <math|C<rsup|d>> at <math|0> and has the same derivatives of order
    <math|\<leqslant\>d> there as <math|h\<mapsto\>p<around|(|<math-up|sc><rsub|h>J|)>>;

    <item>if <math|X> wraps, <math|p=f<around|(|1|)>\<cdot\>1> by convention.
  </itemize-minus>

  Here <math|U<rsup|<around|(|d|)>,o><rsub|J,h><around|(|x,\<mu\>|)>=U<rsup|<around|(|d|)>><rsub|J,h><around|(|<wide|x-o|~>,\<mu\>|)>>,
  where the tilde denotes the centred periodic lift. These are torus test
  links, defined by lifting each initial vertex; they need not be periodic
  samples of a connection across the seam.

  (b) There is <math|C\<geqslant\>1>, depending only on the holonomy datum
  and the frame, with the following property. For all <math|\<ell\>,o,X>, all
  budget points <math|b> with <math|k<rsub|b>\<geqslant\>d> and
  <math|P<rsub|b>\<geqslant\>d>, all <math|f> that are <math|b>-regular on
  <math|X> with sup bound <math|c>, and all <math|p> reading <math|f>:

  <\equation*>
    <around|\<lVert\>|S<rsub|t<rsub|b>><space|0.17em><math-up|coord><around|(|p|)>|\<rVert\>><rsub|1>\<leqslant\>C*<space|0.17em>c.
  </equation*>

  (c) If <math|\<Sigma\>> is sound and <math|20*<around|(|<around|\<lvert\>|x<rsub|\<mu\>>|\<rvert\>>+1|)>\<leqslant\>\<ell\>>
  for every <math|x\<in\>S> and every axis <math|\<mu\>>, then the placed
  function <math|\<Phi\><rsub|c><around|(|o;\<cdot\>|)>> reads
  <math|p<rsub|c>> at <math|o>.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|exists_read>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L238-L247>,
  <hlink|<verbatim|read_projection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L218-L233>,
  <hlink|<verbatim|Reads>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L186-L194>,
  <hlink|<verbatim|price_of_readout>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L271-L290>,
  <hlink|<verbatim|placed_reads>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L253-L267>.
  This bounds the local-splitting projection and the remainder comparisons in
  III.12\UIII.13 and VIII.1.

  <strong|Proposition II.1.5 (equation sections).> Let
  <math|<math-up|Sh><rsub|j>\<subset\><math-up|Tay><rsub|j>> be the radial
  potentials whose curvature is a degree-<math|j> homogeneous Taylor
  coefficient of a <math|\<frak-g\>>-valued solution of the <em|free> Maxwell
  equations. That is: <math|F> is antisymmetric, satisfies the Bianchi
  identity, and <math|<big|sum><rsub|a>\<partial\><rsub|a>*F<rsub|a*b>=0>.
  The <em|equation ideal> is

  <\equation*>
    \<cal-E\><rsub|d>=<around|{|p\<in\>V<rsub|d>:p<around|(|J|)>=0<text| for
    every jet with >J<rsub|j>\<in\><math-up|Sh><rsub|j><text| for all >j|}>.
  </equation*>

  This is the weight-<math|\<leqslant\>d> part of the ideal of the linearized
  field equations, imposed degree by degree. For every holonomy datum, every
  <math|d> and every frame of <math|V<rsub|d>>, there are a section
  <math|\<Sigma\>> and a <math|\<bbb-C\>>-linear automorphism <math|R> of
  <math|V<rsub|d>> (the <em|weave>) such that:

  <\itemize-minus>
    <item><math|\<Sigma\>> is sound and has the slot structure and cost of
    Prop. II.1.3;

    <item><math|R> commutes with the signed-permutation action and with
    conjugation;

    <item>for every <math|p\<in\>\<cal-E\><rsub|d>>, the cover function
    <math|\<Phi\><rsub|<math-up|coord><around|(|R*p|)>>> is <em|micro>.
  </itemize-minus>

  A function <math|f> is <em|micro> if it is continuous and there are
  <math|r,M\<in\>\<bbb-N\>> with the following property. For every side
  <math|\<ell\>\<geqslant\>M>, site <math|o>, coupling
  <math|\<beta\>\<neq\>0> and bounded measurable <math|S> depending only on
  links with both endpoints at distance <math|\<gtr\>r> from <math|o>,

  <\equation*>
    <around*|\<langle\>|f(o;\<cdot\><around*|)|<space|0.17em>S|\<rangle\>><rsub|\<beta\>>=0.|\<nobracket\>>
  </equation*>

  The same holds simultaneously for all <math|d> along a fixed system of
  frames. The constructed <math|R> is unitriangular: if <math|p> has pure
  grade <math|<around|(|w,f|)>>, every nonzero component of <math|R*p-p> has
  grade <math|<around|(|w<rprime|'>,f<rprime|'>|)>> with
  <math|<around|(|f<rprime|'>,w<rprime|'>|)>\<gtr\><around|(|f,w|)>> in
  lexicographic order. The existence statement does not require this extra
  property. <em|Status:> theorem, unconditional. <em|Lean:>
  <hlink|<verbatim|Maxwell.equationIdeal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72>,
  <hlink|<verbatim|ideal_meaning>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L74-L79>,
  <hlink|<verbatim|Maxwell.onShell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L18-L42>,
  <hlink|<verbatim|gaugeJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L46-L47>,
  <hlink|<verbatim|Micro>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Micro.lean#L33>,
  <hlink|<verbatim|MicroAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Micro.lean#L29-L31>,
  <hlink|<verbatim|Portfolio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L51-L58>,
  <hlink|<verbatim|Portfolio.build>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L101-L105>,
  <hlink|<verbatim|commissioned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Assembly.lean#L30-L33>,
  <hlink|<verbatim|regrade_tri>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Automorphism.lean#L43-L50>.
  In the main chain these sections enter through the auxiliary-section data
  in <hlink|<verbatim|Run.Ties>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L65-L71>
  (III.12), as a second family of sections on the same history, together with
  <hlink|<verbatim|Hearthside>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fire.lean#L17-L20>.
  <hlink|<verbatim|Memento>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Assembly.lean#L39-L41>
  and <hlink|<verbatim|awarded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Assembly.lean#L57-L67>
  would make them the family's own sections, but they are outside the
  main-theorem closure.

  <strong|Proposition II.1.6 (the construction record and the renormalized
  observables).> A <em|record> <math|<math-ss|C>> consists of:

  <\itemize-minus>
    <item>an RG history <math|H> (III.9) and a holonomy datum;

    <item>coherent frames, and sections <math|\<Sigma\><rsub|d>> on them;

    <item>reference levels <math|r<around|(|d|)>>;

    <item>for all <math|d,N,p>, a transfer family
    <math|\<cal-T\><rsub|d,N,p>=<around|(|<around|(|E<rsub|m>|)><rsub|m>,\<tau\>|)>>
    (Prop. II.1.7), with <math|\<tau\>=\<tau\><rsub|d,N,p>> a linear
    automorphism of <math|\<bbb-C\><rsup|K<rsub|d>+1>>.
  </itemize-minus>

  The renormalized observable of <math|v\<in\>\<bbb-C\><rsup|K<rsub|d>+1>> at
  <math|o\<in\>\<Lambda\><rsub|N,p>> is

  <\equation*>
    O<rsub|N,p><around|(|v,o;U|)>=a<rsub|N><rsup|-d>*<space|0.17em>\<Phi\><rsup|<around|(|d|)>><rsub|S<rsub|1/\<theta\><rsub|N>>*\<tau\><rsup|-1>*v><around|(|o;U|)>.
  </equation*>

  The <em|consistency predicate> <math|<math-up|Makes><around|(|<math-ss|C>|)>>
  states:

  <\itemize-minus>
    <item>(i) <math|H> is selected;

    <item>(ii) every <math|\<Sigma\><rsub|d>> is sound;

    <item>(iii) <math|d+3\<leqslant\>J<around|(|r<around|(|d|)>|)>>, and for
    <math|m\<geqslant\>r<around|(|d|)>> the level-<math|m> budget has order
    <math|\<geqslant\>d+1> and power <math|\<geqslant\>d>;

    <item>(iv) if <math|r<around|(|d|)>\<leqslant\>N>, then
    <math|20*<around|(|<around|\<lvert\>|x<rsub|\<mu\>>|\<rvert\>>+1|)>\<leqslant\>\<ell\><rsub|N,p>>
    for every <math|x\<in\>S<rsub|d>> and every axis <math|\<mu\>>;

    <item>(v) if <math|r<around|(|d|)>\<leqslant\>N>, each placed column
    <math|\<Phi\><rsup|<around|(|d|)>><rsub|e<rsub|i>><around|(|o;\<cdot\>|)>>
    is <math|b<rsub|N>>-regular on <math|Y<rsub|o>> with sup bound
    <math|\<kappa\><rsub|N>*\<theta\><rsub|N><rsup|f<rsub|i>>>;

    <item>(vi) if <math|r<around|(|d|)>\<leqslant\>N>, then
    <math|\<cal-T\><rsub|d,N,p>> is based for
    <math|<around|(|\<Sigma\><rsub|d>,r<around|(|d|)>|)>>.
  </itemize-minus>

  Then:

  (a) Without any hypothesis: <math|v\<mapsto\>O<rsub|N,p><around|(|v,o|)>>
  is linear, <math|O<rsub|N,p><around|(|v,o|)>> is continuous and depends
  only on links in <math|Y<rsub|o>>, and <math|O<rsub|N,p><around|(|v,o+b;U|)>=O<rsub|N,p><around|(|v,o;U|(>\<cdot\>+b))>
  (literal translation covariance).

  (b) If the sections are sound, <math|O<rsub|N,p><around|(|v,o|)>> is gauge
  invariant for every <math|N>.

  (c) Under <math|<math-up|Makes>> and <math|r<around|(|d|)>\<leqslant\>N>:

  <\itemize-minus>
    <item>reality: <math|O<rsub|N,p><around|(|<wide|v|\<bar\>>,o|)>=<wide|O<rsub|N,p><around|(|v,o|)>|\<bar\>>>;

    <item>hypercubic covariance: <math|O<rsub|N,p><around|(|s\<cdot\>v,A<rsub|s,b>*o;U|)>=O<rsub|N,p><around|(|v,o;A<rsub|s,b><rsup|\<ast\>>*U|)>>
    for the lattice affine map <math|A<rsub|s,b>*y=s*y+b>;

    <item>normalization of the unit: <math|O<rsub|N,p><around|(|a<rsub|r<around|(|d|)>><rsup|d>*e<rsub|0>,o|)>\<equiv\>1>;

    <item>normalized readout: the level-<math|r<around|(|d|)>> coordinates of
    the transfer of <math|\<tau\><rsup|-1>*v> equal <math|v>.
  </itemize-minus>

  The renormalization map of the main theorem is
  <math|B<rsub|N,p,d>=S<rsub|1/\<theta\><rsub|N>>*\<tau\><rsup|-1>>: writing
  <math|P<rsub|d><around|[|c|]>=\<Phi\><rsup|<around|(|d|)>><rsub|c>>, its
  insertion formula is <math|I<rsub|N,p>=a<rsub|N><rsup|-d>*P<rsub|d>*<around|[|B<rsub|N,p,d>*c|]>>.
  <em|Status:> (a)\U(c) are theorems. <math|<math-up|Makes>> is proved for
  the final family in <hlink|<verbatim|Bandage.squad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Marco.lean#L30-L49>
  (VIII.1) and included in the construction record
  <hlink|<verbatim|Run>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48>
  (III.12). That family uses the fixed coherent frames, holonomies and
  primary sections of Prop. II.1.3. Clauses (ii)\U(v) come from Prop.
  II.1.9(c) of this unit and clause (vi) from G08 (III.10). <em|Lean:>
  <hlink|<verbatim|Family>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L24-L30>,
  <hlink|<verbatim|Family.O>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L42>,
  <hlink|<verbatim|initial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L77-L79>,
  <hlink|<verbatim|Family.Makes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62>,
  <hlink|<verbatim|linearO>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L117-L127>,
  <hlink|<verbatim|continuousO>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L114-L115>,
  <hlink|<verbatim|localO>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L109-L112>,
  <hlink|<verbatim|translation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L71-L72>,
  <hlink|<verbatim|invariant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L104-L107>,
  <hlink|<verbatim|reality>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L74-L86>,
  <hlink|<verbatim|rotated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L88-L98>,
  <hlink|<verbatim|constant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L100-L102>,
  <hlink|<verbatim|normalized>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L65-L68>.

  <strong|Proposition II.1.7 (based transfer families).> <em|Source
  coefficients.> A source coefficient at level <math|m> is
  <math|E=<around|(|x,<around|(|X<rsub|i>|)>,<around|(|g<rsub|i>|)>,<around|(|h<rsub|i>|)>|)><rsub|i\<in\>\<bbb-N\>>>.
  Here <math|x\<in\>\<bbb-C\><rsup|K<rsub|d>+1>> are the running label
  coordinates, the <math|X<rsub|i>> are supports, the <math|g<rsub|i>> are
  <em|regular> remainders, and the <math|h<rsub|i>> are <em|forced> functions
  attached to the forced-polymer addresses <math|i> of
  <math|\<rho\><rsub|m>>, whose activities are <math|K<rsub|i>>.

  <em|Density.> Its density at <math|o> is the <math|\<lambda\>>-coefficient,
  at <math|\<lambda\><rsup|2>=0>, of the density with one inserted source:

  <\equation*>
    \<cal-D\><rsub|m><around|(|E|)><around|(|U|)>=\<rho\><rsub|m><around|(|U|)>*<around*|[|x<rsub|0>+\<b-1\><rsub|<math-up|Hy><rsub|\<theta\><rsub|m>><around|(|Y<rsub|o>|)>>*\<Phi\><rsub|S<rsub|1/\<theta\><rsub|m>>*x<rsup|\<circ\>>><around|(|o;U|)>+<big|sum><rsub|i>\<b-1\><rsub|<math-up|Hy><rsub|\<theta\><rsub|m>><around|(|X<rsub|i>|)>>*g<rsub|i><around|(|U|)>|]>+e<rsup|\<cal-V\><rsub|m><around|(|U|)>>*<big|sum><rsub|b<math-up|adm>><big|sum><rsub|i\<in\>b>h<rsub|i><around|(|U|)>*<big|prod><rsub|j\<in\>b\<setminus\><around|{|i|}>>K<rsub|j><around|(|U|)>.
  </equation*>

  <em|Format at <math|o>.> The <math|g<rsub|i>> are <math|b<rsub|m>>-regular
  on <math|X<rsub|i>\<ni\>o>, with <math|g<rsub|i><around|(|1|)>=0>. When
  <math|X<rsub|i>> does not wrap around <math|o>,
  <math|h\<mapsto\>g<rsub|i><around|(|U<rsup|<around|(|d|)>,o><rsub|J,h>|)>>
  is <math|C<rsup|d>> at <math|0> and all its derivatives of order
  <math|\<leqslant\>d> vanish there, for every <math|J>. If
  <math|k<rsub|b<rsub|m>>\<geqslant\>d>, this is exactly zero readout in
  Prop. II.1.4(a). Each <math|h<rsub|i>> is gauge invariant and measurable,
  vanishes unless polymer <math|i> is eligible and carries <math|o>, and
  depends only on the links and flags of the support of polymer <math|i>.

  <em|Remainder bound <math|<around|(|\<kappa\>,c|)>>.> Require
  <math|\<kappa\>\<gtr\>0> and nonnegative <math|a,b> with
  <math|a+b\<leqslant\>c>, together with nonnegative weights
  <math|e<rsub|i>,e<rsub|i><rprime|'>> with
  <math|<big|sum><rsub|i><math-up|mass><around|(|X<rsub|i>,e<rsub|i>|)>\<leqslant\>a>,
  <math|<around|\<lVert\>|g<rsub|i>|\<rVert\>><rsub|b<rsub|m>;o,X<rsub|i>>\<leqslant\>e<rsub|i>>,
  <math|<big|sum><rsub|i><math-up|mass><around|(|<math-up|supp>K<rsub|i>,e<rprime|'><rsub|i>|)>\<leqslant\>\<kappa\>*b>
  and <math|<around|\<lvert\>|h<rsub|i>|\<rvert\>>\<leqslant\>e<rprime|'><rsub|i>>
  at every configuration. Each weighted sum is required to converge;
  <math|<math-up|supp>K<rsub|i>> denotes the prescribed support of forced
  polymer <math|i>.

  <em|Based family.> A family <math|<around|(|E<rsub|m><around|(|v|)>|)><rsub|m>>
  with terminal automorphism <math|\<tau\>> is <em|based> for
  <math|<around|(|\<Sigma\>,r|)>> if <math|r\<leqslant\>N> and, for all
  <math|v> and <math|r\<leqslant\>m\<leqslant\>N>:

  <\itemize-minus>
    <item>(1) <math|E<rsub|m><around|(|v|)>> has Format at <math|0> and
    remainder bound <math|<around|(|<sqrt|w<rsub|m>>,\<kappa\><rsub|m><around|\<lVert\>|x<rsub|m><around|(|v|)><rsup|\<circ\>>|\<rVert\>><rsub|1>|)>>;

    <item>(2) <math|x<rsub|m>>, <math|g> and <math|h> are linear in <math|v>,
    and the supports do not depend on <math|v>;

    <item>(3) (<em|bare end>) <math|x<rsub|N><around|(|v|)>=v>,
    <math|g\<equiv\>0>, and <math|\<cal-D\><rsub|N><around|(|E<rsub|N><around|(|v|)>|)>=\<rho\><rsub|N>*<space|0.17em>\<Phi\><rsub|S<rsub|1/\<theta\><rsub|N>>*v><around|(|0;\<cdot\>|)>>;

    <item>(4) (<em|transfer>) <math|\<cal-D\><rsub|m><around|(|E<rsub|m><around|(|v|)>|)>=L<rsub|m><rsup|d>*<space|0.17em>T<rsup|<around|(|m|)>><rsub|\<beta\><rsub|N,p,m+1>>*\<cal-D\><rsub|m+1><around|(|E<rsub|m+1><around|(|v|)>|)>>
    for <math|m\<less\>N>;

    <item>(5) <math|<around|\<lVert\>|x<rsub|m+1>|\<rVert\>><rsub|1>\<leqslant\>\<kappa\><rsub|m+1><around|\<lVert\>|x<rsub|m>|\<rVert\>><rsub|1>>
    and <math|<around|\<lVert\>|x<rsub|m>|\<rVert\>><rsub|1>\<leqslant\>\<kappa\><rsub|m+1>*L<rsub|m><rsup|d><around|\<lVert\>|x<rsub|m+1>|\<rVert\>><rsub|1>>;

    <item>(6) <math|x<rsub|r><around|(|v|)>=\<tau\>*v>, <math|\<tau\>>
    commutes with conjugation and with the signed-permutation action, and
    <math|x<rsub|m>*<around|(|a<rsub|N><rsup|d>*e<rsub|0>|)>=a<rsub|m><rsup|d>*e<rsub|0>>.
  </itemize-minus>

  <em|Status:> definition (specification). G08 (III.10) produces such
  families from the per-step source estimates, together with the room and
  bank inequalities of Prop. II.1.9. A coefficient with Format and a
  remainder bound has bounded measurable density whenever the underlying
  representation is lawful (Lemma 4.26). For a based family on a selected
  history, and <math|r\<leqslant\>m\<leqslant\>N>,

  <\equation*>
    <big|int>\<cal-D\><rsub|m>*<around|(|E<rsub|m>*<around|(|\<tau\><rsup|-1>*v|)>|)>*<space|0.17em>d*U=a<rsub|m><rsup|d>*<space|0.17em>Z<rsub|N,p><space|0.17em><around|\<langle\>|O<rsub|N,p><around|(|v,0|)>|\<rangle\>><rsub|\<beta\><rsub|N,p>>.
  </equation*>

  <em|Lean:> <hlink|<verbatim|Coefficient>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L26-L30>,
  <hlink|<verbatim|Coefficient.density>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L48-L50>,
  <hlink|<verbatim|exponentialEntry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L37-L39>,
  <hlink|<verbatim|Format>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L52-L61>,
  <hlink|<verbatim|remBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L63-L68>,
  <hlink|<verbatim|TransferData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L73-L75>,
  <hlink|<verbatim|TransferData.Based>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L89-L114>,
  <hlink|<verbatim|integral_marked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Preservation.lean#L100-L118>
  (not used by the main theorem), <hlink|<verbatim|Bid.G08>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L101-L103>.

  <strong|Proposition II.1.8 (birth at the Wilson end).> Let <math|\<rho\>>
  be a lawful polymer representation on <math|\<Lambda\><rsub|\<ell\>>> with
  parameter <math|w\<gtr\>0> (II.2) and threshold <math|\<theta\>>. Let
  <math|o\<in\>\<Lambda\><rsub|\<ell\>>>, and let <math|\<Sigma\>> be a sound
  section whose placed columns satisfy <math|\<lvert\>\<Phi\><rsub|e<rsub|i>>(o;\<cdot\><around|)||\<rvert\>>\<leqslant\>B>
  with <math|B\<geqslant\>1>. Put <math|Y=Y<rsub|o>> and
  <math|f<rsub|max>=max<rsub|i> f<rsub|i>>, and assume the <em|fee condition>

  <\equation*>
    <math-up|fee>\<assign\>B*<space|0.17em>\<theta\><rsup|-f<rsub|max>><space|0.17em><math-up|mass><around|(|Y,1|)>*<space|0.17em><around*|(|e<rsup|<around|\<lvert\>|Y|\<rvert\>>*w>-1|)>\<leqslant\><sqrt|w>.
  </equation*>

  Assume a <em|shelf> of reserved forced addresses: for every pair of finite
  supports <math|\<varnothing\>\<ne\>I\<subseteq\>X> and every auxiliary
  index in <math|\<bbb-N\>>, there is a distinct forced address with support
  <math|X>, flagged inventory <math|I>, identically zero activity, and an
  auxiliary eligibility test satisfied at every configuration. For every
  fixed reservation index there is a coefficient <math|E<around|(|v|)>> with
  the following properties:

  <\itemize-minus>
    <item><math|x=v> and <math|g\<equiv\>0>;

    <item>the forced part is the large-field <em|supplement>
    <math|\<Phi\><rsub|S<rsub|1/\<theta\>>*v><around|(|o;\<cdummy\>|)>-v<rsub|0>-\<b-1\><rsub|<math-up|Hy><rsub|\<theta\>><around|(|Y|)>>*\<Phi\><rsub|S<rsub|1/\<theta\>>*v<rsup|\<circ\>>><around|(|o;\<cdot\>|)>>,
    spliced into the reserved addresses;

    <item>the components <math|x,g,h> depend linearly on <math|v>, the
    supports are independent of <math|v>, and <math|E<around|(|v|)>> has
    Format at <math|o> and remainder bound
    <math|<around|(|<sqrt|w>,<around|\<lVert\>|v<rsup|\<circ\>>|\<rVert\>><rsub|1>|)>>;

    <item>for every configuration <math|U>,
  </itemize-minus>

  <\equation*>
    \<cal-D\><around|(|E<around|(|v|)>|)><around|(|U|)>=\<rho\><around|(|U|)>*<space|0.17em>\<Phi\><rsub|S<rsub|1/\<theta\>>*v><around|(|o;U|)>.
  </equation*>

  <em|Status:> theorem. The main chain uses
  <hlink|<verbatim|Guard.summon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_GUARDED_LAYOUT/Guards.lean#L287-L326>
  at level <math|N>, with <math|w=w<rsub|N>>. It requires a selected history
  and reserved addresses whose auxiliary tests need hold only when the
  support has exactly the prescribed flagged inventory, together with a
  separate zero-activity assumption. The section bound and fee condition are
  unchanged. The address conditions are <hlink|<verbatim|Keeper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_GUARDED_LAYOUT/Guards.lean#L63-L68>
  and <hlink|<verbatim|Keeper.blank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_GUARDED_LAYOUT/Guards.lean#L89>.
  <em|Lean:> <hlink|<verbatim|launched>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L116-L161>,
  <hlink|<verbatim|born>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L105-L106>,
  <hlink|<verbatim|supplement>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L24-L25>,
  <hlink|<verbatim|fullCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L67>,
  <hlink|<verbatim|fee>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L108-L109>.

  <strong|Proposition II.1.9 (numerical conditions for the sections and
  transfers).>

  (a) <em|Plans.> Let <math|P> be a stage profile,
  <math|C<rsub|j>\<geqslant\>1>, and let <math|<around|(|<math-ss|K><rsub|j>|)>>
  be nondecreasing with <math|<math-ss|K><rsub|j>\<geqslant\>1>. For the
  fixed degree-<math|d> frame put <math|\<Omega\><rsub|d>=1+2*<big|sum><rsub|s,i><around|\<lVert\>|s\<cdot\>e<rsub|i>|\<rVert\>><rsub|1>>,
  where <math|s> ranges over signed permutations and <math|i> over frame
  indices; the factor <math|2> accounts for conjugation. This constant bounds
  the finite symmetry average. Assume <math|P> satisfies the following,
  writing <math|<wide|\<kappa\>|\<bar\>><rsub|j>> for the constant of stage
  <math|j>:

  <\itemize-minus>
    <item><math|j\<leqslant\>> order and <math|j\<leqslant\>> power of stage
    <math|j>;

    <item><math|\<pi\><around|(|max <around|(|<math-up|order><rsub|j>,<math-up|power><rsub|j>|)>|)>\<leqslant\><wide|\<kappa\>|\<bar\>><rsub|j>>;

    <item><math|<around|(|C<rsub|j>+1|)>*<space|0.17em>\<Omega\><rsub|d>\<leqslant\><math-ss|K><rsub|j>>
    for <math|d\<leqslant\>j>;

    <item><math|64<math-ss|K><rsub|j+1><rsup|2>\<leqslant\><wide|\<kappa\>|\<bar\>><rsub|j>>.
  </itemize-minus>

  Then there are lower bounds <math|n<rsub|j>> for the block factors and
  coupling thresholds <math|\<beta\><rsub|j><rsup|\<ast\>>> such that every
  admissible level system with profile <math|P>, block factors at least
  <math|n<rsub|j>> at stage <math|j>, and
  <math|<wide|\<beta\>|^><rsub|m>\<geqslant\>\<beta\><rsub|J*<around|(|m+1|)>><rsup|\<ast\>>>
  satisfies the following numerical conditions:

  <\itemize-minus>
    <item><math|J<around|(|m|)>\<leqslant\>> order and power at level
    <math|m>;

    <item><math|\<pi\><around|(|max <around|(|<math-up|order>,<math-up|power>|)>|)>\<leqslant\>\<kappa\><rsub|m>>;

    <item>the latch of (b) for all <math|d\<leqslant\>J<around|(|m|)>>;

    <item>room: <math|64<math-ss|K><rsup|2><rsub|J<around|(|m|)>+1>\<leqslant\>\<kappa\><rsub|m>>;

    <item>bank: <math|10<rsup|5><math-ss|K><rsub|j+1><rsup|6><around|(|1+\<kappa\><rsub|m+1>|)><rsup|2>\<leqslant\>L<rsub|m><rsup|1/8>>,
    with <math|j=J*<around|(|m+1|)>>;

    <item>for every <math|d\<leqslant\>J<around|(|m|)>>, with
    <math|j=J*<around|(|m+1|)>> and <math|\<eta\>=L<rsub|m><rsup|-2/5>>,
  </itemize-minus>

  <\equation*>
    \<eta\>*<around|(|1+\<kappa\><rsub|m+1>|)>*\<Omega\><rsub|d>\<leqslant\>L<rsub|m><rsup|-3/8>,<space|2em><around|(|C<rsub|j>+\<eta\>*\<kappa\><rsub|m+1>|)>*\<Omega\><rsub|d>\<leqslant\><math-ss|K><rsub|j>.
  </equation*>

  If a profile already satisfies <math|j\<leqslant\><math-up|order><rsub|j>,<math-up|power><rsub|j>>,
  then, for any fixed <math|C<rsub|j>\<geqslant\>1>, one can choose
  <math|<around|(|<math-ss|K><rsub|j>|)>> and enlarge only its constants
  <math|<wide|\<kappa\>|\<bar\>><rsub|j>> to obtain the four stage conditions
  above.

  (b) <em|Latch.> At level <math|m>, <math|<math-up|Latch><around|(|d,m|)>>
  holds if, for every <math|p>, <math|\<ell\><rsub|m,p>> is at least the
  minimal side of <math|\<Sigma\><rsub|d>>, and the fee condition of Prop.
  II.1.8 holds with <math|B=c<rsub|d>>, <math|\<theta\>=\<theta\><rsub|m>>,
  <math|w=w<rsub|m>>, at every placement. For each <math|d> and support
  exponent, <math|<math-up|Latch><around|(|d,m|)>> holds once
  <math|<wide|\<beta\>|^><rsub|m>> is large enough.

  (c) <em|Section clauses of Makes.> If the numerical conditions of (a) hold
  on a history and <math|d+3\<leqslant\>J<around|(|r<around|(|d|)>|)>> for
  all <math|d>, then the primary sections satisfy clauses (ii)\U(v) of
  <math|<math-up|Makes>>.

  <em|Status:> theorems. The two per-step inequalities are
  <hlink|<verbatim|Buys>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Replay.lean#L47-L51>;
  the finite symmetry constant is <hlink|<verbatim|orbitCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Motion.lean#L121>.
  <em|Lean:> <hlink|<verbatim|Doors.Plans>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L57-L62>,
  <hlink|<verbatim|Doors.Budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L65-L72>,
  <hlink|<verbatim|Doors.afford>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L76-L102>,
  <hlink|<verbatim|alone>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L108-L133>,
  <hlink|<verbatim|Latch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L120-L123>,
  <hlink|<verbatim|latch_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L126-L157>,
  <hlink|<verbatim|entrances>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L162-L177>,
  <hlink|<verbatim|Issue.refer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Issue.lean#L38-L45>,
  <hlink|<verbatim|Foundations.refLi>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L182-L193>,
  <hlink|<verbatim|Bid.RefLi>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L141-L145>.

  <strong|Proposition II.1.10 (chessboard comparison at all offsets).> Let
  <math|\<cal-C\><rsub|k><around|(|x|)>> denote the tiling of
  <math|\<Lambda\><rsub|N,p>> by link cells of odd side
  <math|D<rsub|k,N>=a<rsub|k>/a<rsub|N>>, for <math|k\<leqslant\>N>, centred
  at <math|x>. Write <math|<math-up|rt><rsub|\<beta\>>> for the chessboard
  root test of a tiling, and say that <math|F> is <em|interior> to a cell if
  it is measurable in that cell with a uniform bound.

  (a) <em|Centred symmetry.> Suppose <math|F> is interior to the central cell
  of <math|\<cal-C\><rsub|k><around|(|0|)>>. For every diagonal sign change
  <math|s> and every <math|x>, the function
  <math|F\<circ\>A<rsub|s,x><rsup|\<ast\>>> is interior to the central cell
  of <math|\<cal-C\><rsub|k><around|(|x|)>> and has the same root test as
  <math|F> in <math|\<cal-C\><rsub|k><around|(|0|)>>. The same holds after
  complex conjugation. Diagonal sign changes do not permute the axes.

  (b) <em|All offsets from one centred bound.> Let
  <math|F<rsub|o>=F<rsub|0>*<around|(|\<cdummy\>+o|)>>, and assume:

  <\itemize-minus>
    <item><math|F<rsub|0>> is interior to the central cell of
    <math|\<cal-C\><rsub|k><around|(|0|)>> with root test
    <math|\<leqslant\>A>;

    <item><math|T> is a tiling whose side is a multiple of the level-<math|k>
    cell side and which satisfies the reflection-positivity seam inequality
    at <math|\<beta\>>.
  </itemize-minus>

  Then for every <math|o> in the inner margin of cell <math|0> of <math|T>
  (distance <math|\<geqslant\>3\<times\>> the level-<math|k> side from its
  boundary), <math|F<rsub|o>> is interior to that cell and
  <math|<math-up|rt><rsub|\<beta\>><rsup|T><around|(|F<rsub|o>|)>\<leqslant\>A>.

  (c) <em|Combinations.> Assume <math|<math-up|Makes>>, fix
  <math|\<gamma\>\<gtr\>0> and an extraction order <math|f>, and let
  <math|Q<rsub|i><around|(|N,p,o|)>> be finitely many families. Each family
  is eventually a literal translate of its value at <math|0>. For each
  <math|i> and every <math|w>, assume there is <math|k\<geqslant\>w> such
  that eventually <math|k\<leqslant\>N> and
  <math|Q<rsub|i><around|(|N,p,0|)>> is interior to the central cell of
  <math|\<cal-C\><rsub|k><around|(|0|)>>, with root test at most
  <math|e<rsup|-\<gamma\>*s<rsub|N>>>. Suppose also that, for every
  <math|\<varepsilon\>\<gtr\>0>, eventually
  <math|<around|\<lvert\>|r<rsub|i><around|(|N,p|)>|\<rvert\>>\<leqslant\>e<rsup|\<varepsilon\>*s<rsub|N>>>.
  The coefficients are independent of <math|o>.

  \PEventually\Q along <math|f> means: for all sufficiently large volume
  indices, then for all sufficiently large mesh indices; this is the fused
  order of IV.1. Put <math|Q=<big|sum><rsub|i>r<rsub|i>*Q<rsub|i>> and
  <math|y<around|(|N,p|)>=e<rsup|-\<gamma\>*s<rsub|N>/2>>. Then
  <math|y\<to\>0> along this order and <math|Q> is <em|close>: for every
  <math|j,m\<in\>\<bbb-N\>> there is <math|k\<geqslant\>m> such that
  eventually <math|k\<leqslant\>N> and, for every link tiling <math|T> of
  level-<math|k> side and every <math|o\<in\>T.<math-up|margin><around|(|0,<around|\<lfloor\>|T.<math-up|side>/<around|(|8*<around|(|j+1|)>|)>|\<rfloor\>>|)>>,
  <math|Q<around|(|N,p,o|)>> is interior to cell <math|0> and its root test
  is at most <math|y<around|(|N,p|)>>.

  <em|Status:> theorems. <em|Lean:> <hlink|<verbatim|center_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L134-L160>,
  <hlink|<verbatim|corner_root>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L192-L226>,
  <hlink|<verbatim|offset>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L232-L270>,
  <hlink|<verbatim|gather_close>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Combination.lean#L65-L93>,
  <hlink|<verbatim|Bid.close>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L25>,
  <hlink|<verbatim|roof_of_tabs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/CalendarPrices.lean#L84-L92>
  (a bookkeeping corollary). Consumers: III.12, III.13, VII.4, VIII.1.

  <section|2. What it uses><label|2-what-it-uses>

  <strong|From other units.>

  <\itemize-minus>
    <item>I.1 (lattice and Wilson measure): tori and the cover
    <math|\<bbb-Z\><rsup|4>>, periodic placement, gauge transformations,
    signed permutations and their pull-backs, translations, Haar probability
    measure, Wilson energy and expectation
    (<hlink|<verbatim|Wilson.moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L99>).

    <item>II.2 (polymer activities, norms, record, cells):

    <\itemize-minus>
      <item>budget points, regularity and sup bounds
      (<hlink|<verbatim|BudgetPoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L125-L136>,
      <hlink|<verbatim|Regular>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L154-L161>,
      <hlink|<verbatim|supBounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L164-L166>);

      <item>healthy sets and masks (<hlink|<verbatim|Healthy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L41>,
      <hlink|<verbatim|masked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L70-L72>);

      <item>slots (<hlink|<verbatim|Slot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L38-L40>);

      <item>polymer representations and lawfulness
      (<hlink|<verbatim|Rep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L165-L171>,
      <hlink|<verbatim|Rep.Lawful>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L181-L183>),
      together with mass, admissibility and the activity bound;

      <item>tilings, root test, interior and seam inequality (used in Prop.
      II.1.10).
    </itemize-minus>

    <item>III.1 (block-spin step): the blocking push-forward
    <math|T<rsup|<around|(|m|)>><rsub|\<beta\>>> and the fact that it
    preserves total mass (used in Lemma 4.26).

    <item>III.9 (marginal flow): the history, its selection,
    <math|<wide|\<beta\>|^><rsub|m>>, <math|\<theta\><rsub|m>>,
    <math|w<rsub|m>>, the stage index <math|J<around|(|m|)>> and the stage
    constants <math|\<kappa\><rsub|m>>.

    <item>III.2 (order of constants): sheets, profiles and the level systems
    quantified over in Prop. II.1.9.

    <item>III.10: G08 turns per-step estimates into based families; III.11
    supplies the per-step estimates used in VIII.1. Both use the formats
    fixed here.

    <item>III.16 (toolkit): block Taylor polynomials and jets of
    compositions, the Faà di Bruno formula, and the Maxwell exterior calculus
    (curl, recovery of a radial potential from its curvature). The
    radial-gauge identity identifies a homogeneous potential with its closed
    curvature jet.

    <item>IV.1: extraction orders and the fused order (used in Prop.
    II.1.10(c)).
  </itemize-minus>

  <strong|Standard mathematics.>

  <\itemize-minus>
    <item>Linear ODEs on matrix groups: existence by an exponential chart and
    left translation; uniqueness through <math|<tfrac|d|d*t><around|(|u*v<rsup|\<ast\>>|)>=0>.

    <item>Analytic dependence on parameters through the Volterra equation and
    the Neumann series ([Dieudonné, <em|Foundations of Modern Analysis>, ch.
    X]).

    <item>The analytic inverse function theorem in finite dimensions.

    <item>Reynolds averaging over a finite group, and averaging over a
    compact group with Haar measure.

    <item>Polarization of symmetric multilinear forms, and norm equivalence
    on finite-dimensional spaces.

    <item>Radial (Fock\USchwinger) gauge and its Taylor expansion
    [Novikov\UShifman\UVainshtein\UZakharov, Fortschr. Phys. 32 (1984) 585].

    <item>Integration by parts for Haar measure, i.e. the lattice
    Schwinger\UDyson identity [Makeenko\UMigdal, Phys. Lett. B 88 (1979) 135;
    Chatterjee, Comm. Math. Phys. 366 (2019) 203].

    <item>Chessboard estimates from reflection positivity
    [Fröhlich\UIsrael\ULieb\USimon, Comm. Math. Phys. 62 (1978) 1].
  </itemize-minus>

  <strong|Imported constants and assumptions.>

  <\itemize-minus>
    <item>In Prop. II.1.6 the record and <math|<math-up|Makes>> are
    hypotheses of (c). They are discharged for the final family in VIII.1,
    using Prop. II.1.9(c) and G08.

    <item>In Prop. II.1.8 lawfulness and the fee condition are hypotheses.
    The fee condition at level <math|N> is the latch of Prop. II.1.9(b).
    Coupling thresholds fixed before the block sizes ensure it (III.2), since
    <math|w<rsub|m>> decays faster than every inverse power of
    <math|<wide|\<beta\>|^><rsub|m>>.

    <item>The bounds <math|\<pi\><around|(|D|)>> and <math|c<rsub|d>> depend
    on <math|G> and the fixed frames and sections, including the finite slot
    family chosen in G03. They are fixed before the block factors; the stage
    constants must satisfy <math|\<pi\><around|(|max
    <around|(|<math-up|order><rsub|j>,<math-up|power><rsub|j>|)>|)>\<leqslant\><wide|\<kappa\>|\<bar\>><rsub|j>>.
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  Labels are invariant polynomials in radial-gauge Taylor coefficients. Test
  holonomies <math|U<rsub|J,h>> compare them with functions of lattice links
  by matching derivatives in <math|h> through order <math|d>. Finitely many
  transported plaquette curvatures give an analytic map of the truncated jet
  whose derivative is injective. An equivariant left inverse, followed by
  Taylor expansion, produces slot polynomials representing every label.
  Averaging over signed permutations gives covariance. Every slot and each of
  its admissible left derivatives costs one threshold factor, so a column of
  factor degree <math|f> has norm <math|O<around|(|\<theta\><rsup|f>|)>>.
  Conversely, Taylor expansion of a regular lattice function gives a unique
  read label. Testing on jets of amplitude <math|\<theta\>> bounds its scaled
  coordinates uniformly in the lattice side and support.

  The equation sections use Haar integration by parts in one link. For
  <math|\<ell\>\<geqslant\>2>, <math|\<beta\>\<ne\>0> and a bounded
  measurable multiplier independent of that link, the expectation of the
  corresponding Wilson force is zero. Transported forces are linear
  combinations of slots; their leading continuum symbols are the free Maxwell
  divergence. Every equation polynomial is a sum of products of a linear
  Maxwell equation functional and other linear jet functionals. Represent the
  first factor by a force and the remaining factors by slot polynomials
  avoiding its link. Each product is orthogonal to remote spectators and
  reads the prescribed generator modulo higher grade. A unitriangular change
  of labels absorbs those higher terms. The resulting equation section
  describes vanishing at separated lattice sites; its transfer to null labels
  of the limit requires the later comparison arguments.

  At the Wilson end the observable is inserted to first order in a parameter
  <math|\<lambda\>> with <math|\<lambda\><rsup|2>=0>. The density coefficient
  consists of the vacuum density times a masked local section and regular
  remainders, together with a gas in which one forced polymer is marked.
  Splicing the section's large-field complement into reserved forced
  addresses gives the exact bare-end identity. This uses no division by the
  vacuum density. Along the RG history the running coordinates describe
  mixing of local observables; their values at the reference level define
  <math|\<tau\>>, hence the renormalization map
  <math|S<rsub|1/\<theta\><rsub|N>>*\<tau\><rsup|-1>>. This unit fixes the
  transfer specification and proves the birth identity; III.10\UIII.11 supply
  the per-step estimates.

  <section|4. Steps><label|4-steps>

  <subsection|4.1 Label spaces and frames><label|41-label-spaces-and-frames>

  <strong|Lemma 4.1 (finiteness and evaluation).> <math|V<rsub|d>> is
  finite-dimensional, and a polynomial in the jet coordinates that vanishes
  on all real jets is zero. <em|Sketch:> every coordinate has weight
  <math|\<geqslant\>2>. So a monomial of weight <math|\<leqslant\>d> has
  exponents <math|\<leqslant\>d> and involves only
  <math|<math-up|Tay><rsub|j>> with <math|j\<leqslant\>d-2>, and there are
  finitely many such monomials. A polynomial vanishing on
  <math|\<bbb-R\><rsup|n>\<subset\>\<bbb-C\><rsup|n>> is zero, because each
  variable ranges over an infinite set. <em|Lean:>
  <hlink|<verbatim|cap_finite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L63-L94>,
  <hlink|<verbatim|eval_ext>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L38-L49>.

  <strong|Lemma 4.2 (real graded frames).> Every linearly independent set of
  real pure-grade labels in <math|V<rsub|d>> containing <math|1> extends to a
  frame. Consequently frames exist, and there is a coherent sequence of them.
  <em|Sketch:>

  <\itemize-minus>
    <item><math|V<rsub|d>> is spanned by the elements
    <math|q+<wide|q|\<bar\>>> and <math|i*<around|(|q-<wide|q|\<bar\>>|)>>,
    where <math|q> runs over the graded components; these elements are real
    and of pure grade.

    <item>Extend the given independent set inside this spanning set, and move
    <math|1> to index <math|0>.

    <item>Recursion in <math|d> gives coherence, since
    <math|V<rsub|d>\<subset\>V<rsub|d+1>> preserves reality and grades.

    <item><math|f<rsub|i>\<gtr\>0> for <math|i\<neq\>0>, since the only
    nonzero zero-factor grade is <math|\<bbb-C\>*1>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|pure_real_span>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L16-L33>,
  <hlink|<verbatim|extend_subset>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L59-L81>,
  <hlink|<verbatim|frame_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L83-L86>,
  <hlink|<verbatim|extend_frame>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L88-L100>,
  <hlink|<verbatim|frames>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L107-L111>.

  <subsection|4.2 Test holonomies and the slot map
  (G01\UG04)><label|42-test-holonomies-and-the-slot-map-g01g04>

  <strong|Lemma 4.3 (transport ODE; covariance, G01).>

  <\itemize-minus>
    <item>Existence and uniqueness hold as stated in Prop. II.1.2(a).

    <item>Scaling: <math|U<rsub|J,h>=U<rsub|<math-up|sc><rsub|h>J,1>>, with
    only the components <math|J<rsub|j>>, <math|j\<leqslant\>d-2>, entering.

    <item>Gauge covariance: the links of <math|<math-up|Ad><around|(|g|)>*J>
    are the constant gauge transform by <math|g> of the links of <math|J>.

    <item>Hypercubic covariance: <math|s<rsup|\<ast\>>*U<rsup|<around|(|d|)>><rsub|J,h>=U<rsup|<around|(|d|)>><rsub|s<rsup|-1>*J,h>>,
    where <math|s<rsup|-1>*J> is the jet rotated by
    <math|s<rsup|-1>\<in\>O<around|(|4|)>>.

    <item>In particular each slot of <math|<math-up|Ad><around|(|g|)>*J> is
    <math|<math-up|Ad><around|(|g|)>> applied to the slot of <math|J>.
  </itemize-minus>

  <em|Sketch:>

  <\itemize-minus>
    <item>Uniqueness: if <math|u,v> solve the same equation, then
    <math|u*v<rsup|\<ast\>>> has zero derivative.

    <item>Existence: take a local solution in an exponential chart,
    left-translate it, and glue the pieces.

    <item>Scaling and covariance: the transformed function solves the
    transformed equation, so uniqueness concludes; a reflected axis reverses
    the parameter of the ODE.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|SolvesLink.unique>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L42-L52>,
  <hlink|<verbatim|Hol.exists_ode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/ODE.lean#L162-L168>,
  <hlink|<verbatim|Bid.G01>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L23>,
  <hlink|<verbatim|Work.G01.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G01.lean#L157-L164>,
  <hlink|<verbatim|links_colored>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G01.lean#L138-L146>.

  <strong|Lemma 4.4 (analytic germ, G02).>

  (a) Let <math|x> range over a finite-dimensional real vector space, let
  <math|A<rsub|x><around|(|t|)>> depend linearly on <math|x> and continuously
  on <math|t>, and let <math|u<rsub|x>> solve
  <math|<wide|u|\<dot\>>=u*A<rsub|x>> with <math|u<rsub|x><around|(|0|)>=1>.
  Then <math|x\<mapsto\>u<rsub|x><around|(|1|)>> is analytic at <math|0>,
  equals <math|1> there, and its derivative along every ray is
  <math|<big|int><rsub|0><rsup|1>A<rsub|x>>.

  (b) Consequently each link, each walk and each slot is an analytic function
  of the truncated jet near <math|0>. The derivative of the slot
  <math|<around|(|\<omega\>,P|)>> at <math|0> is the circulation of the
  edge-integrated potential around <math|P>. The transport along
  <math|\<omega\>> does not contribute at linear order. <em|Sketch:> write
  the ODE as <math|F=1+T<around|(|x|)>*F> on
  <math|C<around|(|<around|[|0,1|]>|)>>, where <math|T<around|(|x|)>> is the
  Volterra operator, linear in <math|x>, with
  <math|<around|\<lVert\>|T<around|(|x|)>|\<rVert\>>\<less\>1> near <math|0>.
  Then <math|F=<around|(|1-T<around|(|x|)>|)><rsup|-1>*1>, which is analytic
  since inversion is analytic near <math|1> in a Banach algebra.
  Differentiate the fixed-point equation at <math|0>. The bounds are link by
  link; no analytic radius uniform over an infinite stencil is claimed.
  <em|Lean:> <hlink|<verbatim|endpointGerm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G02.lean#L89-L130>,
  <hlink|<verbatim|linkGerm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G02.lean#L140-L177>,
  <hlink|<verbatim|walkGerm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G02.lean#L191-L225>,
  <hlink|<verbatim|slotGerm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G02.lean#L230-L273>,
  <hlink|<verbatim|Drops.Peg>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L88-L91>.

  <strong|Lemma 4.5 (finitely many slots detect the jet, G03).> For each
  <math|d> there are finitely many slots whose linearizations have no common
  kernel on the truncated jet space <math|<big|oplus><rsub|j\<leqslant\>d-2><math-up|Tay><rsub|j>>.
  <em|Sketch:>

  <\itemize-minus>
    <item><em|All slots detect the jet.> Suppose all linearized slots vanish
    on <math|A>. Write <math|N<rsub|l><around|(|x,t|)>> for the difference of
    the two iterated averages of partial derivatives over a square of side
    <math|t> based at <math|x>. The unit-square circulation is
    <math|<big|sum><rsub|l>N<rsub|l><around|(|x,1|)>>. Homogeneity gives
    <math|N<rsub|l><around|(|t*x,t|)>=t<rsup|l>*N<rsub|l><around|(|x,1|)>>,
    hence <math|<big|sum><rsub|l\<leqslant\>k>t<rsup|k-l>*N<rsub|l><around|(|t*x,t|)>=0>
    when <math|A<rsub|k>> is the top component and
    <math|x\<in\>\<bbb-Z\><rsup|4>>.

    <item><em|Mesh to zero.> Letting <math|t\<to\>0> with <math|t*x\<to\>y>
    gives <math|<math-up|curl><around|(|A<rsub|k>|)><around|(|y|)>=0> for the
    top component. In radial gauge the potential is recovered from its
    curvature, so <math|A<rsub|k>=0>. Descend in <math|k>.

    <item><em|Finitely many suffice.> Among finite families choose one whose
    common kernel has minimal dimension. Adding any slot cannot lower the
    dimension, so this kernel lies in the common kernel of all slots, which
    is <math|0>.
  </itemize-minus>

  The choice is non-constructive. <em|Lean:>
  <hlink|<verbatim|Bid.G03>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L30>,
  <hlink|<verbatim|top_term>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G03.lean#L164-L185>,
  <hlink|<verbatim|zero_of_zero_partials>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G03.lean#L136-L149>,
  <hlink|<verbatim|Work.G03.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G03.lean#L212-L224>.

  <strong|Lemma 4.6 (equivariant left inverse, G04).> The slot map
  <math|\<frak-S\>> (finitely many slots) is analytic at <math|0>. There is a
  linear <math|C> with <math|C\<circ\>D*\<frak-S\><around|(|0|)>=<math-up|id>>
  and <math|C\<circ\><math-up|Ad><rsub|g>=<math-up|Ad><rsub|g>\<circ\>C>.
  <em|Sketch:> <math|D*\<frak-S\><around|(|0|)>> is injective (Lemma 4.5) and
  equivariant (it is the derivative of an equivariant map). Its range and
  orthogonal complement are <math|<math-up|Ad>>-invariant, so the inverse
  composed with the orthogonal projection onto the range is equivariant. No
  Haar averaging is needed. <em|Lean:> <hlink|<verbatim|Bid.G04>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L37>,
  <hlink|<verbatim|Work.G04.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G04.lean#L121-L139>.

  <strong|Lemma 4.7 (local analytic equivariant inverse).> There is <math|f>,
  analytic at <math|0>, with <math|f<around|(|0|)>=0>,
  <math|f\<circ\>\<frak-S\>=<math-up|id>> near <math|0>, and
  <math|f\<circ\><math-up|Ad><rsub|g>=<math-up|Ad><rsub|g>\<circ\>f> near
  <math|0>. <em|Sketch:> apply the analytic inverse function theorem to
  <math|C\<circ\>\<frak-S\>>, whose derivative at <math|0> is the identity,
  and put <math|f=<around|(|C\<circ\>\<frak-S\>|)><rsup|-1>\<circ\>C>.
  Equivariance follows from that of <math|C> and <math|\<frak-S\>>, together
  with local injectivity. <em|Lean:> <hlink|<verbatim|Drops.insight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L145-L153>,
  <hlink|<verbatim|Vision>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L104-L105>.

  <strong|Lemma 4.8 (Haar measure in exponential coordinates).> There are
  <math|r,c\<gtr\>0> and a measurable function <math|J> such that <math|exp>
  is injective on <math|B<rsub|r><around|(|0|)>\<subset\>\<frak-g\>>,
  <math|J> is analytic and positive there, <math|J<around|(|0|)>=1>, and
  <math|exp<rsub|\<ast\>><around|(|c*J<around|(|A|)>*\<b-1\><rsub|B<rsub|r><around|(|0|)>>*<space|0.17em>d*A|)>>
  is normalized Haar measure restricted to <math|exp
  <around|(|B<rsub|r><around|(|0|)>|)>>, an open set. <em|Sketch:> take
  <math|J> to be the determinant of the derivative of <math|B\<mapsto\>log
  <around|(|e<rsup|-A>*e<rsup|B>|)>> at <math|B=A>. It is analytic and equals
  <math|1> at <math|A=0>, so it is positive on a small ball. The chain rule
  gives its transformation under local left translation. Change of variables
  then proves the corresponding local measure identity; averaging over the
  compact group identifies the scalar <math|c> with probability Haar
  normalization. <em|Lean:> <hlink|<verbatim|LocalH.actual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/LocalH/Haar.lean#L97-L146>,
  <hlink|<verbatim|Foundations.chart_ok>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L84>.
  This supplies the measure normalization in the stationary-point analysis
  (III.6) and the step estimates.

  <subsection|4.3 Primary sections (G05\UG07)><label|43-primary-sections-g05g07>

  <strong|Lemma 4.9 (invariant slot polynomials, G05).> Let <math|f> be as in
  Lemma 4.7, let <math|T<rsub|d>*f> be its block Taylor polynomial of order
  <math|d> at <math|0>, and put <math|P<rsub|i>\<assign\>b<rsub|i>\<circ\>T<rsub|d>*f>.
  Write <math|\<b-sigma\><around|(|U|)>> for the chosen finite tuple of slot
  values. Then:

  <\itemize-minus>
    <item><math|P<rsub|0>=1>, each <math|P<rsub|i>> is
    <math|<math-up|Ad>>-invariant and real-valued on real slot values, and
    each monomial of <math|P<rsub|i>> has degree
    <math|\<geqslant\>f<rsub|i>>;

    <item><math|P<rsub|i><around|(|\<b-sigma\><around|(|U<rsub|J,h>|)>|)>>
    and <math|b<rsub|i><around|(|<math-up|sc><rsub|h>J|)>> have the same
    <math|d>-jet in <math|h>.
  </itemize-minus>

  <em|Sketch:>

  <\itemize-minus>
    <item><math|T<rsub|d>*f> is equivariant because <math|f> is equivariant
    and <math|<math-up|Ad>> is linear.

    <item><math|T<rsub|d>*f<around|(|0|)>=f<around|(|0|)>=0>, so every
    coordinate of <math|T<rsub|d>*f> lacks a constant term; since
    <math|b<rsub|i>> is homogeneous of degree <math|f<rsub|i>>, every
    monomial of <math|P<rsub|i>> has degree <math|\<geqslant\>f<rsub|i>>.

    <item>Along <math|X<around|(|h|)>=<math-up|trunc><around|(|<math-up|sc><rsub|h>J|)>>,
    which is smooth with <math|X<around|(|0|)>=0>, the slots of
    <math|U<rsub|J,h>> equal <math|\<frak-S\><around|(|X<around|(|h|)>|)>>.

    <item>Since <math|f\<circ\>\<frak-S\>=<math-up|id>> near <math|0>, and
    the <math|d>-jet of a composition depends only on the <math|d>-jets of
    its factors, <math|T<rsub|d>*f\<circ\>\<frak-S\>\<circ\>X> and <math|X>
    have the same <math|d>-jet.

    <item>Labels of weight <math|\<leqslant\>d> see only the components of
    weight <math|\<leqslant\>d>.
  </itemize-minus>

  All Taylor terms of order <math|\<leqslant\>d> are kept, so
  <math|P<rsub|i>> may have degree <math|\<gtr\>d> in the slots. <em|Lean:>
  <hlink|<verbatim|Work.G05.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G05.lean#L113-L139>,
  <hlink|<verbatim|recovery_projects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G05.lean#L47-L100>,
  <hlink|<verbatim|blockTaylor_jets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G05/Taylor.lean#L84-L102>,
  <hlink|<verbatim|Bid.Cumuli>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L48-L50>.

  <strong|Lemma 4.10 (covariant section, G06).> From the <math|P<rsub|i>> and
  hypercubic covariance of the links one obtains a sound section with the
  slot structure, whose stencil is a box <math|<around|[|-r,r|]><rsup|4>>
  containing all slot stencils. <em|Sketch:>

  <\itemize-minus>
    <item>Write <math|\<Psi\><rsub|c><around|(|U|)>=<big|sum><rsub|i>c<rsub|i>*P<rsub|i><around|(|\<b-sigma\><around|(|U|)>|)>>
    before averaging, and let <math|\<cal-H\>> be the signed-permutation
    group. Set <math|\<Phi\><rsub|c><around|(|U|)>=<around|\||\<cal-H\>|\|><rsup|-1>*<big|sum><rsub|s\<in\>\<cal-H\>>\<Psi\><rsub|s<rsup|-1>\<cdot\>c>*<around|(|s<rsup|\<ast\>>*U|)>>.
    A transformed slot is a slot multiplied by a sign. The coefficient action
    preserves grades, so the average remains a slot polynomial with the same
    lower bound on degrees.

    <item>Gauge invariance: slots transform by <math|<math-up|Ad>> of the
    gauge transformation at the base point, and the <math|P<rsub|i>> are
    <math|<math-up|Ad>>-invariant.

    <item>The projection property survives because jets and labels transform
    compatibly.

    <item>Each slot component is a polynomial in link entries and their
    conjugates, since <math|U<rsup|-1>=U<rsup|\<ast\>>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.G06.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06.lean#L43-L60>,
  <hlink|<verbatim|enclose>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06.lean#L20-L28>,
  <hlink|<verbatim|realize>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06.lean#L30-L41>,
  <hlink|<verbatim|entryPoly_slot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06/Formula.lean#L137-L155>.

  <strong|Lemma 4.11 (cost, G07).> For all <math|<around|(|k,P|)>> there is
  <math|A> such that the section has the cost property of Prop. II.1.3, item
  3. <em|Sketch:>

  <\itemize-minus>
    <item><em|One slot costs <math|t>.> On
    <math|<math-up|Hy><rsub|t><around|(|S|)>> a slot has norm
    <math|O<around|(|t|)>>. Each left derivative in an admissible direction
    <math|A>, with <math|<around|\<lvert\>|A<rsub|e>|\<rvert\>>\<leqslant\>t*<around|(|1+<math-up|dist>|)><rsup|P>>,
    is also <math|O<around|(|t|)>>, with constants depending on the stencil.

    <item><em|Algebra.> These bounds are stable under sums and products, with
    exponents of <math|t> adding, and <math|t\<leqslant\>1> lowers exponents.

    <item><em|Columns.> Every monomial of column <math|i> has
    <math|\<geqslant\>f<rsub|i>> slot factors, which gives
    <math|c<rsub|i>*t<rsup|f<rsub|i>>>; take
    <math|A=<big|sum><rsub|i>c<rsub|i>>.
  </itemize-minus>

  <math|A> is not uniform in <math|d,k,P>. <em|Lean:>
  <hlink|<verbatim|Work.G07.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07.lean#L79-L102>,
  <hlink|<verbatim|paid_lumin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07.lean#L64-L77>,
  <hlink|<verbatim|paid_slot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07/Stencil.lean#L180-L199>,
  <hlink|<verbatim|raw_slot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07/Stencil.lean#L154-L163>.

  <strong|Lemma 4.12 (assembly = Prop. II.1.3).> Lemmas 4.3\U4.11 combine
  into sections for all <math|d>.

  <\itemize-minus>
    <item>The uniform price is <math|\<pi\><around|(|D|)>=1+<big|sum><rsub|d,k,P\<leqslant\>D>max
    <around|(|0,A<rsub|d,k,P>|)>>, which is nondecreasing in <math|D>.

    <item>The value bound <math|c<rsub|d>> holds because each column is a
    continuous function of finitely many variables in the compact group
    <math|G>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Bid.teaching>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L76-L86>,
  <hlink|<verbatim|Integrated.source_sections>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L216-L219>,
  <hlink|<verbatim|priced>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L133-L142>,
  <hlink|<verbatim|full_value_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L147-L163>.

  <subsection|4.4 Readout><label|44-readout>

  <strong|Lemma 4.13 (logarithmic chart of test holonomies).> Fix <math|d>, a
  torus, a site <math|o> and a jet <math|J>. Near <math|h=0>, the torus test
  configuration <math|U<rsup|<around|(|d|)>,o><rsub|J,h>> is the exponential
  of an analytic function of <math|h> vanishing at <math|0>. Thus
  <math|h\<mapsto\>f<around|(|U<rsup|<around|(|d|)>,o><rsub|J,h>|)>> is
  <math|C<rsup|d>> at <math|0> whenever <math|A\<mapsto\>f<around|(|e<rsup|A>|)>>
  is <math|C<rsup|d>> at <math|A=0>. <em|Sketch:> apply the local group
  logarithm to each test link, use Lemma 4.4 and the polynomial scaling of
  the jet, and intersect the finitely many neighbourhoods on the torus. The
  logarithm inverts the exponential there, so the assertion follows by
  composition. <em|Lean:> <hlink|<verbatim|testLog_diff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L110-L114>,
  <hlink|<verbatim|increment_testLog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L119-L125>.

  <strong|Lemma 4.14 (existence and uniqueness of the read label = Prop.
  II.1.4(a)).> Fix <math|d>, a torus and <math|o>. If <math|f> is gauge
  invariant and <math|A\<mapsto\>f<around|(|e<rsup|A>|)>> is <math|C<rsup|d>>
  at <math|A=0>, there is a unique <math|p\<in\>V<rsub|d>> such that, for
  every <math|J>, <math|f<around|(|U<rsup|<around|(|d|)>,o><rsub|J,h>|)>> and
  <math|p<around|(|<math-up|sc><rsub|h>J|)>> have equal <math|d>-jets at
  <math|h=0>. <em|Sketch:>

  <\itemize-minus>
    <item><em|Polynomial in the jet.> Take the block Taylor polynomial of
    order <math|d> at <math|0> of the map
    <math|X\<mapsto\>f<around|(|<text|test links of >X|)>> on the truncated
    jet space. It is a polynomial in the jet coordinates; truncate it to
    weight <math|\<leqslant\>d>.

    <item><em|Jets agree.> Since <math|<math-up|trunc><around|(|<math-up|sc><rsub|h>J|)>>
    has components <math|h<rsup|j+2>*J<rsub|j>>, truncation does not change
    <math|h>-derivatives of order <math|\<leqslant\>d>.

    <item><em|Invariance.> Gauge invariance of <math|f> and covariance of the
    test links (Lemma 4.3) make each weight component of <math|p> invariant.

    <item><em|Uniqueness.> The <math|h>-derivatives at <math|0> determine the
    weight components, and then Lemma 4.1 applies.
  </itemize-minus>

  For regular <math|f> with order <math|\<geqslant\>d> the hypothesis holds
  at the identity configuration, which is healthy; wrapping supports use the
  constant convention. <em|Lean:> <hlink|<verbatim|read_projection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L218-L233>,
  <hlink|<verbatim|exists_read>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L238-L247>.

  <strong|Lemma 4.15 (uniform bounds along scaled test jets).>

  (a) Fix <math|d>. For each jet <math|J> and <math|k\<in\>\<bbb-N\>> there
  is <math|C\<gtr\>0> such that, for all torus sides, sites <math|o>,
  positive links <math|e> and <math|\<theta\>\<in\><around|[|0,1|]>>,

  <\equation*>
    <around*|\<lvert\>|<around*|\<nobracket\>|\<partial\><rsub|h><rsup|k>*log
    U<rsup|<around|(|d|)>,o><rsub|\<theta\>*J,h><around|(|e|)>|\|><rsub|h=0>|\<rvert\>>\<leqslant\>C*<space|0.17em>\<theta\>*<space|0.17em><around|(|1+<math-up|dist><around|(|e<rsub|->,o|)>|)><rsup|max
    <around|(|k-1,0|)>>.
  </equation*>

  (b) For <math|k\<leqslant\>d> there is <math|C<rsub|d,k,J>\<geqslant\>0>
  such that <math|<around|\<lvert\>|\<partial\><rsub|h><rsup|k>*f<around|(|U<rsup|<around|(|d|)>,o><rsub|t<rsub|b>*J,h>|)>\|<rsub|h=0>|\<rvert\>>\<leqslant\>C<rsub|d,k,J>*c>
  whenever <math|d\<leqslant\>min <around|(|k<rsub|b>,P<rsub|b>|)>> and
  <math|f> is <math|b>-regular with sup bound <math|c>. The bound is uniform
  in side, placement, support and <math|b>. <em|Sketch:>

  <\itemize-minus>
    <item>(a): set <math|r=<around|(|1+<math-up|dist><around|(|e<rsub|->,o|)>|)><rsup|-1>>.
    The rescaled initial position lies in a fixed compact ball. Express the
    link at parameter <math|h*r> by a polynomial-in-time ODE profile of
    amplitude <math|\<theta\>*r>. Its logarithmic endpoint is analytic near
    the zero profile. The <math|k>-th <math|h>-derivative at <math|0> varies
    smoothly over the compact set of normalized positions, lengths and
    amplitudes, and vanishes at amplitude <math|0>. A uniform Lipschitz bound
    in the amplitude gives <math|C*\<theta\>*r>. Undoing the rescaling gives
    <math|C*\<theta\>*r<rsup|1-k>> for <math|k\<geqslant\>1>; the order-zero
    logarithm is <math|0>.

    <item>(b): apply Faà di Bruno to <math|<around|(|f\<circ\>exp|)>\<circ\>log
    U> at the identity. Its terms contain symmetric Fréchet derivatives of
    <math|A\<mapsto\>f<around|(|e<rsup|A>|)>>, evaluated on the logarithmic
    derivatives from (a). Pull each tensor back to the span of these finitely
    many directions, and bound it by its diagonal values through
    polarization. Repeated left derivatives in one direction equal
    derivatives along the corresponding exponential ray. This avoids a factor
    depending on the number of lattice links; it does not assume that ordered
    left derivatives commute.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|testLog_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/LinkBounds.lean#L229-L273>,
  <hlink|<verbatim|test_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L194-L223>,
  <hlink|<verbatim|mixed_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L123-L184>.

  <strong|Lemma 4.16 (readout estimate = Prop. II.1.4(b)).> <em|Sketch:>

  <\itemize-minus>
    <item><em|Functionals.> For a jet <math|J> and <math|k\<leqslant\>d> let
    <math|\<lambda\><rsub|J,k><around|(|c|)>\<assign\>\<partial\><rsub|h><rsup|k>*<space|0.17em>p<rsub|c><around|(|<math-up|sc><rsub|h>J|)>\|<rsub|h=0>>.

    <item><em|Scaling.> Since <math|p<rsub|S<rsub|\<theta\>>*c><around|(|K|)>=p<rsub|c>*<around|(|\<theta\>*K|)>>,
    one has <math|\<lambda\><rsub|J,k><around|(|S<rsub|\<theta\>><space|0.17em><math-up|coord><around|(|p|)>|)>=\<partial\><rsup|k><rsub|h>*p<around|(|<math-up|sc><rsub|h><around|(|\<theta\>*J|)>|)>\|<rsub|h=0>=\<partial\><rsub|h><rsup|k>*f<around|(|U<rsup|<around|(|d|)>,o><rsub|\<theta\>*J,h>|)>\|<rsub|h=0>>.

    <item><em|Bound.> By Lemma 4.15(b) this is bounded by
    <math|C<rsub|J,k>*c>.

    <item><em|Norm equivalence.> The <math|\<lambda\><rsub|J,k>> separate
    points (Lemma 4.14), and on a finite-dimensional space a separating
    family of functionals controls the norm.

    <item><em|Wrapping case.> <math|p=f<around|(|1|)>\<cdot\>1>, and
    <math|<around|\<lvert\>|f<around|(|1|)>|\<rvert\>>\<leqslant\>c> because
    the identity configuration is healthy.
  </itemize-minus>

  The constant depends on the holonomy datum and the frame only. <em|Lean:>
  <hlink|<verbatim|coeff_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L234-L265>,
  <hlink|<verbatim|budget_probes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L34-L67>,
  <hlink|<verbatim|read_frame_scaled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L158-L168>,
  <hlink|<verbatim|price_of_readout>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L271-L290>.

  <strong|Lemma 4.17 (placed sections read their labels = Prop. II.1.4(c)).>
  Let <math|\<Sigma\>> be sound. If <math|20*<around|(|<around|\<lvert\>|x<rsub|\<mu\>>|\<rvert\>>+1|)>\<leqslant\>\<ell\>>
  on the stencil, the footprint does not wrap around <math|o>, the periodic
  lift of the stencil is injective, and the placed function along the test
  holonomies is the cover function along <math|U<rsub|J,h>>. Soundness
  (projection property) then concludes. <em|Lean:>
  <hlink|<verbatim|nonwrapping_placement>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L240-L251>,
  <hlink|<verbatim|placed_reads>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L253-L267>.

  <subsection|4.5 Equation sections><label|45-equation-sections>

  <strong|Lemma 4.18 (lattice Schwinger\UDyson identity).> Assume
  <math|\<ell\>\<geqslant\>2>. <em|Gradient.> For a link <math|e> and
  <math|A\<in\>\<frak-g\>>, <math|<tfrac|d|d*t>S<rsub|W>*<around|(|e<rsup|t*A>*U<rsub|e>|)>\|<rsub|0>=<around|\<langle\>|A,\<nabla\><rsub|e>*S<rsub|W><around|(|U|)>|\<rangle\>>>.
  With <math|F<rsub|a*b><around|(|x|)>> based at <math|x>, put
  <math|\<Delta\><rsub|c>*F<rsub|a*b><around|(|x|)>=F<rsub|a*b><around|(|x|)>-<math-up|Ad><around|(|U<rsub|x-e<rsub|c>,c><rsup|-1>|)>*F<rsub|a*b>*<around|(|x-e<rsub|c>|)>>.
  Then

  <\equation*>
    \<nabla\><rsub|<around|(|x,\<nu\>|)>>*S<rsub|W>=<big|sum><rsub|\<nu\>\<less\>b>\<Delta\><rsub|b>*F<rsub|\<nu\>*b><around|(|x|)>-<big|sum><rsub|a\<less\>\<nu\>>\<Delta\><rsub|a>*F<rsub|a*\<nu\>><around|(|x|)>.
  </equation*>

  This local formula also defines the force on cover configurations.
  <em|Integration by parts.> For continuous <math|W,W<rprime|'>> with
  <math|W<rprime|'>> the derivative of <math|W> along
  <math|e<rsup|t*A>*U<rsub|e>>, and bounded measurable <math|S> invariant
  under that motion,

  <\equation*>
    <around*|\<langle\>|<around|(|W<rprime|'>-\<beta\><around|\<langle\>|A,\<nabla\><rsub|e>*S<rsub|W>|\<rangle\>>*W|)>*S|\<rangle\>><rsub|\<beta\>>=0.
  </equation*>

  For <math|\<beta\>\<neq\>0> and <math|W=1> this gives
  <math|<around|\<langle\>|<around|\<langle\>|A,\<nabla\><rsub|e>*S<rsub|W>|\<rangle\>>*S|\<rangle\>><rsub|\<beta\>>=0>.
  <em|Sketch:> the motion <math|U<rsub|e>\<mapsto\>e<rsup|t*A>*U<rsub|e>>
  preserves the product Haar measure, and the Boltzmann factor is
  differentiated under the integral. <em|Lean:>
  <hlink|<verbatim|field_deriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L232-L237>,
  <hlink|<verbatim|turn_preserving>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L96-L101>,
  <hlink|<verbatim|ibp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L321-L340>,
  <hlink|<verbatim|equation_silent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L342-L348>.

  <strong|Lemma 4.19 (transported forces are micro).> Let <math|b> be a
  positive cover link, let <math|\<omega\>> be a walk from <math|0> avoiding
  <math|b>, and let <math|g> be continuous. Assume there is <math|M> such
  that, on every torus of side <math|\<ell\>\<geqslant\>M> and at every
  placement <math|o>, the placed <math|g> is invariant under left increments
  of the placed link <math|b>. Then <math|U\<mapsto\><around|\<langle\>|X,<math-up|Ad><around|(|U<rsub|\<omega\>>|)>*\<nabla\><rsub|b>*S<rsub|W><around|(|U|)>|\<rangle\>>*<space|0.17em>g<around|(|U|)>>
  is micro, for every <math|X\<in\>\<frak-g\>>. <em|Sketch:>

  <\itemize-minus>
    <item>Write <math|<around|\<langle\>|X,<math-up|Ad><around|(|U<rsub|\<omega\>>|)>*Y|\<rangle\>>=<big|sum><rsub|a><around|\<langle\>|<math-up|Ad><around|(|U<rsub|\<omega\>>|)><rsup|-1>*X,E<rsub|a>|\<rangle\>><around|\<langle\>|E<rsub|a>,Y|\<rangle\>>>
    in an orthonormal basis.

    <item>Once the torus is large enough, the placed link <math|b> lies
    within a fixed radius of <math|o>.

    <item>Then every factor other than <math|<around|\<langle\>|E<rsub|a>,\<nabla\><rsub|b>*S<rsub|W>|\<rangle\>>>
    (namely the transport, <math|g>, and a spectator supported beyond that
    radius) is invariant under moving <math|U<rsub|b>>. Apply Lemma 4.18.
  </itemize-minus>

  The periodic independence hypothesis holds, in particular, if <math|g>
  depends on finitely many cover links, all distinct from <math|b>. No
  continuity or gauge invariance of the spectator is needed, and
  <math|\<beta\>> may be negative. <em|Lean:>
  <hlink|<verbatim|micro_force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Avoid.lean#L170-L218>,
  <hlink|<verbatim|force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Avoid.lean#L149-L150>.

  <strong|Lemma 4.20 (forces span the equation functionals).>

  (a) Let <math|J> be truncated through <math|J<rsub|j>>, with
  <math|j\<geqslant\>1>, and write <math|\<frak-F\><rsub|\<nu\>><around|(|J;x|)>>
  for the linearization at the zero jet of the transported force at
  <math|<around|(|x,\<nu\>|)>>. It is independent of the transport path. For
  every <math|y\<in\>\<bbb-R\><rsup|4>> and
  <math|x<rsub|t>\<in\>\<bbb-Z\><rsup|4>> with <math|t*x<rsub|t>\<to\>y> as
  <math|t*\<downarrow\>*0>,

  <\equation*>
    lim<rsub|t*\<downarrow\>*0> t<rsup|j-1>*\<frak-F\><rsub|\<nu\>><around|(|J;x<rsub|t>|)>=-<big|sum><rsub|a>\<partial\><rsub|a><around|(|<math-up|curl><space|0.17em>J<rsub|j>|)><rsub|a*\<nu\>><around|(|y|)>.
  </equation*>

  For <math|j=0> the linearized force vanishes. At finite mesh the force is a
  transverse difference of plaquette averages.

  (b) For jets truncated through weight <math|j+2>, if every linearized
  transported force on a walk ending at the initial vertex of its link and
  avoiding that link vanishes, then the component <math|J<rsub|j>> lies in
  <math|<math-up|Sh><rsub|j>>.

  (c) Dually, for every real linear functional <math|Q> on
  <math|<math-up|Tay><rsub|j>> vanishing on <math|<math-up|Sh><rsub|j>>, the
  functional <math|Q\<circ\><math-up|proj><rsub|<math-up|top>>> is a finite
  combination of linearized transported forces. <em|Sketch:> express each
  transverse difference as an additional integral of a derivative of the
  plaquette average. Homogeneity and continuity of these averages give (a).
  If every force vanishes, every lattice point can be reached by a walk
  avoiding the varied link; (a) then makes the top curvature divergence-free.
  Its Bianchi identity follows because it is a curl, proving (b). In finite
  dimensions, the annihilator of the common force kernel is the span of the
  force functionals, giving (c). <em|Lean:>
  <hlink|<verbatim|continuum_current>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Current.lean#L208-L251>,
  <hlink|<verbatim|top_shell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Current.lean#L253-L280>,
  <hlink|<verbatim|force_kernel_last>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Current.lean#L286-L297>,
  <hlink|<verbatim|force_span>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Span.lean#L32-L41>.

  <strong|Lemma 4.21 (generators of the equation ideal).>
  <math|p\<in\>\<cal-E\><rsub|d>> if and only if <math|p\<circ\>\<Pi\>=0>,
  where <math|\<Pi\>> is the projection of each <math|<math-up|Tay><rsub|j>>
  onto <math|<math-up|Sh><rsub|j>>. Every <math|p\<in\>\<cal-E\><rsub|d>> of
  pure grade <math|m> is a combination of products <math|\<ell\>\<cdot\>M>,
  of total grade <math|m>, of a linear functional <math|\<ell\>> on
  <math|<math-up|Tay><rsub|j>> vanishing on <math|<math-up|Sh><rsub|j>> and a
  product <math|M> of real linear jet functionals, with complex scalar
  coefficients. Grade components of elements of <math|\<cal-E\><rsub|d>> lie
  in <math|\<cal-E\><rsub|d>>, and <math|\<cal-E\><rsub|d>> contains no
  nonzero constant. <em|Sketch:> write <math|p=p-p\<circ\>\<Pi\>>. For a
  monomial <math|M=<big|prod><rsub|r>\<ell\><rsub|r>>, the difference
  <math|M-M\<circ\>\<Pi\>> telescopes into
  <math|<big|sum><rsub|r><around|(|\<ell\><rsub|r>-\<ell\><rsub|r>\<circ\>\<Pi\>|)>\<cdot\><around|(|\<cdots\>|)>>,
  and each <math|\<ell\><rsub|r>-\<ell\><rsub|r>\<circ\>\<Pi\>> vanishes on
  <math|<math-up|Sh>>. <em|Lean:> <hlink|<verbatim|erase_shell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Ideal.lean#L58-L68>,
  <hlink|<verbatim|multiplied>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Ideal.lean#L44-L45>,
  <hlink|<verbatim|generation_ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Ideal.lean#L93-L112>.

  <strong|Lemma 4.22 (micro lifts at pure grade).> For
  <math|p\<in\>\<cal-E\><rsub|d>> of grade <math|m> (with
  <math|m<rsub|1>\<leqslant\>d>) there are a gauge-invariant lattice function
  <math|f> and a label <math|q> with:

  <\itemize-minus>
    <item><math|f> represents <math|q> to order <math|d>;

    <item><math|q-p> has only components of strictly higher grade;

    <item><math|f> is a slot polynomial with <math|\<geqslant\>m<rsub|2>>
    slot factors;

    <item><math|f> is micro.
  </itemize-minus>

  <em|Sketch:>

  <\itemize-minus>
    <item><em|Generators.> For a generator <math|\<ell\>\<cdot\>M>, write
    <math|\<ell\>\<circ\><math-up|proj><rsub|<math-up|top>>> as a combination
    of linearized forces (Lemma 4.20).

    <item><em|Lift of a force.> A transported lattice force component is a
    degree-one slot polynomial. Its readout is the full linearized force plus
    terms with at least two jet factors.

    <item><em|Lift of the monomial.> Slots avoiding one specified link still
    detect every truncated jet: excluding that link removes only finitely
    many plaquette positions, which does not change the mesh-to-zero argument
    away from <math|0>; continuity gives the value at <math|0>. Thus every
    factor of <math|M> can be represented, through all retained weights, by a
    slot polynomial independent of that link after periodic placement.

    <item><em|Product.> The force combination matches <math|\<ell\>> through
    its own weight <math|j+2>; extending it to cutoff <math|d> adds only
    higher-weight one-factor terms. Nonlinear readout errors have more
    factors. Multiplication by the lifted <math|M> therefore gives
    <math|\<ell\>*M> modulo higher grade. The product is micro by Lemma 4.19.
    Combine linearly.

    <item><em|Gauge invariance.> Average over constant gauge transformations
    with Haar measure. The orbit spans a finite-dimensional space, so the
    average stays a slot polynomial and the relation above persists.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|stanza>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Rank.lean#L100-L127>,
  <hlink|<verbatim|coherent_verse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Rank.lean#L129-L153>,
  <hlink|<verbatim|mounted_read>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Rank.lean#L157-L166>,
  <hlink|<verbatim|averaged>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Gauge.lean#L110-L143>,
  <hlink|<verbatim|positioned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Gauge.lean#L147-L163>,
  <hlink|<verbatim|Cone>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Rank.lean#L78-L83>.

  <strong|Lemma 4.23 (a covariant lifting map).> There is a linear map
  <math|F:V<rsub|d>\<to\>V<rsub|d>\<times\><around|{|<text|lattice
  functions>|}>>, with <math|F<around|(|p|)>=<around|(|q,f|)>>,
  <math|F<around|(|1|)>=<around|(|1,1|)>>, such that for <math|p> of grade
  <math|m>:

  <\itemize-minus>
    <item><math|f> is gauge invariant and represents <math|q>;

    <item><math|q-p> has only components of higher grade;

    <item><math|f> has <math|\<geqslant\>m<rsub|2>> slot factors;

    <item><math|f> is micro whenever <math|p\<in\>\<cal-E\><rsub|d>>.
  </itemize-minus>

  <math|F> commutes with signed permutations and conjugation. <em|Sketch:>

  <\itemize-minus>
    <item><em|One grade.> Choose a linear projection
    <math|P<rsub|m>:V<rsub|d>\<to\>V<rsub|d><rsup|<around|(|m|)>>\<cap\>\<cal-E\><rsub|d>>.
    Apply the micro lift to <math|P<rsub|m>*p>, and the primary-section lift
    <math|q\<mapsto\><around|(|q,\<Phi\><rsub|<math-up|coord><around|(|q|)>>|)>>
    to <math|p-P<rsub|m>*p>; call the sum <math|X<rsub|m><around|(|p|)>>. On
    pure grade <math|m> both summands have the required grade and slot
    bounds. On <math|V<rsub|d><rsup|<around|(|m|)>>\<cap\>\<cal-E\><rsub|d>>
    the second summand vanishes.

    <item><em|All grades.> Sum <math|X<rsub|m>\<circ\><around|(|<text|grade->m<text|
    part>|)>> over <math|m>.

    <item><em|Symmetrization.> Average over the signed-permutation action,
    and with the conjugate. These operations preserve all properties above.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|shelf>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L99-L102>,
  <hlink|<verbatim|Offered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L33-L38>,
  <hlink|<verbatim|Payment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L65-L67>,
  <hlink|<verbatim|Campaign>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L69-L71>,
  <hlink|<verbatim|unsym>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L155-L168>,
  <hlink|<verbatim|impression>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/HGroup.lean#L106-L125>.

  <strong|Lemma 4.24 (weave and section = Prop. II.1.5).> <em|Weave.> Let
  <math|R> be the first component of <math|F>. It is unitriangular for the
  order of grades, hence an automorphism. <em|Section.> The inverse of
  <math|R> also does not lower grades, so <math|R<rsup|-1>*b<rsub|i>> has no
  component preceding the grade of <math|b<rsub|i>>. Hence the map
  <math|b<rsub|i>\<mapsto\>f*<around|(|R<rsup|-1>*b<rsub|i>|)>> sends basis
  vectors to slot polynomials with <math|\<geqslant\>f<rsub|i>> factors.
  Enclose all their stencils in one box and rewrite them as entry
  polynomials; this gives a section <math|\<Sigma\>> with
  <math|\<Phi\><rsub|<math-up|coord><around|(|R*p|)>>=f<around|(|p|)>>.
  <em|Properties.>

  <\itemize-minus>
    <item>Soundness: gauge invariance, unit, covariance and reality are
    inherited from <math|F>; the projection property holds because
    <math|f<around|(|p|)>> represents <math|R*p>.

    <item>Cost: G07 (Lemma 4.11).

    <item>Microness: for <math|p\<in\>\<cal-E\><rsub|d>>,
    <math|f<around|(|p|)>> is the sum of the micro grade components of
    <math|F<around|(|p|)>>.
  </itemize-minus>

  Choose these sections and automorphisms for every <math|d>. <em|Lean:>
  <hlink|<verbatim|twist>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Automorphism.lean#L72-L73>,
  <hlink|<verbatim|regrade_tri>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Automorphism.lean#L43-L50>,
  <hlink|<verbatim|paid_reel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Automorphism.lean#L100-L102>,
  <hlink|<verbatim|weaveBuild>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L60-L97>,
  <hlink|<verbatim|Portfolio.build>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L101-L105>,
  <hlink|<verbatim|commissioned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Assembly.lean#L30-L33>.

  <subsection|4.6 Source histories><label|46-source-histories>

  <strong|Lemma 4.25 (splicing a large-field multiplier).> Let <math|f> be
  bounded and vanish on <math|<math-up|Hy><rsub|\<theta\>><around|(|Y|)>>,
  let <math|\<rho\>> be lawful with forced-activity parameter <math|w>, and
  let a shelf as in Prop. II.1.8 be given. Then for every configuration
  <math|U>,

  <\equation*>
    <big|sum><rsub|b><big|sum><rsub|i><math-up|line><rsub|i><around|(|f|)><around|(|U|)>*<space|0.17em>\<b-1\><rsub|<around|{|i\<in\>b,b<math-up|adm>|}>>*<big|prod><rsub|j\<in\>b\<setminus\><around|{|i|}>>K<rsub|j><around|(|U|)>=f<around|(|U|)><space|0.17em><math-up|gas><around|(|U|)>,
  </equation*>

  as an identity on all configurations. The <em|line> coefficients satisfy
  <math|<big|sum><rsub|i><math-up|mass><around|(|X<rsub|i>,p<rsub|i>|)>\<leqslant\>sup
  <around|\<lvert\>|f|\<rvert\>>\<cdot\><math-up|mass><around|(|Y,1|)>*<around|(|e<rsup|<around|\<lvert\>|Y|\<rvert\>>*w>-1|)>>,
  where <math|p<rsub|i>\<geqslant\>sup<rsub|U><around|\<lvert\>|<math-up|line><rsub|i><around|(|f|)><around|(|U|)>|\<rvert\>>>.
  <em|Sketch:>

  <\itemize-minus>
    <item>On a large-field configuration every admissible polymer set meets
    <math|Y>, because the forced polymers cover the flagged sites.

    <item>For each nonempty compatible set <math|c> of old polymers meeting
    <math|Y>, reserve one address with support
    <math|Y\<cup\><big|cup><rsub|i\<in\>c>X<rsub|i>> and inventory
    <math|<big|cup><rsub|i\<in\>c>I<rsub|i>>. Its coefficient is
    <math|f*<big|prod><rsub|i\<in\>c>K<rsub|i>> when the flagged sites in
    that support equal the inventory, and <math|0> otherwise.

    <item>Replace all polymers meeting <math|Y> by that address and leave the
    remaining polymers unchanged. This is a bijection between old admissible
    sets meeting <math|Y> and admissible sets with a marked reserved address;
    its inverse expands the marked address. Paired summands agree. The
    forced-activity bounds give absolute convergence and the displayed
    weighted estimate, so the double sum can be reindexed.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Attach.paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Purchase.lean#L42-L78>,
  <hlink|<verbatim|Attach.routes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Clusters.lean#L198-L211>,
  <hlink|<verbatim|Attach.line_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Stock.lean#L120-L160>.

  <strong|Lemma 4.26 (birth = Prop. II.1.8; summability; moment identity).>
  <em|Birth.> The supplement vanishes on <math|<math-up|Hy><rsub|\<theta\>><around|(|Y|)>>,
  because <math|\<Phi\><rsub|e<rsub|0>>=1>. It is gauge invariant,
  measurable, determined by the links and flags of <math|Y>, and bounded by
  <math|B*\<theta\><rsup|-f<rsub|max>><around|\<lVert\>|v<rsup|\<circ\>>|\<rVert\>><rsub|1>>.
  Splice it by Lemma 4.25. The local part of the density is then the masked
  healthy part and the marked series is supplement \<times\> gas; their sum
  is <math|\<rho\>*<space|0.17em>\<Phi\><rsub|S<rsub|1/\<theta\>>*v>>. The
  forced budget is <math|<math-up|fee>\<cdot\><around|\<lVert\>|v<rsup|\<circ\>>|\<rVert\>><rsub|1>\<leqslant\><sqrt|w><space|0.17em><around|\<lVert\>|v<rsup|\<circ\>>|\<rVert\>><rsub|1>>.
  <em|Guarded birth.> Use the same reserved addresses and coefficients after
  temporarily replacing the forced-polymer auxiliary tests by the always-true
  test. The vacuum activities, supports and inventories stay fixed, so the
  density and bounds are unchanged. Every nonzero inserted coefficient
  enforces the correct inventory and therefore satisfies the original
  auxiliary test. Restoring those tests gives the birth identity on the
  original selected history.

  <em|Summability.> A remainder bound dominates the masked regular series by
  a summable sequence. If the representation is lawful, combine summable
  majorants for the activities and forced coefficients into
  <math|p<rsub|l>\<geqslant\>0>; the marked summand for a set <math|b> is
  bounded by <math|<big|prod><rsub|l\<in\>b>2*p<rsub|l>>, summable over
  finite sets. Format supplies measurability of the coefficients. The lawful
  vacuum representation and the finite section then give bounded measurable
  density. <em|Moment identity.> For a selected history, each transfer
  multiplies the total integral by <math|L<rsub|m><rsup|d>> (the push-forward
  preserves mass) and <math|a<rsub|m>=L<rsub|m>*a<rsub|m+1>>. This gives the
  identity <math|<big|int>\<cal-D\><rsub|m>=a<rsub|m><rsup|d>*Z<around|\<langle\>|O|\<rangle\>>>
  of Prop. II.1.7. <em|Lean:> <hlink|<verbatim|launched>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L116-L161>,
  <hlink|<verbatim|healthy_supplement>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L34-L39>,
  <hlink|<verbatim|supplement_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L69-L101>,
  <hlink|<verbatim|regular_series>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Preservation.lean#L17-L23>,
  <hlink|<verbatim|marked_series>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Preservation.lean#L25-L51>,
  <hlink|<verbatim|envelope>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Preservation.lean#L66-L84>,
  <hlink|<verbatim|integral_marked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Preservation.lean#L100-L118>,
  <hlink|<verbatim|onTop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Song.lean#L48-L90>.
  <em|(proofs read)>

  <strong|Lemma 4.27 (numerical conditions = Prop. II.1.9).> <em|Latch.>
  <math|\<theta\><rsub|m><rsup|-1>\<leqslant\><wide|\<beta\>|^><rsub|m>>.
  Once the cover size, which grows like <math|<around|(|log
  <wide|\<beta\>|^><rsub|m>|)><rsup|2>>, exceeds the minimal side,
  <math|<math-up|mass><around|(|Y,1|)>\<leqslant\>e<rsup|<text|support
  exponent>>>. Also <math|e<rsup|<around|\<lvert\>|Y|\<rvert\>>*w>-1\<leqslant\><around|\<lvert\>|Y|\<rvert\>>*w*e<rsup|<around|\<lvert\>|Y|\<rvert\>>>>.
  Hence <math|<math-up|fee>\<leqslant\>C*<wide|\<beta\>|^><rsub|m><rsup|f<rsub|max>>*w<rsub|m>>.
  Since <math|w<rsub|m>=exp <around|(|-exp <around|(|<around|(|log log
  <wide|\<beta\>|^><rsub|m>|)><rsup|2>/5|)>|)>> decays faster than every
  inverse power, <math|<wide|\<beta\>|^><rsup|n+1>*w\<leqslant\><sqrt|w>>
  eventually. Thresholds for all <math|d\<leqslant\>J<around|(|m|)>> are
  combined by summing finitely many thresholds. <em|Numerical conditions.>

  <\itemize-minus>
    <item>bank: <math|L<rsup|1/8>\<to\>\<infty\>>;

    <item>per-step prices: <math|L<rsup|-2/5>*s\<leqslant\>1> and
    <math|L<rsup|-2/5>*<around|(|1+s|)>*T\<leqslant\>L<rsup|-3/8>> for large
    <math|L>;

    <item>block lower bounds: maximum of finitely many requirements per
    stage;

    <item>Enlarge each stage constant <math|<wide|\<kappa\>|\<bar\>><rsub|j>>
    to <math|max <around|(|<wide|\<kappa\>|\<bar\>><rsub|j>,\<pi\>,64<math-ss|K><rsub|j+1><rsup|2>|)>>,
    with <math|<math-ss|K><rsub|k>=1+<big|sum><rsub|j\<leqslant\>k><big|sum><rsub|d\<leqslant\>j><around|(|C<rsub|j>+1|)>*<space|0.17em>\<Omega\><rsub|d>>.
  </itemize-minus>

  <em|Section clauses.> For <math|m\<geqslant\>r<around|(|d|)>>,
  <math|d+1\<leqslant\>d+3\<leqslant\>J<around|(|m|)>\<leqslant\><math-up|order><rsub|m>>
  (and likewise for the power). Latch gives the minimal side.
  <math|\<pi\><around|(|max <around|(|<math-up|order>,<math-up|power>|)>|)>\<leqslant\>\<kappa\><rsub|N>>
  turns the bound of Prop. II.1.3, item 4, into clause (v) of
  <math|<math-up|Makes>>. <em|Merger delay.> For each section and
  support-exponent ceiling <math|u> there is a threshold <math|q> such that,
  whenever the level-<math|m> support exponent is at most <math|u> and
  <math|<wide|\<beta\>|^><rsub|m>\<geqslant\>q>,
  <math|<around|(|2*B<rsub|m>+1|)><rsup|4>*<sqrt|w<rsub|m>>\<leqslant\>1>,
  where <math|B<rsub|m>=<around|\<lceil\>|<around|(|log
  <wide|\<beta\>|^><rsub|m>|)><rsup|2>|\<rceil\>>> is the cover size. The
  same threshold ensures the bare-section bounds needed for local merging.
  <em|Lean:> <hlink|<verbatim|latch_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L126-L157>,
  <hlink|<verbatim|entrances>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L162-L177>,
  <hlink|<verbatim|afford>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L76-L102>,
  <hlink|<verbatim|alone>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L108-L133>,
  <hlink|<verbatim|refLi>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L182-L193>,
  <hlink|<verbatim|Issue.refer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Issue.lean#L38-L45>,
  <hlink|<verbatim|Push.Local.delay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING/Delay.lean#L56-L68>.

  <strong|Lemma 4.28 (local-merger identities and differentiation).>

  (a) Fix a valid forced-polymer family, a budget point, and a family
  <math|f<rsub|i>> of measurable gauge-invariant functions. Each
  <math|f<rsub|i>> is determined by links and flags on <math|X<rsub|i>> and
  vanishes on <math|<math-up|Hy><rsub|\<theta\>><around|(|X<rsub|i>|)>>. For
  every <math|i> and nonempty compatible bundle <math|b> of polymers meeting
  <math|X<rsub|i>>, assume a distinct reserved address with support
  <math|X<rsub|i>\<cup\><big|cup><rsub|j\<in\>b>X<rsub|j>>, inventory
  <math|<big|cup><rsub|j\<in\>b>I<rsub|j>>, and auxiliary test satisfied
  everywhere. Pack <math|f<rsub|i>*<big|prod><rsub|j\<in\>b>K<rsub|j>> into
  that address, multiplied by its eligibility indicator. If
  <math|<big|sum><rsub|i><around|\||f<rsub|i><around|(|U|)>|\|>\<less\>\<infty\>>,
  the marked-gas series converges at <math|U> and equals
  <math|<around|(|<big|sum><rsub|i>f<rsub|i><around|(|U|)>|)><math-up|gas><around|(|U|)>>.
  For a fixed admissible set, the marked summand is the sum over its possible
  marked addresses, with all other activities multiplied unchanged.

  (b) Suppose <math|f> is <math|C<rsup|k>> in exponential coordinates at
  <math|U>. Take a list of <math|r\<leqslant\>k> pairs
  <math|<around|(|A<rsub|j>,B<rsub|j>|)>> of left and right directions.
  Assume that at each link either all <math|A<rsub|j>> vanish or all
  <math|B<rsub|j>> vanish. The ordered mixed derivative is the sum of
  <math|2<rsup|r>> ordered left derivatives: for each pair choose its left
  direction or the direction <math|<math-up|Ad><around|(|U|)>*B<rsub|j>>; put
  the chosen left directions first in their original order, followed by the
  chosen right directions in reverse order.

  (c) Let <math|W> be an open set of configurations. Suppose every
  <math|f<rsub|i>> is <math|C<rsup|k>> in exponential coordinates at every
  <math|U\<in\>W>. For every fixed ordered list <math|l> of at most <math|k>
  left directions, including the empty list, assume a summable majorant
  <math|d<rsub|i><around|(|l|)>> for <math|<around|\||D<rsub|l>*f<rsub|i><around|(|U|)>|\|>>,
  uniform in <math|U\<in\>W>. Then <math|<big|sum><rsub|i>f<rsub|i>> is
  <math|C<rsup|k>> in those coordinates throughout <math|W>, and
  <math|D<rsub|l>*<big|sum><rsub|i>f<rsub|i>=<big|sum><rsub|i>D<rsub|l>*f<rsub|i>>
  there.

  <em|Sketch:> in (a), replace the polymers meeting <math|X<rsub|i>> by their
  reserved marked address. Expanding that address is the inverse
  correspondence, and the activity bound and summability of
  <math|f<rsub|i><around|(|U|)>> justify reindexing. In (b), move the right
  derivatives past the left derivatives on disjoint link sets; replacing
  right increments by left increments conjugates their directions by <math|U>
  and reverses their order. For (c), work in one exponential chart contained
  in <math|W>. Bounds on finitely many basis derivatives give a summable
  bound on the Fréchet derivative; the chart change is uniformly bounded on a
  smaller neighbourhood. Differentiate the series there and induct on
  <math|k>, retaining the order of each left-derivative list.

  <em|Lean:> <hlink|<verbatim|gasMark_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING/Recovery.lean#L29-L31>,
  <hlink|<verbatim|Slots.recover>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING/Recovery.lean#L184-L191>,
  <hlink|<verbatim|mix_convert>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING/Mixed.lean#L179-L201>,
  <hlink|<verbatim|smooth_exchange>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/LOCAL_LOG_JETS/Series.lean#L232-L255>.
  These identities enter the conversion of local functions into source
  coefficients and the differentiation of unmasked series in the per-step
  estimates.

  <subsection|4.7 Properties of the observables><label|47-properties-of-the-observables>

  <strong|Lemma 4.29 (= Prop. II.1.6).> <em|Sketch:>

  <\itemize-minus>
    <item>Translation is literal, since the placement commutes with
    translations.

    <item>Linearity, continuity and locality are properties of <math|\<Phi\>>
    and of the linear maps <math|S<rsub|1/\<theta\><rsub|N>>> and
    <math|\<tau\><rsup|-1>>.

    <item>Gauge invariance follows from soundness of the section.

    <item>Reality and covariance use three facts: <math|\<tau\>> commutes
    with conjugation and with the signed-permutation action (Prop.
    II.1.7(6)); <math|S<rsub|t>> commutes with the <math|O<around|(|4|)>>
    action because the grades are preserved; and the section is sound.

    <item>Unit: Prop. II.1.7(6) gives <math|\<tau\>*<around|(|a<rsub|N><rsup|d>*e<rsub|0>|)>=x<rsub|r>*<around|(|a<rsub|N><rsup|d>*e<rsub|0>|)>=a<rsub|r><rsup|d>*e<rsub|0>>,
    hence <math|\<tau\><rsup|-1>*<around|(|a<rsub|r><rsup|d>*e<rsub|0>|)>=a<rsub|N><rsup|d>*e<rsub|0>>.
    Since <math|S<rsub|t>*e<rsub|0>=e<rsub|0>> and
    <math|\<Phi\><rsub|e<rsub|0>>=1>, the observable is
    <math|a<rsub|N><rsup|-d>*a<rsub|N><rsup|d>=1>.

    <item>Normalization is <math|x<rsub|r>=\<tau\>>.
  </itemize-minus>

  <em|Lean:> see Prop. II.1.6 and <hlink|<verbatim|origin_unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L121-L130>.

  <subsection|4.8 Comparison estimates><label|48-comparison-estimates>

  <strong|Lemma 4.30 (= Prop. II.1.10).> <em|Sketch:>

  <\itemize-minus>
    <item>(a) Translations and diagonal axis reflections carry the centred
    tiling and all its cell copies to the corresponding centred tiling at the
    new anchor. Reindex the cells and use invariance of the Wilson measure.
    Conjugating every copy conjugates the expectation, leaving its absolute
    value unchanged.

    <item>(b) At offsets <math|o> that are centres of the finer centred grid,
    apply the chessboard inequality for <math|T>. Each cell copy of
    <math|F<rsub|o>> is a reflected and translated copy of <math|F<rsub|0>>
    planted in a distinct finer cell, so the product of roots is
    <math|\<leqslant\>A<rsup|\<sharp\><text|cells>>> by (a).

    <item>(b), general offsets: bracket each coordinate between aligned
    corners, retaining the <math|2\<times\>>-side margin for all intermediate
    positions. For literal translates <math|F<rsub|u>> along an axis the seam
    inequality gives <math|r<rsub|u+1><rsup|2>\<leqslant\>r<rsub|u>*r<rsub|u+2>>,
    where <math|r<rsub|u>> is the root test. A nonnegative sequence
    satisfying this inequality cannot exceed both endpoint bounds. Iterate
    over the four coordinates.

    <item>(c) The root test is subadditive under finite sums. Slowly varying
    coefficients cost <math|e<rsup|\<varepsilon\>*s<rsub|N>>> with
    <math|\<varepsilon\>\<less\>\<gamma\>/2>, which leaves the rate
    <math|e<rsup|-\<gamma\>*s<rsub|N>/2>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|center_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L134-L160>,
  <hlink|<verbatim|corner_root>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L192-L226>,
  <hlink|<verbatim|offset>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L232-L270>,
  <hlink|<verbatim|gather_close>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Combination.lean#L65-L93>.

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The main analytic estimate is the volume-independent readout bound.
  Polarization in the full lattice direction space could introduce constants
  depending on the volume. Pulling each tensor back to the finitely many test
  directions avoids this, while rescaling each link position gives the
  required distance weights. The analytic radii of individual links need not
  be uniform.

  The equation lift must serve two purposes at once: reproduce a prescribed
  jet and permit integration by parts without a derivative of its multiplier.
  Slot sampling away from the varied link supplies this independence. The
  triangular argument orders grades first by factor number, then by weight;
  higher-factor corrections need not have higher engineering weight. The
  final family retains its primary sections, and the equation sections form
  an auxiliary family whose comparison requires later estimates.

  The birth identity requires reserved addresses in the same forced-polymer
  alphabet. Lawfulness alone does not supply them. The guarded construction
  weakens the auxiliary-test requirement while retaining exact eligibility
  whenever an inserted coefficient is nonzero. Its numerical bound is
  possible because the forced allowance decays faster than every inverse
  coupling power.

  The finite slot family is chosen nonconstructively. Consequently the
  stencils and constants are finite but not explicit. Their dependence on
  degree and derivative parameters must be included before the block factors
  are chosen.

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Written
  proof>>|<cell|<strong|Lean (glossary)>>|<cell|<strong|Meaning>>>|<row|<cell|<math|<math-up|Tay><rsub|j>>,
  jet <math|J>>|<cell|<hlink|<verbatim|Labels.Taylor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L39>,
  <hlink|<verbatim|Jet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L28>>|<cell|radial-gauge
  Taylor coefficient of weight <math|j+2>; sequence of
  them>>|<row|<cell|<math|V<rsub|d>>>|<cell|<hlink|<verbatim|Labels.Label>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L112>>|<cell|invariant
  polynomials of weight <math|\<leqslant\>d>
  (labels)>>|<row|<cell|<math|p<around|(|J|)>>>|<cell|<hlink|<verbatim|read>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L35>>|<cell|value
  of a label on a jet>>|<row|<cell|<math|<around|(|w,f|)>>,
  <math|V<rsub|d><rsup|<around|(|w,f|)>>>>|<cell|<hlink|<verbatim|Grade>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L17-L18>>|<cell|weight
  and number of factors>>|<row|<cell|frame <math|<around|(|b<rsub|i>|)>>,
  <math|c\<in\>\<bbb-C\><rsup|K<rsub|d>+1>>>|<cell|<hlink|<verbatim|Frame>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L50-L57>,
  <hlink|<verbatim|Frame.Coeff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L18>>|<cell|real
  graded basis starting with <math|1>; coordinates>>|<row|<cell|<math|S<rsub|t>>,
  <math|c<rsup|\<circ\>>>, <math|<around|\<lVert\>|c|\<rVert\>><rsub|1>>>|<cell|<hlink|<verbatim|Frame.scaled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L58-L61>,
  <hlink|<verbatim|core>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L123-L126>,
  <hlink|<verbatim|coeffSize>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L128>>|<cell|<math|c<rsub|i>\<mapsto\>t<rsup|f<rsub|i>>*c<rsub|i>>;
  drop the unit coordinate; <math|\<ell\><rsup|1>>
  norm>>|<row|<cell|<math|s\<cdot\>c>, <math|<wide|c|\<bar\>>>>|<cell|<hlink|<verbatim|Frame.act>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L83-L84>,
  <hlink|<verbatim|realBar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Action.lean#L131-L140>>|<cell|<math|O<around|(|4|)>>
  action; conjugation>>|<row|<cell|<math|U<rsup|<around|(|d|)>><rsub|J,h>>>|<cell|<hlink|<verbatim|Hol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L55-L57>,
  <hlink|<verbatim|Hol.links>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L62>>|<cell|test
  holonomies>>|<row|<cell|<math|<math-up|sc><rsub|h>J>>|<cell|<hlink|<verbatim|scaleJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L82>>|<cell|<math|<around|(|h<rsup|j+2>*J<rsub|j>|)><rsub|j>>>>|<row|<cell|slot
  <math|\<sigma\>=<around|(|\<omega\>,P|)>>>|<cell|<hlink|<verbatim|RG.Slot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L38-L40>>|<cell|<math|<math-up|Ad><around|(|U<rsub|\<omega\>>|)>*F<rsub|P><around|(|U|)>>>>|<row|<cell|slot
  map <math|\<frak-S\>>, truncated jets>|<cell|<hlink|<verbatim|bring>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L98>,
  <hlink|<verbatim|Snap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L26>>|<cell|finitely
  many slots as a function of <math|<around|(|J<rsub|j>|)><rsub|j\<leqslant\>d-2>>>>|<row|<cell|section
  <math|<around|(|S,\<Phi\>|)>>; <math|\<Phi\><rsub|c><around|(|o;U|)>>>|<cell|<hlink|<verbatim|SectionData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L103-L105>,
  <hlink|<verbatim|places>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L112>>|<cell|stencil
  and linear map to entry polynomials; placement>>|<row|<cell|sound>|<cell|<hlink|<verbatim|Sound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L140-L147>>|<cell|symmetries,
  unit, projection property>>|<row|<cell|slot structure;
  cost>|<cell|<hlink|<verbatim|Bid.pop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L55-L56>;
  <hlink|<verbatim|Bid.Credit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L63-L66>>|<cell|columns
  are slot polynomials with <math|\<geqslant\>f<rsub|i>> factors;
  <math|t<rsup|f<rsub|i>>> budget bound>>|<row|<cell|<math|\<pi\><around|(|D|)>>,
  <math|c<rsub|d>>>|<cell|<hlink|<verbatim|price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L126>,
  <hlink|<verbatim|cameras>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L20>>|<cell|uniform
  price; value bound of the columns>>|<row|<cell|<math|p> reads <math|f> at
  <math|o>>|<cell|<hlink|<verbatim|Reads>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L186-L194>>|<cell|readout
  (constant convention when wrapping)>>|<row|<cell|<math|<math-up|Sh><rsub|j>>,
  <math|\<cal-E\><rsub|d>>>|<cell|<hlink|<verbatim|Maxwell.onShell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L18-L42>,
  <hlink|<verbatim|gaugeJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L46-L47>,
  <hlink|<verbatim|equationIdeal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72>>|<cell|free-Maxwell
  components; free-Maxwell ideal>>|<row|<cell|<math|\<nabla\><rsub|e>*S<rsub|W>>,
  transported force>|<cell|<hlink|<verbatim|field>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L132>,
  <hlink|<verbatim|force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Avoid.lean#L149-L150>>|<cell|link
  gradient of the Wilson energy; its transport to
  <math|0>>>|<row|<cell|micro>|<cell|<hlink|<verbatim|Micro>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Micro.lean#L33>>|<cell|orthogonal
  to remote bounded spectators>>|<row|<cell|micro lift; lifting map
  <math|F>>|<cell|<hlink|<verbatim|Cone>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Rank.lean#L78-L83>;
  <hlink|<verbatim|Campaign>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L69-L71>>|<cell|lift
  agreeing modulo higher grade; all grades at once>>|<row|<cell|weave
  <math|R>; equation section>|<cell|<hlink|<verbatim|twist>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Automorphism.lean#L72-L73>;
  <hlink|<verbatim|Portfolio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L51-L58>>|<cell|unitriangular
  regrading; section with micro equation part>>|<row|<cell|record
  <math|<math-ss|C>>; <math|<math-up|Makes>>>|<cell|<hlink|<verbatim|Family>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L24-L30>;
  <hlink|<verbatim|Family.Makes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62>>|<cell|Wilson
  family; consistency predicate>>|<row|<cell|<math|O<rsub|N,p><around|(|v,o|)>>>|<cell|<hlink|<verbatim|Family.O>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L42>>|<cell|renormalized
  observable <math|a<rsub|N><rsup|-d>*\<Phi\><rsub|S<rsub|1/\<theta\><rsub|N>>*\<tau\><rsup|-1>*v><around|(|o;\<cdot\>|)>>>>|<row|<cell|<math|r<around|(|d|)>>,
  <math|a<rsub|r><rsup|d>*e<rsub|0>>>|<cell|<hlink|<verbatim|Family.ref>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L24-L30>,
  <hlink|<verbatim|Family.refUnit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L37>>|<cell|reference
  level; physical unit vector>>|<row|<cell|<math|E<rsub|m><around|(|v|)>>,
  <math|\<cal-D\><rsub|m>>>|<cell|<hlink|<verbatim|Coefficient>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L26-L30>,
  <hlink|<verbatim|density>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L48-L50>>|<cell|source
  coefficient; first-order inserted density>>|<row|<cell|<math|\<tau\>>;
  based>|<cell|<hlink|<verbatim|TransferData.terminal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L73-L75>;
  <hlink|<verbatim|Based>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L89-L114>>|<cell|terminal
  map; transfer specification>>|<row|<cell|supplement;
  fee>|<cell|<hlink|<verbatim|supplement>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L24-L25>;
  <hlink|<verbatim|fee>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L108-L109>>|<cell|large-field
  part of the bare observable; birth condition>>|<row|<cell|latch; Budget;
  Plans>|<cell|<hlink|<verbatim|Latch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L120-L123>;
  <hlink|<verbatim|Budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L65-L72>;
  <hlink|<verbatim|Plans>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L57-L62>>|<cell|birth
  condition per level; level inequalities; stage-wise numerical
  plan>>|<row|<cell|price list <math|<around|(|<math-ss|K><rsub|j>|)>>>|<cell|<hlink|<verbatim|Bid.Worth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L29-L32>>|<cell|nondecreasing
  constants <math|\<geqslant\>1>>>|<row|<cell|close>|<cell|<hlink|<verbatim|Bid.close>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L25>>|<cell|root-test
  bounds tend to <math|0> in all prescribed link tilings and margins>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Identification in the limit (tentative).> The auxiliary
    equation sections enter the volume-uniform comparison through
    <hlink|<verbatim|Run.Ties>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L65-L71>
    and <hlink|<verbatim|Hearthside>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fire.lean#L17-L20>.
    This unit does not trace their regrading and transfer normalizations into
    the null-label quotient, or prove the converse identification with the
    free-Maxwell quotient. A literal equality
    <math|N<rsub|d>=\<cal-E\><rsub|d>> in the original primary coordinates
    has not been verified.

    <item><strong|Later applications.> The section constants and
    reference-level conditions are explicit here. Their simultaneous
    compatibility with every later per-step estimate, and the full use of the
    local-merger identities, belong to III.2 and III.10\UIII.15 and are not
    verified by these local results.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> I.1 Lattice, symmetries, gauge groups and
  the Wilson measure (notes)|I-1.tm>|<hlink|Part
  II|../units.tm#part-ii-data-of-the-construction><ym-nav-sep><hlink|Unit
  outline|../units/II-1.tm>|<hlink|II.2 Marker algebra, polymer combinatorics
  and Gaussian estimates (notes) \<rightarrow\>|II-2.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|II.1. Field labels and their lattice
    representatives \V detailed notes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|3>>
    <associate|2-what-it-uses|<tuple|2|9>>
    <associate|3-strategy|<tuple|3|11>>
    <associate|4-steps|<tuple|4|12>>
    <associate|41-label-spaces-and-frames|<tuple|4.1|12>>
    <associate|42-test-holonomies-and-the-slot-map-g01g04|<tuple|4.2|12>>
    <associate|43-primary-sections-g05g07|<tuple|4.3|14>>
    <associate|44-readout|<tuple|4.4|15>>
    <associate|45-equation-sections|<tuple|4.5|17>>
    <associate|46-source-histories|<tuple|4.6|19>>
    <associate|47-properties-of-the-observables|<tuple|4.7|21>>
    <associate|48-comparison-estimates|<tuple|4.8|22>>
    <associate|5-where-the-difficulty-lies|<tuple|5|22>>
    <associate|6-notation|<tuple|6|23>>
    <associate|7-what-remains-unexplained|<tuple|7|24>>
    <associate|auto-1|<tuple|1|3>>
    <associate|auto-10|<tuple|4.6|19>>
    <associate|auto-11|<tuple|4.7|21>>
    <associate|auto-12|<tuple|4.8|22>>
    <associate|auto-13|<tuple|5|22>>
    <associate|auto-14|<tuple|6|23>>
    <associate|auto-15|<tuple|7|24>>
    <associate|auto-2|<tuple|2|9>>
    <associate|auto-3|<tuple|3|11>>
    <associate|auto-4|<tuple|4|12>>
    <associate|auto-5|<tuple|4.1|12>>
    <associate|auto-6|<tuple|4.2|12>>
    <associate|auto-7|<tuple|4.3|14>>
    <associate|auto-8|<tuple|4.4|15>>
    <associate|auto-9|<tuple|4.5|17>>
    <associate|ii1-field-labels-and-their-lattice-representatives--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 Label spaces and frames
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 Test holonomies and the slot map
      (G01\UG04) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 Primary sections (G05\UG07)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 Readout
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 Equation sections
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.6 Source histories
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|4.7 Properties of the observables
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|4.8 Comparison estimates
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
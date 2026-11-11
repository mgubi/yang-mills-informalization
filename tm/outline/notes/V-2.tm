<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> V.1 Decomposition of the limit into
  phases (notes)|V-1.tm>|<hlink|Part V|../units.tm#part-v-phases-and-reconstruction><ym-nav-sep><hlink|Unit
  outline|../units/V-2.tm>|<hlink|V.3 Reconstruction for every phase and the
  reconstructed theory (notes) \<rightarrow\>|V-3.tm>>

  <ym-title|V.2. Osterwalder\USchrader reconstruction of a Wightman theory \V
  detailed notes><label|v2-osterwalderschrader-reconstruction-of-a-wightman-theory--detailed-notes>

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

    <with|par-left|1tab|4.1 Tools <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 The strict-time continuation
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 Boundary values and spectral support
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 Poincaré covariance
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 Continuation to the full tube
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.6 Locality <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|4.7 Real-time vectors, Gram limits, nulls
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <with|par-left|1tab|4.8 Assembly (VIII.1) and the field realization
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
    The full account of unit V.2: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/V-2.tm>.
  </quotation>

  <hlink|Unit page|../units/V-2.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> V, phases and reconstruction.

  <strong|Lean:>

  <\itemize-minus>
    <item>The work items A16 and C01\UC29.

    <\itemize-minus>
      <item>Statements: <hlink|<verbatim|Bid/Corners>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean>,
      <hlink|<verbatim|Bid/Tar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean>,
      <hlink|<verbatim|Bid/Grow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Grow.lean>.

      <item>Proofs: <hlink|<verbatim|YM/Work>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work>,
      files C01\UC29, subfolders C07/ and C13/.

      <item>Collected by <hlink|<verbatim|Integrated.reconstructionArcs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L182-L212>.
    </itemize-minus>

    <item>The folders <hlink|<verbatim|YM/Boundary>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Boundary>,
    <hlink|<verbatim|YM/Fields>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields>,
    <hlink|<verbatim|YM/Hilbert>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Hilbert>,
    <hlink|<verbatim|YM/Compact>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Compact>,
    <hlink|<verbatim|YM/Distribution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Distribution>
    and <hlink|<verbatim|YM/Spark>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spark>.
    Spark is the Schwartz-space calculus used by C05, C08, C12, C14 and C25.

    <item>Material filed elsewhere but described here because it completes
    the reconstruction (Ÿ4.3, Ÿ4.6, Ÿ4.8):

    <\itemize-minus>
      <item>The boundary-value and germ lemmas of
      <hlink|<verbatim|YM/Shift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift>,
      filed partly under VI.1 by the declaration table.

      <item>The assembly in <hlink|<verbatim|Next/BOUNDARY/Stage.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean>
      and <hlink|<verbatim|Org/Theatre.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Theatre.lean>,
      filed under VIII.1.
    </itemize-minus>
  </itemize-minus>

  <strong|Size:> 6,456 lines in 705 declarations.

  <block|<tformat|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|part>>|<cell|<strong|lines>>>|<row|<cell|proofs
  collected by reconstructionArcs>|<cell|4,279>>|<row|<cell|Fields>|<cell|438>>|<row|<cell|Compact>|<cell|218>>|<row|<cell|Distribution>|<cell|189>>|<row|<cell|Spark>|<cell|120>>|<row|<cell|Hilbert>|<cell|85>>|<row|<cell|Boundary>|<cell|66>>|<row|<cell|Overlay
  and Vac (ultraviolet material)>|<cell|558>>>>>

  Three bundles in Integrated.lean are also ultraviolet material placed here
  by the dependency cut; they are listed at the end of Ÿ1.

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <em|Conventions.>

  <\itemize-minus>
    <item><strong|Points.> A point of <math|\<bbb-R\><rsup|4>> is
    <math|x=<around|(|<wide|x|\<vect\>>,x<rsup|0>|)>>; time is the last
    coordinate, as in the code. A configuration is
    <math|x=<around|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>\<bbb-R\><rsup|4*n>>.

    <item><strong|Pairing.> <math|<around|\<langle\>|\<cdummy\>,\<cdummy\>|\<rangle\>>>
    is the <em|Euclidean> inner product of <math|\<bbb-R\><rsup|4*n>>,
    extended complex-bilinearly. Dual cones are taken with respect to this
    pairing. Hilbert-space inner products are antilinear in the first
    argument.

    <item><strong|Cones and groups.> <math|V<rsub|+>=<around|{|<around|\<lvert\>|<wide|x|\<vect\>>|\<rvert\>>\<less\>x<rsup|0>|}>>,
    with closure <math|<wide|V|\<bar\>><rsub|+>>.
    <math|\<cal-L\><rsup|\<uparrow\>><rsub|+>> is the proper orthochronous
    Lorentz group. <math|\<Lambda\><rsub|a><around|(|t|)>> is the boost of
    rapidity <math|t> along the spatial axis <math|a>. The Poincaré group
    <math|\<cal-P\>> acts on tests by <math|<around|(|g<rsub|\<ast\>>*f|)><around|(|x|)>=f<around|(|g<rsup|-1>*x<rsub|1>,\<ldots\>,g<rsup|-1>*x<rsub|n>|)>>.

    <item><strong|Heights.> Heights <math|y\<in\>\<bbb-R\><rsup|n>> may be
    negative. <math|E<rsub|n>=<around|{|y<rsub|1>\<less\>\<ldots\>\<less\>y<rsub|n>|}>>
    is the set of ordered heights, and <math|\<Sigma\><rsub|n>=<around|{|z\<in\>\<bbb-C\><rsup|n>:<math-up|Im><space|0.17em>z\<in\>E<rsub|n>|}>>
    is the strict region. We write <math|<wide*|y|\<bar\>>=<around|(|<around|(|<wide|0|\<vect\>>,y<rsub|1>|)>,\<ldots\>,<around|(|<wide|0|\<vect\>>,y<rsub|n>|)>|)>\<in\>\<bbb-R\><rsup|4*n>>.

    <item><strong|Fourier transform.> <math|<wide|f|^><around|(|p|)>=<big|int>e<rsup|-i<around|\<langle\>|x,p|\<rangle\>>>*f<around|(|x|)>*<space|0.17em>d*x>,
    <math|<wide|f|\<check\>><around|(|p|)>=<around|(|2*\<pi\>|)><rsup|-4*n>*<big|int>e<rsup|i<around|\<langle\>|p,x|\<rangle\>>>*f<around|(|x|)>*<space|0.17em>d*x>,
    and <math|<around|(|\<cal-F\>*W|)><around|(|f|)>=W<around|(|<wide|f|^>|)>>.
  </itemize-minus>

  Unless stated otherwise, arities <math|n,m> range over <math|\<bbb-N\>>,
  including <math|0>, and label tuples range over <math|\<cal-F\><rsup|n>>.
  Supports of functions are closed supports.

  <em|Tables and the OS space.>

  <\itemize-minus>
    <item><math|S> and <math|T> are tables on one label register (glossary).
    <math|N<rsub|d><around|(|Q|)>> denotes the raw degree-<math|d> labels
    whose correlations in <math|Q> vanish with arbitrary other insertions.
    The quotient label space of <math|S> is
    <math|F<rsub|d>=<math-up|Label><rsub|d>/N<rsub|d><around|(|S|)>>, and
    <math|\<cal-F\>> is their union, into which <math|F<rsub|d>> embeds by
    <math|<math-up|pin><rsub|d>>.

    <item><math|T<around|(|x;v|)>> is the Euclidean <math|n>-point function
    of <math|T> at a non-coincident configuration <math|x>, read on tags
    <math|v<rsub|k>=<around|(|d<rsub|k>,v<rsub|k>|)>> of <math|S>. For a
    tuple of tags, <math|<math-up|pin><space|0.17em>v> means
    <math|<around|(|<math-up|pin><rsub|d<rsub|k>>v<rsub|k>|)><rsub|k>>; the
    insertion into <math|\<cal-F\>> is implicit in <math|\<psi\><rsub|v>>. It
    is meaningful when <math|T> <em|respects> <math|S>, i.e.
    <math|N<rsub|d><around|(|S|)>\<subseteq\>N<rsub|d><around|(|T|)>>.

    <item><math|\<cal-H\>> is the OS Hilbert space of <math|T> for the time
    axis. It carries the vacuum <math|\<Omega\>>, a Hamiltonian
    <math|H\<geqslant\>0> with holomorphic contraction semigroup
    <math|e<rsup|-\<zeta\>*H>> (<math|<math-up|Re><space|0.17em>\<zeta\>\<gtr\>0>),
    the spatial translations <math|U<around|(|<wide|a|\<vect\>>|)>>, and a
    unitary space-time translation group.

    <item>A <em|spread> <math|A> gives slab operators
    <math|A<rsub|d><around|(|w|)>> for words <math|w> in a time slab of width
    <math|d> (V.1).

    <item>A differential plan <math|P> consists of linear maps
    <math|\<iota\><rsub|d,e>:F<rsub|d>\<to\>F<rsub|e>> for
    <math|d\<leqslant\>e> and derivative maps
    <math|\<partial\><rsub|d,a>:F<rsub|d>\<to\>F<rsub|d+1>>. Its inclusions
    are <em|compatible with a table> <math|Q> if replacing any tag
    <math|<around|(|d,v|)>> by <math|<around|(|e,\<iota\><rsub|d,e>*v|)>>
    leaves <math|Q<around|(|x;v|)>> unchanged at every non-coincident
    configuration, with arbitrary other tags. Its derivatives are compatible
    with <math|Q> if inserting <math|\<partial\><rsub|d,a>*v> differentiates
    the corresponding correlation in that slot and coordinate. Writing
    <math|C<rsub|d>> for label conjugation and <math|M<rsub|d><around|(|s|)>>
    for a signed coordinate symmetry, <math|P> is <em|oriented> if its
    inclusions commute with <math|C<rsub|d>,M<rsub|d><around|(|s|)>>, its
    derivatives commute with conjugation, and
  </itemize-minus>

  <\equation*>
    M<rsub|d+1><around|(|s|)>*\<partial\><rsub|d,b>=<big|sum><rsub|a>s<rsub|a*b>*<space|0.17em>\<partial\><rsub|d,a>*M<rsub|d><around|(|s|)>.
  </equation*>

  The induced star satisfies <math|J<math-up|pin><rsub|d>v=<math-up|pin><rsub|d><around|(|M<rsub|d><around|(|r<rsub|0>|)>*C<rsub|d>*v|)>>,
  where <math|r<rsub|0>> is time reflection.

  <em|Continuations and boundary families.>

  <\itemize-minus>
    <item>A <strong|continuation> <math|F> is a family of maps
    <math|F<rsub|n><around|(|z;<wide|x|\<vect\>>|)>>,
    <math|z\<in\>\<bbb-C\><rsup|n>>, <math|<wide|x|\<vect\>>\<in\><around|(|\<bbb-R\><rsup|3>|)><rsup|n>>,
    each multilinear on <math|\<cal-F\><rsup|n>>. We write

    <\itemize-minus>
      <item><math|F<rsup|y><rsub|n><around|(|x|)>=F<rsub|n><around|(|x<rsup|0>+i*y;<wide|x|\<vect\>>|)>>,
      with real times <math|x<rsup|0><rsub|k>> and heights <math|y<rsub|k>>;

      <item><math|\<psi\><rsub|v><around|(|y;f|)>=<big|int>F<rsup|y><rsub|n><around|(|x|)><around|(|v|)>*f<around|(|x|)>*<space|0.17em>d*x>.
    </itemize-minus>

    <item>A <strong|boundary family> <math|W> is a family of multilinear maps
    <math|W<rsub|n>:\<cal-F\><rsup|n>\<to\>\<cal-S\><rprime|'><around|(|\<bbb-R\><rsup|4*n>|)>>.

    <\itemize-minus>
      <item>For a word <math|b=<around|(|<around|(|u<rsub|1>,f<rsub|1>|)>,\<ldots\>,<around|(|u<rsub|n>,f<rsub|n>|)>|)>>,
      with <math|u<rsub|k>\<in\>\<cal-F\>> and
      <math|f<rsub|k>\<in\>\<cal-S\><around|(|\<bbb-R\><rsup|4>|)>>, we set
      <math|W<around|(|b|)>=W<rsub|n><around|(|u|)>*<around|(|f<rsub|1>\<otimes\>\<ldots\>\<otimes\>f<rsub|n>|)>>.

      <item>For an antilinear map <math|J> on <math|\<cal-F\>> we set
      <math|b<rsup|\<ast\>>=<around|(|<around|(|J*u<rsub|n>,<wide|f|\<bar\>><rsub|n>|)>,\<ldots\>,<around|(|J*u<rsub|1>,<wide|f|\<bar\>><rsub|1>|)>|)>>
      and <math|<around|\<langle\>|b,c|\<rangle\>><rsub|W>=W*<around|(|b<rsup|\<ast\>>*c|)>>.
    </itemize-minus>
  </itemize-minus>

  The thirty reconstruction statements are conditional results for arbitrary
  tables, OS data and continuations. VIII.1 applies them to the mixed limit
  table and to a selected phase (Ÿ4.8).

  <strong|Proposition V.2.1 (the reconstruction bundle).> The statements A16
  and C01\UC29 (V.2.2\UV.2.8) hold simultaneously. Each retains its own
  hypotheses. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Integrated.reconstructionArcs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L182-L212>,
  <hlink|<verbatim|Bid.Arcs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Arena.lean#L15-L45>.

  <strong|Proposition V.2.2 (strict-time continuation; C01\UC03).> For the
  tables <math|S,T>, the OS chamber <math|V> with Hilbert space
  <math|\<cal-H\>>, a differential plan <math|P> and a spread <math|A>,
  assume the slab hypotheses (H):

  <\itemize-minus>
    <item><math|S> and <math|T> satisfy the Euclidean hierarchy;

    <item><math|T> respects <math|S>;

    <item>the inclusions of <math|P> are compatible with <math|S> and
    <math|T>, and its derivatives with <math|T>;

    <item>the spread <math|A> obeys the slab bound (SB) (Ÿ2), is smooth in
    the insertion positions on every valid slab, and differentiating an
    insertion replaces its label by the corresponding derivative under
    <math|P>.
  </itemize-minus>

  Then:

  (a) (C01) There are linear maps <math|B<rsub|p>:\<cal-F\>\<to\>\<cal-B\><around|(|\<cal-H\>|)>>,
  <math|p\<geqslant\>0>, such that:

  <\itemize-minus>
    <item>for <math|p\<gtr\>0>, <math|B<rsub|p><around|(|<math-up|pin><rsub|d>v|)>>
    is the slab operator of width <math|2*p> of the one-point word made of
    the representative of <math|v> placed at
    <math|<around|(|<wide|0|\<vect\>>,p|)>>;

    <item>for every <math|u\<in\>\<cal-F\>> there are <math|C\<gtr\>0> and
    <math|a\<in\>\<bbb-N\>> with <math|<around|\<\|\|\>|B<rsub|p><around|(|u|)>|\<\|\|\>>\<leqslant\>C*<space|0.17em>p<rsup|-a>>
    for <math|0\<less\>p\<less\>1>.
  </itemize-minus>

  (b) (C02) Let <math|B> be such a family. Put

  <\equation*>
    G<rsub|p><around|(|w,<wide|a|\<vect\>>|)>=e<rsup|-<around|(|<math-up|Im><space|0.17em>w-2*p|)>*H>*<space|0.17em>e<rsup|i<space|0.17em><math-up|Re><space|0.17em>w*<space|0.17em>H>*<space|0.17em>U<around|(|<wide|a|\<vect\>>|)>,
  </equation*>

  <\equation*>
    M<rsub|p><around|(|z;<wide|x|\<vect\>>|)><around|(|v|)>=<around*|\<langle\>|\<Omega\>,<space|0.17em>B<rsub|p><around|(|v<rsub|1>|)>*<space|0.17em>G<rsub|p><around|(|z<rsub|2>-z<rsub|1>,<wide|x|\<vect\>><rsub|2>-<wide|x|\<vect\>><rsub|1>|)>*<space|0.17em>B<rsub|p><around|(|v<rsub|2>|)>*\<cdots\>*G<rsub|p><around|(|z<rsub|n>-z<rsub|n-1>,<wide|x|\<vect\>><rsub|n>-<wide|x|\<vect\>><rsub|n-1>|)>*<space|0.17em>B<rsub|p><around|(|v<rsub|n>|)>*\<Omega\>|\<rangle\>>.
  </equation*>

  For <math|n=0> set <math|M<rsub|p>=<around|\<\|\|\>|\<Omega\>|\<\|\|\>><rsup|2>>.
  Call <math|p> <em|admissible> for <math|z> if <math|0\<less\>p\<less\>1>
  and <math|<math-up|Im><around|(|z<rsub|j>-z<rsub|i>|)>\<gtr\>4*p> for
  <math|i\<less\>j>. Then:

  <\itemize-minus>
    <item><math|M<rsub|p>=M<rsub|q>> whenever <math|p> and <math|q> are both
    admissible for <math|z>;

    <item><math|M<rsub|p><around|(|i*y;<wide|x|\<vect\>>|)><around|(|<math-up|pin><space|0.17em>v|)>=T<around*|(|<around|(|<wide|x|\<vect\>><rsub|k>,y<rsub|k>|)><rsub|k>;v|)>>
    for <math|y\<in\>E<rsub|n>> and <math|p> admissible.
  </itemize-minus>

  (c) (C03, from (b) alone) There is a continuation <math|F> with
  <math|F<rsub|n><around|(|z;<wide|x|\<vect\>>|)>=M<rsub|p><around|(|z;<wide|x|\<vect\>>|)>>
  for <math|z\<in\>\<Sigma\><rsub|n>> and every admissible <math|p>,
  satisfying:

  <\itemize-minus>
    <item>(SC) for each fixed label tuple <math|v>,
    <math|<around|(|z,<wide|x|\<vect\>>|)>\<mapsto\>F<rsub|n><around|(|z;<wide|x|\<vect\>>|)><around|(|v|)>>
    is continuous on <math|\<Sigma\><rsub|n>\<times\><around|(|\<bbb-R\><rsup|3>|)><rsup|n>>
    and holomorphic in <math|z\<in\>\<Sigma\><rsub|n>>, and
    <math|F<rsub|n><around|(|i*y;<wide|x|\<vect\>>|)><around|(|<math-up|pin><space|0.17em>v|)>=T<around|(|<around|(|<wide|x|\<vect\>><rsub|k>,y<rsub|k>|)><rsub|k>;v|)>>
    for <math|y\<in\>E<rsub|n>>;

    <item>(PG) for all <math|n> and <math|v> there are
    <math|m\<in\>\<bbb-N\>> and <math|C\<geqslant\>0> with
    <math|<around|\<lvert\>|F<rsup|y><rsub|n><around|(|x|)><around|(|v|)>|\<rvert\>>\<leqslant\>C*<space|0.17em>k<rsup|-m>>
    for all <math|x>, all <math|k\<in\><around|(|0,1|]>>, and all <math|y>
    with <math|y<rsub|j>-y<rsub|i>\<geqslant\>k> for <math|i\<less\>j>.
  </itemize-minus>

  <em|Status:> theorem. The derivative and spatial regularity hypotheses
  remain part of the stated input package. <em|Lean:>

  <\itemize-minus>
    <item><hlink|<verbatim|C01.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C01.lean#L99-L117>,
    <hlink|<verbatim|C02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C02.lean#L168-L177>,
    <hlink|<verbatim|C03.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C03.lean#L245-L248>.

    <item>Statements <hlink|<verbatim|Bid.C01>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L37-L38>,
    <hlink|<verbatim|Bid.C02>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L47-L48>,
    <hlink|<verbatim|Bid.C03>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L56-L57>.

    <item>Hypothesis and conclusion structures:
    <hlink|<verbatim|Pantry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L23-L30>,
    <hlink|<verbatim|Piece>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L33-L35>,
    <hlink|<verbatim|Slice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L40-L45>,
    <hlink|<verbatim|Direct>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L50-L54>.

    <item>Compatibility definitions: <hlink|<verbatim|DiffPlan.Inclusions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L58-L60>,
    <hlink|<verbatim|DiffPlan.Orientation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L66-L72>.

    <item>Definitions <hlink|<verbatim|Small>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Tall.lean#L19-L20>,
    <hlink|<verbatim|Small.matrix>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Tall.lean#L49-L51>,
    <hlink|<verbatim|Small.rated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Tall.lean#L62-L63>,
    <hlink|<verbatim|Small.Defined>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Tall.lean#L66-L67>,
    <hlink|<verbatim|Waves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Boundary/Contour.lean#L57-L58>,
    <hlink|<verbatim|Waves.Region>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Boundary/Contour.lean#L71-L77>,
    <hlink|<verbatim|Waves.Breathes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Ridge.lean#L72-L73>.
  </itemize-minus>

  <strong|Proposition V.2.3 (Cauchy\URiemann identities and tempered boundary
  values; C04).> Let <math|F> satisfy (SC) and (PG).

  (a) (C04) Three properties hold:

  <\itemize-minus>
    <item>(I) <math|x\<mapsto\>F<rsup|y><rsub|n><around|(|x|)><around|(|v|)>*f<around|(|x|)>>
    is integrable for <math|y\<in\>E<rsub|n>> and
    <math|f\<in\>\<cal-S\><around|(|\<bbb-R\><rsup|4*n>|)>>.

    <item>(HC) <math|y\<mapsto\>\<psi\><rsub|v><around|(|y;f|)>> is
    continuous on <math|E<rsub|n>>.

    <item>(CR) For <math|a\<in\>\<bbb-R\><rsup|n>> and
    <math|y+s*a\<in\>E<rsub|n>>,
  </itemize-minus>

  <\equation*>
    <tfrac|d|d*t>\<psi\><rsub|v><around|(|y+t*a;f|)><mid|\|><rsub|t=s>=\<psi\><rsub|v><around*|(|y+s*a;-i*<space|0.17em>\<partial\><rsub|<wide*|a|\<bar\>>>*f|)>,<space|2em>\<partial\><rsub|<wide*|a|\<bar\>>>=<with|math-display|false|<big|sum><rsub|k>a<rsub|k>*<space|0.17em>\<partial\>/\<partial\>*x<rsup|0><rsub|k>.>
  </equation*>

  (b) If <math|F> satisfies (I), (HC), (CR) and (PG), there is a boundary
  family <math|W> with (BV): the integrands defining
  <math|\<psi\><rsub|v><around|(|y;f|)>> are integrable for
  <math|y\<in\>E<rsub|n>>, and <math|\<psi\><rsub|v><around|(|y;f|)>\<to\>W<rsub|n><around|(|v|)><around|(|f|)>>
  as <math|y\<to\>0> within <math|E<rsub|n>>, for all <math|n>, <math|v> and
  <math|f>. In particular, the radial boundary limit
  (BV<math|<rsub|<math-up|ray>>>) holds: <math|\<psi\><rsub|v><around|(|\<varepsilon\>*u;f|)>\<to\>W<rsub|n><around|(|v|)><around|(|f|)>>
  as <math|\<varepsilon\>*\<downarrow\>*0> for each <math|u\<in\>E<rsub|n>>.

  <em|Status:> theorem. Part (b) lives in Shift/Breath and Shift/Osc, which
  are filed under VI.1. It is used through
  <hlink|<verbatim|Show.Rhythm.opens>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Theatre.lean#L29-L31>
  (VIII.1). The boundary family is an output of the reconstruction.
  <em|Lean:>

  <\itemize-minus>
    <item><hlink|<verbatim|C04.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C04.lean#L221-L222>,
    <hlink|<verbatim|Bid.C04>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L59-L60>.

    <item><hlink|<verbatim|Waves.Bounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Ridge.lean#L83-L84>,
    <hlink|<verbatim|Waves.Lines>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Ridge.lean#L80-L81>,
    <hlink|<verbatim|Waves.Along>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Ridge.lean#L86>.

    <item><hlink|<verbatim|Waves.jointly>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Osc.lean#L83-L86>,
    <hlink|<verbatim|Waves.NonTangentialFree>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Boundary/Contour.lean#L96-L100>,
    <hlink|<verbatim|Waves.Opens>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Boundary/Contour.lean#L89-L93>,
    <hlink|<verbatim|Waves.exposed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Boundary/Contour.lean#L102-L112>.
  </itemize-minus>

  <strong|Proposition V.2.4 (Laplace identity and spectral support; C05,
  C06).> Let <math|F> satisfy (SC), (PG), (CR) and (HC), and have boundary
  family <math|W> (BV).

  (a) (C05; Laplace identity (L)) For <math|y\<in\>E<rsub|n>> and compactly
  supported <math|f\<in\>\<cal-S\><around|(|\<bbb-R\><rsup|4*n>|)>>,

  <\equation*>
    W<rsub|n><around|(|v|)><around|(|<wide|f|^>|)>=\<psi\><rsub|v><around*|(|y;<wide|e<rsup|<around|\<langle\>|<wide*|y|\<bar\>>,\<cdot\>|\<rangle\>>>*f|^>|)>.
  </equation*>

  (b) (C06, from (SC), (PG), (I) and (a))
  <math|\<cal-F\>*W<rsub|n><around|(|v|)>> is supported in

  <\equation*>
    \<cal-P\><rsub|n>=<around*|{|p:<with|math-display|false|<around*|\<nobracket\>|<big|sum><rsub|k>y<rsub|k>*p<rsup|0><rsub|k>\<geqslant\>0<text|
    for every nondecreasing >y|}>=<around*|{|p:<big|sum><rsub|k>p<rsup|0><rsub|k>=0,<big|sum><rsub|k\<geqslant\>j>p<rsup|0><rsub|k>\<geqslant\>0\<forall\>j|}>.>|\<nobracket\>>
  </equation*>

  (c) (Lorentz covariance) If <math|W> also satisfies (Cov) (V.2.5), then
  <math|\<cal-F\>*W<rsub|n><around|(|v|)>> is supported in

  <\equation*>
    \<cal-V\><rsub|n>=<big|cap><rsub|\<Lambda\>\<in\>\<cal-L\><rsup|\<uparrow\>><rsub|+>><wide|\<Lambda\>|~><rsup|-1>*\<cal-P\><rsub|n>,
  </equation*>

  where <math|<wide|\<Lambda\>|~>=<math-ss|r>\<Lambda\><math-ss|r>> is the
  dual action (<math|<math-ss|r>> reverses the spatial components). Every
  <math|p\<in\>\<cal-V\><rsub|n>> has <math|<big|sum><rsub|k>p<rsub|k>=0> and
  <math|<big|sum><rsub|k\<geqslant\>j>p<rsub|k>\<in\><wide|V|\<bar\>><rsub|+>>
  for all <math|j>. This is the cone-support hypothesis of C14\UC16 and C19.

  <em|Status:> theorem. (SC) is not used in C05 or C06, and (I) is not used
  in C06. <em|Lean:>

  <\itemize-minus>
    <item><hlink|<verbatim|C05.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C05.lean#L205-L230>,
    <hlink|<verbatim|C06.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C06.lean#L136-L157>.

    <item>Statements <hlink|<verbatim|Bid.C05>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L62-L63>,
    <hlink|<verbatim|Bid.C06>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L65-L66>.

    <item><hlink|<verbatim|Waves.during>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Sol.lean#L101-L102>,
    <hlink|<verbatim|Surface.cone_tests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Sol.lean#L106>,
    <hlink|<verbatim|half>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Closing.lean#L20>,
    <hlink|<verbatim|coneM>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Closing.lean#L23>,
    <hlink|<verbatim|tents>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Closing.lean#L106-L121>,
    <hlink|<verbatim|Bid.cones>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L39>.
  </itemize-minus>

  <strong|Proposition V.2.5 (Poincaré covariance; A16, C07, C08, C09, C28).>

  <em|Data.>

  <\itemize-minus>
    <item>A rotation structure <math|R> on <math|S> (VI.1): an action of
    <math|O<around|(|4|)>> on the <math|F<rsub|d>>, with Lie action
    <math|\<rho\>> of <math|<with|math-font|Euler|s*o><around|(|4|)>>. It is
    subject to Euclidean covariance (the functions <math|T<around|(|x;v|)>>
    are <math|O<around|(|4|)>>-covariant) and the rotation laws of VI.1.

    <item>A spin structure <math|K>: representations
    <math|K<around|(|\<Lambda\>|)>> of <math|\<cal-L\><rsup|\<uparrow\>><rsub|+>>
    on <math|\<cal-F\>> and on each <math|F<rsub|d>>, with spin compatibility
    with <math|R>, relative to the real structure of <math|S>, which consists
    of:

    <\itemize-minus>
      <item>compatibility with <math|<math-up|pin><rsub|d>>;

      <item>the representation property and continuity on each
      finite-dimensional level;

      <item><math|<frac|d|d*t>*K<rsub|d><around|(|\<Lambda\><rsub|a><around|(|t|)>|)>\|<rsub|t=0>=-i*\<rho\>*<around|(|e<rsub|0>\<wedge\>e<rsub|a>|)>>;

      <item><math|K=R> on spatial rotations;

      <item>commutation with the reflection adjoint.
    </itemize-minus>
  </itemize-minus>

  (a) (A16) <math|\<cal-L\><rsup|\<uparrow\>><rsub|+>> is generated, as an
  abstract group, by the spatial rotations and the coordinate boosts.

  (b) (C08, no hypotheses) For all <math|n> and
  <math|f\<in\>\<cal-S\><around|(|\<bbb-R\><rsup|4*n>|)>>:

  <\itemize-minus>
    <item><math|g\<mapsto\>g<rsub|\<ast\>>*f> is continuous from
    <math|\<cal-P\>> into <math|\<cal-S\><around|(|\<bbb-R\><rsup|4*n>|)>>;

    <item><math|t<rsup|-1>*<around|(|\<Lambda\><rsub|a><around|(|t|)><rsub|\<ast\>>*f-f|)>\<to\>-D<rsub|a>*f>
    in <math|\<cal-S\>> as <math|t\<to\>0>, where
    <math|D<rsub|a>=<big|sum><rsub|k><around|(|x<rsup|a><rsub|k>*\<partial\><rsub|x<rsup|0><rsub|k>>+x<rsup|0><rsub|k>*\<partial\><rsub|x<rsup|a><rsub|k>>|)>>.
  </itemize-minus>

  (c) (C07) Assume <math|S> and <math|T> satisfy the hierarchy, the
  inclusions of <math|P> are compatible with <math|S>, <math|T> respects
  <math|S>, and Euclidean covariance, the rotation laws of VI.1 and spin
  compatibility hold. Then every <math|F> with (SC), (PG), (I), (CR) and (HC)
  satisfies the boost identity (B<math|<rsub|y>>): for all
  <math|y\<in\>E<rsub|n>>, tags <math|v>, spatial axes <math|a> and
  <math|f\<in\>\<cal-S\><around|(|\<bbb-R\><rsup|4*n>|)>>,

  <\equation*>
    <big|sum><rsub|k=1><rsup|n>\<psi\><rsub|v<rsup|<around|(|k|)>>><around|(|y;f|)>=\<psi\><rsub|v><around*|(|y;D<rsub|a,y>*f|)>,<space|2em>D<rsub|a,y>=<big|sum><rsub|k><around*|(|x<rsup|a><rsub|k>*<space|0.17em>\<partial\><rsub|x<rsup|0><rsub|k>>+<around|(|x<rsup|0><rsub|k>+i*y<rsub|k>|)>*<space|0.17em>\<partial\><rsub|x<rsup|a><rsub|k>>|)>.
  </equation*>

  Here <math|v<rsup|<around|(|k|)>>> is <math|v> with <math|v<rsub|k>>
  replaced by <math|-i*\<rho\>*<around|(|e<rsub|0>\<wedge\>e<rsub|a>|)>*v<rsub|k>>.
  Among the table, plan and spin inputs, the boost argument uses the
  Euclidean hierarchy and rotation data.

  (d) (C09) Assume A16, C08 and the same table, plan, rotation and spin
  hypotheses as in (c). If <math|F> satisfies (SC), (PG) and
  (B<math|<rsub|y>>) and has boundary family <math|W> (BV), then <math|W>
  satisfies (Cov):

  <\itemize-minus>
    <item><math|W<rsub|n><around|(|v|)><around|(|f|(>\<cdot\>-a))=W<rsub|n><around|(|v|)><around|(|f|)>>
    for <math|a\<in\>\<bbb-R\><rsup|4>>;

    <item><math|W<rsub|n>*<around|(|K<around|(|\<Lambda\>|)>*v|)>*<around|(|\<Lambda\><rsub|\<ast\>>*f|)>=W<rsub|n><around|(|v|)><around|(|f|)>>
    for all <math|\<Lambda\>\<in\>\<cal-L\><rsup|\<uparrow\>><rsub|+>>.
  </itemize-minus>

  (e) (C28) Assume C08, <math|S> symmetric, the inclusions of <math|P>
  compatible with <math|S>, spin compatibility, and <math|J> the induced
  star. Let <math|g=<around|(|a,\<Lambda\>|)>> act on words letterwise by
  <math|<around|(|u,f|)>\<mapsto\><around|(|K<around|(|\<Lambda\>|)>*u,g<rsub|\<ast\>>*f|)>>.
  Then (Cov) implies:

  <\itemize-minus>
    <item>(invariance of the word Gram form)
    <math|<around|\<langle\>|g\<cdot\>b,g\<cdot\>c|\<rangle\>><rsub|W>=<around|\<langle\>|b,c|\<rangle\>><rsub|W>>;

    <item>(continuity of word matrix elements)
    <math|g\<mapsto\><around|\<langle\>|b,g\<cdot\>c|\<rangle\>><rsub|W>> is
    continuous.
  </itemize-minus>

  <em|Status:> theorem. <em|Lean:>

  <\itemize-minus>
    <item><hlink|<verbatim|A16.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A16.lean#L91-L101>
    (statement <hlink|<verbatim|Bid.A16>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L116>,
    <hlink|<verbatim|beamGens>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L114-L115>).

    <item><hlink|<verbatim|C07.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C07.lean#L53-L66>,
    <hlink|<verbatim|C08.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C08.lean#L285-L286>,
    <hlink|<verbatim|C09.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C09.lean#L403-L442>,
    <hlink|<verbatim|C28.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C28.lean#L134-L143>.

    <item>Statements <hlink|<verbatim|Bid.C07>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L95-L97>,
    <hlink|<verbatim|Bid.C08>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L99-L101>,
    <hlink|<verbatim|Bid.C09>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L103-L106>,
    <hlink|<verbatim|Bid.C28>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Grow.lean#L50-L52>.

    <item>Definitions <hlink|<verbatim|Boosty>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L92-L93>,
    <hlink|<verbatim|inclined>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L84-L85>,
    <hlink|<verbatim|kick>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L87-L88>,
    <hlink|<verbatim|Urs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Closing.lean#L83-L85>,
    <hlink|<verbatim|Spins.Descends>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Star.lean#L26-L35>,
    <hlink|<verbatim|Surface.Transforms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Motion.lean#L23-L24>,
    <hlink|<verbatim|Surface.Strong>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Motion.lean#L26-L27>.

    <item>Rotation laws: <hlink|<verbatim|Table.Rotation.Laws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L31-L42>.
  </itemize-minus>

  <strong|Proposition V.2.6 (Fourier\ULaplace continuation in the forward
  tube; C10\UC16).>

  <em|Definitions.>

  <\itemize-minus>
    <item>Tube and cones:

    <\itemize-minus>
      <item><math|V<rsup|+><rsub|n>=<around|{|\<eta\>\<in\>\<bbb-R\><rsup|4*n>:\<eta\><rsub|k+1>-\<eta\><rsub|k>\<in\>V<rsub|+>,1\<leqslant\>k\<less\>n|}>>
      (the open imaginary-part cone);

      <item><math|<wide|V|\<bar\>><rsup|+><rsub|n>> is the analogue with
      <math|<wide|V|\<bar\>><rsub|+>> (the closed imaginary-part cone);

      <item><math|\<cal-T\><rsub|n>=<around|{|z\<in\>\<bbb-C\><rsup|4*n>:<math-up|Im><space|0.17em>z\<in\>V<rsup|+><rsub|n>|}>>
      (the tube). This is the forward tube in absolute coordinates; there is
      no condition on <math|<math-up|Im><space|0.17em>z<rsub|1>>.
    </itemize-minus>

    <item>A <em|cutoff> <math|\<chi\><rsub|n>> is a real smooth function
    whose derivatives are all polynomially bounded, equal to <math|1> on the
    <math|1>-neighbourhood of <math|\<cal-V\><rsub|n>>, with closed support
    contained in its open <math|3>-neighbourhood.

    <item><em|Fourier\ULaplace continuation:>
  </itemize-minus>

  <\equation*>
    \<cal-W\><rsub|n><around|(|v|)><around|(|z|)>=<around|(|2*\<pi\>|)><rsup|-4*n>*<space|0.17em><around|(|\<cal-F\>*W<rsub|n><around|(|v|)>|)>*<around*|(|e<rsup|i<around|\<langle\>|\<cdummy\>,z|\<rangle\>>>*\<chi\><rsub|n>|)>,<space|2em>z\<in\>\<cal-T\><rsub|n>.
  </equation*>

  <\itemize-minus>
    <item><em|Partial boundary values:> <math|W<rsub|n><around|(|v|)><around|[|\<eta\>|]><around|(|f|)>=<around|(|\<cal-F\>*W<rsub|n><around|(|v|)>|)>*<around*|(|e<rsup|-<around|\<langle\>|\<eta\>,\<cdot\>|\<rangle\>>>*\<chi\><rsub|n>*<space|0.17em><wide|f|\<check\>>|)>>,
    formally <math|W<rsub|n><around|(|v|)>*<around|(|\<cdummy\>+i*\<eta\>|)>>.
  </itemize-minus>

  <em|Statements.>

  (a) (C10, cone duality) For <math|p\<in\>\<cal-V\><rsub|n>> and
  <math|\<eta\>\<in\><wide|V|\<bar\>><rsup|+><rsub|n>>,
  <math|<around|\<langle\>|p,\<eta\>|\<rangle\>>\<geqslant\>0>. For
  <math|\<eta\>\<in\>V<rsup|+><rsub|n>> there is <math|c\<gtr\>0> with
  <math|<around|\<langle\>|p,u|\<rangle\>>\<geqslant\>c<around|\<lvert\>|p|\<rvert\>>>
  for all <math|p\<in\>\<cal-V\><rsub|n>> and all <math|u> near
  <math|\<eta\>>.

  (b) (C11) Cutoffs exist.

  (c) (C12) Given (a), every cutoff satisfies the damping properties (D):

  <\itemize-minus>
    <item><math|e<rsup|-<around|\<langle\>|\<eta\>,\<cdot\>|\<rangle\>>>*\<chi\><rsub|n>>
    has temperate growth for <math|\<eta\>\<in\><wide|V|\<bar\>><rsup|+><rsub|n>>;

    <item><math|\<eta\>\<mapsto\>e<rsup|-<around|\<langle\>|\<eta\>,\<cdot\>|\<rangle\>>>*\<chi\><rsub|n>*f>
    is continuous from <math|<wide|V|\<bar\>><rsup|+><rsub|n>> into
    <math|\<cal-S\>>.
  </itemize-minus>

  (d) (C13) Given (a), <math|\<cal-W\><rsub|n><around|(|v|)>> is holomorphic
  on <math|\<cal-T\><rsub|n>>.

  (e) (C14, the integral representation) Given (c), for
  <math|\<eta\>\<in\>V<rsup|+><rsub|n>> the identity
  <math|W<rsub|n><around|(|v|)><around|[|\<eta\>|]><around|(|f|)>=<big|int>\<cal-W\><rsub|n><around|(|v|)>*<around|(|x+i*\<eta\>|)>*f<around|(|x|)>*<space|0.17em>d*x>
  holds, with integrable integrand.

  (f) (C15) Suppose:

  <\itemize-minus>
    <item>(c) holds and <math|<math-up|supp>\<cal-F\>*W\<subseteq\>\<cal-V\><rsub|n>>;

    <item>(d) and (e) hold;

    <item><math|F> satisfies (SC), (PG), (I) and the Laplace identity
    V.2.4(a).

    Then <math|\<cal-W\><rsub|n><around|(|v|)>*<around|(|x+i<wide*|y|\<bar\>>|)>=F<rsup|y><rsub|n><around|(|x|)><around|(|v|)>>
    for all <math|y\<in\>E<rsub|n>> and <math|x\<in\>\<bbb-R\><rsup|4*n>>.
    Together with (d) and (e) this is (TC).
  </itemize-minus>

  (g) (C16) Given <math|<math-up|supp>\<cal-F\>*W\<subseteq\>\<cal-V\><rsub|n>>
  and (Cov), <math|\<cal-W\><rsub|n><around|(|v|)><around|(|z|)>=\<cal-W\><rsub|n>*<around|(|K<around|(|\<Lambda\>|)>*v|)>*<around|(|\<Lambda\>*z|)>>
  for <math|z\<in\>\<cal-T\><rsub|n>> and
  <math|\<Lambda\>\<in\>\<cal-L\><rsup|\<uparrow\>><rsub|+>>, with
  <math|\<Lambda\>> acting on real and imaginary parts.

  <em|Status:> theorem. Several listed hypotheses are not used (Ÿ5).
  <em|Lean:>

  <\itemize-minus>
    <item><hlink|<verbatim|C10>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C10.lean#L71>,
    <hlink|<verbatim|C11>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C11.lean#L57-L100>,
    <hlink|<verbatim|C12>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C12.lean#L150-L169>,
    <hlink|<verbatim|C13>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C13.lean#L127-L132>,
    <hlink|<verbatim|C14>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C14.lean#L257-L260>,
    <hlink|<verbatim|C15>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C15.lean#L120-L131>,
    <hlink|<verbatim|C16>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C16.lean#L75-L91>
    (all answer theorems).

    <item>Statements <hlink|<verbatim|Bid.C10>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L20>,
    <hlink|<verbatim|C11>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L22>,
    <hlink|<verbatim|C12>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L24>,
    <hlink|<verbatim|C13>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L27-L29>,
    <hlink|<verbatim|C14>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L41-L42>,
    <hlink|<verbatim|C15>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L44-L46>,
    <hlink|<verbatim|C16>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L53-L54>.

    <item>Definitions <hlink|<verbatim|Wide>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L16-L18>,
    <hlink|<verbatim|Income>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L33-L37>,
    <hlink|<verbatim|wave_turn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L50-L51>,
    <hlink|<verbatim|Blanket>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Sol.lean#L60-L64>,
    <hlink|<verbatim|Blanket.Modified>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Sol.lean#L70-L72>,
    <hlink|<verbatim|Blanket.partialD>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Sol.lean#L78-L80>,
    <hlink|<verbatim|Surface.Aurora>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Sol.lean#L109-L111>,
    <hlink|<verbatim|Aurora.emit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Sol.lean#L116>,
    <hlink|<verbatim|Aurora.FullBody>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Sol.lean#L118-L124>,
    <hlink|<verbatim|tube>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Sol.lean#L45>,
    <hlink|<verbatim|shores>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Closing.lean#L70>,
    <hlink|<verbatim|fields>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Closing.lean#L71>.
  </itemize-minus>

  <strong|Proposition V.2.7 (locality; C17\UC21, C27).>

  <em|Setting.>

  <\itemize-minus>
    <item>Let <math|n\<geqslant\>2> and let <math|Q=<around|(|i,i+1|)>> be an
    adjacent pair. <math|s> is the transposition of <math|i> and <math|i+1>,
    and <math|\<sigma\>> swaps slots <math|i> and <math|i+1> of real,
    imaginary or complex configurations.

    <item><math|\<Gamma\><rsub|Q>=<around|{|x:x<rsub|i+1>-x<rsub|i><text|
    spacelike>|}>>.

    <item>A height profile <math|y> is a <em|spectator profile> for <math|Q>
    if <math|y<rsub|i>=y<rsub|i+1>> and <math|y<rsub|k>\<less\>y<rsub|l>> for
    all other pairs <math|k\<less\>l>. Then <math|<wide*|y|\<bar\>>> and
    <math|\<sigma\><wide*|y|\<bar\>>> lie in
    <math|<wide|V|\<bar\>><rsup|+><rsub|n>>, and for every real <math|x> the
    point <math|x+i<wide*|y|\<bar\>>> lies in the closures of
    <math|\<cal-T\><rsub|n>> and of <math|\<sigma\><rsup|-1>*\<cal-T\><rsub|n>>.

    <item><math|\<Lambda\><rsub|e><around|(|\<zeta\>|)>> is the complexified
    boost of rapidity <math|\<zeta\>\<in\>\<bbb-C\>> along a unit spatial
    direction <math|e>.
  </itemize-minus>

  <em|Statements.>

  (a) (C17) There are spectator profiles <math|y<rsub|m>\<to\>0> with the
  following property. For every <math|m> and every
  <math|x\<in\>\<Gamma\><rsub|Q>> there are a unit direction <math|e>,
  <math|t\<gtr\>0>, and neighbourhoods <math|U<rsub|<math-up|o>>,U<rsub|<math-up|t>>>
  of <math|x+i<wide*|y<rsub|m>|\<bar\>>> such that, for every
  <math|b\<in\><around|[|0,t|]>>:

  <\itemize-minus>
    <item><math|\<Lambda\><rsub|e>*<around|(|i*b|)>*w\<in\>\<cal-T\><rsub|n>>
    for all <math|w\<in\>U<rsub|<math-up|o>>\<cap\>\<cal-T\><rsub|n>>;

    <item><math|\<sigma\>*\<Lambda\><rsub|e>*<around|(|-i*b|)>*w\<in\>\<cal-T\><rsub|n>>
    for all <math|w\<in\>U<rsub|<math-up|t>>\<cap\>\<sigma\><rsup|-1>*\<cal-T\><rsub|n>>;

    <item>the same holds at <math|b=t> for
    <math|w=x+i<wide*|y<rsub|m>|\<bar\>>> itself.

    The profiles are <math|y<rsub|m>=<around|(|m+1|)><rsup|-1>*d>, where
    <math|d<rsub|k>=k-1> except that <math|d<rsub|i+1>=i-1>. Thus the entries
    at <math|i> and <math|i+1> agree; all later entries keep their original
    values.
  </itemize-minus>

  (b) (C18) Under spin compatibility, <math|t\<mapsto\>K<rsub|d><around|(|\<Lambda\><rsub|e><around|(|t|)>|)>>
  extends to an entire function of <math|t\<in\>\<bbb-C\>>, for each <math|d>
  and <math|e>.

  (c) (C19) Assume (TC), cone support V.2.4(c), spin compatibility, <math|S>
  symmetric, the inclusions of <math|P> compatible with <math|S>, (b), and
  the real covariance V.2.6(g). Let <math|v> be labels, <math|Q> a pair, and
  <math|y> a spectator profile admitting the paths of (a). Then every
  <math|x\<in\>\<Gamma\><rsub|Q>> carries two germs:

  <\itemize-minus>
    <item><math|g<rsup|<math-up|o>><rsub|x>>, holomorphic near
    <math|x+i<wide*|y|\<bar\>>> and equal to
    <math|\<cal-W\><rsub|n><around|(|v|)>> on <math|\<cal-T\><rsub|n>> near
    that point;

    <item><math|g<rsup|<math-up|t>><rsub|x>>, equal to
    <math|\<cal-W\><rsub|n>*<around|(|v\<circ\>s|)>\<circ\>\<sigma\>> on
    <math|\<sigma\><rsup|-1>*\<cal-T\><rsub|n>> near that point.
  </itemize-minus>

  (d) (C20) Assume <math|S> and <math|T> symmetric, the inclusions of
  <math|P> compatible with <math|S>, <math|T> smooth, <math|T> respects
  <math|S>, (SC) and (TC). For any such germs and any
  <math|x\<in\>\<Gamma\><rsub|Q>> with all <math|x<rsup|0><rsub|k>=0>,
  <math|g<rsup|<math-up|o>><rsub|x>=g<rsup|<math-up|t>><rsub|x>> near
  <math|x+i<wide*|y|\<bar\>>>.

  (e) (C21) Assume (D) and (TC). Each <math|x\<in\>\<Gamma\><rsub|Q>> has a
  radius <math|r\<gtr\>0> such that, for compactly supported <math|f> with
  support in <math|B<around|(|x,r|)>>:

  <\equation*>
    W<rsub|n><around|(|v|)><around|[|<wide*|y|\<bar\>>|]><around|(|f|)>=<big|int>g<rsup|<math-up|o>><rsub|x>*<around|(|\<xi\>+i<wide*|y|\<bar\>>|)>*f<around|(|\<xi\>|)>*<space|0.17em>d*\<xi\>,<space|2em>W<rsub|n>*<around|(|v\<circ\>s|)><around|[|\<sigma\><wide*|y|\<bar\>>|]>*<around|(|f\<circ\>\<sigma\>|)>=<big|int>g<rsup|<math-up|t>><rsub|x>*<around|(|\<xi\>+i<wide*|y|\<bar\>>|)>*f<around|(|\<xi\>|)>*<space|0.17em>d*\<xi\>.
  </equation*>

  (f) (Boundary exchange) Suppose:

  <\itemize-minus>
    <item><math|<math-up|supp>\<cal-F\>*W<rsub|n><around|(|u|)>\<subseteq\>\<cal-V\><rsub|n>>
    for all <math|u>;

    <item>the cutoff satisfies (D);

    <item>for a sequence of spectator profiles <math|y<rsub|m>\<to\>0> there
    are germs satisfying (d) and (e).

    Then <math|W<rsub|n><around|(|v|)><around|(|f|)>=W<rsub|n>*<around|(|v\<circ\>s|)>*<around|(|f\<circ\>\<sigma\>|)>>
    for every <math|f\<in\>\<cal-S\>> with
    <math|<math-up|supp>f\<subset\>\<Gamma\><rsub|Q>>. When this holds for
    every arity, label tuple and adjacent pair, <math|W> satisfies <em|joint
    locality>.
  </itemize-minus>

  (g) (C27) Joint locality implies <em|word locality>:
  <math|W*<around|(|a<space|0.17em><around|(|u,f|)><around|(|u<rprime|'>,g|)>*<space|0.17em>c|)>=W*<around|(|a<space|0.17em><around|(|u<rprime|'>,g|)><around|(|u,f|)>*<space|0.17em>c|)>>
  for all words <math|a>, <math|c>, labels <math|u>, <math|u<rprime|'>>, and
  tests <math|f>, <math|g> such that <math|<math-up|supp>f-<math-up|supp>g>
  consists of spacelike vectors.

  <em|Status:> theorem. <em|Lean:>

  <\itemize-minus>
    <item><hlink|<verbatim|C17.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C17.lean#L277-L282>,
    <hlink|<verbatim|C18.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C18.lean#L58-L79>,
    <hlink|<verbatim|C19.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C19.lean#L213-L226>,
    <hlink|<verbatim|C20.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C20.lean#L242-L307>,
    <hlink|<verbatim|C21.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C21.lean#L66-L87>,
    <hlink|<verbatim|C27.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C27.lean#L87-L92>.

    <item>Statements <hlink|<verbatim|Bid.C17>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L68-L69>,
    <hlink|<verbatim|C18>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L75-L76>,
    <hlink|<verbatim|C19>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L78-L81>,
    <hlink|<verbatim|C20>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L84-L86>,
    <hlink|<verbatim|C21>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L89-L90>,
    <hlink|<verbatim|C27>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Grow.lean#L48>.

    <item>Path definitions: <hlink|<verbatim|augment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L57-L60>,
    <hlink|<verbatim|travelable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L63-L66>,
    <hlink|<verbatim|Weighty>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L72-L73>.

    <item>Pair definitions: <hlink|<verbatim|NearPair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Swap.lean#L19-L22>,
    <hlink|<verbatim|gap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Swap.lean#L49>,
    <hlink|<verbatim|spectator>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Swap.lean#L53>,
    <hlink|<verbatim|Fleck>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Swap.lean#L56-L61>.

    <item>Germ definitions: <hlink|<verbatim|Panes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Exchange.lean#L33-L36>,
    <hlink|<verbatim|sameGround>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Exchange.lean#L40-L41>,
    <hlink|<verbatim|Forms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Exchange.lean#L62-L66>.

    <item>Locality lemmas: <hlink|<verbatim|Panes.reaches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Exchange.lean#L43-L56>,
    <hlink|<verbatim|Panes.forgets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Exchange.lean#L68-L90>,
    <hlink|<verbatim|NearPair.actor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Exchange.lean#L92-L112>,
    <hlink|<verbatim|Actor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Exchange.lean#L115-L116>,
    <hlink|<verbatim|Surface.Regional>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Stems.lean#L33-L34>.
  </itemize-minus>

  <strong|Proposition V.2.8 (real-time vectors, Gram limits, nulls; C22\UC26,
  C29).>

  <em|Heated vectors.> For <math|n\<geqslant\>1>, take
  <math|v\<in\>\<cal-F\><rsup|n>>, heights <math|y\<in\>E<rsub|n>> with
  positive entries, <math|p\<in\><around|(|0,1|)>> satisfying
  <math|4*p\<less\>y<rsub|k>> and <math|4*p\<less\>y<rsub|j>-y<rsub|i>> for
  <math|i\<less\>j>, and real points <math|r\<in\>\<bbb-R\><rsup|4*n>>. Set
  <math|z<rsub|k>=r<rsup|0><rsub|k>+i*y<rsub|k>>. The heated vector is

  <\equation*>
    \<Psi\><rsub|p><around|(|v;y;r|)>=e<rsup|-<around|(|y<rsub|1>-p|)>*H>*e<rsup|i*r<rsup|0><rsub|1>*H>*U<around|(|<wide|r|\<vect\>><rsub|1>|)>*<space|0.17em>B<rsub|p><around|(|v<rsub|1>|)>*<space|0.17em>G<rsub|p><around|(|z<rsub|2>-z<rsub|1>,<wide|r|\<vect\>><rsub|2>-<wide|r|\<vect\>><rsub|1>|)>*<space|0.17em>B<rsub|p><around|(|v<rsub|2>|)>*\<cdots\>*G<rsub|p><around|(|z<rsub|n>-z<rsub|n-1>,<wide|r|\<vect\>><rsub|n>-<wide|r|\<vect\>><rsub|n-1>|)>*<space|0.17em>B<rsub|p><around|(|v<rsub|n>|)>*\<Omega\>.
  </equation*>

  For <math|n=0> set <math|\<Psi\><rsub|p>=\<Omega\>>. For a word
  <math|b=<around|(|<around|(|u<rsub|1>,f<rsub|1>|)>,\<ldots\>,<around|(|u<rsub|n>,f<rsub|n>|)>|)>>
  and <math|t\<gtr\>0>, the heat-cup vector is

  <\equation*>
    \<Phi\><rsub|t><around|(|b|)>=<big|int>f<rsub|1><around|(|x<rsub|1>|)>*\<cdots\>*f<rsub|n><around|(|x<rsub|n>|)>*<space|0.17em>\<Psi\><rsub|p<around|(|t|)>><around*|(|u;<around|(|t,2*t,\<ldots\>,n*t|)>;x|)>*<space|0.17em>d*x,<space|2em>p<around|(|t|)>=min
    <around|(|t,1|)>/8.
  </equation*>

  (a) (C22, the pointwise Gram identity) Assume (H), <math|J> the induced
  star, the outputs of V.2.2(a)\U(c), the orientation of <math|P>, and
  <math|T> respects <math|S>. Take <math|x\<in\>E<rsub|n>> and
  <math|y\<in\>E<rsub|m>> with positive entries, and widths <math|t>,
  <math|u> admissible with all heights exceeding <math|4*t> (resp.
  <math|4*u>). Then

  <\equation*>
    <around|\<langle\>|\<Psi\><rsub|t><around|(|v;x;r|)>,\<Psi\><rsub|u><around|(|w;y;q|)>|\<rangle\>>=F<rsup|h><rsub|n+m><around|(|\<varrho\>|)><space|0.17em><around|(|J*v<rsub|n>,\<ldots\>,J*v<rsub|1>,w<rsub|1>,\<ldots\>,w<rsub|m>|)>,
  </equation*>

  with <math|h=<around|(|-x<rsub|n>,\<ldots\>,-x<rsub|1>,y<rsub|1>,\<ldots\>,y<rsub|m>|)>>
  and <math|\<varrho\>=<around|(|r<rsub|n>,\<ldots\>,r<rsub|1>,q<rsub|1>,\<ldots\>,q<rsub|m>|)>>.

  (b) (C23, integrability and translation covariance of heat cups) Assume
  (H), the slab-insertion properties V.2.2(a), and spin compatibility. For
  every word <math|b> and <math|t\<gtr\>0>, the integrand of
  <math|\<Phi\><rsub|t><around|(|b|)>> is Bochner integrable, and
  <math|\<Phi\><rsub|t>*<around|(|g\<cdot\>b|)>=U<around|(|a|)>*\<Phi\><rsub|t><around|(|b|)>>
  for translations <math|g=<around|(|a,1|)>>, where <math|U<around|(|a|)>> is
  the unitary translation of <math|\<cal-H\>>.

  (c) (C24, the heat-cup Gram limit) Assume (H), (SC), (BV), integrability
  and translation covariance of heat cups and the pointwise Gram identity.
  Then <math|<around|\<langle\>|\<Phi\><rsub|s><around|(|b|)>,\<Phi\><rsub|s<rprime|'>><around|(|c|)>|\<rangle\>>\<to\><around|\<langle\>|b,c|\<rangle\>><rsub|W>>
  as <math|<around|(|s,s<rprime|'>|)>\<to\><around|(|0<rsup|+>,0<rsup|+>|)>>
  independently.

  (d) (C25) For every <math|n\<geqslant\>0>, tensor products span a dense
  subspace of <math|\<cal-S\><around|(|\<bbb-R\><rsup|4*n>|)>>.

  (e) (C26, label faithfulness) Assume C25,
  <math|N<rsub|d><around|(|T|)>=N<rsub|d><around|(|S|)>> for all <math|d>,
  the hierarchies for <math|S,T>, compatibility of the inclusions of <math|P>
  with both tables, (SC) and (TC). A label <math|u\<in\>\<cal-F\>> with
  <math|W*<around|(|a<space|0.17em><around|(|u,f|)>*<space|0.17em>c|)>=0> for
  all words <math|a>, <math|c> and all <math|f> is zero. This concerns single
  labels, not words.

  (f) (C29, no hypotheses) For every boundary family <math|W>, every
  antilinear map <math|J>, all words <math|a,c> and all labels
  <math|u,u<rprime|'>>, the following hold:

  <\itemize-minus>
    <item>(word bilinearity) <math|<around|(|u,f|)>\<mapsto\>W*<around|(|a<space|0.17em><around|(|u,f|)>*<space|0.17em>c|)>>
    is bilinear;

    <item>(continuity in the two tests) <math|<around|(|f,g|)>\<mapsto\><around|\<langle\>|<around|(|u,f|)>*a,<around|(|u<rprime|'>,g|)>*c|\<rangle\>><rsub|W>>
    is continuous on <math|\<cal-S\><around|(|\<bbb-R\><rsup|4>|)><rsup|2>>.
  </itemize-minus>

  <em|Status:> theorem. <em|Lean:>

  <\itemize-minus>
    <item><hlink|<verbatim|C22.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C22.lean#L348-L354>,
    <hlink|<verbatim|C23.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C23.lean#L218-L220>,
    <hlink|<verbatim|C24.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C24.lean#L146-L153>,
    <hlink|<verbatim|C25.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C25.lean#L135-L138>,
    <hlink|<verbatim|C26.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C26.lean#L77-L92>,
    <hlink|<verbatim|C29.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C29.lean#L110>.

    <item>Statements <hlink|<verbatim|Bid.C22>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Grow.lean#L29-L31>,
    <hlink|<verbatim|C23>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Grow.lean#L33-L34>,
    <hlink|<verbatim|C24>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Grow.lean#L36-L38>,
    <hlink|<verbatim|C25>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Grow.lean#L42>,
    <hlink|<verbatim|C26>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Grow.lean#L44-L46>,
    <hlink|<verbatim|C29>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Grow.lean#L54>.

    <item>Definitions <hlink|<verbatim|Hull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Grow.lean#L19-L22>,
    <hlink|<verbatim|Roof>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Grow.lean#L24-L27>,
    <hlink|<verbatim|Small.shot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Tall.lean#L53-L56>,
    <hlink|<verbatim|Small.heatCup>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Tall.lean#L92-L93>,
    <hlink|<verbatim|Small.Lamp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Tall.lean#L96-L100>,
    <hlink|<verbatim|Surface.kernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Star.lean#L97>,
    <hlink|<verbatim|Persists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Stems.lean#L38>,
    <hlink|<verbatim|Symbol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Stems.lean#L26-L27>,
    <hlink|<verbatim|Cam>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Stems.lean#L29-L30>.
  </itemize-minus>

  <strong|Proposition V.2.9 (the target: a Wightman structure realizing
  <math|W>).>

  A <em|Wightman structure> consists of:

  <\itemize-minus>
    <item>families <math|K<around|(|\<Lambda\>|)>> of linear automorphisms of
    <math|\<cal-F\>> and of each <math|F<rsub|d>>;

    <item>a field system: a Hilbert space <math|\<cal-H\><rsub|W>>, a
    subspace <math|\<cal-D\>>, a vacuum <math|\<Omega\><rsub|W>\<in\>\<cal-D\>>,
    and fields <math|\<varphi\><around|(|u,f|)>\<in\><math-up|End><around|(|\<cal-D\>|)>>,
    bilinear in <math|<around|(|u,f|)>\<in\>\<cal-F\>\<times\>\<cal-S\><around|(|\<bbb-R\><rsup|4>|)>>;

    <item>an antilinear map <math|J:\<cal-F\>\<to\>\<cal-F\>>;

    <item>a unitary, strongly continuous representation <math|U> of
    <math|\<cal-P\>>;

    <item>a projection-valued measure <math|<math-ss|E>> on
    <math|\<bbb-R\><rsup|4>>.
  </itemize-minus>

  It <em|realizes> <math|W> if:

  <\itemize-minus>
    <item><math|J> is the induced star and <math|K> satisfies spin
    compatibility;

    <item>totality and temperedness: <math|<around|\<\|\|\>|\<Omega\><rsub|W>|\<\|\|\>>=1>;
    <math|\<cal-D\>> is dense and equals the span of the word vectors
    <math|\<varphi\><around|(|b|)>*\<Omega\><rsub|W>>;
    <math|f\<mapsto\>\<varphi\><around|(|u,f|)>*\<psi\>> is continuous;

    <item>the adjoint identity: <math|<around|\<langle\>|\<varphi\><around|(|u,f|)>*\<psi\>,\<chi\>|\<rangle\>>=<around|\<langle\>|\<psi\>,\<varphi\><around|(|J*u,<wide|f|\<bar\>>|)>*\<chi\>|\<rangle\>>>
    on <math|\<cal-D\>>;

    <item>vacuum expectations: <math|<around|\<langle\>|\<Omega\><rsub|W>,\<varphi\><around|(|b|)>*\<Omega\><rsub|W>|\<rangle\>>=W<around|(|b|)>>;

    <item>local commutativity: <math|<around|[|\<varphi\><around|(|u,f|)>,\<varphi\><around|(|u<rprime|'>,g|)>|]>=0>
    on <math|\<cal-D\>> when <math|<math-up|supp>f-<math-up|supp>g> is
    spacelike;

    <item>field faithfulness: for <math|u\<ne\>0> some
    <math|\<varphi\><around|(|u,f|)>\<ne\>0>;

    <item>covariance: <math|U<around|(|g|)>> preserves <math|\<cal-D\>> and
    fixes <math|\<Omega\><rsub|W>>, and <math|U<around|(|g|)>*\<varphi\><around|(|u,f|)>*\<psi\>=\<varphi\><around|(|K<around|(|\<Lambda\>|)>*u,g<rsub|\<ast\>>*f|)>*U<around|(|g|)>*\<psi\>>;

    <item><math|<math-ss|E>> is the spectral measure of the translations and
    vanishes off <math|<wide|V|\<bar\>><rsub|+>>;

    <item>every translation-invariant vector is a multiple of
    <math|\<Omega\><rsub|W>>.
  </itemize-minus>

  The <em|field axioms without vacuum uniqueness> (VIII.1) are the same list
  without the last clause. <em|Status:> definition (a specification). It is
  produced in VIII.1 by the construction of V.2.10. Consequence:
  <hlink|<verbatim|Fields.general>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/System.lean#L62-L70>
  and <hlink|<verbatim|Fields.sees>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/System.lean#L82-L84>
  show that a realization has Gram form <math|<around|\<langle\>|\<varphi\><around|(|b|)>*\<Omega\><rsub|W>,\<varphi\><around|(|c|)>*\<Omega\><rsub|W>|\<rangle\>>=<around|\<langle\>|b,c|\<rangle\>><rsub|W>>,
  so <math|W> is positive on words. <em|Lean:>
  <hlink|<verbatim|Wightman>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/System.lean#L117-L122>,
  <hlink|<verbatim|Wightman.Realizes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/System.lean#L124-L135>,
  <hlink|<verbatim|Fields>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/System.lean#L22-L26>,
  <hlink|<verbatim|Fields.Total>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/System.lean#L41-L45>,
  <hlink|<verbatim|Symmetries>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/System.lean#L111-L115>,
  <hlink|<verbatim|Action>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/System.lean#L92-L97>,
  <hlink|<verbatim|FieldCore>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Core.lean#L34-L44>.

  <strong|Proposition V.2.10 (field realization of <math|W>).> Fix rotation
  data <math|R> and a real structure on <math|S>. Let <math|J> be the induced
  involutive star and assume spin compatibility. Let <math|W> satisfy word
  bilinearity, continuity in the two tests, word locality, label
  faithfulness, continuity of word matrix elements and invariance of the word
  Gram form. Suppose vectors <math|\<Phi\><rsub|s><around|(|b|)>\<in\>\<cal-H\>>,
  <math|s\<gtr\>0>, satisfy the Gram limit V.2.8(c),
  <math|\<Phi\><rsub|s><around|(|\<varnothing\>|)>\<to\>\<Omega\>> as
  <math|s*\<downarrow\>*0>, and, for every word <math|b> and translation
  <math|a>, <math|\<Phi\><rsub|s>*<around|(|a\<cdot\>b|)>=U<around|(|a|)>*\<Phi\><rsub|s><around|(|b|)>>
  for all sufficiently small <math|s\<gtr\>0>. Assume <math|T> satisfies the
  normalized, unital, permutation-symmetric Euclidean laws. Then there is a
  Wightman structure satisfying every clause of V.2.9 except possibly vacuum
  uniqueness. If the common fixed vectors of all <math|e<rsup|-t*H>>,
  <math|t\<gtr\>0>, are multiples of <math|\<Omega\>>, it realizes <math|W>.
  <em|Status:> theorem. The route used by the main theorem is
  <hlink|<verbatim|Next.BOUNDARY.establishing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L167-L184>
  followed by <hlink|<verbatim|Compatible.vacuum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L217-L221>
  (VIII.1). <hlink|<verbatim|Boundary.harvest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Lo.lean#L85-L95>
  states the same in one lemma and is used only by an alternative route. The
  ingredients are in Ÿ4.8.

  <em|Not reconstruction.> Integrated.lean also proves three ultraviolet
  bundles, and the folders Overlay and Vac are ultraviolet material; they
  belong to Part III (III.6, III.10\UIII.13):

  <\itemize-minus>
    <item><hlink|<verbatim|source_sections>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L216-L219>
    (G01\UG07);

    <item><hlink|<verbatim|pressure_grants>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L222-L225>
    (E01\UE09, given <hlink|<verbatim|EBare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L148>).
    The energy hypothesis is proved by <hlink|<verbatim|Next.Fluctuations.bare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Bare.lean#L64-L120>;

    <item><hlink|<verbatim|stationary_scene>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L229-L232>
    (E02, F01\UF04).
  </itemize-minus>

  <section|2. What it uses><label|2-what-it-uses>

  <strong|Inputs from other units.>

  <\enumerate>
    <item><strong|The Euclidean hierarchy> (IV.1; for each phase, V.1):
    <hlink|<verbatim|Table.Hierarchy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L141-L148>.
    It consists of permutation symmetry, normalization, the unit-insertion
    law, compatibility with signed symmetries and conjugation, translation
    homogeneity, reflection positivity on words and on smeared joint tests,
    smoothness off coincidences, and capped polynomial bounds near
    collisions. Its uses include:

    <\itemize-minus>
      <item>permutation symmetry of <math|S> and <math|T> (C02, C20, C22,
      C26);

      <item>smoothness of <math|T> off coincidences (C07, C20, C26);

      <item>translation homogeneity of <math|T> (C02, C09);

      <item>the reflection adjoint on labels (the star <math|J>);

      <item>the null spaces (null-space compatibility, C26).
    </itemize-minus>

    <item><strong|The OS space and the slab operators> (V.1, the B-items;
    files YM/OS, YM/Heat).

    <\itemize-minus>
      <item><hlink|<verbatim|OS.Chamber>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L57-L61>
      provides:

      <\itemize-minus>
        <item>the GNS space with vacuum <math|\<Omega\>>;

        <item>the semigroup <math|e<rsup|-t*H>> and its holomorphic extension
        <math|e<rsup|-\<zeta\>*H>>, a contraction for
        <math|<math-up|Re><space|0.17em>\<zeta\>\<gtr\>0>, with the semigroup
        law and <math|e<rsup|-t*H>*\<Omega\>=\<Omega\>> (Heat/Rows,
        Heat/Extend);

        <item>spatial translations;

        <item>a unitary space-time translation group whose spectral measure
        lies in <math|<around|{|p<rsup|0>\<geqslant\>0|}>>;

        <item>the ground space, i.e. the invariant vectors.
      </itemize-minus>

      <item><hlink|<verbatim|OS.Spread>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L101-L104>:
      slab operators <math|A<rsub|d><around|(|w|)>> acting on GNS vectors by
      concatenation of words.

      <item>The laws <hlink|<verbatim|Spread.Laws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L153-L162>.
      Among them is the slab bound (SB), <hlink|<verbatim|AllCopy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L111-L113>:
      for each degree bound <math|D> and representative bound <math|R> there
      are <math|C\<gtr\>0> and <math|a\<in\>\<bbb-N\>> such that

      <\equation*>
        <around|\<\|\|\>|A<rsub|d><around|(|w|)>|\<\|\|\>>\<leqslant\>C<rsup|<around|\<lvert\>|w|\<rvert\>>>*<around*|(|<around|\<lvert\>|w|\<rvert\>>/r|)><rsup|a<around|\<lvert\>|w|\<rvert\>>>
      </equation*>

      for every word <math|w> whose labels have degree at most <math|D> and
      representative norm at most <math|R>, in a slab of width <math|d>, with
      pairwise distances in the maximum norm and distances from both time
      boundaries at least <math|r\<in\><around|(|0,1|]>>. This is the only
      quantitative input of the unit; it gives the bound <math|p<rsup|-a>> of
      C01.

      <item>VIII.1 obtains (H) from the phase data, both for the mixed table
      <math|S=T> and for the selected phase.
    </itemize-minus>

    <item><strong|Rotation, spin and star data> (VI.1).

    <\itemize-minus>
      <item><math|R> with Euclidean covariance and rotation laws (A10\UA15).

      <item><math|K> with spin compatibility (A16\UA17).

      <item>A16 itself, whose proof <hlink|<verbatim|Work/A16>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A16.lean>
      is a field of the bundle.

      <item>The induced star <math|J> (the induced-star identity, from the
      orientation of the differential plan).
    </itemize-minus>

    <item><strong|The label structures> of I.1 and II.1: the gauge group, the
    register, the quotient labels, <math|<math-up|pin>>, and the common level
    of finitely many labels.
  </enumerate>

  <strong|Standard mathematics.>

  <\itemize-minus>
    <item><em|Osterwalder\USchrader reconstruction:> Osterwalder\USchrader,
    <em|Axioms for Euclidean Green's functions> I, II, CMP 31 (1973), 42
    (1975); Glimm\UJaffe, <em|Quantum Physics>, Ch. 6 and 19.

    <\itemize-minus>
      <item>Here the continuation is built from operators on the OS space, so
      the Laplace-transform estimates of OS II are not needed.
    </itemize-minus>

    <item><em|Boundary values of holomorphic functions of polynomial growth
    as distributions of finite order:> Hörmander, <em|ALPDO I>, Thm. 3.1.15;
    Vladimirov, <em|Methods of the Theory of Generalized Functions>;
    Streater\UWightman, Thm. 2-10.

    <item><em|Fourier\ULaplace transforms of distributions with support in a
    cone, and holomorphy in tubes:> Reed\USimon II, Thm. IX.16;
    Streater\UWightman, Thm. 2-6.

    <item><em|Locality:> Jost points and the complex Lorentz group (Jost,
    <em|The General Theory of Quantized Fields>; Streater\UWightman, Thms.
    2-11, 2-12). Locality from the permutation symmetry of the Schwinger
    functions follows OS I.

    <\itemize-minus>
      <item>A holomorphic germ is determined by its restriction to a maximal
      totally real subspace (elementary, by power series).
    </itemize-minus>

    <item><em|Hilbert-space tools:> the Kolmogorov (GNS) construction;
    Riesz\UMarkov; Stone\UWeierstrass; the spectral measure of a continuous
    unitary representation of <math|\<bbb-R\><rsup|4>>
    (Stone\UNaimark\UAmbrose\UGodement); Reed\USimon I, Ch. VII\UVIII.

    <item><em|Other standard facts:>

    <\itemize-minus>
      <item>density of tensor products in
      <math|\<cal-S\><around|(|\<bbb-R\><rsup|4*n>|)>> (Reed\USimon I, ŸV.3);

      <item>continuous one-parameter groups in finite dimension are
      exponentials;

      <item>generation of <math|\<cal-L\><rsup|\<uparrow\>><rsub|+>> by
      rotations and boosts.
    </itemize-minus>
  </itemize-minus>

  <strong|Imported constants and assumptions.>

  <\itemize-minus>
    <item>There are no numerical constants beyond conventions: the width
    <math|p\<less\>1>, gaps <math|\<gtr\>4*p>, and the choice <math|p=min
    <around|(|k,1|)>/8>. The exponents <math|a> and constants <math|C> of C01
    are those of (SB) (V.1).

    <item>The hypotheses not discharged here are:

    <\itemize-minus>
      <item>(H);

      <item>the data <math|R>, <math|K>, <math|J> with their properties;

      <item><math|N<rsub|d><around|(|T|)>=N<rsub|d><around|(|S|)>> for every
      <math|d>;

      <item>one-dimensionality of the heat-fixed space.
    </itemize-minus>

    VIII.1 supplies the table, slab and symmetry data from V.1 and VI.1.
    One-dimensionality of the heat-fixed space is supplied for the selected
    phase.

    <item>The boundary family <math|W>, (BV) and cone support are produced by
    V.2.3(b) and V.2.4(c) from the outputs of C03, C04, C06 and C09.
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  The slab bound controls a field insertion <math|B<rsub|p><around|(|v|)>>
  between two heat factors. The relation <math|B<rsub|p+u>=e<rsup|-u*H>*B<rsub|p>*e<rsup|-u*H>>
  makes products of these insertions independent of the admissible width.
  Their vacuum matrix elements give a continuation to strictly ordered
  imaginary times, with polynomial growth as the time differences shrink.
  Cauchy\URiemann identities and Taylor's formula along
  <math|<around|(|0,1,\<ldots\>,n-1|)>> then give tempered boundary values
  for arbitrary approaches through ordered heights. A Laplace identity yields
  total energy zero and nonnegative suffix energies.

  Euclidean covariance gives Poincaré covariance of the boundary family:
  translations and spatial rotations pass through a one-variable identity
  theorem; infinitesimal rotations in a time\Uspace plane give the boost
  identity, which is integrated along the real boost groups. Lorentz
  covariance improves the spectral support to <math|\<cal-V\><rsub|n>>.
  Fourier\ULaplace transformation extends the continuation to the forward
  tube. Locality follows from two holomorphic germs near each spacelike
  adjacent pair: imaginary boosts construct the germs, Euclidean permutation
  symmetry identifies their jets on the Wick slice, and continuation along a
  rescaling of real times propagates their agreement. Partial boundary values
  then give exchange of adjacent spacelike fields.

  Finally, inner products of heated OS vectors equal the continuation at a
  glued, reflected configuration. Their limit gives positivity of the word
  kernel and an isometric embedding of its Kolmogorov space into the OS
  Hilbert space. Left multiplication defines the fields on the common word
  domain. The embedding intertwines translations, transferring positive
  energy; Lorentz covariance gives the forward-cone spectrum condition. A
  one-dimensional OS heat-fixed space gives vacuum uniqueness. These are the
  operator and local-germ forms of Osterwalder\USchrader reconstruction used
  here.

  <section|4. Steps><label|4-steps>

  <subsection|4.1 Tools><label|41-tools>

  <strong|Lemma V.2.a (Kolmogorov).> Let <math|K> be a positive semidefinite
  kernel on a set <math|X>. There are a Hilbert space and vectors
  <math|<around|(|\<psi\><rsub|x>|)><rsub|x\<in\>X>> with
  <math|<around|\<langle\>|\<psi\><rsub|x>,\<psi\><rsub|y>|\<rangle\>>=K<around|(|x,y|)>>
  and dense span. <em|Proof sketch.> Complete the finitely supported
  functions modulo the null space of <math|<big|sum><wide|f|\<bar\>><around|(|x|)>*g<around|(|y|)>*K<around|(|x,y|)>>.
  <em|Lean:> <hlink|<verbatim|Kernel.host>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Hilbert/Kolmogorov.lean#L67-L92>,
  <hlink|<verbatim|Kernel.Gram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Hilbert/Kolmogorov.lean#L34-L38>.

  <strong|Lemma V.2.b (projection-valued measure).> Let <math|X> be a compact
  Hausdorff space and <math|A:C<around|(|X|)>\<to\>\<cal-B\><around|(|\<cal-H\>|)>>
  a unital complex <math|\<ast\>>-algebra homomorphism. There is a strongly
  countably additive projection-valued measure on the Borel sets of <math|X>
  representing <math|A>. <em|Proof sketch.>

  <\enumerate>
    <item>For each <math|\<psi\>>, the positive functional
    <math|f\<mapsto\><around|\<langle\>|\<psi\>,A<around|(|f|)>*\<psi\>|\<rangle\>>>
    gives a Riesz\UMarkov measure <math|\<mu\><rsub|\<psi\>>>.

    <item><math|f\<mapsto\>A<around|(|f|)>*\<psi\>> extends to an isometry
    <math|L<rsup|2><around|(|\<mu\><rsub|\<psi\>>|)>\<to\>\<cal-H\>>.

    <item><math|E<around|(|s|)>*\<psi\>> is the image of <math|1<rsub|s>>;
    for disjoint Borel sets, the corresponding indicator sums converge in
    <math|L<rsup|2><around|(|\<mu\><rsub|\<psi\>>|)>>, giving strong
    countable additivity.
  </enumerate>

  It is used (V.1, SNAG/Escape) on the one-point compactification of
  <math|\<bbb-R\><rsup|4>> to build the spectral measure of the translations.
  <em|Lean:> <hlink|<verbatim|Spectral.Rep.ships>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Compact/PVM.lean#L51-L62>
  <em|(proof read for additivity; Compact/Borel statement only)>.

  <strong|Lemma V.2.c (Schwartz calculus; tensor density, C25).>

  <\enumerate>
    <item>Let <math|f<rsub|\<lambda\>>,g\<in\>\<cal-S\><around|(|\<bbb-R\><rsup|d>|)>>.
    If every jet of <math|f<rsub|\<lambda\>>> converges locally uniformly to
    the corresponding jet of <math|g>, and every Schwartz seminorm of
    <math|f<rsub|\<lambda\>>> is eventually bounded uniformly in
    <math|\<lambda\>>, then <math|f<rsub|\<lambda\>>\<to\>g> in
    <math|\<cal-S\>>.

    <item>Let <math|K> be compact metric, <math|\<mu\>> a finite Borel
    measure, and <math|u\<mapsto\>f<rsub|u>> continuous from <math|K> into
    <math|\<cal-S\><around|(|\<bbb-R\><rsup|d>|)>>. If
    <math|g\<in\>\<cal-S\>> satisfies <math|g<around|(|x|)>=<big|int><rsub|K>f<rsub|u><around|(|x|)>*<space|0.17em>d*\<mu\><around|(|u|)>>,
    then the sums <math|<big|sum><rsub|j>\<mu\><around|(|E<rsub|j>|)>*f<rsub|u<rsub|j>>>
    over finite measurable partitions, with <math|u<rsub|j>\<in\>E<rsub|j>>
    and <math|max<rsub|j><math-up|diam><around|(|E<rsub|j>|)>\<to\>0>,
    converge to <math|g> in <math|\<cal-S\>>.

    <item>The linear span of tensor products is dense in
    <math|\<cal-S\><around|(|\<bbb-R\><rsup|4*n>|)>>.
  </enumerate>

  <em|Proof sketch.> For 3:

  <\itemize-minus>
    <item>reduce to compactly supported <math|v>;

    <item>choose a product cutoff equal to <math|1> on the support;

    <item>replace <math|<wide|v|^>> by compactly supported cutoffs
    <math|<wide|v|^><rsub|N>\<to\><wide|v|^>> in <math|\<cal-S\>>;

    <item>the fixed product cutoff times <math|<around|(|2*\<pi\>|)><rsup|-4*n>*<big|int><wide|v|^><rsub|N><around|(|\<xi\>|)>*e<rsup|i<around|\<langle\>|\<xi\>,\<cdot\>|\<rangle\>>>*<space|0.17em>d*\<xi\>>
    converges to <math|v> by Fourier inversion;

    <item>approximate each compact integral by quadrature sums of products of
    cutoff plane waves, using 2. <em|Lean:>
    <hlink|<verbatim|Spark.ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spark/Limit.lean#L28-L51>,
    <hlink|<verbatim|Spark.records>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spark/Pile.lean#L77-L114>;
    <hlink|<verbatim|C25.compact_mem>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C25.lean#L109-L124>,
    <hlink|<verbatim|C25.cut_port_mem>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C25.lean#L85-L107>.
  </itemize-minus>

  <subsection|4.2 The strict-time continuation><label|42-the-strict-time-continuation>

  <strong|Lemma V.2.d (slab insertions; C01).> As in V.2.2(a). <em|Proof
  sketch.>

  <\itemize-minus>
    <item><strong|Construction.> For each degree, <math|B<rsub|p>> is defined
    on representatives by the one-point slab operator.

    <item><strong|Linearity and descent to quotient labels.> An operator on
    <math|\<cal-H\>> is determined by its matrix elements between GNS
    vectors. These matrix elements are Schwinger functions of <math|T> on the
    word <em|reflected word, centre insertion, raised word>; they are linear
    in the inserted label and vanish on <math|S>-null labels because <math|T>
    respects <math|S>. The degrees are glued using compatibility with the
    inclusions. For <math|p=0> the map is set to <math|0>.

    <item><strong|Bound.> (SB) applies to a word of length 1 in a slab of
    width <math|2*p> with buffer <math|r=p\<leqslant\>1> and gives
    <math|<around|\<\|\|\>|B<rsub|p><around|(|<math-up|pin><rsub|d>w|)>|\<\|\|\>>\<leqslant\>C*<around|(|1/p|)><rsup|a>>.
    The constants depend on the degree and on the norm of the representative.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|C01.single>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C01.lean#L71-L80>,
  <hlink|<verbatim|C01.inner_raw>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C01.lean#L51-L57>,
  <hlink|<verbatim|C01.at_width>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C01.lean#L91-L97>,
  <hlink|<verbatim|C01.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C01.lean#L99-L117>.

  <strong|Lemma V.2.e (Euclidean values and width independence; C02).> As in
  V.2.2(b). <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|Euclidean values.> At imaginary times each factor
    <math|G<rsub|p>> is the heat semigroup at a positive real time. By
    induction from the right, the vector <math|B<rsub|p><around|(|v<rsub|k>|)>*G<rsub|p>*\<cdots\>*B<rsub|p><around|(|v<rsub|n>|)>*\<Omega\>>
    is the GNS vector of a positive-time Euclidean word. At the end,
    <math|<around|\<langle\>|\<Omega\>,<text|vector>|\<rangle\>>> is the
    Schwinger function, and translation invariance removes the offset.

    <item><strong|Width independence.>

    <\itemize-minus>
      <item>First, <math|B<rsub|p+u>=e<rsup|-u*H>*B<rsub|p>*e<rsup|-u*H>>.

      <item>Second, <math|G<rsub|p><around|(|w|)>=e<rsup|-u*H>*G<rsub|p+u><around|(|w|)>*e<rsup|-u*H>>.

      <item>The factors <math|e<rsup|-u*H>> telescope, and
      <math|e<rsup|-u*H>*\<Omega\>=\<Omega\>> removes the last one.
    </itemize-minus>
  </itemize-minus>

  Only gaps <math|\<gtr\>2*p> are needed; the factor <math|4> in "admissible"
  is slack. <em|Lean:> <hlink|<verbatim|C02.train_pure>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C02.lean#L68-L97>,
  <hlink|<verbatim|C02.pad_bar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C02.lean#L118-L128>,
  <hlink|<verbatim|C02.matrix_pad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C02.lean#L156-L166>.

  <strong|Lemma V.2.f (holomorphy and polynomial growth; C03).> As in
  V.2.2(c). <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|Definition.> <math|F<rsub|n><around|(|z|)>=M<rsub|p><around|(|z|)>>
    with <math|p=min <around|(|k,1|)>/8>, where <math|k\<gtr\>0> is any lower
    bound for the imaginary-time differences when <math|n\<geqslant\>2>; take
    <math|k=1> for <math|n=0,1>. By V.2.e this does not depend on the
    admissible <math|p>, and admissibility is an open condition.

    <item><strong|Holomorphy and continuity.> These follow from those of
    <math|\<zeta\>\<mapsto\>e<rsup|-\<zeta\>*H>> in norm, combined with
    strong continuity of <math|U>, through the finite product.

    <item><strong|Growth.> For <math|0\<less\>k\<leqslant\>1>, take
    <math|p=k/8>. The factors <math|G<rsub|p>> are contractions, so
    <math|<around|\<lvert\>|F|\<rvert\>>\<leqslant\><around|\<\|\|\>|\<Omega\>|\<\|\|\>><rsup|2>*<big|prod><rsub|j><around|\<\|\|\>|B<rsub|p><around|(|v<rsub|j>|)>|\<\|\|\>>\<leqslant\><around|\<\|\|\>|\<Omega\>|\<\|\|\>><rsup|2><around*|(|<big|prod><rsub|j>C<rsub|j>*8<rsup|a<rsub|j>>|)>*k<rsup|-<big|sum><rsub|j>a<rsub|j>>>.
    This gives (PG) with <math|m=<big|sum>a<rsub|k>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|C03.defined_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C03.lean#L218-L226>,
  <hlink|<verbatim|C03.defined_region>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C03.lean#L228-L243>,
  <hlink|<verbatim|C03.defined_power>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C03.lean#L200-L216>.

  <subsection|4.3 Boundary values and spectral
  support><label|43-boundary-values-and-spectral-support>

  <strong|Lemma V.2.g (C04).> As in V.2.3(a). <em|Proof sketch.>

  <\itemize-minus>
    <item>(PG) gives a bound on <math|F<rsup|y>> that is uniform in <math|x>
    and locally uniform in <math|y\<in\>E<rsub|n>>; this yields integrability
    and continuity by dominated convergence.

    <item>On each one-variable slice <math|w\<mapsto\>F*<around|(|\<cdummy\>+w<wide*|a|\<bar\>>|)>>,
    Cauchy\URiemann gives <math|\<partial\><rsub|t>*F*<around|(|y+t*a|)>=i*<space|0.17em>\<partial\><rsub|<wide*|a|\<bar\>>>*F>.

    <item>Cauchy estimates on discs of radius uniform in <math|x> allow
    differentiation under the integral.

    <item>Integration by parts moves <math|\<partial\><rsub|<wide*|a|\<bar\>>>>
    onto <math|f>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|C04.cr_height>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C04.lean#L131-L144>,
  <hlink|<verbatim|C04.deriv_bound_near>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C04.lean#L146-L171>,
  <hlink|<verbatim|C04.lines>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C04.lean#L173-L219>.

  <strong|Lemma V.2.h (boundary values).> As in V.2.3(b). For every
  nondecreasing <math|y>, including <math|y=0>, the boundary value is given
  by an explicit formula. Let <math|\<varrho\>=<around|(|0,1,\<ldots\>,n-1|)>>
  and <math|D=-i*\<partial\><rsub|<wide*|\<varrho\>|\<bar\>>>>, and let
  <math|m> be the exponent of (PG). Then

  <\equation*>
    W<rsup|y><rsub|n><around|(|v|)><around|(|f|)>=<big|sum><rsub|k=0><rsup|m><frac|<around|(|-1|)><rsup|k>|k!>*<space|0.17em>\<psi\><rsub|v><around|(|y+\<varrho\>;D<rsup|k>*f|)>-<big|int><rsub|0><rsup|1><frac|<around|(|-s|)><rsup|m>|m!>*<space|0.17em>\<psi\><rsub|v><around|(|y+s*\<varrho\>;D<rsup|m+1>*f|)>*<space|0.17em>d*s.
  </equation*>

  <em|Proof sketch.>

  <\itemize-minus>
    <item>For <math|y\<in\>E<rsub|n>>, Taylor's formula with integral
    remainder along <math|t\<mapsto\>y+t*\<varrho\>> (by (CR)) shows
    <math|W<rsup|y>=\<psi\><around|(|y;\<cdot\>|)>>.

    <item>For nondecreasing <math|y> the profile <math|y+s*\<varrho\>> has
    all gaps <math|\<geqslant\>s>. So (PG) bounds the remainder integrand by
    <math|C*<around|\<\|\|\>|D<rsup|m+1>*f|\<\|\|\>><rsub|L<rsup|1>>/m!>,
    uniformly in <math|y>.

    <item>Hence:

    <\itemize-minus>
      <item><math|y\<mapsto\>W<rsup|y><around|(|f|)>> is continuous on the
      closed set of nondecreasing heights, by dominated convergence;

      <item><math|<around|\<lvert\>|W<rsup|y><around|(|f|)>|\<rvert\>>> is
      bounded by finitely many <math|L<rsup|1>> norms of <math|D<rsup|k>*f>,
      so <math|W<rsup|y>> is tempered.
    </itemize-minus>

    <item>Multilinearity in <math|v> follows from uniqueness of limits. At
    <math|y=0> this gives (BV).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Waves.desired>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Breath.lean#L27-L28>,
  <hlink|<verbatim|Waves.meant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Breath.lean#L50-L66>,
  <hlink|<verbatim|Waves.maintains>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Breath.lean#L78-L101>,
  <hlink|<verbatim|Waves.cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Osc.lean#L27-L36>,
  <hlink|<verbatim|Waves.seeks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Osc.lean#L44-L80>.

  <strong|Lemma V.2.i (Laplace identity; C05).> As in V.2.4(a). <em|Proof
  sketch.> Put <math|A<around|(|s|)>=\<psi\><rsub|v><around*|(|s*y;<wide|e<rsup|s*<around|\<langle\>|<wide*|y|\<bar\>>,\<cdot\>|\<rangle\>>>*f|^>|)>>
  for <math|s\<gtr\>0>.

  <\enumerate>
    <item><strong|<math|A> is constant.> By (CR) along <math|y>, and since
    <math|<frac|d|d*s><wide|e<rsup|s<around|\<langle\>|<wide*|y|\<bar\>>,\<cdot\>|\<rangle\>>>*f|^>=i*<space|0.17em>\<partial\><rsub|<wide*|y|\<bar\>>><wide|e<rsup|s<around|\<langle\>|<wide*|y|\<bar\>>,\<cdot\>|\<rangle\>>>*f|^>>
    in <math|\<cal-S\>> (here compact support is needed),
    <math|A<rprime|'><around|(|s|)>=0>. The product rule is justified by the
    uniform bound <math|<around|\<lvert\>|\<psi\><rsub|y<rprime|'>><around|(|g|)>|\<rvert\>>\<leqslant\><math-up|toll><around|(|g|)>>
    of V.2.h.

    <item><strong|The limit.> As <math|s\<to\>0<rsup|+>>,
    <math|A<around|(|s|)>\<to\>W<rsub|n><around|(|v|)><around|(|<wide|f|^>|)>>,
    by the radial limit and the same bound.
  </enumerate>

  Only the radial limit is used. <em|Lean:>
  <hlink|<verbatim|C05.hasDerivAt_zero_psi>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C05.lean#L182-L201>,
  <hlink|<verbatim|C05.tendsto_psi>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C05.lean#L157-L177>.

  <strong|Lemma V.2.j (support in <math|\<cal-P\><rsub|n>>; C06).> As in
  V.2.4(b). <em|Proof sketch.> Let <math|y> be nondecreasing and <math|f>
  compactly supported in <math|<around|{|p:<around|\<langle\>|<wide*|y|\<bar\>>,p|\<rangle\>>\<less\>-1|}>>.

  <\enumerate>
    <item>Apply V.2.i at the ordered heights
    <math|Y<around|(|t|)>=t*y+\<varrho\>>, whose gaps are all
    <math|\<geqslant\>1>.

    <item>(PG) with <math|k=1> gives <math|<around|\<lvert\>|\<psi\><rsub|Y<around|(|t|)>><around|(|<wide|g|^>|)>|\<rvert\>>\<leqslant\>C<around|\<\|\|\>|<wide|g|^>|\<\|\|\>><rsub|L<rsup|1>>>.

    <item>Absorb <math|e<rsup|<around|\<langle\>|<wide*|\<varrho\>|\<bar\>>,\<cdot\>|\<rangle\>>>>
    into the compact test. Every seminorm of the remaining factor
    <math|e<rsup|t<around|\<langle\>|<wide*|y|\<bar\>>,\<cdot\>|\<rangle\>>>>
    times that test is bounded by a polynomial in <math|t> times
    <math|e<rsup|-t>>, and tends to zero.

    <item>Hence <math|W<around|(|<wide|f|^>|)>=0>. Rescaling <math|y> removes
    the <math|-1>.
  </enumerate>

  Constant profiles of both signs force <math|<big|sum><rsub|k>p<rsup|0><rsub|k>=0>.
  <em|Lean:> <hlink|<verbatim|C06.patch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C06.lean#L101-L134>,
  <hlink|<verbatim|C06.lift_falls>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C06.lean#L38-L86>.

  <subsection|4.4 Poincaré covariance><label|44-poincarÃ©-covariance>

  <strong|Lemma V.2.k (Poincaré action on <math|\<cal-S\>>; C08).> As in
  V.2.5(b). <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|Continuity.> The seminorm estimate
    <math|p<rsub|i,k>*<around|(|f\<circ\><around|(|A|(>\<cdot\>-b|)>))\<leqslant\><around|(|<around|\<\|\|\>|A<rsup|-1>|\<\|\|\>>+<around|\<lvert\>|b|\<rvert\>>|)><rsup|i><around|\<\|\|\>|A|\<\|\|\>><rsup|k>*2<rsup|i>*max<rsub|<around|(|i<rprime|'>,k<rprime|'>|)>\<leqslant\><around|(|i,k|)>>
    p<rsub|i<rprime|'>,k<rprime|'>><around|(|f|)>> combines with locally
    uniform convergence of jets (V.2.c, item 1).

    <item><strong|Derivative.> The pointwise derivative in <math|t> of
    <math|\<Lambda\><rsub|a><around|(|t|)><rsub|\<ast\>>*f> is
    <math|-\<Lambda\><rsub|a><around|(|t|)><rsub|\<ast\>>*D<rsub|a>*f>. The
    slope error is written as <math|<big|int><rsub|0><rsup|1><around|(|\<cdummy\>|)>*<space|0.17em>d*u>
    (fundamental theorem of calculus) and controlled in <math|\<cal-S\>> by
    the continuity just proved.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|C08.size_affine_le>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C08.lean#L31-L59>,
  <hlink|<verbatim|C08.continuous_gpush>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C08.lean#L179-L185>,
  <hlink|<verbatim|C08.probe_slope_of_pointwise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C08.lean#L127-L161>.

  <strong|Lemma V.2.l (boost identity at strict heights; C07).> As in
  V.2.5(c). <em|Proof sketch.>

  <\enumerate>
    <item><strong|Euclidean input.> Differentiating the
    <math|O<around|(|4|)>> covariance of <math|T> along <math|exp
    <around|(|s*<space|0.17em>e<rsub|0>\<wedge\>e<rsub|a>|)>> at a
    non-coincident configuration gives the rotation Ward identity: the
    derivative of <math|T<around|(|x;v|)>> along the rotation field equals
    <math|-<big|sum><rsub|k>T<around|(|x;\<ldots\>,\<rho\>*<around|(|e<rsub|0>\<wedge\>e<rsub|a>|)>*v<rsub|k>,\<ldots\>|)>>.

    <item><strong|The analytic function <math|E<around|(|z|)>>.> Fix <math|f>
    with compact support and introduce a complex parameter <math|z> and the
    times <math|z*<space|0.17em>x<rsup|0><rsub|k>+i*y<rsub|k>>. Let
    <math|E<around|(|z|)>> be the integral of
  </enumerate>

  <\equation*>
    F\<cdot\><around*|(|<big|sum><rsub|k><around*|[|x<rsup|a><rsub|k>*\<partial\><rsub|x<rsup|0><rsub|k>>+z*<around|(|z*x<rsup|0><rsub|k>+i*y<rsub|k>|)>*\<partial\><rsub|x<rsup|a><rsub|k>>|]>*f|)>-z*<big|sum><rsub|k>F<around|(|v<rsup|<around|(|k|)>>|)>*f.
  </equation*>

  The times stay strictly ordered on <math|<math-up|supp>f> for <math|z> in a
  convex open set containing <math|\<bbb-R\>>, and <math|E> is holomorphic
  there. 3. <strong|<math|E> vanishes on a segment of the imaginary axis.> At
  <math|z=i*w>, <math|w\<gtr\>0> small, the configuration is Euclidean, with
  times <math|y<rsub|k>+w*x<rsup|0><rsub|k>>. There the vector field is
  <math|w> times the pull-back of the <math|<around|(|0,a|)>>-rotation field,
  and <math|F> is the Schwinger function. By step 1 the integrand is the
  divergence of the compactly supported vector field <math|f*T> times the
  divergence-free rotation field, so <math|E*<around|(|i*w|)>=0>. 4.
  <strong|Conclusion.> The identity theorem gives <math|E<around|(|1|)>=0>,
  which is (B<math|<rsub|y>>) for compactly supported <math|f>. Density
  (cutoffs) and the continuity of <math|f\<mapsto\>\<psi\><around|(|y;f|)>>
  (V.2.h at fixed <math|y>) give all <math|f>.

  The term <math|i*y<rsub|k>*\<partial\><rsub|x<rsup|a><rsub|k>>> is the
  imaginary part of the complex time multiplying the spatial derivative.
  <em|Lean:> <hlink|<verbatim|C07.oriented_differential>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C07/Euclid.lean#L104-L125>,
  <hlink|<verbatim|C07.integral_orbit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C07/Integrate.lean#L47-L75>,
  <hlink|<verbatim|C07.error_imag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C07/Integrate.lean#L126-L162>,
  <hlink|<verbatim|C07.error_one>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C07/Continue.lean#L128-L148>,
  <hlink|<verbatim|C07.compact_boost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C07/Continue.lean#L150-L170>,
  <hlink|<verbatim|C07.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C07.lean#L53-L66>.

  <strong|Lemma V.2.m (real Poincaré covariance; C09, A16).> As in V.2.5(a),
  (d). <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|Translations by <math|a=<around|(|<wide|a|\<vect\>>,a<rsup|0>|)>>.>
    For fixed <math|y\<in\>E<rsub|n>>, <math|F<rsup|y><rsub|n>*<around|(|x+a|)>=F<rsup|y><rsub|n><around|(|x|)>>.
    This follows from a one-variable identity theorem in <math|c> for the
    times <math|i<space|0.17em><math-up|Im><space|0.17em>z<rsub|k>+c*<around|(|<math-up|Re><space|0.17em>z<rsub|k>+a<rsup|0>|)>>:
    at <math|c=i*b> the times are imaginary, and Euclidean translation
    invariance by <math|<around|(|<wide|a|\<vect\>>,b*a<rsup|0>|)>> applies.
    Change variables and let <math|y\<to\>0> (BV).

    <item><strong|Spatial rotations.> The same argument applies, using
    <math|O<around|(|3|)>\<subset\>O<around|(|4|)>> covariance and <math|K=R>
    on rotations.

    <item><strong|Boosts.>

    <\itemize-minus>
      <item>Passing (B<math|<rsub|y>>) to <math|y\<to\>0> removes the term
      <math|<big|sum>i*y<rsub|k>*\<partial\><rsub|x<rsup|a><rsub|k>>> and
      gives <math|<big|sum><rsub|k>W<around|(|v<rsup|<around|(|k|)>>|)><around|(|f|)>=W<around|(|v|)>*<around|(|D<rsub|a>*f|)>>.

      <item>The function <math|h<around|(|t|)>=W<rsub|n>*<around|(|K<around|(|\<Lambda\><rsub|a><around|(|t|)>|)>*v|)>*<around|(|\<Lambda\><rsub|a><around|(|t|)><rsub|\<ast\>>*f|)>>
      has derivative <math|0> at <math|t=0>, by C08(b), the boost derivative,
      and finite-dimensional expansion of the labels.

      <item>By the group law <math|h<rprime|'>> vanishes everywhere, so
      <math|h> is constant.
    </itemize-minus>

    <item><strong|The Lorentz group.> The <math|\<Lambda\>> for which
    covariance holds form a subgroup containing the rotations and the
    coordinate boosts. A16 makes it all of
    <math|\<cal-L\><rsup|\<uparrow\>><rsub|+>>. The proof of A16 is purely
    group-theoretic: up to three boosts bring a future unit vector to rest,
    and its stabilizer consists of rotations.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|C09.time_compare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C09.lean#L33-L115>,
  <hlink|<verbatim|C09.restricted_translation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C09.lean#L123-L148>,
  <hlink|<verbatim|C09.restricted_spatial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C09.lean#L168-L199>,
  <hlink|<verbatim|C09.boost_corner>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C09.lean#L242-L279>,
  <hlink|<verbatim|C09.boost_invariant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C09.lean#L374-L399>,
  <hlink|<verbatim|A16.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A16.lean#L91-L101>.

  <strong|Lemma V.2.n (word covariance and cone support; C28).> As in
  V.2.5(e) and V.2.4(c). <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|Gram invariance.> The induced star commutes with the
    letterwise action by spin compatibility. Pushed tensor tests are
    <math|g<rsub|\<ast\>>> of the tensor test; then apply (Cov).

    <item><strong|Continuity.> Use C08(b, first part), continuity of
    <math|\<Lambda\>\<mapsto\>K<around|(|\<Lambda\>|)>> on a
    finite-dimensional level, and continuity of
    <math|W<rsub|n><around|(|v|)>>.

    <item><strong|Lorentz improvement of spectral support.> The Fourier
    transform intertwines <math|\<Lambda\>> with <math|<wide|\<Lambda\>|~>>,
    so covariance carries the support condition <math|\<cal-P\><rsub|n>> to
    <math|<wide|\<Lambda\>|~><rsup|-1>*\<cal-P\><rsub|n>> for every
    <math|\<Lambda\>>. The properties of <math|\<cal-V\><rsub|n>> follow from
    half-space support applied to step profiles and to constant profiles.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|C28.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C28.lean#L134-L143>,
  <hlink|<verbatim|tents>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Closing.lean#L106-L121>.

  <subsection|4.5 Continuation to the full
  tube><label|45-continuation-to-the-full-tube>

  <strong|Lemma V.2.o (cone geometry, cutoff, damping; C10\UC12).> As in
  V.2.6(a)\U(c). <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|C10.> Summation by parts gives
    <math|<around|\<langle\>|p,\<eta\>|\<rangle\>>=<big|sum><rsub|k><around|\<langle\>|P<rsub|k+1>,\<eta\><rsub|k+1>-\<eta\><rsub|k>|\<rangle\>>>,
    where <math|P<rsub|j>=<big|sum><rsub|l\<geqslant\>j>p<rsub|l>> and
    <math|P<rsub|1>=0>. Each term is <math|\<geqslant\>0> because
    <math|<wide|V|\<bar\>><rsub|+>> is self-dual for the Euclidean pairing.
    For the local bound: if <math|B<around|(|\<eta\>,r|)>\<subset\>V<rsup|+><rsub|n>>
    and <math|p\<ne\>0>, then for <math|u\<in\>B<around|(|\<eta\>,r/2|)>> the
    point <math|u-<tfrac|r|2>p/<around|\<lvert\>|p|\<rvert\>>> lies in
    <math|<wide|V|\<bar\>><rsup|+><rsub|n>>, so
    <math|<around|\<langle\>|p,u|\<rangle\>>\<geqslant\><tfrac|r|2><around|\<lvert\>|p|\<rvert\>>>.

    <item><strong|C11.> Take <math|\<chi\><rsub|n>> = (a bump of integral
    <math|1> and outer radius <math|1/2>) <math|\<ast\>> (indicator of the
    open <math|2>-neighbourhood of <math|\<cal-V\><rsub|n>>).

    <item><strong|C12.> By C10, <math|-<around|\<langle\>|\<eta\>,p|\<rangle\>>\<leqslant\>3<around|\<lvert\>|\<eta\>|\<rvert\>>>
    on the <math|3>-neighbourhood. Leibniz bounds then hold uniformly for
    bounded <math|\<eta\>\<in\><wide|V|\<bar\>><rsup|+><rsub|n>>, and
    continuity into <math|\<cal-S\>> follows by V.2.c, item 1.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|C10.telescope>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C10.lean#L25-L35>,
  <hlink|<verbatim|C10.cone_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C10.lean#L48-L69>,
  <hlink|<verbatim|C11.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C11.lean#L57-L100>,
  <hlink|<verbatim|C12.cone_estimate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C12.lean#L68-L76>,
  <hlink|<verbatim|C12.attenuate_estimate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C12.lean#L84-L108>.

  <strong|Lemma V.2.p (holomorphy in the tube; C13).> As in V.2.6(d).
  <em|Proof sketch.>

  <\enumerate>
    <item><strong|Exponential reserve.> For <math|z\<in\>\<cal-T\><rsub|n>>,
    on <math|<math-up|supp>\<chi\><rsub|n>> one has
    <math|<math-up|Re><space|0.17em><around|(|i<around|\<langle\>|p,z|\<rangle\>>|)>=-<around|\<langle\>|p,<math-up|Im><space|0.17em>z|\<rangle\>>\<leqslant\>A-c<around|\<lvert\>|p|\<rvert\>>>,
    by C10 and distance <math|\<leqslant\>3>. So
    <math|e<rsup|i<around|\<langle\>|\<cdummy\>,z|\<rangle\>>>*\<chi\><rsub|n>>
    has finite seminorms weighted by <math|e<rsup|c<around|\<lvert\>|p|\<rvert\>>/2>>.

    <item><strong|Differentiability.> Write
    <math|L<rsub|z><around|(|p|)>=e<rsup|i<around|\<langle\>|p,z|\<rangle\>>>*\<chi\><rsub|n><around|(|p|)>>.
    For each Schwartz seminorm <math|q>, exponential decay gives
    <math|q*<around|(|L<rsub|z+h>-L<rsub|z>-i|\<langle\>>\<cdot\>,h\<rangle\>L<rsub|z>)\<leqslant\>C<rsub|q><around|\||h|\|><rsup|2>>
    for all sufficiently small <math|h>. Thus <math|z\<mapsto\>L<rsub|z>> is
    complex Fréchet differentiable into <math|\<cal-S\>>.

    <item><strong|Analyticity.> Compose with the continuous functional
    <math|\<cal-F\>*W>. Complex differentiability on an open set gives
    analyticity.
  </enumerate>

  The argument applies to every Schwartz test with the prescribed exponential
  form; C13 asserts the existence of such tests and the resulting holomorphy.
  <em|Lean:> <hlink|<verbatim|C13.lens_reserve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C13.lean#L61-L89>,
  <hlink|<verbatim|C13.analytic_interior>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C13.lean#L113-L125>;
  <hlink|<verbatim|ExpReserve.of_cut>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C13/Decay.lean#L93-L123>,
  <hlink|<verbatim|hasFDerivAt_shift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C13/Variation.lean#L150-L193>.

  <strong|Lemma V.2.q (partial boundary values as integrals; agreement with
  <math|F>; C14, C15).> As in V.2.6(e), (f). <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|C14.> For real <math|x> the Fourier\ULaplace test at
    <math|x+i*\<eta\>> is the modulation <math|e<rsup|i<around|\<langle\>|\<cdummy\>,x|\<rangle\>>>*g>,
    with <math|g=e<rsup|-<around|\<langle\>|\<eta\>,\<cdot\>|\<rangle\>>>*\<chi\><rsub|n>>.
    Hence <math|<big|int>\<cal-W\><rsub|n><around|(|v|)>*<around|(|x+i*\<eta\>|)>*f<around|(|x|)>*<space|0.17em>d*x=<around|(|\<cal-F\>*W|)>*<around|(|g*<wide|f|\<check\>>|)>>.
    The distribution is moved inside the <math|x>-integral via Riemann sums
    in <math|\<cal-S\>>, first for compactly supported <math|f>, then by
    density. Integrability comes from the polynomial growth of
    <math|x\<mapsto\>\<cal-W\>*<around|(|x+i*\<eta\>|)>>. Cone support is not
    needed.

    <item><strong|C15.>

    <\enumerate>
      <item>Since <math|<wide*|y|\<bar\>>\<in\>V<rsup|+><rsub|n>> and
      <math|<math-up|supp>\<cal-F\>*W\<subseteq\>\<cal-V\><rsub|n>>, the
      multipliers <math|e<rsup|-<around|\<langle\>|<wide*|y|\<bar\>>,\<cdot\>|\<rangle\>>>*\<chi\><rsub|n>>
      and <math|e<rsup|-<around|\<langle\>|<wide*|y|\<bar\>>,\<cdot\>|\<rangle\>>>>
      agree near the support.

      <item>So V.2.i gives <math|W<rsub|n><around|(|v|)><around|[|<wide*|y|\<bar\>>|]>=\<psi\><rsub|v><around|(|y;\<cdot\>|)>>
      on compactly supported tests, hence on all tests
      (<math|\<psi\><around|(|y;\<cdot\>|)>> is tempered by (I) and (PG)).

      <item>With C14, <math|<big|int>\<cal-W\>*<around|(|x+i<wide*|y|\<bar\>>|)>*f=<big|int>F<rsup|y><around|(|x|)>*f>
      for all <math|f>. Both integrands are continuous, so they are equal.
    </enumerate>
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|C14.modulation_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C14.lean#L133-L141>,
  <hlink|<verbatim|C14.emit_integral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C14.lean#L233-L253>,
  <hlink|<verbatim|C15.blanketed_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C15.lean#L60-L74>,
  <hlink|<verbatim|C15.partialD_psi>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C15.lean#L83-L99>.

  <strong|Lemma V.2.r (Lorentz covariance in the tube; C16).> As in V.2.6(g).
  <em|Proof sketch.>

  <\itemize-minus>
    <item><math|\<cal-V\><rsub|n>> is invariant under the dual action.

    <item>The Fourier\ULaplace test at <math|\<Lambda\>*z>, composed with
    <math|<wide|\<Lambda\>|~>>, differs from the lens at <math|z> only away
    from <math|\<cal-V\><rsub|n>>: both cutoffs equal <math|1> there, and the
    phases agree by duality.

    <item>Cone support, the intertwining of <math|\<cal-F\>> with
    <math|\<Lambda\>> and <math|<wide|\<Lambda\>|~>>, and (Cov) conclude.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|C16.lens_support>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C16.lean#L45-L73>,
  <hlink|<verbatim|C16.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C16.lean#L75-L91>.

  <subsection|4.6 Locality><label|46-locality>

  <strong|Lemma V.2.s (imaginary boosts at a spectator profile; C17).> As in
  V.2.7(a). <em|Proof sketch.>

  <\enumerate>
    <item><strong|Spectator profiles.> The profiles
    <math|y<rsub|m>=d/<around|(|m+1|)>> are spectator profiles. Monotone
    heights give <math|<wide*|y<rsub|m>|\<bar\>>\<in\><wide|V|\<bar\>><rsup|+><rsub|n>>,
    and <math|\<sigma\>> fixes <math|<wide*|y<rsub|m>|\<bar\>>>. The closure
    statements follow by approaching through strictly ordered heights.

    <item><strong|Choice of direction.> Let
    <math|\<xi\>=x<rsub|i+1>-x<rsub|i>> be spacelike, so
    <math|<wide|\<xi\>|\<vect\>>\<ne\>0>, and take
    <math|e=<wide|\<xi\>|\<vect\>>/<around|\<lvert\>|<wide|\<xi\>|\<vect\>>|\<rvert\>>>.
    Then
  </enumerate>

  <\equation*>
    <math-up|Im><around*|(|\<Lambda\><rsub|e>*<around|(|i*b|)>*w|)><rsub|k>=<math-up|Im><space|0.17em>w<rsub|k>+sin
    b\<cdot\>c<rsub|e><around|(|<math-up|Re><space|0.17em>w<rsub|k>|)>+<around|(|cos
    b-1|)>*<space|0.17em>s<rsub|e><around|(|<math-up|Im><space|0.17em>w<rsub|k>|)>,
  </equation*>

  with <math|c<rsub|e><around|(|<wide|X|\<vect\>>,t|)>=<around|(|t*e,e\<cdot\><wide|X|\<vect\>>|)>>
  and <math|s<rsub|e><around|(|<wide|X|\<vect\>>,t|)>=<around|(|<around|(|e\<cdot\><wide|X|\<vect\>>|)>*e,t|)>>.
  3. <strong|The pair difference.> Its imaginary part is <math|0> at
  <math|b=0>, and <math|c<rsub|e><around|(|\<xi\>|)>=<around|(|\<xi\><rsup|0>*e,<around|\<lvert\>|<wide|\<xi\>|\<vect\>>|\<rvert\>>|)>\<in\>V<rsub|+>>
  exactly because <math|<around|\<lvert\>|\<xi\><rsup|0>|\<rvert\>>\<less\><around|\<lvert\>|<wide|\<xi\>|\<vect\>>|\<rvert\>>>
  (the Jost condition). So the difference enters <math|V<rsub|+>> for small
  <math|b\<gtr\>0>. 4. <strong|The other consecutive differences.> They are
  already in <math|V<rsub|+>> and stay there by continuity, uniformly near
  the base point. 5. <strong|The swapped tube.> After the swap the pair
  difference is <math|-\<xi\>>, and the opposite rapidity <math|-i*b>
  compensates.

  For <math|n=2> the profile is identically <math|0>, so the germs sit at
  real points. <em|Lean:> <hlink|<verbatim|C17.height_path>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C17.lean#L247-L275>,
  <hlink|<verbatim|C17.fleck_of_spectator>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C17.lean#L44-L77>,
  <hlink|<verbatim|C17.choose_direction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C17.lean#L79-L92>,
  <hlink|<verbatim|C17.enters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C17.lean#L126-L171>,
  <hlink|<verbatim|C17.local_paths>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C17.lean#L173-L241>.

  <strong|Lemma V.2.t (complexified labels; the two germs; C18, C19).> As in
  V.2.7(b), (c). <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|C18.> A continuous one-parameter group on a
    finite-dimensional space is <math|e<rsup|t*X>> (via
    <math|<big|int><rsub|0><rsup|t>> and invertibility for small <math|t>),
    and <math|e<rsup|\<zeta\>*X>> is entire.

    <item><strong|C19.>

    <\enumerate>
      <item>Put all labels at one level <math|d> and write
      <math|K<rsub|d,e><around|(|\<zeta\>|)>> for the entire extension from
      C18. Define the germ at <math|x+i<wide*|y|\<bar\>>> by
      <math|w\<mapsto\>\<cal-W\><rsub|n>*<around|(|<math-up|pin><rsub|d>K<rsub|d,e>*<around|(|i*t|)>*v|)>*<around|(|\<Lambda\><rsub|e>*<around|(|i*t|)>*w|)>>.
      It is holomorphic near <math|x+i<wide*|y|\<bar\>>> because
      <math|\<Lambda\><rsub|e>*<around|(|i*t|)>*<around|(|x+i<wide*|y|\<bar\>>|)>\<in\>\<cal-T\><rsub|n>>
      and <math|\<Lambda\><rsub|e>*<around|(|i*t|)>> is complex linear.

      <item>Fix <math|w\<in\>\<cal-T\><rsub|n>> near the point. The function
      <math|\<zeta\>\<mapsto\>\<cal-W\><rsub|n>*<around|(|<math-up|pin><rsub|d>K<rsub|d,e><around|(|\<zeta\>|)>*v|)>*<around|(|\<Lambda\><rsub|e><around|(|\<zeta\>|)>*w|)>>
      is holomorphic near the segment <math|i<around|[|0,t|]>>, by the path
      conditions, and constant for real <math|\<zeta\>>, by V.2.6(g).

      <item>The identity theorem makes it constant on the segment, so the
      germ equals <math|\<cal-W\><rsub|n><around|(|v|)>> on
      <math|\<cal-T\><rsub|n>> near <math|x+i<wide*|y|\<bar\>>>.

      <item>The tilted germ uses <math|-i*t>, the labels <math|v\<circ\>s>,
      and <math|\<sigma\>>.
    </enumerate>
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|C18.eq_exponential>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C18.lean#L12-L44>,
  <hlink|<verbatim|C18.entire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C18.lean#L46-L54>,
  <hlink|<verbatim|C19.paneAlong>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C19.lean#L161-L211>.

  <strong|Lemma V.2.u (agreement at Euclidean points; C20).> As in V.2.7(d).
  <em|Proof sketch.>

  <\enumerate>
    <item><strong|The Wick slice.> Let <math|M<around|(|<wide|x|\<vect\>>,\<tau\>|)>=<around|(|<wide|x|\<vect\>>,i*\<tau\>|)>>.
    Its complex span is <math|\<bbb-C\><rsup|4*n>>. If <math|x> has zero
    times, then <math|M<around|(|<wide|x|\<vect\>>,y|)>=x+i<wide*|y|\<bar\>>>.

    <item><strong|The original germ.> On the open set of strictly ordered
    <math|\<tau\>>, <math|M> maps into <math|\<cal-T\><rsub|n>>, and
    <math|g<rsup|<math-up|o>>\<circ\>M=\<cal-W\>\<circ\>M=F> at imaginary
    times. That equals the Schwinger function
    <math|T<around|(|<around|(|<wide|x|\<vect\>><rsub|k>,\<tau\><rsub|k>|)>;v|)>>
    (V.2.6(f), (SC)).

    <item><strong|The tilted germ.> On the swapped-ordered set,
    <math|g<rsup|<math-up|t>>\<circ\>M> equals the same Schwinger function,
    by permutation symmetry of <math|T>.

    <item><strong|Smoothness at the base point.> The point
    <math|<around|(|<wide|x|\<vect\>>,y|)>> is non-coincident: the pair has
    equal times but <math|<wide|x|\<vect\>><rsub|i>\<ne\><wide|x|\<vect\>><rsub|i+1>>
    by spacelikeness. So <math|T> is smooth there.

    <item><strong|Jets.> Both open sets accumulate at
    <math|<around|(|<wide|x|\<vect\>>,y|)>>. Hence all real jets of
    <math|g<rsup|<math-up|o>>\<circ\>M> and
    <math|g<rsup|<math-up|t>>\<circ\>M> at that point equal those of
    <math|T>.

    <item><strong|Conclusion.> Real jets on a slice that spans over
    <math|\<bbb-C\>> determine all complex derivatives, so
    <math|g<rsup|<math-up|o>>=g<rsup|<math-up|t>>> near
    <math|x+i<wide*|y|\<bar\>>>.
  </enumerate>

  No Schwarz reflection and no edge-of-the-wedge theorem are used. <em|Lean:>
  <hlink|<verbatim|C20.jets_on_open_side>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C20.lean#L34-L46>,
  <hlink|<verbatim|C20.complex_germ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C20.lean#L67-L87>,
  <hlink|<verbatim|C20.emit_table>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C20.lean#L230-L240>.

  <strong|Lemma V.2.v (local realization and exchange; C21).> As in V.2.7(e),
  (f). <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|C21.> As <math|\<eta\>\<to\><wide*|y|\<bar\>>> within
    <math|V<rsup|+><rsub|n>>, <math|<big|int>\<cal-W\>*<around|(|\<xi\>+i*\<eta\>|)>*f<around|(|\<xi\>|)>*<space|0.17em>d*\<xi\>\<to\>W<around|[|<wide*|y|\<bar\>>|]><around|(|f|)>>,
    by C14 and continuity of <math|\<eta\>\<mapsto\>W<around|[|\<eta\>|]>> on
    <math|<wide|V|\<bar\>><rsup|+><rsub|n>>. Near <math|x+i<wide*|y|\<bar\>>>
    the germ is bounded and equals <math|\<cal-W\>> on
    <math|\<cal-T\><rsub|n>>, so dominated convergence gives the integral of
    the germ. The swapped case is the same after a change of variables.

    <item><strong|Propagation.> For <math|x\<in\>\<Gamma\><rsub|Q>>, the path
    <math|x\<mapsto\><around|(|<wide|x|\<vect\>>,t*x<rsup|0>|)>>,
    <math|t\<in\><around|[|0,1|]>>, stays in <math|\<Gamma\><rsub|Q>>.
    Agreement of the two germs is an open and closed condition along this
    path, so it passes from the zero-time point to <math|x>.

    <item><strong|Local equality.> On a small ball around each point of
    <math|\<Gamma\><rsub|Q>> both partial boundary values are integrals of
    the same germ, so their difference vanishes on <math|\<Gamma\><rsub|Q>>.

    <item><strong|Exchange.> Let <math|m\<to\>\<infty\>>. Then
    <math|W<around|[|<wide*|y<rsub|m>|\<bar\>>|]>\<to\>W<around|[|0|]>=W>, by
    continuity in <math|\<eta\>> and because <math|\<chi\><rsub|n>=1> near
    <math|\<cal-V\><rsub|n>>, and similarly on the swapped side.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|C21.realize>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C21.lean#L15-L56>,
  <hlink|<verbatim|Panes.reaches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Exchange.lean#L43-L56>,
  <hlink|<verbatim|Panes.forgets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Exchange.lean#L68-L90>,
  <hlink|<verbatim|NearPair.actor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Exchange.lean#L92-L112>;
  <hlink|<verbatim|Pane.propagate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Swap.lean#L101-L130>,
  <hlink|<verbatim|Blanket.flatD>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Sol.lean#L85-L96>.

  <strong|Lemma V.2.w (locality for words; C27).> As in V.2.7(g). <em|Proof
  sketch.> If <math|<math-up|supp>f-<math-up|supp>g> is spacelike, the tensor
  test of the word <math|a<space|0.17em><around|(|u,f|)><around|(|u<rprime|'>,g|)>*<space|0.17em>c>
  is supported in <math|\<Gamma\><rsub|Q>>, with <math|Q> the slots of
  <math|<around|(|u,f|)>> and <math|<around|(|u<rprime|'>,g|)>>. Composing
  with <math|\<sigma\>> swaps the two factors. Joint locality applies to all
  Schwartz tests supported in <math|\<Gamma\><rsub|Q>>, so no density
  argument is needed. The pair may be at any position in a word of any length
  <math|\<geqslant\>2>. <em|Lean:> <hlink|<verbatim|C27.coordinate_tsupport>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C27.lean#L12-L19>,
  <hlink|<verbatim|C27.exchange>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C27.lean#L28-L39>.

  <subsection|4.7 Real-time vectors, Gram limits,
  nulls><label|47-real-time-vectors-gram-limits-nulls>

  <strong|Lemma V.2.x (Gram form of heated vectors; C22).> As in V.2.8(a).
  <em|Proof sketch.>

  <\enumerate>
    <item><strong|Imaginary times.> At imaginary times each heated vector is
    the GNS vector of a positive-time Euclidean word.

    <\itemize-minus>
      <item>Their inner product is the reflection-positive form, i.e. the
      Schwinger function of <em|reflected first word, second word>: times
      negated, order reversed, labels starred.

      <item>By (SC) this is <math|F> at <math|i\<cdot\>h>. Here the star
      <math|J> appears because it is the induced reflection adjoint, and
      null-space compatibility is used.
    </itemize-minus>

    <item><strong|Continuation in real times.> Introduce one complex
    parameter <math|c> and the times <math|i*y<rsub|k>+c*<space|0.17em>r<rsup|0><rsub|k>>.
    Both sides are holomorphic on a strip
    <math|<around|\<lvert\>|<math-up|Im><space|0.17em>c|\<rvert\>>\<less\>\<delta\>>;
    the left side is antiholomorphic in the first slot, handled by
    conjugation.

    <item><strong|Conclusion.> The two sides agree at <math|c=i*\<tau\>> for
    small <math|\<tau\>>, hence at <math|c=1>.
  </enumerate>

  The width formula of C03 is not used. <em|Lean:>
  <hlink|<verbatim|C22.euclideanRef>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C22.lean#L70-L107>,
  <hlink|<verbatim|C22.onImag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C22.lean#L170-L192>,
  <hlink|<verbatim|C22.pointJoined>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C22.lean#L274-L336>.

  <strong|Lemma V.2.y (heat cups and their Gram limit; C23, C24).> As in
  V.2.8(b), (c). <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|C23.>

    <\itemize-minus>
      <item><math|x\<mapsto\>\<Psi\><around|(|\<cdummy\>;x|)>> is continuous
      and bounded by <math|<around|\<\|\|\>|\<Omega\>|\<\|\|\>>*<big|prod><around|\<\|\|\>|B<rsub|p><around|(|v<rsub|k>|)>|\<\|\|\>>>,
      since the propagators are contractions. So the integrand is Bochner
      integrable.

      <item>Translation covariance comes from the difference structure of
      <math|\<Psi\>> and <math|U<around|(|a|)>*\<Omega\>=\<Omega\>>.
    </itemize-minus>

    <item><strong|C24.>

    <\enumerate>
      <item>By the pointwise Gram identity and Fubini,
      <math|<around|\<langle\>|\<Phi\><rsub|s><around|(|b|)>,\<Phi\><rsub|s<rprime|'>><around|(|c|)>|\<rangle\>>>
      is the integral of <math|F> at heights
      <math|h=<around|(|-n*s,\<ldots\>,-s,s<rprime|'>,\<ldots\>,m*s<rprime|'>|)>>
      against the test <math|f<rsub|b><rsup|\<ast\>>\<otimes\>f<rsub|c>>.

      <item>As <math|<around|(|s,s<rprime|'>|)>\<to\>0>, <math|h\<to\>0>
      within <math|E<rsub|n+m>> along a two-parameter family with no fixed
      direction. The unrestricted boundary limit applies to this family,
      whose two scales vary independently.

      <item>(BV) gives the limit <math|W*<around|(|b<rsup|\<ast\>>*c|)>>.
    </enumerate>
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|C23.shot_control>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C23.lean#L53-L83>,
  <hlink|<verbatim|C23.heatCup_shift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C23.lean#L207-L216>,
  <hlink|<verbatim|C24.toward>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C24.lean#L61-L73>,
  <hlink|<verbatim|C24.integrated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C24.lean#L118-L144>.

  <strong|Lemma V.2.z (nulls; word insertion; C26, C29).> As in V.2.8(e),
  (f). <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|C26.> Let <math|u=<math-up|pin><rsub|d><around|[|w|]>> be a
    marker.

    <\enumerate>
      <item>By C25, every <math|W<rsub|n><around|(|\<ldots\>,u,\<ldots\>|)>>
      vanishes as a distribution.

      <item>By V.2.6(f), <math|F<rsup|y>=0> for ordered <math|y>, so the
      Schwinger functions with <math|w> in some slot vanish at time-ordered
      non-coincident points.

      <item>Symmetry and continuity give vanishing at all non-coincident
      points. So <math|w\<in\>N<rsub|d><around|(|T|)>=N<rsub|d><around|(|S|)>>,
      and <math|u=0>.
    </enumerate>

    <item><strong|C29.>

    <\itemize-minus>
      <item>word bilinearity is the multilinearity of <math|W<rsub|n>>
      composed with that of <math|\<otimes\>>.

      <item>continuity in the two tests follows from continuity of
      <math|W<rsub|n><around|(|v|)>>, of <math|<around|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)>\<mapsto\>\<otimes\>f<rsub|k>>,
      and of conjugation.
    </itemize-minus>
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|C26.marker_on_joint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C26.lean#L23-L38>,
  <hlink|<verbatim|C26.strict_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C26.lean#L40-L51>,
  <hlink|<verbatim|C26.read_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C26.lean#L55-L75>,
  <hlink|<verbatim|C29.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C29.lean#L110>.

  <subsection|4.8 Assembly (VIII.1) and the field
  realization><label|48-assembly-viii1-and-the-field-realization>

  The reconstruction is assembled in <hlink|<verbatim|Next/BOUNDARY/Stage.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean>,
  in this order.

  <\enumerate>
    <item><hlink|<verbatim|rhythm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L39-L44>
    chains C01 \<rightarrow\> C02 \<rightarrow\> C03 \<rightarrow\> C04.

    <\itemize-minus>
      <item><hlink|<verbatim|Rhythm.opens>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Theatre.lean#L29-L31>
      (V.2.h) produces <math|W>.

      <item><hlink|<verbatim|at_contour>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L52-L78>
      shows that any prescribed continuation\Uboundary pair for <math|T>
      satisfies (BV).
    </itemize-minus>

    <item><hlink|<verbatim|illuminated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L82-L90>
    applies C07, C09 (with A16 and C08), C05 and C06.
    <hlink|<verbatim|spectra>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L92>
    uses Lorentz improvement of spectral support to get cone support.

    <item><hlink|<verbatim|blankets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L94-L95>
    (C10, C12), <hlink|<verbatim|visible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L97-L99>
    (C13) and <hlink|<verbatim|neon_any>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L101-L111>
    (C13\UC15) give (TC). <hlink|<verbatim|emit_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Unique.lean#L187-L203>
    shows that the continuation on <math|\<cal-T\><rsub|n>> does not depend
    on the cutoff.

    <item><hlink|<verbatim|windows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L122-L138>
    combines C17, C19 (with C18 and C16), C20 and C21.
    <hlink|<verbatim|Show.uses>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Theatre.lean#L64-L67>
    then gets joint locality from the boundary exchange lemma and Lorentz
    improvement of spectral support.

    <item><hlink|<verbatim|revealing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L142-L162>
    applies C22, C26 with C25, and C24 with C23.

    <item><hlink|<verbatim|establishing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L167-L184>
    applies C28, C29 and C27, then builds the field system (step 7).

    <item>The field system is built (V.2.10) in the following order.

    <\enumerate>
      <item>The heat cups converge: the two-variable Gram limit makes
      <math|s\<mapsto\>\<Phi\><rsub|s><around|(|b|)>> Cauchy
      (<hlink|<verbatim|norms_kernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Lo.lean#L19-L31>,
      <hlink|<verbatim|Cups.out>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Lo.lean#L55-L60>).
      The limit vectors <math|\<Phi\><rsub|0><around|(|b|)>> satisfy
      <math|<around|\<langle\>|\<Phi\><rsub|0><around|(|b|)>,\<Phi\><rsub|0><around|(|c|)>|\<rangle\>>=<around|\<langle\>|b,c|\<rangle\>><rsub|W>>
      and <math|\<Phi\><rsub|0><around|(|\<varnothing\>|)>=\<Omega\>>.

      <item>Hence <math|<around|\<langle\>|\<cdummy\>,\<cdummy\>|\<rangle\>><rsub|W>>
      is positive (<hlink|<verbatim|Outfield.safe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Lo.lean#L66-L71>),
      and V.2.a gives its Kolmogorov space.

      <item>Fields act by left multiplication of words. The identity
      <math|<around|\<langle\>|<around|(|u,f|)>*b,c|\<rangle\>><rsub|W>=<around|\<langle\>|b,<around|(|J*u,<wide|f|\<bar\>>|)>*c|\<rangle\>><rsub|W>>
      shows that a null linear combination of words remains null after left
      multiplication, so the fields are well defined
      (<hlink|<verbatim|Soil.starter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Stems.lean#L120-L137>).

      <item>The same identity gives the formal adjoint. The other properties
      of <math|W> give the remaining clauses of V.2.9: temperedness
      (continuity in the two tests); local commutativity (word locality);
      field faithfulness (label faithfulness).

      <item>A unitary representation <math|U> of <math|\<cal-P\>> is defined
      by <math|U<around|(|g|)><around|[|b|]>=<around|[|g\<cdot\>b|]>>, using
      invariance of the word Gram form and continuity of word matrix elements
      (<hlink|<verbatim|Soil.mobilize>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Motion.lean#L72-L87>).

      <item><math|<around|[|b|]>\<mapsto\>\<Phi\><rsub|0><around|(|b|)>> is
      an isometry into <math|\<cal-H\>> that intertwines translations and
      sends the vacuum to <math|\<Omega\>>
      (<hlink|<verbatim|universal_embed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Motion.lean#L31-L53>,
      <hlink|<verbatim|Outfield.daylight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Lo.lean#L76-L82>).

      <item><strong|Spectrum condition> (<hlink|<verbatim|Action.spectrum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Spectrum.lean#L108-L114>).
      The isometric intertwiner identifies each scalar spectral measure with
      that of its image in <math|\<cal-H\>>, by equality of characteristic
      functions. These measures are supported in
      <math|<around|{|p<rsup|0>\<geqslant\>0|}>> by positivity of <math|H>.
      Lorentz covariance of <math|U> upgrades this to support in
      <math|<wide|V|\<bar\>><rsub|+>>.

      <item><strong|Vacuum uniqueness> (<hlink|<verbatim|Action.only>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Spectrum.lean#L116-L121>).
      Under one-dimensionality of the heat-fixed space, an invariant vector
      is mapped to the ground space of <math|\<cal-H\>>, which is
      <math|\<bbb-C\>*\<Omega\>>.
    </enumerate>

    <item><hlink|<verbatim|Compatible.vacuum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L217-L221>
    adds uniqueness for the selected phase.
    <hlink|<verbatim|after_materializes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L247-L255>
    runs the chain for the mixed table (<math|S=T>, without vacuum
    uniqueness) and for the selected phase.
  </enumerate>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The boost argument must control moving labels and tests without imposing a
  topology on the full label union. All labels are first placed in one
  finite-dimensional level; Schwartz estimates then justify the derivative
  and its boundary limit. The locality argument needs equality of complete
  jets on the Wick slice. Equality of values at zero real times would not
  determine the two germs. Smoothness of the Euclidean correlations at
  non-coincident configurations, including equal pair times, supplies those
  jets.

  The Taylor formula in V.2.h gives a bound uniform over all nondecreasing
  heights. This uniformity permits varying tests in the Laplace identity and
  independent heating scales in the Gram limit. Positivity of the word kernel
  then suffices for the field construction; surjectivity of the embedding
  into the OS space is not required.

  Several formal hypotheses are stronger than the corresponding proof needs.
  The slab-insertion construction uses the slab bound but not the derivative
  laws of the spread. C05 and C06 use the tested identities and growth bound
  without Euclidean root values. C14 uses the damping properties without
  spectral support; C16 uses spectral support and Lorentz covariance without
  agreement with the strict-time continuation. These distinctions do not
  remove the hypotheses from the statements above.

  The pairing is Euclidean, so momenta transform by
  <math|<wide|\<Lambda\>|~>=<math-ss|r>\<Lambda\><math-ss|r>>. The tube uses
  absolute coordinates and imposes no condition on its first imaginary point.
  For <math|n=1>, it is <math|\<bbb-C\><rsup|4>> and
  <math|\<cal-V\><rsub|1>=<around|{|0|}>>. The polynomial bound is per label
  tuple, with no uniformity in the arity. The chosen value <math|B<rsub|0>=0>
  is outside the admissible widths. The Laplace identity is stated on
  compactly supported tests.

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|object>>|<cell|<strong|code
  name>>|<cell|<strong|proposed notation>>>|<row|<cell|OS Hilbert space of
  <math|T>, time axis>|<cell|<hlink|<verbatim|OS.Chamber>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L57-L61>>|<cell|<math|\<cal-H\>>,
  <math|\<Omega\>>, <math|H>, <math|U<around|(|<wide|a|\<vect\>>|)>>>>|<row|<cell|slab
  operators of a spread; slab bound>|<cell|<hlink|<verbatim|OS.Spread>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L101-L104>,
  <hlink|<verbatim|AllCopy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L111-L113>>|<cell|<math|A<rsub|d><around|(|w|)>>;
  (SB)>>|<row|<cell|hypothesis package of
  C01>|<cell|<hlink|<verbatim|Bid.Pantry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L23-L30>>|<cell|(H)>>|<row|<cell|labels
  of <math|S>; tags; insertion>|<cell|<verbatim|S.Union>, <verbatim|S.Tag>,
  <verbatim|pin>>|<cell|<math|\<cal-F\>>, <math|<around|(|d,v|)>>,
  <math|<math-up|pin><rsub|d>>>>|<row|<cell|Euclidean function of <math|T> on
  labels of <math|S>>|<cell|<verbatim|S.useAt
  T>>|<cell|<math|T<around|(|x;v|)>>>>|<row|<cell|single insertions between
  heat factors>|<cell|<hlink|<verbatim|Small>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Tall.lean#L19-L20>
  (<verbatim|bar>)>|<cell|<math|B<rsub|p><around|(|v|)>>>>|<row|<cell|propagator
  between insertions>|<cell|<hlink|<verbatim|Small.rip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Tall.lean#L33>>|<cell|<math|G<rsub|p><around|(|w,<wide|a|\<vect\>>|)>>>>|<row|<cell|strict-time
  matrix element>|<cell|<hlink|<verbatim|Small.matrix>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Tall.lean#L49-L51>>|<cell|<math|M<rsub|p><around|(|z;<wide|x|\<vect\>>|)>>>>|<row|<cell|ordered
  heights; strict region>|<cell|<hlink|<verbatim|east>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Boundary/Contour.lean#L27>,
  <hlink|<verbatim|strict>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Boundary/Contour.lean#L28>>|<cell|<math|E<rsub|n>>,
  <math|\<Sigma\><rsub|n>>>>|<row|<cell|heights placed as
  times>|<cell|<hlink|<verbatim|dawn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Ridge.lean#L24>>|<cell|<math|<wide*|y|\<bar\>>>>>|<row|<cell|continuation;
  restriction; smearing>|<cell|<hlink|<verbatim|Waves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Boundary/Contour.lean#L57-L58>,
  <verbatim|restricted>, <hlink|<verbatim|psi>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Ridge.lean#L75-L76>>|<cell|<math|F<rsub|n>>,
  <math|F<rsup|y><rsub|n>>, <math|\<psi\><rsub|v><around|(|y;f|)>>>>|<row|<cell|strict
  continuation; integrability; height continuity;
  Cauchy\URiemann>|<cell|<verbatim|Region>, <verbatim|Bounds>,
  <verbatim|Along>, <verbatim|Lines>>|<cell|(SC), (I), (HC),
  (CR)>>|<row|<cell|polynomial growth in the inverse time
  separation>|<cell|<verbatim|Breathes>>|<cell|(PG)>>|<row|<cell|boundary
  family (Wightman functions)>|<cell|<hlink|<verbatim|Surface>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Boundary/Contour.lean#L54-L55>>|<cell|<math|W<rsub|n><around|(|v|)>>;
  <math|W<around|(|b|)>>>>|<row|<cell|boundary-value
  hypotheses>|<cell|<verbatim|Opens>, <verbatim|NonTangentialFree>>|<cell|(BV<math|<rsub|<math-up|ray>>>),
  (BV)>>|<row|<cell|Laplace identity; half-space
  support>|<cell|<verbatim|during>, <verbatim|cone_tests>,
  <verbatim|half>>|<cell|(L); <math|\<cal-P\><rsub|n>>>>|<row|<cell|Wightman
  spectral set>|<cell|<verbatim|coneM>, <verbatim|cones>>|<cell|<math|\<cal-V\><rsub|n>>>>|<row|<cell|imaginary-part
  cones; tube>|<cell|<verbatim|fields>, <verbatim|shores>,
  <verbatim|tube>>|<cell|<math|V<rsup|+><rsub|n>>,
  <math|<wide|V|\<bar\>><rsup|+><rsub|n>>,
  <math|\<cal-T\><rsub|n>>>>|<row|<cell|cutoff; damping properties; partial
  boundary value>|<cell|<verbatim|Blanket>, <verbatim|Modified>,
  <verbatim|partialD>>|<cell|<math|\<chi\><rsub|n>>; (D);
  <math|W<rsub|n><around|(|v|)><around|[|\<eta\>|]>>>>|<row|<cell|Fourier\ULaplace
  continuation>|<cell|<hlink|<verbatim|Aurora.emit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Sol.lean#L116>,
  <verbatim|FullBody>>|<cell|<math|\<cal-W\><rsub|n><around|(|v|)><around|(|z|)>>;
  (TC)>>|<row|<cell|rotation structure; spin
  structure>|<cell|<verbatim|Rotation> (<math|R>, <verbatim|lie>),
  <hlink|<verbatim|Spins>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Star.lean#L22-L24>
  (<verbatim|rail>, <verbatim|shell>)>|<cell|<math|R>, <math|\<rho\>>;
  <math|K<around|(|\<Lambda\>|)>>>>|<row|<cell|boost identity; Poincaré
  covariance>|<cell|<verbatim|Boosty>; <verbatim|Urs>>|<cell|(B<math|<rsub|y>>);
  (Cov)>>|<row|<cell|induced star; word star;
  kernel>|<cell|<hlink|<verbatim|StarOp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Star.lean#L37>,
  <verbatim|rev>, <verbatim|kernel>>|<cell|<math|J>; <math|b<rsup|\<ast\>>>;
  <math|<around|\<langle\>|b,c|\<rangle\>><rsub|W>>>>|<row|<cell|adjacent
  pair; spacelike set; swap>|<cell|<hlink|<verbatim|NearPair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Swap.lean#L19-L22>,
  <verbatim|gap>, <verbatim|switch>/<verbatim|name>>|<cell|<math|Q=<around|(|i,i+1|)>>,
  <math|\<Gamma\><rsub|Q>>, <math|\<sigma\>>>>|<row|<cell|spectator profile;
  complex boost>|<cell|<verbatim|spectator>/<verbatim|Fleck>;
  <verbatim|augment>>|<cell|<math|y>; <math|\<Lambda\><rsub|e><around|(|\<zeta\>|)>>>>|<row|<cell|germs
  at a spacelike pair>|<cell|<hlink|<verbatim|Panes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Exchange.lean#L33-L36>>|<cell|<math|g<rsup|<math-up|o>><rsub|x>>,
  <math|g<rsup|<math-up|t>><rsub|x>>>>|<row|<cell|heated vector; heat
  cup>|<cell|<verbatim|shot>, <verbatim|heatCup>>|<cell|<math|\<Psi\><rsub|p><around|(|v;y;r|)>>;
  <math|\<Phi\><rsub|t><around|(|b|)>>>>|<row|<cell|reconstructed
  theory>|<cell|<hlink|<verbatim|Boundary.Wightman>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/System.lean#L117-L122>>|<cell|<math|<around|(|\<cal-H\><rsub|W>,\<cal-D\>,\<Omega\><rsub|W>,\<varphi\>,J,U,<math-ss|E>|)>>>>|<row|<cell|Kolmogorov
  space of <math|<around|\<langle\>|\<cdummy\>,\<cdummy\>|\<rangle\>><rsub|W>>>|<cell|<hlink|<verbatim|Soil>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Stems.lean#L20>>|<cell|<math|\<cal-H\><rsub|W>>>>|<row|<cell|the
  bundle>|<cell|<hlink|<verbatim|Bid.Arcs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Arena.lean#L15-L45>>|<cell|(A16),
  (C01)\U(C29)>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Upstream slab estimate.> The constants in (SB) are
    independent of the slab width and word length for fixed degree bound
    <math|D> and representative bound <math|R>; they may depend on
    <math|D,R>. VIII.1 obtains the mixed and selected slab laws from the
    phase-data package. The upstream proof of those laws, beyond their use in
    reconstruction, is outside this check.

    <item><strong|Imported analytic results.> The holomorphic heat-semigroup
    construction and the OS translation spectral measure are used by their
    stated properties. The construction of the compact-model Borel functional
    calculus, and the estimates underlying complex differentiation of the
    Fourier\ULaplace tests, have not been checked in full. Their exact uses
    are identified in V.2.b, V.2.f and V.2.p.

    <item><strong|Location of the arguments.> The boundary-value
    construction, the spectral-support improvement and the germ exchange
    lemmas are filed under VI.1; the field realization and application to
    phase data are filed under VIII.1. They belong with the reconstruction
    argument in a written proof.

    <item><strong|Vacuum uniqueness.> The construction for the mixed table
    supplies the field axioms without vacuum uniqueness. The selected phase
    has uniqueness because its OS heat-fixed space is one-dimensional. No
    uniqueness assertion for the mixed table follows here.

    <item><strong|References.> The bibliographic pointers in Ÿ2 identify the
    relevant standard methods; their theorem numbering has not been verified.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> V.1 Decomposition of the limit into
  phases (notes)|V-1.tm>|<hlink|Part V|../units.tm#part-v-phases-and-reconstruction><ym-nav-sep><hlink|Unit
  outline|../units/V-2.tm>|<hlink|V.3 Reconstruction for every phase and the
  reconstructed theory (notes) \<rightarrow\>|V-3.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|V.2. Osterwalder\USchrader reconstruction of a
    Wightman theory \V detailed notes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|12>>
    <associate|3-strategy|<tuple|3|14>>
    <associate|4-steps|<tuple|4|15>>
    <associate|41-tools|<tuple|4.1|15>>
    <associate|42-the-strict-time-continuation|<tuple|4.2|16>>
    <associate|43-boundary-values-and-spectral-support|<tuple|4.3|17>>
    <associate|44-poincarÃ©-covariance|<tuple|4.4|18>>
    <associate|45-continuation-to-the-full-tube|<tuple|4.5|20>>
    <associate|46-locality|<tuple|4.6|21>>
    <associate|47-real-time-vectors-gram-limits-nulls|<tuple|4.7|23>>
    <associate|48-assembly-viii1-and-the-field-realization|<tuple|4.8|24>>
    <associate|5-where-the-difficulty-lies|<tuple|5|25>>
    <associate|6-notation|<tuple|6|26>>
    <associate|7-what-remains-unexplained|<tuple|7|27>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|4.6|21>>
    <associate|auto-11|<tuple|4.7|23>>
    <associate|auto-12|<tuple|4.8|24>>
    <associate|auto-13|<tuple|5|25>>
    <associate|auto-14|<tuple|6|26>>
    <associate|auto-15|<tuple|7|27>>
    <associate|auto-2|<tuple|2|12>>
    <associate|auto-3|<tuple|3|14>>
    <associate|auto-4|<tuple|4|15>>
    <associate|auto-5|<tuple|4.1|15>>
    <associate|auto-6|<tuple|4.2|16>>
    <associate|auto-7|<tuple|4.3|17>>
    <associate|auto-8|<tuple|4.4|18>>
    <associate|auto-9|<tuple|4.5|20>>
    <associate|v2-osterwalderschrader-reconstruction-of-a-wightman-theory--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 Tools
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 The strict-time continuation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 Boundary values and spectral support
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 Poincaré covariance
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 Continuation to the full tube
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.6 Locality
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|4.7 Real-time vectors, Gram limits, nulls
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|4.8 Assembly (VIII.1) and the field
      realization <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
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
<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav||<hlink|Part I|../units.tm#part-i-setting><ym-nav-sep><hlink|Unit
  outline|../units/I-1.tm>|<hlink|II.1 Field labels and their lattice
  representatives (notes) \<rightarrow\>|II-1.tm>>

  <ym-title|I.1. Lattice, symmetries, gauge groups and the Wilson measure \V
  detailed notes><label|i1-lattice-symmetries-gauge-groups-and-the-wilson-measure--detailed-notes>

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

    <with|par-left|1tab|4.1 Torus, subdivision, schedule
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 Cover numbers
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 Links, transport, plaquettes
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 Gauge group <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 The Wilson measure
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.6 Continuum symmetry groups
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Where the
    difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Notation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. What remains
    unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13><vspace|0.5fn>
  </table-of-contents>

  <\quotation>
    The full account of unit I.1: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/I-1.tm>.
  </quotation>

  <hlink|Unit page|../units/I-1.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> I, Setting. <strong|Lean:>
  <hlink|<verbatim|YM/Lattice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice>
  (1,215 lines), <hlink|<verbatim|YM/Gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge>
  (1,131), <hlink|<verbatim|YM/Space>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space>
  (430), <hlink|<verbatim|YM/Corona>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona>
  (405), <hlink|<verbatim|YM/Mink>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink>
  (363), <hlink|<verbatim|YM/Wilson>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson>
  (157). <strong|Size:> 3,701 lines in 595 declarations used by the main
  theorem.

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  The unit fixes the setting of the construction:

  <\itemize-minus>
    <item>the periodic lattices and their symmetry group;

    <item>parallel transport and gauge transformations;

    <item>the subdivision of a torus into blocks and the schedule of lattice
    spacings;

    <item>a combinatorial measure of the size of a lattice set;

    <item>the gauge group in its defining representation, with its Lie
    algebra, Casimir constant, local logarithm and nearest-point retraction;

    <item>the Wilson measure and its invariance;

    <item>the continuum symmetry groups of <math|\<bbb-R\><rsup|4>>.
  </itemize-minus>

  The results require no input theorem from another unit. Simplicity of
  <math|\<frak-g\>> is assumed only in Proposition I.1.6(d)\U(f); the other
  hypotheses are stated locally.

  <em|Conventions.> <math|G> is a closed subgroup of <math|U<around|(|N|)>>,
  with <math|N\<geqslant\>1> fixed. For an integer
  <math|\<ell\>\<geqslant\>1>, write <math|\<Lambda\><rsub|\<ell\>>=<around|(|\<bbb-Z\>/\<ell\>*\<bbb-Z\>|)><rsup|4>>.
  Axes <math|0,1,2> are spatial and axis <math|3> is time; <math|e<rsub|i>>
  are the unit vectors. A link <math|<around|(|x,i|)>> joins <math|x> to
  <math|x+e<rsub|i>>. A configuration is a map
  <math|U:\<Lambda\><rsub|\<ell\>>\<times\><around|{|0,1,2,3|}>\<to\>G>; the
  same transport and gauge definitions apply on the cover
  <math|\<bbb-Z\><rsup|4>>. The norm <math|<around|\<\|\|\>|\<cdummy\>|\<\|\|\>><rsub|F>>
  is the Frobenius norm on <math|M<rsub|N><around|(|\<bbb-C\>|)>>; norms on
  real coordinate spaces are Euclidean unless marked otherwise.

  <strong|Proposition I.1.1 (torus geometry).> For
  <math|y\<in\>\<bbb-Z\><rsup|4>> let <math|<around|[|y|]><rsub|\<ell\>>\<in\>\<Lambda\><rsub|\<ell\>>>
  be its reduction mod <math|\<ell\>>. For
  <math|x\<in\>\<Lambda\><rsub|\<ell\>>> let
  <math|r<rsub|\<ell\>><around|(|x|)>\<in\>\<bbb-Z\><rsup|4>> be the
  representative with coordinates in <math|<around|(|-\<ell\>/2,\<ell\>/2|]>>
  (the centred lift; the tie <math|x<rsub|i>=\<ell\>/2> lifts to
  <math|+\<ell\>/2>). Then:

  <\itemize-minus>
    <item><math|<around|[|r<rsub|\<ell\>><around|(|x|)>|]><rsub|\<ell\>>=x>,
    and <math|r<rsub|\<ell\>><around|(|x|)>> is the unique <math|y> with
    <math|<around|[|y|]><rsub|\<ell\>>=x> and
    <math|-\<ell\>\<less\>2*y<rsub|i>\<leqslant\>\<ell\>> for all <math|i>;

    <item>reduction is injective on this centred box, and
    <math|<around|\||\<Lambda\><rsub|\<ell\>>|\|>=\<ell\><rsup|4>>.
  </itemize-minus>

  Put <math|<around|\||x|\|><rsub|\<ell\>>=max<rsub|i><around|\||r<rsub|\<ell\>><around|(|x|)><rsub|i>|\|>>.
  The separation <math|<around|\||x-y|\|><rsub|\<ell\>>> is a metric on the
  torus:

  <\itemize-minus>
    <item>it is symmetric and is zero exactly when <math|x=y>;

    <item>it satisfies the triangle inequality;

    <item>it is invariant under translations and under the hyperoctahedral
    group <math|B<rsub|4>> of Proposition I.1.2;

    <item>reduction does not increase distances:
    <math|<around|\||<around|[|y|]><rsub|\<ell\>>|\|><rsub|\<ell\>>\<leqslant\>max<rsub|i><around|\||y<rsub|i>|\|>>.
  </itemize-minus>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Lattice.Site>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L19>,
  <hlink|<verbatim|wrap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L35-L38>,
  <hlink|<verbatim|lift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L51>,
  <hlink|<verbatim|lift_eq_iff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L61-L68>,
  <hlink|<verbatim|wrap_injOn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L70-L75>,
  <hlink|<verbatim|site_card>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L32-L33>,
  <hlink|<verbatim|separation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L81>,
  <hlink|<verbatim|separation_comm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L93-L94>,
  <hlink|<verbatim|separation_triangle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L103-L105>,
  <hlink|<verbatim|separation_translate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L117-L118>,
  <hlink|<verbatim|separation_signed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L119-L121>,
  <hlink|<verbatim|Corona.lap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L32-L39>.

  <strong|Proposition I.1.2 (lattice symmetries, transport, gauge
  transformations).> Let <math|B<rsub|4>> be the group of signed permutations
  of the four axes; it has order <math|2<rsup|4>\<cdot\>4!=384>. An element
  <math|\<rho\>=<around|(|\<pi\>,\<epsilon\>|)>>, with
  <math|\<epsilon\><rsub|i>\<in\><around|{|\<pm\>1|}>>, acts on
  <math|\<bbb-Z\><rsup|4>> and on <math|\<Lambda\><rsub|\<ell\>>> by
  <math|<around|(|\<rho\>*x|)><rsub|\<pi\><around|(|i|)>>=\<epsilon\><rsub|i>*x<rsub|i>>.
  On either lattice <math|\<Lambda\>>, an affine map is
  <math|A=<around|(|\<rho\>,b|)>>, <math|A*x=\<rho\>*x+b>, with
  <math|b\<in\>\<Lambda\>>.

  A walk <math|w> is a finite word of steps <math|\<pm\>e<rsub|i>>. The
  transport <math|U<around|(|x;w|)>\<in\>G> is the ordered product along
  <math|w> from <math|x>: a forward step along the link
  <math|<around|(|y,i|)>> contributes <math|U<around|(|y,i|)>>, and a
  backward step from <math|y> contributes
  <math|U<around|(|y-e<rsub|i>,i|)><rsup|-1>>.

  The pullback <math|A<rsup|\<ast\>>*U> is

  <\equation*>
    <around|(|A<rsup|\<ast\>>*U|)><around|(|x,i|)>=<choice|<tformat|<table|<row|<cell|U<around|(|A*x,\<pi\><around|(|i|)>|)>,>|<cell|\<epsilon\><rsub|i>=+1,>>|<row|<cell|U<around|(|A*x-e<rsub|\<pi\><around|(|i|)>>,\<pi\><around|(|i|)>|)><rsup|-1>,>|<cell|\<epsilon\><rsub|i>=-1,>>>>>
  </equation*>

  that is, the transport of <math|U> along the image of the link
  <math|<around|(|x,i|)>>. Then:

  <\itemize-minus>
    <item>(a) <math|1<rsup|\<ast\>>=<math-up|id>> and
    <math|B<rsup|\<ast\>>*A<rsup|\<ast\>>=<around|(|A\<circ\>B|)><rsup|\<ast\>>>,
    i.e. <math|<around|(|\<rho\><rprime|'>,b<rprime|'>|)><rsup|\<ast\>><around|(|\<rho\>,b|)><rsup|\<ast\>>=<around|(|\<rho\>*\<rho\><rprime|'>,\<rho\>*b<rprime|'>+b|)><rsup|\<ast\>>>.
    For <math|A=<around|(|1,b|)>> the pullback is the translation
    <math|<around|(|\<tau\><rsub|b>*U|)><around|(|x,i|)>=U<around|(|x+b,i|)>>.

    <item>(b) <math|<around|(|A<rsup|\<ast\>>*U|)><around|(|x;w|)>=U<around|(|A*x;\<rho\>*w|)>>,
    where <math|\<rho\>*w> is the image word.

    <item>(c) For <math|g:\<Lambda\>\<to\>G> put
    <math|U<rsup|g><around|(|x,i|)>=g<around|(|x|)>*U<around|(|x,i|)>*g*<around|(|x+e<rsub|i>|)><rsup|-1>>.
    Then <math|U<rsup|g><around|(|x;w|)>=g<around|(|x|)>*<space|0.17em>U<around|(|x;w|)>*<space|0.17em>g<around|(|x<rsub|<math-up|end>>|)><rsup|-1>>;
    for a closed walk this is conjugation by <math|g<around|(|x|)>>.

    <item>(d) (locality) If <math|U> and <math|V> agree on every link whose
    two endpoints are visited by <math|w> from <math|x>, then
    <math|U<around|(|x;w|)>=V<around|(|x;w|)>>.

    <item>(e) (plaquettes) A plaquette is <math|p=<around|(|x;i\<less\>j|)>>
    with holonomy <math|U<rsub|p>=U<around|(|x;e<rsub|i>,e<rsub|j>,-e<rsub|i>,-e<rsub|j>|)>>.
    Each <math|A> induces an injective map $A_\\sharp $ of plaquettes,
    bijective on <math|\<Lambda\><rsub|\<ell\>>>. It sends the axis pair to
    <math|<around|{|\<pi\><around|(|i|)>,\<pi\><around|(|j|)>|}>> in
    increasing order and the base point to
    <math|A*x-<big|sum><rsub|k\<in\><around|{|i,j|}>:<space|0.17em>\<epsilon\><rsub|k>=-1>e<rsub|\<pi\><around|(|k|)>>>.
    For every set <math|M> and every <math|\<phi\>:G\<to\>M> satisfying
    <math|\<phi\><around|(|u<rsup|-1>|)>=\<phi\><around|(|u|)>> and
    <math|\<phi\>*<around|(|v*u*v<rsup|-1>|)>=\<phi\><around|(|u|)>> for all
    <math|u,v\<in\>G>, one has <math|\<phi\><around|(|<around|(|A<rsup|\<ast\>>*U|)><rsub|p>|)>=\<phi\><around|(|U<rsub|A<rsub|\<sharp\>>*p>|)>>.

    <item>(f) (periodic extension) For <math|b\<in\>\<Lambda\><rsub|\<ell\>>>
    let <math|<around|(|E<rsub|b>*U|)><around|(|y,i|)>=U<around|(|<around|[|y|]><rsub|\<ell\>>+b,i|)>>
    on <math|\<bbb-Z\><rsup|4>>. Then:

    <\itemize-minus>
      <item><math|<around|(|E<rsub|b>*U|)><around|(|y;w|)>=U<around|(|<around|[|y|]><rsub|\<ell\>>+b;w|)>>;

      <item><math|E<rsub|b>*<around|(|<around|(|\<rho\>,a|)><rsup|\<ast\>>*U|)>=<around|(|\<rho\>,0|)><rsup|\<ast\>>*<around|(|E<rsub|\<rho\>*b+a>*U|)>>
      for <math|a\<in\>\<Lambda\><rsub|\<ell\>>>;

      <item><math|E<rsub|b><around|(|U<rsup|g>|)>=<around|(|E<rsub|b>*U|)><rsup|g<around|(||[>\<cdot\><around|]|<rsub|\<ell\>>+b|)>>>;

      <item>if <math|F> depends only on links inside
      <math|X\<subset\>\<bbb-Z\><rsup|4>>, then <math|F\<circ\>E<rsub|b>>
      depends only on links inside <math|<around|[|X|]><rsub|\<ell\>>+b>.
    </itemize-minus>
  </itemize-minus>

  A function <math|F> of configurations is <em|gauge invariant> if
  <math|F<around|(|U<rsup|g>|)>=F<around|(|U|)>> for all <math|g>. It is
  <em|local on <math|X>> if <math|F<around|(|U|)>=F<around|(|V|)>> whenever
  <math|U,V> agree on all links with both endpoints in <math|X>. These are
  the notions of (Reg3)\U(Reg4) in the main statement. <em|Status:> theorem.
  <em|Lean:> <hlink|<verbatim|Signed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Index.lean#L23-L26>
  with <hlink|its group law|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Index.lean#L47-L51>,
  <hlink|<verbatim|Signed.act>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Index.lean#L62-L63>,
  <hlink|<verbatim|travel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L105-L107>,
  <hlink|<verbatim|pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L147-L148>,
  <hlink|<verbatim|pull_pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L173-L179>,
  <hlink|<verbatim|pull_one>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L184-L186>,
  <hlink|<verbatim|travel_pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L160-L167>,
  <hlink|<verbatim|gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L132-L133>,
  <hlink|<verbatim|travel_gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L141-L143>,
  <hlink|<verbatim|GaugeInvariant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L135>,
  <hlink|<verbatim|Agrees>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L192-L193>,
  <hlink|<verbatim|LocalOn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L196-L197>,
  <hlink|<verbatim|travel_local>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L200-L220>,
  <hlink|<verbatim|Face.send>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L115-L116>,
  <hlink|<verbatim|Face.injective_send>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L119-L126>,
  <hlink|<verbatim|Face.send_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L128-L143>,
  <hlink|<verbatim|expandAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L224-L225>,
  <hlink|<verbatim|expandAt_pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L227-L235>,
  <hlink|<verbatim|travel_at>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L240-L247>,
  <hlink|<verbatim|expandAt_gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L249-L251>,
  <hlink|<verbatim|LocalOn.expandAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L253-L261>.

  <strong|Proposition I.1.3 (schedule of spacings; subdivision and blocks).>

  (a) <em|Schedule.> A schedule consists of odd integers
  <math|L<rsub|m>\<geqslant\>3> and a strictly increasing sequence of
  positive integers <math|P<rsub|p>> with <math|4\<mid\>P<rsub|p>>, indexed
  by <math|m,p\<in\>\<bbb-N\>>. Put

  <\equation*>
    D<rsub|0>=1,<space|1em>D<rsub|m+1>=D<rsub|m>*L<rsub|m>,<space|1em>a<rsub|m>=1/D<rsub|m>,<space|1em>\<ell\><around|(|m,p|)>=P<rsub|p>*D<rsub|m>,<space|1em>s<rsub|m>=log
    <around|(|1/a<rsub|m>|)>.
  </equation*>

  Then:

  <\itemize-minus>
    <item><math|D<rsub|m>> is odd and strictly increasing;

    <item><math|a<rsub|0>=1>, <math|a<rsub|m+1>=a<rsub|m>/L<rsub|m>>, and
    <math|a<rsub|m>*\<downarrow\>*0> strictly;

    <item><math|s<rsub|0>=0>, <math|s<rsub|m+1>=s<rsub|m>+log L<rsub|m>>, and
    <math|s<rsub|m>\<to\>\<infty\>>;

    <item><math|4\<mid\>\<ell\><around|(|m,p|)>> and
    <math|a<rsub|m>*\<ell\><around|(|m,p|)>=P<rsub|p>>;

    <item>the placement <math|x\<mapsto\>a<rsub|m>*<space|0.17em>r<rsub|\<ell\><around|(|m,p|)>><around|(|x|)>>
    maps <math|\<Lambda\><rsub|\<ell\><around|(|m,p|)>>> into
    <math|<around|(|-P<rsub|p>/2,P<rsub|p>/2|]><rsup|4>>.
  </itemize-minus>

  For <math|m\<leqslant\>m<rprime|'>>, <math|\<Lambda\><rsub|\<ell\><around|(|m,p|)>>\<to\>\<Lambda\><rsub|\<ell\><around|(|m<rprime|'>,p|)>>>
  is a subdivision of odd ratio <math|L<rsub|m>*\<cdots\>*L<rsub|m<rprime|'>-1>>
  that preserves placements.

  (b) <em|Mesh inequality.> If <math|log L<rsub|m>/s<rsub|m>\<to\>0> as
  <math|m\<to\>\<infty\>> (the schedule is <em|gentle>), then there is
  <math|c\<gtr\>0>, depending on the schedule, with
  <math|a<rsub|m+1>\<geqslant\>c*<space|0.17em>a<rsub|m><rsup|2>> for all
  <math|m\<in\>\<bbb-N\>>. The ratio defining gentleness is considered for
  <math|m\<geqslant\>1>, when <math|s<rsub|m>\<gtr\>0>.

  (c) <em|Subdivision.> Let <math|L\<geqslant\>1> be an integer and
  <math|\<ell\><rprime|'>=\<ell\>*L>. Put
  <math|\<iota\><around|(|x|)>=<around|[|L*<space|0.17em>r<rsub|\<ell\>><around|(|x|)>|]><rsub|\<ell\><rprime|'>>>.
  Then:

  <\itemize-minus>
    <item><math|r<rsub|\<ell\><rprime|'>>*<around|(|\<iota\>*x|)>=L*<space|0.17em>r<rsub|\<ell\>><around|(|x|)>>;

    <item><math|\<iota\>:\<Lambda\><rsub|\<ell\>>\<to\>\<Lambda\><rsub|\<ell\><rprime|'>>>
    is an injective group homomorphism commuting with <math|B<rsub|4>>.
  </itemize-minus>

  The residue map <math|<math-up|res>:\<Lambda\><rsub|\<ell\><rprime|'>>\<to\>\<Lambda\><rsub|L>>
  (reduction mod <math|L>) is additive with
  <math|<math-up|res>\<circ\>\<iota\>=0>. The map
  <math|<around|(|x,y|)>\<mapsto\>\<iota\><around|(|x|)>+<around|[|r<rsub|L><around|(|y|)>|]><rsub|\<ell\><rprime|'>>>
  is a bijection <math|\<Lambda\><rsub|\<ell\>>\<times\>\<Lambda\><rsub|L>\<to\>\<Lambda\><rsub|\<ell\><rprime|'>>>,
  with inverse <math|z\<mapsto\><around|(|<math-up|par><space|0.17em>z,<math-up|res><space|0.17em>z|)>>;
  moreover <math|<math-up|par>\<circ\>\<iota\>=<math-up|id>>.

  (d) <em|Odd ratio.> If <math|L> is odd, then:

  <\itemize-minus>
    <item><math|r<rsub|L>> commutes with <math|B<rsub|4>> and
    <math|<math-up|par><around|(|\<rho\>*z|)>=\<rho\><space|0.17em><math-up|par><around|(|z|)>>;

    <item>the block <math|<math-up|par><rsup|-1><around|(|x|)>> is
    <math|\<iota\><around|(|x|)>+<around|[|<around|{|-<tfrac|L-1|2>,\<ldots\>,<tfrac|L-1|2>|}><rsup|4>|]><rsub|\<ell\><rprime|'>>>;

    <item><math|<math-up|par><around|(|z+e<rsub|i>|)>=<math-up|par><around|(|z|)>+e<rsub|i>>
    if <math|r<rsub|L><around|(|<math-up|res><space|0.17em>z|)><rsub|i>=<tfrac|L-1|2>>,
    and <math|<math-up|par><around|(|z+e<rsub|i>|)>=<math-up|par><around|(|z|)>>
    otherwise.
  </itemize-minus>

  (e) <em|Metric comparison.> For every integer <math|L\<geqslant\>1>, all
  <math|x,x<rprime|'>\<in\>\<Lambda\><rsub|\<ell\>>> and all
  <math|z,z<rprime|'>\<in\>\<Lambda\><rsub|\<ell\><rprime|'>>>:

  <\itemize-minus>
    <item><math|<around|\||z-\<iota\><space|0.17em><math-up|par><space|0.17em>z|\|><rsub|\<ell\><rprime|'>>\<leqslant\>L/2>;

    <item><math|L*<space|0.17em><around|\||x-x<rprime|'>|\|><rsub|\<ell\>>\<leqslant\><around|\||\<iota\>*x-\<iota\>*x<rprime|'>|\|><rsub|\<ell\><rprime|'>>>;

    <item><math|L*<space|0.17em><around|\||<math-up|par><space|0.17em>z-<math-up|par><space|0.17em>z<rprime|'>|\|><rsub|\<ell\>>\<leqslant\><around|\||z-z<rprime|'>|\|><rsub|\<ell\><rprime|'>>+L>
    (foreshortening).
  </itemize-minus>

  <em|Status:> (a) the schedule is a definition (data with conditions); the
  schedule of the construction is chosen in III.2. The consequences are
  theorems. <em|Lean:> <hlink|<verbatim|Schedule>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L28-L34>,
  <hlink|<verbatim|denominator>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L39-L41>,
  <hlink|<verbatim|side>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L67>,
  <hlink|<verbatim|side_four>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L76>,
  <hlink|<verbatim|a>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L99>,
  <hlink|<verbatim|strictAnti>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L111-L113>,
  <hlink|<verbatim|shrinks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L108-L109>,
  <hlink|<verbatim|scale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L115>,
  <hlink|<verbatim|divergent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L117-L120>,
  <hlink|<verbatim|span_side>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L169-L171>,
  <hlink|<verbatim|place>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L167>,
  <hlink|<verbatim|places_period>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L173-L182>,
  <hlink|<verbatim|toDepth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L83-L90>,
  <hlink|<verbatim|toDepth_odd>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L92-L97>,
  <hlink|<verbatim|embeds_place>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L191-L198>,
  <hlink|<verbatim|Gentle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L129-L130>,
  <hlink|<verbatim|mesh_inequality>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L133-L162>,
  <hlink|<verbatim|Ratio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L22-L24>,
  <hlink|<verbatim|Ratio.embed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L29>,
  <hlink|<verbatim|Ratio.root>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L67-L75>,
  <hlink|<verbatim|Ratio.signed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L78-L81>,
  <hlink|<verbatim|Ratio.residue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L85-L88>,
  <hlink|<verbatim|Ratio.assemble_bijective>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L103-L111>,
  <hlink|<verbatim|Ratio.parent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L117>,
  <hlink|<verbatim|Ratio.parent_signed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L154-L157>,
  <hlink|<verbatim|Ratio.half_box>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Crossing.lean#L19-L25>,
  <hlink|<verbatim|Ratio.parents_hop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Crossing.lean#L54-L84>,
  <hlink|<verbatim|Ratio.embed_parent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Crossing.lean#L33-L36>,
  <hlink|<verbatim|Corona.near>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Spend.lean#L17-L22>,
  <hlink|<verbatim|Corona.below>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Spend.lean#L24-L30>,
  <hlink|<verbatim|Corona.foreshorten>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Spend.lean#L32-L36>.

  <strong|Proposition I.1.4 (cover numbers of lattice sets).> For
  <math|X\<subset\>\<Lambda\><rsub|\<ell\>>> and <math|M\<in\>\<bbb-N\>> let
  <math|<math-up|halo><rsub|M><around|(|X|)>=<around|{|y:\<exists\>x\<in\>X,<around|\||x-y|\|><rsub|\<ell\>>\<leqslant\>M|}>>.
  Use the graph joining sites at sup-distance at most <math|1>; diagonal
  moves are allowed. Connectivity means that every two vertices can be
  joined, so the empty set is allowed. A set <math|D> <em|covers <math|X> at
  scale <math|M>> if <math|X\<subset\><math-up|halo><rsub|M><around|(|D|)>>
  and <math|<math-up|halo><rsub|M><around|(|D|)>> is connected in this graph.
  Let <math|<math-up|cov><rsub|M><around|(|X|)>> be the least
  <math|<around|\||D|\|>> over such <math|D>; it is finite since
  <math|D=\<Lambda\><rsub|\<ell\>>> covers. For all
  <math|X,Y,D\<subset\>\<Lambda\><rsub|\<ell\>>> and <math|M\<in\>\<bbb-N\>>,
  the following bounds hold independently of <math|\<ell\>>:

  <\itemize-minus>
    <item>(a) <math|X\<subset\>Y> implies
    <math|<math-up|cov><rsub|M><around|(|X|)>\<leqslant\><math-up|cov><rsub|M><around|(|Y|)>>,
    and <math|<math-up|cov><rsub|M><around|(|X\<cup\>Y|)>\<leqslant\><math-up|cov><rsub|M><around|(|X|)>+<math-up|cov><rsub|M><around|(|Y|)>>
    if <math|X\<cap\>Y\<neq\>\<emptyset\>>.

    <item>(b) <math|<around|\||<math-up|halo><rsub|M><around|(|D|)>|\|>\<leqslant\><around|(|2*M+1|)><rsup|4><around|\||D|\|>>
    and <math|<around|\||X|\|>\<leqslant\><around|(|2*M+1|)><rsup|4><space|0.17em><math-up|cov><rsub|M><around|(|X|)>>.

    <item>(c) <math|<math-up|halo><rsub|M><around|(|D|)>> is connected in
    this graph if and only if any two points of <math|D> are joined by a
    chain in <math|D> with steps of sup-distance at most <math|2*M+1>.

    <item>(d) (diameter) For <math|x,y\<in\>X>:
    <math|<around|\||x-y|\|><rsub|\<ell\>>\<leqslant\><around|(|4*M+2|)><space|0.17em><math-up|cov><rsub|M><around|(|X|)>+2*M>.

    <item>(e) (change of scale) For <math|b,k,m\<in\>\<bbb-N\>> with
    <math|b\<geqslant\>1> and <math|x\<in\>\<Lambda\><rsub|\<ell\>>>,
    <math|<math-up|cov><rsub|b><around|(|<math-up|halo><rsub|k*b><around|{|x|}>|)>\<leqslant\><around|(|2*k+1|)><rsup|4>>.
    If <math|D> covers <math|X> at scale <math|m*b>, then
    <math|<math-up|cov><rsub|b><around|(|X|)>\<leqslant\><around|(|2*m+3|)><rsup|4><around|\||D|\|>>.

    <item>(f) (coarsening) Let <math|<math-up|par>:\<Lambda\><rsub|\<ell\>*L>\<to\>\<Lambda\><rsub|\<ell\>>>
    be the parent map of a subdivision of integer ratio
    <math|L\<geqslant\>1>. Let <math|X\<subset\>\<Lambda\><rsub|\<ell\>*L>>
    and <math|M,B,s\<in\>\<bbb-N\>> with <math|B\<geqslant\>1> and
    <math|M\<leqslant\>2*B>. Then
  </itemize-minus>

  <\equation*>
    L\<cdot\><math-up|cov><rsub|B><around*|(|<math-up|halo><rsub|s*B><around|(|<math-up|par><space|0.17em>X|)>|)>\<leqslant\><around*|(|L+10<space|0.17em><math-up|cov><rsub|M><around|(|X|)>|)>*<space|0.17em><around|(|2*s+13|)><rsup|4>,
  </equation*>

  with the left side computed on the coarse torus. Thus a fine set of cover
  number <math|k> has coarse cover number
  <math|\<leqslant\><around|(|2*s+13|)><rsup|4>*<around|(|1+10*k/L|)>>.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|halo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L43-L44>,
  <hlink|<verbatim|covers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L52-L55>,
  <hlink|<verbatim|coverNumber>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L69-L71>,
  <hlink|<verbatim|Corona.cover_mono>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Halo.lean#L10-L12>,
  <hlink|<verbatim|Corona.meets_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Halo.lean#L14-L30>,
  <hlink|<verbatim|Corona.halo_size>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L120-L127>,
  <hlink|<verbatim|Corona.pays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L129-L131>,
  <hlink|<verbatim|Corona.ship_halo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L69-L93>,
  <hlink|<verbatim|Corona.halo_ship>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L95-L111>,
  <hlink|<verbatim|Corona.extent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fit.lean#L84-L95>,
  <hlink|<verbatim|Corona.tile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Halo.lean#L66-L113>,
  <hlink|<verbatim|Corona.tiling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Halo.lean#L115-L125>,
  <hlink|<verbatim|Corona.collapse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Spend.lean#L73-L105>.

  <strong|Proposition I.1.5 (gauge group, plaquette cost, chord, Haar
  measure).> <math|G> is compact and second countable, with its Borel
  structure. For <math|u\<in\>G> put

  <\equation*>
    \<sigma\><around|(|u|)>=1-<tfrac|1|N><math-up|Re><space|0.17em><math-up|tr><space|0.17em>u,<space|2em>\<chi\><around|(|u|)>=<around|\<\|\|\>|u-1|\<\|\|\>><rsub|F>/<sqrt|N>.
  </equation*>

  Then:

  <\itemize-minus>
    <item><math|\<chi\><rsup|2>=2*\<sigma\>>,
    <math|0\<leqslant\>\<chi\>\<leqslant\>2>,
    <math|0\<leqslant\>\<sigma\>\<leqslant\>2>, and
    <math|\<sigma\><around|(|1|)>=\<chi\><around|(|1|)>=0>;

    <item><math|\<chi\>*<around|(|u*v|)>\<leqslant\>\<chi\><around|(|u|)>+\<chi\><around|(|v|)>>;

    <item><math|\<sigma\>> and <math|\<chi\>> are continuous and invariant
    under <math|u\<mapsto\>u<rsup|-1>> and <math|u\<mapsto\>v*u*v<rsup|-1>>.
  </itemize-minus>

  The Frobenius norm is invariant under left and right multiplication by
  unitaries, and <math|<around|\<\|\|\>|u|\<\|\|\>><rsub|F>=<sqrt|N>>. The
  normalized Haar measure <math|\<mu\><rsub|G>> is invariant under left and
  right translations and under inversion; hence <math|u\<mapsto\>v*u*w>
  preserves <math|\<mu\><rsub|G>>. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L23-L26>,
  <hlink|<verbatim|compactGaugeU>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L61-L67>,
  <hlink|<verbatim|price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L112>,
  <hlink|<verbatim|chord>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L115>,
  <hlink|<verbatim|chord_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L117-L126>,
  <hlink|<verbatim|chord_le_two>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L134-L139>,
  <hlink|<verbatim|price_range>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L141-L144>,
  <hlink|<verbatim|chord_triangle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L146-L155>,
  <hlink|<verbatim|price_inv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L157-L158>,
  <hlink|<verbatim|price_conj>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L160-L164>,
  <hlink|<verbatim|chord_inv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L166-L167>,
  <hlink|<verbatim|chord_conj>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L169-L170>,
  <hlink|<verbatim|mul_frob_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L45-L48>,
  <hlink|<verbatim|probHaar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L187>,
  <hlink|<verbatim|probHaar_rightInv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L193-L200>,
  <hlink|<verbatim|preserve_inv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L209-L210>,
  <hlink|<verbatim|preserve_two_sided>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L212-L214>.

  <strong|Proposition I.1.6 (Lie algebra, colours, Casimir constant, slope
  constant).>

  (a) <math|\<frak-g\>=<around|{|X\<in\>M<rsub|N><around|(|\<bbb-C\>|)>:e<rsup|t*X>\<in\>G\<forall\>t\<in\>\<bbb-R\>|}>>
  is a closed real subspace of skew-Hermitian matrices. It is closed under
  <math|<around|[|X,Y|]>=X*Y-Y*X> and under <math|X\<mapsto\>u*X*u<rsup|-1>>,
  <math|u\<in\>G>. <em|Tangent criterion:> if
  <math|f:\<bbb-R\>\<to\>M<rsub|N><around|(|\<bbb-C\>|)>> takes values in
  <math|G>, <math|f<around|(|0|)>=1>, and <math|f> is differentiable at
  <math|0> with <math|f<rprime|'><around|(|0|)>=X>, then
  <math|X\<in\>\<frak-g\>>.

  (b) <em|Colours.> <math|<around|\<langle\>|X,Y|\<rangle\>><rsub|\<frak-g\>>=-<frac|1|N><math-up|tr><around|(|X*Y|)>>
  is real on <math|\<frak-g\>> and is an <math|<math-up|Ad><around|(|G|)>>-invariant
  inner product. Fix an orthonormal basis and write
  <math|\<frak-g\>\<cong\>\<bbb-R\><rsup|d>>, <math|c\<mapsto\>X<rsub|c>>,
  <math|d=dim \<frak-g\>>. Then:

  <\itemize-minus>
    <item><math|<around|\<\|\|\>|X<rsub|c>|\<\|\|\>><rsub|F>=<sqrt|N><space|0.17em><around|\||c|\|>>;

    <item>if <math|P<rsub|\<frak-g\>>> is the orthogonal projection onto
    <math|\<frak-g\>> for the real Frobenius inner product
    <math|<math-up|Re><space|0.17em><math-up|tr><around|(|X*Y<rsup|\<ast\>>|)>>,
    define <math|\<Pi\>:M<rsub|N><around|(|\<bbb-C\>|)>\<to\>\<bbb-R\><rsup|d>>
    by <math|X<rsub|\<Pi\>*A>=P<rsub|\<frak-g\>>*A>. Then
    <math|\<Pi\>*X<rsub|c>=c> and <math|<around|\||\<Pi\>*A|\|>\<leqslant\><around|\<\|\|\>|A|\<\|\|\>><rsub|F>/<sqrt|N>>;

    <item><math|<math-up|Ad><around|(|u|)>*c=\<Pi\>*<around|(|u*X<rsub|c>*u<rsup|-1>|)>>
    is an orthogonal representation of <math|G>;

    <item><math|<math-up|ad><around|(|c|)>*c<rprime|'>=\<Pi\><around|[|X<rsub|c>,X<rsub|c<rprime|'>>|]>>
    satisfies <math|X<rsub|<math-up|ad><around|(|c|)>*c<rprime|'>>=<around|[|X<rsub|c>,X<rsub|c<rprime|'>>|]>>;

    <item><math|c\<mapsto\>exp c\<assign\>e<rsup|X<rsub|c>>\<in\>G> is
    continuous.
  </itemize-minus>

  (c) <math|G> is <em|simple> if two conditions hold: there are
  <math|X,Y\<in\>\<frak-g\>> with <math|<around|[|X,Y|]>\<neq\>0>, and every
  real subspace <math|I\<subset\>\<frak-g\>> with
  <math|<around|[|\<frak-g\>,I|]>\<subset\>I> is <math|0> or
  <math|\<frak-g\>>. This agrees with the simplicity hypothesis of the main
  theorem: its Lie algebra is characterized by the same exponential condition
  (<hlink|<verbatim|GaugeGroup.coreSimple>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L12-L17>,
  unit VIII.1).

  If <math|G> is simple, then:

  <\itemize-minus>
    <item>(d) for every symmetric real bilinear form <math|B> on
    <math|\<bbb-R\><rsup|d>> satisfying <math|B<around|(|<math-up|ad><around|(|x|)>*y,z|)>=-B<around|(|y,<math-up|ad><around|(|x|)>*z|)>>
    for all <math|x,y,z>, there is <math|c\<in\>\<bbb-R\>> such that
    <math|B<around|(|x,y|)>=c<around|\<langle\>|x,y|\<rangle\>>> for all
    <math|x,y>;

    <item>(e) <math|-<math-up|tr><rsub|\<bbb-R\><rsup|d>><around|(|<math-up|ad><around|(|x|)><math-up|ad><around|(|y|)>|)>=C<rsub|\<frak-g\>><around|\<langle\>|x,y|\<rangle\>>>
    for all <math|x,y\<in\>\<bbb-R\><rsup|d>>, where
    <math|C<rsub|\<frak-g\>>\<assign\>-<frac|1|d>*<big|sum><rsub|i=1><rsup|d><math-up|tr><rsub|\<bbb-R\><rsup|d>><around|(|<math-up|ad><around|(|b<rsub|i>|)><rsup|2>|)>\<gtr\>0>
    and <math|<around|(|b<rsub|i>|)><rsub|i=1><rsup|d>> is the standard
    orthonormal basis;

    <item>(f) the <em|slope constant> <math|\<kappa\>\<assign\>11*C<rsub|\<frak-g\>>/<around|(|24*\<pi\><rsup|2>|)>>
    is positive.
  </itemize-minus>

  <em|Status:> theorem; <math|C<rsub|\<frak-g\>>> and <math|\<kappa\>> are
  definitions. <em|Lean:> <hlink|<verbatim|lie>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L126-L135>,
  <hlink|<verbatim|closed_lie>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L141>,
  <hlink|<verbatim|generates_skew>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L42-L44>,
  <hlink|<verbatim|tangent_generates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L98-L111>,
  <hlink|<verbatim|bracket_mem>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L159-L176>,
  <hlink|<verbatim|conjugate_mem>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L151-L157>,
  <hlink|<verbatim|Simple>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L179-L182>,
  <hlink|<verbatim|colorIso>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L52-L54>,
  <hlink|<verbatim|colorMat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L64>,
  <hlink|<verbatim|trace_color>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L71-L75>,
  <hlink|<verbatim|trace_color_real>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L77-L86>,
  <hlink|<verbatim|colorMat_norm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L91-L94>,
  <hlink|<verbatim|projectColor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L96-L97>,
  <hlink|<verbatim|colorMat_project>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L99-L101>,
  <hlink|<verbatim|project_colorMat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L106-L107>,
  <hlink|<verbatim|project_norm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L109-L111>,
  <hlink|<verbatim|adjoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L114-L117>,
  <hlink|<verbatim|adjoint_mul>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L126-L128>,
  <hlink|<verbatim|norm_adjoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L130-L134>,
  <hlink|<verbatim|ad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L136-L150>,
  <hlink|<verbatim|colorMat_ad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L152-L154>,
  <hlink|<verbatim|lieExp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L160>,
  <hlink|<verbatim|lieExp_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L165-L170>,
  <hlink|<verbatim|casimir>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182>,
  <hlink|<verbatim|slopeConstant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184>,
  <hlink|<verbatim|invariant_scalar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L99-L125>,
  <hlink|<verbatim|trace_adjoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L140-L158>,
  <hlink|<verbatim|casimir_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L160-L172>,
  <hlink|<verbatim|slopeConstant_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176>.

  <strong|Proposition I.1.7 (Haar mass of small balls around <math|1>).> For
  <math|0\<less\>r\<leqslant\>1>, <math|\<mu\><rsub|G><around|{|u:\<chi\><around|(|u|)>\<leqslant\>r|}>\<geqslant\><around|(|r/4|)><rsup|2*N<rsup|2>>>.
  The exponent is the real dimension of <math|M<rsub|N><around|(|\<bbb-C\>|)>>,
  not <math|dim G>. <em|Status:> theorem (not sharp). <em|Lean:>
  <hlink|<verbatim|shell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Size.lean#L28>,
  <hlink|<verbatim|shell_ge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Size.lean#L80-L130>.

  <strong|Proposition I.1.8 (local logarithm, nearest point, curvature of a
  group element).> Let <math|\<frak-g\><rsup|\<perp\>>> be the orthogonal
  complement of <math|\<frak-g\>> in <math|M<rsub|N><around|(|\<bbb-C\>|)>>
  for <math|<math-up|Re><space|0.17em><math-up|tr><around|(|X*Y<rsup|\<ast\>>|)>>.

  (a) There are a map <math|log<rsub|G>:M<rsub|N><around|(|\<bbb-C\>|)>\<to\>\<bbb-R\><rsup|d>>,
  an open neighbourhood <math|V> of <math|1> in
  <math|M<rsub|N><around|(|\<bbb-C\>|)>> and an open neighbourhood <math|W>
  of <math|0> in <math|\<bbb-R\><rsup|d>> such that:

  <\itemize-minus>
    <item><math|log<rsub|G>> is real-analytic on <math|V> and
    <math|log<rsub|G><around|(|1|)>=0>;

    <item><math|log<rsub|G><around|(|e<rsup|X<rsub|c>>|)>=c> for all
    <math|c\<in\>W>;

    <item><math|exp <around|(|log<rsub|G> u|)>=u> for all
    <math|u\<in\>G\<cap\>V>.
  </itemize-minus>

  It is the first component of the local inverse of
  <math|<around|(|c,\<nu\>|)>\<mapsto\>e<rsup|X<rsub|c>>*e<rsup|\<nu\>>> on
  <math|\<bbb-R\><rsup|d>\<times\>\<frak-g\><rsup|\<perp\>>>. Connectedness
  of <math|G> is not assumed, and nothing is claimed away from <math|1>.

  (b) <math|u\<in\>G> is a <em|nearest point> to
  <math|X\<in\>M<rsub|N><around|(|\<bbb-C\>|)>> if
  <math|<around|\<\|\|\>|X-u|\<\|\|\>><rsub|F>\<leqslant\><around|\<\|\|\>|X-v|\<\|\|\>><rsub|F>>
  for all <math|v\<in\>G>. Then:

  <\itemize-minus>
    <item>nearest points exist;

    <item>for every <math|v\<in\>G>, <math|u> is nearest to <math|X> iff
    <math|v*u> is nearest to <math|v*X>, iff <math|u*v> is nearest to
    <math|X*v>;

    <item>if <math|u> is nearest to <math|X>, then
    <math|u<rsup|\<ast\>>*X-1\<in\>\<frak-g\><rsup|\<perp\>>>;

    <item>there is <math|\<delta\>\<gtr\>0>, depending only on <math|G>, such
    that <math|X> has exactly one nearest point whenever
    <math|<around|\<\|\|\>|X-v|\<\|\|\>><rsub|F>\<less\>\<delta\>> for some
    <math|v\<in\>G>.
  </itemize-minus>

  On a neighbourhood of <math|1> the nearest point is
  <math|<math-up|foc><around|(|X|)>=exp <around|(|c|)>>, where
  <math|<around|(|c,\<nu\>|)>> is the local inverse of
  <math|\<Psi\><around|(|c,\<nu\>|)>=e<rsup|X<rsub|c>>*<around|(|1+\<nu\>|)>>
  at <math|X>. As a matrix-valued map, <math|X\<mapsto\><math-up|foc><around|(|X|)>>
  is real-analytic at <math|1>, with strict derivative the orthogonal
  projection <math|P<rsub|\<frak-g\>>> onto <math|\<frak-g\>>. Consequently,
  for every <math|\<varepsilon\>\<gtr\>0> there is <math|\<delta\>\<gtr\>0>
  such that, for all <math|X,Y\<in\>M<rsub|N><around|(|\<bbb-C\>|)>> and
  <math|u,v\<in\>G>, the conditions <math|<around|\<\|\|\>|X-1|\<\|\|\>><rsub|F>,<around|\<\|\|\>|Y-1|\<\|\|\>><rsub|F>\<less\>\<delta\>>
  and <math|u,v> nearest to <math|X,Y> imply

  <\equation*>
    <around|\<\|\|\>|u-v-P<rsub|\<frak-g\>>*<around|(|X-Y|)>|\<\|\|\>><rsub|F>\<leqslant\>\<varepsilon\>*<around|\<\|\|\>|X-Y|\<\|\|\>><rsub|F>.
  </equation*>

  (c) The curvature of <math|u\<in\>G> is
  <math|F<around|(|u|)>=\<Pi\><around*|(|<tfrac|1|2><around|(|u-u<rsup|-1>|)>|)>\<in\>\<bbb-R\><rsup|d>>,
  the projected anti-Hermitian part. It is continuous and satisfies:

  <\itemize-minus>
    <item><math|F<around|(|1|)>=0> and <math|F<around|(|u<rsup|-1>|)>=-F<around|(|u|)>>;

    <item><math|F*<around|(|v*u*v<rsup|-1>|)>=<math-up|Ad><around|(|v|)>*F<around|(|u|)>>;

    <item><math|<around|\||F<around|(|u|)>|\|>\<leqslant\>\<chi\><around|(|u|)>>;

    <item><math|<frac|d|d*t>*F<around|(|exp
    <around|(|t*c|)>|)><mid|\|><rsub|t=0>=c>.
  </itemize-minus>

  <em|Status:> theorem. The neighbourhoods and <math|\<delta\>> come from the
  inverse function theorem and compactness and are not explicit. <em|Lean:>
  <hlink|<verbatim|plog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Chart.lean#L138>,
  <hlink|<verbatim|splitNormal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Chart.lean#L106>,
  <hlink|<verbatim|plog_diff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Chart.lean#L152-L155>,
  <hlink|<verbatim|plog_left>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Chart.lean#L157-L162>,
  <hlink|<verbatim|plog_right>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Chart.lean#L164-L175>,
  <hlink|<verbatim|Nearest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L26>,
  <hlink|<verbatim|nearest_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L28-L31>,
  <hlink|<verbatim|nearest_left>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L33-L36>,
  <hlink|<verbatim|nearest_right>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L38-L41>,
  <hlink|<verbatim|nearest_normal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L65-L68>,
  <hlink|<verbatim|focus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L91>,
  <hlink|<verbatim|nearest_is_focus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L128-L139>,
  <hlink|<verbatim|focus_diff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L95-L98>,
  <hlink|<verbatim|nearest_tube>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L141-L153>,
  <hlink|<verbatim|focus_deriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L155-L170>,
  <hlink|<verbatim|nearest_approximate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L172-L181>,
  <hlink|<verbatim|curvature>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L173>,
  <hlink|<verbatim|curvature_inv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L175-L177>,
  <hlink|<verbatim|curvature_conjugate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Curvature.lean#L55-L60>,
  <hlink|<verbatim|curvature_norm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Curvature.lean#L62-L75>,
  <hlink|<verbatim|leading_curvature>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Curvature.lean#L78-L96>.

  <strong|Proposition I.1.9 (the Wilson measure on the torus).> Let
  <math|\<mu\><rsub|\<ell\>>=\<mu\><rsub|G><rsup|\<otimes\><around|(|\<Lambda\><rsub|\<ell\>>\<times\><around|{|0,\<ldots\>,3|}>|)>>>
  be the product Haar measure on configurations. Let

  <\equation*>
    E<rsub|\<ell\>><around|(|U|)>=<big|sum><rsub|x\<in\>\<Lambda\><rsub|\<ell\>>><big|sum><rsub|i\<less\>j>\<sigma\><around|(|U<rsub|<around|(|x;i\<less\>j|)>>|)>
  </equation*>

  be the Wilson energy: <math|6*\<ell\><rsup|4>> terms, each unoriented
  plaquette counted once. For every <math|\<beta\>\<in\>\<bbb-R\>> put

  <\equation*>
    Z<rsub|\<ell\>><around|(|\<beta\>|)>=<big|int>e<rsup|-\<beta\>*E<rsub|\<ell\>>>*<space|0.17em>d*\<mu\><rsub|\<ell\>>,<space|2em>d*\<bbb-P\><rsub|\<ell\>,\<beta\>>=Z<rsub|\<ell\>><around|(|\<beta\>|)><rsup|-1>*e<rsup|-\<beta\>*E<rsub|\<ell\>>>*<space|0.17em>d*\<mu\><rsub|\<ell\>>.
  </equation*>

  For integrable complex <math|F>, write <math|<around|\<langle\>|F|\<rangle\>><rsub|\<ell\>,\<beta\>>=<big|int>F*<space|0.17em>d*\<bbb-P\><rsub|\<ell\>,\<beta\>>>.
  Then:

  <\itemize-minus>
    <item><math|E<rsub|\<ell\>>> is continuous, with
    <math|0\<leqslant\>E<rsub|\<ell\>>\<leqslant\>12*\<ell\><rsup|4>>;

    <item><math|Z<rsub|\<ell\>><around|(|\<beta\>|)>\<gtr\>0> and
    <math|\<bbb-P\><rsub|\<ell\>,\<beta\>>> is a probability measure;

    <item>every continuous complex function, and every bounded measurable
    complex function, is <math|\<bbb-P\><rsub|\<ell\>,\<beta\>>>-integrable;

    <item>for integrable complex <math|F>,
    <math|<around|\<langle\>|F|\<rangle\>><rsub|\<ell\>,\<beta\>>=Z<rsub|\<ell\>><around|(|\<beta\>|)><rsup|-1>*<big|int>e<rsup|-\<beta\>*E<rsub|\<ell\>>>*F*<space|0.17em>d*\<mu\><rsub|\<ell\>>>.
  </itemize-minus>

  These are the energy and measure of Definitions 1.3\U1.4 of the main
  statement, with <math|h=\<mu\><rsub|G>>; the identification is proved in
  VIII.1 (<hlink|<verbatim|energy_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L32-L41>,
  <hlink|<verbatim|law_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L43-L46>).
  <em|Status:> definition, with theorems. <em|Lean:>
  <hlink|<verbatim|Wilson.Config>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L24>,
  <hlink|<verbatim|energy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L29>,
  <hlink|<verbatim|energy_nonneg>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L31-L32>,
  <hlink|<verbatim|energy_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L42-L43>,
  <hlink|<verbatim|prior>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L55>,
  <hlink|<verbatim|bare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L58>,
  <hlink|<verbatim|partition>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L74>,
  <hlink|<verbatim|partition_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L76-L80>,
  <hlink|<verbatim|law>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L87>,
  <hlink|<verbatim|moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L99>,
  <hlink|<verbatim|continuous_integrable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L101-L103>,
  <hlink|<verbatim|bounded_integrable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L105-L107>,
  <hlink|<verbatim|moment_formula>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L110-L121>.

  <strong|Proposition I.1.10 (invariance of the Wilson measure).> For every
  <math|\<beta\>\<in\>\<bbb-R\>>, every lattice affine map
  <math|A=<around|(|\<rho\>,b|)>> and every
  <math|g:\<Lambda\><rsub|\<ell\>>\<to\>G>, the maps
  <math|U\<mapsto\>A<rsup|\<ast\>>*U> and <math|U\<mapsto\>U<rsup|g>>
  preserve <math|\<mu\><rsub|\<ell\>>>, <math|E<rsub|\<ell\>>> and
  <math|\<bbb-P\><rsub|\<ell\>,\<beta\>>>.

  This covers translations, axis permutations, and reflections
  <math|x<rsub|a>\<mapsto\>b<rsub|a>-x<rsub|a>>. When <math|\<ell\>> is even,
  the reflection planes pass through sites for even <math|b<rsub|a>> and
  bisect links for odd <math|b<rsub|a>>. Hence
  <math|<around|\<langle\>|F\<circ\>A<rsup|\<ast\>>|\<rangle\>><rsub|\<ell\>,\<beta\>>=<around|\<langle\>|F|\<rangle\>><rsub|\<ell\>,\<beta\>>>
  for every integrable complex <math|F>. More generally, any measurable map
  preserving <math|\<mu\><rsub|\<ell\>>> and <math|E<rsub|\<ell\>>> preserves
  <math|\<bbb-P\><rsub|\<ell\>,\<beta\>>>. Reflection positivity is a
  separate assertion. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|energy_pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L45-L50>,
  <hlink|<verbatim|energy_gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L52-L53>,
  <hlink|<verbatim|prior_pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Symmetry.lean#L45-L67>,
  <hlink|<verbatim|prior_gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Symmetry.lean#L69-L72>,
  <hlink|<verbatim|law_preserved>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Symmetry.lean#L75-L91>,
  <hlink|<verbatim|law_pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Symmetry.lean#L93-L95>,
  <hlink|<verbatim|law_gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Symmetry.lean#L97-L99>,
  <hlink|<verbatim|law_translate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Symmetry.lean#L101-L104>,
  <hlink|<verbatim|moment_pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Symmetry.lean#L106-L113>.

  <strong|Proposition I.1.11 (continuum symmetry groups).>
  <math|\<bbb-R\><rsup|4>> carries the Euclidean norm and Lebesgue measure.
  Write <math|x=<around|(|<wide|x|\<vect\>>,x<rsub|t>|)>>, with time the last
  coordinate. Let <math|<math-ss|m><around|(|x|)>=x<rsub|t><rsup|2>-<around|\||<wide|x|\<vect\>>|\|><rsup|2>>,
  <math|<wide|V|\<bar\>><rsub|+>=<around|{|<around|\||<wide|x|\<vect\>>|\|>\<leqslant\>x<rsub|t>|}>>
  and <math|V<rsub|+>=<around|{|<around|\||<wide|x|\<vect\>>|\|>\<less\>x<rsub|t>|}>>.

  (a) <em|Euclidean.> There is a homomorphism
  <math|B<rsub|4>\<to\>O<around|(|4|)>> whose image acts on coordinates as in
  Proposition I.1.2. The mirror in axis <math|a> maps to the reflection
  <math|x<rsub|a>\<mapsto\>-x<rsub|a>>. The real skew matrices form
  <math|<with|math-font|Euler|s*o><around|(|4|)>>, with plane generators
  <math|\<Omega\><rsub|i*j>=E<rsub|i*j>-E<rsub|j*i>> for <math|i\<less\>j>,
  and <math|t\<mapsto\>e<rsup|t*\<Omega\>>\<in\>O<around|(|4|)>>.

  (b) <em|Lorentz group.> <math|\<cal-L\>=<around|{|g\<in\>G*L<around|(|\<bbb-R\><rsup|4>|)>:det
  g=1,<math-ss|m>\<circ\>g=<math-ss|m>,g*<wide|V|\<bar\>><rsub|+>=<wide|V|\<bar\>><rsub|+>|}>>;
  this is <math|S*O<rsup|+><around|(|1,3|)>>. It is a topological group of
  Lebesgue-preserving maps that preserves <math|V<rsub|+>>, and it contains
  every element of <math|S*O<around|(|4|)>> fixing the time coordinate. For a
  unit spatial vector <math|e>, the boost

  <\equation*>
    B<rsub|e><around|(|r|)>:x<rsub|t>\<mapsto\>cosh
    r*<space|0.17em>x<rsub|t>+sinh r*<space|0.17em><around|(|<wide|x|\<vect\>>\<cdot\>e|)>,<space|1em><wide|x|\<vect\>>\<mapsto\><wide|x|\<vect\>>+<around*|(|sinh
    r*<space|0.17em>x<rsub|t>+<around|(|cosh
    r-1|)>*<around|(|<wide|x|\<vect\>>\<cdot\>e|)>|)>*e
  </equation*>

  is a continuous one-parameter subgroup of <math|\<cal-L\>>. Its generator
  at <math|r=0> is <math|K<rsub|e>:<around|(|<wide|x|\<vect\>>,x<rsub|t>|)>\<mapsto\><around*|(|x<rsub|t>*<space|0.17em>e,<wide|x|\<vect\>>\<cdot\>e|)>>.

  (c) <em|Dual action and cone.> With <math|R<around|(|<wide|x|\<vect\>>,x<rsub|t>|)>=<around|(|-<wide|x|\<vect\>>,x<rsub|t>|)>>,
  put <math|g<rsup|\<vee\>>=R*g*R>. Then <math|g<rsup|\<vee\>>\<in\>\<cal-L\>>,
  <math|<around|(|g<rsup|\<vee\>>|)><rsup|\<vee\>>=g>,
  <math|g<rsup|\<vee\>>=<around|(|g<rsup|-1>|)><rsup|T>>, and
  <math|<around|\<langle\>|g*x,g<rsup|\<vee\>>*p|\<rangle\>>=<around|\<langle\>|x,p|\<rangle\>>>
  for the Euclidean pairing. Moreover:

  <\itemize-minus>
    <item><math|x\<in\><wide|V|\<bar\>><rsub|+>> iff
    <math|<around|\<langle\>|x,p|\<rangle\>>\<geqslant\>0> for all
    <math|p\<in\><wide|V|\<bar\>><rsub|+>>;

    <item>if <math|x\<in\>V<rsub|+>> and <math|p\<in\><wide|V|\<bar\>><rsub|+>\<setminus\>0>,
    then <math|<around|\<langle\>|x,p|\<rangle\>>\<gtr\>0>;

    <item><math|x\<in\><wide|V|\<bar\>><rsub|+>> iff
    <math|<around|(|g<rsup|\<vee\>>*x|)><rsub|t>\<geqslant\>0> for every
    <math|g\<in\>\<cal-L\>>.
  </itemize-minus>

  (d) <em|Poincaré group.> <math|\<cal-P\>=\<cal-L\>\<ltimes\>\<bbb-R\><rsup|4>>
  consists of pairs <math|<around|(|\<Lambda\>,b|)>> and acts by
  <math|x\<mapsto\>\<Lambda\>*x+b>, with <math|<around|(|\<Lambda\>,b|)><around|(|\<Lambda\><rprime|'>,b<rprime|'>|)>=<around|(|\<Lambda\>*\<Lambda\><rprime|'>,\<Lambda\>*b<rprime|'>+b|)>>.
  It is a topological group, determined by its action on points, and
  preserves Lebesgue measure on <math|\<bbb-R\><rsup|4>> and, diagonally, on
  <math|<around|(|\<bbb-R\><rsup|4>|)><rsup|n>> for every
  <math|n\<in\>\<bbb-N\>>.

  (e) <em|Configurations.> For <math|n\<in\>\<bbb-N\>>,
  <math|r\<in\>\<bbb-R\>> and <math|x\<in\><around|(|\<bbb-R\><rsup|4>|)><rsup|n>>,
  call <math|x>:

  <\itemize-minus>
    <item><em|separated> (<math|x\<in\><math-up|Conf><rsub|n>>) if the
    <math|x<rsub|i>> are pairwise distinct; <math|<math-up|Conf><rsub|n>> is
    open;

    <item><em|generic> if for every axis the <math|n> coordinates on that
    axis are pairwise distinct (generic implies separated);

    <item><em|<math|r>-spaced> if <math|<around|\||x<rsub|i>-x<rsub|j>|\|><rsub|\<infty\>>\<geqslant\>r>
    for <math|i\<ne\>j> (<math|r\<gtr\>0> implies separated).
  </itemize-minus>

  Lebesgue measure on <math|<around|(|\<bbb-R\><rsup|4>|)><rsup|n>> is the
  product of the four-dimensional ones. <em|Status:> theorem, apart from the
  definitions. <em|Lean:> <hlink|<verbatim|Signed.ortho>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L93-L106>,
  <hlink|<verbatim|Signed.ortho_move>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L108-L115>,
  <hlink|<verbatim|Signed.inclusionO>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L117-L120>,
  <hlink|<verbatim|Signed.mirrored>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L124-L126>,
  <hlink|<verbatim|Ortho.skewSpace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L132-L142>,
  <hlink|<verbatim|Ortho.oneParameter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L146-L148>,
  <hlink|<verbatim|Ortho.plane>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L152-L154>,
  <hlink|<verbatim|Mink.Proper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Lorentz.lean#L32-L44>,
  <hlink|<verbatim|Lorentz.preserves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Lorentz.lean#L75-L78>,
  <hlink|<verbatim|Lorentz.stays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Lorentz.lean#L54-L60>,
  <hlink|<verbatim|Lorentz.room>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Poincare.lean#L18-L29>,
  <hlink|<verbatim|Ray.boost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Boost.lean#L92-L101>,
  <hlink|<verbatim|Ray.generator>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Boost.lean#L114-L117>,
  <hlink|<verbatim|Lorentz.dual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Lorentz.lean#L95-L103>,
  <hlink|<verbatim|Lorentz.dual_sent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Lorentz.lean#L120-L122>,
  <hlink|<verbatim|Lorentz.dual_adjoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Lorentz.lean#L132-L135>,
  <hlink|<verbatim|cone_test>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Geometry.lean#L113-L129>,
  <hlink|<verbatim|strict_pair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Geometry.lean#L131-L141>,
  <hlink|<verbatim|Lorentz.from_half>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Boost.lean#L135-L158>,
  <hlink|<verbatim|Poincare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Poincare.lean#L32-L34>,
  <hlink|<verbatim|Poincare.by_placement>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Poincare.lean#L44-L47>,
  <hlink|<verbatim|Poincare.together>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Poincare.lean#L117-L121>,
  <hlink|<verbatim|conf>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L63>,
  <hlink|<verbatim|generic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L66>,
  <hlink|<verbatim|spaced>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L70>,
  <hlink|<verbatim|conf_open>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L83-L90>,
  <hlink|<verbatim|Points.volume_product>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L153-L180>.

  <strong|Proposition I.1.12 (boxes, axis routes and slabs on the cover).>
  For <math|r\<in\>\<bbb-N\>> let <math|B<rsub|r>=<around|{|-r,\<ldots\>,r|}><rsup|4>\<subset\>\<bbb-Z\><rsup|4>>;
  then <math|<around|\||B<rsub|r>|\|>=<around|(|2*r+1|)><rsup|4>> and
  <math|\<rho\>*B<rsub|r>=B<rsub|r>> for <math|\<rho\>\<in\>B<rsub|4>>. For
  <math|x,y\<in\>\<bbb-Z\><rsup|4>> and an ordering <math|o> of the four
  axes, the <em|axis route> <math|<math-up|route><rsub|o><around|(|x,y|)>>
  goes from <math|x> in straight legs along the axes in the order <math|o>,
  adjusting one coordinate at a time. It ends at <math|y>, and:

  <\itemize-minus>
    <item>reversing the order gives the reverse of
    <math|<math-up|route><rsub|o><around|(|y,x|)>>;

    <item>the image of <math|<math-up|route><rsub|o><around|(|x,y|)>> under
    <math|A=<around|(|\<rho\>,b|)>> is <math|<math-up|route><rsub|\<pi\>\<circ\>o><around|(|A*x,A*y|)>>.
  </itemize-minus>

  For an anchor <math|a\<in\>\<bbb-Z\><rsup|4>> and a set <math|J> of axes,
  define <math|<math-up|slab><around|(|r,a,J|)>=<around|{|y\<in\>B<rsub|r>:y<rsub|i>=a<rsub|i><text|
  for >i\<nin\>J|}>>. If <math|i\<nin\>J>, then, for any function <math|f>
  with values in a commutative additive monoid,

  <\equation*>
    <big|sum><rsub|y\<in\><math-up|slab><around|(|r,a,J\<cup\><around|{|i|}>|)>>f<around|(|y|)>=<big|sum><rsub|z=-r><rsup|r><big|sum><rsub|y\<in\><math-up|slab><around|(|r,a*<around|[|i\<leftarrow\>z|]>,J|)>>f<around|(|y|)>.
  </equation*>

  For <math|z,w\<in\><around|{|-r,\<ldots\>,r|}>>, translation by
  <math|<around|(|w-z|)>*e<rsub|i>> maps the layer with pinned coordinate
  <math|z> bijectively onto the layer with pinned coordinate <math|w>. Write
  <math|<math-up|straight><rsub|j><around|(|d|)>> for the signed leg of
  displacement <math|d*e<rsub|j>>, <math|d\<in\>\<bbb-Z\>>. For every cover
  configuration <math|U>,

  <\equation*>
    U<around|(|x;<math-up|straight><rsub|j><around|(|d+1|)>|)>=U<around|(|x;<math-up|straight><rsub|j><around|(|d|)>|)>*<space|0.17em>U<around|(|x+d*e<rsub|j>,j|)>.
  </equation*>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|box>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Box.lean#L13>,
  <hlink|<verbatim|box_covariant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Box.lean#L20-L31>,
  <hlink|<verbatim|Corona.box_size>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L117-L118>,
  <hlink|<verbatim|route>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Box.lean#L44>,
  <hlink|<verbatim|route_end>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Box.lean#L74-L80>,
  <hlink|<verbatim|back_route>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Route.lean#L36-L37>,
  <hlink|<verbatim|send_route>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Route.lean#L55-L61>,
  <hlink|<verbatim|slab>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Foliation.lean#L18-L19>,
  <hlink|<verbatim|slab_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Foliation.lean#L62-L71>,
  <hlink|<verbatim|slab_update_image>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Foliation.lean#L52-L60>,
  <hlink|<verbatim|carry_succ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Foliation.lean#L91-L106>.

  <section|2. What it uses><label|2-what-it-uses>

  No result from another unit is needed. The definitions and estimates are
  used throughout the proof. Main consumers include:

  <\itemize-minus>
    <item>the nearest-point retraction (I.1.8(b)): gauge fixing and alignment
    in III.1;

    <item>the invariant-form lemma (I.1.6(d)): the one-loop computation in
    III.7 and the stress-tensor forms in VI.1\UVI.2;

    <item>the coarsening estimate (I.1.4(f)): III.5 and III.10;

    <item>the mesh inequality: V.1;

    <item>invariance of the law: IV.1, III.13 and VII.2;

    <item>positivity of <math|C<rsub|\<frak-g\>>>: VIII.1 (the slope in
    (Reg1)) and VII.2;

    <item>the Haar-ball bound (I.1.7): a product lower bound for
    configurations whose links are near <math|1>
    (<hlink|<verbatim|YM.RG.space>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Shelter.lean#L39-L45>),
    a lower bound for the block-kernel noise normalizer
    (<hlink|<verbatim|YM.SectorNext.Vacuum.shell_pZ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Noise.lean#L53-L73>),
    and positivity of the ball mass used in corrected-field tests
    (<hlink|<verbatim|YM.Push.Corrected.Tests.Offer.stamp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/CORRECTED_COLUMNS/Program.lean#L179-L209>).
  </itemize-minus>

  <strong|Standard mathematics.> The underlying results from Mathlib,
  together with references for the mathematical context, are:

  <\itemize-minus>
    <item>Existence and uniqueness of Haar measure on a compact group, and
    its right and inversion invariance (Halmos, <em|Measure Theory>,
    ŸŸ58\U60; Folland, <em|A Course in Abstract Harmonic Analysis>, Ch. 2).

    <item>Product measures and invariance of product measures under
    coordinate permutations; change of variables for measure-preserving maps;
    Bochner integration.

    <item>Matrix exponential; the inverse function theorem in the
    real-analytic class.

    <item>The local structure of a closed matrix group near <math|1>: the Lie
    algebra as the set of generators of one-parameter subgroups, the
    Lie\UTrotter limit, and von Neumann's argument that a closed subgroup
    meets <math|exp <around|(|\<frak-g\><rsup|\<perp\>>|)>> only at <math|1>
    near the identity (B. C. Hall, <em|Lie Groups, Lie Algebras, and
    Representations>, Ch. 2\U3). The local structure is derived here from the
    exponential definition of the Lie algebra.

    <item>Spectral theorem for symmetric operators on a finite-dimensional
    Euclidean space; the Schur-type uniqueness of invariant forms on a simple
    real Lie algebra (Knapp, <em|Lie Groups Beyond an Introduction>, Ch. I).

    <item>Scaling of Lebesgue measure of balls in a finite-dimensional space.

    <item>Lattice gauge theory: Wilson's action (K. Wilson, Phys. Rev. D 10
    (1974) 2445); gauge-invariant lattice measures and their symmetries
    (Osterwalder\USeiler, Ann. Phys. 110 (1978) 440; Seiler, Lecture Notes in
    Physics 159).

    <item>Minkowski geometry and the restricted Lorentz and Poincaré groups
    (Streater\UWightman, <em|PCT, Spin and Statistics, and All That>, Ch. 1).
  </itemize-minus>

  <strong|Imported constants and assumptions.> The group <math|G> is an
  arbitrary closed subgroup of <math|U<around|(|N|)>>, possibly disconnected.
  Simplicity is assumed only in I.1.6(d)\U(f), and agrees with the main
  theorem's hypothesis by the bridge cited in I.1.6(c). The local radii
  depend on <math|G>; the mesh constant also depends on the schedule.

  <section|3. Strategy><label|3-strategy>

  The torus metric comes from the absolute values of centred representatives.
  Odd subdivision ratios give symmetric residue windows, so the parent map
  commutes with signed permutations even when the coarse torus has even side.
  The schedule separates the physical period from the mesh; gentle growth of
  the block factors gives the mesh inequality. Cover numbers measure the size
  of lattice sets by connected unions of balls. Sampling a path through a
  fine cover at intervals of <math|L*B> yields the coarsening bound
  <math|O<around|(|1+k/L|)>> for a set of fine cover number <math|k>, with
  constants independent of the period.

  Affine pullback assigns to each link the transport along its image.
  Reflections reverse links and shift their base points. The pullback
  therefore permutes link variables and inverts some of them, preserving
  product Haar measure. Image plaquette holonomies differ by conjugation and
  possibly inversion; the cost <math|\<sigma\>> is invariant under both.
  Summing over the plaquette bijection proves invariance of the energy and
  hence of the Wilson measure.

  For the closed matrix group, the tangent criterion follows by approximating
  <math|e<rsup|X>> with <math|f*<around|(|1/n|)><rsup|n>>. It gives the
  linear and bracket closure of <math|\<frak-g\>>. The inverse function
  theorem, together with isolation of <math|exp
  <around|(|\<frak-g\><rsup|\<perp\>>|)>> from <math|G> near <math|1>, gives
  a local logarithm. Applying the same theorem to
  <math|e<rsup|X<rsub|c>>*<around|(|1+\<nu\>|)>> identifies the nearest-point
  retraction and its derivative. Finally, the spectral theorem reduces an
  invariant symmetric form to an eigenspace; real simplicity forces that
  eigenspace to be all of <math|\<frak-g\>>. Applied to the negative Killing
  form, this gives <math|C<rsub|\<frak-g\>>\<gtr\>0>.

  <section|4. Steps><label|4-steps>

  <subsection|4.1 Torus, subdivision, schedule><label|41-torus-subdivision-schedule>

  <strong|Lemma I.1.a (centred lift and separation).> Proposition I.1.1.
  <em|Proof sketch.> Coordinatewise, <math|r<rsub|\<ell\>>> is the
  representative of minimal absolute value, with the tie sent to
  <math|+\<ell\>/2>. This gives uniqueness,
  <math|<around|\||r<rsub|\<ell\>>*<around|(|a+b|)><rsub|i>|\|>\<leqslant\><around|\||r<rsub|\<ell\>><around|(|a|)><rsub|i>|\|>+<around|\||r<rsub|\<ell\>><around|(|b|)><rsub|i>|\|>>
  (hence the triangle inequality for the maximum), and
  <math|<around|\||r<rsub|\<ell\>><around|(|<around|[|y|]><rsub|\<ell\>>|)><rsub|i>|\|>\<leqslant\><around|\||y<rsub|i>|\|>>.
  A zero lift reduces to the zero site, so zero separation implies equality.
  Signed permutations permute coordinates and change signs, and the centred
  absolute value is even, including at the tie. Thus
  <math|<around|\||\<rho\>*x|\|><rsub|\<ell\>>=<around|\||x|\|><rsub|\<ell\>>>.
  There are <math|\<ell\>> choices in each coordinate, giving
  <math|\<ell\><rsup|4>> sites. <em|Lean:>
  <hlink|<verbatim|lift_eq_iff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L61-L68>,
  <hlink|<verbatim|pdist_triangle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L96-L101>,
  <hlink|<verbatim|pdist_invariant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L107-L115>,
  <hlink|<verbatim|Corona.lap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L32-L39>.

  <strong|Lemma I.1.b (subdivision).> Proposition I.1.3(c). <em|Proof
  sketch.>

  <\itemize-minus>
    <item><math|L*<space|0.17em>r<rsub|\<ell\>><around|(|x|)>> lies in the
    centred window of <math|\<Lambda\><rsub|\<ell\>*L>>, so
    <math|r<rsub|\<ell\>*L>*<around|(|\<iota\>*x|)>=L*<space|0.17em>r<rsub|\<ell\>><around|(|x|)>>,
    and <math|\<iota\>> is injective.

    <item>For every <math|y\<in\>\<bbb-Z\><rsup|4>>,
    <math|\<iota\><around|(|<around|[|y|]><rsub|\<ell\>>|)>=<around|[|L*y|]><rsub|\<ell\>*L>>,
    because changing <math|y> by <math|\<ell\>*z> changes <math|L*y> by
    <math|\<ell\>*L*z>. This gives additivity and
    <math|B<rsub|4>>-covariance.

    <item>Applying <math|<math-up|res>> to an equality of assembled points
    gives equality of their residue coordinates. Injectivity of
    <math|\<iota\>> then gives equality of the coarse coordinates. The count
    <math|\<ell\><rsup|4>*L<rsup|4>=<around|(|\<ell\>*L|)><rsup|4>> makes the
    assembly map bijective. Since <math|\<iota\>*x> is assembled from
    <math|<around|(|x,0|)>>, its parent is <math|x>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Ratio.lift_embed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L31-L42>,
  <hlink|<verbatim|Ratio.embed_injective>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L44-L52>,
  <hlink|<verbatim|Ratio.root>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L67-L75>,
  <hlink|<verbatim|Ratio.signed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L78-L81>,
  <hlink|<verbatim|Ratio.residue_embed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L93-L95>,
  <hlink|<verbatim|Ratio.assemble_bijective>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L103-L111>,
  <hlink|<verbatim|Ratio.unpack_at>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L128-L130>.

  <strong|Lemma I.1.c (odd blocks and their symmetry).> Proposition I.1.3(d).
  <em|Proof sketch.> For odd <math|L>, the window
  <math|<around|(|-L/2,L/2|]>\<cap\>\<bbb-Z\>=<around|[|-<frac|L-1|2>,<frac|L-1|2>|]>\<cap\>\<bbb-Z\>>
  is symmetric. Hence <math|r<rsub|L>*<around|(|\<rho\>*y|)>=\<rho\>*<space|0.17em>r<rsub|L><around|(|y|)>>,
  the assembly map intertwines <math|<around|(|\<rho\>,\<rho\>|)>> with
  <math|\<rho\>>, and <math|<math-up|par>> commutes with <math|\<rho\>>.
  Every residue has exactly one representative in
  <math|B<rsub|<around|(|L-1|)>/2>>, so the assembly bijection identifies
  each parent fibre with the stated translated box. For the crossing rule,
  write <math|z=\<iota\><around|(|<math-up|par><space|0.17em>z|)>+<around|[|q|]>>
  with <math|q=r<rsub|L><around|(|<math-up|res><space|0.17em>z|)>\<in\>B<rsub|<around|(|L-1|)>/2>>.

  <\itemize-minus>
    <item>If <math|q<rsub|i>\<less\><frac|L-1|2>>, then <math|q+e<rsub|i>>
    stays in the block.

    <item>If <math|q<rsub|i>=<frac|L-1|2>>, then
    <math|z+e<rsub|i>=\<iota\>*<around|(|<math-up|par><space|0.17em>z+e<rsub|i>|)>+<around|[|q-<around|(|L-1|)>*e<rsub|i>|]>>,
    because <math|\<iota\>*<around|(|x+e<rsub|i>|)>=\<iota\><around|(|x|)>+L*e<rsub|i>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Ratio.lift_signed_of_odd>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L138-L148>,
  <hlink|<verbatim|Ratio.assemble_signed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L150-L152>,
  <hlink|<verbatim|Ratio.parent_signed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L154-L157>,
  <hlink|<verbatim|Ratio.half_box>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Crossing.lean#L19-L25>,
  <hlink|<verbatim|Ratio.half_lift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Crossing.lean#L27-L31>,
  <hlink|<verbatim|Ratio.parents_hop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Crossing.lean#L54-L84>,
  <hlink|<verbatim|Ratio.internal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Crossing.lean#L86-L95>.

  <strong|Lemma I.1.d (metric comparison across scales).> Proposition
  I.1.3(e). <em|Proof sketch.>

  <\itemize-minus>
    <item>The vector <math|r<rsub|L><around|(|<math-up|res><space|0.17em>z|)>>
    has coordinates bounded by <math|L/2>. Its reduction is
    <math|z-\<iota\><around|(|<math-up|par><space|0.17em>z|)>>, and reduction
    cannot increase the torus norm.

    <item>The lift of <math|\<iota\>*<around|(|x-x<rprime|'>|)>> is
    <math|L*<space|0.17em>r<rsub|\<ell\>>*<around|(|x-x<rprime|'>|)>>, which
    gives the second inequality.

    <item>Foreshortening follows from the second inequality and two
    applications of the first.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Corona.near>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Spend.lean#L17-L22>,
  <hlink|<verbatim|Corona.below>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Spend.lean#L24-L30>,
  <hlink|<verbatim|Corona.foreshorten>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Spend.lean#L32-L36>.

  <strong|Lemma I.1.e (schedule and mesh inequality).> Proposition
  I.1.3(a),(b). <em|Proof sketch.> The product <math|D<rsub|m>> is odd,
  strictly increasing and at least <math|3<rsup|m>>, which gives
  <math|a<rsub|m>\<to\>0> and <math|s<rsub|m>\<to\>\<infty\>>. Placement
  follows by multiplying <math|-\<ell\>\<less\>2*r<rsub|\<ell\>>\<leqslant\>\<ell\>>
  by <math|a<rsub|m>> and using <math|a<rsub|m>*\<ell\><around|(|m,p|)>=P<rsub|p>>.
  The scaled-lift identity gives compatibility under subdivision. Gentleness
  gives <math|log L<rsub|m>\<less\>s<rsub|m>> for all
  <math|m\<geqslant\>m<rsub|0>>, hence <math|a<rsub|m+1>\<gtr\>a<rsub|m><rsup|2>>.
  Take <math|c> to be the minimum of the finite nonempty set
  <math|<around|{|1|}>\<cup\><around|{|a<rsub|m+1>/a<rsub|m><rsup|2>:m\<less\>m<rsub|0>|}>>;
  every member is positive. <em|Lean:> <hlink|<verbatim|den_strict>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L60-L65>,
  <hlink|<verbatim|a_step>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L103-L104>,
  <hlink|<verbatim|scale_succ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L124-L127>,
  <hlink|<verbatim|embeds_scale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L184-L189>,
  <hlink|<verbatim|mesh_inequality>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L133-L162>.

  <subsection|4.2 Cover numbers><label|42-cover-numbers>

  <strong|Lemma I.1.f (elementary properties).> Proposition I.1.4(a),(b).
  <em|Proof sketch.> A cover of a set covers its subsets. For the union, take
  optimal covers <math|A> of <math|X> and <math|B> of <math|Y>. The halo of
  <math|A\<cup\>B> is the union of the two haloes, which is connected through
  a common point of <math|X\<cap\>Y>. Counting:
  <math|<math-up|halo><rsub|M><around|(|D|)>> is the image of
  <math|D\<times\>B<rsub|M>> under <math|<around|(|x,q|)>\<mapsto\>x+<around|[|q|]>>,
  and <math|X\<subset\><math-up|halo><rsub|M><around|(|D|)>> for an optimal
  <math|D>. <em|Lean:> <hlink|<verbatim|Corona.cover_mono>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Halo.lean#L10-L12>,
  <hlink|<verbatim|Corona.meets_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Halo.lean#L14-L30>,
  <hlink|<verbatim|Corona.halo_size>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L120-L127>,
  <hlink|<verbatim|Corona.pays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L129-L131>.

  <strong|Lemma I.1.g (connectivity of haloes).> Proposition I.1.4(c).
  <em|Proof sketch.> Use lattice segments
  <math|t\<mapsto\>x+<around|[|<math-up|clamp><rsub|<around|[|-t,t|]>>r<rsub|\<ell\>>*<around|(|y-x|)>|]>>,
  which move by <math|\<leqslant\>1> per unit time and reach <math|y> at
  <math|t=<around|\||x-y|\|><rsub|\<ell\>>>. If
  <math|<around|\||x-y|\|><rsub|\<ell\>>\<leqslant\>2*M+1>, the segment stays
  in <math|<math-up|halo><rsub|M><around|{|x,y|}>>. Conversely, a path with
  steps of sup-distance at most <math|1> in
  <math|<math-up|halo><rsub|M><around|(|D|)>> yields a chain of centres with
  consecutive distances <math|\<leqslant\>2*M+1>, by the triangle inequality.
  <em|Lean:> <hlink|<verbatim|Corona.ship_halo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L69-L93>,
  <hlink|<verbatim|Corona.halo_ship>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L95-L111>.

  <strong|Lemma I.1.h (a path through a chained set; diameter).> Let
  <math|D\<subset\>\<Lambda\><rsub|\<ell\>>> and <math|b\<in\>\<bbb-N\>>.
  Suppose any two points of <math|D> can be joined in <math|D> by a chain
  with steps of sup-distance at most <math|b>. Then there are
  <math|n\<leqslant\>2*b<around|\||D|\|>> and sites
  <math|R<rsub|0>,\<ldots\>,R<rsub|n>> visiting every point of <math|D>, with
  <math|<around|\||R<rsub|k+1>-R<rsub|k>|\|><rsub|\<ell\>>\<leqslant\>1> for
  <math|k\<less\>n>. Consequently Proposition I.1.4(d) holds. <em|Proof
  sketch.> For nonempty <math|D>, start at one point. The chain condition
  gives a point of <math|D> outside the visited set within distance <math|b>
  of a visited point. Insert a detour out and back along a
  coordinatewise-clamped segment, costing at most <math|2*b> steps. For
  <math|D=\<emptyset\>>, take a constant path of length <math|0>. A cover has
  chain bound <math|b=2*M+1>, so the resulting path has length at most
  <math|<around|(|4*M+2|)><space|0.17em><math-up|cov><rsub|M><around|(|X|)>>.
  Distances along it are bounded by its length, and the two halo radii add
  <math|2*M>. <em|Lean:> <hlink|<verbatim|Corona.ring_path>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fit.lean#L38-L74>,
  <hlink|<verbatim|Corona.path_span>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fit.lean#L76-L82>,
  <hlink|<verbatim|Corona.extent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fit.lean#L84-L95>.

  <strong|Lemma I.1.i (change of scale).> Proposition I.1.4(e). <em|Proof
  sketch.> The grid <math|x+<around|[|b*<space|0.17em>q|]>>,
  <math|q\<in\>B<rsub|k>>, covers <math|<math-up|halo><rsub|k*b><around|{|x|}>>
  at scale <math|b>:

  <\itemize-minus>
    <item>division with remainder puts every point within <math|b> of a grid
    point;

    <item>consecutive grid points along coordinatewise-clamped paths are at
    most <math|b> apart on the torus, so the grid is <math|b>-chained.
  </itemize-minus>

  For a general <math|D> covering <math|X> at scale <math|m*b>, I.1.g gives
  chains of centres with steps at most <math|2*m*b+1\<leqslant\>2*<around|(|m+1|)>*b>.
  The balls <math|<math-up|halo><rsub|<around|(|m+1|)>*b><around|{|x|}>>
  along such a chain overlap. For each centre, the grid above gives a cover
  of its ball whose <math|b>-halo is connected and contains that ball. These
  connected haloes meet successively, so their union covers <math|X> and is
  connected. The union of their centres has at most
  <math|<around|(|2*m+3|)><rsup|4><around|\||D|\|>> points. <em|Lean:>
  <hlink|<verbatim|Corona.tile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Halo.lean#L66-L113>,
  <hlink|<verbatim|Corona.tiling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Halo.lean#L115-L125>.

  <strong|Lemma I.1.j (coarsening).> Proposition I.1.4(f). <em|Proof sketch.>

  <\enumerate>
    <item>Take an optimal cover <math|A> of <math|X> at scale <math|M>. By
    I.1.h there is a fine path <math|R<rsub|0>,\<ldots\>,R<rsub|n>> visiting
    <math|A>, with steps of sup-distance at most <math|1> and
    <math|n\<leqslant\><around|(|4*M+2|)><around|\||A|\|>>.

    <item>Sample its parents every <math|L*B> steps:
    <math|D<rprime|'>=<around|{|<math-up|par><space|0.17em>R<rsub|j*L*B>:0\<leqslant\>j\<leqslant\><around|\<lfloor\>|n/<around|(|L*B|)>|\<rfloor\>>|}>>.
    By foreshortening, parents of path points at most <math|L*B> steps apart
    are within <math|2*B> on the coarse torus. Thus <math|D<rprime|'>> is
    <math|2*B>-chained, every <math|<math-up|par><space|0.17em>R<rsub|k>>
    with <math|0\<leqslant\>k\<leqslant\>n> lies in
    <math|<math-up|halo><rsub|2*B><around|(|D<rprime|'>|)>>, and
    <math|L*B<around|\||D<rprime|'>|\|>\<leqslant\>n+L*B>.

    <item>A point of <math|<math-up|halo><rsub|s*B><around|(|<math-up|par><space|0.17em>X|)>>
    lies within <math|s*B+3*B+2*B> of <math|D<rprime|'>>. The middle term
    uses <math|L*<around|\||<math-up|par><space|0.17em>c-<math-up|par><space|0.17em>v|\|><rsub|\<ell\>>\<leqslant\>M+L\<leqslant\>3*B*L>
    for <math|c\<in\>A> within <math|M> of <math|v\<in\>X>. The
    <math|<around|(|s+5|)>*B>-halo of <math|D<rprime|'>> is connected by
    I.1.g, since <math|D<rprime|'>> is <math|2*B>-chained, so
    <math|D<rprime|'>> is a cover at that scale.

    <item>Apply I.1.i with <math|m=s+5>, giving a factor
    <math|<around|(|2*s+13|)><rsup|4>>. Since <math|M\<leqslant\>2*B> and
    <math|B\<geqslant\>1>, <math|4*M+2\<leqslant\>10*B>. Thus
    <math|L*B<around|\||D<rprime|'>|\|>\<leqslant\>L*B+10*B<around|\||A|\|>>,
    and division by <math|B> gives <math|L<around|\||D<rprime|'>|\|>\<leqslant\>L+10<around|\||A|\|>>.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|Corona.fuel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Spend.lean#L38-L70>,
  <hlink|<verbatim|Corona.collapse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Spend.lean#L73-L105>.

  <subsection|4.3 Links, transport, plaquettes><label|43-links-transport-plaquettes>

  <strong|Lemma I.1.k (pullback is a right action).> Proposition I.1.2(a).
  <em|Proof sketch.> Evaluate at a link. The image step of
  <math|\<pm\>e<rsub|i>> under <math|\<rho\><rprime|'>> and then
  <math|\<rho\>> is its image under <math|\<rho\>*\<rho\><rprime|'>>, and the
  affine maps compose as <math|<around|(|\<rho\>,b|)>\<circ\><around|(|\<rho\><rprime|'>,b<rprime|'>|)>=<around|(|\<rho\>*\<rho\><rprime|'>,\<rho\>*b<rprime|'>+b|)>>.
  <em|Lean:> <hlink|<verbatim|Step.rotate_mul>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L47-L50>,
  <hlink|<verbatim|pull_id>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L169-L171>,
  <hlink|<verbatim|pull_pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L173-L179>,
  <hlink|<verbatim|pull_one>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L184-L186>.

  <strong|Lemma I.1.l (transport under pullback and gauge; locality).>
  Proposition I.1.2(b)\U(d). <em|Proof sketch.> Induction on the walk. One
  step: the variable that <math|A<rsup|\<ast\>>*U> assigns to a step equals
  the variable that <math|U> assigns to the image step at the image point.
  For a backward step, this is the inverse of the forward variable at the
  shifted base point, which is why base points move under reflections. Gauge:
  the product telescopes, <math|<big|prod><rsub|k>g<around|(|x<rsub|k>|)>*U<rsub|k>*g<around|(|x<rsub|k+1>|)><rsup|-1>=g<around|(|x<rsub|0>|)><around*|(|<big|prod><rsub|k>U<rsub|k>|)>*g<around|(|x<rsub|n>|)><rsup|-1>>.
  Locality: each factor reads one link whose endpoints are visited.
  <em|Lean:> <hlink|<verbatim|Step.pull_read>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L150-L158>,
  <hlink|<verbatim|travel_pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L160-L167>,
  <hlink|<verbatim|Step.gauge_read>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L137-L139>,
  <hlink|<verbatim|travel_gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L141-L143>,
  <hlink|<verbatim|travel_local>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L200-L220>.

  <strong|Lemma I.1.m (plaquettes under symmetries).> Proposition I.1.2(e).
  <em|Proof sketch.>

  <\itemize-minus>
    <item>By I.1.l, <math|<around|(|A<rsup|\<ast\>>*U|)><rsub|p>> is the
    transport of <math|U> around the image square, read from the image of the
    base point along the image steps.

    <item>Reversing the orientation of a square inverts its holonomy, and
    starting it at the next corner conjugates its holonomy.

    <item>Hence <math|\<phi\>> of the holonomy equals <math|\<phi\>> of the
    holonomy of the positive-axis square based at
    <math|A*x-<big|sum><rsub|k\<in\><around|{|i,j|}>:<space|0.17em>\<epsilon\><rsub|k>=-1>e<rsub|\<pi\><around|(|k|)>>>,
    with axes in increasing order.

    <item>Injectivity of $A_\\sharp $: the axis pair is permuted bijectively,
    and the shifted base point and the axis pair determine <math|A*x>. On the
    finite torus, injective implies bijective.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|oriented_swap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L62-L66>,
  <hlink|<verbatim|oriented_next>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L69-L73>,
  <hlink|<verbatim|price_flip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L80-L85>,
  <hlink|<verbatim|price_shift_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L91-L107>,
  <hlink|<verbatim|Face.lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L112-L113>,
  <hlink|<verbatim|Face.injective_send>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L119-L126>,
  <hlink|<verbatim|Face.send_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L128-L143>.

  <strong|Lemma I.1.n (periodic extension).> Proposition I.1.2(f). <em|Proof
  sketch.> <math|E<rsub|b>*U> evaluates <math|U> at the reduced, shifted
  point. Reduction is additive, commutes with <math|B<rsub|4>> and sends unit
  steps to unit steps. So transport, pullback and gauge action commute with
  <math|E<rsub|b>> step by step, and an agreement set on the cover maps to
  its image. <em|Lean:> <hlink|<verbatim|expandAt_pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L227-L235>,
  <hlink|<verbatim|travel_at>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L240-L247>,
  <hlink|<verbatim|expandAt_gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L249-L251>,
  <hlink|<verbatim|LocalOn.expandAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L253-L261>.

  <strong|Lemma I.1.o (boxes, routes, slabs).> Proposition I.1.12. <em|Proof
  sketch.> The endpoint of a route is computed axis by axis: each leg changes
  one coordinate by <math|y<rsub|a>-x<rsub|a>>, and the axes are distinct.
  Reversal and covariance hold leg by leg, since the image of a straight leg
  along <math|a> is a straight leg along <math|\<pi\><around|(|a|)>> of
  signed length <math|\<epsilon\><rsub|a>*<around|(|y<rsub|a>-x<rsub|a>|)>>.
  When <math|i\<nin\>J>, the slab sum is a disjoint decomposition by
  <math|y<rsub|i>>; translating a pinned layer by
  <math|<around|(|w-z|)>*e<rsub|i>> changes only that coordinate. The
  transport identity follows by appending a forward step for
  <math|d\<geqslant\>0> and cancelling a final backward step for
  <math|d\<less\>0>. Box covariance follows coordinatewise from the symmetric
  interval <math|<around|[|-r,r|]>>, and its cardinality is the product of
  the four interval cardinalities. <em|Lean:>
  <hlink|<verbatim|route_end>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Box.lean#L74-L80>,
  <hlink|<verbatim|back_route>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Route.lean#L36-L37>,
  <hlink|<verbatim|send_route>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Route.lean#L55-L61>,
  <hlink|<verbatim|slab_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Foliation.lean#L62-L71>,
  <hlink|<verbatim|carry_succ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Foliation.lean#L91-L106>.

  <subsection|4.4 Gauge group><label|44-gauge-group>

  <strong|Lemma I.1.p (cost, chord, Haar).> Proposition I.1.5. <em|Proof
  sketch.>

  <\itemize-minus>
    <item><math|<around|\<\|\|\>|u-1|\<\|\|\>><rsub|F><rsup|2>=<math-up|tr><around|(|<around|(|u-1|)>*<around|(|u-1|)><rsup|\<ast\>>|)>=2*N-2<space|0.17em><math-up|Re><space|0.17em><math-up|tr><space|0.17em>u>,
    using <math|u*u<rsup|\<ast\>>=1>.

    <item><math|<around|\<\|\|\>|u-1|\<\|\|\>><rsub|F>\<leqslant\><around|\<\|\|\>|u|\<\|\|\>><rsub|F>+<around|\<\|\|\>|1|\<\|\|\>><rsub|F>=2*<sqrt|N>>.

    <item><math|u*v-1=<around|(|u-1|)>+u*<around|(|v-1|)>> and
    <math|<around|\<\|\|\>|u*<around|(|v-1|)>|\<\|\|\>><rsub|F>=<around|\<\|\|\>|v-1|\<\|\|\>><rsub|F>>
    give the triangle inequality.

    <item>The trace is conjugation invariant, and
    <math|<math-up|tr><space|0.17em>u<rsup|-1>=<wide|<math-up|tr><space|0.17em>u|\<bar\>>>.

    <item>A right translate of <math|\<mu\><rsub|G>> is again a left Haar
    probability measure, hence equals <math|\<mu\><rsub|G>> by uniqueness.
    Right invariance then makes the image under inversion a left Haar
    probability measure as well. Continuity of <math|\<sigma\>> and
    <math|\<chi\>> follows from continuity of the trace and norm.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|frob_sq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L34-L43>,
  <hlink|<verbatim|unitary_frob>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L55-L59>,
  <hlink|<verbatim|chord_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L117-L126>,
  <hlink|<verbatim|chord_triangle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L146-L155>,
  <hlink|<verbatim|price_inv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L157-L158>,
  <hlink|<verbatim|probHaar_rightInv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L193-L200>,
  <hlink|<verbatim|probHaar_invInv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L202-L207>.

  <strong|Lemma I.1.q (the Lie algebra).> Proposition I.1.6(a). <em|Proof
  sketch.>

  <\itemize-minus>
    <item>Skewness: differentiate <math|f<around|(|t|)>*f<around|(|t|)><rsup|\<ast\>>=1>
    at <math|0>.

    <item>Tangent criterion: if <math|f> takes values in <math|G> with
    <math|f<around|(|0|)>=1> and <math|f<rprime|'><around|(|0|)>=X>, then
    <math|X> is skew and

    <\equation*>
      <around|\<\|\|\>|f*<around|(|1/n|)><rsup|n>-e<rsup|X>|\<\|\|\>><rsub|F>\<leqslant\>n*<space|0.17em><around|\<\|\|\>|f*<around|(|1/n|)>-e<rsup|X/n>|\<\|\|\>><rsub|F>=o<around|(|1|)>,
    </equation*>

    by the telescoping <math|<around|\<\|\|\>|A<rsup|n>-B<rsup|n>|\<\|\|\>><rsub|F>\<leqslant\>n*<around|\<\|\|\>|A-B|\<\|\|\>><rsub|F>>
    for unitary <math|A,B>. Unitary multiplication is isometric, so the bound
    has no exponential factor. Closedness of <math|G> gives
    <math|e<rsup|X>\<in\>G>; apply this to
    <math|f*<around|(|t<space|0.17em>\<cdot\>|)>>.

    <item>Additivity: apply the criterion to <math|e<rsup|t*X>*e<rsup|t*Y>>.

    <item>Scalar multiplication follows by rescaling the one-parameter
    subgroup. The resulting real subspace is closed because it is finite
    dimensional. Conjugation preserves it since
    <math|e<rsup|s*<around|(|u*X*u<rsup|-1>|)>>=u*e<rsup|s*X>*u<rsup|-1>> for
    <math|u\<in\>G>.

    <item>Brackets: <math|e<rsup|t*X>*Y*e<rsup|-t*X>\<in\>\<frak-g\>> and the
    closed subspace <math|\<frak-g\>> contains the limit
    <math|<around|[|X,Y|]>> of its difference quotients.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|tangent_skew>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L31-L40>,
  <hlink|<verbatim|frob_pow_difference>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L47-L59>,
  <hlink|<verbatim|tangent_approx>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L61-L96>,
  <hlink|<verbatim|tangent_generates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L98-L111>,
  <hlink|<verbatim|generates_add>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L114-L124>,
  <hlink|<verbatim|conjugate_mem>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L151-L157>,
  <hlink|<verbatim|bracket_mem>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L159-L176>.

  <strong|Lemma I.1.r (colours, invariant forms, Casimir).> Proposition
  I.1.6(b)\U(f). <em|Proof sketch.>

  <\itemize-minus>
    <item>The colour frame is a Frobenius-orthonormal basis of
    <math|\<frak-g\>> scaled by <math|<sqrt|N>>. For skew <math|X,Y>,
    <math|<math-up|Re><space|0.17em><math-up|tr><around|(|X*Y<rsup|\<ast\>>|)>=-<math-up|tr><around|(|X*Y|)>>
    and <math|<math-up|tr><around|(|X*Y|)>> is real. Orthogonal projection
    followed by the inverse colour frame gives <math|\<Pi\>> and its norm
    bound. Unitary conjugation preserves <math|\<frak-g\>> and the Frobenius
    inner product, so it induces the orthogonal adjoint representation. The
    exponential is continuous by the matrix exponential and the induced
    topology on <math|G>.

    <item>(d): let <math|A> be the symmetric operator with
    <math|<around|\<langle\>|A*x,y|\<rangle\>>=B<around|(|x,y|)>>. Invariance
    of <math|B> and skewness of <math|<math-up|ad>> give
    <math|A<space|0.17em><math-up|ad><rsub|x>=<math-up|ad><rsub|x>A>.
    Nonabelianity gives <math|d\<gtr\>0>. Choose a real eigenvalue <math|c>
    of <math|A>; its nonzero eigenspace is an <math|<math-up|ad>>-invariant
    subspace, hence an ideal. Simplicity makes it the whole space, so
    <math|A=c\<cdot\><math-up|id>>.

    <item>(e): <math|K<around|(|x,y|)>=-<math-up|tr><around|(|<math-up|ad><rsub|x><math-up|ad><rsub|y>|)>>
    is symmetric and invariant, by <math|<math-up|ad><rsub|<around|[|x,y|]>>=<around|[|<math-up|ad><rsub|x>,<math-up|ad><rsub|y>|]>>
    and cyclicity, so <math|K=c<around|\<langle\>|\<cdummy\>,\<cdummy\>|\<rangle\>>>.
    Taking the trace over an orthonormal basis gives
    <math|c=C<rsub|\<frak-g\>>>.

    <item>Positivity: <math|K<around|(|x,x|)>=<big|sum><rsub|i><around|\||<math-up|ad><rsub|x>b<rsub|i>|\|><rsup|2>>,
    which is <math|\<gtr\>0> for some <math|x> because <math|\<frak-g\>> is
    nonabelian. This forces <math|C<rsub|\<frak-g\>>\<gtr\>0>, and the
    positive factor <math|11/<around|(|24*\<pi\><rsup|2>|)>> gives
    <math|\<kappa\>\<gtr\>0>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|inner_frob_color>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L56-L62>,
  <hlink|<verbatim|Simple.ideals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L30-L50>,
  <hlink|<verbatim|ad_jacobi>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L56-L62>,
  <hlink|<verbatim|ad_skew>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L64-L70>,
  <hlink|<verbatim|minusKilling_invariant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L91-L96>,
  <hlink|<verbatim|invariant_scalar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L99-L125>,
  <hlink|<verbatim|minusKilling_sq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L128-L137>,
  <hlink|<verbatim|trace_adjoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L140-L158>,
  <hlink|<verbatim|casimir_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L160-L172>.

  <strong|Lemma I.1.s (Haar mass of small balls).> Proposition I.1.7.
  <em|Proof sketch.> Points of <math|G> lie on the Frobenius sphere of radius
  <math|<sqrt|N>> in <math|M<rsub|N><around|(|\<bbb-C\>|)>\<cong\>\<bbb-R\><rsup|2*N<rsup|2>>>.
  Take a finite set <math|p\<subset\>G> whose distinct points have Frobenius
  distance strictly greater than <math|r<sqrt|N>>:

  <\itemize-minus>
    <item>the balls of radius <math|r<sqrt|N>/2> around its points are
    disjoint and lie in the ball of radius <math|2*<sqrt|N>>, so
    <math|<around|\||p|\|>*<around|(|r/4|)><rsup|2*N<rsup|2>>\<leqslant\>1>;
    in particular a maximal such set exists;

    <item>if <math|p> is maximal, then <math|G=<big|cup><rsub|i\<in\>p>i\<cdot\><around|{|\<chi\>\<leqslant\>r|}>>,
    and left invariance gives <math|1\<leqslant\><around|\||p|\|>*<space|0.17em>\<mu\><rsub|G>*<around|{|\<chi\>\<leqslant\>r|}>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|shell_ge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Size.lean#L80-L130>.

  <strong|Lemma I.1.t (local logarithm).> Proposition I.1.8(a). <em|Proof
  sketch.>

  <\itemize-minus>
    <item><math|\<Phi\><around|(|c,\<nu\>|)>=e<rsup|X<rsub|c>>*e<rsup|\<nu\>>>
    on <math|\<bbb-R\><rsup|d>\<times\>\<frak-g\><rsup|\<perp\>>> is
    analytic, with <math|D*\<Phi\><around|(|0|)><around|(|c,\<nu\>|)>=X<rsub|c>+\<nu\>>
    invertible, so it has a local analytic inverse.

    <item><em|Isolation:> near <math|0>, <math|e<rsup|\<nu\>>\<in\>G> with
    <math|\<nu\>\<in\>\<frak-g\><rsup|\<perp\>>> forces <math|\<nu\>=0>.
    Otherwise take <math|\<nu\><rsub|k>\<to\>0>,
    <math|\<nu\><rsub|k>\<neq\>0>, <math|e<rsup|\<nu\><rsub|k>>\<in\>G>, with
    <math|\<nu\><rsub|k>/<around|\<\|\|\>|\<nu\><rsub|k>|\<\|\|\>><rsub|F>\<to\>Y>
    along a subsequence. For <math|t\<geqslant\>0>, <math|e<rsup|t*Y>=lim
    <around|(|e<rsup|\<nu\><rsub|k>>|)><rsup|<around|\<lfloor\>|t/<around|\<\|\|\>|\<nu\><rsub|k>|\<\|\|\>><rsub|F>|\<rfloor\>>>\<in\>G>
    by closedness; inverses handle <math|t\<less\>0>. So
    <math|Y\<in\>\<frak-g\>\<cap\>\<frak-g\><rsup|\<perp\>>=0>, contradicting
    <math|<around|\<\|\|\>|Y|\<\|\|\>><rsub|F>=1>.

    <item>For <math|u\<in\>G> near <math|1>, write
    <math|u=\<Phi\><around|(|c,\<nu\>|)>>; then
    <math|e<rsup|\<nu\>>=e<rsup|-X<rsub|c>>*u\<in\>G> forces <math|\<nu\>=0>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|direction_in_lie>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Chart.lean#L40-L69>,
  <hlink|<verbatim|isolates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Chart.lean#L71-L91>,
  <hlink|<verbatim|splitDeriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Chart.lean#L124-L133>,
  <hlink|<verbatim|plog_diff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Chart.lean#L152-L155>,
  <hlink|<verbatim|plog_left>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Chart.lean#L157-L162>,
  <hlink|<verbatim|plog_right>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Chart.lean#L164-L175>.

  <strong|Lemma I.1.u (nearest point).> Proposition I.1.8(b). <em|Proof
  sketch.>

  <\itemize-minus>
    <item>Existence by compactness; equivariance because left and right
    unitary multiplication are Frobenius isometries.

    <item>First-order condition: if <math|1> is nearest to <math|X>, then
    <math|t\<mapsto\><around|\<\|\|\>|e<rsup|t*Y>-X|\<\|\|\>><rsub|F><rsup|2>>
    is minimal at <math|0>, so <math|<around|\<langle\>|X-1,Y|\<rangle\>>=0>
    for <math|Y\<in\>\<frak-g\>>. The general case follows by left
    translation.

    <item>Identification near <math|1>: for any choice <math|b<around|(|X|)>>
    of nearest points, <math|<around|\<\|\|\>|b<around|(|X|)>-1|\<\|\|\>><rsub|F>\<leqslant\>2*<around|\<\|\|\>|X-1|\<\|\|\>><rsub|F>>.
    Hence <math|\<nu\><around|(|X|)>=b<around|(|X|)><rsup|\<ast\>>*X-1\<in\>\<frak-g\><rsup|\<perp\>>>
    tends to <math|0>, and <math|X=\<Psi\><around|(|log<rsub|G>
    b<around|(|X|)>,\<nu\><around|(|X|)>|)>> with both arguments near
    <math|0>. Injectivity of the local diffeomorphism <math|\<Psi\>> gives
    <math|b<around|(|X|)>=<math-up|foc><around|(|X|)>>. To obtain one
    neighbourhood valid for every nearest point, choose
    <math|b<around|(|X|)>> to differ from <math|<math-up|foc><around|(|X|)>>
    whenever such a nearest point exists. The same argument forces this
    selection to equal <math|<math-up|foc>> on a neighbourhood, excluding all
    such exceptions there.

    <item>Uniqueness in a tube: translate by <math|v<rsup|-1>>.

    <item>The derivative of <math|<math-up|foc>> at <math|1> is
    <math|X<rsub|<around|(|\<cdummy\>|)>>\<circ\><math-up|pr><rsub|1>\<circ\>D*\<Psi\><around|(|0|)><rsup|-1>=P<rsub|\<frak-g\>>>,
    and the approximation bound is the strict differentiability of
    <math|<math-up|foc>> at <math|1>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|nearest_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L28-L31>,
  <hlink|<verbatim|nearest_left>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L33-L36>,
  <hlink|<verbatim|nearest_normal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L65-L68>,
  <hlink|<verbatim|tubular>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L70>,
  <hlink|<verbatim|tubularDeriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L78-L86>,
  <hlink|<verbatim|nearest_is_focus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L128-L139>,
  <hlink|<verbatim|nearest_tube>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L141-L153>,
  <hlink|<verbatim|focus_deriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L155-L170>,
  <hlink|<verbatim|nearest_approximate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L172-L181>.

  <strong|Lemma I.1.v (curvature of a group element).> Proposition I.1.8(c).
  <em|Proof sketch.> Conjugation by <math|v\<in\>G> is a Frobenius isometry
  preserving <math|\<frak-g\>>, hence also <math|\<frak-g\><rsup|\<perp\>>>,
  so <math|\<Pi\>*<around|(|v*A*v<rsup|-1>|)>=<math-up|Ad><around|(|v|)>*\<Pi\>*A>.
  For the bound:

  <\equation*>
    <around|\||F<around|(|u|)>|\|>\<leqslant\><tfrac|1|2*<sqrt|N>><around|\<\|\|\>|u-u<rsup|-1>|\<\|\|\>><rsub|F>\<leqslant\><tfrac|1|2><around*|(|\<chi\><around|(|u|)>+\<chi\><around|(|u<rsup|-1>|)>|)>=\<chi\><around|(|u|)>.
  </equation*>

  The derivative of <math|<frac|1|2>*<around|(|e<rsup|t*X<rsub|c>>-e<rsup|-t*X<rsub|c>>|)>>
  at <math|0> is <math|X<rsub|c>>, and <math|\<Pi\>*X<rsub|c>=c>. <em|Lean:>
  <hlink|<verbatim|project_conjugate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Curvature.lean#L35-L47>,
  <hlink|<verbatim|curvature_conjugate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Curvature.lean#L55-L60>,
  <hlink|<verbatim|curvature_norm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Curvature.lean#L62-L75>,
  <hlink|<verbatim|leading_curvature>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Curvature.lean#L78-L96>.

  <subsection|4.5 The Wilson measure><label|45-the-wilson-measure>

  <strong|Lemma I.1.w (the law).> Proposition I.1.9. <em|Proof sketch.>
  <math|E<rsub|\<ell\>>> is a finite sum of continuous functions on a compact
  space. There are <math|6*\<ell\><rsup|4>> terms, each in
  <math|<around|[|0,2|]>>, giving the energy bounds. The weight
  <math|e<rsup|-\<beta\>*E<rsub|\<ell\>>>> is continuous and strictly
  positive, so it is integrable and <math|Z<rsub|\<ell\>>\<gtr\>0>. The
  density <math|e<rsup|-\<beta\>*E<rsub|\<ell\>>>/Z<rsub|\<ell\>>> has
  integral <math|1>. Continuous complex functions are bounded by compactness,
  and bounded measurable functions are integrable against a probability
  measure. The moment formula follows by integration against the density.
  <em|Lean:> <hlink|<verbatim|bare_integrable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L71-L72>,
  <hlink|<verbatim|partition_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L76-L80>,
  <hlink|<verbatim|moment_formula>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L110-L121>.

  <strong|Lemma I.1.x (invariance of Haar measure, energy and law).>
  Proposition I.1.10. <em|Proof sketch.>

  <\itemize-minus>
    <item><em|Haar.> <math|A<rsup|\<ast\>>> is the composite of two maps. The
    first is the relabelling <math|U\<mapsto\>U\<circ\>e<rsub|A>>, where
    <math|e<rsub|A>> maps the link <math|<around|(|x,i|)>> to the positively
    oriented link carrying its image; this is injective, hence a permutation
    of the finite link set. The second inverts the variables on links with
    <math|\<epsilon\><rsub|i>=-1>. Permutations of factors preserve a product
    measure, and inversion preserves <math|\<mu\><rsub|G>>. A gauge
    transformation acts on each factor by
    <math|u\<mapsto\>g<around|(|x|)>*u*g*<around|(|x+e<rsub|i>|)><rsup|-1>>,
    which preserves <math|\<mu\><rsub|G>>.

    <item><em|Energy.> Gauge: plaquette holonomies are conjugated. Pullback:
    by I.1.m the energy is re-summed over the bijection $A_\\sharp $.

    <item><em|Law.> A map preserving <math|\<mu\><rsub|\<ell\>>> and
    <math|E<rsub|\<ell\>>> preserves the density, hence the law.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|sendEdge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Symmetry.lean#L25-L26>,
  <hlink|<verbatim|sendEdge_injective>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Symmetry.lean#L28-L37>,
  <hlink|<verbatim|prior_pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Symmetry.lean#L45-L67>,
  <hlink|<verbatim|prior_gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Symmetry.lean#L69-L72>,
  <hlink|<verbatim|face_gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L49-L51>,
  <hlink|<verbatim|energy_pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L45-L50>,
  <hlink|<verbatim|law_preserved>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Symmetry.lean#L75-L91>,
  <hlink|<verbatim|moment_pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Symmetry.lean#L106-L113>.

  <subsection|4.6 Continuum symmetry groups><label|46-continuum-symmetry-groups>

  <strong|Lemma I.1.y (Euclidean group and configurations).> Proposition
  I.1.11(a),(e). <em|Proof sketch.> The matrix of <math|\<rho\>> has entry
  <math|\<epsilon\><rsub|a>> at <math|<around|(|\<pi\><around|(|a|)>,a|)>>;
  it is orthogonal and multiplies like <math|B<rsub|4>>. The exponential of a
  skew matrix is orthogonal. The set <math|<math-up|Conf><rsub|n>> is a
  finite intersection of open sets <math|<around|{|x<rsub|i>\<neq\>x<rsub|j>|}>>.
  Distinct time coordinates imply distinct points, as does a positive lower
  bound on pairwise sup-distances. Splitting off one Euclidean
  four-dimensional factor at a time identifies Lebesgue measure on
  <math|<around|(|\<bbb-R\><rsup|4>|)><rsup|n>> with the product measure.
  <em|Lean:> <hlink|<verbatim|Signed.ortho_move>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L108-L115>,
  <hlink|<verbatim|Signed.inclusionO>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L117-L120>,
  <hlink|<verbatim|generic_conf>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L72-L74>,
  <hlink|<verbatim|spaced_conf>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L76-L81>,
  <hlink|<verbatim|conf_open>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L83-L90>.

  <strong|Lemma I.1.z (Lorentz group, boosts, cone, Poincaré group).>
  Proposition I.1.11(b)\U(d). <em|Proof sketch.>

  <\itemize-minus>
    <item>The three defining conditions of <math|\<cal-L\>> are stable under
    products and inverses, and <math|det=1> gives Lebesgue invariance.

    <item>Boosts: the addition law <math|B<rsub|e><around|(|r|)>*B<rsub|e><around|(|r<rprime|'>|)>=B<rsub|e>*<around|(|r+r<rprime|'>|)>>
    follows from the addition formulas for <math|cosh,sinh>, and
    <math|<math-ss|m>> is preserved by <math|cosh<rsup|2>-sinh<rsup|2>=1>.
    For the determinant: <math|R*B<rsub|e><around|(|r|)>*R=B<rsub|e>*<around|(|-r|)>>
    gives <math|det B<rsub|e><around|(|r|)>=det B<rsub|e>*<around|(|-r|)>=det
    B<rsub|e><around|(|r|)><rsup|-1>>, and <math|det
    B<rsub|e><around|(|r|)>=det B<rsub|e>*<around|(|r/2|)><rsup|2>\<gtr\>0>,
    so <math|det=1>. The cone is preserved by <math|<around|\||sinh
    r|\|>\<leqslant\>cosh r>. Differentiating the boost formula at <math|r=0>
    gives <math|K<rsub|e>>; continuity follows from <math|cosh> and
    <math|sinh>.

    <item>Dual action: the identity <math|<around|\<langle\>|g*x,g<rsup|\<vee\>>*p|\<rangle\>>=<around|\<langle\>|x,p|\<rangle\>>>
    is polarization of <math|<math-ss|m><around|(|x|)>=<around|\<langle\>|x,R*x|\<rangle\>>>.

    <item>Cone duality: Cauchy\USchwarz gives
    <math|<around|\<langle\>|x,p|\<rangle\>>\<geqslant\>x<rsub|t>*p<rsub|t>-<around|\||<wide|x|\<vect\>>|\|><space|0.17em><around|\||<wide|p|\<vect\>>|\|>\<geqslant\>0>
    for <math|x,p\<in\><wide|V|\<bar\>><rsub|+>>. Conversely, test against
    <math|p=<around|(|-<wide|x|\<vect\>>/<around|\||<wide|x|\<vect\>>|\|>,1|)>>
    when <math|<wide|x|\<vect\>>\<ne\>0>, and against <math|<around|(|0,1|)>>
    otherwise. If <math|x\<in\>V<rsub|+>> and
    <math|p\<in\><wide|V|\<bar\>><rsub|+>\<setminus\><around|{|0|}>>, then
    <math|p<rsub|t>\<gtr\>0> makes the bound strict.

    <item>Half-space characterization: for
    <math|x\<in\><wide|V|\<bar\>><rsub|+>>, every <math|g<rsup|\<vee\>>*x>
    remains in that cone and has nonnegative time coordinate. If
    <math|x<rsub|t>\<less\>0>, take <math|g=1>. Otherwise, if
    <math|x\<nin\><wide|V|\<bar\>><rsub|+>>, put
    <math|e=<wide|x|\<vect\>>/<around|\||<wide|x|\<vect\>>|\|>>, choose
    <math|x<rsub|t>/<around|\||<wide|x|\<vect\>>|\|>\<less\>s\<less\>1>, and
    set <math|r=<math-up|artanh><space|0.17em>s\<gtr\>0> and
    <math|g=B<rsub|e><around|(|r|)>>. Then
    <math|g<rsup|\<vee\>>=B<rsub|e>*<around|(|-r|)>> and
    <math|<around|(|g<rsup|\<vee\>>*x|)><rsub|t>=cosh
    r*<space|0.17em><around|(|x<rsub|t>-s<around|\||<wide|x|\<vect\>>|\|>|)>\<less\>0>.

    <item>The open cone is characterized by <math|x<rsub|t>\<gtr\>0> and
    <math|<math-ss|m><around|(|x|)>\<gtr\>0>, and is preserved by the cone
    and quadratic-form identities. A Euclidean rotation fixing time preserves
    <math|<around|\||<wide|x|\<vect\>>|\|>> and hence both cones and
    <math|<math-ss|m>>; determinant <math|1> places it in <math|\<cal-L\>>.
    Affine composition gives the Poincaré group law. Evaluation at <math|0>
    recovers the translation, and subtracting it recovers the Lorentz map.
    Joint continuity follows from linear evaluation; the diagonal measure
    statement follows from preservation of each factor.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Ray.adds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Boost.lean#L48-L52>,
  <hlink|<verbatim|Ray.positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Boost.lean#L67-L84>,
  <hlink|<verbatim|Ray.staysM>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Boost.lean#L86-L90>,
  <hlink|<verbatim|Lorentz.dual_sent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Lorentz.lean#L120-L122>,
  <hlink|<verbatim|cone_test>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Geometry.lean#L113-L129>,
  <hlink|<verbatim|Lorentz.from_half>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Boost.lean#L135-L158>,
  <hlink|<verbatim|Poincare.preserving>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Poincare.lean#L101-L102>,
  <hlink|<verbatim|Poincare.together>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Poincare.lean#L117-L121>.

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The local logarithm and nearest-point retraction require a closed-subgroup
  argument that also handles disconnected groups. The coarsening estimate
  must control arbitrary periodic sets uniformly in the torus side. The
  invariant-form argument uses simplicity over <math|\<bbb-R\>>;
  irreducibility of the defining representation is not assumed. Invariance of
  the Wilson law reduces to Haar invariance, but reflections require the
  correct shifts of link and plaquette base points.

  The representation <math|G\<subset\>U<around|(|N|)>> fixes the cost and the
  colour inner product, and hence <math|C<rsub|\<frak-g\>>> and
  <math|\<kappa\>>. Each positive-axis plaquette is counted once. The later
  running-coupling estimate says that the ratio of the level-<math|m>
  coupling to <math|s<rsub|m>> tends to <math|\<kappa\>>, uniformly in the
  ultraviolet cutoff <math|N<rprime|'>\<geqslant\>m> and the volume index
  <math|p>, for a family satisfying the construction conditions
  (<hlink|<verbatim|zeroUp_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L15-L30>).
  Its normalization is <math|\<kappa\>=2*b<rsub|0>>, where
  <math|b<rsub|0>=11*C<rsub|\<frak-g\>>/<around|(|48*\<pi\><rsup|2>|)>>
  (<hlink|<verbatim|b0_normalizes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L14>).

  Even torus sides create tie points in the centred lift. Absolute values,
  and hence separation, remain invariant under reflections. Placements
  commute with signed permutations on the strict interior of the fundamental
  box. Odd subdivision ratios remove this ambiguity from the residue window,
  which gives equivariance of the parent map.

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|object>>|<cell|<strong|code
  name>>|<cell|<strong|proposed notation>>>|<row|<cell|torus, side,
  cover>|<cell|<hlink|<verbatim|Site>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L19>,
  <hlink|<verbatim|Side>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L17>,
  <hlink|<verbatim|Cover>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L20>>|<cell|<math|\<Lambda\><rsub|\<ell\>>=<around|(|\<bbb-Z\>/\<ell\>*\<bbb-Z\>|)><rsup|4>>,
  <math|\<ell\>>, <math|\<bbb-Z\><rsup|4>>>>|<row|<cell|reduction, centred
  lift>|<cell|<hlink|<verbatim|wrap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L35-L38>,
  <hlink|<verbatim|lift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L51>>|<cell|<math|<around|[|y|]><rsub|\<ell\>>>,
  <math|r<rsub|\<ell\>><around|(|x|)>>>>|<row|<cell|torus norm,
  separation>|<cell|<hlink|<verbatim|pdist>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L78>,
  <hlink|<verbatim|separation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L81>>|<cell|<math|<around|\<lvert\>|x|\<rvert\>><rsub|\<ell\>>>,
  <math|<around|\<lvert\>|x-y|\<rvert\>><rsub|\<ell\>>>>>|<row|<cell|signed
  permutations, affine maps>|<cell|<hlink|<verbatim|Signed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Index.lean#L23-L26>,
  <hlink|<verbatim|affine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L145>>|<cell|<math|\<rho\>=<around|(|\<pi\>,\<epsilon\>|)>\<in\>B<rsub|4>>,
  <math|A=<around|(|\<rho\>,b|)>>>>|<row|<cell|step, walk,
  transport>|<cell|<hlink|<verbatim|Step>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L23-L26>,
  <hlink|<verbatim|Walk>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L27>,
  <hlink|<verbatim|travel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L105-L107>>|<cell|<math|\<pm\>e<rsub|i>>,
  <math|w>, <math|U<around|(|x;w|)>>>>|<row|<cell|configuration>|<cell|<hlink|<verbatim|Links>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L21>,
  <hlink|<verbatim|Wilson.Config>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L24>>|<cell|<math|U>>>|<row|<cell|pullback,
  translation>|<cell|<hlink|<verbatim|pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L147-L148>,
  <hlink|<verbatim|translate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L182>>|<cell|<math|A<rsup|\<ast\>>*U>,
  <math|\<tau\><rsub|b>*U>>>|<row|<cell|gauge transformation; invariance;
  locality>|<cell|<hlink|<verbatim|gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L132-L133>,
  <hlink|<verbatim|GaugeInvariant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L135>,
  <hlink|<verbatim|LocalOn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L196-L197>>|<cell|<math|U<rsup|g>>>>|<row|<cell|plaquette,
  holonomy, image plaquette>|<cell|<hlink|<verbatim|Face>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L14>,
  <hlink|<verbatim|faceValue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L47>,
  <hlink|<verbatim|Face.send>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L115-L116>>|<cell|<math|p=<around|(|x;i\<less\>j|)>>,
  <math|U<rsub|p>>, <math|A<rsub|\<sharp\>>*p>>>|<row|<cell|periodic
  extension>|<cell|<hlink|<verbatim|expandAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L224-L225>>|<cell|<math|E<rsub|b>*U>>>|<row|<cell|box,
  axis route, slab>|<cell|<hlink|<verbatim|box>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Box.lean#L13>,
  <hlink|<verbatim|route>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Box.lean#L44>,
  <hlink|<verbatim|slab>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Foliation.lean#L18-L19>>|<cell|<math|B<rsub|r>>,
  <math|<math-up|route><rsub|o><around|(|x,y|)>>,
  <math|<math-up|slab><around|(|r,a,J|)>>>>|<row|<cell|schedule: block
  factors, periods>|<cell|<hlink|<verbatim|Schedule>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L28-L34>>|<cell|<math|<around|(|L<rsub|m>|)>>,
  <math|<around|(|P<rsub|p>|)>>; the statement writes <math|L<rsub|p>> for
  <math|P<rsub|p>> and <math|b<rsub|k>> for
  <math|L<rsub|k>>>>|<row|<cell|denominator, spacing, side,
  log-scale>|<cell|<hlink|<verbatim|denominator>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L39-L41>,
  <hlink|<verbatim|a>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L99>,
  <hlink|<verbatim|side>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L67>,
  <hlink|<verbatim|scale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L115>>|<cell|<math|D<rsub|m>>,
  <math|a<rsub|m>>, <math|\<ell\><around|(|m,p|)>>, <math|s<rsub|m>=log
  <around|(|1/a<rsub|m>|)>>>>|<row|<cell|placement>|<cell|<hlink|<verbatim|place>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L167>>|<cell|<math|a<rsub|m>*<space|0.17em>r<rsub|\<ell\>><around|(|x|)>>>>|<row|<cell|subdivision>|<cell|<hlink|<verbatim|Ratio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L22-L24>,
  <hlink|<verbatim|embed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L29>,
  <hlink|<verbatim|residue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L85-L88>,
  <hlink|<verbatim|parent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L117>>|<cell|ratio
  <math|L>, <math|\<iota\>>, <math|<math-up|res>>,
  <math|<math-up|par>>>>|<row|<cell|halo, cover
  number>|<cell|<hlink|<verbatim|halo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L43-L44>,
  <hlink|<verbatim|coverNumber>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L69-L71>>|<cell|<math|<math-up|halo><rsub|M><around|(|X|)>>,
  <math|<math-up|cov><rsub|M><around|(|X|)>> (as in III.5)>>|<row|<cell|gauge
  group>|<cell|<hlink|<verbatim|Gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L23-L26>,
  <hlink|<verbatim|El>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L78>,
  <hlink|<verbatim|mat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L94>>|<cell|<math|G\<subset\>U<around|(|N|)>>,
  <math|N=n+1> (the statement writes <math|m>)>>|<row|<cell|plaquette cost,
  chord>|<cell|<hlink|<verbatim|price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L112>,
  <hlink|<verbatim|chord>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L115>>|<cell|<math|\<sigma\><around|(|u|)>=1-<frac|1|N><math-up|Re><space|0.17em><math-up|tr><space|0.17em>u>,
  <math|\<chi\><around|(|u|)>>>>|<row|<cell|Haar
  probability>|<cell|<hlink|<verbatim|probHaar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L187>>|<cell|<math|\<mu\><rsub|G>>>>|<row|<cell|Lie
  algebra, colours, projection>|<cell|<hlink|<verbatim|lie>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L126-L135>,
  <hlink|<verbatim|Color>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L43>,
  <hlink|<verbatim|colorMat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L64>,
  <hlink|<verbatim|projectColor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L96-L97>>|<cell|<math|\<frak-g\>\<cong\>\<bbb-R\><rsup|d>>,
  <math|c\<mapsto\>X<rsub|c>>, <math|\<Pi\>>;
  <math|X<rsub|\<Pi\>*A>=P<rsub|\<frak-g\>>*A>>>|<row|<cell|adjoint action,
  bracket, exponential>|<cell|<hlink|<verbatim|adjoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L114-L117>,
  <hlink|<verbatim|ad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L136-L150>,
  <hlink|<verbatim|lieExp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L160>>|<cell|<math|<math-up|Ad><around|(|u|)>>,
  <math|<math-up|ad><around|(|c|)>>, <math|exp
  c>>>|<row|<cell|simplicity>|<cell|<hlink|<verbatim|Simple>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L179-L182>>|<cell|<math|G>
  simple>>|<row|<cell|Casimir, slope constant>|<cell|<hlink|<verbatim|casimir>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182>,
  <hlink|<verbatim|slopeConstant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184>>|<cell|<math|C<rsub|\<frak-g\>>>,
  <math|\<kappa\>=11*C<rsub|\<frak-g\>>/<around|(|24*\<pi\><rsup|2>|)>>
  (<math|=b<rsub|\<ast\>>=2*b<rsub|0>> of the statement)>>|<row|<cell|local
  logarithm, nearest point>|<cell|<hlink|<verbatim|plog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Chart.lean#L138>,
  <hlink|<verbatim|Nearest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L26>,
  <hlink|<verbatim|focus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L91>>|<cell|<math|log<rsub|G>>,
  nearest point, <math|<math-up|foc><around|(|X|)>>>>|<row|<cell|curvature of
  a group element>|<cell|<hlink|<verbatim|curvature>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L173>>|<cell|<math|F<around|(|u|)>>>>|<row|<cell|Wilson
  energy, weight, partition function>|<cell|<hlink|<verbatim|energy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L29>,
  <hlink|<verbatim|bare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L58>,
  <hlink|<verbatim|partition>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L74>>|<cell|<math|E<rsub|\<ell\>><around|(|U|)>>,
  <math|e<rsup|-\<beta\>*E<rsub|\<ell\>>>>,
  <math|Z<rsub|\<ell\>><around|(|\<beta\>|)>>>>|<row|<cell|product Haar,
  Wilson law, expectation>|<cell|<hlink|<verbatim|prior>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L55>,
  <hlink|<verbatim|law>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L87>,
  <hlink|<verbatim|moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L99>>|<cell|<math|\<mu\><rsub|\<ell\>>>,
  <math|\<bbb-P\><rsub|\<ell\>,\<beta\>>>,
  <math|<around|\<langle\>|\<cdummy\>|\<rangle\>><rsub|\<ell\>,\<beta\>>>>>|<row|<cell|spacetime,
  time, space, sup-distance>|<cell|<hlink|<verbatim|E4>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L24>,
  <hlink|<verbatim|time>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L27>,
  <hlink|<verbatim|spatial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L28>,
  <hlink|<verbatim|cubedist>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L51>>|<cell|<math|\<bbb-R\><rsup|4>>,
  <math|x<rsub|t>>, <math|<wide|x|\<vect\>>>,
  <math|<around|\<lvert\>|x-y|\<rvert\>><rsub|\<infty\>>>>>|<row|<cell|<math|n>-point
  configurations>|<cell|<hlink|<verbatim|Points>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L56>,
  <hlink|<verbatim|conf>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L63>,
  <hlink|<verbatim|generic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L66>,
  <hlink|<verbatim|spaced>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L70>>|<cell|<math|<around|(|\<bbb-R\><rsup|4>|)><rsup|n>>,
  <math|<math-up|Conf><rsub|n>>, generic,
  <math|r>-spaced>>|<row|<cell|orthogonal group, rotation
  generators>|<cell|<hlink|<verbatim|Ortho>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L20>,
  <hlink|<verbatim|skewSpace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L132-L142>,
  <hlink|<verbatim|plane>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L152-L154>>|<cell|<math|O<around|(|4|)>>,
  <math|<with|math-font|Euler|s*o><around|(|4|)>>,
  <math|\<Omega\><rsub|i*j>>>>|<row|<cell|Minkowski square,
  cones>|<cell|<hlink|<verbatim|m>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Geometry.lean#L77>,
  <hlink|<verbatim|cone>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Geometry.lean#L78>,
  <hlink|<verbatim|inside>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Geometry.lean#L79>>|<cell|<math|<math-ss|m><around|(|x|)>>,
  <math|<wide|V|\<bar\>><rsub|+>>, <math|V<rsub|+>>>>|<row|<cell|Lorentz
  group, dual, boost, Poincaré group>|<cell|<hlink|<verbatim|Mink.Lorentz>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Lorentz.lean#L46>,
  <hlink|<verbatim|dual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Lorentz.lean#L95-L103>,
  <hlink|<verbatim|Ray.boost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Boost.lean#L92-L101>,
  <hlink|<verbatim|Poincare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Poincare.lean#L32-L34>>|<cell|<math|\<cal-L\>=S*O<rsup|+><around|(|1,3|)>>,
  <math|g<rsup|\<vee\>>>, <math|B<rsub|e><around|(|r|)>>,
  <math|\<cal-P\>>>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Additional helper lemmas.> The assignment of declarations
    to I.1 includes helpers outside the six principal folders, including in
    <verbatim|Cells>, <verbatim|Extra>, <verbatim|Further> and
    <verbatim|Next>. Their statements and proofs are not covered here; their
    elementary character should not be assumed.

    <item><strong|Coarsening along the selected schedule.> Direct consumers
    retain <math|M\<leqslant\>2*B> explicitly, for example
    <hlink|<verbatim|YM.Next.Scheduling.Buy.footage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Support.lean#L39-L65>,
    or include it in a conjunction, as in
    <hlink|<verbatim|YM.Extra.Iteration.Shapes.raw>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Geometry.lean#L75-L76>.
    The derivation of this condition for the particular consecutive cover
    scales used in III.5 and III.10 remains to be traced through their
    schedule hypotheses.

    <item><strong|Bibliographic precision.> The references in Ÿ2 give
    context. Exact theorem locations and agreement of their conventions with
    the statements here remain to be checked.
  </enumerate>

  <ym-unit-nav||<hlink|Part I|../units.tm#part-i-setting><ym-nav-sep><hlink|Unit
  outline|../units/I-1.tm>|<hlink|II.1 Field labels and their lattice
  representatives (notes) \<rightarrow\>|II-1.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|I.1. Lattice, symmetries, gauge groups and the
    Wilson measure \V detailed notes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|1>>
    <associate|2-what-it-uses|<tuple|2|9>>
    <associate|3-strategy|<tuple|3|10>>
    <associate|4-steps|<tuple|4|11>>
    <associate|41-torus-subdivision-schedule|<tuple|4.1|11>>
    <associate|42-cover-numbers|<tuple|4.2|12>>
    <associate|43-links-transport-plaquettes|<tuple|4.3|13>>
    <associate|44-gauge-group|<tuple|4.4|14>>
    <associate|45-the-wilson-measure|<tuple|4.5|16>>
    <associate|46-continuum-symmetry-groups|<tuple|4.6|16>>
    <associate|5-where-the-difficulty-lies|<tuple|5|17>>
    <associate|6-notation|<tuple|6|18>>
    <associate|7-what-remains-unexplained|<tuple|7|19>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|4.6|16>>
    <associate|auto-11|<tuple|5|17>>
    <associate|auto-12|<tuple|6|18>>
    <associate|auto-13|<tuple|7|19>>
    <associate|auto-2|<tuple|2|9>>
    <associate|auto-3|<tuple|3|10>>
    <associate|auto-4|<tuple|4|11>>
    <associate|auto-5|<tuple|4.1|11>>
    <associate|auto-6|<tuple|4.2|12>>
    <associate|auto-7|<tuple|4.3|13>>
    <associate|auto-8|<tuple|4.4|14>>
    <associate|auto-9|<tuple|4.5|16>>
    <associate|i1-lattice-symmetries-gauge-groups-and-the-wilson-measure--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 Torus, subdivision, schedule
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 Cover numbers
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 Links, transport, plaquettes
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 Gauge group
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 The Wilson measure
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.6 Continuum symmetry groups
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Where the difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      What remains unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
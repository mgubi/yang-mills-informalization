<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav||<hlink|Part I|../units.tm#part-i-setting><ym-nav-sep><hlink|Detailed
  notes|../notes/I-1.tm>|<hlink|II.1 Field labels and their lattice
  representatives \<rightarrow\>|II-1.tm>>

  <ym-title|I.1. Lattice, symmetries, gauge groups and the Wilson
  measure><label|i1-lattice-symmetries-gauge-groups-and-the-wilson-measure>

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

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Where the
    difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Notation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. What remains
    unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Code
    dependencies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Lean source>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>

    <with|par-left|1tab|Additional source locations
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Key statements>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>
  </table-of-contents>

  <em|Part I \V Setting.>

  Sets up the periodic lattices, gauge groups and Wilson probability measure
  used throughout the construction.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/I-1.tm> <ym-middot> <hlink|Next:
  II.1 \<rightarrow\>|II-1.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <\ym-details|Source inventory and conventions>
    <strong|Part:> I, Setting. <strong|Lean:>
    <hlink|<verbatim|YM/Lattice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice>
    (1,215 lines), <hlink|<verbatim|YM/Gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge>
    (1,131), <hlink|<verbatim|YM/Space>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space>
    (430), <hlink|<verbatim|YM/Corona>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona>
    (405), <hlink|<verbatim|YM/Mink>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink>
    (363), <hlink|<verbatim|YM/Wilson>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson>
    (157). <strong|Size:> 3,701 lines in 595 line-counted declarations in the
    source allocation.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  Throughout, <math|G\<subset\>U<around|(|N|)>> is a closed subgroup,
  <math|N\<geqslant\>1>, <math|\<ell\>\<geqslant\>1> is integral, and
  <math|\<Lambda\><rsub|\<ell\>>=<around|(|\<bbb-Z\>/\<ell\>*\<bbb-Z\>|)><rsup|4>>.
  Configurations assign <math|U<around|(|x,i|)>\<in\>G> to links
  <math|x\<to\>x+e<rsub|i>>; transport multiplies these variables, using
  inverses on backward steps.

  <strong|Proposition I.1.1 (torus geometry).> Every site has a unique lift
  <math|r<rsub|\<ell\>><around|(|x|)>\<in\><around|(|-\<ell\>/2,\<ell\>/2|]><rsup|4>\<cap\>\<bbb-Z\><rsup|4>>,
  and <math|<around|\||\<Lambda\><rsub|\<ell\>>|\|>=\<ell\><rsup|4>>. The
  metric <math|<around|\||x-y|\|><rsub|\<ell\>>=max<rsub|i><around|\||r<rsub|\<ell\>>*<around|(|x-y|)><rsub|i>|\|>>
  is translation and signed-permutation invariant;
  <math|<around|\||<around|[|y|]><rsub|\<ell\>>|\|><rsub|\<ell\>>\<leqslant\><around|\||y|\|><rsub|\<infty\>>>
  for every <math|y\<in\>\<bbb-Z\><rsup|4>>. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|lift_eq_iff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L61-L68>,
  <hlink|<verbatim|separation_triangle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L103-L105>.

  <strong|Proposition I.1.2 (transport and symmetries).> On
  <math|\<Lambda\><rsub|\<ell\>>> or <math|\<bbb-Z\><rsup|4>>, let
  <math|A=<around|(|\<rho\>,b|)>>, <math|A*x=\<rho\>*x+b>, with
  <math|\<rho\>=<around|(|\<pi\>,\<epsilon\>|)>\<in\>B<rsub|4>> a signed
  permutation, <math|<around|(|\<rho\>*x|)><rsub|\<pi\><around|(|i|)>>=\<epsilon\><rsub|i>*x<rsub|i>>,
  <math|b\<in\>\<Lambda\>>. Pullback assigns image-link transport and
  satisfies <math|1<rsup|\<ast\>>=<math-up|id>>,
  <math|B<rsup|\<ast\>>*A<rsup|\<ast\>>=<around|(|A\<circ\>B|)><rsup|\<ast\>>>
  and <math|<around|(|A<rsup|\<ast\>>*U|)><around|(|x;w|)>=U<around|(|A*x;\<rho\>*w|)>>.
  For every <math|g:\<Lambda\>\<to\>G>, <math|U<rsup|g><around|(|x,i|)>=g<around|(|x|)>*U<around|(|x,i|)>*g*<around|(|x+e<rsub|i>|)><rsup|-1>>
  gives

  <\equation*>
    U<rsup|g><around|(|x;w|)>=g<around|(|x|)>*U<around|(|x;w|)>*g<around|(|x<rsub|<math-up|end>>|)><rsup|-1>.
  </equation*>

  Transport depends only on links with endpoints visited by <math|w>. For
  <math|p=<around|(|x;i\<less\>j|)>> put <math|U<rsub|p>=U<around|(|x;e<rsub|i>,e<rsub|j>,-e<rsub|i>,-e<rsub|j>|)>>.
  Affine maps injectively send plaquettes to image squares
  <math|A<rsub|\<sharp\>>*p>, bijectively on the torus; every conjugation-
  and inversion-invariant <math|\<phi\>:G\<to\>M> satisfies
  <math|\<phi\><around|(|<around|(|A<rsup|\<ast\>>*U|)><rsub|p>|)>=\<phi\><around|(|U<rsub|A<rsub|\<sharp\>>*p>|)>>.
  Gauge invariance means <math|F<around|(|U<rsup|g>|)>=F<around|(|U|)>> for
  all <math|g>; locality on <math|X> means dependence only on links with both
  endpoints in <math|X>. Periodic extension
  <math|E<rsub|b>*U<around|(|y,i|)>=U<around|(|<around|[|y|]><rsub|\<ell\>>+b,i|)>>
  respects transport, gauge transformations and locality, and
  <math|E<rsub|b>*<around|(|<around|(|\<rho\>,a|)><rsup|\<ast\>>*U|)>=<around|(|\<rho\>,0|)><rsup|\<ast\>>*E<rsub|\<rho\>*b+a>*U>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|travel_pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L160-L167>,
  <hlink|<verbatim|travel_gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L141-L143>,
  <hlink|<verbatim|Face.send_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L128-L143>,
  <hlink|<verbatim|expandAt_pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L227-L235>.

  <strong|Proposition I.1.3 (spacings and blocks).> For
  <math|m,p\<in\>\<bbb-N\>>, odd integers <math|L<rsub|m>\<geqslant\>3> and
  strictly increasing positive integers <math|P<rsub|p>> divisible by
  <math|4>, set <math|D<rsub|0>=1>, <math|D<rsub|m+1>=D<rsub|m>*L<rsub|m>>,
  <math|a<rsub|m>=D<rsub|m><rsup|-1>>, <math|\<ell\><around|(|m,p|)>=P<rsub|p>*D<rsub|m>>,
  <math|s<rsub|m>=log <around|(|1/a<rsub|m>|)>>. Then
  <math|a<rsub|m>*\<downarrow\>*0> strictly, <math|s<rsub|m>\<to\>\<infty\>>,
  and <math|a<rsub|m>*\<ell\><around|(|m,p|)>=P<rsub|p>>; placements
  <math|a<rsub|m>*r<rsub|\<ell\><around|(|m,p|)>>> lie in
  <math|<around|(|-P<rsub|p>/2,P<rsub|p>/2|]><rsup|4>> and are preserved by
  subdivisions. If <math|log L<rsub|m>/s<rsub|m>\<to\>0> for
  <math|m\<geqslant\>1>, some <math|c\<gtr\>0> satisfies
  <math|a<rsub|m+1>\<geqslant\>c*a<rsub|m><rsup|2>> for every <math|m>.

  For every integer <math|L\<geqslant\>1>,
  <math|\<ell\><rprime|'>=\<ell\>*L>, the equivariant injective homomorphism
  <math|\<iota\>*x=<around|[|L*r<rsub|\<ell\>><around|(|x|)>|]><rsub|\<ell\><rprime|'>>>
  satisfies <math|r<rsub|\<ell\><rprime|'>>*\<iota\>=L*r<rsub|\<ell\>>>. The
  bijection <math|<around|(|x,y|)>\<mapsto\>\<iota\>*x+<around|[|r<rsub|L><around|(|y|)>|]><rsub|\<ell\><rprime|'>>>
  defines parent and residue maps. For odd <math|L>, parent is
  <math|B<rsub|4>>-equivariant with cubic fibres of radius
  <math|<around|(|L-1|)>/2> centred at <math|\<iota\>*x>. For odd <math|L>,
  <math|<math-up|par><around|(|z+e<rsub|i>|)>=<math-up|par><around|(|z|)>+e<rsub|i>>
  if <math|r<rsub|L><around|(|<math-up|res><space|0.17em>z|)><rsub|i>=<around|(|L-1|)>/2>,
  and equals <math|<math-up|par><around|(|z|)>> otherwise. For all fine sites
  <math|z,z<rprime|'>>,

  <\equation*>
    <around|\||z-\<iota\><math-up|par><space|0.17em>z|\|><rsub|\<ell\><rprime|'>>\<leqslant\>L/2,<space|2em>L*<around|\||<math-up|par><space|0.17em>z-<math-up|par><space|0.17em>z<rprime|'>|\|><rsub|\<ell\>>\<leqslant\><around|\||z-z<rprime|'>|\|><rsub|\<ell\><rprime|'>>+L.
  </equation*>

  <em|Status:> schedule definition, chosen in III.2; consequences theorems.
  <em|Lean:> <hlink|<verbatim|Schedule>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L28-L34>,
  <hlink|<verbatim|mesh_inequality>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L133-L162>,
  <hlink|<verbatim|Ratio.assemble_bijective>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L103-L111>,
  <hlink|<verbatim|Corona.foreshorten>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Spend.lean#L32-L36>.

  <strong|Proposition I.1.4 (cover numbers).> Let
  <math|<math-up|halo><rsub|M><around|(|D|)>=<around|{|y:\<exists\>x\<in\>D,<around|\||x-y|\|><rsub|\<ell\>>\<leqslant\>M|}>>,
  and let <math|<math-up|cov><rsub|M><around|(|X|)>> minimize
  <math|<around|\||D|\|>> subject to <math|X\<subset\><math-up|halo><rsub|M><around|(|D|)>>
  and halo connectivity by steps of sup-distance at most <math|1>; empty sets
  are allowed. For all sets and <math|M\<in\>\<bbb-N\>>, cover numbers are
  monotone and subadditive for intersecting sets,

  <\equation*>
    <around|\||X|\|>\<leqslant\><around|(|2*M+1|)><rsup|4><math-up|cov><rsub|M><around|(|X|)>,<space|2em><around|\||x-y|\|><rsub|\<ell\>>\<leqslant\><around|(|4*M+2|)><math-up|cov><rsub|M><around|(|X|)>+2*M<space|1em><around|(|x,y\<in\>X|)>.
  </equation*>

  A halo is connected exactly when its centres are chained by steps at most
  <math|2*M+1>, and <math|<around|\||<math-up|halo><rsub|M><around|(|D|)>|\|>\<leqslant\><around|(|2*M+1|)><rsup|4><around|\||D|\|>>.
  For <math|b,k,m\<in\>\<bbb-N\>>, <math|b\<geqslant\>1>,
  <math|<math-up|cov><rsub|b><around|(|<math-up|halo><rsub|k*b><around|{|x|}>|)>\<leqslant\><around|(|2*k+1|)><rsup|4>>;
  a scale-<math|m*b> cover <math|D> gives
  <math|<math-up|cov><rsub|b><around|(|X|)>\<leqslant\><around|(|2*m+3|)><rsup|4><around|\||D|\|>>.
  For subdivision ratio <math|L\<geqslant\>1>,
  <math|X\<subset\>\<Lambda\><rsub|\<ell\>*L>>, <math|M,B,s\<in\>\<bbb-N\>>,
  <math|B\<geqslant\>1>, <math|M\<leqslant\>2*B>,

  <\equation*>
    L<math-up|cov><rsub|B><around|(|<math-up|halo><rsub|s*B><around|(|<math-up|par><space|0.17em>X|)>|)>\<leqslant\><around|(|L+10<math-up|cov><rsub|M><around|(|X|)>|)>*<around|(|2*s+13|)><rsup|4>.
  </equation*>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|coverNumber>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L69-L71>,
  <hlink|<verbatim|Corona.collapse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Spend.lean#L73-L105>.

  <strong|Proposition I.1.5 (cost and Haar measure).> <math|G> is compact and
  second countable. Put <math|\<sigma\><around|(|u|)>=1-N<rsup|-1><math-up|Re><space|0.17em><math-up|tr><space|0.17em>u>,
  <math|\<chi\><around|(|u|)>=<around|\<\|\|\>|u-1|\<\|\|\>><rsub|F>/<sqrt|N>>.
  Both are continuous, conjugation- and inversion-invariant, vanish at
  <math|1>, and satisfy <math|\<chi\><rsup|2>=2*\<sigma\>>,
  <math|0\<leqslant\>\<sigma\>,\<chi\>\<leqslant\>2>,
  <math|\<chi\>*<around|(|u*v|)>\<leqslant\>\<chi\><around|(|u|)>+\<chi\><around|(|v|)>>.
  Haar probability <math|\<mu\><rsub|G>> is invariant under inversion and
  both translations. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|chord_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L117-L126>,
  <hlink|<verbatim|probHaar_rightInv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L193-L200>.

  <strong|Proposition I.1.6 (Lie algebra and Casimir).>
  <math|\<frak-g\>=<around|{|X\<in\>M<rsub|N><around|(|\<bbb-C\>|)>:e<rsup|t*X>\<in\>G\<forall\>t\<in\>\<bbb-R\>|}>>
  is a closed real Lie subalgebra of skew-Hermitian matrices, invariant under
  conjugation. Every curve <math|f:\<bbb-R\>\<to\>G> differentiable at
  <math|0> with <math|f<around|(|0|)>=1> has
  <math|f<rprime|'><around|(|0|)>\<in\>\<frak-g\>>. The invariant inner
  product <math|-N<rsup|-1><math-up|tr><around|(|X*Y|)>> identifies
  <math|\<frak-g\>> with colours <math|\<bbb-R\><rsup|d>>, <math|d=dim
  \<frak-g\>>, <math|c\<mapsto\>X<rsub|c>>, with
  <math|<around|\<\|\|\>|X<rsub|c>|\<\|\|\>><rsub|F>=<sqrt|N><around|\||c|\|>>.
  Projection satisfies <math|X<rsub|\<Pi\>*A>=P<rsub|\<frak-g\>>*A>,
  <math|<around|\||\<Pi\>*A|\|>\<leqslant\><around|\<\|\|\>|A|\<\|\|\>><rsub|F>/<sqrt|N>>;
  conjugation induces orthogonal <math|<math-up|Ad>>, and
  <math|<math-up|ad><around|(|x|)>*y> represents
  <math|<around|[|X<rsub|x>,X<rsub|y>|]>>.

  If <math|\<frak-g\>> is nonabelian with no nonzero proper ideals, every
  symmetric real bilinear form satisfying
  <math|B<around|(|<math-up|ad><around|(|x|)>*y,z|)>=-B<around|(|y,<math-up|ad><around|(|x|)>*z|)>>
  for all <math|x,y,z> is a scalar multiple of the inner product. Writing
  <math|C<rsub|\<frak-g\>>=-d<rsup|-1>*<big|sum><rsub|i><math-up|tr><around|(|<math-up|ad><around|(|b<rsub|i>|)><rsup|2>|)>>
  in the orthonormal colour basis, for all colours <math|x,y>,

  <\equation*>
    -<math-up|tr><around|(|<math-up|ad><around|(|x|)><math-up|ad><around|(|y|)>|)>=C<rsub|\<frak-g\>><around|\<langle\>|x,y|\<rangle\>>,<space|2em>C<rsub|\<frak-g\>>\<gtr\>0,<space|2em>\<kappa\>=11*C<rsub|\<frak-g\>>/<around|(|24*\<pi\><rsup|2>|)>\<gtr\>0.
  </equation*>

  <em|Status:> theorems; constants definitions. <em|Lean:>
  <hlink|<verbatim|lie>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L126-L135>,
  <hlink|<verbatim|invariant_scalar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L99-L125>,
  <hlink|<verbatim|trace_adjoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L140-L158>,
  <hlink|<verbatim|casimir_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L160-L172>.

  <strong|Proposition I.1.7 (small balls).> For every
  <math|0\<less\>r\<leqslant\>1>, <math|\<mu\><rsub|G>*<around|{|\<chi\>\<leqslant\>r|}>\<geqslant\><around|(|r/4|)><rsup|2*N<rsup|2>>>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|shell_ge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Size.lean#L80-L130>.

  <strong|Proposition I.1.8 (local group geometry).> There exist open
  neighbourhoods <math|V\<ni\>1>, <math|W\<ni\>0> and
  <math|log<rsub|G>:M<rsub|N><around|(|\<bbb-C\>|)>\<to\>\<bbb-R\><rsup|d>>,
  real-analytic on <math|V>, with <math|log<rsub|G><around|(|1|)>=0>,
  <math|log<rsub|G><around|(|e<rsup|X<rsub|c>>|)>=c> for <math|c\<in\>W> and
  <math|e<rsup|X<rsub|log<rsub|G> u>>=u> for <math|u\<in\>G\<cap\>V>. Every
  matrix <math|X> has a Frobenius-nearest point <math|u\<in\>G>, satisfying
  <math|u<rsup|\<ast\>>*X-1\<in\>\<frak-g\><rsup|\<perp\>>>. Nearest points
  respect left and right translations by <math|G> and are unique in some tube
  about <math|G>; near <math|1> this retraction is analytic with strict
  derivative <math|P<rsub|\<frak-g\>>>. For every
  <math|\<varepsilon\>\<gtr\>0>, some <math|\<delta\>\<gtr\>0> gives

  <\equation*>
    <around|\<\|\|\>|u-v-P<rsub|\<frak-g\>>*<around|(|X-Y|)>|\<\|\|\>><rsub|F>\<leqslant\>\<varepsilon\>*<around|\<\|\|\>|X-Y|\<\|\|\>><rsub|F>
  </equation*>

  whenever <math|<around|\<\|\|\>|X-1|\<\|\|\>><rsub|F>,<around|\<\|\|\>|Y-1|\<\|\|\>><rsub|F>\<less\>\<delta\>>
  and <math|u,v> are nearest to <math|X,Y>. Curvature
  <math|F<around|(|u|)>=\<Pi\>*<around|(|<around|(|u-u<rsup|-1>|)>/2|)>> is
  continuous, odd under inversion, satisfies
  <math|F*<around|(|v*u*v<rsup|-1>|)>=<math-up|Ad><around|(|v|)>*F<around|(|u|)>>,
  <math|F<around|(|1|)>=0>, <math|<around|\||F<around|(|u|)>|\|>\<leqslant\>\<chi\><around|(|u|)>>,
  and has derivative <math|c> along <math|e<rsup|t*X<rsub|c>>> at <math|0>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|plog_right>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Chart.lean#L164-L175>,
  <hlink|<verbatim|nearest_approximate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L172-L181>,
  <hlink|<verbatim|leading_curvature>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Curvature.lean#L78-L96>.

  <strong|Proposition I.1.9 (Wilson law).> For product Haar
  <math|\<mu\><rsub|\<ell\>>> and plaquette holonomies <math|U<rsub|p>>, set

  <\equation*>
    E<rsub|\<ell\>>=<big|sum><rsub|x,i\<less\>j>\<sigma\><around|(|U<rsub|<around|(|x;i\<less\>j|)>>|)>,<space|2em>Z<rsub|\<ell\>><around|(|\<beta\>|)>=<big|int>e<rsup|-\<beta\>*E<rsub|\<ell\>>>*d*\<mu\><rsub|\<ell\>>,<space|2em>d*\<bbb-P\><rsub|\<ell\>,\<beta\>>=Z<rsub|\<ell\>><around|(|\<beta\>|)><rsup|-1>*e<rsup|-\<beta\>*E<rsub|\<ell\>>>*d*\<mu\><rsub|\<ell\>>.
  </equation*>

  For every real <math|\<beta\>>, <math|E<rsub|\<ell\>>> is continuous,
  <math|0\<leqslant\>E<rsub|\<ell\>>\<leqslant\>12*\<ell\><rsup|4>>,
  <math|Z<rsub|\<ell\>><around|(|\<beta\>|)>\<gtr\>0>, and
  <math|\<bbb-P\><rsub|\<ell\>,\<beta\>>> is a probability measure
  integrating continuous or bounded measurable complex functions.
  <em|Status:> definition with theorems. <em|Lean:>
  <hlink|<verbatim|law>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L87>,
  <hlink|<verbatim|partition_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L76-L80>.

  <strong|Proposition I.1.10 (invariance).> For every real <math|\<beta\>>,
  affine lattice map <math|A> and <math|g:\<Lambda\><rsub|\<ell\>>\<to\>G>,
  pullback and gauge transformation preserve <math|\<mu\><rsub|\<ell\>>>,
  <math|E<rsub|\<ell\>>> and <math|\<bbb-P\><rsub|\<ell\>,\<beta\>>>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|law_pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Symmetry.lean#L93-L95>,
  <hlink|<verbatim|law_gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Symmetry.lean#L97-L99>.

  <strong|Proposition I.1.11 (continuum symmetries).>
  <math|B<rsub|4>\<to\>O<around|(|4|)>> respects coordinate actions;
  skew-matrix exponentials lie in <math|O<around|(|4|)>>. With
  <math|x=<around|(|<wide|x|\<vect\>>,x<rsub|t>|)>>, set
  <math|<math-ss|m>=x<rsub|t><rsup|2>-<around|\||<wide|x|\<vect\>>|\|><rsup|2>>,
  <math|<wide|V|\<bar\>><rsub|+>=<around|{|<around|\||<wide|x|\<vect\>>|\|>\<leqslant\>x<rsub|t>|}>>,
  <math|V<rsub|+>=<around|{|<around|\||<wide|x|\<vect\>>|\|>\<less\>x<rsub|t>|}>>.
  The topological group <math|\<cal-L\>=<around|{|g\<in\>G*L<around|(|4,\<bbb-R\>|)>:det
  g=1,<math-ss|m>\<circ\>g=<math-ss|m>,g*<wide|V|\<bar\>><rsub|+>=<wide|V|\<bar\>><rsub|+>|}>>
  preserves Lebesgue measure and <math|V<rsub|+>> and contains time-fixing
  elements of <math|S*O<around|(|4|)>>. For
  <math|R<around|(|<wide|x|\<vect\>>,x<rsub|t>|)>=<around|(|-<wide|x|\<vect\>>,x<rsub|t>|)>>,
  <math|g<rsup|\<vee\>>=R*g*R=<around|(|g<rsup|-1>|)><rsup|T>> satisfies
  <math|<around|\<langle\>|g*x,g<rsup|\<vee\>>*p|\<rangle\>>=<around|\<langle\>|x,p|\<rangle\>>>.
  For every unit spatial vector <math|e>, the boost
  <math|B<rsub|e><around|(|r|)>> is a continuous one-parameter subgroup of
  <math|\<cal-L\>>, with generator <math|<around|(|<wide|x|\<vect\>>,x<rsub|t>|)>\<mapsto\><around|(|x<rsub|t>*e,<wide|x|\<vect\>>\<cdot\>e|)>>.
  The closed cone is self-dual and equals
  <math|<around|{|x:<around|(|g<rsup|\<vee\>>*x|)><rsub|t>\<geqslant\>0\<forall\>g\<in\>\<cal-L\>|}>>.
  For <math|x\<in\>V<rsub|+>> and <math|p\<in\><wide|V|\<bar\>><rsub|+>\<setminus\><around|{|0|}>>,
  <math|<around|\<langle\>|x,p|\<rangle\>>\<gtr\>0>. The Poincaré group
  <math|\<cal-L\>\<ltimes\>\<bbb-R\><rsup|4>>, acting by
  <math|x\<mapsto\>\<Lambda\>*x+b>, preserves Lebesgue measure diagonally on
  every <math|<around|(|\<bbb-R\><rsup|4>|)><rsup|n>>. Distinct-point
  configurations form an open set; pairwise distinct coordinates on every
  axis, or positive pairwise sup-separation, imply distinct points.
  <em|Status:> definitions and theorems. <em|Lean:>
  <hlink|<verbatim|Mink.Proper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Lorentz.lean#L32-L44>,
  <hlink|<verbatim|Lorentz.from_half>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Boost.lean#L135-L158>,
  <hlink|<verbatim|Poincare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Poincare.lean#L32-L34>.

  <strong|Proposition I.1.12 (cover boxes and routes).> For every
  <math|r\<in\>\<bbb-N\>>, <math|B<rsub|r>=<around|{|-r,\<ldots\>,r|}><rsup|4>>
  is <math|B<rsub|4>>-invariant with <math|<around|(|2*r+1|)><rsup|4>>
  points. For cover sites <math|x,y>, axis routes from <math|x> to <math|y>
  end at <math|y>, give the reverse route from <math|y> to <math|x> when axis
  order is reversed, and transform covariantly under affine maps. For
  <math|a\<in\>\<bbb-Z\><rsup|4>> and an axis set <math|J>, slabs
  <math|<around|{|y\<in\>B<rsub|r>:y<rsub|i>=a<rsub|i>*<around|(|i\<nin\>J|)>|}>>
  decompose into pinned layers when an axis <math|i\<nin\>J> is freed; their
  sums decompose accordingly for every function into a commutative additive
  monoid. Pinned layers <math|z,w\<in\><around|{|-r,\<ldots\>,r|}>>
  correspond by translation <math|<around|(|w-z|)>*e<rsub|i>>. For every
  cover configuration and integer <math|d>,
  <math|U<around|(|x;<math-up|straight><rsub|j><around|(|d+1|)>|)>=U<around|(|x;<math-up|straight><rsub|j><around|(|d|)>|)>*U<around|(|x+d*e<rsub|j>,j|)>>,
  where <math|<math-up|straight><rsub|j><around|(|d|)>> has displacement
  <math|d*e<rsub|j>>. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|route_end>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Box.lean#L74-L80>,
  <hlink|<verbatim|slab_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Foliation.lean#L62-L71>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>No inputs from other units.

    <item>Standard results: Haar uniqueness, product measures, matrix
    exponential, analytic inverse function theorem, spectral theorem,
    finite-dimensional volume scaling, Minkowski geometry.

    <item>Local radii depend on <math|G>; the mesh constant depends on the
    schedule.
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  The spacing schedule separates physical periods from mesh sizes; centred
  residues define the metric. Connected covers turn set size into path
  length, allowing coarsening by sparse sampling. Image-link transport
  reduces Wilson invariance to Haar invariance and conjugation/inversion
  invariance of the cost.

  The exponential definition of the Lie algebra supplies tangent directions.
  Normal complements and the inverse function theorem give local coordinates
  and nearest points; simplicity forces invariant symmetric forms to be
  scalar.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item>Centred division gives the metric and subdivision; odd residue
    windows give parent equivariance. <hlink|<verbatim|Ratio.parent_signed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L154-L157>.

    <item>Traverse a fine cover by a path, sample parents every <math|L*B>
    steps, then tile the resulting coarse halo; this proves the coarsening
    bound. <hlink|<verbatim|Corona.collapse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Spend.lean#L73-L105>.

    <item>Walk induction gives transport covariance; gauge factors telescope.
    Reversal and change of starting corner give plaquette inversion and
    conjugation. <hlink|<verbatim|travel_gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L141-L143>,
    <hlink|<verbatim|Face.send_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L128-L143>.

    <item>For the curve of I.1.6, approximate <math|e<rsup|X>> by
    <math|f*<around|(|1/n|)><rsup|n>> to prove the tangent criterion.
    Isolation of normal exponentials gives the local logarithm.
    <hlink|<verbatim|tangent_generates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L98-L111>,
    <hlink|<verbatim|isolates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Chart.lean#L71-L91>.

    <item>Minimize distance and use normality with local coordinates to
    identify nearest points. The symmetric operator associated with an
    invariant form has ideal eigenspaces; simplicity gives the Casimir
    identity. <hlink|<verbatim|nearest_is_focus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L128-L139>,
    <hlink|<verbatim|invariant_scalar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L99-L125>.

    <item>Pack ambient matrix balls for I.1.7; normalize the positive Wilson
    density and use link permutations, inversions and two-sided translations
    for invariance. <hlink|<verbatim|shell_ge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Size.lean#L80-L130>,
    <hlink|<verbatim|law_preserved>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Symmetry.lean#L75-L91>.

    <item>Boosts and Cauchy\USchwarz establish the cone characterizations.
    <hlink|<verbatim|cone_test>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Geometry.lean#L113-L129>,
    <hlink|<verbatim|Lorentz.from_half>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Boost.lean#L135-L158>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Local group geometry must handle disconnected groups. Coarsening is uniform
  in torus size. Real simplicity suffices without irreducibility of the
  defining representation. Reflections shift link base points; even-side lift
  ties prevent unrestricted placement covariance.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|<around|[|y|]><rsub|\<ell\>>>: reduction; <math|r<rsub|\<ell\>>>:
  centred lift; <math|<math-up|par>>: block parent;
  <math|<around|\<\|\|\>|\<cdummy\>|\<\|\|\>><rsub|F>>: Frobenius norm;
  <math|P<rsub|\<frak-g\>>>: real Frobenius orthogonal projection;
  <math|<math-up|ad>>: Lie bracket in colour coordinates. Time is coordinate
  <math|3>.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  Helpers outside the six principal folders remain uncovered. The condition
  <math|M\<leqslant\>2*B> for the consecutive cover scales in III.5 and
  III.10 remains to be traced. Exact bibliographic theorem locations remain
  unchecked.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/I-1.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> none above the threshold.

  <strong|Referenced by:> <hlink|III.10|III-10.tm>, <hlink|III.11|III-11.tm>,
  <hlink|III.4|III-4.tm>, <hlink|VII.2|VII-2.tm>, <hlink|III.7|III-7.tm>,
  <hlink|III.13|III-13.tm>, <hlink|III.12|III-12.tm>, <hlink|III.6|III-6.tm>,
  <hlink|III.2|III-2.tm>, <hlink|II.1|II-1.tm>, <hlink|III.9|III-9.tm>,
  <hlink|III.14|III-14.tm>, <hlink|VI.2|VI-2.tm>, <hlink|III.5|III-5.tm>,
  <hlink|VII.4|VII-4.tm>, <hlink|III.1|III-1.tm>, <hlink|VII.1|VII-1.tm>,
  <hlink|VIII.1|VIII-1.tm>, <hlink|IV.1|IV-1.tm>, <hlink|VI.1|VI-1.tm>,
  <hlink|III.3|III-3.tm>, <hlink|III.15|III-15.tm>, <hlink|V.2|V-2.tm>,
  <hlink|VII.3|VII-3.tm>, <hlink|VII.6|VII-6.tm>, <hlink|III.8|III-8.tm>,
  <hlink|V.1|V-1.tm>, <hlink|V.3|V-3.tm>, <hlink|III.16|III-16.tm>,
  <hlink|II.2|II-2.tm>, <hlink|VII.5|VII-5.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 3,701 attributed lines; 595 line-counted
  declarations; 1,136 assigned declaration names. Of the assigned names, 949
  are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>work package <hlink|<verbatim|YM/Lattice/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice>
    \V 1,215 lines.

    <item>work package <hlink|<verbatim|YM/Gauge/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge>
    \V 1,131 lines.

    <item>work package <hlink|<verbatim|YM/Space/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space>
    \V 430 lines.

    <item>work package <hlink|<verbatim|YM/Corona/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona>
    \V 405 lines.

    <item>work package <hlink|<verbatim|YM/Mink/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink>
    \V 363 lines.

    <item>work package <hlink|<verbatim|YM/Wilson/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson>
    \V 157 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|GaugeGroup.coreSimple>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L12-L17>

    <item><hlink|<verbatim|energy_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L32-L41>

    <item><hlink|<verbatim|law_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L43-L46>

    <item><hlink|<verbatim|Corona.box_size>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L117-L118>

    <item><hlink|<verbatim|Corona.halo_size>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L120-L127>

    <item><hlink|<verbatim|Corona.pays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L129-L131>

    <item><hlink|<verbatim|Corona.lap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L32-L39>

    <item><hlink|<verbatim|Corona.ship_halo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L69-L93>

    <item><hlink|<verbatim|Corona.halo_ship>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L95-L111>

    <item><hlink|<verbatim|Corona.ring_path>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fit.lean#L38-L74>

    <item><hlink|<verbatim|Corona.path_span>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fit.lean#L76-L82>

    <item><hlink|<verbatim|Corona.extent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fit.lean#L84-L95>

    <item><hlink|<verbatim|Corona.cover_mono>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Halo.lean#L10-L12>

    <item><hlink|<verbatim|Corona.tiling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Halo.lean#L115-L125>

    <item><hlink|<verbatim|Corona.meets_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Halo.lean#L14-L30>

    <item><hlink|<verbatim|Corona.tile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Halo.lean#L66-L113>

    <item><hlink|<verbatim|Corona.near>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Spend.lean#L17-L22>

    <item><hlink|<verbatim|Corona.below>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Spend.lean#L24-L30>

    <item><hlink|<verbatim|Corona.fuel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Spend.lean#L38-L70>

    <item><hlink|<verbatim|YM.Extra.Iteration.Shapes.raw>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Geometry.lean#L75-L76>

    <item><hlink|<verbatim|minusKilling_sq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L128-L137>

    <item><hlink|<verbatim|slopeConstant_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176>

    <item><hlink|<verbatim|Simple.ideals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L30-L50>

    <item><hlink|<verbatim|ad_jacobi>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L56-L62>

    <item><hlink|<verbatim|ad_skew>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L64-L70>

    <item><hlink|<verbatim|minusKilling_invariant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L91-L96>

    <item><hlink|<verbatim|splitNormal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Chart.lean#L106>

    <item><hlink|<verbatim|splitDeriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Chart.lean#L124-L133>

    <item><hlink|<verbatim|plog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Chart.lean#L138>

    <item><hlink|<verbatim|plog_diff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Chart.lean#L152-L155>

    <item><hlink|<verbatim|plog_left>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Chart.lean#L157-L162>

    <item><hlink|<verbatim|direction_in_lie>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Chart.lean#L40-L69>

    <item><hlink|<verbatim|project_colorMat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L106-L107>

    <item><hlink|<verbatim|project_norm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L109-L111>

    <item><hlink|<verbatim|adjoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L114-L117>

    <item><hlink|<verbatim|adjoint_mul>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L126-L128>

    <item><hlink|<verbatim|norm_adjoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L130-L134>

    <item><hlink|<verbatim|ad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L136-L150>

    <item><hlink|<verbatim|colorMat_ad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L152-L154>

    <item><hlink|<verbatim|lieExp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L160>

    <item><hlink|<verbatim|lieExp_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L165-L170>

    <item><hlink|<verbatim|curvature>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L173>

    <item><hlink|<verbatim|curvature_inv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L175-L177>

    <item><hlink|<verbatim|casimir>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182>

    <item><hlink|<verbatim|slopeConstant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184>

    <item><hlink|<verbatim|Color>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L43>

    <item><hlink|<verbatim|colorIso>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L52-L54>

    <item><hlink|<verbatim|inner_frob_color>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L56-L62>

    <item><hlink|<verbatim|colorMat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L64>

    <item><hlink|<verbatim|trace_color>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L71-L75>

    <item><hlink|<verbatim|trace_color_real>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L77-L86>

    <item><hlink|<verbatim|colorMat_norm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L91-L94>

    <item><hlink|<verbatim|projectColor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L96-L97>

    <item><hlink|<verbatim|colorMat_project>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L99-L101>

    <item><hlink|<verbatim|project_conjugate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Curvature.lean#L35-L47>

    <item><hlink|<verbatim|curvature_conjugate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Curvature.lean#L55-L60>

    <item><hlink|<verbatim|curvature_norm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Curvature.lean#L62-L75>

    <item><hlink|<verbatim|generates_add>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L114-L124>

    <item><hlink|<verbatim|closed_lie>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L141>

    <item><hlink|<verbatim|conjugate_mem>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L151-L157>

    <item><hlink|<verbatim|bracket_mem>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L159-L176>

    <item><hlink|<verbatim|Simple>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L179-L182>

    <item><hlink|<verbatim|tangent_skew>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L31-L40>

    <item><hlink|<verbatim|generates_skew>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L42-L44>

    <item><hlink|<verbatim|frob_pow_difference>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L47-L59>

    <item><hlink|<verbatim|tangent_approx>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L61-L96>

    <item><hlink|<verbatim|price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L112>

    <item><hlink|<verbatim|chord>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L115>

    <item><hlink|<verbatim|chord_le_two>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L134-L139>

    <item><hlink|<verbatim|price_range>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L141-L144>

    <item><hlink|<verbatim|chord_triangle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L146-L155>

    <item><hlink|<verbatim|price_inv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L157-L158>

    <item><hlink|<verbatim|price_conj>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L160-L164>

    <item><hlink|<verbatim|chord_inv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L166-L167>

    <item><hlink|<verbatim|chord_conj>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L169-L170>

    <item><hlink|<verbatim|probHaar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L187>

    <item><hlink|<verbatim|probHaar_invInv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L202-L207>

    <item><hlink|<verbatim|preserve_inv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L209-L210>

    <item><hlink|<verbatim|preserve_two_sided>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L212-L214>

    <item><hlink|<verbatim|frob_sq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L34-L43>

    <item><hlink|<verbatim|mul_frob_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L45-L48>

    <item><hlink|<verbatim|unitary_frob>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L55-L59>

    <item><hlink|<verbatim|compactGaugeU>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L61-L67>

    <item><hlink|<verbatim|El>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L78>

    <item><hlink|<verbatim|mat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L94>

    <item><hlink|<verbatim|nearest_tube>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L141-L153>

    <item><hlink|<verbatim|focus_deriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L155-L170>

    <item><hlink|<verbatim|Nearest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L26>

    <item><hlink|<verbatim|nearest_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L28-L31>

    <item><hlink|<verbatim|nearest_left>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L33-L36>

    <item><hlink|<verbatim|nearest_right>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L38-L41>

    <item><hlink|<verbatim|nearest_normal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L65-L68>

    <item><hlink|<verbatim|tubular>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L70>

    <item><hlink|<verbatim|tubularDeriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L78-L86>

    <item><hlink|<verbatim|focus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L91>

    <item><hlink|<verbatim|focus_diff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L95-L98>

    <item><hlink|<verbatim|shell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Size.lean#L28>

    <item><hlink|<verbatim|box>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Box.lean#L13>

    <item><hlink|<verbatim|box_covariant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Box.lean#L20-L31>

    <item><hlink|<verbatim|route>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Box.lean#L44>

    <item><hlink|<verbatim|Ratio.half_box>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Crossing.lean#L19-L25>

    <item><hlink|<verbatim|Ratio.half_lift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Crossing.lean#L27-L31>

    <item><hlink|<verbatim|Ratio.embed_parent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Crossing.lean#L33-L36>

    <item><hlink|<verbatim|Ratio.parents_hop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Crossing.lean#L54-L84>

    <item><hlink|<verbatim|Ratio.internal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Crossing.lean#L86-L95>

    <item><hlink|<verbatim|Face.lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L112-L113>

    <item><hlink|<verbatim|Face.send>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L115-L116>

    <item><hlink|<verbatim|Face.injective_send>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L119-L126>

    <item><hlink|<verbatim|Face>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L14>

    <item><hlink|<verbatim|faceValue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L47>

    <item><hlink|<verbatim|face_gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L49-L51>

    <item><hlink|<verbatim|oriented_swap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L62-L66>

    <item><hlink|<verbatim|oriented_next>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L69-L73>

    <item><hlink|<verbatim|price_flip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L80-L85>

    <item><hlink|<verbatim|price_shift_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L91-L107>

    <item><hlink|<verbatim|slab>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Foliation.lean#L18-L19>

    <item><hlink|<verbatim|slab_update_image>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Foliation.lean#L52-L60>

    <item><hlink|<verbatim|carry_succ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Foliation.lean#L91-L106>

    <item><hlink|<verbatim|travel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L105-L107>

    <item><hlink|<verbatim|gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L132-L133>

    <item><hlink|<verbatim|GaugeInvariant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L135>

    <item><hlink|<verbatim|Step.gauge_read>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L137-L139>

    <item><hlink|<verbatim|affine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L145>

    <item><hlink|<verbatim|pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L147-L148>

    <item><hlink|<verbatim|Step.pull_read>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L150-L158>

    <item><hlink|<verbatim|pull_id>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L169-L171>

    <item><hlink|<verbatim|pull_pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L173-L179>

    <item><hlink|<verbatim|translate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L182>

    <item><hlink|<verbatim|pull_one>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L184-L186>

    <item><hlink|<verbatim|Agrees>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L192-L193>

    <item><hlink|<verbatim|LocalOn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L196-L197>

    <item><hlink|<verbatim|travel_local>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L200-L220>

    <item><hlink|<verbatim|Links>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L21>

    <item><hlink|<verbatim|expandAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L224-L225>

    <item><hlink|<verbatim|Step>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L23-L26>

    <item><hlink|<verbatim|travel_at>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L240-L247>

    <item><hlink|<verbatim|expandAt_gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L249-L251>

    <item><hlink|<verbatim|LocalOn.expandAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L253-L261>

    <item><hlink|<verbatim|Walk>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L27>

    <item><hlink|<verbatim|Step.rotate_mul>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L47-L50>

    <item><hlink|<verbatim|back_route>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Route.lean#L36-L37>

    <item><hlink|<verbatim|send_route>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Route.lean#L55-L61>

    <item><hlink|<verbatim|a_step>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L103-L104>

    <item><hlink|<verbatim|shrinks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L108-L109>

    <item><hlink|<verbatim|strictAnti>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L111-L113>

    <item><hlink|<verbatim|scale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L115>

    <item><hlink|<verbatim|divergent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L117-L120>

    <item><hlink|<verbatim|scale_succ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L124-L127>

    <item><hlink|<verbatim|Gentle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L129-L130>

    <item><hlink|<verbatim|place>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L167>

    <item><hlink|<verbatim|span_side>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L169-L171>

    <item><hlink|<verbatim|places_period>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L173-L182>

    <item><hlink|<verbatim|embeds_scale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L184-L189>

    <item><hlink|<verbatim|embeds_place>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L191-L198>

    <item><hlink|<verbatim|denominator>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L39-L41>

    <item><hlink|<verbatim|den_strict>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L60-L65>

    <item><hlink|<verbatim|side>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L67>

    <item><hlink|<verbatim|side_four>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L76>

    <item><hlink|<verbatim|toDepth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L83-L90>

    <item><hlink|<verbatim|toDepth_odd>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L92-L97>

    <item><hlink|<verbatim|a>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L99>

    <item><hlink|<verbatim|pdist_invariant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L107-L115>

    <item><hlink|<verbatim|separation_translate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L117-L118>

    <item><hlink|<verbatim|separation_signed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L119-L121>

    <item><hlink|<verbatim|Side>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L17>

    <item><hlink|<verbatim|Cover>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L20>

    <item><hlink|<verbatim|site_card>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L32-L33>

    <item><hlink|<verbatim|wrap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L35-L38>

    <item><hlink|<verbatim|lift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L51>

    <item><hlink|<verbatim|wrap_injOn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L70-L75>

    <item><hlink|<verbatim|pdist>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L78>

    <item><hlink|<verbatim|separation_comm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L93-L94>

    <item><hlink|<verbatim|pdist_triangle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L96-L101>

    <item><hlink|<verbatim|Ratio.parent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L117>

    <item><hlink|<verbatim|Ratio.unpack_at>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L128-L130>

    <item><hlink|<verbatim|Ratio.lift_signed_of_odd>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L138-L148>

    <item><hlink|<verbatim|Ratio.assemble_signed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L150-L152>

    <item><hlink|<verbatim|Ratio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L22-L24>

    <item><hlink|<verbatim|Ratio.embed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L29>

    <item><hlink|<verbatim|Ratio.lift_embed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L31-L42>

    <item><hlink|<verbatim|Ratio.embed_injective>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L44-L52>

    <item><hlink|<verbatim|Ratio.root>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L67-L75>

    <item><hlink|<verbatim|Ratio.signed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L78-L81>

    <item><hlink|<verbatim|Ratio.residue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L85-L88>

    <item><hlink|<verbatim|Ratio.residue_embed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L93-L95>

    <item><hlink|<verbatim|halo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L43-L44>

    <item><hlink|<verbatim|covers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L52-L55>

    <item><hlink|<verbatim|Ray.generator>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Boost.lean#L114-L117>

    <item><hlink|<verbatim|Ray.adds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Boost.lean#L48-L52>

    <item><hlink|<verbatim|Ray.positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Boost.lean#L67-L84>

    <item><hlink|<verbatim|Ray.staysM>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Boost.lean#L86-L90>

    <item><hlink|<verbatim|Ray.boost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Boost.lean#L92-L101>

    <item><hlink|<verbatim|strict_pair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Geometry.lean#L131-L141>

    <item><hlink|<verbatim|m>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Geometry.lean#L77>

    <item><hlink|<verbatim|cone>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Geometry.lean#L78>

    <item><hlink|<verbatim|inside>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Geometry.lean#L79>

    <item><hlink|<verbatim|Lorentz.dual_sent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Lorentz.lean#L120-L122>

    <item><hlink|<verbatim|Lorentz.dual_adjoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Lorentz.lean#L132-L135>

    <item><hlink|<verbatim|Mink.Lorentz>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Lorentz.lean#L46>

    <item><hlink|<verbatim|Lorentz.stays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Lorentz.lean#L54-L60>

    <item><hlink|<verbatim|Lorentz.preserves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Lorentz.lean#L75-L78>

    <item><hlink|<verbatim|Lorentz.dual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Lorentz.lean#L95-L103>

    <item><hlink|<verbatim|Poincare.preserving>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Poincare.lean#L101-L102>

    <item><hlink|<verbatim|Poincare.together>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Poincare.lean#L117-L121>

    <item><hlink|<verbatim|Lorentz.room>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Poincare.lean#L18-L29>

    <item><hlink|<verbatim|Poincare.by_placement>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Mink/Poincare.lean#L44-L47>

    <item><hlink|<verbatim|YM.Next.Scheduling.Buy.footage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Support.lean#L39-L65>

    <item><hlink|<verbatim|b0_normalizes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L14>

    <item><hlink|<verbatim|zeroUp_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L15-L30>

    <item><hlink|<verbatim|YM.Push.Corrected.Tests.Offer.stamp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/CORRECTED_COLUMNS/Program.lean#L179-L209>

    <item><hlink|<verbatim|YM.SectorNext.Vacuum.shell_pZ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Noise.lean#L53-L73>

    <item><hlink|<verbatim|Points.volume_product>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L153-L180>

    <item><hlink|<verbatim|E4>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L24>

    <item><hlink|<verbatim|time>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L27>

    <item><hlink|<verbatim|spatial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L28>

    <item><hlink|<verbatim|cubedist>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L51>

    <item><hlink|<verbatim|Points>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L56>

    <item><hlink|<verbatim|conf>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L63>

    <item><hlink|<verbatim|generic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L66>

    <item><hlink|<verbatim|spaced>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L70>

    <item><hlink|<verbatim|generic_conf>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L72-L74>

    <item><hlink|<verbatim|spaced_conf>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L76-L81>

    <item><hlink|<verbatim|conf_open>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L83-L90>

    <item><hlink|<verbatim|Signed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Index.lean#L23-L26>

    <item><hlink|its group law|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Index.lean#L47-L51>

    <item><hlink|<verbatim|Signed.act>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Index.lean#L62-L63>

    <item><hlink|<verbatim|Signed.ortho_move>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L108-L115>

    <item><hlink|<verbatim|Signed.inclusionO>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L117-L120>

    <item><hlink|<verbatim|Signed.mirrored>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L124-L126>

    <item><hlink|<verbatim|Ortho.skewSpace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L132-L142>

    <item><hlink|<verbatim|Ortho.oneParameter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L146-L148>

    <item><hlink|<verbatim|Ortho.plane>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L152-L154>

    <item><hlink|<verbatim|Ortho>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L20>

    <item><hlink|<verbatim|Signed.ortho>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L93-L106>

    <item><hlink|<verbatim|YM.RG.space>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Shelter.lean#L39-L45>

    <item><hlink|<verbatim|continuous_integrable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L101-L103>

    <item><hlink|<verbatim|bounded_integrable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L105-L107>

    <item><hlink|<verbatim|moment_formula>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L110-L121>

    <item><hlink|<verbatim|energy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L29>

    <item><hlink|<verbatim|energy_nonneg>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L31-L32>

    <item><hlink|<verbatim|energy_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L42-L43>

    <item><hlink|<verbatim|energy_pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L45-L50>

    <item><hlink|<verbatim|energy_gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L52-L53>

    <item><hlink|<verbatim|prior>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L55>

    <item><hlink|<verbatim|bare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L58>

    <item><hlink|<verbatim|bare_integrable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L71-L72>

    <item><hlink|<verbatim|partition>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L74>

    <item><hlink|<verbatim|moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L99>

    <item><hlink|<verbatim|law_translate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Symmetry.lean#L101-L104>

    <item><hlink|<verbatim|moment_pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Symmetry.lean#L106-L113>

    <item><hlink|<verbatim|sendEdge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Symmetry.lean#L25-L26>

    <item><hlink|<verbatim|sendEdge_injective>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Symmetry.lean#L28-L37>

    <item><hlink|<verbatim|prior_pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Symmetry.lean#L45-L67>

    <item><hlink|<verbatim|prior_gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Symmetry.lean#L69-L72>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-i-1-1>

  <\itemize-minus>
    <item><strong|K-I.1.1> <hlink|<verbatim|Site>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L19>
    <em|(numbered result)> \V The set of sites of the discrete periodic torus
    of side n.
  </itemize-minus>

  <label|k-i-1-2>

  <\itemize-minus>
    <item><strong|K-I.1.2> <hlink|<verbatim|separation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L81>
    <em|(numbered result)> \V The max-distance between two torus sites
    computed via canonical lifts to the cover.
  </itemize-minus>

  <label|k-i-1-3>

  <\itemize-minus>
    <item><strong|K-I.1.3> <hlink|<verbatim|Gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L23-L26>
    <em|(numbered result)> \V A closed compact matrix group together with a
    fixed faithful unitary representation.
  </itemize-minus>

  <label|k-i-1-4>

  <\itemize-minus>
    <item><strong|K-I.1.4> <hlink|<verbatim|invariant_scalar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L99-L125>
    \V On a simple compact Lie algebra, every symmetric ad-invariant bilinear
    form is a scalar multiple of the Killing/inner product.
  </itemize-minus>

  <label|k-i-1-5>

  <\itemize-minus>
    <item><strong|K-I.1.5> <hlink|<verbatim|shell_ge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Size.lean#L80-L130>
    <em|(numbered result)> \V The Haar measure of a shell of radius r in a
    compact group is at least (r/4) to the dimension of the Lie algebra.
  </itemize-minus>

  <label|k-i-1-6>

  <\itemize-minus>
    <item><strong|K-I.1.6> <hlink|<verbatim|Config>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L24>
    <em|(numbered result)> \V The space of lattice gauge configurations for a
    gauge group on a torus of side n.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav||<hlink|Part I|../units.tm#part-i-setting><ym-nav-sep><hlink|Detailed
  notes|../notes/I-1.tm>|<hlink|II.1 Field labels and their lattice
  representatives \<rightarrow\>|II-1.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|I.1. Lattice, symmetries, gauge groups and the
    Wilson measure \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|1>>
    <associate|2-what-it-uses|<tuple|2|4>>
    <associate|3-strategy|<tuple|3|4>>
    <associate|4-steps|<tuple|4|5>>
    <associate|5-where-the-difficulty-lies|<tuple|5|5>>
    <associate|6-notation|<tuple|6|5>>
    <associate|7-what-remains-unexplained|<tuple|7|5>>
    <associate|additional-source-locations|<tuple|9.1|6>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|9.1|6>>
    <associate|auto-11|<tuple|10|15>>
    <associate|auto-2|<tuple|2|4>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|4|5>>
    <associate|auto-5|<tuple|5|5>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|8|6>>
    <associate|auto-9|<tuple|9|6>>
    <associate|code-dependencies|<tuple|8|6>>
    <associate|i1-lattice-symmetries-gauge-groups-and-the-wilson-measure|<tuple|?|1>>
    <associate|k-i-1-1|<tuple|10|15>>
    <associate|k-i-1-2|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-i-1-3|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-i-1-4|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-i-1-5|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-i-1-6|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|key-statements|<tuple|10|15>>
    <associate|lean-source|<tuple|9|6>>
    <associate|unit-difficulty|<tuple|7|5>>
    <associate|unit-inputs|<tuple|1|4>>
    <associate|unit-limitations|<tuple|6|5>>
    <associate|unit-notation|<tuple|5|5>>
    <associate|unit-results|<tuple|?|1>>
    <associate|unit-steps|<tuple|3|4>>
    <associate|unit-strategy|<tuple|<with|mode|<quote|math>|<rigid|->>|4>>
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

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Where the difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      What remains unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Code
      dependencies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Lean
      source> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Additional source locations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Key
      statements> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
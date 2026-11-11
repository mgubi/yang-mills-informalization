<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> II.2 Marker algebra, polymer
  combinatorics and Gaussian estimates (notes)|II-2.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-1.tm>|<hlink|III.2 Choosing the constants: the order
  of choice and the RG schedule (notes) \<rightarrow\>|III-2.tm>>

  <ym-title|III.1. The block-spin step and the symmetric gauge fixing \V
  detailed notes><label|iii1-the-block-spin-step-and-the-symmetric-gauge-fixing--detailed-notes>

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

    <with|par-left|1tab|4.1 The kernel and its normalization
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 Covariance <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 Axial gauges and the branch constants
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 Synchronization and the
    <with|mode|math|L<rsup|-2>> estimate <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 Near the trivial configuration
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.6 Tree gauge <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|4.7 Formats and energy accounting
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Where the
    difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Notation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. What remains
    unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14><vspace|0.5fn>
  </table-of-contents>

  <\quotation>
    The full account of unit III.1: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/III-1.tm>.
  </quotation>

  <hlink|Unit page|../units/III-1.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> III, Ultraviolet construction (renormalization group).
  <strong|Lean:> <hlink|<verbatim|YM/RG/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG>
  (Block, Patch, Measurable, Push, Masks, Activities, PathActions, Bounded,
  History), <hlink|<verbatim|YM/Branch/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch>,
  <hlink|<verbatim|YM/Pressure/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure>,
  <hlink|<verbatim|YM/PREC/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC>,
  <hlink|<verbatim|YM/PCalc/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc>,
  <hlink|<verbatim|YM/Tree/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree>,
  <hlink|<verbatim|YM/Exterior/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Exterior>,
  and the small packages <verbatim|YM/RG17/>,
  <verbatim|YM/Push/CORRECTED_COLUMNS/>, <verbatim|YM/Planned/CALIBRATED_MIXED_HISTORY/>,
  <verbatim|YM/UVNext/ANNULUS_COMPARISON/>, <verbatim|YM/FullVolume/Train/>,
  <verbatim|YM/SectorTools/ACTUAL_SCALAR_LEDGER/>. <strong|Size:> 4,219 lines
  (693 declarations) in the main-theorem closure.

  <strong|Conventions.> <math|N\<geqslant\>1> and
  <math|G\<subset\>U<around|(|N|)>> is a closed subgroup with probability
  Haar measure <math|d*g>. Its Lie algebra
  <math|\<frak-g\>\<subset\>M<rsub|N><around|(|\<bbb-C\>|)>> carries the real
  inner product <math|<text|Re tr><around|(|X<rsup|\<dagger\>>*Y|)>>, and
  <math|\<Pi\><rsub|\<frak-g\>>> denotes the orthogonal projection onto
  <math|\<frak-g\>>. Matrix norms below are Frobenius norms. In path actions,
  Lie-algebra fields, Hessians and the six works, the physical inner product
  is <math|N<rsup|-1><text|Re tr><around|(|X<rsup|\<dagger\>>*Y|)>>; write
  <math|<around|\||X|\|>=<around|\<\|\|\>|X|\<\|\|\>>/<sqrt|N>> for its norm.
  This is the coordinate normalization of
  <hlink|<verbatim|Gauge.inner_frob_color>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L56-L62>.
  The curvature field is <math|<math-up|curv><around|(|u|)>=\<Pi\><rsub|\<frak-g\>>*<around|(|u-u<rsup|-1>|)>/2>,
  with <math|<around|\||<math-up|curv><around|(|u|)>|\|>\<leqslant\><math-up|ch><around|(|u|)>>.
  The <em|chord> is <math|<math-up|ch><around|(|u|)>=<around|\<\|\|\>|u-1|\<\|\|\>>/<sqrt|N>>
  and the <em|price> is <math|<math-up|pr><around|(|u|)>=1-<text|Re
  tr><space|0.17em>u/N>. They satisfy <math|<math-up|ch><rsup|2>=2<space|0.17em><math-up|pr>>,
  both are class functions, <math|<math-up|ch><around|(|u<rsup|-1>|)>=<math-up|ch><around|(|u|)>\<leqslant\>2>,
  <math|<math-up|ch><around|(|u*v|)>\<leqslant\><math-up|ch><around|(|u|)>+<math-up|ch><around|(|v|)>>,
  and <math|<around|\<\|\|\>|u-v|\<\|\|\>><rsup|2>=2*N<space|0.17em><math-up|pr><around|(|u*v<rsup|-1>|)>>.
  The Wilson energy is <math|<big|sum><rsub|p><math-up|pr><around|(|U<rsub|p>|)>>.

  A step goes from the fine torus <math|\<Lambda\><rsub|f>=<around|(|\<bbb-Z\>/f|)><rsup|4>>
  to the coarse torus <math|\<Lambda\><rsub|c>=<around|(|\<bbb-Z\>/c|)><rsup|4>>,
  with <math|c\<geqslant\>1>, <math|f=c*L> and <math|L\<geqslant\>3> odd. The
  coarse site <math|x> has root <math|L*x> and block
  <math|L*x+B<rsub|<around|(|L-1|)>/2>>, where
  <math|B<rsub|r>=<around|{|-r,\<ldots\>,r|}><rsup|4>\<subset\>\<bbb-Z\><rsup|4>>.
  Configurations are <math|U\<in\>G<rsup|<math-up|links>>>, and
  <math|\<mu\><rsub|f>> is the product of the probability Haar measures. The
  gauge action is <math|<around|(|k\<cdot\>U|)><rsub|<around|(|y,i|)>>=k<rsub|y>*U<rsub|<around|(|y,i|)>>*k<rsub|y+e<rsub|i>><rsup|-1>>.
  <math|T<rsub|U><around|(|y;w|)>> is the parallel transport along a walk
  <math|w>. <math|T<rsub|U><around|(|y\<to\>z;o|)>> is the transport along
  the coordinate route that changes the coordinates in the order given by
  <math|o\<in\>S<rsub|4>>. For a coarse site <math|x>,
  <math|U<rsup|<around|(|x|)>>> is the periodic lift of <math|U> to
  <math|\<bbb-Z\><rsup|4>>, translated so that <math|L*x> sits at the origin.
  All patch constructions take place on <math|\<bbb-Z\><rsup|4>>, so a patch
  may be larger than the torus. For finite
  <math|X\<subset\>\<bbb-Z\><rsup|4>>, <math|E<rsub|X><around|(|U|)>> is the
  sum of the chords of the links with both ends in <math|X>, and
  <math|F<rsub|X><around|(|U|)>> is the sum of the chords of the plaquettes
  with all four corners in <math|X>; <math|F<rsub|X>> is gauge invariant.
  <math|\<frak-B\><rsub|4>> is the group of signed permutations of the axes
  (384 elements). For <math|s\<in\>\<frak-B\><rsub|4>> and a point <math|b>,
  <math|s<rsub|b>*U> is the pullback of <math|U> under
  <math|z\<mapsto\>b+s<around|(|z|)>>; a link reversed by <math|s> carries
  the inverse variable. Further, <math|\<kappa\><rsub|<math-up|slope>>=11*C<rsub|A>/<around|(|24*\<pi\><rsup|2>|)>>,
  where <math|C<rsub|A>> is the adjoint Casimir, and
  <math|<math-up|temp><around|(|x|)>=x<rsup|-1/2>*e<rsup|<around|(|log log
  x|)><rsup|2>>> for <math|x\<gtr\>1>.

  <strong|Definition (the block kernel).> A <em|patch> is
  <math|P=<around|(|L,J|)>> with <math|L\<geqslant\>3> odd and
  <math|J\<geqslant\>4>. Its radius is <math|R=<around|(|J+3|)>*L> and its
  points are those of <math|B<rsub|R>>, with centre <math|0>. The <em|kernel
  constants> are <math|K=<around|(|\<kappa\>,\<delta\>,\<varepsilon\>,a|)>>,
  all positive: penalty, frame cutoff, predictor cutoff, axial factor. For a
  configuration <math|W> on <math|\<bbb-Z\><rsup|4>> the following objects
  are defined.

  <\enumerate>
    <item><em|Frame tags and axial frames.> A frame tag is
    <math|t=<around|(|r,o|)>\<in\>B<rsub|R>\<times\>S<rsub|4>>. The axial
    frame of <math|t> is <math|a<rsup|t><rsub|y>=T<rsub|W><around|(|r\<to\>y;o|)>>.

    <item><em|Minimizing branch.> <math|W\<in\>M<rsub|\<delta\>>> if
    <math|<math-up|ch><around*|(|a<rsup|<around|(|0,o|)>><rsub|y>*<space|0.17em>T<rsub|W><around|(|y\<to\>z;o<rprime|'>|)><space|0.17em><around|(|a<rsup|<around|(|0,o|)>><rsub|z>|)><rsup|-1>|)>\<less\>\<delta\>>
    for all <math|o,o<rprime|'>\<in\>S<rsub|4>> and
    <math|y,z\<in\>B<rsub|R>>. In words: in each of the 24 axial gauges from
    the centre, every route transport in the patch is <math|\<delta\>>-close
    to <math|1>.

    <item><em|Score.> For <math|h:B<rsub|R>\<to\>G>,
    <math|S<rsub|W><around|(|h|)>=<math-up|avg><rsub|y,z\<in\>B<rsub|R>><math-up|avg><rsub|o\<in\>S<rsub|4>><space|0.17em><math-up|pr><around*|(|h<rsub|y>*T<rsub|W><around|(|y\<to\>z;o|)>*h<rsub|z><rsup|-1>|)>>.

    <item><em|Eligible tags.> <math|\<cal-E\><around|(|W|)>=<around|{|t:E<rsub|B<rsub|R>>*<around|(|a<rsup|t>\<cdot\>W|)>\<leqslant\>a*<around|(|2*R+1|)>*F<rsub|B<rsub|R>><around|(|W|)>|}>>.

    <item><em|Frame and tag mass.> If <math|W\<in\>M<rsub|\<delta\>>>, the
    frame <math|h<rsup|W>> is a minimizer of <math|S<rsub|W>> subject to
    <math|h<rsub|0>=1>, and the tag mass is uniform,
    <math|1/<around|(|24<around|\||B<rsub|R>|\|>|)>>. Otherwise
    <math|h<rsup|W,t><rsub|y>=<around|(|a<rsup|t><rsub|0>|)><rsup|-1>*a<rsup|t><rsub|y>>
    (the axial gauge from <math|r>, normalized at the centre), with mass
    <math|\<b-1\><rsub|\<cal-E\><around|(|W|)>><around|(|t|)>/<around|\||\<cal-E\><around|(|W|)>|\|>>.

    <item><em|Weight.> <math|w> is the law on <math|B<rsub|R>> of
    <math|\<xi\><rsub|1>+\<ldots\>+\<xi\><rsub|J>>, where the
    <math|\<xi\><rsub|k>> are i.i.d. uniform on
    <math|B<rsub|<around|(|L-1|)>/2>>. It is the <math|J>-fold convolution of
    the uniform weight on a centred block; it is
    <math|\<frak-B\><rsub|4>>-invariant and supported in
    <math|B<rsub|J*<around|(|L-1|)>/2>>.

    <item><em|Connector.> For a coarse link <math|b=<around|(|x,i|)>> and
    frame tags <math|<around|(|t<rsub|x>|)><rsub|x\<in\>\<Lambda\><rsub|c>>>,
    set <math|Y<rsub|y>=h<rsup|<around|(|x|)>><rsub|y>*<space|0.17em>T<rsub|U<rsup|<around|(|x|)>>><around|(|y;L<text|
    steps along >e<rsub|i>|)><space|0.17em><around|(|h<rsup|<around|(|x+e<rsub|i>|)>><rsub|y>|)><rsup|-1>>
    for <math|y\<in\>B<rsub|R>>. Here <math|h<rsup|<around|(|x|)>>> is the
    frame of <math|U<rsup|<around|(|x|)>>> with tag <math|t<rsub|x>>. This is
    the fine transport from <math|L*x+y> to
    <math|L*<around|(|x+e<rsub|i>|)>+y>, written in the frames of the two
    patches.

    <item><em|Prediction.> Let <math|\<Phi\><rsub|Y><around|(|u|)>=<big|sum><rsub|y>w<rsub|y><space|0.17em><math-up|pr><around|(|Y<rsub|y>*u<rsup|-1>|)>>.
    If <math|min \<Phi\><rsub|Y>\<less\>\<varepsilon\>>, then
    <math|Q<rsub|b>> is a chosen minimizer, equivalently a nearest point of
    <math|G> to the matrix mean <math|<big|sum><rsub|y>w<rsub|y>*Y<rsub|y>>
    (an extrinsic, chordal mean); the bond tag then has uniform mass
    <math|1/<around|\||B<rsub|R>|\|>>. Otherwise
    <math|Q<rsub|b>=Y<rsub|r<rsub|b>>>, with the bond tag <math|r<rsub|b>>
    drawn with probability <math|w<rsub|r<rsub|b>>>.

    <item><em|Kernel.> The tag law is <math|\<lambda\><around|(|U,t|)>=<big|prod><rsub|x>m<rsup|<math-up|fr>><around|(|U<rsup|<around|(|x|)>>,t<rsub|x>|)>*<big|prod><rsub|b>m<rsup|<math-up|pr>><around|(|Y<rsub|b>,r<rsub|b>|)>>,
    and
  </enumerate>

  <\equation*>
    \<rho\><rsub|\<beta\>><around|(|U,V|)>=<big|sum><rsub|t>\<lambda\><around|(|U,t|)>*<big|prod><rsub|b>Z<rsub|\<beta\>><rsup|-1>*e<rsup|-\<beta\>*\<kappa\><space|0.17em><math-up|pr><around|(|V<rsub|b>*Q<rsub|b><around|(|U,t|)><rsup|-1>|)>>,<space|2em>Z<rsub|\<beta\>>=<big|int><rsub|G>e<rsup|-\<beta\>*\<kappa\><space|0.17em><math-up|pr><around|(|g|)>>*<space|0.17em>d*g.
  </equation*>

  The <em|branch conditions> for <math|<around|(|P,K,G|)>> are:

  <\itemize-minus>
    <item>(B1) for <math|W\<in\>M<rsub|\<delta\>>> the constrained minimizer
    in item 5 is unique;

    <item>(B2) whenever <math|min \<Phi\><rsub|Y>\<less\>\<varepsilon\>>, the
    minimizer of <math|\<Phi\><rsub|Y>> is unique;

    <item>(B3) <math|\<cal-E\><around|(|W|)>\<ne\>\<emptyset\>> for every
    <math|W>.
  </itemize-minus>

  Compactness gives the chosen minimizers; (B1)\U(B2) make the choices unique
  on the minimizing branches. Lean: <hlink|<verbatim|Patch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L29-L34>,
  <hlink|<verbatim|KernelChoices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L37-L45>,
  <hlink|<verbatim|usesMin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L109-L110>,
  <hlink|<verbatim|score>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L114-L115>,
  <hlink|<verbatim|eligible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L143-L146>,
  <hlink|<verbatim|frameMass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L148-L151>,
  <hlink|<verbatim|frame>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L153-L155>,
  <hlink|<verbatim|weight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L87-L88>,
  <hlink|<verbatim|bondCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L159>,
  <hlink|<verbatim|predict>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L173-L175>,
  <hlink|<verbatim|predictorMass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L177-L179>,
  <hlink|<verbatim|Branches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185>,
  <hlink|<verbatim|StepData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L22-L25>,
  <hlink|<verbatim|connector>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L39-L42>,
  <hlink|<verbatim|prediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L44-L45>,
  <hlink|<verbatim|likelihood>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L49-L51>,
  <hlink|<verbatim|density>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L71-L72>.

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  The block-spin kernel is normalized, Borel and covariant under gauge and
  lattice symmetries. Its branch cutoffs can be chosen independently of the
  patch size. The geometric estimates synchronize neighbouring frames and
  bound the predicted coarse curvature by <math|L<rsup|-2>> times the fine
  curvature in a surrounding box. Near the trivial configuration the
  prediction is analytic, with linearization
  <math|\<cal-M\>+d<rsub|0>*\<cal-F\>>. Tree gauge reduces the step integral
  to the free links. The unit also defines effective densities, RG histories
  and the requirements used in the later energy and stationary-branch
  estimates.

  <strong|Proposition III.1.1 (the block kernel is a Markov kernel).> Assume
  (B1)\U(B3). For every <math|\<beta\>\<in\>\<bbb-R\>>:

  <\itemize-minus>
    <item><math|\<rho\><rsub|\<beta\>>\<geqslant\>0>;

    <item><math|<around|(|U,V|)>\<mapsto\>\<rho\><rsub|\<beta\>><around|(|U,V|)>>
    is Borel;

    <item><math|sup \<rho\><rsub|\<beta\>>\<less\>\<infty\>>;

    <item><math|<big|int>\<rho\><rsub|\<beta\>><around|(|U,V|)>*<space|0.17em>d*\<mu\><rsub|c><around|(|V|)>=1>
    for every <math|U>.
  </itemize-minus>

  Consequently, for every Banach-space-valued
  <math|F\<in\>L<rsup|1><around|(|\<mu\><rsub|f>|)>> the push
  <math|<around|(|\<cal-P\><rsub|\<beta\>>*F|)><around|(|V|)>=<big|int>\<rho\><rsub|\<beta\>><around|(|U,V|)>*F<around|(|U|)>*<space|0.17em>d*\<mu\><rsub|f><around|(|U|)>>
  is defined for every <math|V>. Moreover
  <math|\<cal-P\><rsub|\<beta\>>*F\<in\>L<rsup|1><around|(|\<mu\><rsub|c>|)>>,
  <math|\<cal-P\><rsub|\<beta\>>> is linear, and
  <math|<big|int>\<cal-P\><rsub|\<beta\>>*F*<space|0.17em>d*\<mu\><rsub|c>=<big|int>F*<space|0.17em>d*\<mu\><rsub|f>>.
  This is the operation that takes level <math|m+1> to level <math|m>.
  <em|Status:> theorem. Positivity and integrability in <math|V> hold without
  (B1)\U(B3). <em|Lean:> <hlink|<verbatim|IsKernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L158-L163>,
  <hlink|<verbatim|isKernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L203-L208>,
  <hlink|<verbatim|push>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L77-L79>,
  <hlink|<verbatim|push_integrable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Push.lean#L33-L35>,
  <hlink|<verbatim|push_integral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Push.lean#L37-L43>,
  <hlink|<verbatim|push_add>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Push.lean#L45-L50>,
  <hlink|<verbatim|push_smul>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Push.lean#L52-L55>.

  <strong|Proposition III.1.2 (exact covariance).> Assume (B1)\U(B3). For all
  <math|\<beta\>\<in\>\<bbb-R\>>, <math|U>, <math|V>:

  <\itemize-minus>
    <item>(a) <math|\<rho\><rsub|\<beta\>><around*|(|k\<cdot\>U,<around|(|k\<circ\><math-up|embed>|)>\<cdot\>V|)>=\<rho\><rsub|\<beta\>><around|(|U,V|)>>
    for every <math|k:\<Lambda\><rsub|f>\<to\>G>, where
    <math|<math-up|embed><around|(|x|)>=L*x>;

    <item>(b) <math|\<rho\><rsub|\<beta\>><around|(|s<rsub|L*b>*U,s<rsub|b>*V|)>=\<rho\><rsub|\<beta\>><around|(|U,V|)>>
    for every <math|s\<in\>\<frak-B\><rsub|4>> and
    <math|b\<in\>\<Lambda\><rsub|c>>;

    <item>(c) if the kernel constants of a calendar satisfy (B1)\U(B3) for
    every patch, then every step of the calendar has <em|block control>
    (branch conditions together with (a) and (b)), and is a Markov kernel by
    III.1.1.
  </itemize-minus>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|covary>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L56-L67>,
  <hlink|<verbatim|channel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L50-L54>,
  <hlink|<verbatim|Calendar.blocks_go>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L70-L72>,
  <hlink|<verbatim|Calendar.BlockControl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L120-L128>,
  <hlink|<verbatim|Levels.transition_mass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L158-L159>.

  <strong|Proposition III.1.3 (branch constants depending only on <math|G>).>
  Let <math|d=d<around|(|G|)>> be the constant of III.1.5. Let
  <math|r<rsub|G>\<gtr\>0> be such that every
  <math|X\<in\>M<rsub|N><around|(|\<bbb-C\>|)>> at distance
  <math|\<less\>r<rsub|G>> from <math|G> has a unique nearest point in
  <math|G>. Put <math|\<delta\><rsub|0>=d/<sqrt|N>> and
  <math|\<varepsilon\><rsub|0>=r<rsub|G><rsup|2>/<around|(|2*N|)>>. Then for
  every <math|\<kappa\>\<gtr\>0>, <math|\<delta\>\<in\><around|(|0,\<delta\><rsub|0>|]>>,
  <math|\<varepsilon\>\<in\><around|(|0,\<varepsilon\><rsub|0>|]>> and
  <math|a\<geqslant\>16>, the constants <math|<around|(|\<kappa\>,\<delta\>,\<varepsilon\>,a|)>>
  satisfy (B1)\U(B3) for every patch, that is, for every odd
  <math|L\<geqslant\>3> and every <math|J\<geqslant\>4>. Condition (B3) holds
  in a stronger form: for every <math|W> and every ordering <math|o> there is
  a root <math|r> with <math|<around|(|r,o|)>> eligible. <em|Status:>
  theorem. The existence theorem records the case
  <math|<around|(|\<delta\><rsub|0>,\<varepsilon\><rsub|0>,16|)>> for a given
  penalty <math|\<kappa\>>. <em|Lean:> <hlink|<verbatim|Axial.viable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L137-L142>,
  <hlink|<verbatim|RG.frame_unique>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Uniform.lean#L18-L56>,
  <hlink|<verbatim|RG.predictor_unique>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Uniform.lean#L58-L63>,
  <hlink|<verbatim|Axial.eligible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L119-L134>.

  <strong|Proposition III.1.4 (axial gauge controlled by curvature).> Let
  <math|l> be a list of distinct axes, <math|r\<in\>\<bbb-N\>>,
  <math|o\<in\>B<rsub|r>>, and <math|U> any configuration on
  <math|\<bbb-Z\><rsup|4>>. Let <math|S=<around|{|y\<in\>B<rsub|r>:y<rsub|j>=o<rsub|j><text|
  for >j\<nin\>l|}>> be the slab. Then there is a root <math|x\<in\>S> such
  that the axial gauge <math|g<rsub|y>=T<rsub|U><around|(|x\<to\>y;<space|0.17em><text|axes
  in the order >l|)>> satisfies

  <\equation*>
    E<rsub|S>*<around|(|g\<cdot\>U|)>\<leqslant\>4<space|0.17em><around|\||l|\|>*<space|0.17em><around|(|2*r+1|)>*<space|0.17em>F<rsub|S><around|(|U|)>.
  </equation*>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Axial.existence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L80-L105>.

  <strong|Proposition III.1.5 (least-squares synchronization: uniqueness up
  to a global left multiple).> There is <math|d=d<around|(|G|)>\<in\><around|(|0,1/4|]>>
  with the following property. Let <math|n,\<Lambda\>> be finite nonempty
  sets. Let <math|W:n\<times\>n\<times\>\<Lambda\>\<to\>G> satisfy
  <math|W<rsub|x*x*k>=1> and <math|W<rsub|y*x*\<sigma\><around|(|k|)>>=W<rsub|x*y*k><rsup|-1>>
  for some permutation <math|\<sigma\>> of <math|\<Lambda\>>, and
  <math|<around|\<\|\|\>|W<rsub|x*y*k>-1|\<\|\|\>>\<leqslant\>d> for all
  indices. Then any two global minimizers <math|h,h<rprime|'>> of
  <math|<math-up|cost><around|(|h|)>=<math-up|avg><rsub|x,y,k><space|0.17em><math-up|pr><around|(|h<rsub|x>*W<rsub|x*y*k>*h<rsub|y><rsup|-1>|)>>
  over <math|G<rsup|n>> satisfy <math|h<rprime|'>=c*<space|0.17em>h> for a
  single <math|c\<in\>G>. The constant <math|d> does not depend on
  <math|<around|\||n|\|>> or <math|<around|\||\<Lambda\>|\|>>. <em|Status:>
  theorem. <em|Lean:> <hlink|<verbatim|Branch.align>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L232-L272>,
  with <hlink|<verbatim|Pairs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L27-L31>.

  <strong|Proposition III.1.6 (synchronization of the realized frame with any
  gauge).> There is <math|A=A<around|(|G|)>\<gtr\>0> with the following
  property. Let <math|P> be any patch and <math|K> any kernel constants; no
  branch condition is needed. Let <math|W> be a configuration on
  <math|\<bbb-Z\><rsup|4>>, <math|t> a frame tag with
  <math|m<rsup|<math-up|fr>><around|(|W,t|)>\<gtr\>0>, <math|h> the realized
  frame, and <math|H:\<bbb-Z\><rsup|4>\<to\>G> any gauge. Then there is
  <math|c\<in\>G> with

  <\equation*>
    <big|sum><rsub|y\<in\>B<rsub|R>><math-up|ch><around*|(|c<rsup|-1>*h<rsub|y>*H<rsub|y><rsup|-1>|)>\<leqslant\>A*<space|0.17em><around|(|2*R+1|)>*<around*|(|E<rsub|B<rsub|R>>*<around|(|H\<cdot\>W|)>+a*<space|0.17em><around|(|2*R+1|)>*<space|0.17em>F<rsub|B<rsub|R>><around|(|W|)>|)>.
  </equation*>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Pressure.synchronized>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Gauge.lean#L135-L162>.

  <strong|Proposition III.1.7 (one gauge for a neighbourhood of blocks).> Fix
  <math|G>, <math|K> and <math|j\<geqslant\>4>, and put
  <math|\<ell\><rsub|j>=2*j+15>. Then <math|D=16*<space|0.17em>\<ell\><rsub|j>>
  and <math|C=A*<space|0.17em>\<ell\><rsub|j>*<around|(|D+a*<space|0.17em>\<ell\><rsub|j>|)>>,
  with <math|A> from III.1.6, have the following property. Let <math|S> be
  any step with kernel constants <math|K> and <math|J=j> (any <math|L>, any
  <math|c>). Let <math|U> be fine, <math|x> a coarse site, and <math|t> a tag
  that is <em|usable> at <math|x>, meaning that
  <math|m<rsup|<math-up|fr>><around|(|U<rsup|<around|(|x+y|)>>,t<rsub|x+y>|)>\<gtr\>0>
  for all <math|y\<in\>B<rsub|2>>. Then there are a gauge
  <math|H:\<bbb-Z\><rsup|4>\<to\>G> and pads <math|p<rsub|y>\<in\>G>
  (<math|y\<in\>B<rsub|2>>) with

  <\equation*>
    E<rsub|B<rsub|R<rprime|'>>>*<around|(|H\<cdot\>U<rsup|<around|(|x|)>>|)>\<leqslant\>D*<space|0.17em>L<space|0.17em><math-up|port><around|(|x,U|)>,<space|2em><big|sum><rsub|i\<in\>B<rsub|R>><math-up|ch><around*|(|p<rsub|y><rsup|-1>*h<rsup|<around|(|x+y|)>><rsub|i>*<space|0.17em>H<rsub|i+L*y><rsup|-1>|)>\<leqslant\>C*<space|0.17em>L<rsup|2><space|0.17em><math-up|port><around|(|x,U|)>*<space|1em><around|(|y\<in\>B<rsub|2>|)>.
  </equation*>

  Here <math|R<rprime|'>=R+4*L=<around|(|J+7|)>*L> and
  <math|<math-up|port><around|(|x,U|)>=F<rsub|B<rsub|R<rprime|'>>><around|(|U<rsup|<around|(|x|)>>|)>>
  is the fine curvature in the macro-box around <math|x>. Every tag with
  <math|\<lambda\><around|(|U,t|)>\<gtr\>0> is usable at every coarse site.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Pressure.planting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L72-L122>,
  <hlink|<verbatim|usable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L62-L63>,
  <hlink|<verbatim|wraps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L65-L69>,
  <hlink|<verbatim|port>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L60>,
  <hlink|<verbatim|macroR>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L37>.

  <strong|Proposition III.1.8 (predicted versus actual coarse curvature).>
  For <math|G>, <math|K>, <math|j> let <math|C<rsub|8>=8*max
  <around|(|1,\<varepsilon\><rsup|-1>|)>*<around|(|2*C+D|)>>, with <math|C,D>
  from III.1.7. Let <math|S> be any step with constants <math|K> and
  <math|J=j>. Then for all <math|U> and <math|V>, every coarse site <math|x>,
  every tag <math|t> usable at <math|x> and every plane <math|p>:

  <\equation*>
    <math-up|ch><around*|(|Q<around|(|U,t|)><rsub|<around|(|x,p|)>>|)>\<leqslant\><frac|C<rsub|8>|L<rsup|2>><space|0.17em><math-up|port><around|(|x,U|)>,<space|2em><math-up|ch><around*|(|V<rsub|<around|(|x,p|)>>|)>\<leqslant\><math-up|fuel><around|(|Q,V|)><rsub|<around|(|x,p|)>>+<frac|C<rsub|8>|L<rsup|2>><space|0.17em><math-up|port><around|(|x,U|)>.
  </equation*>

  Here <math|Q<rsub|<around|(|x,p|)>>> denotes the plaquette holonomy, and
  <math|<math-up|fuel><around|(|Q,V|)><rsub|<around|(|x,p|)>>=<big|sum><rsub|e\<in\>\<partial\><around|(|x,p|)>><math-up|ch><around|(|V<rsub|e>*Q<rsub|e><rsup|-1>|)>>
  is the sum of the four <em|wires> of the plaquette, counted with
  multiplicity even when edges coincide on a short torus. The macro-box
  contains <math|6*<around|(|2*R<rprime|'>|)><rsup|2>*<around|(|2*R<rprime|'>+1|)><rsup|2>>
  internal plaquettes. Thus <math|L<rsup|-4><math-up|port>> differs from
  their average chord by a factor bounded above and below in terms of
  <math|J> only. The bound therefore says that the coarse predicted plaquette
  is at most <math|C<around|(|G,K,J|)>*<space|0.17em>L<rsup|2>> times the
  average fine curvature: the area scaling of the non-abelian Stokes formula,
  with no further loss in <math|L>. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Pressure.qdc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L210-L252>,
  <hlink|<verbatim|fuel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L189-L190>,
  <hlink|<verbatim|wire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L187>.

  <strong|Proposition III.1.9 (effective densities and RG histories).> The
  following definitions carry four elementary consequences.

  (a) <em|Budget points, flags, masks.> A budget point is a tuple (integer
  power <math|\<geqslant\>2>, integer order <math|\<geqslant\>6>, support
  exponent <math|\<gtr\>0>, cover size <math|B\<geqslant\>1>, threshold
  <math|t\<in\><around|(|0,1|]>>). The flagged sites
  <math|<math-up|flags><rsub|t><around|(|U|)>> are the sites touched by a
  plaquette of chord <math|\<gtr\>t>. <math|U> is <em|healthy> on <math|X> if
  <math|X\<cap\><math-up|flags><rsub|t><around|(|U|)>=\<emptyset\>>, and the
  masked function is <math|\<b-1\><rsub|<around|{|<text|healthy on >X|}>>*F>.
  A function is <em|regular> on <math|X> if it depends only on links in
  <math|X>, is Borel and gauge invariant, and at each configuration healthy
  on <math|X> is <math|C<rsup|q>> in exponential left increments, where
  <math|q> is the order; its ordered left derivatives through order <math|q>
  must exist. Its <em|sup bounds> control derivatives of orders
  <math|0,\<ldots\>,q> in directions with
  <math|<around|\||A<rsub|e>|\|>\<leqslant\>t*<around|(|1+<math-up|dist><around|(|e<rsup|->,o|)>|)><rsup|<math-up|power>>>,
  where <math|e<rsup|->> is the base of the positive link. <em|Theorem:> a
  function that reads the links in <math|X> and the flags in <math|X> depends
  only on the links in <math|<math-up|inspected><around|(|X|)>>, the union of
  <math|X> and the corners of all plaquettes meeting <math|X>.

  (b) <em|Activities.> There are regular activities <math|E<rsub|i>>, with an
  address (a site <math|o<rsub|i>> in a support <math|X<rsub|i>>), and forced
  activities <math|K<rsub|i>>, with a support <math|Y<rsub|i>>, an inventory
  <math|\<emptyset\>\<ne\>I<rsub|i>\<subset\>Y<rsub|i>> and an extra test.
  <em|Validity> at bounds <math|\<delta\><rsub|E>,w<rsub|K>\<geqslant\>0>
  means the following:

  <\itemize-minus>
    <item><math|E<rsub|i>> is regular on <math|X<rsub|i>> and
    <math|E<rsub|i><around|(|1|)>=0>;

    <item>if <math|10<space|0.17em><math-up|dist><around|(|y,o<rsub|i>|)>\<less\>n>
    for every <math|y\<in\>X<rsub|i>>, where <math|n> is the torus side, the
    Hessian of <math|E<rsub|i>> at the trivial configuration vanishes on
    affine directions <math|A<rsub|<around|(|y,\<mu\>|)>>=a<rsub|\<mu\>>+<big|sum><rsub|\<nu\>><wide|<around|(|y-o<rsub|i>|)>|~><rsub|\<nu\>>*d<rsub|\<mu\>*\<nu\>>>,
    using the canonical centred lift <math|<wide|<around|(|y-o<rsub|i>|)>|~>>;
    equivalently, <math|D<rsup|2><around|[|E<rsub|i><around|(|exp
    A|)>|]><rsub|A=0><around|[|A,B|]>=0> for every two such directions
    <math|A,B>;

    <item><math|K<rsub|i>> and its extra test are gauge invariant, Borel, and
    depend only on links and flags in <math|Y<rsub|i>>; <math|K<rsub|i>>
    vanishes unless <math|Y<rsub|i>\<cap\><math-up|flags><rsub|t>=I<rsub|i>>
    and the test holds;

    <item>covariance under every element of <math|\<frak-B\><rsub|4>> and
    every base point (index permutations transporting addresses, inventories,
    tests and values);

    <item>there are nonnegative majorants <math|e<rsub|i>,k<rsub|i>>, with
    <math|e<rsub|i>> bounding the regular derivatives and
    <math|<around|\||K<rsub|i>|\|>\<leqslant\>k<rsub|i>>, such that, for
    every site <math|x>,
  </itemize-minus>

  <\equation*>
    <big|sum><rsub|i:o<rsub|i>=x>e<rsup|\<sigma\><space|0.17em><math-up|cov><rsub|B><around|(|X<rsub|i>|)>>*e<rsub|i>\<leqslant\>\<delta\><rsub|E>,<space|2em><big|sum><rsub|i:x\<in\>Y<rsub|i>>e<rsup|\<sigma\><space|0.17em><math-up|cov><rsub|B><around|(|Y<rsub|i>|)>>*k<rsub|i>\<leqslant\>w<rsub|K>.
  </equation*>

  Here <math|\<sigma\>> is the support exponent and
  <math|<math-up|cov><rsub|B><around|(|X|)>> is the least number of
  radius-<math|B> balls with connected union covering <math|X>; both series
  are required to converge.

  The <em|gas> is <math|<big|sum><rsub|b><big|prod><rsub|i\<in\>b>K<rsub|i><around|(|U|)>>,
  summed over finite families <math|b> with pairwise disjoint supports whose
  inventories cover <math|<math-up|flags><rsub|t><around|(|U|)>> exactly.
  <em|Theorem:> the gas equals <math|1> when
  <math|<math-up|flags><rsub|t><around|(|U|)>=\<emptyset\>>.

  (c) <em|Leading action.> A clip has <math|c<rsub|<math-up|dir>>\<gtr\>16*<space|0.17em>c<rsub|<math-up|lin>>\<gtr\>0>
  and a relaxation length. Path data consist of row series
  <math|\<ell\><rsub|p><around|(|U|)>=<big|sum><rsub|k>r<rsub|p,k><space|0.17em><math-up|slot><rsub|k><around|(|U|)>>
  (weighted parallel-transported curvatures) and loop, cubic and quartic
  atoms. Their bounds require exponentially weighted summability, invariance,
  the normalization <math|c<rsub|<math-up|dir>>*\<delta\><rsub|p*q>+<big|sum><rsub|k><wide|s|^><rsub|k><around|(|p|)>*<wide|s|^><rsub|k><around|(|q|)>=\<delta\><rsub|p*q>>
  of the zero-momentum symbols (the sums of row coefficients at each
  plaquette orientation), and vanishing zeroth and first moments of the loop
  coefficients. The row term at a plaquette based at <math|x> is kept exactly
  when <math|<math-up|ch><around|(|U<rsub|q>|)>\<leqslant\>t*exp
  <around|(|<math-up|dist><around|(|x,q<rsup|->|)>/r<rsub|<math-up|rel>>|)>>
  for every plaquette <math|q>, where <math|r<rsub|<math-up|rel>>\<gtr\>0> is
  the relaxation length and <math|q<rsup|->> its base. The per-plaquette term
  is <math|<math-up|clip><rsub|t><around|(|<math-up|ch>U<rsub|p>|)>+\<b-1\><rsub|<math-up|kept>><tfrac|1|2><around|\||\<ell\><rsub|p><around|(|U|)>|\|><rsup|2>>,
  where <math|<math-up|clip><rsub|t><around|(|s|)>=c<rsub|<math-up|dir>>*s<rsup|2>/2>
  for <math|s\<leqslant\>t> and <math|c<rsub|<math-up|lin>>*t*s> for
  <math|s\<gtr\>t>. The atoms are masked by health on their path and
  plaquette footprints. The leading action <math|\<cal-S\>> is the
  <math|\<frak-B\><rsub|4>>-average of <math|\<beta\><space|0.17em><around|[|<big|sum><rsub|p>|(>\<cdot\>)+<text|cubic>+<text|quartic>]+<text|loop>>.
  A representation <math|\<cal-R\>=(<text|path data, clip,
  activities>,p,\<beta\>,v)> evaluates to
  <math|<math-up|eval><rsub|\<cal-R\>>=exp
  <around*|(|v\|\<Lambda\>\|-\<cal-S\>-<big|sum><rsub|i>\<b-1\><rsub|<math-up|healthy>>*E<rsub|i>|)>\<cdot\><math-up|gas>>.
  <em|Theorem:> if <math|\<cal-R\>> is lawful (path bounds and valid
  activities), then <math|<math-up|eval><rsub|\<cal-R\>>> is Borel and
  bounded on that finite torus.

  (d) <em|Histories.>

  <\itemize-minus>
    <item>A <em|calendar> holds torus sides <math|n<rsub|m,p>> and factors
    <math|L<rsub|m>>, with <math|n<rsub|m+1,p>=L<rsub|m>*n<rsub|m,p>> and
    <math|<math-up|scale><around|(|m|)>=<big|sum><rsub|k\<less\>m>log
    L<rsub|k>>, the kernel constants, the barrier
    <math|<wide|\<beta\>|\<bar\>>\<gtr\>0>, stage constants, orders
    <math|J<rsub|m>\<geqslant\>4> and exponents <math|\<theta\>>. It sets
    <math|<wide|\<beta\>|^><rsub|m>=<wide|\<beta\>|\<bar\>>+\<kappa\><rsub|<math-up|slope>><space|0.17em><math-up|scale><around|(|m|)>>,
    <math|t<rsub|m>=<math-up|temp><around|(|<wide|\<beta\>|^><rsub|m>|)>> and
    cover size <math|<around|\<lceil\>|<around|(|log
    <wide|\<beta\>|^><rsub|m>|)><rsup|2>|\<rceil\>>>.

    <item>Step <math|m> goes from level <math|m+1> to level <math|m>, with
    patch <math|<around|(|L<rsub|m>,J<rsub|m+1>|)>>.

    <item>The <em|fits> conditions include: <math|J<rsub|m>> nondecreasing
    with <math|J<rsub|m+1>\<leqslant\>J<rsub|m>+1> and
    <math|J<rsub|m>\<to\>\<infty\>>; <math|<wide|\<beta\>|^><rsub|m>\<gtr\>1>;
    <math|t<rsub|m>\<leqslant\>1>; the level-<math|m> torus side at least
    <math|100*<around|(|<text|cover size><rsub|m>+1|)>> and the fine side of
    step <math|m> at least <math|100*<around|(|R<rsub|m>+1|)>>; drift and
    logarithmic-cost bounds.

    <item><em|Levels> means a calendar with its fits conditions and block
    control at every step.

    <item>A history assigns a representation <math|\<cal-R\><rsub|N,p,m>> to
    each mesh index <math|N>, volume <math|p> and level
    <math|m\<leqslant\>N>. It is <em|selected> if: the path data do not
    depend on <math|p>; each <math|\<cal-R\><rsub|N,p,m>> has the assigned
    level-<math|m> clip and budget point and is lawful with the
    level-<math|m> constants and <math|\<beta\><rsub|N,p,m>\<in\><around|[|<wide|\<beta\>|^><rsub|m>/2,2*<wide|\<beta\>|^><rsub|m>|]>>;
    <math|v<rsub|N,p,N>=0> and <math|<math-up|eval><rsub|N,p,N>> is the bare
    Wilson density; <math|<math-up|eval><rsub|N,p,m>=\<cal-P\><rsub|\<beta\><rsub|N,p,m+1>><math-up|eval><rsub|N,p,m+1>>
    with <math|<around|\||\<beta\><rsub|m+1>-\<beta\><rsub|m>-\<kappa\><rsub|<math-up|slope>>*log
    L<rsub|m>|\|>\<leqslant\><math-up|drift><rsub|m+1>>;
    <math|\<beta\><rsub|N,p,0>=<wide|\<beta\>|\<bar\>>>; and
    <math|<around|\||\<beta\><rsub|N,p,m>-<wide|\<beta\>|^><rsub|m>|\|>=o<around|(|<math-up|scale><around|(|m|)>|)>>
    uniformly in <math|N,p>.
  </itemize-minus>

  The lawful bounds at level <math|m> use the stage path width and row and
  higher-atom bound, the loop bound <math|2<space|0.17em><math-up|monitor><rsub|m><rsup|\<theta\><around|(|J<rsub|m>|)>>>,
  and activity bounds <math|\<delta\><rsub|E>=<wide|\<beta\>|^><rsub|m><rsup|-11/10>>
  and <math|w<rsub|K>=exp <around|[|-<math-up|monitor><rsub|m><rsup|1/5>|]>>,
  where <math|<math-up|monitor><rsub|m>=exp <around|[|<around|(|log log
  <wide|\<beta\>|^><rsub|m>|)><rsup|2>|]>>.

  The remaining fits conditions are: <math|log
  L<rsub|m>/<math-up|scale><around|(|m|)>\<to\>0>; <math|L<rsub|m>> is the
  factor assigned to order <math|J<rsub|m+1>>, and the assigned factors are
  nondecreasing; the derivative orders, powers and support exponents are
  nondecreasing along the levels; <math|\<theta\>> is antitone with
  <math|0\<less\>\<theta\><around|(|J<rsub|m>|)>\<leqslant\>J<rsub|m><rsup|-1>>;
  and

  <\equation*>
    <frac|<math-up|drift><rsub|m+1>|log L<rsub|m>>\<leqslant\>J<rsub|m+1><rsup|-2>,<space|2em><frac|log
    <around|(|1+C<rsub|m+1>+\<sigma\><rsub|m+1><rsup|-1>+C<rsup|<math-up|col>><rsub|m+1>+r<rsub|m+1>+s<rsub|m+1>|)>|log
    L<rsub|m>>\<leqslant\>J<rsub|m+1><rsup|-2>.
  </equation*>

  Here <math|C,\<sigma\>,C<rsup|<math-up|col>>,r,s> are the stage path bound,
  path width, column bound, relaxation length and support exponent.

  <em|Theorem:> for a selected history, <math|<big|int><math-up|eval><rsub|N,p,m><space|0.17em>d*\<mu\>=Z<rsub|N,p><around|(|\<beta\><rsub|N,p,N>|)>>,
  the Wilson partition function, for every <math|m\<leqslant\>N>.

  <em|Status:> definitions. The four theorems are proved. The quantitative
  path and activity bounds needed to construct such histories belong to
  III.3\UIII.10. <em|Lean:> <hlink|<verbatim|BudgetPoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L125-L136>,
  <hlink|<verbatim|BudgetPoint.Regular>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L154-L161>,
  <hlink|<verbatim|flags>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L34-L36>,
  <hlink|<verbatim|UsesFinal.allReads>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L108-L110>,
  <hlink|<verbatim|Activities>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L62-L66>,
  <hlink|<verbatim|RegularFamily>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L70-L75>,
  <hlink|<verbatim|ForcedFamily>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L77-L84>,
  <hlink|<verbatim|Moves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L87-L96>,
  <hlink|<verbatim|Valid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L106-L111>,
  <hlink|<verbatim|admissible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L114-L116>,
  <hlink|<verbatim|gas>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L129>,
  <hlink|<verbatim|gas_one>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L135-L147>,
  <hlink|<verbatim|Clip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139-L146>,
  <hlink|<verbatim|PathData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L150-L154>,
  <hlink|<verbatim|PathData.Bounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L173-L185>,
  <hlink|<verbatim|baseTerm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L221-L224>,
  <hlink|<verbatim|principal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L236-L238>,
  <hlink|<verbatim|inChannels>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L241-L242>,
  <hlink|<verbatim|Rep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L165-L171>,
  <hlink|<verbatim|Rep.eval>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L179>,
  <hlink|<verbatim|Rep.envelope>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L195-L198>,
  <hlink|<verbatim|Calendar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L64-L73>,
  <hlink|<verbatim|Calendar.Fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L97-L118>,
  <hlink|<verbatim|Levels>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131-L134>,
  <hlink|<verbatim|Levels.budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L141-L156>,
  <hlink|<verbatim|History>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L204-L206>,
  <hlink|<verbatim|History.Selected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L234-L240>,
  <hlink|<verbatim|History.partition_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L242-L249>.

  <strong|Proposition III.1.10 (the tube identity).> A <em|tube> for a step
  is a tower of transfer kernels together with path data and clips at the
  fine level (up) and at the coarse level (down). Fix a path-length cutoff, a
  fine threshold <math|t> and a coarse threshold <math|s>. From <math|V> one
  builds:

  <\itemize-minus>
    <item>the <em|vision> <math|w> (the thinned coarse curvature and row
    data);

    <item>linear maps <math|\<Phi\>,\<Phi\><rprime|'>,\<cal-N\>>, assembled
    from the adjoint action of parallel transports of <math|V> along cut-off
    routes;

    <item>the fine data <math|X<rsub|f><around|(|U|)>>, the coarse data
    <math|X<rsub|n><around|(|V|)>>, and the noise field
    <math|Z<rsub|b>=<sqrt|\<kappa\>><space|0.17em><math-up|curv><around|(|V<rsub|b>*Q<rsub|b><rsup|-1>|)>>.
  </itemize-minus>

  Use counting inner products and norms on these finite arrays. Let
  <math|C<rsub|f>> and <math|C<rsub|c>> be the sums of the fine and coarse
  per-plaquette crowns, and let <math|P=<big|sum><rsub|b><tfrac|\<kappa\>|2><space|0.17em><math-up|ch><around|(|V<rsub|b>*Q<rsub|b><rsup|-1>|)><rsup|2>>.
  A crown is the clipped direct term plus half the kept row's squared
  physical norm, with the row truncated at the path cutoff. The totals of the
  six local works are

  <\equation*>
    <\aligned>
      <tformat|<table|<row|<cell|W<rsub|F>>|<cell|=C<rsub|f>+<tfrac|1|2>\<\|\|\>\<Phi\>*w\<\|\|\><rsup|2>-<around|\<langle\>|\<Phi\>*w,X<rsub|f>|\<rangle\>>,>|<cell|W<rsub|I>>|<cell|=P+<tfrac|1|2>\<\|\|\>\<Phi\><rprime|'>*w\<\|\|\><rsup|2>-<around|\<langle\>|\<Phi\><rprime|'>*w,Z|\<rangle\>>,>>|<row|<cell|W<rsub|C>>|<cell|=<around|\<langle\>|w,X<rsub|n>|\<rangle\>>-<tfrac|1|2>\<\|\|\>w\<\|\|\><rsup|2>-C<rsub|c>,>|<cell|W<rsub|L>>|<cell|=<around|\<langle\>|w,\<Phi\><rsup|\<dagger\>>*X<rsub|f>+\<Phi\><rprime|'><rsup|\<dagger\>>*Z-X<rsub|n>|\<rangle\>>,>>|<row|<cell|W<rsub|N>>|<cell|=<tfrac|1|2><around|\<\|\|\>|\<cal-N\>*w|\<\|\|\>><rsup|2>,>|<cell|W<rsub|D>>|<cell|=<tfrac|1|2><around|\<langle\>|w,<around|(|1-\<Phi\><rsup|\<dagger\>>*\<Phi\>-\<Phi\><rprime|'><rsup|\<dagger\>>*\<Phi\><rprime|'>-\<cal-N\><rsup|\<dagger\>>*\<cal-N\>|)>*w|\<rangle\>>.>>>>
    </aligned>
  </equation*>

  For every path cutoff, thresholds <math|t,s\<in\>\<bbb-R\>> and
  configurations <math|U,Q,V>,

  <\equation*>
    W<rsub|F>+W<rsub|I>+W<rsub|C>+W<rsub|N>+W<rsub|L>+W<rsub|D>=C<rsub|f>+P-C<rsub|c>.
  </equation*>

  The fine and coarse data have two components per plaquette:
  <math|<sqrt|c<rsub|<math-up|dir>>><space|0.17em><math-up|curv><around|(|U<rsub|p>|)>>
  and the truncated row, using the respective clip and configuration. The
  fine transfer uses parallel transports of the blockwise copy of <math|V>;
  the other two maps use <math|V> on the coarse torus. The vision caps the
  direct component by <math|min <around|(|1,s/<math-up|ch><around|(|V<rsub|p>|)>|)>>,
  taking this factor to be <math|1> at zero chord, and masks the row by the
  kept condition. For the local works, assign each square or inner-product
  summand to its array coordinate. The two components at each plaquette are
  summed together: <math|W<rsub|F>> is indexed by fine plaquettes,
  <math|W<rsub|I>> by coarse links, <math|W<rsub|C>,W<rsub|L>,W<rsub|D>> by
  coarse plaquettes, and <math|W<rsub|N>> by coarse gain coordinates. The
  crowns and penalties are charged at the same indices.

  <em|Status:> theorem (an algebraic identity). <em|Lean:>
  <hlink|<verbatim|Tube>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L94-L99>,
  <hlink|<verbatim|Tube.locates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L145-L163>,
  <hlink|<verbatim|workF>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L122-L124>,
  <hlink|<verbatim|workD>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L138-L140>.

  <strong|Proposition III.1.11 (energy per seed: the requirement, and its
  transfer to a history).>

  <em|The requirement.> Write <math|<wide|\<beta\>|^>> for the coarse
  reference coupling, <math|t=<math-up|temp><around|(|<wide|\<beta\>|^>+\<kappa\><rsub|<math-up|slope>>*log
  L|)>> for the fine-level threshold and <math|\<varrho\>=<around|\<lceil\>|<around|(|log
  <wide|\<beta\>|^>|)><rsup|2>|\<rceil\>>> for the cluster radius.

  <\itemize-minus>
    <item>A <em|store> <math|A> is a finite set of fine plaquettes (costs),
    coarse links (aisles) and coarse sites (flags). Its size
    <math|<around|\||A|\|>> is the sum of the three cardinalities. Its
    locations are the parent coarse sites of all corners of its fine
    plaquettes, both endpoints of its coarse links, and its coarse sites.
    Write <math|D<rsub|r><around|(|A|)>> for their radius-<math|r>
    neighbourhood, using the maximum-norm distance on the coarse torus.

    <item><math|<around|(|A,U,k,V|)>> is a <em|plot> at
    <math|<around|(|<wide|\<beta\>|^>,W|)>> if the following conditions hold:

    <\itemize-minus>
      <item>every fine plaquette whose parent-corner set meets
      <math|D<rsub|5*\<varrho\>><around|(|A|)>> has chord
      <math|\<geqslant\>t/4> if it belongs to <math|A>, and
      <math|\<leqslant\>t/2> otherwise;

      <item>every coarse link with an endpoint in
      <math|D<rsub|5*\<varrho\>><around|(|A|)>> has wire
      <math|<math-up|ch><around|(|V<rsub|b>*Q<rsub|b><around|(|U,k|)><rsup|-1>|)>\<geqslant\>W*t>
      if it belongs to <math|A>, and <math|\<leqslant\>2*W*t> otherwise;

      <item>on <math|D<rsub|5*\<varrho\>><around|(|A|)>>, the coarse sites in
      <math|A> are exactly <math|<math-up|flags><rsub|<math-up|temp><around|(|<wide|\<beta\>|^>|)>><around|(|V|)>>;

      <item>every site in <math|D<rsub|5*\<varrho\>><around|(|A|)>> has
      positive frame mass under <math|k>.
    </itemize-minus>

    <item>The <em|estimator data> fix kernel constants, two stage records, an
    order <math|j>, a decay width <math|\<eta\>\<gtr\>0> and a bound
    <math|C>. A tube is <em|compatible> with these data if the kernel and
    order agree, the branch conditions hold, and its transfer kernels have
    decay bounds through <math|j-2> forward fine-coordinate differences: the
    fine transfer row has bound <math|C/L<rsup|2>>, and differences of order
    <math|q> of the background and curvature kernels have bounds
    <math|C/L<rsup|1+q>> and <math|C/L<rsup|2+q>>. Its other two rows have
    bound <math|C>. The clips, path widths and row and higher-atom bounds are
    those of the two stages, with some finite loop bounds; the path rows must
    also be attached to quadratic metrics satisfying the tower's transfer
    identities (III.3).

    <item>The <em|energy bound> at <math|<around|(|L,W,\<kappa\><rsub|0>|)>>
    holds if for all sufficiently large <math|<wide|\<beta\>|^>> the
    following inequality is true. The threshold for <math|<wide|\<beta\>|^>>
    depends on the estimator data, <math|L>, <math|W> and
    <math|\<kappa\><rsub|0>>, not on the torus. The inequality is required
    for every step with factor <math|L> and coarse side
    <math|c\<geqslant\>100*<around|(|1+\<varrho\>|)>>, every compatible tube,
    every forest, and every plot with <math|U\<equiv\>1> on its trunks:

    <\equation*>
      \<kappa\><rsub|0>*<space|0.17em>t<rsup|2><space|0.17em><around|\||A|\|>\<leqslant\><math-up|Work><around|(|A|)>.
    </equation*>

    Here <math|<math-up|Work><around|(|A|)>> sums the six local works of
    III.1.10 with path cutoff <math|<around|\<lfloor\>|\<varrho\>/10<rsup|5>|\<rfloor\>>>:
    a fine plaquette is included when its base's parent lies in
    <math|D<rsub|2*\<varrho\>><around|(|A|)>>, and a coarse plaquette, link
    or gain coordinate is included when its base lies there.

    <item>The estimator data satisfy the <em|energy-per-seed requirement> if
    there is <math|L<rsub|0>> such that for every
    <math|L\<geqslant\>L<rsub|0>> and every sufficiently large <math|W> there
    is <math|\<kappa\><rsub|0>\<gtr\>0> for which the energy bound holds.
  </itemize-minus>

  <em|The transfer (theorem).> Let <math|B> be a directed history and suppose
  the <em|ringing> condition holds: for each pair of orders
  <math|j<rsub|min>\<leqslant\>i\<leqslant\>j\<leqslant\>i+1>, the inequality
  holds with some <math|\<mu\>\<gtr\>0> for every coarse reference coupling
  above the assigned entry threshold and wire parameter
  <math|F<around|(|j,i|)>\<gtr\>0>. Here <math|j<rsub|min>=J<rsub|0>> is the
  first admissible order. Then for each such pair there is
  <math|\<mu\>\<gtr\>0> with the following property. For all <math|N>, all
  <math|m\<less\>N> with <math|J<rsub|m+1>=j> and <math|J<rsub|m>=i>, all
  <math|p>, and every plot at <math|<around|(|<wide|\<beta\>|^><rsub|m>,F<around|(|j,i|)>|)>>
  with <math|U> trivial on the trunks,

  <\equation*>
    \<mu\>*<space|0.17em>t<rsub|m+1><rsup|2><space|0.17em><around|\||A|\|>\<leqslant\><math-up|Work><around|(|A|)>.
  </equation*>

  This uses <math|<wide|\<beta\>|^><rsub|m+1>=<wide|\<beta\>|^><rsub|m>+\<kappa\><rsub|<math-up|slope>>*log
  L<rsub|m>>, so that <math|t=<math-up|temp><around|(|<wide|\<beta\>|^><rsub|m+1>|)>=t<rsub|m+1>>.

  <em|Status:> the requirement is a definition (a hypothesis of other units).
  It is proved for every choice of estimator data in III.10
  (<hlink|<verbatim|Next.Fluctuations.grants>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L24>).
  Its proof applies <hlink|<verbatim|Integrated.pressure_grants>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L222-L225>,
  which follows from the work items E01\UE09 and from the coarse-row bound
  <hlink|<verbatim|EBare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L148>,
  itself proved by <hlink|<verbatim|Fluctuations.bare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Bare.lean#L64-L120>.
  The ringing condition is derived from these grants by raising the
  <math|\<beta\>>-entry thresholds (<hlink|<verbatim|Bid.pricing_order>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L173-L202>,
  <hlink|<verbatim|pressure_pricing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L32-L37>,
  III.10). The transfer is a theorem of this unit; its constant is uniform in
  <math|N,m,p> for the fixed pair <math|<around|(|j,i|)>>. <em|Lean:>
  <hlink|<verbatim|Stores>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L34-L37>,
  <hlink|<verbatim|Stores.Plot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L51-L58>,
  <hlink|<verbatim|Stores.assessed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L85>,
  <hlink|<verbatim|Teller>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L89-L96>,
  <hlink|<verbatim|Teller.Funds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L101-L109>,
  <hlink|<verbatim|Teller.live>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L114-L118>,
  <hlink|<verbatim|Teller.cash>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L124-L125>,
  <hlink|<verbatim|Teller.Grants>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L129-L131>,
  <hlink|<verbatim|Testing.Stamp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L155-L158>,
  <hlink|<verbatim|Testing.Ringing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L161-L163>,
  <hlink|<verbatim|Testing.notation_ticket>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L166-L181>.

  <strong|Proposition III.1.12 (kinetic specification of a directed
  history).> Fix levels, a horizon of quadratic kernels, a local
  exponential-chart density and positive stage constants. Kinetic data
  assign, for each <math|N,m>, a shift <math|\<alpha\><rsub|N,m>> and path
  data, and, for each volume and forest <math|F>, a map <math|\<psi\>> from
  coarse Lie-algebra fields to Lie-algebra fields on the free fine links.

  To state the stationary requirements, let
  <math|\<cal-A\><rsub|f><rsup|\<circ\>>> be the unmasked, unclipped fine
  action with coupling <math|1> and without loop terms, averaged over signed
  symmetries. Write <math|\<cal-L\><rsub|f><rsup|\<circ\>>> for the
  corresponding loop action and <math|\<cal-Q\><rsub|c><rsup|\<circ\>>> for
  the coarse quadratic part. For a coarse field <math|u> and a free-link
  field <math|b>, let <math|V=exp u> and form
  <math|U<rsub|F><around|(|u,b|)>> by putting <math|1> on trunks and
  <math|exp <around|(|b<rsub|e>|)>*<around|(|\<iota\>*V|)><rsub|e>> on free
  links, where <math|\<iota\>*V> is <math|1> on internal links and copies
  <math|V> on links crossing blocks. For each tag <math|t>, set

  <\equation*>
    \<cal-I\><rsub|t><around|(|u,b|)>=\<cal-A\><rsub|f><rsup|\<circ\>><around|(|U<rsub|F><around|(|u,b|)>|)>+\<kappa\>*<big|sum><rsub|e><math-up|pr><around*|(|V<rsub|e>*Q<rsub|e><around|(|U<rsub|F><around|(|u,b|)>,t|)><rsup|-1>|)>.
  </equation*>

  The kinetic requirements are:

  <\itemize-minus>
    <item>(i) the stages and block factors agree with the fixed choices;

    <item>(ii) for every <math|m\<leqslant\>N>, the path rows are attached to
    the horizon's quadratic kernels and satisfy the stage bounds of
    III.1.9(c);

    <item>(iii) at level <math|N>, the unmasked, unclipped action is analytic
    and has the same derivatives of orders <math|0,\<ldots\>,4> at <math|0>
    as the Wilson energy in exponential coordinates, and every loop
    coefficient vanishes;

    <item>(iv) for <math|m\<less\>N>, with the prescribed positive stage
    constant <math|\<eta\>>, every volume and every forest satisfy

    <\equation*>
      D<rsub|b><rsup|2>*\<cal-I\><rsub|t><around|(|0,0|)><around|[|v,v|]>\<geqslant\>\<eta\>*<big|sum><rsub|e<math-up|free>><around|\||v<rsub|e>|\|><rsup|2>
    </equation*>

    for every <math|t,v>. The map <math|\<psi\>> is analytic at <math|0>,
    with <math|\<psi\><around|(|0|)>=0>; each <math|\<cal-I\><rsub|t>> is
    analytic at <math|<around|(|0,0|)>>, and
    <math|D<rsub|b>*\<cal-I\><rsub|t><around|(|u,\<psi\><around|(|u|)>|)>=0>
    near <math|0>. The derivative of <math|\<psi\>> is the prescribed linear
    background, adjusted to tree gauge, minus the linearized copy
    <math|\<iota\><rsub|1>*u>, restricted to free links. Explicitly, if
    <math|\<cal-B\>*u> is the horizon's linear background, put

    <\equation*>
      \<chi\><rsub|u><around|(|y|)>=<big|int><rsub|y\<to\><math-up|root><around|(|y|)>>\<cal-B\>*u-<around|(|\<cal-F\>*\<cal-B\>*u|)><around|(|<math-up|parent><around|(|y|)>|)>,<space|2em>D*\<psi\><around|(|0|)>*u=<around|(|\<cal-B\>*u+d<rsub|0>*\<chi\><rsub|u>-\<iota\><rsub|1>*u|)>\|<rsub|<math-up|free>>,
    </equation*>

    where the integral follows the forest and <math|\<cal-F\>> is defined in
    III.1.14. Finally the unmasked coarse action
    <math|\<cal-A\><rsub|c><rsup|\<circ\>><around|(|exp u|)>> is analytic at
    <math|0> and has the same derivatives as
    <math|\<cal-I\><rsub|t><around|(|u,\<psi\><around|(|u|)>|)>> of every
    order through <math|4>, for every <math|t>;

    <item>(v) for <math|m\<less\>N>,

    <\equation*>
      <around|\||\<alpha\><rsub|N,m>+\<kappa\><rsub|<math-up|slope>>*log
      L<rsub|m>|\|>+1\<leqslant\><math-up|drift><rsub|m+1>;
    </equation*>

    <item>(vi) for <math|m\<less\>N> and every volume and forest, let
    <math|H<rsub|t><around|(|u|)>> be the Hessian of
    <math|\<cal-I\><rsub|t><around|(|u,\<cdot\>|)>> at
    <math|\<psi\><around|(|u|)>>, in the counting basis of the physical
    Lie-algebra coordinates, and define

    <\equation*>
      T<rsub|t><around|(|u|)>=\<cal-L\><rsub|f><rsup|\<circ\>><around|(|U<rsub|F><around|(|u,\<psi\><around|(|u|)>|)>|)>+<tfrac|1|2>log
      det H<rsub|t><around|(|u|)>-log <big|prod><rsub|e<math-up|free>>J<around|(|\<psi\><around|(|u|)><rsub|e>|)>,<space|2em>D<around|(|u|)>=\<alpha\><rsub|N,m>*\<cal-Q\><rsub|c><rsup|\<circ\>><around|(|exp
      u|)>+\<cal-L\><rsub|c><rsup|\<circ\>><around|(|exp u|)>.
    </equation*>

    For every tag <math|t>, <math|det H<rsub|t>\<gtr\>0> near <math|0>, both
    <math|T<rsub|t>> and <math|D> are analytic at <math|0>, and

    <\equation*>
      <around|\||D<rsup|2>*T<rsub|t><around|(|0|)><around|[|a,b|]>-D<rsup|2>*D<around|(|0|)><around|[|a,b|]>|\|>\<leqslant\><around|\||\<Lambda\><rsub|c>|\|>*<space|0.17em>\<Theta\>*\<Lambda\>*e<rsup|-\<gamma\>*c>
    </equation*>

    for any two real plane waves <math|a,b>. Each wave is the real part of a
    lattice Fourier character times a complex amplitude whose every direction
    and colour component has modulus at most <math|1>. Here
    <math|\<Theta\>,\<gamma\>\<gtr\>0> are the assigned stage constants,
    <math|\<Lambda\>> is the fine loop bound, and <math|c> is the coarse
    torus side.
  </itemize-minus>

  A <em|directed history> consists of paid levels (III.2), a horizon
  satisfying the decay, positivity and transfer identities of III.3, kinetic
  data satisfying (i)\U(vi), and a recipe with the same path data. It also
  carries a local Haar-chart formula: on some ball
  <math|B<rsub|r>\<subset\>\<frak-g\>>, the exponential is injective with
  open image, <math|J> is positive and analytic, <math|J<around|(|0|)>=1>,
  and the pushforward of <math|c<rsub|J>*J<around|(|X|)>*<space|0.17em>d*X>
  is Haar measure restricted to that image, for some
  <math|c<rsub|J>\<gtr\>0>; <math|J> is Borel globally.

  A <em|move> between a fine representation <math|\<cal-R\><rsub|m+1>> and a
  coarse representation <math|\<cal-R\><rsub|m>> requires the exact push
  identity, the recipe's continuation and retention conditions, and agreement
  of the coarse path data, clip, norm parameters and lawful bounds with level
  <math|m>. It also requires a forced-activity bound <math|exp
  <around|[|-g<rsub|j><space|0.17em><math-up|monitor><rsub|m+1><rsup|2>|]>>,
  where <math|g<rsub|j>\<gtr\>0> is prescribed and <math|j=J<rsub|m+1>>, and

  <\equation*>
    <around|\||\<beta\><rsub|m>-\<beta\><rsub|m+1>-\<alpha\><rsub|N,m>|\|>\<leqslant\>1.
  </equation*>

  Together with (v), this implies the drift bound of III.1.9(d).

  <em|Status:> definitions of requirements. For simple nonabelian
  <math|\<frak-g\>>, the conditional construction theorems
  <hlink|<verbatim|Roost.companyK>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Linger.lean#L23-L51>
  and <hlink|<verbatim|FundedCompanySelection.company>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedCompanySelection.lean#L49-L106>
  supply directed histories with prescribed paid levels as part of the
  assembly in III.2. The kinetic requirements themselves do not assert a
  coupling reset.

  <em|Lean:> <hlink|<verbatim|PriceGap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L100-L101>,
  <hlink|<verbatim|Critical>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L88-L91>,
  <hlink|<verbatim|Guessed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L97-L98>,
  <hlink|<verbatim|ClassicalMatch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L108-L109>,
  <hlink|<verbatim|extracted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L26-L27>,
  <hlink|<verbatim|Horizon.Suffices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L132-L139>,
  <hlink|<verbatim|Kin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L74-L77>,
  <hlink|<verbatim|Kin.Planned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L93-L115>,
  <hlink|<verbatim|FiniteBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L62-L71>,
  <hlink|<verbatim|thermal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L46-L49>,
  <hlink|<verbatim|hessian>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L42-L44>,
  <hlink|<verbatim|LocalRatio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L28-L38>,
  <hlink|<verbatim|Directed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L26-L36>,
  <hlink|<verbatim|Directed.Move>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L49-L55>.

  <strong|Proposition III.1.13 (tree gauge on blocks).> Functions in (c)\U(d)
  take values in a real Banach space. A <em|forest> assigns to every non-root
  fine site <math|y> (one with <math|y\<ne\>L\<cdot\><math-up|parent><around|(|y|)>>)
  a unit step <math|<math-up|up><around|(|y|)>> and a height
  <math|\<leqslant\>4*L>, such that the height decreases along
  <math|<math-up|up>> and the parent block does not change. The <em|trunks>
  are the links used by these steps; the others are <em|free>.

  <\itemize-minus>
    <item>(a) For odd <math|L> a forest exists: choose an axis on which the
    offset from the block root is nonzero and step towards the root, with the
    <math|\<ell\><rsup|1>> norm of the offset as height.

    <item>(b) Gauging by <math|<math-up|fold><rsub|y>=T<rsub|U>*<around|(|y\<to\><text|root
    along the tree>|)><rsup|-1>> makes every trunk link equal to <math|1>.
    Moreover <math|<math-up|fold>> is <math|1> at the roots and depends only
    on the trunk links.

    <item>(c) If <math|F\<in\>L<rsup|1><around|(|\<mu\><rsub|f>|)>> is
    invariant under gauge transformations equal to <math|1> at the block
    roots, then <math|<big|int>F*<space|0.17em>d*\<mu\><rsub|f>=<big|int>F<around|(|<math-up|drape><space|0.17em>s|)>*<space|0.17em>d*\<mu\><rsub|<math-up|free>><around|(|s|)>>.
    Here <math|<math-up|drape><space|0.17em>s> has trunk links <math|1> and
    free links <math|s>, and <math|\<mu\><rsub|<math-up|free>>> is product
    Haar measure on the free links.

    <item>(d) Hence, if <math|\<rho\><rsub|\<beta\>>> is a kernel satisfying
    III.1.2(a) and <math|F> is gauge invariant and integrable, then
    <math|<around|(|\<cal-P\><rsub|\<beta\>>*F|)><around|(|V|)>=<big|int>\<rho\><rsub|\<beta\>><around|(|<math-up|drape><space|0.17em>s,V|)>*<space|0.17em>F<around|(|<math-up|drape><space|0.17em>s|)>*<space|0.17em>d*\<mu\><rsub|<math-up|free>><around|(|s|)>>.
  </itemize-minus>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Tree.Forest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L24-L29>,
  <hlink|<verbatim|Tree.select>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L33-L72>,
  <hlink|<verbatim|Forest.compress>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L32-L37>,
  <hlink|<verbatim|Forest.names>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L39-L45>,
  <hlink|<verbatim|Forest.pack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L81-L111>,
  <hlink|<verbatim|Forest.pushing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L114-L120>.

  <strong|Proposition III.1.14 (prediction near the trivial configuration).>
  Assume (B1)\U(B3). For a <math|\<frak-g\>>-valued 1-form <math|v> on
  <math|\<Lambda\><rsub|f>>, let <math|U<rsub|v>=<around|(|exp
  v<rsub|e>|)><rsub|e>>. Then for every tag <math|t> and coarse link
  <math|b=<around|(|x,i|)>>:

  <\itemize-minus>
    <item>(a) <math|Q<rsub|b><around|(|U<rsub|0>,t|)>=1>;

    <item>(b) <math|v\<mapsto\>Q<rsub|b><around|(|U<rsub|v>,t|)>> is real
    analytic near <math|v=0>; in a sufficiently small neighbourhood all patch
    frames and bond predictors use their minimizing branches;

    <item>(c) the derivatives at <math|v=0> are, componentwise in
    <math|\<frak-g\>>,
  </itemize-minus>

  <\equation*>
    <tfrac|d|d*s>h<rsup|<around|(|x|)>><rsub|y><around|(|U<rsub|s*v>|)><mid|\|><rsub|0>=\<tau\><rsub|x><around|(|y|)>-\<tau\><rsub|x><around|(|0|)>,<space|2em><tfrac|d|d*s>Q<rsub|b><around|(|U<rsub|s*v>,t|)><mid|\|><rsub|0>=<around|(|\<cal-M\>*v+d<rsub|0>*\<cal-F\>*v|)><around|(|b|)>.
  </equation*>

  Here <math|d<rsub|0>*\<varphi\><around|(|x,i|)>=\<varphi\>*<around|(|x+e<rsub|i>|)>-\<varphi\><around|(|x|)>>
  and <math|\<tau\><rsub|x><around|(|y|)>=-<math-up|avg><rsub|z\<in\>B<rsub|R>><math-up|avg><rsub|o><big|int><rsub|<math-up|route><around|(|L*x+y\<to\>L*x+z;<space|0.17em>o|)>>v>,
  <math|<around|(|\<cal-M\>*v|)><around|(|x,i|)>=<big|sum><rsub|y>w<rsub|y>*<big|int><rsub|L*x+y><rsup|L*x+y+L*e<rsub|i>>v>
  (a straight line integral), and <math|<around|(|\<cal-F\>*v|)><around|(|x|)>=\<tau\><rsub|x><around|(|0|)>-<big|sum><rsub|y>w<rsub|y>*\<tau\><rsub|x><around|(|y|)>>.

  <\itemize-minus>
    <item>(d) The linearization <math|\<cal-Q\>=\<cal-M\>+d<rsub|0>*\<cal-F\>>
    is independent of <math|t> and maps fine pure gauge to coarse pure gauge:
    <math|\<cal-Q\>*<space|0.17em>d<rsub|0>*\<varphi\>=d<rsub|0>*<around|(|\<varphi\>\<circ\><math-up|embed>|)>>.
  </itemize-minus>

  <em|Status:> theorem, with the neighbourhood allowed to depend on the fixed
  step. Since both tag laws are locally uniform, the kernel itself is
  analytic in fine and coarse exponential coordinates near
  <math|<around|(|1,1|)>> for each fixed <math|\<beta\>>. <em|Lean:>
  <hlink|<verbatim|Push.settled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Derivative.lean#L113-L116>,
  <hlink|<verbatim|Push.prediction_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Derivative.lean#L118-L124>,
  <hlink|<verbatim|Push.derivative>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Derivative.lean#L38-L68>,
  <hlink|<verbatim|Push.prices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Derivative.lean#L147-L160>,
  <hlink|<verbatim|Precision.probe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/FrameResponse.lean#L68>,
  <hlink|<verbatim|Precision.root_gradient>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/FrameResponse.lean#L92-L96>.

  <section|2. What it uses><label|2-what-it-uses>

  <strong|From other units.>

  <\itemize-minus>
    <item>I.1 (lattice, gauge groups). This unit uses:

    <\itemize-minus>
      <item>the torus and its cover <math|\<bbb-Z\><rsup|4>>, the block
      subdivision (root, parent), coordinate routes, slabs and layers,
      parallel transport and its gauge rule, the signed symmetries, and the
      lattice forms with <math|d\<circ\>d=0>;

      <item>the gauge group data: chord, price, conjugation invariance,
      probability Haar measure and its two-sided invariance, the exponential
      map;

      <item>the nearest-point map <math|\<pi\>> of
      <math|G\<subset\>M<rsub|N><around|(|\<bbb-C\>|)>>: uniqueness of the
      nearest point within a tubular radius <math|r<rsub|G>>
      (<hlink|<verbatim|nearest_tube>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L141-L153>);
      analyticity of <math|\<pi\>> near <math|1> with
      <math|D*\<pi\><around|(|1|)>=\<Pi\><rsub|\<frak-g\>>>
      (<hlink|<verbatim|focus_deriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L155-L170>);
      the strict-differentiability bound <math|<around|\<\|\|\>|\<pi\><around|(|X|)>-\<pi\><around|(|Y|)>-\<Pi\><rsub|\<frak-g\>>*<around|(|X-Y|)>|\<\|\|\>>\<leqslant\>\<eta\>*<around|\<\|\|\>|X-Y|\<\|\|\>>>
      for <math|X,Y> near <math|1> (<hlink|<verbatim|nearest_approximate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L172-L181>);
      and the first-order condition that <math|1> nearest to <math|X> implies
      <math|X-1\<perp\>\<frak-g\>> (<hlink|<verbatim|nearest_normal_one>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L43-L63>);

      <item>the Wilson energy, the prior and the partition function; and
      <math|C<rsub|A>> (<hlink|<verbatim|casimir>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182>).
    </itemize-minus>

    <item>III.16 (analytic tools): the <math|\<ell\><rsup|1>> size of lattice
    offsets used for forest heights (<hlink|<verbatim|Laurent.size>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L34>).

    <item>III.2 (constants and schedules): the staged choices of kernel and
    analytic constants, block sizes, entry thresholds, barrier and windows,
    with their compatibility conditions (<hlink|<verbatim|Paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162>).
    They enter the statements of III.1.11\UIII.1.12.

    <item>III.10: the proof of the energy-per-seed requirement (see
    III.1.11). III.2 supplies directed histories (see III.1.12).
  </itemize-minus>

  <strong|Standard mathematics.>

  <\itemize-minus>
    <item>Block-spin renormalization for lattice gauge fields, in the
    background-field and axial-gauge setting: T. Baªaban, <em|Propagators and
    renormalization transformations for lattice gauge theories I, II>, Comm.
    Math. Phys. 95 (1984) 17\U40, 96 (1984) 223\U250; <em|Averaging
    operations for lattice gauge theories>, CMP 98 (1985) 17\U51; <em|Spaces
    of regular gauge field configurations on a lattice and gauge fixing
    conditions>, CMP 99 (1985) 75\U102; <em|Renormalization group approach to
    lattice gauge field theories I, II>, CMP 109 (1987) 249\U301, 116 (1988)
    1\U22.

    <item>Axial and tree gauges, and the absence of a Faddeev\UPopov factor
    for compact groups: E. Seiler, <em|Gauge theories as a problem of
    constructive quantum field theory and statistical mechanics>, Lecture
    Notes in Physics 159 (1982). Curvature controls the connection in a
    suitable gauge (continuum analogue): K. Uhlenbeck, CMP 83 (1982) 31\U42.

    <item>Least-squares group synchronization: A. Singer, <em|Angular
    synchronization by eigenvectors and semidefinite programming>, Appl.
    Comput. Harmon. Anal. 30 (2011) 20\U36. Extrinsic means on embedded
    manifolds: R. Bhattacharya, V. Patrangenaru, Ann. Statist. 31 (2003)
    1\U29.

    <item>The tubular neighbourhood theorem and the nearest-point projection;
    the real-analytic implicit function theorem (Krantz\UParks, <em|The
    Implicit Function Theorem>, Birkhäuser 2002), as in
    <hlink|<verbatim|Push.authored>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Implicit.lean#L27-L50>.

    <item>Continuity of a unique minimizer depending on a parameter, when the
    argmin relation is closed and the target compact
    (<hlink|<verbatim|minArg_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L20-L36>).
    Fubini's theorem, Jensen's inequality, and invariance of Haar measure.
  </itemize-minus>

  <strong|Imported constants and assumptions.>

  <\itemize-minus>
    <item>The constants <math|d<around|(|G|)>>, <math|r<rsub|G>> and
    <math|A<around|(|G|)>>, and the clustering constant of Lemma 4.14, depend
    only on <math|G>, through <math|\<pi\>>. The kernel and geometric
    theorems require no simplicity assumption. The construction of directed
    histories cited in III.1.12 assumes that the Lie algebra of <math|G> is
    simple and nonabelian.

    <item>The kernel constants are chosen before the block factors
    ("pre-<math|L>"). <math|L> odd <math|\<geqslant\>3> and
    <math|J\<geqslant\>4> are part of the patch; in a calendar,
    <math|J<rsub|m>> and <math|L<rsub|m>> come from III.2.

    <item><math|\<kappa\><rsub|<math-up|slope>>=11*C<rsub|A>/<around|(|24*\<pi\><rsup|2>|)>>
    enters only through <math|<wide|\<beta\>|^><rsub|m>> and the identity
    <math|<wide|\<beta\>|^><rsub|m+1>=<wide|\<beta\>|^><rsub|m>+\<kappa\><rsub|<math-up|slope>>*log
    L<rsub|m>>.

    <item>The energy-per-seed requirement (III.1.11) and the kinetic data
    (III.1.12) are hypotheses here, discharged in III.10 and III.2
    respectively.
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  The step follows the block-spin method: fix a frame around each coarse
  site, transport across coarse links, average the connectors, and add
  independent Haar-normalized Wilson noise. Two rules define the frames on
  all configurations. When route holonomies in axial gauges are small,
  least-squares synchronization gives a unique frame normalized at the
  centre. Otherwise an axial frame is chosen uniformly among tags satisfying
  the curvature bound. The predictor likewise uses a unique nearest point to
  the weighted matrix mean when the minimum price is small, and a connector
  sampled with weight <math|w> otherwise. Uniqueness and symmetric sampling
  make these rules covariant. The tag probabilities sum to <math|1>, and the
  noise has total mass <math|1>, so the full kernel is normalized.

  The branch cutoffs are independent of the number of patch sites. For frame
  uniqueness, normalize each minimizer by a nearest point to its centroid.
  Centroid differences then have zero tangential projection, making the
  feedback comparison a contraction. Predictor uniqueness follows from the
  tubular neighbourhood of <math|G>. Eligible axial frames exist by induction
  over coordinate slabs: choose a layer of least curvature, fix its gauge,
  and compare the other layers by plaquette bounds.

  For quantitative control, one axial gauge on the macro-box synchronizes the
  surrounding patch frames. Each frame defect costs
  <math|O<around|(|L<rsup|2>|)>> times the curvature sum; the averaging
  weight contributes <math|L<rsup|-4>>. Fine transports cost another <math|L>
  times a link sum of order <math|L>, giving the same <math|L<rsup|-2>>
  coarse-curvature estimate. Near the trivial configuration, the analytic
  implicit function theorem gives the frame and predictor derivatives. Tree
  gauge then reduces integration to free links. These geometric and analytic
  results enter the later energy estimates and stationary-branch analysis.

  <section|4. Steps><label|4-steps>

  <subsection|4.1 The kernel and its normalization><label|41-the-kernel-and-its-normalization>

  <strong|Lemma 4.1 (the tag law is a probability).> Under (B3),
  <math|<big|sum><rsub|t>\<lambda\><around|(|U,t|)>=1>. <em|Sketch:> first
  sum over the bond tags with the frame tags fixed. The connectors are then
  fixed, and each bond factor sums to <math|1>: the mass is uniform on the
  minimizing branch, and it is <math|w>, with <math|<big|sum>w=1>, otherwise.
  The remaining sum factorizes over coarse sites, and each frame factor sums
  to <math|1>: the mass is uniform on all tags, or on the nonempty eligible
  set. <em|Lean:> <hlink|<verbatim|StepData.chosen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L123-L136>,
  <hlink|<verbatim|frameMass_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L127-L136>,
  <hlink|<verbatim|predictorMass_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L138-L144>.

  <strong|Lemma 4.2 (Borel measurability).> Under (B1)\U(B2), for each tag
  the frames, connectors, predictions and <math|\<lambda\><around|(|U,t|)>>
  are Borel functions of <math|U>. <em|Sketch:> <math|M<rsub|\<delta\>>> and
  <math|<around|{|min \<Phi\><rsub|Y>\<less\>\<varepsilon\>|}>> are open. The
  argmin relations are closed and the targets compact, so a unique minimizer
  depends continuously on the parameter. Hence the selected frame is
  continuous on <math|M<rsub|\<delta\>>> and the minimizing predictor is
  continuous where <math|min \<Phi\><rsub|Y>\<less\>\<varepsilon\>>. For a
  fixed tag, fallback frames are continuous in <math|U>. Eligibility is a
  closed condition. Piecewise definitions over Borel sets are Borel.
  <em|Lean:> <hlink|<verbatim|minArg_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L20-L36>,
  <hlink|<verbatim|selected_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L50-L53>,
  <hlink|<verbatim|best_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L55-L61>,
  <hlink|<verbatim|min_open>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L63-L67>.

  <strong|Lemma 4.3 (Proposition III.1.1).> <em|Sketch:> for each link, right
  invariance of Haar measure moves <math|Q<rsub|b>> to <math|1>, so
  <math|<big|int>Z<rsub|\<beta\>><rsup|-1>*e<rsup|-\<beta\>*\<kappa\><space|0.17em><math-up|pr><around|(|V<rsub|b>*Q<rsub|b><rsup|-1>|)>>*d*V<rsub|b>=1>.
  Fubini over the coarse links then gives
  <math|<big|int>\<rho\><rsub|\<beta\>>*<space|0.17em>d*V=<big|sum><rsub|t>\<lambda\>=1>.
  The noise is continuous on a compact space, hence bounded by some
  <math|A<rsub|\<beta\>>>, and <math|\<rho\><rsub|\<beta\>>\<leqslant\>A<rsub|\<beta\>>*<big|sum><rsub|t>\<lambda\>=A<rsub|\<beta\>>>.
  The properties of the push follow from Fubini for the bounded kernel times
  an integrable <math|F>. <em|Lean:> <hlink|<verbatim|noise_mass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L146-L155>,
  <hlink|<verbatim|density_total>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L197-L201>,
  <hlink|<verbatim|density_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L184-L190>,
  <hlink|<verbatim|push_slice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Push.lean#L17-L24>,
  <hlink|<verbatim|push_integral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Push.lean#L37-L43>.

  <subsection|4.2 Covariance><label|42-covariance>

  <strong|Lemma 4.4 (gauge covariance of the patch data).> Assume (B1)\U(B2).
  For every <math|k:\<bbb-Z\><rsup|4>\<to\>G>, <math|M<rsub|\<delta\>>>, the
  eligible sets and frame masses are unchanged under
  <math|W\<mapsto\>k\<cdot\>W>, and the frame becomes
  <math|h<rsub|y>\<mapsto\>k<rsub|0>*h<rsub|y>*k<rsub|y><rsup|-1>>. For a
  gauge <math|k:\<Lambda\><rsub|f>\<to\>G>, the connector of
  <math|<around|(|x,i|)>> becomes <math|k<rsub|L*x>*<space|0.17em>Y<rsub|y>*<space|0.17em>k<rsub|L*<around|(|x+e<rsub|i>|)>><rsup|-1>>.
  The prediction transforms in the same way, with unchanged bond mass.
  <em|Sketch:> <math|T<rsub|k\<cdot\>W><around|(|y\<to\>z;o|)>=k<rsub|y>*T<rsub|W><around|(|y\<to\>z;o|)>*k<rsub|z><rsup|-1>>,
  and ch, pr are class functions. Then <math|S<rsub|k\<cdot\>W>*<around|(|k<rsub|0>*h*k<rsup|-1>|)>=S<rsub|W><around|(|h|)>>,
  the normalization <math|h<rsub|0>=1> is preserved, and (B1) identifies the
  minimizer. The axial costs are conjugated, hence unchanged.
  <math|\<Phi\><rsub|u*Y*v>*<around|(|u*q*v|)>=\<Phi\><rsub|Y><around|(|q|)>>,
  and (B2) identifies the minimizer. <em|Lean:>
  <hlink|<verbatim|frame_gauged>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Transport.lean#L111-L133>,
  <hlink|<verbatim|min_gauged>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Transport.lean#L106-L109>,
  <hlink|<verbatim|updateGauged>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L150-L157>,
  <hlink|<verbatim|bond_gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L54-L62>,
  <hlink|<verbatim|predicts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L23-L35>.

  <strong|Lemma 4.5 (lattice-symmetry covariance of the patch data).> Assume
  (B1)\U(B2). Let <math|s\<in\>\<frak-B\><rsub|4>> act about the centre of a
  patch. Then:

  <\itemize-minus>
    <item><math|M<rsub|\<delta\>>> is invariant; this is why all 24 orderings
    enter its definition;

    <item>frame tags are permuted by <math|<around|(|r,o|)>\<mapsto\><around|(|s*r,<space|0.17em><wide|s|\<bar\>>\<circ\>o|)>>,
    where <math|<wide|s|\<bar\>>\<in\>S<rsub|4>> is the underlying axis
    permutation, and eligibility and masses correspond;

    <item>the frame at tag <math|t> for <math|s<rsub|0>*W> equals the frame
    at the transformed tag for <math|W>, composed with <math|s>;

    <item><math|w> is invariant;

    <item>after reindexing site tags, the connector for the transformed field
    equals the original connector at the image link, composed with <math|s>,
    and inverted when <math|s> reverses that link;

    <item>the prediction commutes with both operations.
  </itemize-minus>

  <em|Sketch:> routes and axial gauges are mapped to routes and axial gauges,
  and the score is invariant; (B1) gives the minimizer. Moreover
  <math|<math-up|pr><around|(|k<rsup|-1>*u|)>=<math-up|pr><around|(|k*u<rsup|-1>|)>>,
  so <math|\<Phi\><rsub|Y<rsup|-1>><around|(|u<rsup|-1>|)>=\<Phi\><rsub|Y><around|(|u|)>>,
  and (B2) applies. <em|Lean:> <hlink|<verbatim|frames_channel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Transport.lean#L77-L94>,
  <hlink|<verbatim|axial_channel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Transport.lean#L30-L32>,
  <hlink|<verbatim|min_channel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Transport.lean#L34-L38>,
  <hlink|<verbatim|good_channel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Transport.lean#L73-L75>,
  <hlink|<verbatim|weight_invariant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Transport.lean#L135-L141>,
  <hlink|<verbatim|bond_pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L37-L42>,
  <hlink|<verbatim|bond_inv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L44-L52>,
  <hlink|<verbatim|StepData.positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L127-L134>,
  <hlink|<verbatim|StepData.negative>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L136-L148>.
  <em|(proof read, including <hlink|<verbatim|Axial.channels>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Channel.lean#L117-L127>)>

  <strong|Lemma 4.6 (Proposition III.1.2).> <em|Sketch:> (b) The bijection of
  tag configurations that relocates frame tags to image sites, maps them by
  <math|s>, and maps bond tags by <math|s> gives
  <math|\<lambda\><around|(|s<rsub|L*b>*U,t|)>=\<lambda\><around|(|U,t<rprime|'>|)>>
  and <math|Q<around|(|s<rsub|L*b>*U,t|)>=s<rsub|b>*Q<around|(|U,t<rprime|'>|)>>.
  The noise is invariant under the simultaneous symmetry, including inversion
  of both arguments. Reindex the sum over tags. (a) <math|\<lambda\>> is
  invariant and <math|Q\<mapsto\><around|(|k\<circ\><math-up|embed>|)>\<cdot\>Q>;
  the noise is invariant because <math|<math-up|pr><around|(|k*V*k<rprime|'><rsup|-1>*<around|(|k*Q*k<rprime|'><rsup|-1>|)><rsup|-1>|)>=<math-up|pr><around|(|V*Q<rsup|-1>|)>>.
  (c) is immediate. <em|Lean:> <hlink|<verbatim|mass_channel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L22-L34>,
  <hlink|<verbatim|prediction_channel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L13-L20>,
  <hlink|<verbatim|noise_channel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L36-L48>,
  <hlink|<verbatim|withinChoice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L88>,
  <hlink|<verbatim|channel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L50-L54>,
  <hlink|<verbatim|covary>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L56-L67>.

  <subsection|4.3 Axial gauges and the branch
  constants><label|43-axial-gauges-and-the-branch-constants>

  <strong|Lemma 4.7 (comparison of parallel layers).> Fix <math|r,o,l> as in
  III.1.4 and an axis <math|j\<nin\>l>. Let <math|S<rprime|'>> be the slab
  for <math|l+<around|[|j|]>>, and suppose all <math|j>-links inside
  <math|S<rprime|'>> equal <math|1>. Let <math|S<rsub|z>> be the layer of
  <math|S<rprime|'>> with <math|j>-th coordinate <math|z>. Then
  <math|<around|\||E<rsub|S<rsub|z>>-E<rsub|S<rsub|u>>|\|>\<leqslant\>4*F<rsub|S<rprime|'>>>
  for every <math|z,u\<in\><around|{|-r,\<ldots\>,r|}>>. <em|Sketch:> with
  trivial <math|j>-links, the <math|<around|(|i,j|)>>-plaquette at <math|y>
  has holonomy <math|U<rsub|<around|(|y,i|)>>*U<rsub|<around|(|y+e<rsub|j>,i|)>><rsup|-1>>.
  The inequality <math|<around|\||<math-up|ch><around|(|a|)>-<math-up|ch><around|(|b|)>|\|>\<leqslant\><math-up|ch><around|(|a*b<rsup|-1>|)>>
  is a discrete Stokes inequality. Summing it over the four axes <math|i> and
  over <math|y> in a layer bounds <math|<around|\||E<rsub|S<rsub|z+1>>-E<rsub|S<rsub|z>>|\|>>
  by <math|4\<times\>> the plaquette sum at the sites of <math|S<rsub|z>>.
  Telescoping uses each layer once. <em|Lean:>
  <hlink|<verbatim|variation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Slide.lean#L72-L85>,
  <hlink|<verbatim|squares>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Slide.lean#L60-L70>,
  <hlink|<verbatim|slide_le>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Slide.lean#L87-L118>,
  <hlink|<verbatim|window_le>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Slide.lean#L120-L152>.

  <strong|Lemma 4.8 (Proposition III.1.4).> <em|Sketch:> induction on
  <math|<around|\||l|\|>>; the case <math|l=\<emptyset\>> is trivial. For
  <math|l<rprime|'>=l+<around|[|j|]>>, the slab <math|S<rprime|'>> is the
  disjoint union of <math|2*r+1> layers <math|S<rsub|z>>, each a slab for
  <math|l>. Choose the layer <math|z<rsub|0>> with the least curvature, so
  that <math|<around|(|2*r+1|)>*F<rsub|S<rsub|z<rsub|0>>>\<leqslant\>F<rsub|S<rprime|'>>>.
  By induction there is a root <math|x\<in\>S<rsub|z<rsub|0>>> with
  <math|E<rsub|S<rsub|z<rsub|0>>>\<leqslant\>4<around|\||l|\|>*<around|(|2*r+1|)>*F<rsub|S<rsub|z<rsub|0>>>\<leqslant\>4<around|\||l|\|>*F<rsub|S<rprime|'>>>
  in its axial gauge along <math|l>. Extend that gauge by moving along
  <math|j> last. Then all <math|j>-links in <math|S<rprime|'>> are trivial,
  and the gauge on <math|S<rsub|z<rsub|0>>> is unchanged. By Lemma 4.7,

  <\equation*>
    E<rsub|S<rprime|'>>=<big|sum><rsub|z>E<rsub|S<rsub|z>>\<leqslant\><around|(|2*r+1|)>*<around*|(|4\|l\|+4|)>*F<rsub|S<rprime|'>>=4<around|\||l<rprime|'>|\|>*<around|(|2*r+1|)>*F<rsub|S<rprime|'>>.
  </equation*>

  The choice of the cheapest layer is what closes the induction. <em|Lean:>
  <hlink|<verbatim|existence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L80-L105>,
  <hlink|<verbatim|total_slab>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L43-L78>,
  <hlink|<verbatim|vertical>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L22-L41>,
  <hlink|<verbatim|faces_pins>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Slide.lean#L49-L58>.

  <strong|Lemma 4.9 ((B3) for <math|a\<geqslant\>16>).> For every <math|W>
  and every ordering <math|o> there is a root <math|r> with
  <math|E<rsub|B<rsub|R>>*<around|(|a<rsup|<around|(|r,o|)>>\<cdot\>W|)>\<leqslant\>16*<around|(|2*R+1|)>*F<rsub|B<rsub|R>><around|(|W|)>>.
  <em|Sketch:> apply III.1.4 to the whole box with the four axes in the order
  <math|o>; then <math|4\<cdot\>4=16>. <em|Lean:>
  <hlink|<verbatim|Axial.eligible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L119-L134>,
  <hlink|<verbatim|edge_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L107-L113>.

  <strong|Lemma 4.10 (structure of the synchronization problem).> Let
  <math|W> be as in III.1.5, with centroid
  <math|m<around|(|h|)>=<math-up|avg><rsub|x>h<rsub|x>> and <em|feedback>
  <math|F<rsub|x><around|(|h|)>=<math-up|avg><rsub|y,k>h<rsub|y>*W<rsub|x*y*k><rsup|-1>>,
  both computed in <math|M<rsub|N><around|(|\<bbb-C\>|)>>.

  <\itemize-minus>
    <item>(a) <math|u> minimizes <math|<big|sum><rsub|i>w<rsub|i><space|0.17em><math-up|pr><around|(|f<rsub|i>*u<rsup|-1>|)>>
    (with <math|w<rsub|i>\<geqslant\>0>, <math|<big|sum>w<rsub|i>=1>) if and
    only if <math|u> is a nearest point of <math|G> to
    <math|<big|sum><rsub|i>w<rsub|i>*f<rsub|i>>.

    <item>(b) The cost is invariant under <math|h\<mapsto\>c*h>. For every
    global minimizer, <math|h<rsub|x>> is a nearest point of <math|G> to
    <math|F<rsub|x><around|(|h|)>> for every <math|x>; this is the
    self-consistency condition. Changing only <math|h<rsub|x>> combines the
    two off-diagonal contributions by reflection symmetry. The original
    diagonal contribution is zero; the added diagonal term for the competitor
    is nonnegative. Thus the comparison also holds with the self term
    included in <math|F<rsub|x><around|(|h|)>>.

    <item>(c) If <math|h> is a global minimizer and
    <math|<around|\<\|\|\>|W-1|\<\|\|\>>\<leqslant\>d>, then
    <math|<math-up|cost><around|(|h|)>\<leqslant\><math-up|cost><around|(|1|)>\<leqslant\>d<rsup|2>/<around|(|2*N|)>>,
    so <math|<math-up|avg><rsub|x,y><around|\<\|\|\>|h<rsub|x>-h<rsub|y>|\<\|\|\>><rsup|2>\<leqslant\>4*d<rsup|2>>.
    If moreover <math|1> is a nearest point to <math|m<around|(|h|)>>, then
    <math|<around|\<\|\|\>|m<around|(|h|)>-1|\<\|\|\>>\<leqslant\>2*d> and
    <math|<around|\<\|\|\>|F<rsub|x><around|(|h|)>-1|\<\|\|\>>\<leqslant\>3*d>.

    <item>(d) If <math|max<rsub|x><around|\<\|\|\>|p<rsub|x>-q<rsub|x>|\<\|\|\>>\<leqslant\>u>,
    then <math|<around|\<\|\|\>|F<rsub|x><around|(|p|)>-F<rsub|x><around|(|q|)>|\<\|\|\>>\<leqslant\>u>
    and <math|<around|\<\|\|\>|F<rsub|x><around|(|p|)>-F<rsub|x><around|(|q|)>-<around|(|m<around|(|p|)>-m<around|(|q|)>|)>|\<\|\|\>>\<leqslant\>u*d>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|min_iff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Center.lean#L72-L93>,
  <hlink|<verbatim|price_diff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Center.lean#L63-L70>,
  <hlink|<verbatim|min_cov>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L64-L98>,
  <hlink|<verbatim|self_consistent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L100-L123>,
  <hlink|<verbatim|compare_energy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L127-L156>,
  <hlink|<verbatim|cluster>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L158-L170>,
  <hlink|<verbatim|closeness>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L172-L188>,
  <hlink|<verbatim|changes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L190-L201>,
  <hlink|<verbatim|weak_changes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L203-L226>.

  <strong|Lemma 4.11 (Proposition III.1.5).> <em|Sketch:> let
  <math|\<delta\><rsub|1>> be the radius for which the
  strict-differentiability bound of <math|\<pi\>> at <math|1> holds with
  <math|\<eta\>=1/4>, and take <math|d=min
  <around|(|\<delta\><rsub|1>/4,1/4|)>>, so that
  <math|3*d\<less\>\<delta\><rsub|1>>. Left-multiply each minimizer by the
  inverse of a nearest point to its centroid. Then <math|1> is nearest to
  both centroids, and by 4.10(b) both are still minimizers. Let <math|p,q> be
  the normalized minimizers, <math|u=max<rsub|x><around|\<\|\|\>|p<rsub|x>-q<rsub|x>|\<\|\|\>>>
  attained at <math|x>, and <math|B=F<rsub|x><around|(|p|)>-F<rsub|x><around|(|q|)>>.
  By 4.10(c) both feedbacks lie within <math|3*d\<less\>\<delta\><rsub|1>> of
  <math|1>, and self-consistency makes <math|p<rsub|x>,q<rsub|x>> nearest
  points to these feedbacks. Hence <math|<around|\<\|\|\>|p<rsub|x>-q<rsub|x>-\<Pi\><rsub|\<frak-g\>>*B|\<\|\|\>>\<leqslant\><frac|1|4><around|\<\|\|\>|B|\<\|\|\>>\<leqslant\><frac|u|4>>.
  Since <math|m<around|(|p|)>-1> and <math|m<around|(|q|)>-1> are normal to
  <math|\<frak-g\>>, <math|\<Pi\><rsub|\<frak-g\>>*<around|(|m<around|(|p|)>-m<around|(|q|)>|)>=0>,
  and 4.10(d) gives <math|<around|\<\|\|\>|\<Pi\><rsub|\<frak-g\>>*B|\<\|\|\>>\<leqslant\>u*d>.
  So <math|u\<leqslant\>u*d+u/4\<leqslant\>u/2>, hence <math|u=0> and
  <math|p=q>. Undoing the normalization gives <math|h<rprime|'>=c*h>.
  <em|Lean:> <hlink|<verbatim|align>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L232-L272>.

  <strong|Lemma 4.12 ((B1) and (B2) on patches).> (B1) holds if
  <math|\<delta\>\<leqslant\>d/<sqrt|N>>, and (B2) holds if
  <math|\<varepsilon\>\<leqslant\>r<rsub|G><rsup|2>/<around|(|2*N|)>>, for
  every patch. <em|Sketch:> (B1). Take <math|n=B<rsub|R>>,
  <math|\<Lambda\>=S<rsub|4>> and <math|W<rsub|y*z*o>=a<rsub|y>*T<around|(|y\<to\>z;o|)>*a<rsub|z><rsup|-1>>,
  where <math|a> is the axial frame from the centre with the identity
  ordering. The involution <math|\<sigma\>> reverses the ordering, since the
  reversed route is the route with the reversed ordering. On
  <math|M<rsub|\<delta\>>>, <math|<around|\<\|\|\>|W-1|\<\|\|\>>=<sqrt|N><space|0.17em><math-up|ch><around|(|W|)>\<less\>d>.
  Since <math|S<rsub|W><around|(|h|)>=<math-up|cost><around|(|h*a<rsup|-1>|)>>
  and the cost is left invariant, a constrained minimizer is a global
  minimizer. By III.1.5 two of them differ by a constant, which equals
  <math|1> at the centre. (B2). If <math|\<Phi\><rsub|Y><around|(|u|)>\<less\>r<rsub|G><rsup|2>/<around|(|2*N|)>>,
  Jensen's inequality gives <math|<around|\<\|\|\>|<big|sum>w<rsub|y>*Y<rsub|y>-u|\<\|\|\>><rsup|2>\<leqslant\><big|sum>w<rsub|y>*<around|\<\|\|\>|Y<rsub|y>-u|\<\|\|\>><rsup|2>=2*N*\<Phi\><rsub|Y><around|(|u|)>\<less\>r<rsub|G><rsup|2>>.
  So the mean has a unique nearest point, which by 4.10(a) is the unique
  minimizer. <em|Lean:> <hlink|<verbatim|frame_unique>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Uniform.lean#L18-L56>,
  <hlink|<verbatim|predictor_unique>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Uniform.lean#L58-L63>,
  <hlink|<verbatim|weighted_unique>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Center.lean#L95-L108>.

  <strong|Lemma 4.13 (Proposition III.1.3).> Combine 4.9 and 4.12. <em|Lean:>
  <hlink|<verbatim|viable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L137-L142>.

  <subsection|4.4 Synchronization and the <math|L<rsup|-2>>
  estimate><label|44-synchronization-and-the-l-2-estimate>

  <strong|Lemma 4.14 (clustering of minimizers for arbitrary data).> There is
  <math|C<rsub|G>\<gtr\>0> such that for all finite nonempty
  <math|n,\<Lambda\>> and all <math|W> satisfying the diagonal and reflection
  conditions of III.1.5, every global minimizer <math|h> admits
  <math|y\<in\>G> with <math|<math-up|avg><rsub|x><math-up|ch><around|(|h<rsub|x>*y<rsup|-1>|)>\<leqslant\>C<rsub|G><space|0.17em><math-up|avg><rsub|x,z,k><math-up|ch><around|(|W<rsub|x*z*k>|)>>.
  <em|Sketch:> write <math|<math-up|inc><rsub|x>=<math-up|avg><rsub|z,k><math-up|ch><around|(|W<rsub|x*z*k>|)>>
  and <math|<wide|\<mu\>|\<bar\>>=<math-up|avg><rsub|x><math-up|inc><rsub|x>>.
  Since <math|<math-up|ch><rsup|2>\<leqslant\>2<space|0.17em><math-up|ch>>,
  <math|<math-up|cost><around|(|h|)>\<leqslant\><math-up|cost><around|(|1|)>\<leqslant\><wide|\<mu\>|\<bar\>>>,
  so <math|<math-up|avg><around|\<\|\|\>|h<rsub|x>-h<rsub|z>|\<\|\|\>><rsup|2>\<leqslant\>8*N<wide|\<mu\>|\<bar\>>>.
  Let <math|\<delta\><rsub|1>> be the radius for which the
  strict-differentiability bound of <math|\<pi\>> at <math|1> holds with
  <math|\<eta\>=1>.

  <\itemize-minus>
    <item>If <math|<wide|\<mu\>|\<bar\>>\<less\>\<sigma\>=\<delta\><rsub|1><rsup|2>/<around|(|32*N|)>>:
    normalize so that <math|1> is nearest to the centroid, which then lies
    within <math|\<delta\><rsub|1>/2> of <math|1>. Also
    <math|<around|\<\|\|\>|F<rsub|x>-m|\<\|\|\>>\<leqslant\><sqrt|N><space|0.17em><math-up|inc><rsub|x>>.
    For <math|x> with <math|<math-up|inc><rsub|x>\<less\>\<delta\><rsub|1>/<around|(|2*<sqrt|N>|)>>,
    the derivative bound gives <math|<around|\<\|\|\>|h<rsub|x>-1|\<\|\|\>>\<leqslant\>2*<around|\<\|\|\>|F<rsub|x>-m|\<\|\|\>>>,
    that is <math|<math-up|ch><around|(|h<rsub|x>|)>\<leqslant\>2<space|0.17em><math-up|inc><rsub|x>>.
    For the other <math|x>, use <math|<math-up|ch>\<leqslant\>2>.

    <item>If <math|<wide|\<mu\>|\<bar\>>\<geqslant\>\<sigma\>>: use
    <math|<math-up|ch>\<leqslant\>2\<leqslant\><around|(|2/\<sigma\>|)><wide|\<mu\>|\<bar\>>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Pressure.cluster>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Single.lean#L77-L130>,
  <hlink|<verbatim|price_square>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Single.lean#L37-L64>,
  <hlink|<verbatim|income_bounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Single.lean#L66-L75>.

  <strong|Lemma 4.15 (route counting).> For every ordering <math|o>:
  <math|<big|sum><rsub|y,z\<in\>B<rsub|r>><math-up|ch><space|0.17em>T<rsub|U><around|(|y\<to\>z;o|)>\<leqslant\>4<space|0.17em><around|\||B<rsub|r>|\|>*<space|0.17em><around|(|2*r+1|)>*<space|0.17em>E<rsub|B<rsub|r>><around|(|U|)>>.
  <em|Sketch:> induction over the axes of the route. The last segment, along
  the axis <math|j>, starts at the point <math|\<zeta\><around|(|y,z|)>> that
  has the already-processed coordinates of <math|z> and the other coordinates
  of <math|y>. Its chord is at most the sum of the link chords on the whole
  <math|j>-line through <math|\<zeta\><around|(|y,z|)>>. The map
  <math|<around|(|y,z|)>\<mapsto\>\<zeta\><around|(|y,z|)>> is
  <math|<around|\||B<rsub|r>|\|>>-to-one onto <math|B<rsub|r>>, and each
  <math|j>-link lies on one line containing <math|2*r+1> points. <em|Lean:>
  <hlink|<verbatim|route_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Route.lean#L107-L130>,
  <hlink|<verbatim|marginal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Route.lean#L50-L54>,
  <hlink|<verbatim|slidings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Route.lean#L56-L60>,
  <hlink|<verbatim|Road.revenue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Gauge.lean#L55-L69>.

  <strong|Lemma 4.16 (Proposition III.1.6).> <em|Sketch:> <em|Minimizing
  branch.> Since <math|T<rsub|H\<cdot\>W>=H*<space|0.17em>T<rsub|W>*H<rsup|-1>>,
  the family <math|y\<mapsto\>h<rsub|y>*H<rsub|y><rsup|-1>> is a global
  minimizer of the synchronization cost for the data
  <math|T<rsub|H\<cdot\>W><around|(|y\<to\>z;o|)>>. By 4.14 and 4.15 there is
  <math|c> with <math|<big|sum><rsub|y><math-up|ch><around|(|h<rsub|y>*H<rsub|y><rsup|-1>*c<rsup|-1>|)>\<leqslant\>4*C<rsub|G>*<around|(|2*R+1|)>*E<rsub|B<rsub|R>>*<around|(|H\<cdot\>W|)>>.
  The cutoff <math|\<delta\>> plays no role here. <em|Fallback branch.> Here
  <math|h> is the normalized axial frame of an eligible tag, so
  <math|E<rsub|B<rsub|R>>*<around|(|h\<cdot\>W|)>\<leqslant\>a*<around|(|2*R+1|)>*F<rsub|B<rsub|R>><around|(|W|)>>.
  Put <math|g=h*H<rsup|-1>>; the pure-gauge configuration <math|g\<cdot\>1>
  satisfies <math|E*<around|(|g\<cdot\>1|)>\<leqslant\>E*<around|(|h\<cdot\>W|)>+E*<around|(|H\<cdot\>W|)>>
  by the triangle inequality. Apply 4.15 to <math|g\<cdot\>1>, whose route
  transports are <math|g<rsub|y>*g<rsub|z><rsup|-1>>, and choose <math|v>
  with <math|<big|sum><rsub|y><math-up|ch><around|(|g<rsub|y>*g<rsub|v><rsup|-1>|)>>
  at most its average over <math|v>. Then <math|c=g<rsub|v>>. In both cases
  <math|A=max <around|(|4*C<rsub|G>,4|)>>, and
  <math|<math-up|ch><around|(|c<rsup|-1>*x|)>=<math-up|ch><around|(|x*c<rsup|-1>|)>>.
  <em|Lean:> <hlink|<verbatim|synchronized>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Gauge.lean#L135-L162>,
  <hlink|<verbatim|Road.strips>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Gauge.lean#L34-L49>,
  <hlink|<verbatim|risks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Gauge.lean#L75-L88>,
  <hlink|<verbatim|fallback>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Gauge.lean#L95-L132>.

  <strong|Lemma 4.17 (elementary bounds on the step geometry).>

  <\itemize-minus>
    <item>(a) If <math|X+v\<subset\>Y>, then the link and plaquette sums over
    <math|X> of the configuration translated by <math|v> are at most those
    over <math|Y>.

    <item>(b) <math|w<rsub|y>*<space|0.17em>L<rsup|4>\<leqslant\>1> for all
    <math|y>. One summand <math|\<xi\><rsub|1>> is uniform on
    <math|L<rsup|4>> points and independent of the others; only
    <math|J\<geqslant\>1> is used.

    <item>(c) <math|<big|sum><rsub|y\<in\>B<rsub|R>><math-up|ch><space|0.17em>T<rsub|U>*<around|(|y+v\<to\>y+v+\<ell\>*e<rsub|j>|)>\<leqslant\>\<ell\>*<space|0.17em>E<rsub|X><around|(|U|)>>,
    provided all these segments lie in <math|X>.

    <item>(d) For all <math|\<xi\>,\<eta\>\<in\>G> and every bond tag,
    <math|<math-up|ch><around|(|\<xi\><rsup|-1>*Q<rsub|b>*\<eta\>|)>\<leqslant\>2*max
    <around|(|1,\<varepsilon\><rsup|-1>|)>*<big|sum><rsub|y>w<rsub|y><space|0.17em><math-up|ch><around|(|\<xi\><rsup|-1>*Y<rsub|y>*\<eta\>|)>>.
    On the minimizing branch <math|Q<rsub|b>> is nearest to the mean
    <math|<wide|Y|\<bar\>>=<big|sum>w<rsub|y>*Y<rsub|y>>, so
    <math|<around|\<\|\|\>|Q<rsub|b>-\<xi\>*\<eta\><rsup|-1>|\<\|\|\>>\<leqslant\>2*<around|\<\|\|\>|<wide|Y|\<bar\>>-\<xi\>*\<eta\><rsup|-1>|\<\|\|\>>>.
    On the fallback branch, <math|\<varepsilon\>\<leqslant\>\<Phi\><rsub|Y>*<around|(|\<xi\>*\<eta\><rsup|-1>|)>\<leqslant\><big|sum>w<rsub|y><math-up|ch><around|(|\<xi\><rsup|-1>*Y<rsub|y>*\<eta\>|)>>
    because <math|<math-up|pr>\<leqslant\><math-up|ch>>, while
    <math|<math-up|ch>\<leqslant\>2>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|spread>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Macro.lean#L16-L43>,
  <hlink|<verbatim|light>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Macro.lean#L48-L79>,
  <hlink|<verbatim|traverse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Macro.lean#L81-L100>,
  <hlink|<verbatim|price_query>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Macro.lean#L102-L129>.

  <strong|Lemma 4.18 (Proposition III.1.7).> <em|Sketch:> apply III.1.4 once,
  on <math|B<rsub|R<rprime|'>>> around <math|L*x> with all four axes. This
  gives one gauge <math|H> with <math|E<rsub|B<rsub|R<rprime|'>>>*<around|(|H\<cdot\>U<rsup|<around|(|x|)>>|)>\<leqslant\>16*<around|(|2*R<rprime|'>+1|)><space|0.17em><math-up|port>\<leqslant\>16*<space|0.17em>\<ell\><rsub|j>*L<space|0.17em><math-up|port>>.
  For <math|y\<in\>B<rsub|2>>, the patch of <math|x+y> is the translate of
  <math|B<rsub|R>> by <math|L*y> and lies inside <math|B<rsub|R<rprime|'>>>.
  Apply III.1.6 to it, with the translated gauge
  <math|H*<around|(|\<cdummy\>+L*y|)>>; this gives <math|p<rsub|y>>. Bound
  its edge and face sums by those of <math|B<rsub|R<rprime|'>>> using
  4.17(a), and use <math|2*R+1\<leqslant\>\<ell\><rsub|j>*L>. Every tag with
  <math|\<lambda\>\<gtr\>0> is usable, because a vanishing frame mass would
  make <math|\<lambda\>> vanish. <em|Lean:>
  <hlink|<verbatim|planting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L72-L122>,
  <hlink|<verbatim|wraps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L65-L69>.

  <strong|Lemma 4.19 (link comparison).> In the setting of III.1.7, for
  <math|y,y+e<rsub|i>\<in\>B<rsub|2>> with pads <math|\<xi\>=p<rsub|y>> and
  <math|\<eta\>=p<rsub|y+e<rsub|i>>>:

  <\equation*>
    L<rsup|2><space|0.17em><math-up|ch><around*|(|\<xi\><rsup|-1>*Q<rsub|<around|(|x+y,i|)>>*\<eta\>|)>\<leqslant\>2*max
    <around|(|1,\<varepsilon\><rsup|-1>|)>*<around|(|2*C+D|)><space|0.17em><math-up|port><around|(|x,U|)>.
  </equation*>

  <em|Sketch:> write <math|\<xi\><rsup|-1>*Y<rsub|k>*\<eta\>=f<rsub|k>\<cdot\>T<rsub|H\<cdot\>U<rsup|<around|(|x|)>>>*<around|(|k+L*y\<to\>k+L*y+L*e<rsub|i>|)>\<cdot\>g<rsub|k><rsup|-1>>,
  where <math|f<rsub|k>,g<rsub|k>> are the frame defects of III.1.7. Then
  <math|<math-up|ch><around|(|\<xi\><rsup|-1>*Y<rsub|k>*\<eta\>|)>\<leqslant\><math-up|ch>f<rsub|k>+<math-up|ch>T+<math-up|ch>g<rsub|k>>.
  Multiply by <math|w<rsub|k>*L<rsup|4>\<leqslant\>1> and sum: the defects
  contribute <math|\<leqslant\>2*C*L<rsup|2><space|0.17em><math-up|port>>,
  and by 4.17(c) the transports contribute
  <math|\<leqslant\>L*<space|0.17em>E<rsub|B<rsub|R<rprime|'>>>\<leqslant\>D*L<rsup|2><space|0.17em><math-up|port>>.
  Conclude with 4.17(d). <em|Lean:> <hlink|<verbatim|indicated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L129-L179>.

  <strong|Lemma 4.20 (Proposition III.1.8).> <em|Sketch:> conjugate the
  plaquette holonomy of <math|Q> at <math|x> by <math|p<rsub|0>>. It factors
  into four padded links <math|p<rsub|y><rsup|-1>*Q*<space|0.17em>p<rsub|y<rprime|'>>>,
  with <math|y,y<rprime|'>\<in\><around|{|0,e<rsub|i>,e<rsub|k>,e<rsub|i>+e<rsub|k>|}>\<subset\>B<rsub|1>>,
  and the intermediate pads cancel. The triangle inequality and 4.19 give
  <math|<math-up|ch>\<leqslant\>4\<cdot\>2*max
  <around|(|1,\<varepsilon\><rsup|-1>|)>*<around|(|2*C+D|)>*L<rsup|-2><space|0.17em><math-up|port>>.
  For <math|V>, <math|<math-up|ch><around|(|V<rsub|<around|(|x,p|)>>*Q<rsub|<around|(|x,p|)>><rsup|-1>|)>\<leqslant\><math-up|fuel>>
  by a telescoping product estimate. <em|Lean:>
  <hlink|<verbatim|qdc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L210-L252>,
  <hlink|<verbatim|comp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L192-L207>.

  <subsection|4.5 Near the trivial configuration><label|45-near-the-trivial-configuration>

  <strong|Lemma 4.21 (Proposition III.1.14).> <em|Sketch:>

  <\enumerate>
    <item><math|U<rsub|0>> lies in <math|M<rsub|\<delta\>>>, which is open,
    and at <math|v=0> the frame is <math|h\<equiv\>1> by (B1).

    <item>By 4.10(b) the frame solves <math|h<rsub|0>=1> and
    <math|h<rsub|y>=\<pi\>*<around*|(|<math-up|avg><rsub|z,o>h<rsub|z>*T<rsub|U<rsub|v>><around|(|y\<to\>z;o|)><rsup|-1>|)>>
    for <math|y\<ne\>0>. This system is real analytic near
    <math|<around|(|0,1|)>>. A variation <math|u> in the kernel of its
    partial derivative satisfies <math|u<rsub|0>=0> and
    <math|u<rsub|y>=\<Pi\><rsub|\<frak-g\>><around|(|<math-up|avg><space|0.17em>u|)>>
    for <math|y\<ne\>0>. If <math|n=<around|\||B<rsub|R>|\|>> and
    <math|A=\<Pi\><rsub|\<frak-g\>><around|(|<math-up|avg><space|0.17em>u|)>>,
    then <math|A=<around|(|n-1|)>*A/n>, so <math|u=0>. Finite dimensionality
    makes the derivative invertible. Continuity of the selected minimizer
    identifies it with the analytic implicit solution.

    <item>Differentiate the fixed-point equation, using
    <math|D*\<pi\><around|(|1|)>=\<Pi\><rsub|\<frak-g\>>> and the fact that
    the derivative of a transport along <math|w> is the line integral of
    <math|v> along <math|w>. This gives <math|h<rprime|'><rsub|y>=\<Pi\><rsub|\<frak-g\>><around|(|<math-up|avg><space|0.17em>h<rprime|'>|)>+\<tau\><around|(|y|)>>;
    with <math|h<rprime|'><rsub|0>=0> this is
    <math|h<rprime|'><rsub|y>=\<tau\><around|(|y|)>-\<tau\><around|(|0|)>>.

    <item>Near <math|0>, <math|min \<Phi\><rsub|Y>\<less\>\<varepsilon\>> (it
    is <math|0> at <math|v=0>), so <math|Q<rsub|b>=\<pi\><around|(|<big|sum>w<rsub|y>*Y<rsub|y>|)>>,
    which is analytic. Its derivative is <math|<big|sum><rsub|y>w<rsub|y>*Y<rprime|'><rsub|y>=<around|(|\<cal-M\>*v+d<rsub|0>*\<cal-F\>*v|)><around|(|b|)>>.

    <item>For an exact form <math|d<rsub|0>*\<varphi\>>, the line integrals
    telescope; this gives (d).
  </enumerate>

  <em|Lean:> <hlink|<verbatim|hats_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Pred.lean#L79-L87>,
  <hlink|<verbatim|stars>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Pred.lean#L116-L127>,
  <hlink|<verbatim|scheme>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Pred.lean#L129-L187>,
  <hlink|<verbatim|focused>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Pred.lean#L44-L47>,
  <hlink|<verbatim|derivative>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Derivative.lean#L38-L68>,
  <hlink|<verbatim|lips>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Derivative.lean#L95-L111>,
  <hlink|<verbatim|prices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Derivative.lean#L147-L160>,
  <hlink|<verbatim|root_gradient>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/FrameResponse.lean#L92-L96>,
  <hlink|<verbatim|Exterior.curvature_linear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Exterior/Complex.lean#L99-L116>.

  <subsection|4.6 Tree gauge><label|46-tree-gauge>

  <strong|Lemma 4.22 (Proposition III.1.13).> <em|Sketch:> (a) Because
  <math|L> is odd, blocks are centred at their roots and the offset <math|q>
  lies in <math|B<rsub|<around|(|L-1|)>/2>>. A step towards <math|0> along an
  axis with <math|q<rsub|a>\<ne\>0> decreases
  <math|<around|\||q|\|><rsub|1>\<leqslant\>4*L> and stays in the block. (b)
  <math|<math-up|fold><rsub|y><space|0.17em>U<rsub|<math-up|up><around|(|y|)>>=<math-up|fold><rsub|y+<math-up|up><around|(|y|)>>>,
  by induction on the height. (c) Split the links into trunks and free links;
  this split preserves the measure. For fixed trunk values, gauging by
  <math|<math-up|fold>> (trunks set to <math|1>) sends the trunk values to
  <math|1>. On the free links it acts as <math|s<rsub|e>\<mapsto\>k<rsub|e<rsup|->>*s<rsub|e>*k<rsub|e<rsup|+>><rsup|-1>>,
  which preserves product Haar measure, and <math|F> is unchanged because
  <math|k=1> at the roots. (d) <math|U\<mapsto\>\<rho\><rsub|\<beta\>><around|(|U,V|)>*F<around|(|U|)>>
  is invariant under gauge transformations that are trivial at the roots, by
  III.1.2(a). <em|Lean:> <hlink|<verbatim|select>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L33-L72>,
  <hlink|<verbatim|compress>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L32-L37>,
  <hlink|<verbatim|names>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L39-L45>,
  <hlink|<verbatim|pack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L81-L111>,
  <hlink|<verbatim|pushing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L114-L120>.

  <subsection|4.7 Formats and energy accounting><label|47-formats-and-energy-accounting>

  <strong|Lemma 4.23 (the theorems of III.1.9).>

  <\itemize-minus>
    <item>Gas without flags: an admissible family must cover the empty flag
    set by nonempty inventories, so only the empty family occurs.

    <item>Locality: flags on <math|X> depend only on the plaquettes meeting
    <math|X>.

    <item>Envelope: summing the per-site bounds on the finite torus gives
    summable majorants for the regular and forced activities. The gas is
    dominated by the convergent sum of products of the forced majorants. Row
    and atom series have summable majorants as well; the Borel masks preserve
    these bounds. The exponent and gas are therefore Borel and bounded.

    <item>Partition function: decreasing induction on <math|m>, using
    <math|<math-up|eval><rsub|m>=\<cal-P\><space|0.17em><math-up|eval><rsub|m+1>>,
    the identity <math|<big|int>\<cal-P\>*F=<big|int>F> (III.1.1, with the
    kernel property at each level), and the initial condition
    <math|<math-up|eval><rsub|N>=e<rsup|-\<beta\>*<big|sum><math-up|pr>>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|gas_one>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L135-L147>,
  <hlink|<verbatim|UsesFinal.allReads>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L108-L110>,
  <hlink|<verbatim|Rep.envelope>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L195-L198>,
  <hlink|<verbatim|partition_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L242-L249>.

  <strong|Lemma 4.24 (Proposition III.1.10).> <em|Sketch:> expand the six
  works. The adjointness <math|<around|\<langle\>|\<Phi\>*q,p|\<rangle\>>=<around|\<langle\>|q,\<Phi\><rsup|\<dagger\>>*p|\<rangle\>>>
  matches the cross terms of <math|W<rsub|F>>, <math|W<rsub|I>> with
  <math|W<rsub|L>>, and the squares <math|<tfrac|1|2><around|\<\|\|\>|\<Phi\>*w|\<\|\|\>><rsup|2>>,
  <math|<tfrac|1|2><around|\<\|\|\>|\<Phi\><rprime|'>*w|\<\|\|\>><rsup|2>>,
  <math|<tfrac|1|2><around|\<\|\|\>|\<cal-N\>*w|\<\|\|\>><rsup|2>>,
  <math|<tfrac|1|2><around|\<\|\|\>|w|\<\|\|\>><rsup|2>> cancel against
  <math|W<rsub|D>>, <math|W<rsub|N>>, <math|W<rsub|C>>. What remains is the
  right-hand side. III.1.11 requires a lower bound for the corresponding
  local sum near the seeds; the identity alone supplies no such bound.
  <em|Lean:> <hlink|<verbatim|Tube.locates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L145-L163>,
  <hlink|<verbatim|arity>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L86-L89>.

  <strong|Lemma 4.25 (transfer of the energy per seed, III.1.11).> Assume the
  ringing condition and <math|j<rsub|min>\<leqslant\>i\<leqslant\>j\<leqslant\>i+1>.
  <em|Sketch:> the stamp for the pair <math|<around|(|j,i|)>> gives
  <math|\<mu\>> and a <math|\<beta\>>-entry threshold. In a directed history:

  <\itemize-minus>
    <item>the tube of step <math|m> is compatible with the estimator data;

    <item>the side condition <math|c\<geqslant\>100*<around|(|1+\<varrho\>|)>>
    is part of the fits conditions;

    <item><math|<wide|\<beta\>|^><rsub|m>> exceeds the entry threshold by the
    price conditions;

    <item><math|<wide|\<beta\>|^><rsub|m+1>=<wide|\<beta\>|^><rsub|m>+\<kappa\><rsub|<math-up|slope>>*log
    L<rsub|m>> turns <math|<math-up|temp><around|(|<wide|\<beta\>|^><rsub|m>+\<kappa\><rsub|<math-up|slope>>*log
    L|)>> into <math|t<rsub|m+1>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|notation_ticket>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L166-L181>.

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The synchronization cutoff must be independent of the patch size. The
  feedback map alone has Lipschitz constant <math|1>; normalizing the
  centroids removes its tangential average and gives the contraction factor
  <math|d+<tfrac|1|4>\<leqslant\><tfrac|1|2>>.

  The curvature estimate must hold on both branches. It combines clustering
  of arbitrary minimizers, route multiplicities and curvature-controlled
  axial gauges. Losing a power of <math|L> in any of these comparisons would
  spoil the area scaling in III.1.8.

  Normalization and tree-gauge integration use finite sums and Haar
  invariance. Global regularity is more limited: the kernel is Borel, while
  analyticity is proved near the trivial configuration. The energy bound and
  stationary requirements in III.1.11\UIII.1.12 need the later units.

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Written
  proof>>|<cell|<strong|Lean>>|<cell|<strong|Meaning>>>|<row|<cell|<math|\<rho\><rsub|\<beta\>><around|(|U,V|)>>,
  <math|\<cal-P\><rsub|\<beta\>>>>|<cell|<hlink|<verbatim|StepData.density>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L71-L72>,
  <hlink|<verbatim|push>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L77-L79>>|<cell|block
  kernel and push>>|<row|<cell|<math|P=<around|(|L,J|)>>,
  <math|R=<around|(|J+3|)>*L>>|<cell|<hlink|<verbatim|Patch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L29-L34>,
  <hlink|<verbatim|radius>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L51>>|<cell|block
  factor, order, patch radius>>|<row|<cell|<math|K=<around|(|\<kappa\>,\<delta\>,\<varepsilon\>,a|)>>>|<cell|<hlink|<verbatim|KernelChoices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L37-L45>>|<cell|penalty,
  frame cutoff, predictor cutoff, axial factor>>|<row|<cell|(B1)\U(B3)>|<cell|<hlink|<verbatim|Patch.Branches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185>>|<cell|branch
  conditions>>|<row|<cell|<math|M<rsub|\<delta\>>>>|<cell|<hlink|<verbatim|usesMin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L109-L110>>|<cell|minimizing
  branch>>|<row|<cell|<math|S<rsub|W><around|(|h|)>>>|<cell|<hlink|<verbatim|score>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L114-L115>>|<cell|synchronization
  cost on a patch>>|<row|<cell|frame <math|h>, tag
  <math|t=<around|(|r,o|)>>>|<cell|<hlink|<verbatim|frame>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L153-L155>,
  <verbatim|FrameTag>>|<cell|gauge fixing on a patch; root and axis
  ordering>>|<row|<cell|<math|\<cal-E\><around|(|W|)>>>|<cell|<hlink|<verbatim|eligible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L143-L146>>|<cell|eligible
  axial tags>>|<row|<cell|<math|w>>|<cell|<hlink|<verbatim|weight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L87-L88>>|<cell|<math|J>-fold
  convolution of the block-uniform weight>>|<row|<cell|<math|Y>,
  <math|\<Phi\><rsub|Y>>, <math|Q>>|<cell|<hlink|<verbatim|connector>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L39-L42>,
  <hlink|<verbatim|bondCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L159>,
  <hlink|<verbatim|prediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L44-L45>>|<cell|connector,
  bond cost, prediction>>|<row|<cell|<math|\<lambda\><around|(|U,t|)>>>|<cell|<hlink|<verbatim|likelihood>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L49-L51>>|<cell|tag
  law>>|<row|<cell|ch, pr>|<cell|<hlink|<verbatim|Gauge.chord>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L115>,
  <hlink|<verbatim|Gauge.price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L112>>|<cell|chord
  distance to <math|1>; Wilson plaquette density>>|<row|<cell|<math|E<rsub|X>>,
  <math|F<rsub|X>>>|<cell|<hlink|<verbatim|Axial.edges>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Slide.lean#L24>,
  <hlink|<verbatim|Axial.faces>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Slide.lean#L32>>|<cell|link
  and plaquette chord sums in <math|X>>>|<row|<cell|<math|m<around|(|h|)>>,
  <math|F<rsub|x><around|(|h|)>>>|<cell|<verbatim|Pairs.centroid>,
  <verbatim|Pairs.feedback>>|<cell|centroid and feedback of the
  synchronization problem>>|<row|<cell|<math|\<pi\>>>|<cell|<hlink|<verbatim|Gauge.focus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L91>>|<cell|nearest
  point of <math|G> (near <math|1>)>>|<row|<cell|port,
  <math|R<rprime|'>>>|<cell|<hlink|<verbatim|port>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L60>,
  <hlink|<verbatim|macroR>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L37>>|<cell|fine
  curvature in the macro-box of radius <math|<around|(|J+7|)>*L>>>|<row|<cell|usable>|<cell|<hlink|<verbatim|usable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L62-L63>>|<cell|positive
  frame masses on the <math|5<rsup|4>> neighbours>>|<row|<cell|toll, wire,
  fuel>|<cell|<hlink|<verbatim|toll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L55>,
  <hlink|<verbatim|wire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L187>,
  <hlink|<verbatim|fuel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L189-L190>>|<cell|plaquette
  chord; chord of <math|V<rsub|b>*Q<rsub|b><rsup|-1>>; sum of four
  wires>>|<row|<cell|<math|\<cal-M\>+d<rsub|0>*\<cal-F\>>,
  <math|\<tau\>>>|<cell|<hlink|<verbatim|probe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/FrameResponse.lean#L68>,
  <hlink|<verbatim|mean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/FrameResponse.lean#L65-L66>,
  <hlink|<verbatim|fixRoot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/FrameResponse.lean#L63>,
  <hlink|<verbatim|tau>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/FrameResponse.lean#L57-L59>>|<cell|linearized
  prediction (averaging operator)>>|<row|<cell|forest, trunks,
  fold>|<cell|<hlink|<verbatim|Tree.Forest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L24-L29>,
  <hlink|<verbatim|trunks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L77>,
  <hlink|<verbatim|foldAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L21>>|<cell|tree
  gauge in blocks>>|<row|<cell|budget point,
  flags>|<cell|<hlink|<verbatim|BudgetPoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L125-L136>,
  <hlink|<verbatim|flags>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L34-L36>>|<cell|norm
  parameters; large-field sites>>|<row|<cell|<math|\<cal-R\>>,
  eval>|<cell|<hlink|<verbatim|Rep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L165-L171>,
  <hlink|<verbatim|Rep.eval>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L179>>|<cell|effective
  density: exponential of the vacuum term minus the action and regular
  activities, times the gas>>|<row|<cell|<math|<wide|\<beta\>|^><rsub|m>>,
  <math|t<rsub|m>>>|<cell|<hlink|<verbatim|Calendar.hatBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79>,
  <hlink|<verbatim|Calendar.threshold>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L83>>|<cell|reference
  coupling; small-field threshold <math|<math-up|temp><around|(|<wide|\<beta\>|^><rsub|m>|)>>>>|<row|<cell|tube,
  works>|<cell|<hlink|<verbatim|Tube>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L94-L99>,
  <hlink|<verbatim|Tube.vision>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L104>>|<cell|transfer
  tower with fine and coarse path data; six local works>>|<row|<cell|store,
  plot, Work>|<cell|<hlink|<verbatim|Stores>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L34-L37>,
  <hlink|<verbatim|Stores.Plot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L51-L58>,
  <hlink|<verbatim|assessed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L85>>|<cell|seeds;
  their large-field characterization; local work>>|<row|<cell|estimator data,
  energy-per-seed requirement>|<cell|<hlink|<verbatim|Teller>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L89-L96>,
  <hlink|<verbatim|Teller.Grants>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L129-L131>>|<cell|parameters
  of one energy estimate; energy-per-seed
  requirement>>|<row|<cell|<math|t=<math-up|temp><around|(|<wide|\<beta\>|^>+\<kappa\><rsub|<math-up|slope>>*log
  L|)>>>|<cell|<hlink|<verbatim|fiery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L26>,
  <hlink|<verbatim|temp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L25>,
  <hlink|<verbatim|betaF>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23>>|<cell|fine-level
  threshold>>|<row|<cell|<math|\<varrho\>>>|<cell|<hlink|<verbatim|radiusB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22>>|<cell|cluster
  radius <math|<around|\<lceil\>|<around|(|log
  <wide|\<beta\>|^>|)><rsup|2>|\<rceil\>>>>>|<row|<cell|kinetic data,
  directed history>|<cell|<hlink|<verbatim|Kin.Planned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L93-L115>,
  <hlink|<verbatim|Directed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L26-L36>>|<cell|one-loop
  shift and stationary-branch requirements>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Energy estimates.> III.1.10 is an identity for the clipped
    direct term and truncated rows. The estimates converting it into
    III.1.11, including bounds on <math|W<rsub|D>> and the truncation
    remainders, belong to III.10. No sign is asserted here for
    <math|1-\<Phi\><rsup|\<dagger\>>*\<Phi\>-\<Phi\><rprime|'><rsup|\<dagger\>>*\<Phi\><rprime|'>-\<cal-N\><rsup|\<dagger\>>*\<cal-N\>>
    at arbitrary <math|V>.

    <item><strong|Construction of the kinetic data.> The stationary
    conditions and the outputs of the two cited construction theorems are
    identified in III.1.12. Their full construction from the estimates of
    III.3, III.6\UIII.7 and III.9 is outside this unit. The alternative
    constructor <hlink|<verbatim|Extra.Iteration.planned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Planned.lean#L37-L55>
    has the required output but is outside the main-theorem closure.

    <item><strong|Choice of neighbourhood and smoothing order.> The curvature
    proof uses pads at plaquette corners in <math|B<rsub|1>>, whereas the
    stated synchronization result supplies them throughout <math|B<rsub|2>>.
    The need for the larger neighbourhood in later estimates is not
    determined here. Likewise, <math|w\<leqslant\>L<rsup|-4>> needs only
    <math|J\<geqslant\>1>; the later use of the stronger patch condition
    <math|J\<geqslant\>4> remains to be specified.

    <item><strong|Additional files.> The small packages listed in the header
    are not described by the numbered results. Their contributions, and any
    further results from the exterior calculus or quadratic-kernel files
    beyond those cited here, remain to be incorporated into the relevant
    later units.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> II.2 Marker algebra, polymer
  combinatorics and Gaussian estimates (notes)|II-2.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-1.tm>|<hlink|III.2 Choosing the constants: the order
  of choice and the RG schedule (notes) \<rightarrow\>|III-2.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.1. The block-spin step and the symmetric gauge
    fixing \V detailed notes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|3>>
    <associate|2-what-it-uses|<tuple|2|12>>
    <associate|3-strategy|<tuple|3|13>>
    <associate|4-steps|<tuple|4|14>>
    <associate|41-the-kernel-and-its-normalization|<tuple|4.1|14>>
    <associate|42-covariance|<tuple|4.2|14>>
    <associate|43-axial-gauges-and-the-branch-constants|<tuple|4.3|15>>
    <associate|44-synchronization-and-the-l-2-estimate|<tuple|4.4|16>>
    <associate|45-near-the-trivial-configuration|<tuple|4.5|18>>
    <associate|46-tree-gauge|<tuple|4.6|18>>
    <associate|47-formats-and-energy-accounting|<tuple|4.7|19>>
    <associate|5-where-the-difficulty-lies|<tuple|5|19>>
    <associate|6-notation|<tuple|6|20>>
    <associate|7-what-remains-unexplained|<tuple|7|21>>
    <associate|auto-1|<tuple|1|3>>
    <associate|auto-10|<tuple|4.6|18>>
    <associate|auto-11|<tuple|4.7|19>>
    <associate|auto-12|<tuple|5|19>>
    <associate|auto-13|<tuple|6|20>>
    <associate|auto-14|<tuple|7|21>>
    <associate|auto-2|<tuple|2|12>>
    <associate|auto-3|<tuple|3|13>>
    <associate|auto-4|<tuple|4|14>>
    <associate|auto-5|<tuple|4.1|14>>
    <associate|auto-6|<tuple|4.2|14>>
    <associate|auto-7|<tuple|4.3|15>>
    <associate|auto-8|<tuple|4.4|16>>
    <associate|auto-9|<tuple|4.5|18>>
    <associate|iii1-the-block-spin-step-and-the-symmetric-gauge-fixing--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 The kernel and its normalization
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 Covariance
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 Axial gauges and the branch constants
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 Synchronization and the
      <with|mode|<quote|math>|L<rsup|-2>> estimate
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 Near the trivial configuration
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.6 Tree gauge
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|4.7 Formats and energy accounting
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Where the difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      What remains unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
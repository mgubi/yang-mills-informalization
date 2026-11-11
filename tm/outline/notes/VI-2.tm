<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> VI.1 Ward identities, the rotation action
  and the conserved stress tensor (notes)|VI-1.tm>|<hlink|Part
  VI|../units.tm#part-vi-symmetry-stress-tensor-and-ward-identities><ym-nav-sep><hlink|Unit
  outline|../units/VI-2.tm>|<hlink|VII.1 Free Maxwell fields for the
  short-distance comparison (notes) \<rightarrow\>|VII-1.tm>>

  <ym-title|VI.2. The free Maxwell stress tensor and the local Ward charge \V
  detailed notes><label|vi2-the-free-maxwell-stress-tensor-and-the-local-ward-charge--detailed-notes>

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

    <with|par-left|1tab|4.1 The free table
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 The local Ward charge
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 The free stress line and the Ward constant
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 The remaining Maxwell data
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 Comparison with the Wilson limit
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Where the
    difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Notation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. What remains
    unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn>
  </table-of-contents>

  <\quotation>
    The full account of unit VI.2: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/VI-2.tm>.
  </quotation>

  <hlink|Unit page|../units/VI-2.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> VI, symmetry: stress tensor and Ward identities.
  <strong|Lean:> <hlink|<verbatim|YM/Next/MAXWELL>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL>,
  <hlink|<verbatim|YM/UVNext/FREE_STRESS_CERTIFICATE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE>,
  <hlink|<verbatim|YM/Next/UV_STRESS>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS>,
  <hlink|<verbatim|YM/Pert>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert>.
  <strong|Size:> 14,179 lines used by the main theorem (Maxwell 8.2k,
  free-stress classification 3.1k, UV stress 2.6k, Pert 0.2k).

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  The free Maxwell theory supplies the comparison model for the stress tensor
  of the Wilson limit. Its local Ward identities fix the sign and
  normalization of the free stress. For a simple gauge group, a
  finite-dimensional calculation identifies its centred conserved tensors of
  degree at most four as a line. Short-distance comparison transfers this
  line to the interacting limit; the translation Ward identity then fixes the
  normalization of the interacting stress.

  Throughout, <math|G> is a gauge group as in I.1, <math|\<frak-g\>> is its
  Lie algebra, and <math|c=1,\<ldots\>,dim \<frak-g\>> indexes an orthonormal
  colour basis for the invariant inner product. Spacetime indices range over
  <math|0,1,2,3>. Inner products of <math|\<frak-g\>>-valued forms include
  the colour sum.

  A <em|Maxwell wave> on an open set <math|U\<subset\>\<bbb-R\><rsup|4>> is a
  smooth <math|\<frak-g\>>-valued antisymmetric field <math|f<rsub|a*b>>
  satisfying

  <\equation*>
    \<partial\><rsub|a>*f<rsub|b*c>+\<partial\><rsub|b>*f<rsub|c*a>+\<partial\><rsub|c>*f<rsub|a*b>=0,<space|2em><around|(|<math-up|Div><space|0.17em>f|)><rsub|b>\<assign\><big|sum><rsub|a>\<partial\><rsub|a>*f<rsub|a*b>=0.
  </equation*>

  Here <math|<math-up|Div>=-d<rsup|\<ast\>>> with the usual Euclidean
  codifferential convention. The space <math|<math-up|Sh><rsub|j>> consists
  of the homogeneous Taylor coefficients of order <math|j> satisfying these
  linear equations, not the cumulative jets through order <math|j>. The
  algebra <math|\<cal-W\>> consists of complex polynomials in coordinates on
  these spaces; a coordinate from <math|<math-up|Sh><rsub|j>> has weight
  <math|j+2>. Its <em|shell sector> <math|\<cal-P\><rsub|d>> is the image of
  labels of degree at most <math|d> under substitution of on-shell Taylor
  coefficients. Equivalently, it consists of the
  <math|<math-up|Ad><around|(|G|)>>-invariant polynomials of weight at most
  <math|d> (<hlink|<verbatim|sector>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Algebra.lean#L108-L116>).
  A <em|probe> of order <math|j> is a real linear functional on
  <math|<math-up|Sh><rsub|j>>; <math|p<around|(|f|)><around|(|x|)>> denotes
  its value on the order-<math|j> Taylor coefficient of <math|f> at <math|x>.

  The curvature propagator is

  <\equation*>
    <around|\<langle\>|F<rsup|c><rsub|i*m><around|(|x|)>*F<rsup|c<rprime|'>><rsub|a*b><around|(|y|)>|\<rangle\>><rsub|0>=\<delta\><rsup|c*c<rprime|'>>*\<cal-C\><rsub|i*m,a*b>*<around|(|x-y|)>,<space|2em>G<rsub|0><around|(|x|)>=<frac|1|4*\<pi\><rsup|2><around|\||x|\|><rsup|2>>,<space|2em>-\<Delta\>*G<rsub|0>=\<delta\>,
  </equation*>

  where <math|\<cal-C\>> is the curl\Ucurl of <math|G<rsub|0>>. The generated
  field <math|f<rsup|p,x><around|(|y|)>=<around|\<langle\>|p<around|(|F|)><around|(|x|)>*F<around|(|y|)>|\<rangle\>><rsub|0>>
  is a Maxwell wave off <math|x>. Correlations of Wick polynomials at
  distinct sites sum over complete pairings of legs between different sites;
  there are no contractions within a site.

  Write

  <\equation*>
    T<rsup|<math-up|free>><rsub|a*b>=<big|sum><rsub|c,i>F<rsup|c><rsub|a*i>*F<rsup|c><rsub|b*i>-<frac|1|4>*\<delta\><rsub|a*b>*<big|sum><rsub|c,i,k>F<rsup|c><rsub|i*k>*F<rsup|c><rsub|i*k>\<in\>\<cal-P\><rsub|4>.
  </equation*>

  Its polarization and the current associated with a vector field <math|v>
  are

  <\equation*>
    \<Theta\><rsub|a*b><around|(|f,g|)>=<big|sum><rsub|i><around*|(|<around|\<langle\>|f<rsub|a*i>,g<rsub|b*i>|\<rangle\>>+<around|\<langle\>|f<rsub|b*i>,g<rsub|a*i>|\<rangle\>>|)>-<frac|1|2>*\<delta\><rsub|a*b>*<big|sum><rsub|i,k><around|\<langle\>|f<rsub|i*k>,g<rsub|i*k>|\<rangle\>>,<space|2em>j<rsup|v><rsub|a><around|(|f,g|)>=<big|sum><rsub|b>v<rsub|b>*\<Theta\><rsub|a*b><around|(|f,g|)>.
  </equation*>

  Thus <math|\<Theta\><around|(|f,f|)>=2*T<rsup|<math-up|free>><around|(|f|)>>.
  Both tensors are symmetric and traceless. For a real cutoff
  <math|\<chi\>\<in\>C<rsub|c><rsup|\<infty\>><around|(|\<bbb-R\><rsup|4>|)>>,
  the outward flux is <math|\<Phi\><rsub|\<chi\>><around|(|j|)>=-<big|sum><rsub|a><big|int>\<partial\><rsub|a>*\<chi\>*<space|0.17em>j<rsub|a>>.

  The free table on a register <math|L> is
  <math|\<cal-M\>=<math-up|Bel><around|(|L|)>>, with filtered field spaces
  <math|\<cal-F\><rsup|<math-up|free>><rsub|d>>. The Wilson limit table
  <math|S> has spaces <math|\<cal-F\><rsup|S><rsub|d>>. For a lighthouse
  <math|\<cal-T\>>, write <math|T<rsub|0>> for its free stress and
  <math|\<kappa\>> for its Ward constant. Let <math|<math-up|Conf><rsub|n>>
  denote the distinct-point configurations. For <math|R\<gtr\>0>, set

  <\equation*>
    K<rsub|R,n>=<around|{|y\<in\><around|(|\<bbb-R\><rsup|4>|)><rsup|n>:<around|\||y<rsub|i>-y<rsub|j>|\|><rsub|\<infty\>>\<geqslant\>R<rsup|-1>*<around|(|i\<ne\>j|)>,<around|\<\|\|\>|y|\<\|\|\>>\<leqslant\>R|}>,
  </equation*>

  where <math|<around|\<\|\|\>|y|\<\|\|\>>> is the Euclidean norm of the full
  configuration.

  <strong|Proposition VI.2.1 (the free Maxwell table).> For every register
  <math|L>, the free table <math|\<cal-M\>=<math-up|Bel><around|(|L|)>> has
  the following properties.

  (a) For every <math|d\<geqslant\>0>, substitution of on-shell Taylor
  coefficients induces a complex linear isomorphism
  <math|\<iota\><rsub|d>:\<cal-F\><rsup|<math-up|free>><rsub|d>\<to\>\<cal-P\><rsub|d>>.
  A label is null exactly when its polynomial vanishes on every on-shell
  Taylor tower. At distinct points, field correlations equal the Wick moments
  of their images under <math|\<iota\>>.

  (b) The table satisfies the Euclidean hierarchy of IV.1: permutation
  symmetry, the unit laws, covariance under signed coordinate permutations,
  reality, translation invariance, point and smeared reflection positivity,
  and smoothness on <math|<math-up|Conf><rsub|n>>. The correlations are in
  fact real-analytic there. For each fixed tuple of fields and derivative
  order, there are constants <math|A\<geqslant\>0> and <math|C\<geqslant\>0>
  bounding that derivative by <math|C*r<rsup|-A>> on configurations with
  mutual sup-distances at least <math|r>, for <math|0\<less\>r\<leqslant\>1>.

  (c) Differentiation of Taylor coefficients induces maps
  <math|\<partial\><rsup|<math-up|free>><rsub|a>:\<cal-F\><rsup|<math-up|free>><rsub|d>\<to\>\<cal-F\><rsup|<math-up|free>><rsub|d+1>>
  satisfying the inclusion, derivative and orientation laws. In particular,

  <\equation*>
    <around|\<langle\>|<around|(|\<partial\><rsup|<math-up|free>><rsub|a>*B|)><around|(|x<rsub|0>|)>*\<cdots\>|\<rangle\>><rsup|<math-up|free>>=\<partial\><rsub|x<rsub|0><rsup|a>>*<around|\<langle\>|B<around|(|x<rsub|0>|)>*\<cdots\>|\<rangle\>><rsup|<math-up|free>>.
  </equation*>

  The action of <math|O<around|(|4|)>> on coefficients induces actions
  <math|R<rsub|g>> on all field spaces and generators
  <math|\<rho\><around|(|\<omega\>|)>> for
  <math|\<omega\>\<in\><with|math-font|Euler|s*o><around|(|4|)>>. These
  satisfy the rotation laws of VI.1: continuity, the group law, extension of
  signed permutations, reality, preservation of the unit and inclusions,
  vector covariance of derivatives, and the infinitesimal-generator identity.
  All free correlations are rotation invariant.

  (d) The fields <math|\<iota\><rsub|4><rsup|-1><around|(|T<rsup|<math-up|free>><rsub|a*b>|)>>,
  also denoted <math|T<rsup|<math-up|free>><rsub|a*b>>, are symmetric, real,
  traceless and centred, and satisfy <math|<big|sum><rsub|a>\<partial\><rsup|<math-up|free>><rsub|a>*T<rsup|<math-up|free>><rsub|a*b>=0>
  in <math|\<cal-F\><rsup|<math-up|free>><rsub|5>>.

  <em|Status:> theorem for every gauge group in the setting of I.1;
  simplicity is not required. <em|Lean:> <hlink|<verbatim|Maxwell.Free.hierarchy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L106-L114>,
  <hlink|<verbatim|fields>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L33-L35>,
  <hlink|<verbatim|no_residual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Caps.lean#L90-L113>,
  <hlink|<verbatim|scheme>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L80-L83>,
  <hlink|<verbatim|gear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L153-L170>,
  <hlink|<verbatim|gear_laws>, <verbatim|gear_motion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Beacon.lean#L54-L61>,
  <hlink|<verbatim|original>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L172>,
  <hlink|<verbatim|realStress>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L176-L179>.

  <strong|Proposition VI.2.2 (local Ward charge).> Let
  <math|U\<subset\>\<bbb-R\><rsup|4>> be open, <math|x\<in\>U>, and <math|f>
  a Maxwell wave on <math|U>. Let <math|v> be a smooth conformal Killing
  field on <math|\<bbb-R\><rsup|4>>:

  <\equation*>
    \<partial\><rsub|a>*v<rsub|b>=-\<partial\><rsub|b>*v<rsub|a>*<space|1em><around|(|a\<ne\>b|)>,<space|2em>\<partial\><rsub|0>*v<rsub|0>=\<partial\><rsub|1>*v<rsub|1>=\<partial\><rsub|2>*v<rsub|2>=\<partial\><rsub|3>*v<rsub|3>.
  </equation*>

  Let <math|\<chi\>\<in\>C<rsub|c><rsup|\<infty\>><around|(|U;\<bbb-R\>|)>>
  equal one near <math|x>. Since <math|d*f=0>, its Lie derivative is

  <\equation*>
    <around|(|\<cal-L\><rsub|v>*f|)><rsub|i*l>=<big|sum><rsub|b><around*|[|\<partial\><rsub|i>*<around|(|v<rsub|b>*f<rsub|b*l>|)>-\<partial\><rsub|l>*<around|(|v<rsub|b>*f<rsub|b*i>|)>|]>=<around|(|d*\<iota\><rsub|v>*f|)><rsub|i*l>.
  </equation*>

  (a) For every zero-order component probe <math|F<rsup|c><rsub|i*l>>,

  <\equation*>
    \<Phi\><rsub|\<chi\>><around*|(|j<rsup|v><around|(|f<rsup|F<rsup|c><rsub|i*l>,x>,f|)>|)>=-<around|(|\<cal-L\><rsub|v>*f|)><rsup|c><rsub|i*l><around|(|x|)>.
  </equation*>

  (b) If <math|\<cal-L\><rsub|v>*f> is also a Maxwell wave on <math|U>, then,
  for every order <math|j\<geqslant\>0> and every probe <math|p> of that
  order,

  <\equation*>
    \<Phi\><rsub|\<chi\>><around*|(|j<rsup|v><around|(|f<rsup|p,x>,f|)>|)>=-p*<around|(|\<cal-L\><rsub|v>*f|)><around|(|x|)>.
  </equation*>

  For translations <math|v=e<rsub|a>>, this is
  <math|-\<partial\><rsub|a><around|[|p<around|(|f|)>|]><around|(|x|)>>. For
  rotations <math|v<around|(|y|)>=\<omega\>*<around|(|y-x|)>>, it is
  <math|-<around|(|\<omega\>\<cdot\>p|)><around|(|f|)><around|(|x|)>>, where
  <math|\<omega\>\<cdot\>p> is the infinitesimal label action. For dilation
  <math|v<around|(|y|)>=y-x>, it is <math|-<around|(|j+2|)>*p<around|(|f|)><around|(|x|)>>.

  (c) For any two Maxwell waves <math|f,g> on a neighbourhood of
  <math|<math-up|supp><space|0.17em>\<chi\>>, the flux
  <math|\<Phi\><rsub|\<chi\>><around|(|j<rsup|v><around|(|f,g|)>|)>>
  vanishes. It also vanishes for two fields <math|f<rsup|p,x>,f<rsup|q,x>>
  generated at the same point, provided <math|v> is homogeneous about
  <math|x> of degree <math|e\<in\><around|{|0,1|}>>.

  <em|Status:> theorem, with the propagator, polarization and outward-flux
  conventions above. <em|Lean:> <hlink|<verbatim|Maxwell.Free.local_force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Contact.lean#L137-L156>,
  <hlink|<verbatim|jet_force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Force.lean#L131-L186>,
  <hlink|<verbatim|drift_flux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Affine.lean#L249-L255>,
  <hlink|<verbatim|angular_flux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Angular.lean#L181-L195>,
  <hlink|<verbatim|radial_flux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Affine.lean#L220-L247>,
  <hlink|<verbatim|sourcefree_flux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L239-L250>,
  <hlink|<verbatim|two_flux_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Repeat.lean#L63-L128>;
  definitions <hlink|<verbatim|Killing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L140-L143>,
  <hlink|<verbatim|variation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Regulator.lean#L49>,
  <hlink|<verbatim|pulse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Kernel.lean#L101-L102>,
  <hlink|<verbatim|singleFlux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L187>.

  <strong|Proposition VI.2.3 (Ward identities of the free table).> Let
  <math|n\<geqslant\>0>, <math|x\<in\><math-up|Conf><rsub|n+1>>, and
  <math|p<rsub|0>,\<ldots\>,p<rsub|n>\<in\>\<cal-W\>>. Let
  <math|\<chi\>\<in\>C<rsub|c><rsup|\<infty\>><around|(|\<bbb-R\><rsup|4>;\<bbb-R\>|)>>
  equal one near <math|x<rsub|0>>, with <math|x<rsub|1>,\<ldots\>,x<rsub|n>\<nin\><math-up|supp><space|0.17em>\<chi\>>.
  Take one of the pairs

  <\equation*>
    <around|(|v,D|)>=<around|(|e<rsub|a>,\<partial\><rsub|a>|)>,<space|2em><around|(|\<omega\>*<around|(|y-x<rsub|0>|)>,\<rho\><around|(|\<omega\>|)>|)>,<space|2em><around|(|y-x<rsub|0>,\<varepsilon\>|)>,
  </equation*>

  where <math|a> is an axis, <math|\<omega\>\<in\><with|math-font|Euler|s*o><around|(|4|)>>,
  and <math|\<varepsilon\>> multiplies each monomial by its weight. The
  operators act on <math|\<cal-W\>> by derivations. Then

  <\equation*>
    -<big|sum><rsub|a,b><big|int>\<partial\><rsub|a>*\<chi\><around|(|y|)>*<space|0.17em>v<rsub|b><around|(|y|)>*<space|0.17em><around|\<langle\>|T<rsup|<math-up|free>><rsub|a*b><around|(|y|)>*p<rsub|0><around|(|x<rsub|0>|)>*\<cdots\>*p<rsub|n><around|(|x<rsub|n>|)>|\<rangle\>><rsub|0>*<space|0.17em>d*y=-<around|\<langle\>|<around|(|D*p<rsub|0>|)><around|(|x<rsub|0>|)>*p<rsub|1><around|(|x<rsub|1>|)>*\<cdots\>*p<rsub|n><around|(|x<rsub|n>|)>|\<rangle\>><rsub|0>.
  </equation*>

  Consequently, for every <math|\<tau\>\<in\>\<bbb-R\>>, the stress
  <math|\<tau\>*T<rsup|<math-up|free>>> satisfies the translation and
  rotation Ward identities with rows <math|-\<tau\>*\<partial\><rsup|<math-up|free>>>
  and <math|-\<tau\>*\<rho\>>. The stress normalized to give
  <math|+\<partial\><rsup|<math-up|free>>> in the translation identity is
  <math|-T<rsup|<math-up|free>>>.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Maxwell.Free.moment_force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Taxes.lean#L177-L200>,
  <hlink|<verbatim|straight_motion>, <verbatim|rotational_motion>,
  <verbatim|radial_motion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Taxes.lean#L34-L60>,
  <hlink|<verbatim|beacon_signal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Beacon.lean#L74-L136>,
  <hlink|<verbatim|Table.StressLaws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L90-L97>.

  <strong|Proposition VI.2.4 (the free stress line).> Suppose <math|G> is
  simple. Let <math|W> be a derivative plan on the free table satisfying the
  derivative and orientation laws. The derivative law determines its
  derivative maps uniquely as <math|\<partial\><rsup|<math-up|free>>>. Define
  the following real vector spaces:

  <\itemize-minus>
    <item><math|\<cal-Z\>> consists of symmetric real tensors
    <math|J\<in\><around|(|\<cal-F\><rsup|<math-up|free>><rsub|4>|)><rsup|4\<times\>4>>
    that are covariant under signed coordinate permutations and centred:
    <math|<around|\<langle\>|J<rsub|a*b>|\<rangle\>>=0>.

    <item><math|\<cal-V\>> consists of real vectors in
    <math|<around|(|\<cal-F\><rsup|<math-up|free>><rsub|5>|)><rsup|4>>
    covariant under signed coordinate permutations.
  </itemize-minus>

  The divergence <math|<math-up|div>:\<cal-Z\>\<to\>\<cal-V\>>,
  <math|<around|(|<math-up|div>J|)><rsub|b>=<big|sum><rsub|a>W<rsub|a>*J<rsub|a*b>>,
  is surjective, and

  <\equation*>
    dim<rsub|\<bbb-R\>> \<cal-Z\>=3,<space|2em>dim<rsub|\<bbb-R\>>
    \<cal-V\>=2,<space|2em>ker <math-up|div>=\<bbb-R\>*T<rsup|<math-up|free>>.
  </equation*>

  Thus a lighthouse with such a derivative plan and stress
  <math|\<tau\>*T<rsup|<math-up|free>>>, <math|\<tau\>\<ne\>0>, satisfies
  (FD): its divergence is onto, its kernel has real dimension one, and its
  stress is a nonzero centred conserved tensor.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|FreeStress.rank_on>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L43-L47>,
  <hlink|<verbatim|line_dim>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L73-L79>,
  <hlink|<verbatim|lighting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L86-L94>,
  <hlink|<verbatim|certificate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L125-L132>,
  <hlink|<verbatim|FreeDiv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Dimension.lean#L153-L158>,
  <hlink|<verbatim|KernelSpace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Tensor.lean#L75-L80>,
  <hlink|<verbatim|Vectors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Tensor.lean#L87-L97>,
  <hlink|<verbatim|currentDiv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Tensor.lean#L117-L119>.

  <strong|Proposition VI.2.5 (Maxwell data).> Suppose <math|G> is simple, let
  <math|C> be a Wilson family for <math|G>, and let
  <math|\<tau\>\<in\>\<bbb-R\>\<setminus\><around|{|0|}>>.

  (a) The lighthouse <math|\<cal-T\><rsub|\<tau\>>=<around|(|\<partial\><rsup|<math-up|free>>,R,\<tau\>*T<rsup|<math-up|free>>,\<kappa\>=-\<tau\>|)>>
  satisfies all lighthouse laws of VI.1. These include the derivative,
  rotation and Ward laws of VI.2.1\U3, a nonzero derivative in degree four,
  and the following selection property. There is <math|N> such that for every
  <math|d\<geqslant\>N>, finitely many derivatives of Ward sums at collinear
  configurations detect the line <math|\<bbb-R\>*\<partial\><rsup|<math-up|free>>>
  among complex linear maps <math|t<rsub|a>:\<cal-F\><rsup|<math-up|free>><rsub|d>\<to\>\<cal-F\><rsup|<math-up|free>><rsub|d+1>>
  satisfying:

  <\itemize-minus>
    <item>they kill the unit, are real, and transform as a vector under
    signed permutations;

    <item>for every <math|e\<leqslant\>d>, <math|t<rsub|a>> maps the image of
    <math|\<cal-F\><rsup|<math-up|free>><rsub|e>> into the image of
    <math|\<cal-F\><rsup|<math-up|free>><rsub|e+1>>.
  </itemize-minus>

  For component <math|t<rsub|b>>, a diagram is an iterated directional
  derivative of

  <\equation*>
    x\<longmapsto\><big|sum><rsub|i><around|\<langle\>|w<rsub|1><around|(|x<rsub|1>|)>*\<cdots\>*<around|(|t<rsub|b>*w<rsub|i>|)><around|(|x<rsub|i>|)>*\<cdots\>*w<rsub|n><around|(|x<rsub|n>|)>|\<rangle\>><rsup|<math-up|free>>,<space|2em>w<rsub|i>\<in\>\<cal-F\><rsup|<math-up|free>><rsub|d>,
  </equation*>

  evaluated at a distinct-point configuration on a coordinate axis
  perpendicular to <math|e<rsub|b>>. The selected diagrams all vanish exactly
  when <math|t> is a real multiple of the derivative tuple.

  (b) There exists a Maxwell datum for <math|C> with lighthouse
  <math|\<cal-T\><rsub|\<tau\>>>. It also contains the free Euclidean
  hierarchy, the Casimir polynomial data of VI.1, compatible representations
  of the proper orthochronous Lorentz group on the field spaces and their
  union, continuous in each degree, and the following Ward-vanishing
  property. For every <math|d\<geqslant\>4>, let <math|T<around|(|u,v|)>> be
  a real-bilinear family of complex linear endomorphisms of
  <math|\<cal-F\><rsup|<math-up|free>><rsub|d>>, with
  <math|u,v\<in\><with|math-font|Euler|s*o><around|(|4|)>>. Suppose it is
  alternating, real, equivariant under orientation-preserving signed
  permutations, kills the unit, and preserves every lower-degree image. If

  <\equation*>
    <big|sum><rsub|i><around|\<langle\>|w<rsub|1><around|(|x<rsub|1>|)>*\<cdots\>*<around|(|T<around|(|u,v|)>*w<rsub|i>|)><around|(|x<rsub|i>|)>*\<cdots\>*w<rsub|m><around|(|x<rsub|m>|)>|\<rangle\>>=0
  </equation*>

  for every <math|m\<geqslant\>0>, every <math|x\<in\><math-up|Conf><rsub|m>>,
  every <math|w<rsub|i>\<in\>\<cal-F\><rsup|<math-up|free>><rsub|d>> and
  every <math|u,v>, then <math|T=0>. The Lorentz representation agrees with
  <math|R> on spatial rotations, commutes with time-reflected conjugation,
  and has boost generator <math|-i*\<rho\>> in each time\Uspace plane.

  (c) Every Maxwell datum can be replaced by one with the same derivative
  plan, rotations, hierarchy and Lorentz representation, stress
  <math|\<tau\>*T<rsup|<math-up|free>>>, full rotation covariance of that
  stress, and (FD). The Ward constant of any Maxwell datum with stress
  <math|\<tau\>*T<rsup|<math-up|free>>> is <math|-\<tau\>>.

  <em|Status:> theorem. The construction used in III.11 chooses
  <math|\<tau\>=1> and hence <math|\<kappa\>=-1>. <em|Lean:>
  <hlink|<verbatim|Maxwell.Free.herald>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L29-L34>,
  <hlink|<verbatim|shines>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L36-L42>,
  <hlink|<verbatim|maxwell_supplies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L45-L48>,
  <hlink|<verbatim|erasing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/AwayTeam.lean#L48-L118>,
  <hlink|<verbatim|scanner>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Scenes.lean#L125-L132>,
  <hlink|<verbatim|launched>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Descent.lean#L179-L181>,
  <hlink|<verbatim|FreeStress.fire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L137-L150>,
  <hlink|<verbatim|names>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pressure.lean#L167-L171>,
  <hlink|<verbatim|required>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pressure.lean#L158-L161>;
  records <hlink|<verbatim|Org.MaxwellData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170>,
  <hlink|<verbatim|Org.erases>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L149-L152>,
  <hlink|<verbatim|Climb.Lighthouse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L24-L29>,
  <hlink|<verbatim|Lighthouse.Goes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L34-L42>.

  <strong|Proposition VI.2.6 (strict reflection positivity).> Fix a
  coordinate axis <math|a>, and let <math|\<theta\><rsub|a>> reflect in
  <math|y<rsub|a>=0>. Let <math|\<vartheta\><rsub|a>> act on polynomials by
  the corresponding jet reflection and coefficient conjugation.

  (a) For every <math|x> with <math|x<rsub|a>\<gtr\>0> and every nonzero
  <math|p\<in\>\<cal-W\>>,

  <\equation*>
    <around|\<langle\>|<around|(|\<vartheta\><rsub|a>*p|)>*<around|(|\<theta\><rsub|a>*x|)>*p<around|(|x|)>|\<rangle\>><rsub|0>\<gtr\>0.
  </equation*>

  (b) For every finite set of distinct coordinate probes of the spaces
  <math|<math-up|Sh><rsub|j>>, the reflected propagator Gram matrix at
  <math|<around|(|\<theta\><rsub|a>*x,x|)>> is positive definite.

  (c) The free table is reflection positive for finite families of words in
  the positive half-space, with distinct sites within each word.

  (d) For every <math|d\<geqslant\>0>, a polynomial
  <math|p\<in\>\<cal-P\><rsub|d>> whose correlations with every finite family
  of spectators from <math|\<cal-P\><rsub|d>> vanish at every distinct-point
  configuration is zero.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|detects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Core.lean#L94-L110>,
  <hlink|<verbatim|coordGram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Gram.lean#L82-L105>,
  <hlink|<verbatim|positive_table>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Caps.lean#L137-L155>,
  <hlink|<verbatim|ghosts_out>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Statistic.lean#L80-L99>.

  <strong|Proposition VI.2.7 (a conserved stress on the limit table).> Let
  <math|C> be a Wilson family satisfying the construction conditions of II.2.
  Let <math|F> be an extraction order with ordered smeared convergence and
  generic point limits to a table <math|S> with Euclidean hierarchy <math|H>.
  Let <math|W> be a derivative plan on <math|S> satisfying the inclusion and
  derivative laws; its orientation law then follows from IV.1. Let
  <math|H<rsub|0>> be the free Euclidean hierarchy, and <math|\<cal-T\>> a
  lighthouse whose plan satisfies the inclusion, derivative and orientation
  laws and for which (FD) holds. Assume the station property of VI.2.8 and

  <\equation*>
    dim<rsub|\<bbb-C\>>\<cal-F\><rsup|S><rsub|d>\<leqslant\>dim<rsub|\<bbb-C\>>\<cal-F\><rsup|<math-up|free>><rsub|d>*<space|2em><around|(|d\<geqslant\>0|)>.
  </equation*>

  (a) There exists a scaling <math|X=<around|(|r<rsub|k>,\<xi\><rsub|k>,U<rsub|k,d>|)>>,
  where <math|r<rsub|k>\<gtr\>0> decreases strictly to zero,
  <math|\<xi\><rsub|k>\<gtr\>0>, and <math|U<rsub|k,d>:\<cal-F\><rsup|<math-up|free>><rsub|d>\<to\>\<cal-F\><rsup|S><rsub|d>>
  is a complex linear isomorphism for every <math|k,d>. It is
  <em|approaching>: for each fixed tuple <math|v=<around|(|v<rsub|i>|)>> of
  free fields, the difference

  <\equation*>
    K<rsub|k><around|(|y|)>=<around|\<langle\>|U<rsub|k>*v<rsub|1>*<around|(|r<rsub|k>*y<rsub|1>|)>*\<cdots\>*U<rsub|k>*v<rsub|n>*<around|(|r<rsub|k>*y<rsub|n>|)>|\<rangle\>><rsup|S>-<around|\<langle\>|v<rsub|1><around|(|y<rsub|1>|)>*\<cdots\>*v<rsub|n><around|(|y<rsub|n>|)>|\<rangle\>><rsup|<math-up|free>>
  </equation*>

  satisfies, for every compact <math|K\<subset\><math-up|Conf><rsub|n>>,

  <\equation*>
    sup<rsub|<stack|<tformat|<table|<row|<cell|t\<in\>C<rsub|c><rsup|\<infty\>><around|(|<math-up|Conf><rsub|n>;\<bbb-C\>|)>>>|<row|<cell|<math-up|supp><space|0.17em>t\<subset\>K,<around|\<\|\|\>|t|\<\|\|\>><rsub|\<infty\>>\<leqslant\>1>>>>>><around*|\||<big|int>t<around|(|y|)>*K<rsub|k><around|(|y|)>*<space|0.17em>d*y|\|>\<longrightarrow\>0.
  </equation*>

  It is <em|stable>: the maps eventually commute with conjugation and signed
  permutations in each degree, preserve the unit in each degree, and
  intertwine each fixed inclusion of degrees. The initial choice may have
  <math|\<xi\><rsub|k>=1>.

  (b) For every approaching stable scaling, the divergence
  <math|<math-up|div><rsup|S>:\<cal-Z\><rsup|S>\<to\>\<cal-V\><rsup|S>> is
  onto and has a one-dimensional real kernel. These spaces are defined as in
  VI.2.4, using <math|S> and <math|W>.

  (c) There exist a nonzero <math|J\<in\>\<cal-Z\><rsup|S>> with
  <math|<math-up|div><rsup|S>J=0> and an approaching stable refinement
  <math|Y> of <math|X>, obtained by taking a subsequence and changing
  <math|\<xi\><rsub|k>>, such that

  <\equation*>
    \<xi\><rsub|k><rsup|-1>*U<rsub|k,4><rsup|-1>*<around|(|r<rsub|k><rsup|4>*J<rsub|a*b>|)>\<longrightarrow\>T<rsub|0,a*b><space|2em><text|for
    all >a,b.
  </equation*>

  (d) For every finite arity bound <math|N>, degree bound <math|d>,
  derivative order <math|m>, and <math|R\<geqslant\>1>, a tail of <math|Y> is
  a track: it intertwines symmetries, units and inclusions through degree
  <math|max <around|(|d,4|)>>, satisfies (c), and has convergence of all
  correlation derivatives of orders <math|0\<leqslant\>j\<leqslant\>m>
  uniformly on <math|K<rsub|R,n>> for <math|n\<leqslant\>N>. The convergence
  is for each fixed tuple of fields of degrees at most <math|d>; its tail may
  depend on that tuple and the error tolerance. In particular, <math|J>
  satisfies the comparison law of VI.1.

  <em|Status:> theorem under these hypotheses. III.11 supplies the station
  estimates; the rank-corrected widths of the construction give the dimension
  bound; VI.2.4 gives (FD) for the canonical datum. To obtain the infrared
  and ultraviolet data used later, III.11 also supplies the shell estimates
  needed for the Ward rows of <math|J>. <em|Lean:>
  <hlink|<verbatim|Stations.equivalences>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L132-L181>,
  <hlink|<verbatim|differential_rank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Dimension.lean#L165-L195>,
  <hlink|<verbatim|produce_current>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L129-L167>,
  <hlink|<verbatim|focused>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L197-L202>,
  <hlink|<verbatim|cap_given>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L110-L115>;
  records <hlink|<verbatim|Climb.Scaling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31>,
  <hlink|<verbatim|Scaling.meter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L54-L55>,
  <hlink|<verbatim|Approaches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L52-L53>,
  <hlink|<verbatim|Stable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L121-L125>,
  <hlink|<verbatim|ActLaw>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L50-L51>,
  <hlink|<verbatim|Org.IR>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L172-L175>,
  <hlink|<verbatim|Org.UV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L177-L186>.

  <strong|Proposition VI.2.8 (weak comparison stations).> Fix
  <math|C,F,S,H,H<rsub|0>> as in VI.2.7. A <em|station> of depth <math|D>
  consists of <math|r\<gtr\>0> and complex linear lifts
  <math|A<rsub|N,p,d>:\<cal-F\><rsup|<math-up|free>><rsub|d>\<to\><math-up|Ref><rsub|d>>
  for <math|d\<leqslant\>D> at every lattice cutoff <math|<around|(|N,p|)>>.

  It is <em|admissible> for arity bound <math|n<rsub|max>>, radius
  <math|R\<geqslant\>1> and tolerance <math|\<varepsilon\>\<gtr\>0> if:

  <\itemize-minus>
    <item>the lifts are eventually uniformly bounded along the extraction
    order, real and signed-covariant, and preserve the degree-zero unit;

    <item>for every <math|n\<leqslant\>n<rsub|max>>, every tuple
    <math|v<rsub|i>> of degrees at most <math|D>, every smooth complex test
    <math|t> supported in <math|K<rsub|R,n>>, every <math|M\<gtr\>0> with
    <math|<around|\<\|\|\>|t|\<\|\|\>><rsub|\<infty\>>\<leqslant\>M>, and
    every <math|\<eta\>\<gtr\>0>, eventually along the ordered cutoff tails,
  </itemize-minus>

  <\equation*>
    <around*|\<nobracket\>|<around*|\<nobracket\>|<around*|\||\<cal-S\><rsub|N,p><around*|(|A*v;r<rsup|-4*n>*t|(>\<cdot\>/r|)>|)>-<big|int>t<around|(|y|)>*<around|\<langle\>|v<rsub|1><around|(|y<rsub|1>|)>*\<cdots\>*v<rsub|n><around|(|y<rsub|n>|)>|\<rangle\>><rsup|<math-up|free>>*<space|0.17em>d*y|\|>\<leqslant\>\<varepsilon\>*M*<big|prod><rsub|i><around|\<\|\|\>|v<rsub|i>|\<\|\|\>>+\<eta\>.
  </equation*>

  Here <math|\<cal-S\><rsub|N,p>> is the lattice-smeared correlation of IV.1.
  The cutoff tail may depend on <math|v,t,M,\<eta\>>.

  The <em|station property> requires an admissible station with
  <math|r\<leqslant\>\<delta\>> for every <math|D,n<rsub|max>>,
  <math|R\<geqslant\>1> and <math|\<varepsilon\>,\<delta\>\<gtr\>0>.

  (a) An admissible station yields a panel
  <math|U<rsub|d>:\<cal-F\><rsup|<math-up|free>><rsub|d>\<to\>\<cal-F\><rsup|S><rsub|d>>
  for <math|d\<leqslant\>D>. It is real, signed-covariant, preserves the
  degree-zero unit, and satisfies

  <\equation*>
    <around*|\||<big|int>t<around|(|y|)>*<around*|[|<around|\<langle\>|U*v<rsub|1>*<around|(|r*y<rsub|1>|)>*\<cdots\>*U*v<rsub|n>*<around|(|r*y<rsub|n>|)>|\<rangle\>><rsup|S>-<around|\<langle\>|v<rsub|1><around|(|y<rsub|1>|)>*\<cdots\>*v<rsub|n><around|(|y<rsub|n>|)>|\<rangle\>><rsup|<math-up|free>>|]>*d*y|\|>\<leqslant\>\<varepsilon\>*M*<big|prod><rsub|i><around|\<\|\|\>|v<rsub|i>|\<\|\|\>>
  </equation*>

  for the same tuples and tests.

  (b) Quantitative grid, strip and finite-difference estimates satisfying the
  balance conditions in VI.2.s, for every finite arity bound, degree bound
  and <math|R\<geqslant\>1>, imply the station property.

  <em|Status:> the station and balance conditions are definitions; (a) and
  (b) are theorems. III.11 supplies the balanced estimates through its
  complete weak-comparison result. <em|Lean:>
  <hlink|<verbatim|Station>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L68-L71>,
  <hlink|<verbatim|Station.Admissible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L89-L97>,
  <hlink|<verbatim|Stations>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L112-L114>,
  <hlink|<verbatim|harvested>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L132-L180>,
  <hlink|<verbatim|Granular>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L30-L34>,
  <hlink|<verbatim|realizes_stations>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L134-L140>,
  <hlink|<verbatim|MergeProof.East.CompleteWeak>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L35>.

  <strong|Proposition VI.2.9 (the normalized stress and its short-distance
  law).> Let <math|C> be a Wilson family, <math|F> an extraction order,
  <math|S> a table with derivative plan <math|W>, and <math|M> a Maxwell
  datum with lighthouse <math|\<cal-T\>> and Ward constant
  <math|\<kappa\>\<ne\>0>. Let <math|I=<around|(|J<rsub|0>,p<rsup|I>,Y<rsup|I>|)>>
  and let <math|X> be a scaling. Assume the ultraviolet-data conditions of
  VIII.1 for <math|<around|(|C,F,S,W,M,I|)>>. In particular, they give a
  Euclidean hierarchy on <math|S>, the orientation law for <math|W>, a
  symmetric real conserved signed-covariant <math|J<rsub|0>> with Ward rows
  <math|<around|(|p<rsup|I>,Y<rsup|I>|)>>, and tracks comparing
  <math|J<rsub|0>> to <math|T<rsub|0>>. Assume also the inclusion and
  derivative laws for <math|W>, and the following additional properties:
  <math|J<rsub|0>> is a nonzero member of <math|\<cal-Z\><rsup|S>>;
  <math|\<cal-T\>> satisfies (FD); and <math|X> is approaching and stable,
  with

  <\equation*>
    \<xi\><rsub|k><rsup|-1>*U<rsub|k,4><rsup|-1>*<around|(|r<rsub|k><rsup|4>*J<rsub|0,a*b>|)>\<longrightarrow\>T<rsub|0,a*b>.
  </equation*>

  Let <math|J\<in\><around|(|\<cal-F\><rsup|S><rsub|4>|)><rsup|4\<times\>4>>
  be symmetric, real, conserved and covariant under signed permutations.
  Suppose it satisfies the translation Ward identity with rows <math|W> and
  the rotation Ward identity with some rotation rows. Then:

  (a) <math|U<rsub|k,4><rsup|-1>*<around|(|r<rsub|k><rsup|4>*J<rsub|a*b>|)>\<to\>\<kappa\><rsup|-1>*T<rsub|0,a*b>>
  for every <math|a,b>.

  (b) For every finite tuple of free fields <math|q<rsub|i>>, every
  assignment of slots to either <math|U<rsub|k>*q<rsub|i>> or
  <math|r<rsub|k><rsup|4>*J<rsub|a<rsub|i>*b<rsub|i>>>, and every
  <math|j\<geqslant\>0>, the resulting correlations at
  <math|r<rsub|k>*y<rsub|i>> converge with their order-<math|j> derivatives
  uniformly on compact subsets of <math|<math-up|Conf><rsub|n>>. The limit is
  the free correlation with each stress slot replaced by
  <math|\<kappa\><rsup|-1>*T<rsub|0,a<rsub|i>*b<rsub|i>>>.

  (c) For the canonical datum with plan <math|\<partial\><rsup|<math-up|free>>>
  and stress <math|T<rsup|<math-up|free>>>, <math|\<kappa\>=-1>. Thus the
  Ward-normalized physical stress converges to <math|-T<rsup|<math-up|free>>>
  without the factor <math|\<xi\><rsub|k><rsup|-1>>.

  <em|Status:> theorem. VI.1 supplies a stress <math|J> satisfying these Ward
  laws. The mixed-correlation conclusion follows from (a) and VI.2.u; the
  linked mixed-correlation theorem states its specialization to that stress.
  <em|Lean:> <hlink|<verbatim|Pert.meter_physical>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L118-L144>,
  <hlink|<verbatim|Pert.mixed_leading>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lifted.lean#L85-L124>,
  <hlink|<verbatim|kappa_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lifted.lean#L65-L74>,
  <hlink|<verbatim|common_stress>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lifted.lean#L38-L49>,
  <hlink|<verbatim|Pert.Supplier>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L22-L32>,
  <hlink|<verbatim|Org.Tab>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L19-L24>.

  <section|2. What it uses><label|2-what-it-uses>

  <strong|From other units.>

  <\itemize-minus>
    <item>III.16 supplies on-shell Taylor spaces, label frames, substitution
    into curvature polynomials, and the cross-site Wick pairing formula:
    <hlink|<verbatim|YM.Maxwell.Wick.moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127>;
    <hlink|<verbatim|YM.Maxwell.observable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L66-L67>.

    <item>IV.1 supplies tables, quotient fields, ordered cutoff limits and
    lattice smearing. The derivative and inclusion laws give the orientation
    law: <hlink|<verbatim|YM.Work.D06.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D06.lean#L137-L139>.
    Its rank-corrected widths give the upper dimension bound used here:
    <hlink|<verbatim|YM.Next.UVStress.cap_given>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L110-L115>.

    <item>V.1 gives smeared reflection positivity from point reflection
    positivity and derivative bounds from order-zero bounds:
    <hlink|<verbatim|YM.Work.B08.smear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B08.lean#L193-L203>;
    <hlink|<verbatim|YM.Work.B10.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B10.lean#L95-L105>.

    <item>VI.1 supplies local windows, finite separating correlation tests,
    collinear Ward diagrams, and the derivative, rotation and track laws.
    Rotation laws follow from invariance:
    <hlink|<verbatim|YM.Work.A14.laws_of_oriented>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L403-L415>.
    It also supplies the Casimir relations and annihilating polynomials:
    <hlink|<verbatim|YM.Work.A09.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A09.lean#L85-L90>;
    <hlink|<verbatim|YM.Work.A10.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A10.lean#L113-L115>;
    <hlink|<verbatim|YM.Work.A12.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A12.lean#L323-L336>.

    <item>III.10 assembles Maxwell data from these components:
    <hlink|<verbatim|YM.Bid.masts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Scope.lean#L24-L29>.

    <item>III.11 supplies balanced weak-comparison estimates and the shell
    estimates for the interacting Ward identities. It combines these with the
    present stress-line construction to obtain the infrared and ultraviolet
    data: <hlink|<verbatim|YM.MergeProof.East.CompleteWeak>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L35>;
    <hlink|<verbatim|YM.MergeProof.Acme.readyA>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L15-L30>;
    <hlink|<verbatim|YM.MergeProof.Acme.emanate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L31-L37>.

    <item>VII.5 supplies the comparison of stress and derivative
    normalizations along tracks and the nontriviality test for a
    Ward-normalized stress: <hlink|<verbatim|YM.Extra.WeakScaling.tracks_ratio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L43-L54>;
    <hlink|<verbatim|YM.Extra.WeakScaling.flux_nontrivial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Criteria.lean#L64-L70>.

    <item>VIII.1 defines the Maxwell, infrared and ultraviolet data:
    <hlink|<verbatim|YM.Org.MaxwellData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170>;
    <hlink|<verbatim|YM.Org.IR>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L172-L175>;
    <hlink|<verbatim|YM.Org.UV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L177-L186>.
  </itemize-minus>

  <strong|Standard mathematics.> Wick's theorem and the bosonic Fock inner
  product (Glimm\UJaffe, ch. 6); reflection positivity of Gaussian fields
  (Osterwalder\USchrader, 1973/75); the Euclidean Green function and Cartan's
  formula; integration by parts and approximate identities; homogeneous
  harmonic functions and the Kelvin transform; finite-dimensional
  rank\Unullity, openness of injectivity and surjectivity, compactness of
  spheres, and uniqueness for linear ODEs. The passage from uniform
  order-zero test estimates to smooth convergence uses closure under
  gradients, localization and Fourier inversion (VI.2.u).

  <strong|Imported constants and assumptions.> Simplicity of <math|G> enters
  the stress classification and the rigidity arguments for the Maxwell data.
  It is essential for the one-dimensional stress line: for
  <math|\<frak-g\>=\<frak-g\><rsub|1>\<oplus\>\<frak-g\><rsub|2>>, the two
  factors have separately invariant conserved Maxwell stresses. The
  propagator normalization is <math|c<rsub|0>=<around|(|4*\<pi\><rsup|2>|)><rsup|-1>>.
  The explicit correlation tests give the integers <math|-256,-512,128,-128>
  in VI.2.l and the factor <math|256*dim \<frak-g\>*<space|0.17em>c<rsub|0><rsup|2>>
  in VI.2.n. The station estimates and dimension bound enter as hypotheses of
  the transfer argument, with their discharge stated in VI.2.7\U8.

  <section|3. Strategy><label|3-strategy>

  The free table is realized by invariant polynomials in on-shell curvature
  coefficients with Wick correlations. Translation and rotation covariance,
  analyticity and polynomial bounds follow from the propagator. Reflection
  positivity uses a Fock-space factorization. For two polynomials at mirror
  points, the reflected Gram matrix of their finitely many coordinate probes
  is positive definite. Factoring it as <math|L<rsup|\<ast\>>*L> identifies
  their correlation with a Fock inner product after an invertible linear
  substitution. Strict positivity eliminates further null fields and
  identifies the free quotient with <math|\<cal-P\><rsub|d>>.

  For the Ward identity, replace the singular propagator by a smooth curl
  source. Its divergence is a derivative of an approximate identity. Two
  integrations by parts and removal of the regulator give the local charge
  <math|-\<cal-L\><rsub|v>*f>. Differentiation in the source point extends
  the charge to every Taylor order. Wick expansion then leaves three
  possibilities: both stress legs meet the marked site, giving zero by
  homogeneity; one meets that site and one a spectator, giving the desired
  derivation; or both meet spectators, giving a source-free current inside
  the cutoff.

  The free stress line is computed in finite-dimensional spaces. Signed
  covariance allows three centred symmetric tensors in degree four and at
  most two vectors in degree five. Two explicit correlation tests prove that
  divergence has rank two. Its kernel is therefore the line generated by
  <math|T<rsup|<math-up|free>>>. A translation Ward test fixes the constant
  <math|\<kappa\>=-\<tau\>> for stress <math|\<tau\>*T<rsup|<math-up|free>>>.

  Stations give comparison maps at scales tending to zero. Correct them
  recursively to intertwine inclusions. Finite separating tests make the
  corrected maps eventually injective; the dimension bound makes them
  isomorphisms. Integration by parts and the derivative law show that
  <math|r<rsub|k>*U<rsub|k><rsup|-1>*W<rsub|a>*U<rsub|k>\<to\>\<partial\><rsup|<math-up|free>><rsub|a>>.
  The correlation differences, including those with convergent field
  coefficients, are closed under gradients, so the uniform test estimates
  improve to smooth local convergence.

  Transport the interacting divergence to the free spaces, recentering
  tensors after transport. It converges to free divergence, so surjectivity
  and rank\Unullity transfer the one-dimensional kernel to <math|S>.
  Normalize a nonzero vector in this kernel to a sphere in the free stress
  space and pass to a subsequence. Its limit is a nonzero centred conserved
  free tensor, hence a multiple of <math|T<rsup|<math-up|free>>>; a single
  sign choice fixes the limit on the entire comparison sequence.

  Finally, a Ward-normalized stress <math|J> on <math|S> has centred part
  proportional to the constructed stress:
  <math|c*<around|(|J-<around|\<langle\>|J|\<rangle\>>*\<b-1\>|)>=J<rsub|0>>.
  Comparing the derivative and stress Ward identities along tracks gives
  <math|c/\<xi\><rsub|k>\<to\>\<kappa\>>. Thus
  <math|U<rsub|k><rsup|-1>*<around|(|r<rsub|k><rsup|4>*J|)>\<to\>\<kappa\><rsup|-1>*T<rsub|0>=-T<rsup|<math-up|free>>>
  in the canonical normalization. This obtains the interacting stress from
  the finite-dimensional conservation law, then fixes its scale by the Ward
  identity.

  <section|4. Steps><label|4-steps>

  <subsection|4.1 The free table><label|41-the-free-table>

  <strong|Lemma VI.2.a (field spaces and correlations).> For every <math|d>,
  the null labels are exactly the kernel of substitution into
  <math|\<cal-P\><rsub|d>>, and <math|\<iota\><rsub|d>:\<cal-F\><rsup|<math-up|free>><rsub|d>\<to\>\<cal-P\><rsub|d>>
  is an isomorphism carrying correlations to Wick moments.

  <em|Sketch.> The free table is defined by substitution followed by the Wick
  moment. A residual polynomial has zero correlations with every family of
  shell-sector spectators. A nonzero polynomial has positive two-point
  correlation with its own reflected conjugate by VI.2.b, which remains in
  the same sector. Thus the residual subspace is zero. <em|Lean:>
  <hlink|<verbatim|fields>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L33-L35>,
  <hlink|<verbatim|no_residual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Caps.lean#L90-L113>,
  <hlink|<verbatim|freeTable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L23-L24>,
  <hlink|<verbatim|Wick.moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127>.

  <strong|Lemma VI.2.b (strict reflection positivity).> For
  <math|x<rsub|a>\<gtr\>0>, the pairing <math|<around|\<langle\>|<around|(|\<vartheta\><rsub|a>*p|)>*<around|(|\<theta\><rsub|a>*x|)>*q<around|(|x|)>|\<rangle\>><rsub|0>>
  is a positive-definite Hermitian form on <math|\<cal-W\>>.

  <em|Sketch.> Let <math|s> be the finite union of coordinate variables
  appearing in <math|p> and <math|q>. The reflected propagator Gram matrix
  <math|M<rsub|s>> is positive definite; factor it as
  <math|M<rsub|s>=L<rsup|\<ast\>>*L>. The Wick pairing between the two sites
  then equals <math|<around|\<langle\>|T<rsub|L>*p,T<rsub|L>*q|\<rangle\>><rsub|<math-up|Fock>>>,
  where <math|T<rsub|L>> substitutes <math|e<rsub|i>\<mapsto\><big|sum><rsub|j>L<rsub|j*i>*e<rsub|j>>.
  The Fock form makes monomials orthogonal with squared norms
  <math|\<alpha\>!>. Since <math|L> is invertible, the form is definite.
  Taking <math|q=p> gives strict positivity; testing a residual polynomial
  against its reflected conjugate gives VI.2.6(d). <em|Lean:>
  <hlink|<verbatim|detects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Core.lean#L94-L110>,
  <hlink|<verbatim|core>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Core.lean#L44-L92>,
  <hlink|<verbatim|Fock.halves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Fock.lean#L188-L206>,
  <hlink|<verbatim|coordGram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Gram.lean#L82-L105>,
  <hlink|<verbatim|ghosts_out>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Statistic.lean#L80-L99>.
  <em|(<verbatim|detects>, <verbatim|core> and <verbatim|ghosts_out>: proof
  read; reflected Gram positivity and Fock pairing factorization: statement
  checked)>

  <strong|Lemma VI.2.c (the Euclidean hierarchy).> The free table is
  reflection positive, real-analytic on distinct-point configurations,
  translation invariant, and has polynomial bounds there, including bounds
  for all derivatives.

  <em|Sketch.> For words with distinct sites in a positive half-space, the
  multi-site Fock factorization makes the matrix of reflected correlations
  positive semidefinite. A leg kernel between probes of orders <math|j,l> is
  analytic and harmonic off zero, homogeneous of degree
  <math|-<around|(|4+j+l|)>>, and becomes analytic on all of
  <math|\<bbb-R\><rsup|4>> after multiplication by
  <math|<around|\||x|\|><rsup|2*<around|(|3+j+l|)>>>. Its bound on a sphere
  and homogeneity give a polynomial bound away from zero. Finite Wick sums
  inherit analyticity and bounds. The derivative law gives bounds for all
  derivatives; V.1 gives smeared positivity. The propagator depends only on
  point differences, which gives translation invariance. <em|Lean:>
  <hlink|<verbatim|positive_table>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Caps.lean#L137-L155>,
  <hlink|<verbatim|cabinets_positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Studio.lean#L141-L158>,
  <hlink|<verbatim|kernel_pole>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Pole.lean#L238-L260>,
  <hlink|<verbatim|cap_moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Caps.lean#L69-L75>,
  <hlink|<verbatim|hierarchy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L106-L114>.
  <em|(proof read; multi-site Fock factorization used as an input)>

  <strong|Lemma VI.2.d (derivatives, rotations and conservation).> The Taylor
  derivations and rotation action give VI.2.1(c), and
  <math|T<rsup|<math-up|free>>> satisfies VI.2.1(d).

  <em|Sketch.> The directional derivative raises the Taylor order by one and
  the weight by one. Applying it at one insertion differentiates precisely
  the propagator legs incident to that insertion. Rotation covariance follows
  from the natural jet action and invariance of the propagator; VI.1 then
  gives the rotation laws.

  To prove conservation as a polynomial identity, evaluate on an arbitrary
  Taylor tower. Only its orders zero and one occur, so realize them by a wave
  <math|f=A<rsub|0>+A<rsub|1>> with homogeneous components of degrees zero
  and one. The evaluated divergence is <math|<frac|1|2>*<big|sum><rsub|a>\<partial\><rsub|a>*\<Theta\><rsub|a*b><around|(|f,f|)>=<big|sum><rsub|i><around|\<langle\>|<around|(|<math-up|Div><space|0.17em>f|)><rsub|i>,f<rsub|b*i>|\<rangle\>>=0>.
  Evaluation on all towers separates polynomials. Symmetry, reality,
  tracelessness and centring follow from the displayed stress polynomial and
  the absence of one-site contractions. <em|Lean:>
  <hlink|<verbatim|scheme>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L80-L83>,
  <hlink|<verbatim|gear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L153-L170>,
  <hlink|<verbatim|realStress>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L176-L179>,
  <hlink|<verbatim|pol_conservation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Stress.lean#L76-L117>,
  <hlink|<verbatim|polStress>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Stress.lean#L24-L25>.

  <subsection|4.2 The local Ward charge><label|42-the-local-ward-charge>

  <strong|Lemma VI.2.e (divergence of the current).> For smooth closed
  two-forms <math|f,g> on an open set <math|U> and a smooth conformal Killing
  field <math|v>,

  <\equation*>
    <big|sum><rsub|a>\<partial\><rsub|a>*j<rsup|v><rsub|a><around|(|f,g|)>=<big|sum><rsub|b>v<rsub|b>*<big|sum><rsub|i><around*|(|<around|\<langle\>|<around|(|<math-up|Div><space|0.17em>f|)><rsub|i>,g<rsub|b*i>|\<rangle\>>+<around|\<langle\>|f<rsub|b*i>,<around|(|<math-up|Div><space|0.17em>g|)><rsub|i>|\<rangle\>>|)>.
  </equation*>

  In particular, the flux vanishes when both fields are Maxwell waves near
  the cutoff support.

  <em|Sketch.> Apply the product rule. The contraction of <math|\<nabla\>*v>
  with <math|\<Theta\>> vanishes because <math|\<Theta\>> is symmetric and
  traceless and the symmetric part of <math|\<nabla\>*v> is scalar. The
  remaining identity follows by the Bianchi equations. Integrating against
  the cutoff proves the flux statement. <em|Lean:>
  <hlink|<verbatim|current_div>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L151-L181>,
  <hlink|<verbatim|sourcefree_flux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L239-L250>.

  <strong|Lemma VI.2.f (regulated source).> Under the hypotheses of VI.2.2,
  fix <math|i,l,c> and <math|t\<gtr\>0>. Set

  <\equation*>
    G<rsub|t><around|(|y|)>=c<rsub|0>*<around|(|t<rsup|2>+<around|\||y|\|><rsup|2>|)><rsup|-1>,<space|2em>\<rho\><rsub|t><around|(|y|)>=-\<Delta\>*G<rsub|t><around|(|y|)>=8*c<rsub|0>*t<rsup|2>*<around|(|t<rsup|2>+<around|\||y|\|><rsup|2>|)><rsup|-3>,
  </equation*>

  and let <math|R<rsup|t>=d*\<alpha\><rsup|t>*<space|0.17em>e<rsub|c>>, with
  <math|\<alpha\><rsup|t><rsub|b>=\<delta\><rsub|i*b>*\<partial\><rsub|l>*G<rsub|t>*<around|(|\<cdummy\>-x|)>-\<delta\><rsub|l*b>*\<partial\><rsub|i>*G<rsub|t>*<around|(|\<cdummy\>-x|)>>.
  Then <math|R<rsup|t>> is closed and

  <\equation*>
    <around|(|<math-up|Div><space|0.17em>R<rsup|t>|)><rsub|b>=<around|(|\<delta\><rsub|l*b>*\<partial\><rsub|i>*\<rho\><rsub|t>-\<delta\><rsub|i*b>*\<partial\><rsub|l>*\<rho\><rsub|t>|)>*<around|(|\<cdummy\>-x|)>*e<rsub|c>.
  </equation*>

  Writing <math|h<rsub|a>=<around|(|\<iota\><rsub|v>*f|)><rsup|c><rsub|a>>,
  its flux is

  <\equation*>
    \<Phi\><rsub|\<chi\>><around|(|j<rsup|v><around|(|R<rsup|t>,f|)>|)>=<big|int>\<rho\><rsub|t>*<around|(|y-x|)>*<around*|[|\<partial\><rsub|l>*<around|(|\<chi\>*h<rsub|i>|)>-\<partial\><rsub|i>*<around|(|\<chi\>*h<rsub|l>|)>|]><around|(|y|)>*<space|0.17em>d*y.
  </equation*>

  <em|Sketch.> Apply VI.2.e and integrate
  <math|\<chi\><space|0.17em><math-up|div><space|0.17em>j<rsup|v>> by parts.
  Insert the displayed divergence of <math|R<rsup|t>> and integrate by parts
  again to move derivatives from <math|\<rho\><rsub|t>> to <math|\<chi\>*h>.
  <em|Lean:> the regulated-flux identity in
  <hlink|<verbatim|Contact.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Contact.lean#L56-L98>,
  <hlink|<verbatim|regulated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Regulator.lean#L147-L148>.

  <strong|Lemma VI.2.g (removing the regulator).> The regulated flux extends
  continuously to <math|t=0> and gives VI.2.2(a).

  <em|Sketch.> On the compact support of <math|\<nabla\>*\<chi\>>, the source
  point is excluded and <math|R<rsup|t>> is jointly continuous down to zero,
  where it equals <math|f<rsup|F<rsup|c><rsub|i*l>,x>>. The functions
  <math|\<rho\><rsub|t>> form an approximate identity. Hence VI.2.f tends to
  <math|<around|(|\<partial\><rsub|l>*h<rsub|i>-\<partial\><rsub|i>*h<rsub|l>|)><around|(|x|)>=-<around|(|\<cal-L\><rsub|v>*f|)><rsup|c><rsub|i*l><around|(|x|)>>,
  since <math|\<chi\>=1> near <math|x>. <em|Lean:>
  <hlink|<verbatim|local_force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Contact.lean#L137-L156>.

  <strong|Lemma VI.2.h (charges of higher-order probes).> Under the
  hypotheses of VI.2.2(b), the flux identity holds in every order.
  Translations, rotations and dilation give its three stated specializations.

  <em|Sketch.> Probes of order <math|j+1> are spanned by directional
  derivatives of probes of order <math|j>. Keep <math|v> and <math|\<chi\>>
  fixed while differentiating in the source point. The generated fields
  satisfy <math|<frac|d|d*s>*f<rsup|p,x+s*u>=f<rsup|\<partial\><rsub|u>*p,x+s*u>>,
  where <math|\<partial\><rsub|u>*p> is the probe representing the derivative
  of <math|p<around|(|f|)>>. Compact support away from the source justifies
  differentiation under the flux integral. The right side differentiates as a
  probe evaluation because <math|\<cal-L\><rsub|v>*f> is a Maxwell wave.

  For a centred affine motion, the order-<math|j> coefficient of
  <math|\<cal-L\><rsub|v>*f> at the centre depends only on the order-<math|j>
  coefficient of <math|f>. For rotations it is the derivative of the inverse
  action on solution coefficients: if that action is <math|Q<rsub|g>>, then
  <math|<around|(|\<omega\>\<cdot\>p|)><around|(|A|)>=<frac|d|d*t>\|<rsub|t=0>p*<around|(|Q<rsub|exp
  <around|(|-t*\<omega\>|)>>*A|)>>. For dilation, Euler's identity on the
  homogeneous wave gives the factor <math|j+2>. <em|Lean:>
  <hlink|<verbatim|jet_force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Force.lean#L131-L186>,
  <hlink|<verbatim|drift_flux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Affine.lean#L249-L255>,
  <hlink|<verbatim|angular_flux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Angular.lean#L181-L195>,
  <hlink|<verbatim|radial_flux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Affine.lean#L220-L247>.

  <strong|Lemma VI.2.i (two sources at one point).> With <math|\<chi\>,v> as
  in VI.2.2, probes <math|p,q> of orders <math|j,l>, and <math|v> homogeneous
  about <math|x> of degree <math|e\<in\><around|{|0,1|}>>, the flux
  <math|Z=\<Phi\><rsub|\<chi\>><around|(|j<rsup|v><around|(|f<rsup|p,x>,f<rsup|q,x>|)>|)>>
  vanishes.

  <em|Sketch.> The current is divergence-free off <math|x>, so changing the
  cutoff while keeping it equal to one near <math|x> preserves its flux.
  Replace it by <math|\<chi\>*<around|(|x+|(>\<cdot\>-x)/2)>. The two
  generated fields have homogeneities <math|-<around|(|4+j|)>> and
  <math|-<around|(|4+l|)>>, so a change of variables gives
  <math|Z=2<rsup|3+e-<around|(|8+j+l|)>>*Z>. The factor is strictly less than
  one. <em|Lean:> <hlink|<verbatim|two_flux_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Repeat.lean#L63-L128>.

  <strong|Lemma VI.2.j (Ward identities for Wick polynomials).> The three
  charges of VI.2.h imply VI.2.3 for every tuple of Wick polynomials.

  <em|Sketch.> More generally, take a conformal Killing field <math|v> and a
  polynomial derivation <math|D> for which the two-source flux at the marked
  site vanishes and

  <\equation*>
    \<Phi\><rsub|\<chi\>><around|(|j<rsup|v><around|(|f<rsup|p,x<rsub|0>>,f<rsup|q,y>|)>|)>=-<around|\<langle\>|<around|(|D*p|)><around|(|x<rsub|0>|)>*q<around|(|y|)>|\<rangle\>><rsub|0>*<space|2em><around|(|y\<nin\><math-up|supp><space|0.17em>\<chi\>|)>.
  </equation*>

  The three motions satisfy these conditions by VI.2.h\Ui. For monomials,
  expand the two stress legs in the Wick moment. The integrand is one half
  the sum over ordered pairs of extracted legs of their polarized current
  times the remaining Wick moment. Two marked legs give zero by VI.2.i; two
  spectator legs give zero by VI.2.e. The mixed pairs give <math|D> on each
  marked leg, with the two orders cancelling the factor one half. The Leibniz
  rule reassembles the result as <math|D*p<rsub|0>>. Multilinearity gives the
  identity for all polynomials, and <math|\<iota\>> carries it to field-space
  Ward laws. <em|Lean:> <hlink|<verbatim|fees>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Taxes.lean#L115-L172>,
  <hlink|<verbatim|moment_force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Taxes.lean#L177-L200>,
  <hlink|<verbatim|Motion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Taxes.lean#L24-L28>,
  <hlink|<verbatim|beacon_signal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Beacon.lean#L74-L136>.

  <subsection|4.3 The free stress line and the Ward
  constant><label|43-the-free-stress-line-and-the-ward-constant>

  <strong|Lemma VI.2.k (the tensor and vector spaces).> Assume <math|G> is
  simple. Put

  <\equation*>
    Q<rsub|a*k,b*j>=<big|sum><rsub|c>F<rsup|c><rsub|a*k>*F<rsup|c><rsub|b*j>,<space|2em>P<rsub|a*b>=<big|sum><rsub|k>Q<rsub|a*k,b*k>,<space|2em>N=<big|sum><rsub|b,k>Q<rsub|b*k,b*k>,
  </equation*>

  <\equation*>
    A<rsub|a*b>=\<delta\><rsub|a*b>*P<rsub|a*a>,<space|2em>B<rsub|a*b>=\<delta\><rsub|a*b>*<around|(|N-2*P<rsub|a*a>|)>,<space|2em>C<rsub|a*b>=<around|(|1-\<delta\><rsub|a*b>|)>*P<rsub|a*b>.
  </equation*>

  Then <math|A,B,C> form a real basis of <math|\<cal-Z\>>, and
  <math|dim<rsub|\<bbb-R\>> \<cal-V\>\<leqslant\>2>.

  <em|Sketch.> The simple-group invariant calculation through weight four,
  followed by sign changes and coordinate permutations, leaves two diagonal
  coefficients and one off-diagonal coefficient. Centring removes the scalar
  unit term, and reality makes the coefficients real. The tensors above have
  zero one-point functions. Their independence follows from the tests in
  VI.2.l together with a normalized two-point test of the <math|01> component
  against <math|Q<rsub|02,12>>, whose values on <math|<around|(|A,B,C|)>> are
  <math|<around|(|0,0,-16|)>>.

  For the vector bound, the Bianchi and Maxwell equations reduce the zeroth
  component to the real span of two fixed curvature\Ufirst-derivative
  combinations. Signed permutations determine every other component from it.
  Thus projection to the zeroth component embeds <math|\<cal-V\>> into a
  space of dimension at most two. <em|Lean:>
  <hlink|<verbatim|exhaust>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/StressSpace.lean#L115-L122>,
  <hlink|<verbatim|mixed_space>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L56-L71>,
  <hlink|<verbatim|capped_v>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/VRank.lean#L102-L116>.
  <em|(proof read; invariant spanning calculations used as inputs)>

  <strong|Lemma VI.2.l (rank of free divergence).> Under the hypotheses of
  VI.2.4, let <math|s<rsub|1>,s<rsub|2>> test the zeroth component of a
  vector at <math|e<rsub|0>> against <math|Q<rsub|01,01><around|(|0|)>> and
  <math|Q<rsub|12,12><around|(|0|)>>, respectively, taking real parts and
  dividing by <math|dim \<frak-g\>*<space|0.17em>c<rsub|0><rsup|2>>. Then

  <\equation*>
    <around|(|s<rsub|1>,s<rsub|2>|)><around|(|<math-up|div>A|)>=<around|(|-256,0|)>,<space|2em><around|(|s<rsub|1>,s<rsub|2>|)><around|(|<math-up|div>B|)>=<around|(|0,-512|)>,<space|2em><around|(|s<rsub|1>,s<rsub|2>|)><around|(|<math-up|div>C|)>=<around|(|128,-128|)>.
  </equation*>

  <em|Sketch.> Differentiate the explicit two-point curvature correlations
  and evaluate the finite index sums. The first two columns make
  <math|s\<circ\><math-up|div>> onto <math|\<bbb-R\><rsup|2>>. By VI.2.k,
  <math|s> is therefore an isomorphism and divergence is onto. Rank\Unullity
  gives a one-dimensional kernel. The columns also show that
  <math|<frac|1|2>*A-<frac|1|4>*B+C> lies in it, and this tensor is
  <math|P-<frac|1|4>*\<delta\>*N=T<rsup|<math-up|free>>>. <em|Lean:>
  <hlink|<verbatim|east_column>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pivots.lean#L96-L99>,
  <hlink|<verbatim|west_column>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pivots.lean#L100-L103>,
  <hlink|<verbatim|cross_column>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pivots.lean#L104-L107>,
  <hlink|<verbatim|scope_exact>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L33-L41>,
  <hlink|<verbatim|rank_on>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L43-L47>,
  <hlink|<verbatim|line_dim>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L73-L79>,
  <hlink|<verbatim|lighting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L86-L94>,
  <hlink|<verbatim|certificate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L125-L132>.
  <em|(proof read; underlying differentiated propagator table used as an
  input)>

  <strong|Lemma VI.2.m (canonical choice of stress).> For any Maxwell datum
  for a simple <math|G> and any <math|\<tau\>\<ne\>0>, one can retain its
  derivative plan, rotations, hierarchy and Lorentz representation while
  replacing its stress by <math|\<tau\>*T<rsup|<math-up|free>>> and obtaining
  (FD) and full rotation covariance.

  <em|Sketch.> Divide the original stress by its Ward constant to obtain Ward
  rows <math|<around|(|\<partial\>,\<rho\>|)>>. Average over
  <math|O<around|(|4|)>> with Haar measure and take the compatible real part.
  The Ward identities imply symmetry and conservation of the resulting
  tensor. Centre it by subtracting its expectation times the unit; this
  preserves its Ward laws and covariance. The centred tensor <math|j<rsub|0>>
  is nonzero, since otherwise its translation Ward law would make the
  derivative vanish in degree four. By VI.2.l,
  <math|j<rsub|0>=c*T<rsup|<math-up|free>>> with <math|c\<ne\>0>. Scaling it
  by <math|\<tau\>/c> gives the desired stress with Ward constant
  <math|\<tau\>/c>; VI.2.n identifies this constant as <math|-\<tau\>>.
  <em|Lean:> <hlink|<verbatim|ignite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L77-L134>,
  <hlink|<verbatim|every_light>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L41-L51>,
  <hlink|<verbatim|fire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L137-L150>.
  <em|(proof read; Haar averaging and Ward-implied conservation and symmetry:
  statement checked)>

  <strong|Lemma VI.2.n (the Ward constant).> If a Maxwell datum for a simple
  <math|G> has stress <math|\<tau\>*T<rsup|<math-up|free>>>, its Ward
  constant is <math|\<kappa\>=-\<tau\>>.

  <em|Sketch.> Test its translation Ward identity in direction zero with
  <math|Q<rsub|01,01>> at <math|0> and at <math|-e<rsub|0>>. Wick expansion
  leaves one stress leg at each insertion. The single-contraction flux is
  <math|-\<partial\><rsub|0>*u<rsub|01><around|(|0|)>> for a smooth Maxwell
  wave <math|u> on the cutoff support. Evaluating the remaining propagators
  gives flux <math|256*\<tau\>*dim \<frak-g\>*<space|0.17em>c<rsub|0><rsup|2>>.
  The derivative side is <math|-256*\<kappa\>*dim
  \<frak-g\>*<space|0.17em>c<rsub|0><rsup|2>>. Since simplicity implies
  <math|dim \<frak-g\>\<gtr\>0>, the constants agree only if
  <math|\<kappa\>=-\<tau\>>.

  There is also a structural proof in the canonical case. If the plan is
  <math|\<partial\><rsup|<math-up|free>>> and the stress is
  <math|T<rsup|<math-up|free>>>, VI.2.3 gives Ward constant <math|-1>.
  Comparing translation Ward identities for two constants, using separating
  correlations, makes their difference times the derivative tuple in degree
  four zero. That tuple is nonzero, so the constant is unique. <em|Lean:>
  <hlink|<verbatim|negated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pressure.lean#L132-L151>,
  <hlink|<verbatim|required>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pressure.lean#L158-L161>,
  <hlink|<verbatim|single_cross>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Contact.lean#L106-L124>,
  <hlink|<verbatim|battery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/TripleMeter.lean#L63-L80>,
  <hlink|<verbatim|at_tower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pressure.lean#L96-L118>,
  <hlink|<verbatim|kappa_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lifted.lean#L65-L74>,
  <hlink|<verbatim|same_translation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lifted.lean#L57-L63>.

  <subsection|4.4 The remaining Maxwell data><label|44-the-remaining-maxwell-data>

  <strong|Lemma VI.2.o (selection of the derivative).> For simple <math|G>,
  there is <math|d<rsub|0>> such that spectators in
  <math|\<cal-P\><rsub|d<rsub|0>>> detect every shell-sector polynomial, of
  any weight. For every <math|d\<geqslant\>max <around|(|d<rsub|0>,4|)>>, the
  admissible vector maps in VI.2.5(a) whose Ward diagrams vanish form the
  line <math|\<bbb-R\>*\<partial\><rsup|<math-up|free>>>. Finitely many
  collinear diagrams suffice.

  <em|Sketch.> For detection, induct on the weight. Mixed contractions lower
  the weight and constrain derivatives in the highest-order variables. An
  explicit colour matrix has nonzero determinant as a matrix of polynomials,
  so these constraints eliminate the high-order variables. The remaining
  bounded Taylor orders are detected by a fixed finite exterior degree.

  For selection, the low-degree classification first gives a scalar multiple
  of the derivative on degree four. Subtract that multiple. The remainder
  kills the free stress; the dilation Ward identity and the detection result
  make it commute with the weight derivation. Vector covariance makes it
  anticommute with total coordinate inversion. Since inversion acts on weight
  <math|w> by <math|<around|(|-1|)><rsup|w>>, the remainder is zero.
  Analyticity transports vanishing of all derivatives at collinear
  configurations to arbitrary configurations. Finite-dimensionality reduces
  the intersection of all diagram kernels to a finite intersection.
  <em|Lean:> <hlink|<verbatim|exposed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Hidden.lean#L113-L137>,
  <hlink|<verbatim|matrix_meal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Hidden.lean#L66-L87>,
  <hlink|<verbatim|charges_quiet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Magnitude.lean#L142-L181>,
  <hlink|<verbatim|finite_lenses>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Scenes.lean#L92-L123>,
  <hlink|<verbatim|scanner>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Scenes.lean#L125-L132>,
  <hlink|<verbatim|born>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Born.lean#L51-L70>.
  <em|(proof read; low-degree vector-map classification and bounded-order
  detection used as inputs)>

  <strong|Lemma VI.2.p (the Ward-vanishing test).> The endomorphism family in
  VI.2.5(b) vanishes for every <math|d\<geqslant\>4>.

  <em|Sketch.> Write the family on polynomials. Exact degree-four two-point
  correlations imply that each endomorphism commutes with coordinate quarter
  turns on the degree-four image. Equivariance then makes its alternating
  bilinear dependence on <math|u,v\<in\><with|math-font|Euler|s*o><around|(|4|)>>
  invariant under simultaneous conjugation by those turns. The finite
  quarter-turn calculation forces this alternating form to vanish. In
  particular, the family kills <math|T<rsup|<math-up|free>>>.

  Apply the local rotational Ward identity to its vanishing Ward sums. The
  commutator with every <math|\<rho\><around|(|\<omega\>|)>> has zero
  correlations with degree-<math|d> spectators and still lies in
  <math|\<cal-P\><rsub|d>>; VI.2.6(d) makes it zero. Uniqueness for the
  linear rotation ODE gives commutation with quarter turns on all of
  <math|\<cal-F\><rsup|<math-up|free>><rsub|d>>. The same alternating-form
  calculation now gives <math|T=0>. <em|Lean:>
  <hlink|<verbatim|erasing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/AwayTeam.lean#L48-L118>,
  <hlink|<verbatim|commute_ghost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Statistic.lean#L104-L150>,
  <hlink|<verbatim|complete_turn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/AwayTeam.lean#L29-L46>,
  <hlink|<verbatim|low_motion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Depth.lean#L162-L181>.

  <strong|Lemma VI.2.q (assembly of Maxwell data).> For simple <math|G> and
  <math|\<tau\>\<ne\>0>, the free lighthouse and the remaining data satisfy
  VI.2.5(a),(b).

  <em|Sketch.> VI.2.d gives the derivative and rotation laws; VI.2.j gives
  the Ward laws. The derivative is nonzero in every degree
  <math|d\<geqslant\>4>: differentiate a nonconstant invariant quadratic
  curvature polynomial and use faithfulness of the associated colour pairing.
  VI.2.o supplies the selection property. The Lorentz action on the free
  polynomial fields descends compatibly to their union, with boost generator
  <math|-i*\<rho\>> and the prescribed spatial rotations. Combine these
  results with the Casimir statements of VI.1 and the Ward-vanishing test
  VI.2.p. <em|Lean:> <hlink|<verbatim|shines>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L36-L42>,
  <hlink|<verbatim|maxwell_supplies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L45-L48>,
  <hlink|<verbatim|Bid.masts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Scope.lean#L24-L29>,
  <hlink|<verbatim|voyage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Descent.lean#L173-L177>.
  <em|(assembly and nonzero derivative: proof read; Lorentz and Casimir data:
  statement checked)>

  <subsection|4.5 Comparison with the Wilson
  limit><label|45-comparison-with-the-wilson-limit>

  <strong|Lemma VI.2.r (panels from a station).> An admissible station under
  the hypotheses of VI.2.8 yields the panel and estimate of VI.2.8(a).

  <em|Sketch.> The bounded lift maps lie in a fixed finite-dimensional space.
  Pass to a convergent subfilter and project their limits to the quotient
  fields of <math|S>. Reality, signed covariance and the degree-zero unit
  identity pass to the limit. Ordered smeared convergence also holds for
  convergent label coefficients, by finite-dimensional multilinearity. The
  change of variables in the dilated test then turns the admissibility
  estimate into the panel estimate. The subfilter proves an estimate for the
  same continuum table; it does not change the physical extraction order.
  <em|Lean:> <hlink|<verbatim|harvested>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L132-L180>,
  <hlink|<verbatim|calibrated_smear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Vary.lean#L62-L71>.

  <strong|Lemma VI.2.s (balanced estimates give stations).> Fix the
  extraction hypotheses of VI.2.8 and finite bounds <math|N,D\<geqslant\>0>
  and <math|R\<geqslant\>1>. Suppose stations satisfy <math|r<rsub|k>\<to\>0>
  and the eventual lift bounds and symmetries of VI.2.8. Let their normalized
  grid spacings be <math|s<rsub|k>\<gtr\>0> and their strip widths
  <math|\<sigma\><rsub|k>\<gtr\>0>. For each basis word <math|w> of arity
  <math|n\<leqslant\>N> and degrees at most <math|D>, suppose there are
  errors <math|e<rsub|k>\<to\>0> and eventually nonnegative costs
  <math|A<rsub|k>,B<rsub|k>> with

  <\equation*>
    \<sigma\><rsub|k>\<to\>0,<space|2em>4*n*s<rsub|k>\<leqslant\>\<sigma\><rsub|k><text|eventually>,<space|2em>A<rsub|k><rsup|n>*\<sigma\><rsub|k>\<to\>0,<space|2em>B<rsub|k><rsup|n>*s<rsub|k>/\<sigma\><rsub|k>\<to\>0.
  </equation*>

  For every sufficiently large fixed <math|k> and every convergent subfilter
  of the lifts along the extraction order, let <math|Q<rsub|k>> be the
  rescaled continuum correlation of their projected limits. Write
  <math|Q<rsub|0>> for the free correlation of <math|w> and

  <\equation*>
    E<rsub|\<sigma\>>=<around|{|y:<around|\||y<rsub|i><rsup|a>-y<rsub|j><rsup|a>|\|>\<gtr\>\<sigma\><text|for
    every >i\<ne\>j,a|}>.
  </equation*>

  Assume the following bounds for every such limit:

  <\equation*>
    <around|\||Q<rsub|k>|\|>\<leqslant\>A<rsub|k><rsup|n><space|1em><text|on
    >K<rsub|R,n>,<space|2em><around|\<\|\|\>|D*Q<rsub|k>|\<\|\|\>>\<leqslant\>4*n*B<rsub|k><rsup|n>/\<sigma\><rsub|k><space|1em><text|on
    >K<rsub|2*R,n>\<cap\>E<rsub|4*\<sigma\><rsub|k>>,
  </equation*>

  <\equation*>
    <around|\||Q<rsub|k>-Q<rsub|0>|\|>\<leqslant\>e<rsub|k><space|1em><text|on
    ><around|(|s<rsub|k>*\<bbb-Z\>|)><rsup|4*n>\<cap\>K<rsub|2*R,n>\<cap\>E<rsub|0>.
  </equation*>

  These bounds for all <math|N,D,R> imply the station property. The grid,
  bulk and finite-difference assumptions of the balanced estimate in III.11
  imply precisely these bounds for every cluster limit.

  <em|Sketch.> The excluded band <math|K<rsub|R,n>\<setminus\>E<rsub|8*\<sigma\><rsub|k>>>
  has volume <math|O<rsub|n,R><around|(|\<sigma\><rsub|k>|)>>, so its
  contribution is <math|O<rsub|n,R><around|(|<around|(|A<rsub|k><rsup|n>+<around|\<\|\|\>|Q<rsub|0>|\<\|\|\>><rsub|\<infty\>>|)>*\<sigma\><rsub|k>|)>>.
  Outside the band, rounding to the grid stays in
  <math|E<rsub|4*\<sigma\><rsub|k>>> and <math|K<rsub|2*R,n>> for large
  <math|k>. Interpolation costs <math|O<rsub|n><around|(|B<rsub|k><rsup|n>*s<rsub|k>/\<sigma\><rsub|k>|)>>
  plus the free correlation's modulus of continuity. All these terms and
  <math|e<rsub|k>> tend to zero. A contradiction subfilter with convergent
  lifts converts the bound into the ordered cutoff estimate. Expansion in the
  finite product basis, with coefficient sum bounded by a constant times
  <math|<big|prod><rsub|i><around|\<\|\|\>|v<rsub|i>|\<\|\|\>>>, gives
  admissibility for arbitrary tuples. Costs may depend on the basis word;
  only finitely many words occur for the fixed bounds. <em|Lean:>
  <hlink|<verbatim|cutoff_balance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Glide.lean#L102-L129>,
  <hlink|<verbatim|pays_film>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Glide.lean#L72-L99>,
  <hlink|<verbatim|Balances>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Glide.lean#L24-L31>,
  <hlink|<verbatim|Wheel.Spots>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Fringe.lean#L38-L42>,
  <hlink|<verbatim|supply_wheel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L121-L128>,
  <hlink|<verbatim|realizes_stations>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L134-L140>.

  <strong|Lemma VI.2.t (comparison isomorphisms).> Under the hypotheses of
  VI.2.7, there is an approaching stable scaling, initially with
  <math|\<xi\><rsub|k>=1>.

  <em|Sketch.> Choose stations of depth and arity bound <math|k>, radius
  bound <math|k+1>, tolerance <math|<around|(|k+1|)><rsup|-1>>, and strictly
  decreasing radii <math|r<rsub|k>\<leqslant\><around|(|k+1|)><rsup|-1>>.
  Their panels approach in the test sense of VI.2.7(a). For each consecutive
  free inclusion choose a real, signed-covariant left inverse
  <math|R<rsub|d>>. Starting with <math|Q<rsub|k,0>=U<rsub|k,0>>, set

  <\equation*>
    Q<rsub|k,d+1>=<math-up|inc><rsup|S>Q<rsub|k,d>*R<rsub|d>+U<rsub|k,d+1>*<around|(|1-<math-up|inc><rsup|<math-up|free>>R<rsub|d>|)>.
  </equation*>

  These maps intertwine inclusions exactly. Expansion into mixed tuples of
  lower-degree fields and complementary fields preserves the comparison
  estimates. Finitely many separating joint tests make <math|Q<rsub|k,d>>
  eventually injective. The dimension bound then makes it bijective. In each
  degree, fill the finitely many earlier indices with any one of these
  isomorphisms. This preserves eventual comparison, symmetry and inclusion
  identities and yields isomorphisms for every <math|k,d>. <em|Lean:>
  <hlink|<verbatim|Stations.ranging>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L27-L41>,
  <hlink|<verbatim|Stations.build_curve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L55-L73>,
  <hlink|<verbatim|signed_section>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Arrange.lean#L29-L72>,
  <hlink|<verbatim|corrected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Arrange.lean#L78-L81>,
  <hlink|<verbatim|MeterTest.injects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L88-L103>,
  <hlink|<verbatim|Stations.equivalences>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L132-L181>,
  <hlink|<verbatim|DimAbove>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L108>.

  <strong|Lemma VI.2.u (smooth convergence).> With the hierarchy and
  derivative laws of VI.2.7, every approaching scaling satisfies

  <\equation*>
    r<rsub|k>*U<rsub|k,d+1><rsup|-1>*W<rsub|a>*U<rsub|k,d>\<longrightarrow\>\<partial\><rsup|<math-up|free>><rsub|a>
  </equation*>

  in each finite-dimensional operator space. Its rescaled correlations
  converge with all derivatives uniformly on compact subsets of
  <math|<math-up|Conf><rsub|n>>. This also holds for free field tuples
  <math|v<rsub|k>\<to\>v> with fixed degrees.

  <em|Sketch.> The chain rule identifies a position derivative of a rescaled
  correlation with the correlation obtained by inserting the displayed
  transported derivative. Integrate against tests and move the derivative to
  the test. Approaching convergence and finitely many separating tests then
  determine the limit of the operator.

  Finite-dimensional multilinearity extends the test estimates to convergent
  field tuples. The resulting correlation differences are closed under
  gradients, by operator convergence. After localization, their Fourier
  transforms tend uniformly to zero: multiplication of a fixed test by any
  Fourier phase preserves its sup norm. Repeated integration by parts gives
  arbitrarily high decay in frequency, using the same estimates for gradient
  descendants. Fourier inversion gives uniform convergence; repeating this
  for descendants gives every derivative order. <em|Lean:>
  <hlink|<verbatim|scaled_identity>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Focus.lean#L22-L48>,
  <hlink|<verbatim|bend_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Focus.lean#L67-L92>,
  <hlink|<verbatim|closed_path>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Focus.lean#L158-L181>,
  <hlink|<verbatim|travels_jet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Focus.lean#L183-L196>,
  <hlink|<verbatim|GradientFamily.jets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Local.lean#L152-L181>.

  <strong|Lemma VI.2.v (rank transfer).> Every approaching stable scaling
  under VI.2.7 transfers surjectivity and the one-dimensional divergence
  kernel to <math|S>.

  <em|Sketch.> For large <math|k>, transport a free centred tensor by
  <math|U<rsub|k,4>> and then recenter it in <math|S>; this defines a real
  isomorphism <math|C<rsub|k>:\<cal-Z\><rsup|<math-up|free>>\<to\>\<cal-Z\><rsup|S>>.
  The inverse transports back and recentres; preservation of the unit makes
  the two composites identities. Let <math|V<rsub|k>:\<cal-V\><rsup|<math-up|free>>\<to\>\<cal-V\><rsup|S>>
  be transport by <math|U<rsub|k,5>>. Then

  <\equation*>
    Z<rsub|k>=V<rsub|k><rsup|-1>\<circ\><around|(|r<rsub|k><space|0.17em><math-up|div><rsup|S>|)>\<circ\>C<rsub|k>\<longrightarrow\><math-up|div><rsup|<math-up|free>>.
  </equation*>

  The centring term disappears on differentiation because the derivative
  kills the unit. Compose <math|Z<rsub|k>> with a right inverse of free
  divergence. The result tends to the identity on
  <math|\<cal-V\><rsup|<math-up|free>>>, hence is eventually invertible. Thus
  <math|<math-up|div><rsup|S>> is onto. The two isomorphisms identify the
  dimensions of domain and target with the free dimensions, so rank\Unullity
  gives kernel dimension one. <em|Lean:> <hlink|<verbatim|differential_rank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Dimension.lean#L165-L195>,
  <hlink|<verbatim|centerEquiv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Dimension.lean#L77-L82>.

  <strong|Lemma VI.2.w (one current along one comparison sequence).> Under
  VI.2.7, there are a nonzero centred conserved <math|J> and a refinement
  <math|Y> satisfying VI.2.7(c),(d).

  <em|Sketch.> Choose <math|B\<ne\>0> in <math|ker <math-up|div><rsup|S>> and
  normalize its entire transported stress tensor:

  <\equation*>
    \<xi\><rsub|k>=<frac|<around|\<\|\|\>|U<rsub|k,4><rsup|-1>*<around|(|r<rsub|k><rsup|4>*B|)>|\<\|\|\>>|<around|\<\|\|\>|T<rsub|0>|\<\|\|\>>>,<space|2em>\<beta\><rsub|k>=\<xi\><rsub|k><rsup|-1>*U<rsub|k,4><rsup|-1>*<around|(|r<rsub|k><rsup|4>*B|)>.
  </equation*>

  A subsequence converges on the sphere of radius
  <math|<around|\<\|\|\>|T<rsub|0>|\<\|\|\>>>. The limit is symmetric, real
  and signed-covariant by closedness. Convergence of one-point functions
  makes it centred. VI.2.u and the equation
  <math|<big|sum><rsub|a><around|(|r<rsub|k>*U<rsub|k,5><rsup|-1>*W<rsub|a>*U<rsub|k,4>|)>*\<beta\><rsub|k,a*b>=0>
  make it conserved. By (FD), it equals <math|c*T<rsub|0>> for a real
  <math|c> with <math|<around|\||c|\|>=1>. Choose <math|J=B> or <math|-B>
  once so the limit is <math|T<rsub|0>>. For each finite set of track
  requirements, stability holds on a tail and VI.2.u supplies the required
  derivatives. This tail is a track for the same <math|J>. <em|Lean:>
  <hlink|<verbatim|produce_current>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L129-L167>,
  <hlink|<verbatim|subsector>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L53-L68>,
  <hlink|<verbatim|on_axis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L106-L124>,
  <hlink|<verbatim|center_expect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L88-L104>,
  <hlink|<verbatim|focused_track>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L173-L194>,
  <hlink|<verbatim|focused>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L197-L202>.

  <strong|Lemma VI.2.x (physical normalization).> Under VI.2.9, there is
  <math|c\<ne\>0> such that

  <\equation*>
    c*<around|(|J-<around|\<langle\>|J|\<rangle\>>*\<b-1\>|)>=J<rsub|0>,<space|2em>c/\<xi\><rsub|k>\<longrightarrow\>\<kappa\>.
  </equation*>

  Consequently VI.2.9(a)\U(c) hold and <math|\<xi\><rsub|k>\<to\>c/\<kappa\>\<ne\>0>.

  <em|Sketch.> The centred stress <math|J<rsub|c>> lies in <math|ker
  <math-up|div><rsup|S>>. It is nonzero: otherwise the translation Ward
  identity would make the derivative tuple in degree four zero. Its
  transported limit would then contradict the nonzero free derivative. The
  kernel is a real line, so <math|c*J<rsub|c>=J<rsub|0>> for some
  <math|c\<ne\>0>. Comparing their translation Ward identities gives
  <math|p<rsup|I>=c*W> in degree four.

  Along tracks, the transported derivatives tend to
  <math|\<partial\><rsup|<math-up|free>>>, whereas the transported Ward rows
  of <math|J<rsub|0>>, divided by <math|\<xi\><rsub|k>>, tend to
  <math|\<kappa\>*\<partial\><rsup|<math-up|free>>>. Since the free
  derivative is nonzero, a separating linear functional gives
  <math|c/\<xi\><rsub|k>\<to\>\<kappa\>>. Therefore

  <\equation*>
    U<rsub|k,4><rsup|-1>*<around|(|r<rsub|k><rsup|4>*J<rsub|c>|)>=<frac|\<xi\><rsub|k>|c>*<around*|[|\<xi\><rsub|k><rsup|-1>*U<rsub|k,4><rsup|-1>*<around|(|r<rsub|k><rsup|4>*J<rsub|0>|)>|]>\<longrightarrow\>\<kappa\><rsup|-1>*T<rsub|0>.
  </equation*>

  The unit part tends to zero because <math|r<rsub|k><rsup|4>\<to\>0> and the
  maps eventually preserve the unit. VI.2.u applies to these convergent
  preimages in every combination of slots, giving the mixed-correlation
  limit. VI.2.n and the equality of the two displayed free-stress
  constructions give the canonical limit <math|-T<rsup|<math-up|free>>>.
  <em|Lean:> <hlink|<verbatim|centered_line>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L82-L116>,
  <hlink|<verbatim|ratio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L62-L66>,
  <hlink|<verbatim|meter_physical>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L118-L144>,
  <hlink|<verbatim|mixed_leading>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lifted.lean#L85-L124>,
  <hlink|<verbatim|tracks_ratio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L43-L54>.

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The transfer to <math|S> depends on exact field-space isomorphisms, not
  merely comparison maps. Finite separating tests and the upper dimension
  bound provide them. The derivative law then turns the uniform test
  estimates into convergence of transported derivatives and smooth
  correlations. Recentring is necessary before transferring divergence: a
  field-space isomorphism need not preserve the expectation functional.

  The normalization is a separate assertion. Conservation determines a line,
  while the Ward identity determines a point on it. Comparing that identity
  along tracks removes the initially unknown factor <math|\<xi\><rsub|k>> and
  fixes the negative free-stress limit.

  Two algebraic rigidity results support VI.1: detection of arbitrary-weight
  fields by bounded-degree spectators, and vanishing of alternating internal
  Ward rows. They require more than reflection positivity alone. The
  three-dimensional tensor space also reflects the chosen symmetry group:
  signed coordinate permutations permit three coefficients, and conservation
  reduces them to one. The local current calculation admits conformal Killing
  fields, although the polynomial Ward argument uses only translations,
  rotations and dilation.

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|object>>|<cell|<strong|code
  name>>|<cell|<strong|proposed notation>>>|<row|<cell|free Maxwell
  table>|<cell|<hlink|<verbatim|Maxwell.freeTable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L23-L24>,
  <hlink|<verbatim|Climb.Bel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L20>,
  <verbatim|Maxwell.Free.Model>>|<cell|<math|\<cal-M\>>, fields
  <math|\<cal-F\><rsup|<math-up|free>><rsub|d>>>>|<row|<cell|homogeneous
  on-shell Taylor coefficients, polynomial
  algebra>|<cell|<hlink|<verbatim|Shell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L44>,
  <hlink|<verbatim|WickPol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L24>>|<cell|<math|<math-up|Sh><rsub|j>>,
  <math|\<cal-W\>>>>|<row|<cell|shell sector>|<cell|<hlink|<verbatim|shellSector>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L64>>|<cell|<math|\<cal-P\><rsub|d>>>>|<row|<cell|field
  \<leftrightarrow\> polynomial>|<cell|<hlink|<verbatim|fields>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L33-L35>,
  <hlink|<verbatim|address>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L39>>|<cell|<math|\<iota\><rsub|d>>>>|<row|<cell|Wick
  moment>|<cell|<hlink|<verbatim|Wick.moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127>>|<cell|<math|<around|\<langle\>|p<rsub|1><around|(|x<rsub|1>|)>*\<cdots\>*p<rsub|n><around|(|x<rsub|n>|)>|\<rangle\>><rsub|0>>>>|<row|<cell|probe
  evaluation, generated field, leg kernel>|<cell|<hlink|<verbatim|sample>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Kernel.lean#L22-L23>,
  <hlink|<verbatim|pulse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Kernel.lean#L101-L102>,
  <hlink|<verbatim|K>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Kernel.lean#L123>>|<cell|<math|p<around|(|f|)><around|(|x|)>>,
  <math|f<rsup|p,x>>, <math|<around|\<langle\>|p<around|(|x|)>*q<around|(|y|)>|\<rangle\>><rsub|0>>>>|<row|<cell|derivative
  plan, rotations>|<cell|<hlink|<verbatim|scheme>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L80-L83>,
  <hlink|<verbatim|gear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L153-L170>,
  <hlink|<verbatim|rewired>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Derives.lean#L27-L28>
  (<verbatim|glide>, <verbatim|wheel>, <verbatim|metric>)>|<cell|<math|\<partial\><rsup|<math-up|free>><rsub|a>>;
  <math|R<rsub|g>>, <math|\<rho\><around|(|\<omega\>|)>>;
  <math|\<varepsilon\>>>>|<row|<cell|free Maxwell
  stress>|<cell|<hlink|<verbatim|polStress>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Stress.lean#L24-L25>,
  <hlink|<verbatim|original>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L172>,
  <hlink|<verbatim|canonicalStress>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L82>,
  <hlink|<verbatim|torch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L111>>|<cell|<math|T<rsup|<math-up|free>>>,
  <math|\<tau\>*T<rsup|<math-up|free>>>>>|<row|<cell|polarized stress,
  current, flux>|<cell|<hlink|<verbatim|cross>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L31-L33>,
  <hlink|<verbatim|current>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L145>,
  <hlink|<verbatim|exportFlux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L184-L185>>|<cell|<math|\<Theta\><rsub|a*b>>,
  <math|j<rsup|v>>, <math|\<Phi\><rsub|\<chi\>>>>>|<row|<cell|conformal
  Killing field, Lie derivative>|<cell|<hlink|<verbatim|Killing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L140-L143>,
  <hlink|<verbatim|variation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Regulator.lean#L49>>|<cell|<math|v>,
  <math|\<cal-L\><rsub|v>*f=d*\<iota\><rsub|v>*f>>>|<row|<cell|centred
  stresses, vectors, divergence>|<cell|<hlink|<verbatim|KernelSpace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Tensor.lean#L75-L80>,
  <hlink|<verbatim|Vectors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Tensor.lean#L87-L97>,
  <hlink|<verbatim|currentDiv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Tensor.lean#L117-L119>>|<cell|<math|\<cal-Z\>>,
  <math|\<cal-V\>>, <math|<math-up|div>>>>|<row|<cell|free divergence
  property>|<cell|<hlink|<verbatim|FreeDiv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Dimension.lean#L153-L158>>|<cell|(FD)>>|<row|<cell|lighthouse,
  Maxwell data>|<cell|<hlink|<verbatim|Climb.Lighthouse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L24-L29>,
  <hlink|<verbatim|herald>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L29-L34>,
  <hlink|<verbatim|Org.MaxwellData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170>>|<cell|<math|\<cal-T\>=<around|(|\<partial\><rsup|0>,R<rsup|0>,T<rsub|0>,\<kappa\>|)>>,
  <math|M>>>|<row|<cell|null-test space, Ward
  vanishing>|<cell|<hlink|<verbatim|ghost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Statistic.lean#L65-L76>,
  <hlink|<verbatim|silence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Statistic.lean#L40-L42>>|<cell|<math|\<cal-N\><rsub|d>>;
  <math|<big|sum><rsub|i><around|\<langle\>|\<cdots\>*T*p<rsub|i>*\<cdots\>|\<rangle\>>=0>>>|<row|<cell|station,
  admissibility, estimates>|<cell|<hlink|<verbatim|Station>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L68-L71>,
  <hlink|<verbatim|Stations>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L112-L114>,
  <hlink|<verbatim|Granular>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L30-L34>,
  <hlink|<verbatim|Balances>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Glide.lean#L24-L31>>|<cell|<math|<around|(|r,A<rsub|N,p>|)>>>>|<row|<cell|panel,
  scaling, rescaled derivative>|<cell|<hlink|<verbatim|Panel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L118>,
  <hlink|<verbatim|Climb.Scaling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31>,
  <hlink|<verbatim|tiltScale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Focus.lean#L19-L20>>|<cell|<math|U>;
  <math|<around|(|r<rsub|k>,\<xi\><rsub|k>,U<rsub|k>|)>>;
  <math|<math-up|tilt><rsub|k>>>>|<row|<cell|uniform test convergence,
  stability, stress limit>|<cell|<hlink|<verbatim|Approaches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L52-L53>,
  <hlink|<verbatim|Fades>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Weak.lean#L24-L27>,
  <hlink|<verbatim|Stable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L121-L125>,
  <hlink|<verbatim|Scaling.meter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L54-L55>>|<cell|\V>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Inputs not checked through all subsidiary proofs.> The
    reflected Gram positivity and Fock pairing factorization in VI.2.b were
    checked at statement level. The Haar-averaging and Ward-implied
    conservation and symmetry results used in VI.2.m were also checked at
    statement level. The invariant spanning results behind VI.2.k, the
    differentiated propagator table behind VI.2.l, and the low-degree
    vector-map classification and bounded-order detection behind VI.2.o
    remain inputs to the sketches. Their direct applications and hypotheses
    were checked, but their full derivations were not independently
    reconstructed.

    <item><strong|Lorentz and Casimir data.> The representation, descent and
    generator statements were checked, together with their use in assembly.
    The complexified-rotation construction of the representation and the
    Casimir proofs A09\UA12 were not checked in full.

    <item><strong|Renormalization-group estimates.> The conversion of
    balanced grid, bulk and finite-difference estimates into stations was
    checked here. Their production in III.11, including all parameter choices
    in the complete weak-comparison result and the shell estimates needed for
    the interacting Ward rows, remains to be verified in that unit. The
    excluded region here is precisely a band around coordinate-projection
    ties; it is not a neighbourhood of the full collision diagonal.

    <item><strong|Short-distance normalization.> The comparison of derivative
    and stress rows uses the track estimates of VI.1. The scalar-ratio
    argument and its application here were checked; the underlying track Ward
    estimates A04\UA05 remain inputs. The mixed-correlation theorem is stated
    in Lean for the stress assembled in VI.1; VI.2.9(b) gives the general
    consequence of the same convergent-preimage argument.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> VI.1 Ward identities, the rotation action
  and the conserved stress tensor (notes)|VI-1.tm>|<hlink|Part
  VI|../units.tm#part-vi-symmetry-stress-tensor-and-ward-identities><ym-nav-sep><hlink|Unit
  outline|../units/VI-2.tm>|<hlink|VII.1 Free Maxwell fields for the
  short-distance comparison (notes) \<rightarrow\>|VII-1.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|VI.2. The free Maxwell stress tensor and the local
    Ward charge \V detailed notes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|1>>
    <associate|2-what-it-uses|<tuple|2|7>>
    <associate|3-strategy|<tuple|3|8>>
    <associate|4-steps|<tuple|4|9>>
    <associate|41-the-free-table|<tuple|4.1|9>>
    <associate|42-the-local-ward-charge|<tuple|4.2|10>>
    <associate|43-the-free-stress-line-and-the-ward-constant|<tuple|4.3|12>>
    <associate|44-the-remaining-maxwell-data|<tuple|4.4|13>>
    <associate|45-comparison-with-the-wilson-limit|<tuple|4.5|14>>
    <associate|5-where-the-difficulty-lies|<tuple|5|16>>
    <associate|6-notation|<tuple|6|17>>
    <associate|7-what-remains-unexplained|<tuple|7|17>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|5|16>>
    <associate|auto-11|<tuple|6|17>>
    <associate|auto-12|<tuple|7|17>>
    <associate|auto-2|<tuple|2|7>>
    <associate|auto-3|<tuple|3|8>>
    <associate|auto-4|<tuple|4|9>>
    <associate|auto-5|<tuple|4.1|9>>
    <associate|auto-6|<tuple|4.2|10>>
    <associate|auto-7|<tuple|4.3|12>>
    <associate|auto-8|<tuple|4.4|13>>
    <associate|auto-9|<tuple|4.5|14>>
    <associate|vi2-the-free-maxwell-stress-tensor-and-the-local-ward-charge--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 The free table
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 The local Ward charge
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 The free stress line and the Ward
      constant <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 The remaining Maxwell data
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 Comparison with the Wilson limit
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Where the difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      What remains unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
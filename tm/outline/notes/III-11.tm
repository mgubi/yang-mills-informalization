<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.10 One full nonlinear renormalization
  step: bounds on irrelevant terms (notes)|III-10.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-11.tm>|<hlink|III.12 Bounds uniform in the volume and
  convergence as the spacing tends to zero (notes) \<rightarrow\>|III-12.tm>>

  <ym-title|III.11. Comparison with the free Gaussian measure: interacting
  rank and determinant budgets \V detailed
  notes><label|iii11-comparison-with-the-free-gaussian-measure-interacting-rank-and-determinant-budgets--detailed-notes>

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

    <with|par-left|1tab|4.1 Haar estimates and the determinant budget
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 Free covariances
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 Polynomial calculus and identities
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 From frequent good scales to trial systems
    (III.11.4) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 The rank comparison (III.11.5)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.6 The stress tensor (III.11.6, III.11.7)
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
    The full account of unit III.11: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/III-11.tm>.
  </quotation>

  <hlink|Unit page|../units/III-11.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> III, Ultraviolet construction (renormalization group).
  <strong|Lean:> chapter 24: <hlink|<verbatim|YM/Next/RANK/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK>,
  <hlink|<verbatim|YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON>,
  <hlink|<verbatim|YM/PhysicalNext/RANK_COVARIANCE_ATLAS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS>,
  <hlink|<verbatim|YM/MergeProof/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof>
  (with <verbatim|West/>, <verbatim|North/>, <verbatim|East/>,
  <verbatim|South/>). <strong|Size:> 42,556 lines (about 5,300 declarations).

  <strong|Scope.> The unit compares the interacting renormalization-group
  (RG) history with the free Maxwell field. It also contains the stress-flux
  argument and the label algebra of the Maxwell equation ideal.

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  The unit has two outputs. The first is the <strong|rank comparison>. In the
  continuum limit, the space <math|F<rsub|d>> of local fields of degree
  <math|d> is isomorphic to the corresponding space of the free Maxwell
  field, compatibly with complex conjugation and with the lattice symmetry
  group. Here <math|F<rsub|d>> is the space of labels of degree <math|d>
  modulo labels whose correlations vanish. The second output is the
  <strong|stress tensor of the limit>: a nonzero conserved stress tensor that
  satisfies the translation and rotation Ward identities and is normalized
  against the free Maxwell stress tensor along a scaling sequence. Both
  outputs rest on quantitative estimates proved here: a per-site determinant
  budget, chessboard bounds for connected parts of corrected observables, and
  comparisons of covariances with the free curvature kernel. The trial
  systems test a finite separating family of free one- and two-point
  correlations.

  Notation. Set <math|\<mu\><rsub|k>=exp <around|(|<around|(|log log
  <wide|\<beta\>|^><rsub|k>|)><rsup|2>|)>>. The centered estimate and the
  trial systems use this fixed schedule quantity. <math|G> is a compact
  matrix group, assumed simple only where stated; <math|dim G> is the
  dimension of its Lie algebra; <math|h> is normalized Haar measure;
  <math|<math-up|chord><around|(|u|)>\<geqslant\>0> is the chordal distance
  from <math|u> to <math|1>; and <math|<math-up|shell><around|(|r|)>=<around|{|u\<in\>G:<math-up|chord><around|(|u|)>\<leqslant\>r|}>>.
  The torus of side <math|n\<geqslant\>2> is
  <math|\<Lambda\><rsub|n>=<around|(|\<bbb-Z\>/n|)><rsup|4>>, with
  <math|c=n<rsup|4>> sites, <math|4*c> bonds and <math|6*c> plaquettes. The
  prior <math|\<mu\><rsub|<math-up|prior>>> is product Haar measure on bonds.
  An RG representation <math|R> on <math|\<Lambda\><rsub|n>> has an inverse
  coupling <math|\<beta\>=\<beta\><around|(|R|)>>, an exponent
  <math|<math-up|exponent><rsub|R>> with constant part
  <math|<math-up|scalar><around|(|R|)>>, and an unnormalized density
  <math|e<rsup|R>=e<rsup|<math-up|exponent><rsub|R>>\<cdot\><around|(|<text|polymer
  gas>|)>>.

  <strong|Proposition III.11.1 (determinant budget on the torus, and its
  per-site price).> (a) Let <math|R> be a lawful representation on
  <math|\<Lambda\><rsub|n>>, <math|n\<geqslant\>2>, with lawful-class
  parameters <math|<around|(|\<sigma\>,A,\<Lambda\>,\<delta\>,w|)>>, and
  assume <math|e<rsup|R>\<geqslant\>0> pointwise. Let
  <math|0\<less\>s\<leqslant\>1\<leqslant\>b> be a Haar budget (Lemma 4.1).
  Let <math|g\<gtr\>0> with <math|g\<leqslant\><math-up|threshold><around|(|R|)>>
  and <math|\<beta\>*g<rsup|2>=1>. Let <math|F> be a
  <math|\<mu\><rsub|<math-up|prior>>>-integrable complex function and
  <math|z\<geqslant\>0>, <math|X\<in\>\<bbb-R\>> such that
  <math|z<around|\||F<around|(|U|)>|\|>\<leqslant\>exp
  <around|(|<math-up|exponent><rsub|R><around|(|U|)>+c*X|)>> for every
  configuration <math|U>. Then

  <\equation*>
    <frac|z<space|0.17em><mid|\|><big|int>F*<space|0.17em>d*\<mu\><rsub|<math-up|prior>><mid|\|>|<big|int>e<rsup|R>*<space|0.17em>d*\<mu\><rsub|<math-up|prior>>><space|0.27em>\<leqslant\><space|0.27em>exp
    <around*|(|c*<space|0.17em>\<pi\><around|(|R,X,g|)>-4*dim
    G*<space|0.17em>log g|)>,
  </equation*>

  where the per-site price is

  <\equation*>
    \<pi\>=2<space|0.17em><math-up|exCost><around|(|A,\<Lambda\>,\<delta\>|)>+6+\<beta\><space|0.17em><math-up|baseBudget><around|(|A,g|)>+X+3<space|0.17em><math-up|ent>-4*log
    s,<space|2em><math-up|ent>=log b-dim G*<space|0.17em>log
    \<sigma\><rsub|R>,
  </equation*>

  with <math|\<sigma\><rsub|R>=min <around|(|1,\<ell\><rsub|R>|)>>, where
  <math|q<rsub|R>> and <math|\<ell\><rsub|R>> are the quadratic and linear
  clip coefficients. Here <math|<math-up|exCost>=\<delta\>+<math-up|loopsPrice>>
  bounds the loop and additive activity terms per site, and
  <math|<math-up|baseBudget>=3*<around|(|q<rsub|R>+A<rsup|2>|)>*g<rsup|2>>
  bounds the remaining action on configurations whose bonds all lie in
  <math|<math-up|shell><around|(|g/4|)>>. (b) Let
  <math|<around|(|\<cal-A\><rsub|m>|)>> be the levels of an RG schedule for
  simple <math|G>, and let <math|O=<around|(|s,b|)>> be a Haar budget. For
  all sufficiently large levels <math|m>, every period <math|p>, every
  representation <math|P> on the level-<math|m> torus (with
  <math|c<rsub|m,p>> sites), every <math|k\<in\>\<bbb-N\>>, every
  <math|X\<leqslant\>1+k>, and every <math|<around|(|g,\<Lambda\>,\<delta\>|)>>
  admissible at level <math|m>, the following holds:

  <\equation*>
    \<pi\><around|(|P,X,g|)>-<frac|4*dim G*<space|0.17em>log
    g|c<rsub|m,p>><space|0.27em>\<leqslant\><space|0.27em><text|work
    item><around|(|O,m,k|)>.
  </equation*>

  Admissible at level <math|m> means: same clip as the stage of <math|m>,
  <math|\<beta\><around|(|P|)>\<leqslant\>4*<wide|\<beta\>|^><rsub|m>>,
  <math|\<beta\><around|(|P|)>*g<rsup|2>=1>,
  <math|0\<less\>g\<leqslant\><math-up|threshold><around|(|P|)>\<leqslant\><math-up|threshold><rsub|m>>,
  <math|\<delta\>\<leqslant\>1>, <math|\<Lambda\>\<leqslant\><math-up|loopCap><rsub|m>>.
  The work item is

  <\equation*>
    <text|work item>=2*<around|(|8<space|0.17em><math-up|paths><rsub|m>+2|)>+6+3*<around|(|<math-up|direct><rsub|m>+<math-up|paths><rsub|m><rsup|2>|)>+<around|(|1+k|)>+3<space|0.17em><math-up|ent>-4*log
    s+1.
  </equation*>

  In (b), <math|\<pi\>> uses <math|A=<math-up|paths><rsub|m>> and the clip of
  stage <math|m>. The work item depends on that stage, <math|O> and <math|k>,
  uniformly over the admissible couplings and periods. <em|Status:> theorems.
  <em|Lean:> <hlink|<verbatim|determinant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L240-L274>,
  <hlink|<verbatim|protection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L225-L227>,
  <hlink|<verbatim|HaarBudget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L26-L33>;
  (b) <hlink|<verbatim|affordable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L119-L123>,
  <hlink|<verbatim|Meets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L28-L36>,
  <hlink|<verbatim|work item>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L41-L44>.

  <strong|Proposition III.11.2 (free pair terms).> Fix <math|G>,
  <math|d,n\<in\>\<bbb-N\>>, and two colored plaquette derivative stencils
  <math|L,S> based at the origin, with scaling degrees
  <math|\<Delta\><rsub|L>=2+<math-up|ord><around|(|L|)>\<leqslant\>d> and
  <math|\<Delta\><rsub|S>=2+<math-up|ord><around|(|S|)>\<leqslant\>d>. There
  is <math|C\<geqslant\>0>, depending only on these data, such that the
  following holds. Let <math|x\<in\><around|(|\<bbb-R\><rsup|4>|)><rsup|n>>
  have distinct entries and let <math|i\<ne\>j>. Suppose
  <math|D\<geqslant\>0> satisfies <math|<around|\||<math-up|Re><space|0.17em>\<Gamma\><rsub|<around|(|i,a|)>,<around|(|j,b|)>>|\|>\<leqslant\>D>
  for every pair of free-current keys <math|a,b> of scaling degree at most
  <math|d>. Then, for every <math|r\<geqslant\>1>,

  <\equation*>
    r<space|0.17em><mid|\|>r<rsup|\<Delta\><rsub|L>+\<Delta\><rsub|S>><space|0.17em><around|\<langle\>|<math-up|ev><rsub|L>\<otimes\><math-up|ev><rsub|S>,B<rsub|r><around|(|i,j|)>|\<rangle\>>-<math-up|light><around|(|L,S|)><around|(|x<rsub|i>,x<rsub|j>|)><mid|\|>\<leqslant\>C*D.
  </equation*>

  Here

  <\equation*>
    B<rsub|r><around|(|i,j|)>=<big|sum><rsub|a,b><math-up|Re><space|0.17em>\<Gamma\><rsub|<around|(|i,a|)>,<around|(|j,b|)>>*<space|0.27em>r<rsup|-<math-up|gen><around|(|a|)>>*t<rsub|a>\<otimes\>r<rsup|-<math-up|gen><around|(|b|)>>*t<rsub|b>,
  </equation*>

  where <math|t<rsub|a>> is the polynomial jet sample of key <math|a>,
  <math|<math-up|gen><around|(|a|)>> is its scaling degree, and
  <math|<math-up|ev><rsub|L>> applies the stencil <math|L>. The kernel
  <math|<math-up|light><around|(|L,S|)>> is the corresponding derivative of
  the free Maxwell curvature two-point function. <em|Status:> theorem.
  <em|Lean:> <hlink|<verbatim|Prayer.fence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StrideCost.lean#L70-L98>,
  <hlink|<verbatim|deck>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StrideCost.lean#L64-L67>.

  <strong|Proposition III.11.3 (window estimate for the free covariance,
  uniform in the regulator).> Let <math|\<alpha\>,\<eta\>\<gtr\>0>,
  <math|\<Omega\>\<in\>\<bbb-R\>> and <math|n\<in\>\<bbb-N\>>. Then there is
  <math|C\<geqslant\>0> with the following property. For every regulator
  <math|f> in the family <math|<math-up|Firm><around|(|\<alpha\>,\<Omega\>,\<eta\>|)>>
  of III.3, every <math|G>, and every pair of colored plaquette stencils
  <math|a,b>, the frequency chart <math|K=K<rsub|f><around|(|a,b|)>> is
  measurable, vanishes for <math|<around|\||\<xi\>|\|>\<gtr\>2>, is
  <math|C<rsup|n>> away from <math|0>, and satisfies:

  <\itemize-minus>
    <item><math|<around|\||K<around|(|0|)>|\|>\<leqslant\>C>;

    <item><math|<around|\||\<partial\><rsup|i>*K<around|(|\<xi\>|)>|\|><space|0.17em><around|\||\<xi\>|\|><rsup|i>\<leqslant\>C>
    for <math|0\<less\><around|\||\<xi\>|\|>\<leqslant\>2> and
    <math|i\<leqslant\>n>;

    <item><math|<around|\||\<partial\><rsup|i>*<around|(|K-H<rsub|a,b>|)><around|(|\<xi\>|)>|\|><space|0.17em><around|\||\<xi\>|\|><rsup|i>\<leqslant\>C<around|\||\<xi\>|\|>>
    for <math|0\<less\><around|\||\<xi\>|\|>\<leqslant\>1> and
    <math|i\<leqslant\>n>.
  </itemize-minus>

  Here <math|\<partial\><rsup|i>> denotes the <math|i>-th Fréchet derivative,
  measured in operator norm, and <math|H<rsub|a,b>> is the degree-zero
  Maxwell curvature symbol for the plaquettes and colors of <math|a,b>, with
  heat parameter <math|<around|(|2*\<pi\>|)><rsup|2>>. If <math|a,b> have
  different colors, then <math|K=H<rsub|a,b>=0>. <em|Status:> theorem.
  <em|Lean:> <hlink|<verbatim|window_prices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Window.lean#L118-L136>,
  <hlink|<verbatim|Window>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Radian/Signed.lean#L47-L53>,
  <hlink|<verbatim|Cast>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Radian/Means.lean#L16-L19>.

  <strong|Proposition III.11.4 (frequent good scales produce corrected trial
  systems).> Let <math|G> be simple and <math|C> a Wilson family satisfying
  the construction record. Let <math|d> be a degree and <math|\<cal-F\>> a
  stage package for degree <math|d> (fixed band
  <math|b<rsub|0>\<geqslant\>max <around|(|6,<space|0.17em>s<rsub|d>+3|)>>,
  with <math|s<rsub|d>> the label's scaling saving, and Taylor order
  <math|\<geqslant\>d>). Let <math|X> consist of a real basis of
  <math|F<rsub|d><rsup|<math-up|free>>>, starting with the unit, and finitely
  many generic one- and two-point tests that separate this space. Choose
  representatives of that basis in the label space. Let <math|O> be a Haar
  budget, <math|J> a chart ratio, and <math|B> a binding of the RG history of
  <math|C> to its price lists. Fix <math|w\<in\>\<bbb-R\>>. Assume that at
  infinitely many levels <math|k> the following conditions hold
  simultaneously:

  <\itemize-minus>
    <item>the four price conditions: tender, metering with
    <math|<around|(|O,w|)>>, and, for some common auxiliary parameters
    <math|l,r>, hours with <math|<around|(|J,B,l,r,w|)>> and vents with
    <math|<around|(|J,B,l,r|)>>;

    <item>the lantern-mark condition for <math|X>.
  </itemize-minus>

  Then there is a trial system <math|Z> for <math|X> that travels with the
  station and satisfies the purchase conditions:

  <\itemize-minus>
    <item>depths <math|k<rsub|1>\<less\>k<rsub|2>\<less\>\<ldots\>> and test
    scales <math|s<rsub|i>=a<rsub|k<rsub|i>>*\<mu\><rsub|k<rsub|i>><rsup|<space|0.17em>b<rprime|'>>>
    (fixed <math|b<rprime|'>\<gtr\>0>) strictly decreasing to <math|0>, with
    strictly increasing width levels <math|<math-up|width><rsub|i>\<leqslant\>k<rsub|i>>
    and the stage index constant on <math|<around|[|<math-up|width><rsub|i>,k<rsub|i>|]>>;

    <item>for each trial <math|i>, coefficient vectors
    <math|v<rsub|i><around|(|N,p|)>> of corrected observables that are real,
    bounded uniformly in <math|<around|(|N,p|)>>, and have first entry the
    reference unit;

    <item>generic test configurations lying strictly inside the centred width
    cell, whose rescalings converge to the prescribed configuration of each
    row;

    <item>for each trial <math|i>, eventually in <math|N> and for every
    period <math|p>, on the centred tiling of the cutoff torus: for every
    row, every basis column and every nonempty set <math|s> of insertion
    modes, the chessboard root, at coupling <math|\<beta\><rsub|N,p>>, of the
    <math|s>-connected part of the corrected observable (taken relative to
    its free Maxwell one- and two-point profile) is at most
    <math|\<gamma\><rsub|i>=\<mu\><rsub|k<rsub|i>><rsup|-1/32>\<to\>0>.
  </itemize-minus>

  <em|Status:> theorem, with the frequent-scale conditions carried as
  hypotheses. In the main chain they are discharged as follows. In
  <hlink|<verbatim|Accent.rated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L48-L71>,
  the lantern marks hold eventually in <math|k> by
  <hlink|<verbatim|bursts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SteamW.lean#L54-L59>.
  The four price conditions are supplied to the rank assembly by
  <hlink|<verbatim|franchise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Snow.lean#L55-L60>
  (this unit) inside the assembly <hlink|<verbatim|jointOffers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L36-L66>.
  That assembly is closed by <hlink|<verbatim|uv_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130>
  (III.13), whose only hypotheses are that <math|G> is simple and
  <math|b\<gtr\>0>. <em|Lean:> <hlink|<verbatim|cast_off>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Star.lean#L64-L66>,
  <hlink|<verbatim|wheeled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Star.lean#L68-L69>,
  <hlink|<verbatim|v_culminates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L84-L95>,
  <hlink|<verbatim|v_obtain_purchases>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L177-L222>,
  <hlink|<verbatim|Purchases>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bought.lean#L68-L84>.

  <strong|Proposition III.11.5 (the field spaces of the limit are those of
  the free Maxwell field).> Let <math|G> be simple. Write
  <math|\<cal-L\><rsub|d>> for abstract labels and <math|\<cal-V\><rsub|d>>
  for their fixed coordinate space. Let <math|C> be a Wilson family
  satisfying the construction record and the centred estimate: for each
  <math|d> and <math|R,\<varepsilon\>\<gtr\>0> there is <math|A\<geqslant\>0>
  such that, at every level <math|m\<geqslant\><math-up|ref><around|(|d|)>>,
  eventually in <math|N> and for all <math|p>, every label of degree <math|d>
  and norm <math|\<leqslant\>R> has centred budget
  <math|A*<space|0.17em>a<rsub|m><rsup|-d-\<varepsilon\>>>. Assume:

  <\itemize-minus>
    <item>(i) a projector presentation of the labels: for each <math|d> and
    cutoff <math|<around|(|N,p|)>>, a projector <math|\<Pi\><rsub|d,N,p>> on
    the coordinate label space <math|\<cal-V\><rsub|d>> whose kernel is the
    image of the Maxwell equation ideal <math|\<cal-E\><rsub|d>\<subset\>\<cal-L\><rsub|d>>
    under an invertible corrected label map
    <math|\<cal-L\><rsub|d>\<to\>\<cal-V\><rsub|d>>. For each <math|d>, both
    are real and equivariant for all sufficiently large <math|N>, uniformly
    in <math|p>. Assume also affordability and relay-cost bounds along every
    extraction;

    <item>(ii) the one-step cost package along the gauge-door maps between
    successive RG levels;

    <item>(iii) panels <math|Q<rsub|d>>, the mark exponents
    <math|c<rsub|d>=2*<around|(|w<rsub|d>+1|)>>, a chart ratio and a binding
    such that, for each <math|d>, the four price conditions of III.11.4 hold
    simultaneously at infinitely many levels, with <math|w=-3>. The panels
    are specialized to the family using <math|c<rsub|d>>.
  </itemize-minus>

  Then for every extraction order <math|f> there are a refinement <math|g>, a
  smooth limit table <math|T> with a differentiation plan <math|E>, and the
  extraction record of IV.1 along <math|f\<circ\>g> (raw limits, bins, spans,
  cleaning to <math|T>, Euclidean axioms), together with a seed record for
  <math|<around|(|C,f\<circ\>g,T|)>>. The seed record consists of: cutoff,
  ordered and generic point limits, Euclidean axioms, cell hypothesis, and
  corrected rank widths. Moreover the following holds: there is a real
  structure on the free Maxwell table and, for every <math|d>, a linear
  isomorphism

  <\equation*>
    \<Phi\><rsub|d>:<space|0.27em>F<rsub|d><around|(|T|)><space|0.27em><long-arrow|\<rubber-rightarrow\>|\<sim\>><space|0.27em>F<rsub|d><rsup|<math-up|free>>=\<cal-L\><rsub|d>/\<cal-E\><rsub|d>
  </equation*>

  that intertwines complex conjugation and the action of the signed
  permutations of the four axes. More precisely, there is a real, equivariant
  linear isomorphism <math|L<rsub|d>:\<cal-L\><rsub|d>\<to\>\<cal-V\><rsub|d>>
  carrying <math|\<cal-E\><rsub|d>> onto <math|<math-up|null><rsub|d><around|(|T|)>>.
  Thus <math|dim F<rsub|d><around|(|T|)>=dim F<rsub|d><rsup|<math-up|free>>>;
  the identification of null spaces uses this corrected map. <em|Status:>
  theorem with hypotheses (i)\U(iii). All three are discharged in the main
  chain: (i) by <hlink|<verbatim|reception>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Eureka.lean#L22-L30>
  through <hlink|<verbatim|chaletrail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Inns.lean#L33-L53>
  (this unit), (iii) by <hlink|<verbatim|franchise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Snow.lean#L55-L60>,
  and the binding by <hlink|<verbatim|castle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Snow.lean#L28-L43>.
  The one-step package (ii) and the centred estimate are also included in
  <hlink|<verbatim|Chateau>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Almandine.lean#L24-L36>
  and consumed by <hlink|<verbatim|uv_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130>
  (III.13). <em|Lean:> <hlink|<verbatim|Accent.rated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L48-L71>,
  <hlink|<verbatim|Maxwell.Ranks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L135-L139>,
  <hlink|<verbatim|Spec.Seed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26>,
  <hlink|<verbatim|Scotia>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Eureka.lean#L16-L20>,
  <hlink|<verbatim|Wcmain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L38-L40>.

  <strong|Proposition III.11.6 (the stress tensor of the limit, normalized
  against free Maxwell).> (a) Let <math|C> satisfy the construction record
  and <math|f> be an extraction order with ordered and generic point limits,
  giving a table <math|S>. Assume:

  <\itemize-minus>
    <item><math|S> satisfies the Euclidean axioms (with spin structure
    <math|H>) and the cell hypothesis;

    <item><math|W> is a differentiation plan for <math|S> with its inclusion
    and derivative laws;

    <item><math|dim F<rsub|d><around|(|S|)>\<leqslant\>dim
    F<rsub|d><rsup|<math-up|free>>> for every <math|d>;

    <item><math|\<cal-T\>> is a free Maxwell comparison model, with Euclidean
    axioms <math|a>, inclusion, derivative and orientation laws, and a
    divergence-free stress;

    <item>the station hypothesis linking <math|C>, <math|f> and <math|a>
    holds;

    <item>the shell estimate of <math|C> holds.
  </itemize-minus>

  Then <math|W> satisfies the orientation law, and there are a stress record
  <math|I> (stress tensor <math|\<cal-J\>>, translation parts, spin rows) and
  a scaling <math|X> of <math|S> such that:

  <\itemize-minus>
    <item><math|\<cal-J\>\<neq\>0> and <math|\<cal-J\>> lies in the kernel
    space of <math|H>;

    <item>the scaled tables approach the isotropic panel, and the scaling is
    stable and compatible between the spin structures of <math|S> and
    <math|\<cal-T\>>;

    <item>the scaled <math|\<cal-J\>> is metered against the free stress
    tensor <math|\<cal-T\>.*\<cal-J\>>;

    <item><math|\<cal-J\>> is conserved and symmetric and satisfies the
    translation and rotation Ward identities (III.11.7);

    <item>the action law relating <math|\<cal-J\>> to the free model holds.
  </itemize-minus>

  (b) Let <math|G> be simple, let <math|C> carry the shell estimate, and
  assume the cofinal grid approximation condition and weak completeness of
  the corrected comparison tests for <math|f>, together with the seed record
  of III.11.5 for <math|<around|(|C,f,S|)>>. Then for every differentiation
  plan <math|W> with inclusion and derivative laws there are Maxwell data
  <math|M> and a stress record <math|I> with <math|\<cal-J\>\<ne\>0>
  satisfying the UV interface record <math|<math-up|UV><around|(|C,f,S,W,M,I|)>>.
  <em|Status:> theorems. In (b), the free model comes from
  <hlink|<verbatim|maxwell_supplies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L45-L48>
  (VI.2). The station hypothesis is built from the seed and weak
  completeness, and the hypothesis <hlink|<verbatim|DimAbove>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L108>
  from the seed's corrected rank widths; this is how III.11.5 feeds III.11.6.
  The shell budget is proved by <hlink|<verbatim|laurelE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Economist.lean#L23-L32>
  and <hlink|<verbatim|fugacious>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Economist.lean#L34>
  (this unit) inside <hlink|<verbatim|uv_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130>.
  <em|Lean:> <hlink|<verbatim|Acme.readyA>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L15-L30>,
  <hlink|<verbatim|Acme.emanate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L31-L37>,
  <hlink|<verbatim|Aroma>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Ozone.lean#L16-L19>.

  <strong|Proposition III.11.7 (Ward identity: the flux of the stress against
  a Killing field is a local field).> Let <math|C> satisfy the construction
  record, let <math|f> be an extraction order with the cell hypothesis and
  generic point limits <math|S>, and suppose <math|S> satisfies the Euclidean
  axioms with real structure <math|H>. Let <math|W> satisfy the derivative
  laws, and assume the shell estimate of III.11.6. Let:

  <\itemize-minus>
    <item><math|\<cal-J\>> be a stress tensor of <math|S> that is conserved
    with respect to <math|W>, and <math|v\<in\>F<rsub|d><around|(|S|)>>;

    <item><math|U> be a smooth Killing field on <math|\<bbb-R\><rsup|4>>,
    homogeneous of degree <math|p> (<math|U*<around|(|r*y|)>=r<rsup|p>*U<around|(|y|)>>
    for <math|r\<gtr\>0>);

    <item><math|d,D,p\<in\>\<bbb-N\>> and <math|D+3+p=d+4>.
  </itemize-minus>

  Then there is <math|B\<in\>F<rsub|D><around|(|S|)>> with the following
  property. For every <math|n>, all fields
  <math|q<rsub|1>,\<ldots\>,q<rsub|n>>, every configuration of distinct
  points <math|x<rsub|0>,\<ldots\>,x<rsub|n>>, and every window
  <math|\<chi\>> adapted to <math|x> (smooth, compactly supported, equal to
  <math|1> near <math|x<rsub|0>>, with support avoiding
  <math|x<rsub|1>,\<ldots\>,x<rsub|n>>), the flux of <math|\<cal-J\>> against
  <math|U*<around|(|\<cdummy\>-x<rsub|0>|)>> and <math|\<chi\>>, inserted
  with <math|v> at <math|x<rsub|0>> and <math|q<rsub|k>> at <math|x<rsub|k>>,
  equals the correlation of <math|B> at <math|x<rsub|0>> with the
  <math|q<rsub|k>> at <math|x<rsub|k>>. The sign convention is

  <\equation*>
    <math-up|flux>=-<big|sum><rsub|i,j><big|int><rsub|\<bbb-R\><rsup|4>>\<partial\><rsub|i>*\<chi\><around|(|y|)>*<space|0.17em>U<rsub|j>*<around|(|y-x<rsub|0>|)>*<space|0.17em><around|\<langle\>|\<cal-J\><rsub|i*j><around|(|y|)>*<space|0.17em>v<around|(|x<rsub|0>|)>*<space|0.17em>q<rsub|1><around|(|x<rsub|1>|)>*\<cdots\>*q<rsub|n><around|(|x<rsub|n>|)>|\<rangle\>>*<space|0.17em>d*y.
  </equation*>

  Nonzero homogeneous Killing fields have <math|p=0> (translations,
  <math|D=d+1>) or <math|p=1> (rotations, <math|D=d>). <em|Status:> theorem.
  <em|Lean:> <hlink|<verbatim|annular_fieldA>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Bravo.lean#L55-L89>,
  <hlink|<verbatim|tenet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Blanca.lean#L49-L120>,
  <hlink|<verbatim|shells_law>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Orange.lean#L33-L63>.

  <strong|Further inputs.>

  <\itemize-minus>
    <item><strong|One-step and root-test estimates for polynomial and
    coefficient data.> <hlink|<verbatim|single>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Meringue.lean#L32-L102>
    and <hlink|<verbatim|asideP>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Gelatin.lean#L23-L92>
    apply the coefficient bound to already packed coefficients across one
    gauge-door step, with parameters scaled by <math|\<eta\>*t>. Also in this
    group: <hlink|<verbatim|grant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Dock.lean#L179-L185>,
    <hlink|<verbatim|y_ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Lys.lean#L40-L60>
    and <hlink|<verbatim|console>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Festoon.lean#L57-L126>.

    <item><strong|Eventual estimates and uniform choices.> These include
    bounds at sufficiently large levels, uniform versions on compact sets of
    distinct-point configurations, and choices of enlarged waiting windows:
    <hlink|<verbatim|pedestals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Chimes.lean#L113-L153>,
    <hlink|<verbatim|chamber>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Attic.lean#L157-L203>,
    <hlink|<verbatim|herald>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Morning.lean#L35-L53>,
    <hlink|<verbatim|scopes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Focusing.lean#L43-L101>,
    <hlink|<verbatim|on_hold>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Brite.lean#L31-L122>,
    <hlink|<verbatim|on_demand>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Promises.lean#L37-L127>,
    <hlink|<verbatim|chamber_now>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Distant.lean#L69-L100>,
    <hlink|<verbatim|mural_cast>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Esme.lean#L42-L57>,
    <hlink|<verbatim|earnings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Tael.lean#L58-L90>,
    <hlink|<verbatim|lava_v>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Reach.lean#L27-L42>,
    <hlink|<verbatim|sponsored>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L38-L51>,
    <hlink|<verbatim|boot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Starring.lean#L31-L37>,
    <hlink|<verbatim|forge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Tilt.lean#L36-L59>.
    The weak-completeness theorem in this list enlarges the waiting window.
    The order of the choices is part of each statement.

    <item><strong|Polynomial and integral identities.> Wick expansion, Taylor
    polynomials in link variables, pushforward of densities as sums over
    sectors, and factorization on disjoint supports; see Ÿ4.3.
  </itemize-minus>

  <section|2. What it uses><label|2-what-it-uses>

  <strong|Inputs from other units.>

  <\itemize-minus>
    <item>I.1 (lattice, Wilson measure): the periodic torus, plaquette
    values, the product Haar prior, gauge transformations, the chordal
    distance on <math|G> (<hlink|<verbatim|prior>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L55>,
    <hlink|<verbatim|chord>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L115>).

    <item>II.1 (field labels): the label spaces <math|\<cal-L\><rsub|d>> with
    their coordinates and real structure; the free Wick realization of
    labels, whose kernel is the Maxwell equation ideal
    <math|\<cal-E\><rsub|d>>; the weave and portfolio data used for the
    corrected label maps (<hlink|<verbatim|equationIdeal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72>).

    <item>II.2 (polymer activities, Wilson family, construction record,
    cells): lawful representations and their exponent and gas; the Wilson
    family and its construction record; the tilings and the chessboard root
    (<hlink|<verbatim|Rep.Lawful>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L181-L183>).

    <item>III.2 (choice of constants): the levels and stages
    (<math|<wide|\<beta\>|^><rsub|m>>, thresholds, loop caps, clip
    coefficients, stage index <math|J<rsub|m>>), the pre-<math|L> and
    post-<math|L> constants, delays and windows; the order of choice supplies
    the eventual estimates and waiting windows listed above, including the
    stage construction <hlink|<verbatim|ruese>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Expound.lean#L68-L77>.

    <item>III.3, III.4 (free covariances, Gaussian integration): the free
    covariance and its frequency chart, the regulator families with their
    symbol bounds (used in Lemma 4.10), the window-to-kernel transfer
    <hlink|<verbatim|intended>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Radian/Signed.lean#L56-L92>.

    <item>III.9, III.10 (marginal flow, one nonlinear step): growth of
    <math|<wide|\<beta\>|^><rsub|m>>, the RG history ("course") from cutoff
    <math|N> to level <math|k> with its exact vacuum identity, the one-step
    bounds along paths, and the waiting-window engine
    <hlink|<verbatim|Wait.engine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L26-L135>.

    <item>III.13 (common Wilson family): <hlink|<verbatim|uv_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130>,
    the theorem that closes the chain and supplies every hypothesis of
    III.11.4\UIII.11.6 on the main path.

    <item>IV.1 (extraction): extraction orders and refinements, raw limits,
    projection inclusion, spans, cleaning to a smooth table, and the answers
    to the work items D01\UD06 (<hlink|<verbatim|Base>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L42-L51>).

    <item>VI.1, VI.2 (Ward identities, free Maxwell stress): windows, flux,
    Killing fields, conservation, finite faithfulness of testers (A04), the
    free lighthouse and its stress tensor, the canonical free Maxwell data,
    and the production of the current.

    <item>Consumers: VI.1 (<hlink|<verbatim|Climb.comparison>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L53-L63>
    also derives Maxwell ranks from the action law), VII.4 (OPE columns), and
    VIII.1 (the record of local field laws contains the Maxwell ranks;
    <hlink|<verbatim|Org.UV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L177-L186>
    is built by III.11.6(b)).
  </itemize-minus>

  <strong|Standard mathematics.> The chessboard estimate for
  reflection-positive measures (<hlink|Fröhlich\UIsrael\ULieb\USimon, Comm.
  Math. Phys. 62 (1978)|https://www.math.caltech.edu/SimonPapers/93.pdf>;
  Glimm\UJaffe, <em|Quantum Physics>, 2nd ed.), together with reflection
  positivity of the Wilson action (Osterwalder\USeiler, Ann. Phys. 110
  (1978)). Axial (tree) gauge fixing on a torus and invariance of Haar
  measure (<hlink|Seiler, <em|Gauge Theories as a Problem of Constructive
  Quantum Field Theory and Statistical Mechanics>, Lecture Notes in Physics
  159 (1982)|https://link.springer.com/book/10.1007/3-540-11559-5>). Haar
  volume of small balls in a compact Lie group. Wick (Isserlis) expansion.
  Schur complements for Gaussian conditioning. Symbol estimates in frequency
  space. Finite-dimensional duality (a vector lies in the range of a linear
  map if and only if it is annihilated by every functional that annihilates
  the range). Ward identities for a conserved symmetric stress tensor and
  Killing fields of <math|\<bbb-R\><rsup|4>>.

  <strong|Imported constants and assumptions.>

  <\itemize-minus>
    <item>The Haar-budget constants <math|<around|(|s,b|)>> exist by
    <hlink|<verbatim|integral_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Haar.lean#L170-L211>
    and <hlink|<verbatim|exists_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L35-L36>.
    They are fixed once for all stages and volumes.

    <item>Hypotheses carried by the outputs: the projector presentation, the
    one-step cost package, the centred budget, the frequent-scale price
    conditions, the binding, the shell budget, Grill and weak completeness.
    On the main path all are discharged before
    <hlink|<verbatim|uv_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130>
    (III.13), whose only hypotheses are <math|G> simple and <math|b\<gtr\>0>.
    The producers in this unit are <hlink|<verbatim|reception>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Eureka.lean#L22-L30>/<hlink|<verbatim|chaletrail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Inns.lean#L33-L53>,
    <hlink|<verbatim|franchise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Snow.lean#L55-L60>,
    <hlink|<verbatim|castle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Snow.lean#L28-L43>,
    <hlink|<verbatim|laurelE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Economist.lean#L23-L32>,
    <hlink|<verbatim|fugacious>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Economist.lean#L34>
    and <hlink|<verbatim|grilled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/South/FinalG.lean#L76-L83>.

    <item>The structures in <hlink|<verbatim|LedgerGate.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/LedgerGate.lean>
    (one-step "Estimate" packages: ignition, local output labellings,
    non-leading terms) are definitions, not theorems. Their docstring calls
    them "physics inputs, not consequences of the shape/lawful structure".
    They are conditional one-step interfaces. The restarted comparison
    constructs principal integration data from the binding and the one-step
    estimates; the older interfaces need not all occur in that route. Their
    complete correspondence with the restarted interfaces remains open in Ÿ7.
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  The field-space comparison has two parts. Algebraic equations give an upper
  bound on the dimension of each interacting field space. Short-distance one-
  and two-point tests give the reverse bound. A conjugation of projectors
  then identifies the real representations of the signed permutation group.

  At each cutoff, the projector kernel is the image of
  <math|\<cal-E\><rsub|d>> under an invertible corrected label map. Free
  probes separate the on-shell sector, so <math|dim
  F<rsub|d><rsup|<math-up|free>>=dim \<cal-V\><rsub|d>-dim ker
  \<Pi\><rsub|d,N,p>>. The relay estimates carry these equations to the
  limit, giving the upper bound. Along a sequence of good levels, the
  corrected test moments approach their free values. Since the free tests
  separate a basis, the corrected vectors are eventually linearly independent
  modulo the limit null space. This gives the lower bound.

  The two bounds imply <math|<math-up|null><rsub|d><around|(|T|)>=ker
  \<Pi\><rsub|\<infty\>>> and <math|dim F<rsub|d><around|(|T|)>=dim
  F<rsub|d><rsup|<math-up|free>>>. An invertible operator close to the
  identity conjugates a cutoff projector to <math|\<Pi\><rsub|\<infty\>>>.
  Composing it with the corrected label map identifies the Maxwell ideal with
  the interacting null space, preserving conjugation and signed permutations.

  The quantitative engine is the chessboard estimate. The product of
  reflected copies of a connected part, integrated against the Wilson measure
  at cutoff <math|N>, is carried by the exact RG history to a coarse level
  <math|m>. There the number of cells equals the number of sites
  <math|c<rsub|m,p>>. The flowed observable is bounded pointwise by
  <math|r<rsup|-<around|\||s|\|>*q>*exp <around|(|<math-up|exponent>+q*X|)>>
  for a set <math|s> of marked modes, and Proposition III.11.1 bounds the
  resulting ratio of integrals by <math|e<rsup|c<rsub|m,p>*\<pi\>>*g<rsup|-4*dim
  G>>.

  The determinant estimate compares two Haar integrals:

  <\itemize-minus>
    <item><strong|Numerator.> Extract the factor <math|e<rsup|6*c>> from the
    plaquette estimate. A triangular choice of <math|3*c-3> plaquettes, each
    owning a bond, gives an integral equal to
    <math|<around|(|<big|int>e<rsup|-<math-up|chord><around|(|u|)>/<around|(|g/\<sigma\><rsub|R>|)>>*<space|0.17em>d*h<around|(|u|)>|)><rsup|3*c-3>>,
    bounded by <math|<around|(|b*<around|(|g/\<sigma\><rsub|R>|)><rsup|dim
    G>|)><rsup|3*c-3>>.

    <item><strong|Vacuum.> Tree gauge leaves <math|3*c+1> free bonds.
    Restricting each to a Haar shell of radius <math|g/4> gives the lower
    bound <math|<around|(|s*g<rsup|dim G>|)><rsup|3*c+1>>.
  </itemize-minus>

  The powers of <math|g> cancel up to <math|g<rsup|-4*dim
  G>=\<beta\><rsup|2*dim G>>, which does not depend on the volume. After
  taking the <math|c<rsub|m,p>>-th root, its logarithmic contribution is at
  most <math|1>, because <math|2*dim G*log \<beta\>\<leqslant\>8*dim
  G*<space|0.17em><wide|\<beta\>|^><rsub|m>\<leqslant\>a<rsub|m><rsup|-1>\<leqslant\>c<rsub|m,p>>
  eventually. So the root test costs a per-site bound depending only on the
  stage parameters. The constants are chosen so that the allowance is
  <math|e<rsup|2*I<rsub|k>>> and the error bound is
  <math|e<rsup|-I<rsub|k>>>, where <math|I<rsub|k>=log
  \<mu\><rsub|k>/32\<geqslant\><text|work item>> for the one- and two-point
  tests; the root of every nonempty connected part is then
  <math|\<leqslant\>e<rsup|I<rsub|k>>/e<rsup|2*I<rsub|k>>=e<rsup|-I<rsub|k>>\<to\>0>.

  All conditions are needed only at <strong|infinitely many> good levels
  <math|k>. A diagonal choice of depths then produces the trial sequence
  (III.11.4). The covariance splitting identifies the fluctuation law used in
  the one-step comparison. The regulator estimates supply the frequency
  windows, while the uniform train constants control their propagation; the
  tender condition includes the numerical clearance needed for both.

  The stress tensor (III.11.6, III.11.7) is built by comparing the limit with
  a free Maxwell model along a scaling sequence. The Ward identities follow
  from a flux argument on shrinking annuli of radii <math|r<rsub|l>\<to\>0>:

  <\itemize-minus>
    <item>by conservation the flux does not depend on the window;

    <item>after scaling, the flux is an integral over the annulus
    <math|r<rsub|l>/4\<less\><around|\||y-x<rsub|0>|\|>\<less\>2*r<rsub|l>>;

    <item>a bound on correlations in annuli (Lemma 4.23) shows that
    combinations of fluxes annihilating all degree-<math|D> testers tend to
    <math|0>;

    <item>finite-dimensional duality and finite faithfulness of the testers
    then give one local field <math|B> representing the flux.
  </itemize-minus>

  <section|4. Steps><label|4-steps>

  <subsection|4.1 Haar estimates and the determinant
  budget><label|41-haar-estimates-and-the-determinant-budget>

  <strong|Lemma 4.1 (Haar budget).> There are
  <math|0\<less\>s\<leqslant\>1\<leqslant\>b> such that
  <math|h<around|(|<math-up|shell><around|(|r/4|)>|)>\<geqslant\>s*<space|0.17em>r<rsup|dim
  G>> for <math|0\<less\>r\<leqslant\>1>, and
  <math|<big|int>e<rsup|-<math-up|chord><around|(|u|)>/t>*<space|0.17em>d*h<around|(|u|)>\<leqslant\>b*<space|0.17em>t<rsup|dim
  G>> for <math|t\<gtr\>0>. <em|Sketch:> in exponential coordinates near
  <math|1>, the chord is comparable to the Lie-algebra norm and the Haar
  density is bounded above and below. Compactness extends the upper volume
  bound <math|h<around|(|<math-up|shell><around|(|r|)>|)>\<leqslant\>C*r<rsup|dim
  G>> to all <math|r\<gtr\>0>. Majorize the exponential by
  <math|<big|sum><rsub|k\<geqslant\>0>e<rsup|-k>*1<rsub|<math-up|shell><around|(|<around|(|k+1|)>*t|)>>>
  and sum <math|C*t<rsup|dim G>*<big|sum><rsub|k\<geqslant\>0><around|(|k+1|)><rsup|dim
  G>*e<rsup|-k>>. <em|Lean:> <hlink|<verbatim|integral_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Haar.lean#L170-L211>.

  <strong|Lemma 4.2 (plaquette elimination).> Let <math|n\<geqslant\>2> and
  let <math|\<varphi\>:G\<to\><around|[|0,1|]>> be continuous. Then
  <math|<big|int><big|prod><rsub|p>\<varphi\><around|(|U<rsub|p>|)>*<space|0.17em>d*\<mu\><rsub|<math-up|prior>><around|(|U|)>\<leqslant\><around*|(|<big|int>\<varphi\>*<space|0.17em>d*h|)><rsup|3*c-3>>,
  the product running over all <math|6*c> plaquettes of
  <math|\<Lambda\><rsub|n>>. <em|Sketch:> fix the spanning tree in which each
  site <math|x\<ne\>0> is joined to <math|x-e<rsub|i<around|(|x|)>>>, where
  <math|i<around|(|x|)>> is the highest axis with <math|x<rsub|i>\<ne\>0>.
  The <math|3*c+1> non-tree bonds are grouped into tiers by axis. Within each
  tier, take the wrap bonds first, except one "handle" per tier, then the
  transverse bonds from higher to lower height. This gives <math|3*c-3> swept
  bonds <math|e>, each assigned a plaquette <math|p<around|(|e|)>\<ni\>e>.
  Triangularity: if <math|e\<in\>p<around|(|e<rprime|'>|)>> with
  <math|e<rprime|'>\<ne\>e>, then <math|e<rprime|'>> has strictly higher
  priority than <math|e>. Integrate the bond of highest priority first. By
  left and right invariance of Haar measure, <math|U<rsub|p<around|(|e|)>>>
  is Haar-distributed as a function of <math|U<rsub|e>>, and no other
  selected plaquette contains <math|e>. So
  <math|<big|int>\<varphi\><around|(|U<rsub|p<around|(|e|)>>|)>*<space|0.17em>\<Psi\>*<space|0.17em>d*\<mu\>=<around*|(|<big|int>\<varphi\>*<space|0.17em>d*h|)>*<big|int>\<Psi\>*<space|0.17em>d*\<mu\>>.
  By induction, the product over the selected plaquettes integrates to
  exactly <math|<around|(|<big|int>\<varphi\>|)><rsup|3*c-3>>; the other
  plaquette factors are bounded by <math|1>. <em|Lean:>
  <hlink|<verbatim|elimination>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Axial.lean#L368-L383>,
  <hlink|<verbatim|charged_integral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Axial.lean#L347-L365>,
  <hlink|<verbatim|pull_link>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Axial.lean#L314-L345>,
  <hlink|<verbatim|independent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Axial.lean#L278-L303>.
  <em|(proof read; the combinatorics of the sweep, i.e. the count and
  triangularity lemmas, statement only)>

  <strong|Lemma 4.3 (vacuum lower bound).> Under the hypotheses of
  III.11.1(a), <math|<big|int>e<rsup|R>*<space|0.17em>d*\<mu\><rsub|<math-up|prior>>\<geqslant\>exp
  <around*|(|<math-up|scalar><around|(|R|)>-c*<around|(|<math-up|exCost>+\<beta\><space|0.17em><math-up|baseBudget>|)>|)>*<space|0.17em><around|(|s*<space|0.17em>g<rsup|dim
  G>|)><rsup|3*c+1>>. <em|Sketch:> <math|e<rsup|R>> is gauge invariant
  (<hlink|<verbatim|gauge_eval>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L46-L68>),
  so its integral equals the integral over the <math|3*c+1> free bonds with
  tree bonds set to <math|1> (<hlink|<verbatim|free_count>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Axial.lean#L115-L119>).
  Restrict to the set where every free bond lies in
  <math|<math-up|shell><around|(|g/4|)>>. Every bond then has chord
  <math|\<leqslant\>g/4>, so every plaquette has chord <math|\<leqslant\>g>.
  On calm configurations the polymer gas factor is <math|1>, and the exponent
  is <math|\<geqslant\><math-up|scalar>-c*<around|(|<math-up|exCost>+\<beta\><space|0.17em><math-up|baseBudget>|)>>.
  Lemma 4.1 with <math|r=g\<leqslant\>1> bounds the Haar volume of the
  restriction set from below. Positivity of <math|e<rsup|R>> handles the
  complement. <em|Lean:> <hlink|<verbatim|vacuum_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L76-L111>.

  <strong|Lemma 4.4 (exponent bound and numerator).> Under the hypotheses of
  III.11.1(a), with <math|E=g/\<sigma\><rsub|R>>: for every <math|U>,
  <math|<math-up|exponent><rsub|R><around|(|U|)>\<leqslant\><math-up|scalar>+c*<around|(|<math-up|exCost>+6|)>-<big|sum><rsub|p><math-up|chord><around|(|U<rsub|p>|)>/E>.
  Consequently <math|z<around|\||<big|int>F|\|>\<leqslant\>exp
  <around|(|<math-up|scalar>+c*<around|(|<math-up|exCost>+6+X|)>|)>*<space|0.17em><around|(|b*<space|0.17em>E<rsup|dim
  G>|)><rsup|3*c-3>>. <em|Sketch:> for the clipped plaquette action at
  <math|\<beta\>=g<rsup|-2>>, one has <math|<math-up|chord>/E-1\<leqslant\>\<beta\>\<cdot\><around|(|<text|base
  term>|)>>:

  <\itemize-minus>
    <item>in the quadratic regime, with <math|x=<math-up|chord>/g>, use
    <math|\<sigma\><rsub|R>*x-1\<leqslant\>\<sigma\><rsub|R>*x<rsup|2>/2> and
    <math|\<sigma\><rsub|R>\<leqslant\><rsub|R>>;

    <item>above the clipping threshold <math|t>, use <math|g\<leqslant\>t>
    and <math|\<sigma\><rsub|R>\<leqslant\>\<ell\><rsub|R>> to obtain
    <math|\<sigma\><rsub|R><space|0.17em><math-up|chord>/g\<leqslant\>\<beta\>*<space|0.17em>\<ell\><rsub|R>*<space|0.17em>t<space|0.17em><math-up|chord>>;
    the constant term of the linear branch is nonnegative.
  </itemize-minus>

  The principal part is an average over signed reflections of the pulled-back
  configuration. The chord sum is invariant under these, and the loop and
  activity corrections are bounded by <math|c> times their per-site prices.
  This gives the first bound, with <math|6=> the number of plaquette
  orientations accounting for the <math|-1> per plaquette. Then
  <math|z<around|\||F|\|>\<leqslant\>e<rsup|<math-up|scalar>+c<around|(|\<ldots\>|)>>*<big|prod><rsub|p>e<rsup|-<math-up|chord><around|(|U<rsub|p>|)>/E>>,
  and Lemma 4.2 with <math|\<varphi\>=e<rsup|-<math-up|chord>/E>> together
  with Lemma 4.1 conclude. <em|Lean:> <hlink|<verbatim|exponent_retains>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L153-L181>,
  <hlink|<verbatim|numerator>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L189-L217>.

  <strong|Lemma 4.5 (the ratio; III.11.1(a)).> Divide Lemma 4.4 by Lemma 4.3.
  With <math|u=3*c-3> and <math|l=3*c+1=u+4>, the exponent is

  <\equation*>
    c*<around|(|2<space|0.17em><math-up|exCost>+6+\<beta\><space|0.17em><math-up|baseBudget>+X|)>+u<space|0.17em><math-up|ent>-l*log
    s-4*dim G*log g.
  </equation*>

  Since <math|<math-up|ent>\<geqslant\>0>, <math|log s\<leqslant\>0>,
  <math|u\<leqslant\>3*c> and <math|l\<leqslant\>4*c>, this is at most
  <math|c*\<pi\>-4*dim G*log g>. <em|Lean:>
  <hlink|<verbatim|determinant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L240-L274>.

  <strong|Lemma 4.6 (per-site work item; III.11.1(b)).> Under the assumptions
  and uniformly over the parameter ranges of III.11.1(b), for all
  sufficiently large <math|m>:

  <\itemize-minus>
    <item>(i) <math|\<pi\>\<leqslant\><text|work item>-1>;

    <item>(ii) <math|-4*dim G*log g/c<rsub|m,p>\<leqslant\>1>.
  </itemize-minus>

  <em|Sketch:> (i) uses <math|<math-up|exCost>\<leqslant\>1+<around|(|8<space|0.17em><math-up|paths>+1|)>>,
  from <math|\<delta\>\<leqslant\>1>, <math|\<Lambda\>*t<rsup|2>\<leqslant\>1>
  and <math|<wide|\<beta\>|^><rsub|m>*t<rsup|3>,<wide|\<beta\>|^><rsub|m>*t<rsup|4>\<leqslant\>1>
  eventually; and <math|\<beta\><space|0.17em><math-up|baseBudget>=6*<around|(|<math-up|direct>+<math-up|paths><rsup|2>|)>/2>
  by <math|\<beta\>*g<rsup|2>=1>. (ii) Since <math|-4*log g=2*log
  \<beta\>\<leqslant\>2*\<beta\>\<leqslant\>8*<wide|\<beta\>|^><rsub|m>>, and
  <math|<wide|\<beta\>|^><rsub|m>> grows linearly in <math|log
  a<rsub|m><rsup|-1>>, one gets <math|8*dim
  G*<space|0.17em><wide|\<beta\>|^><rsub|m>\<leqslant\>a<rsub|m><rsup|-1>\<leqslant\>c<rsub|m,p>>
  eventually. <em|Lean:> <hlink|<verbatim|affordable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L119-L123>,
  <hlink|<verbatim|rolls_law>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L46-L79>.

  <strong|Lemma 4.7 (chessboard root).> Let <math|T> tile the cutoff torus
  into <math|q> cells, where <math|q> is the number of sites of the
  level-<math|m> torus. Suppose the exact RG history has terminal density
  <math|P>. Assume that deleting the additive activities of <math|P> gives a
  lawful representation with activity parameter <math|0>, and that the
  deleted additive term has absolute value at most <math|q*\<delta\>>. Let
  <math|V> be a finite set of modes and let every component
  <math|\<Phi\><rsub|s>> be continuous. Assume <math|r\<gtr\>0>,
  <math|e\<geqslant\>0>, <math|g\<gtr\>0>,
  <math|g\<leqslant\><math-up|threshold><around|(|P|)>> and
  <math|\<beta\><around|(|P|)>*g<rsup|2>=1>. Suppose the local activity bound
  for the flowed stamped polynomial, at radius <math|r> and exponents
  <math|<around|(|e,l,L|)>>, gives

  <\equation*>
    r<rsup|q<space|0.17em><math-up|card><space|0.17em>s><around|\||F<rsub|s><around|(|U|)>|\|>\<leqslant\>exp
    <around*|(|<math-up|exponent><rsub|P><around|(|U|)>+q*<around|(|L+<math-up|card><space|0.17em>V*<space|0.17em>l|)>|)>
  </equation*>

  for every terminal configuration <math|U> and every <math|s\<subseteq\>V>.
  Here <math|F<rsub|s>> is the flow of the unnormalized Wilson density
  multiplied by the product of the reflected copies of
  <math|\<Phi\><rsub|s>>. Then

  <\equation*>
    \<rho\><rsub|T><around|(|\<Phi\><rsub|s>|)>\<leqslant\><frac|exp
    <around*|(|\<pi\><around|(|P,L+<math-up|card><space|0.17em>V*<space|0.17em>l,g|)>-4*dim
    G*log g/q|)>|r<rsup|<math-up|card><space|0.17em>s>>,
  </equation*>

  where <math|\<rho\><rsub|T>> is the absolute value of the stamped Wilson
  expectation to the power <math|1/q>.

  For the station at level <math|k>, assume allocation, per-site
  affordability at the width level, <math|<math-up|card><space|0.17em>V\<leqslant\>M>,
  <math|l,L\<leqslant\>1>, and <math|r=e<rsup|2*I>> with
  <math|I\<geqslant\><text|work item><around|(|O,k,M|)>>. Then, for every
  nonempty <math|s>, <math|\<rho\><rsub|T><around|(|\<Phi\><rsub|s>|)>\<leqslant\>e<rsup|-I>>.
  <em|Sketch:> the exact vacuum identity supplies the Wilson partition
  function as denominator. Apply III.11.1(a) to the representation with its
  additive activities deleted. Comparing both numerator and denominator costs
  <math|e<rsup|q*\<delta\>>> twice, supplying the <math|2*\<delta\>> already
  included in <math|2<space|0.17em><math-up|exCost>> in <math|\<pi\>>. Take
  the <math|q>-th root. For the last assertion, allocation keeps the stage
  constant between width and <math|k>; <math|L+<math-up|card><space|0.17em>V*<space|0.17em>l\<leqslant\>1+M>,
  and <math|r<rsup|<math-up|card><space|0.17em>s>\<geqslant\>r>. <em|Lean:>
  <hlink|<verbatim|s_postage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Denarii.lean#L49-L85>,
  <hlink|<verbatim|denture>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Denarii.lean#L27-L43>,
  <hlink|<verbatim|coupon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Denarii.lean#L90-L123>.
  <em|(proof read; the flow identity and the cell-stamp bookkeeping,
  statement only)>

  <subsection|4.2 Free covariances><label|42-free-covariances>

  <strong|Lemma 4.8 (III.11.2).> <em|Sketch:> expand the pair term as
  <math|<big|sum><rsub|a,b><math-up|Re><space|0.17em>\<Gamma\><rsub|a*b><space|0.17em><around|(|r<rsup|\<Delta\><rsub|L>><math-up|ev><rsub|L><around|(|r<rsup|-<math-up|gen><space|0.17em>a>*t<rsub|a>|)>|)><around|(|r<rsup|\<Delta\><rsub|S>><math-up|ev><rsub|S><around|(|r<rsup|-<math-up|gen><space|0.17em>b>*t<rsub|b>|)>|)>>.
  Keys of generation below the scaling degree of the stencil evaluate to
  <math|0>. Keys of generation equal to the scaling degree give exactly the
  free curvature kernel (<hlink|<verbatim|deck>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StrideCost.lean#L64-L67>).
  Every other term carries an extra factor <math|r<rsup|-1>> or smaller. So
  <math|r> times the remainder is at most
  <math|D*<big|sum><around|\||<math-up|ev><rsub|L><around|(|t<rsub|a>|)><around|\|||\|><math-up|ev><rsub|S><around|(|t<rsub|b>|)>|\|>>,
  summed over the non-leading pairs. <em|Lean:>
  <hlink|<verbatim|fence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StrideCost.lean#L70-L98>.
  Its eventual form is the pair penalty <hlink|<verbatim|Prayer.penalty>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/EastBell.lean#L44-L67>.

  <strong|Lemma 4.9 (measured Gaussian data).> Let <math|Q> be the symmetric
  covariance array and <math|m> the mean vector obtained by applying the
  normalized stencil and remainder functionals to measured pair and one-point
  data. Let <math|F> be the free-current covariance on the stencil keys,
  extended by zero on the remainder indices. Suppose <math|B\<geqslant\>1>,
  <math|T,P,\<varepsilon\>\<geqslant\>0>, and, entrywise,

  <\equation*>
    <around|\||m<rsub|i>|\|>\<leqslant\>P*T,<space|2em><around|\||Q<rsub|i*j>-F<rsub|i*j>|\|>\<leqslant\>P*T<rsup|2>.
  </equation*>

  On the stencil keys assume the sharper bounds
  <math|<around|\||m<rsub|i>|\|>\<leqslant\>\<varepsilon\>*T> and
  <math|<around|\||Q<rsub|i*j>-F<rsub|i*j>|\|>\<leqslant\>\<varepsilon\>*T<rsup|2>>.
  If

  <\equation*>
    P*T\<leqslant\>B,<space|2em><around|\||F<rsub|i*j>|\|>+P*T<rsup|2>\<leqslant\>B,<space|2em>\<varepsilon\>*T\<leqslant\>e,<space|2em>\<varepsilon\>*T<rsup|2>\<leqslant\>e,
  </equation*>

  then all measured means and covariances are bounded by <math|B>, and their
  restriction to the stencil keys differs from <math|<around|(|0,F|)>> by at
  most <math|e> in both means and covariances. <em|Sketch:> use the triangle
  inequality for <math|Q>. In the application, the measured horizons and
  bridges satisfy the discrete Bianchi identities and scaled
  finite-difference bounds. The stencil normalization <math|T> bounds the
  sampling coefficients and the remainder factor <math|M<rsup|d-1>> for
  addresses within radius <math|M>. These give the displayed broad and sharp
  bounds. Positivity of <math|Q> is not required. <em|Lean:>
  <hlink|<verbatim|resolution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Prayer.lean#L74-L111>.

  <strong|Lemma 4.10 (III.11.3).> <em|Sketch:> write
  <math|\<lambda\>=2*\<pi\>> and let <math|T<around|(|\<zeta\>|)>> be
  exterior multiplication by <math|i*\<zeta\>> from one-forms to two-forms.
  In the chart <math|\<zeta\>=\<lambda\>*\<xi\>>, the heat symbol is

  <\equation*>
    e<rsup|-<around|\||\<zeta\>|\|><rsup|2>><around|\||\<zeta\>|\|><rsup|-2>*<around|(|T<around|(|\<zeta\>|)>*T<around|(|\<zeta\>|)><rsup|\<ast\>>|)><rsub|a,b>,
  </equation*>

  with the color Kronecker factor. The regulator estimates in III.3 bound the
  chart as a symbol of order <math|0> and its difference from this heat
  symbol as a symbol of order <math|1>. The chain rule under
  <math|\<xi\>\<mapsto\>\<lambda\>*\<xi\>> preserves these orders and changes
  the constants by fixed powers of <math|\<lambda\>>. Sum the constants over
  the finitely many plaquette pairs to obtain a bound independent of <math|G>
  and the colors. <em|Lean:> <hlink|<verbatim|window_prices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Window.lean#L118-L136>,
  <hlink|<verbatim|heat_window>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Window.lean#L57-L76>.

  <strong|Lemma 4.11 (covariance splitting and propagation).> (i) Let an
  atlas be compatible with the chosen schedule and its retained unmasked
  quadratic forms, and assume the atlas symmetry, coercivity, inverse and
  crossing laws. Let <math|i\<less\>N>, choose a tree forest for the step,
  and assume the step torus satisfies the size condition for tree inversion.
  Then

  <\equation*>
    \<cal-C\><rsub|i+1>-W<rsub|i>*\<cal-C\><rsub|i>*W<rsub|i><rsup|<math-ss|T>>=d<rsub|f>*\<Gamma\><rsub|i>*d<rsub|f><rsup|<math-ss|T>>,<space|2em>\<Gamma\><rsub|i>\<succeq\>0,
  </equation*>

  where <math|\<cal-C\><rsub|i>> is the complete curvature covariance,
  <math|W<rsub|i>> the passage map, <math|d<rsub|f>> the fine exterior
  derivative, and <math|\<Gamma\><rsub|i>> the uncut tree covariance,
  extended by zero on tree bonds. (ii) Fix kernel choices and stage indices
  <math|j,t\<geqslant\>4>. There is <math|R\<geqslant\>1> such that, for
  every <math|G>, every schedule with these kernel choices, and every
  <math|N,i,p,d> satisfying <math|J<rsub|i+1>=j>, <math|J<rsub|i>=t> and
  <math|d-1\<leqslant\>j-2> (natural-number subtraction), the
  difference-motion propagation bound holds with constant <math|R>.
  <em|Sketch:> (i) is a Schur-complement identity on the curl image; the
  restricted tree inverse gives positivity. For (ii), use the uniform
  resolvent estimate for the two stage indices and sum its six plaquette
  components.

  The table <hlink|<verbatim|prepared>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Gates.lean#L86>
  chooses, for each kernel, the uniform window, covariance and propagation
  constants; their required smallness is a separate clearance condition.
  <em|Lean:> <hlink|<verbatim|one_fold>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Identity.lean#L198-L213>,
  <hlink|<verbatim|train_issue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Step.lean#L106-L116>.

  <strong|Lemma 4.12 (Wick expansion).> Let <math|A> be a finite index set,
  let <math|<math-up|loc>:A\<to\>S> take values in an ordered location set,
  and let <math|Z<rsub|a>> be formal Gaussian generators with zero mean and
  symmetric covariance <math|Q>. Assume <math|Q<around|(|Z<rsub|a>,Z<rsub|b>|)>=0>
  whenever <math|<math-up|loc><around|(|a|)>=<math-up|loc><around|(|b|)>>.
  For every <math|p\<subseteq\>A>, the formal Wick moment of
  <math|<big|prod><rsub|a\<in\>p>Z<rsub|a>> is the sum, over perfect
  matchings of <math|p> joining different locations, of the products of their
  covariances. No positivity assumption is imposed on <math|Q>. <em|Sketch:>
  remove one index and use the Gaussian moment recursion. The zero mean
  removes the singleton term, and the covariance hypothesis removes pairs at
  a common location. The remaining choices are in bijection with the
  admissible matchings. <em|Lean:> <hlink|<verbatim|headed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTrack.lean#L131-L173>.

  <subsection|4.3 Polynomial calculus and
  identities><label|43-polynomial-calculus-and-identities>

  <strong|Lemma 4.13 (polynomial and integral calculus).> Write
  <math|<around|\<\|\|\>|P|\<\|\|\>><rsub|1>> for the sum of the absolute
  values of the coefficients of a polynomial <math|P>.

  <\itemize-minus>
    <item>(i) Fix derivative rules for <math|G> and an order <math|d>. There
    is <math|C\<geqslant\>0> such that, whenever a local observable <math|A>
    is regular for a parameter set of order at least <math|d+1> and has the
    prescribed derivative bounds <math|c>, its pullback
    <math|A\<circ\>\<cal-N\>> to a link-coordinate chart has a Taylor
    polynomial <math|P> of degree at most <math|d> satisfying
    <math|<around|\<\|\|\>|P|\<\|\|\>><rsub|1>\<leqslant\>c*<around|(|<math-up|card><space|0.17em><text|links>+1|)><rsup|d>*C>
    and <math|<around|\||A<around|(|\<cal-N\><around|(|x|)>|)>-P<around|(|x|)>|\|>\<leqslant\>c<around|\<\|\|\>|x|\<\|\|\>><rsup|d+1>>
    for <math|<around|\<\|\|\>|x|\<\|\|\>>> within the fixed chart radius.
    <hlink|<verbatim|minted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/LineBox.lean#L168-L205>

    <item>(ii) For a family <math|A<rsub|i>> satisfying (i) with bounds
    <math|c<rsub|i>>, and coefficients <math|f<rsub|i>> such that
    <math|S=<big|sum><rsub|i><around|\||f<rsub|i>|\|>*c<rsub|i>\<less\>\<infty\>>,
    there is a degree-<math|d> polynomial <math|P> with
    <math|<around|\<\|\|\>|P|\<\|\|\>><rsub|1>\<leqslant\>S*<around|(|<math-up|card><space|0.17em><text|links>+1|)><rsup|d>*C>
    and remainder at most <math|S<around|\<\|\|\>|x|\<\|\|\>><rsup|d+1>>.
    <hlink|<verbatim|till>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Stories.lean#L99-L112>

    <item>(iii) Fix real normed spaces <math|E,V>, with <math|V> a normed
    algebra, and <math|D\<in\>\<bbb-N\>>. There are <math|C\<geqslant\>0> and
    <math|q\<in\>\<bbb-N\>> such that, for every finite list
    <math|f<rsub|1>,\<ldots\>,f<rsub|l>:E\<to\>V>, point <math|x>, and
    <math|B\<geqslant\>1>, if each <math|f<rsub|i>> is <math|C<rsup|D>> at
    <math|x>, <math|f<rsub|i><around|(|x|)>=1>, and
    <math|<around|\<\|\|\>|\<partial\><rsup|j>*f<rsub|i><around|(|x|)>|\<\|\|\>>\<leqslant\>B>
    for <math|j\<leqslant\>D>, then <math|<around|\<\|\|\>|\<partial\><rsup|j>*<big|prod><rsub|i>f<rsub|i><around|(|x|)>|\<\|\|\>>\<leqslant\>C*<around|(|<around|(|1+l|)>*B|)><rsup|q>>
    for <math|j\<leqslant\>D>. <hlink|<verbatim|conquer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Terrain.lean#L66-L123>

    <item>(iv) For one- or two-insertion polynomial data in the staged
    comparison, assume the common-mask condition, the comparison bounds on
    means and covariances, <math|0\<less\>\<varepsilon\>\<leqslant\>1>,
    coefficient bound <math|w>, degree bound <math|D>, the prescribed
    variable supports, and vanishing of inadmissible pair terms. The
    difference between the resulting connected component and its free
    polynomial comparison is at most <math|t+z+<around|(|u+t|)>*t+t*u>, where
    <math|u,t,z> are respectively the polynomial size, one-factor error and
    two-factor error bounds of that comparison.
    <hlink|<verbatim|console>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Festoon.lean#L57-L126>

    <item>(v) For a bounded measurable gauge-invariant density <math|g>, a
    branching step and an allocation satisfying its chart and integrability
    conditions, the pushforward is exactly the sum over matching-flag sectors
    and tree/tag choices of their weighted conditional integrals. If these
    integrands have a common factor <math|\<Lambda\><around|(|U|)>> and a
    finite local decomposition with the required integrability, the result is
    <math|\<Lambda\><around|(|U|)>> times the sum of products over pairwise
    disjoint compatible local components.
    <hlink|<verbatim|arriving>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Dispenser.lean#L121-L143>,
    <hlink|<verbatim|rendered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Rendered.lean#L36-L86>

    <item>(vi) Fix a valid coarse configuration and a tree/tag choice. If
    finitely many integrable observables satisfy the locality and
    compatibility conditions of the conditional fluctuation law, and their
    coarse supports are pairwise disjoint, their product is integrable and
    its conditional integral equals the product of their conditional
    integrals. <hlink|<verbatim|peer_beams>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Sight.lean#L132-L158>
  </itemize-minus>

  <em|Sketch:> Taylor's theorem gives (i), and absolute coefficient
  summability gives (ii). For (iii), split each factor as
  <math|1+<around|(|f<rsub|i>-1|)>> and induct on the derivative order; the
  highest derivative terms add rather than multiply. For (iv), the two-point
  cumulant is the second moment minus the product of the means; expand the
  difference and use the three stated bounds. For (v), apply the allocation
  identity before discarding sectors with the wrong flags, then group the
  local components. For (vi), the joint local-coordinate marginal is a
  product measure, so Fubini gives factorization. <em|(proof read; local
  comparison and allocation inputs statement only)>

  <subsection|4.4 From frequent good scales to trial systems
  (III.11.4)><label|44-from-frequent-good-scales-to-trial-systems-iii114>

  <strong|Lemma 4.14 (multi-step propagation).> Fix a level
  <math|k\<leqslant\>N>, a band <math|b>, a fitted configuration <math|x>
  with <math|v> insertions, and an exact RG history. Let <math|m<rsub|0>> and
  <math|m<rsub|1>> be its width and middle levels. Assume allocation at
  <math|k>, admissible representations along
  <math|<around|[|m<rsub|0>,m<rsub|1>|]>>, a numerical propagation bound for
  arity <math|M>, and

  <\equation*>
    <wide|\<beta\>|^><rsub|u>\<in\><around|[|<wide|\<beta\>|^><rsub|k>/2,<wide|\<beta\>|^><rsub|k>|]>*<space|1em><around|(|m<rsub|0>\<leqslant\>u\<leqslant\>m<rsub|1>|)>,<space|2em>v\<leqslant\>M.
  </equation*>

  Assume the instance decomposition for the tested labels: at the middle
  level, the marked sources approximate the negative free-profile terms
  within the prescribed error, with the required background and source
  bounds, and the subsequent steps satisfy the exhibited bounds. Finally
  assume each free-profile term has absolute value at most <math|exp
  <around|(|<around|(|log log <wide|\<beta\>|^><rsub|k>|)><rsup|2>/4|)>>.

  Then the flow of the corrected stamped observable has a local activity
  decomposition at <math|m<rsub|0>> with radius
  <math|<math-up|allowance><around|(|M,k|)>> and exponents
  <math|<around|(|e,1,1|)>>, where <math|e> is the input source exponent.
  <em|Sketch:> use the middle-level decomposition and the free-profile bound
  to initialize the source estimate. The propagation bound controls its
  iteration through <math|<around|[|m<rsub|0>,m<rsub|1>|]>>; the coupling
  window keeps every intermediate estimate in the same numerical range. The
  correction cancels the leading free-profile terms. This is the local
  decomposition used in Lemma 4.7. <em|Lean:>
  <hlink|<verbatim|v_conditioned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L29-L53>.
  <em|(proof read; helper estimates statement only)>

  <strong|Lemma 4.15 (the chain).> Under the hypotheses of III.11.4:

  <\enumerate>
    <item>At infinitely many <math|k>, the simultaneous price and insertion
    conditions give covariance data, an exact RG history and compatible
    restarted representations, eventually in <math|N> and for every <math|p>.
    The uniform covariance and test-point estimates supply the local Gaussian
    comparison. (<hlink|<verbatim|cast_off>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Star.lean#L64-L66>
    via <hlink|<verbatim|backstage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Star.lean#L49-L63>.)

    <item>Construct a common correction map and polynomial approximations for
    all rows. The one-step comparison supplies the coefficient, support and
    remainder bounds on the same path of representations.
    (<hlink|<verbatim|v_paid_factory>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Diana.lean#L57-L104>,
    <em|proof read; analytic inputs statement only>.)

    <item>Compare the resulting Gaussian polynomial moments with the free
    profiles. The eventual finite-difference bounds transfer this comparison
    from the chosen representatives to the actual corrected columns, giving
    the instance estimates of Lemma 4.14.
    (<hlink|<verbatim|v_culminates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L84-L95>,
    <em|proof read>.)

    <item>Apply Lemma 4.14 to propagate the corrected estimates to the width
    level, retaining the terminal density identity and admissibility needed
    for the root estimate. (<hlink|<verbatim|v_pay_all>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L112-L125>,
    <em|proof read>.)

    <item>Offers give a trial system. Choose depths <math|k<rsub|i>>
    inductively among the good levels, with
    <math|k<rsub|i+1>\<gtr\>k<rsub|i>>, strictly increasing widths, and
    strictly decreasing test scales tending to <math|0>. The lifts come from
    <hlink|<verbatim|ticketed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L149-L173>
    (bounded, real, with first entry the reference unit). The chessboard
    bounds come from Lemma 4.7, using the per-site affordability
    <hlink|<verbatim|banking>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L42>,
    which follows from Lemma 4.6. (<hlink|<verbatim|v_obtain_purchases>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L177-L222>,
    <em|proof read>.)
  </enumerate>

  <em|Lean:> <hlink|<verbatim|wheeled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Star.lean#L68-L69>
  composes items 2\U5.

  <strong|Lemma 4.16 (eventual insertion estimates).> Assume <math|G> is
  simple, <math|C> satisfies the construction record, and the one-step cost
  package uses the prescribed weight sequence and multiplicities at least
  <math|1>. Fix a degree-<math|d> column family <math|X> and stage package
  whose mark exponent satisfies <math|c\<geqslant\>2*<around|(|w<around|(|G,d|)>+1|)>>,
  where <math|w<around|(|G,d|)>=w<rsub|d>> is the prescribed coefficient
  exponent. Then, for all sufficiently large <math|k>, metering at <math|k>
  implies the lantern-mark condition for <math|X> at <math|k>. <em|Sketch:>
  write <math|x=<wide|\<beta\>|^><rsub|k>> and
  <math|b<rsub|a><around|(|x|)>=exp <around|(|a<around|(|log log
  x|)><rsup|2>|)>>. For every fixed <math|a>, the inequality
  <math|b<rsub|a><around|(|x|)>*s\<leqslant\>b<rsub|-8><around|(|x|)>> with
  <math|s\<geqslant\>0> gives

  <\equation*>
    s\<leqslant\>exp <around|(|-<around|(|8+a|)><around|(|log log
    x|)><rsup|2>|)>\<leqslant\>x
  </equation*>

  for sufficiently large <math|x>. Hence <math|x<rsup|-c/2>*s\<leqslant\>x<rsup|-w<around|(|G,d|)>>>.
  The one-step estimate and spacing of the rounded test points turn this
  coefficient bound into the required insertion estimate. The threshold is
  uniform over the tested coefficients, cutoffs and periods. <em|Lean:>
  <hlink|<verbatim|bursts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SteamW.lean#L54-L59>,
  <hlink|<verbatim|quaking>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SteamW.lean#L45-L52>.
  <em|(proof read; analytic inputs statement only)>

  <strong|Lemma 4.17 (discharge of the frequent-scale conditions).> Given
  compatible pre-<math|L> price data and one-step bounds for a sheet, with
  the stage thresholds below the chosen block lengths and each degree index
  eventually present in the stage index sets, a Haar budget, nonnegative mark
  exponents and simple <math|G>, there are panels <math|Q<rsub|d>> and a
  waiting window extending any given one with the following property. For
  every Wilson family <math|C> paid on that window and every binding with
  these prices, for every <math|d>, the four price conditions hold at
  infinitely many levels. <em|Sketch:> the restarted comparison and the
  scale-selection construction produce the panels and the window; frequency
  follows because each requested degree index is eventually present in those
  stage sets. <em|Lean:> <hlink|<verbatim|franchise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Snow.lean#L55-L60>.
  <em|(proof structure read; helpers statement only)>

  <subsection|4.5 The rank comparison (III.11.5)><label|45-the-rank-comparison-iii115>

  <strong|Lemma 4.18 (equation count).> Under the projector presentation of
  III.11.5(i), at every cutoff, <math|dim \<cal-L\><rsub|d>\<leqslant\>dim
  ker \<Pi\><rsub|d,N,p>+dim F<rsub|d><rsup|<math-up|free>>>. <em|Sketch:>
  <math|ker \<Pi\><rsub|d,N,p>> is the image of <math|\<cal-E\><rsub|d>>
  under an injective corrected label map, by the projector presentation. The
  free null space is the image of <math|\<cal-E\><rsub|d>> under the label
  coordinates. This uses <hlink|<verbatim|projectionExact>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L102-L118>
  (a label is null in the free table if and only if its on-shell image lies
  in the residual) and <hlink|<verbatim|no_residual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L38-L54>
  (the residual is <math|0>: free probes separate the on-shell sector). Then
  <math|dim F<rsub|d><rsup|<math-up|free>>+dim \<cal-E\><rsub|d>=dim
  \<cal-L\><rsub|d>>. <em|Lean:> <hlink|<verbatim|savings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L19-L47>,
  <hlink|<verbatim|EquationCount>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Monitors.lean#L92-L94>,
  <hlink|<verbatim|projectionExact>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L102-L118>,
  <hlink|<verbatim|no_residual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L38-L54>.
  <em|(proof read; free positivity input statement only)>

  <strong|Lemma 4.19 (short-distance comparison and independence).> Assume
  <math|C> satisfies the construction record, <math|f> gives generic point
  limits <math|S>, and the correlation kernels of <math|S> are continuous on
  generic configurations and integrable against every separated test
  function. Let <math|Z> satisfy the purchase conditions, and suppose all its
  coefficient vectors have iterated limits along <math|f>. Then:

  <\itemize-minus>
    <item>(i) for every row and every basis column, the correlation of its
    limiting corrected vectors at the trial's physical points differs from
    the free correlation at the rescaled points by at most
    <math|P<rsub|k>*\<gamma\><rsub|k>>, where <math|P<rsub|k>> is the
    polynomial coefficient weight of the free profile. The numbers
    <math|P<rsub|k>> converge and <math|\<gamma\><rsub|k>\<to\>0>, so these
    correlations converge to their prescribed free test values;

    <item>(ii) for all sufficiently large <math|k>, the limiting vectors of
    trial <math|k> are linearly independent modulo the subspace of labels
    annihilated by every integrated correlation test of <math|S>.
  </itemize-minus>

  <em|Sketch:> expand the ordinary moment using the relative connected
  components and apply the chessboard inequality to every nonempty component.
  This gives the error <math|P<rsub|k>*\<gamma\><rsub|k>> before the cutoff
  limits, and the bound passes through those limits. Each row functional
  descends to the quotient by the integrated-test null space. The resulting
  finite matrix converges to the injective free detector matrix. Injectivity
  is open in finite dimensions, giving (ii). <em|Lean:>
  <hlink|<verbatim|measured>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Monitors.lean#L71-L87>;
  the comparison is <hlink|<verbatim|Purchases.samples>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bought.lean#L112-L123>/<hlink|<verbatim|converge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bought.lean#L125-L133>
  in <hlink|<verbatim|Bought.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bought.lean>.
  <em|(proof read; chessboard input statement only)>

  <strong|Lemma 4.20 (seed and null space).> Assume <math|C> satisfies the
  construction record. Under a centred port for <math|C> along <math|f>, raw
  limits <math|S> along that same extraction, relay bins with convergent
  projectors, the equation count for every <math|d>, and trial systems with
  the purchase conditions for every <math|d>, there is a refinement along
  which the following hold:

  <\itemize-minus>
    <item>the arrival and spans records;

    <item>a cleaned smooth table <math|T>;

    <item>the seed record for <math|T>;

    <item>for every <math|d>: <math|<math-up|null><rsub|d><around|(|T|)>=ker
    \<Pi\><rsub|\<infty\>>>, where <math|\<Pi\><rsub|\<infty\>>> is the limit
    projector, and <math|dim F<rsub|d><around|(|T|)>=dim
    F<rsub|d><rsup|<math-up|free>>>.
  </itemize-minus>

  <em|Sketch:> the relay estimates give <math|ker
  \<Pi\><rsub|\<infty\>>\<subseteq\><math-up|null><rsub|d><around|(|T|)>>.
  Lemma 4.19(ii) gives the reverse dimension inequality, using the equation
  count and eventual stability of the projector kernel dimension. Hence the
  subspaces coincide, and the field dimensions agree. <em|Lean:>
  <hlink|<verbatim|arriving_seed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Beam.lean#L153-L180>,
  <hlink|<verbatim|equation_retains>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Beam.lean#L142-L147>.
  <em|(proof read; analytic inputs statement only)>

  <strong|Lemma 4.21 (equivariant identification).> Under the projector
  presentation of III.11.5(i) and the extraction record for its projectors
  and cleaned table <math|T>, there are the real,
  signed-permutation-equivariant isomorphisms <math|\<Phi\><rsub|d>> of
  III.11.5. The free table has its canonical real structure and zero residual
  null space. <em|Sketch:> let <math|A<rsub|i>\<to\>\<Pi\><rsub|\<infty\>>>
  be the projectors along the extraction, and set
  <math|Y<rsub|i>=\<Pi\><rsub|\<infty\>>*A<rsub|i>+<around|(|1-\<Pi\><rsub|\<infty\>>|)>*<around|(|1-A<rsub|i>|)>\<to\>1>.
  For large <math|i>, <math|Y<rsub|i>> is invertible and
  <math|Y<rsub|i>*A<rsub|i>=\<Pi\><rsub|\<infty\>>*Y<rsub|i>>. Since
  <math|A<rsub|i>> and <math|\<Pi\><rsub|\<infty\>>> are real and
  equivariant, so is <math|Y<rsub|i>>. Then
  <math|L=Y<rsub|i>\<circ\><around|(|<text|corrected label map>|)>> maps
  <math|\<cal-E\><rsub|d>> onto <math|ker
  \<Pi\><rsub|\<infty\>>=<math-up|null><rsub|d><around|(|T|)>>
  (<hlink|<verbatim|drumroll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Thrush.lean#L13-L68>).
  The inverse of the induced quotient map, followed by the fixed free
  coordinate identification, is <math|\<Phi\><rsub|d>>. <em|Lean:>
  <hlink|<verbatim|thrush>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Thrush.lean#L72-L114>,
  <hlink|<verbatim|drumroll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Thrush.lean#L13-L68>.

  <strong|Lemma 4.22 (III.11.5).> Under the hypotheses of III.11.5, its
  conclusion follows by the following steps:

  <\enumerate>
    <item>extract raw point limits (IV.1) and include the label projections;

    <item>build, for each <math|d>, the free detector columns
    <math|X<rsub|d>>, which form a basis of
    <math|F<rsub|d><rsup|<math-up|free>>>;

    <item>combine assumption (iii) with Lemma 4.16 and apply III.11.4 to get
    trial systems with the purchase conditions;

    <item>apply Lemma 4.20 with Lemma 4.18;

    <item>assemble the extraction record (using D05);

    <item>conclude with Lemma 4.21.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|rated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L48-L71>.

  <subsection|4.6 The stress tensor (III.11.6,
  III.11.7)><label|46-the-stress-tensor-iii116-iii117>

  <strong|Lemma 4.23 (annihilated flux combinations).> Under the hypotheses
  of III.11.7, let <math|I> be a finite family of generic tester
  configurations on the schedule grids, each with <math|x<rsub|0>=0>, and let
  <math|<around|(|g<rsub|a>|)>> be coefficients with
  <math|<big|sum><rsub|a>g<rsub|a><space|0.17em><math-up|test><rsub|a><around|(|z|)>=0>
  for all <math|z\<in\>F<rsub|D>>. Here <math|<math-up|test><rsub|a>> inserts
  <math|z> at the root with the remaining fields of tester <math|a>;
  <math|<math-up|flux><rsub|a>> inserts the flux built from
  <math|<around|(|\<cal-J\>,U,v|)>> there. Then
  <math|<big|sum><rsub|a>g<rsub|a><space|0.17em><math-up|flux><rsub|a>=0>.
  <em|Sketch:> let <math|r<rsub|l>\<to\>0> be the radii of the shell budget.
  Choose a smooth radial bump <math|\<chi\>>, equal to <math|1> on the ball
  of radius <math|1/2> and supported in the unit ball. Conservation makes the
  flux independent of the window, so for large <math|l> use
  <math|\<chi\><rsub|l><around|(|y|)>=\<chi\>*<around|(|y/r<rsub|l>|)>>. By
  homogeneity of <math|U>, the flux becomes
  <math|-<big|sum><rsub|i*j><big|int>M<rsub|i*j><around|(|y|)>*<space|0.17em>r<rsub|l><rsup|3+p>*<around|\<langle\>|\<cal-J\><rsub|i*j>*<around|(|r<rsub|l>*y|)>*\<cdots\>|\<rangle\>>*<space|0.17em>d*y>,
  where <math|M<rsub|i*j>=\<partial\><rsub|i>*\<chi\>\<cdot\>U<rsub|j>> is
  integrable and supported in <math|<tfrac|1|2>\<leqslant\><around|\||y|\|>\<leqslant\>1>.
  The annulus bound <hlink|<verbatim|zone>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Ozone.lean#L21-L45>
  says that, for annihilating combinations,
  <math|sup<rsub|<around|\||y|\|>\<in\><around|(|r<rsub|l>/4,2*r<rsub|l>|)>><mid|\|><big|sum><rsub|a>g<rsub|a>*<space|0.17em>r<rsub|l><rsup|3+p>*<around|\<langle\>|\<cal-J\><around|(|y|)>*\<cdots\>|\<rangle\>><rsub|a><mid|\|>\<to\>0>.
  So the combination is a constant sequence tending to <math|0>. <em|Lean:>
  <hlink|<verbatim|tenet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Blanca.lean#L49-L120>,
  <hlink|<verbatim|zone>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Ozone.lean#L21-L45>.
  <em|(proof read; annulus comparison inputs statement only)>

  <strong|Lemma 4.24 (III.11.7).> <em|Sketch:>

  <\itemize-minus>
    <item>for each finite set of tester configurations, Lemma 4.23 and
    finite-dimensional duality (<hlink|<verbatim|obtainable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Bravo.lean#L31-L52>)
    give <math|B> matching all their fluxes;

    <item>fix a finite separating family of testers (A04), choose <math|B>
    matching it, and compare with the field matching its union with any
    additional tester; separation forces the two fields to agree;

    <item>translation covariance of flux and correlations moves any grid
    configuration to <math|x<rsub|0>=0>;

    <item>continuity of the flux and of the limit kernels, plus density of
    grid configurations, extends the identity to all distinct points.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|annular_fieldA>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Bravo.lean#L55-L89>,
  <hlink|<verbatim|obtainable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Bravo.lean#L31-L52>.

  <strong|Lemma 4.25 (stress laws).> Under the hypotheses of III.11.7, there
  are linear translation maps <math|F<rsub|d><around|(|S|)>\<to\>F<rsub|d+1><around|(|S|)>>
  and rotation maps <math|F<rsub|d><around|(|S|)>\<to\>F<rsub|d><around|(|S|)>>
  satisfying the respective flux identities. The rotation maps also depend
  real-linearly on the skew matrix. <em|Sketch:> apply Lemma 4.24 with
  constant fields <math|U=e<rsub|i>> (<math|p=0>, <math|D=d+1>) and with the
  rotation fields <math|U<around|(|y|)>=k*y>, <math|k> skew (<math|p=1>,
  <math|D=d>). Linearity follows from linearity of the flux and separation of
  fields by correlations. <em|Lean:> <hlink|<verbatim|shells_law>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Orange.lean#L33-L63>.

  <strong|Lemma 4.26 (III.11.6).> Under the respective hypotheses of
  III.11.6(a) and (b), the stated stress and ultraviolet records exist.
  <em|Sketch of (a):>

  <\enumerate>
    <item>D06 gives the orientation law.

    <item>The station equivalences identify the field spaces of <math|S> with
    those of the free model; this uses the hypothesis
    <hlink|<verbatim|DimAbove>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L108>.

    <item><hlink|<verbatim|produce_current>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L129-L167>
    (VI.2) gives <math|<around|(|\<cal-J\>,X|)>> with
    <math|\<cal-J\>\<ne\>0>, the approach, stability, the meter and zero
    current divergence.

    <item><hlink|<verbatim|linear_cons>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Tensor.lean#L121-L125>
    converts zero current divergence to conservation. The weak comparison
    along the scaling sequence supplies the action law.

    <item>Lemma 4.25 gives the stress laws.
  </enumerate>

  <em|Sketch of (b):> take free Maxwell data for simple <math|G> and replace
  them by the canonical data (<hlink|<verbatim|FreeStress.fire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L137-L150>).
  Build the station hypothesis from the seed and weak completeness, and the
  hypothesis <hlink|<verbatim|DimAbove>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L108>
  from the corrected rank widths. Then apply (a). <em|Lean:>
  <hlink|<verbatim|readyA>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L15-L30>,
  <hlink|<verbatim|emanate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L31-L37>.
  <em|(proof read; helper estimates statement only)>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  <\itemize-minus>
    <item><strong|The volume-uniform root test.> A per-site loss of <math|log
    \<beta\>> in the chessboard root would destroy the comparison, because
    the budget must tend to <math|0> while <math|\<beta\>\<to\>\<infty\>>.
    The tree-gauge count of III.11.1 avoids this: it costs only
    <math|\<beta\><rsup|2*dim G>> in total, not per site. The price for this
    is a crude, but uniform, per-site constant. This estimate uses Haar
    integration rather than a Hessian determinant.

    <item><strong|The direction of the rank argument.> The upper bound
    (equation count) is algebraic and holds at every cutoff. The lower bound
    needs the short-distance comparison, at infinitely many scales only,
    through trial sequences. The equivariant isomorphism comes from
    conjugating projectors, not from an explicit basis. The conclusion
    identifies complex representations with compatible conjugations under
    signed permutations.

    <item><strong|Frequent rather than eventual scales.> Every price
    condition is required only at infinitely many levels; a diagonal
    extraction then selects the trials. This is weaker than an "eventually in
    <math|k>" statement, and it is all the rank argument needs.

    <item><strong|Uniformity.> The constants must be chosen before the block
    lengths and must control every period. Eventual estimates cannot replace
    bounds on a specified comparison window without the corresponding delay.

    <item><strong|Connections.> The stress-flux argument supplies the local
    charge fields of VI.1. The equation-ideal calculation uses the free label
    algebra of II.1.
  </itemize-minus>

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Written
  proof>>|<cell|<strong|Lean (glossary)>>|<cell|<strong|Meaning>>>|<row|<cell|schedule
  factor <math|\<mu\><rsub|k>>>|<cell|<hlink|<verbatim|monitor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L81>>|<cell|<math|exp
  <around|(|<around|(|log log <wide|\<beta\>|^><rsub|k>|)><rsup|2>|)>>>>|<row|<cell|coefficient
  exponent <math|w<rsub|d>>>|<cell|<hlink|<verbatim|winter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Tender.lean#L11>>|<cell|degree
  of the input coefficient family plus <math|4>>>|<row|<cell|Haar budget
  <math|<around|(|s,b|)>>>|<cell|<hlink|<verbatim|HaarBudget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L26-L33>
  (<verbatim|small>, <verbatim|big>)>|<cell|lower constant for shells, upper
  constant for <math|<big|int>e<rsup|-<math-up|chord>/t>>>>|<row|<cell|<math|\<sigma\><rsub|R>>,
  <math|<math-up|ent>>>|<cell|<hlink|<verbatim|strength>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L116>,
  <hlink|<verbatim|ent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L220>>|<cell|<math|min
  <around|(|1,<text|linear clip>|)>>; <math|log b-dim G*log
  \<sigma\>>>>|<row|<cell|per-site price <math|\<pi\>>, work
  item>|<cell|<hlink|<verbatim|protection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L225-L227>,
  <hlink|<verbatim|work item>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L41-L44>>|<cell|III.11.1>>|<row|<cell|admissible
  at level <math|m>>|<cell|<hlink|<verbatim|Meets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L28-L36>>|<cell|conditions
  on <math|<around|(|P,g,\<Lambda\>,\<delta\>|)>> in
  III.11.1(b)>>|<row|<cell|chessboard root
  <math|\<rho\><rsub|T>>>|<cell|<verbatim|Cells.Tiling.rootTest>>|<cell|<math|<around|\<lvert\>|E*<big|prod><rsub|<math-up|cells>><text|copy>|\<rvert\>><rsup|1/<text|card
  cells>>>>>|<row|<cell|free curvature kernel>|<cell|<verbatim|light>>|<cell|derivative
  of the free Maxwell curvature two-point kernel between colored
  stencils>>|<row|<cell|scale-<math|r> pair term>|<cell|<verbatim|collect>,
  <verbatim|arc>, <verbatim|arbor>, <verbatim|Beamer.amount>>|<cell|<math|<big|sum>\<Gamma\><rsub|a*b>*<space|0.17em>r<rsup|-<math-up|gen>>*t<rsub|a>\<otimes\>r<rsup|-<math-up|gen>>*t<rsub|b>>;
  <math|r<rsup|2+<math-up|ord>>>>>|<row|<cell|Fourier chart
  rate>|<cell|<hlink|<verbatim|circleRate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Fourier.lean#L26>>|<cell|<math|2*\<pi\>>;
  heat parameter <math|<around|(|2*\<pi\>|)><rsup|2>>>>|<row|<cell|window
  estimate>|<cell|<hlink|<verbatim|Window>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Radian/Signed.lean#L47-L53>,
  <hlink|<verbatim|Cast>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Radian/Means.lean#L16-L19>>|<cell|symbol
  bounds of III.11.3>>|<row|<cell|stage package,
  metering>|<cell|<hlink|<verbatim|Cohesion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Concord.lean#L38-L51>,
  <hlink|<verbatim|Metering>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Concord.lean#L62-L64>>|<cell|per-degree
  stage data; charge and launch at <math|k>>>|<row|<cell|price
  conditions>|<cell|<hlink|<verbatim|Tender>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Consumer.lean#L71>,
  <verbatim|Metering>, <hlink|<verbatim|ShowHours>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Pleas.lean#L21-L26>,
  <hlink|<verbatim|Vents>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Postsale.lean#L19-L21>,
  <hlink|<verbatim|LanternMarks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Proceed.lean#L74-L77>>|<cell|hypotheses
  of III.11.4 at a level <math|k>>>|<row|<cell|provisions, aggregate,
  turning, offers>|<cell|<hlink|<verbatim|s_provisions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Diana.lean#L37>,
  <hlink|<verbatim|s_empire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Diana.lean#L44-L51>,
  <hlink|<verbatim|Turning_>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L76-L79>,
  <hlink|<verbatim|Offers_>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L110>>|<cell|successive
  frequent-scale conditions of Lemma 4.15>>|<row|<cell|trial system, purchase
  conditions>|<cell|<verbatim|Columns.Trials>,
  <hlink|<verbatim|Purchases>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bought.lean#L68-L84>,
  <hlink|<verbatim|Travels_>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L134-L147>>|<cell|III.11.4>>|<row|<cell|compatible
  quadratic atlas>|<cell|<hlink|<verbatim|Binding>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Consumer.lean#L30-L38>>|<cell|shape,
  coercivity, size and path compatibility on the same Wilson
  family>>|<row|<cell|launch conditions>|<cell|<hlink|<verbatim|Launch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratchet.lean#L35-L41>>|<cell|local
  comparison and propagation conditions at a specified
  level>>|<row|<cell|projector presentation
  <math|\<Pi\>>>|<cell|<hlink|<verbatim|Scotia>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Eureka.lean#L16-L20>>|<cell|projectors
  whose kernels are corrected images of <math|\<cal-E\><rsub|d>>>>|<row|<cell|one-step
  cost package>|<cell|<hlink|<verbatim|Scrim>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Biscuit.lean#L29-L34>>|<cell|step
  costs along gauge doors>>|<row|<cell|Maxwell equation ideal
  <math|\<cal-E\><rsub|d>>, <math|F<rsub|d><rsup|<math-up|free>>>>|<cell|<verbatim|Maxwell.equationIdeal>,
  <verbatim|Maxwell.freeTable>>|<cell|labels vanishing on the free field;
  free field spaces>>|<row|<cell|Maxwell ranks>|<cell|<hlink|<verbatim|Maxwell.Ranks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L135-L139>>|<cell|equivariant
  isomorphisms <math|F<rsub|d><around|(|T|)>\<cong\>F<rsub|d><rsup|<math-up|free>>>>>|<row|<cell|numerical
  upper dimension bound>|<cell|<hlink|<verbatim|DimAbove>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L108>>|<cell|<math|dim
  F<rsub|d><around|(|S|)>\<leqslant\>dim F<rsub|d><rsup|<math-up|free>>>>>|<row|<cell|equation
  count>|<cell|<hlink|<verbatim|EquationCount>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Monitors.lean#L92-L94>>|<cell|Lemma
  4.18>>|<row|<cell|seed record>|<cell|<hlink|<verbatim|Spec.Seed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26>>|<cell|cutoff,
  limits, axioms, cell hypothesis, corrected rank widths>>|<row|<cell|shell
  budget>|<cell|<hlink|<verbatim|Aroma>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Ozone.lean#L16-L19>,
  <hlink|<verbatim|Economics>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Economist.lean#L20-L21>>|<cell|shell
  estimates, open tabs, radii <math|r<rsub|l>\<to\>0>>>|<row|<cell|flux,
  window>|<cell|<verbatim|flux J \<chi\> U x q v>, <verbatim|Window>
  (VI.1)>|<cell|flux of the stress against a vector
  field>>|<row|<cell|arbitrarily fine comparison
  systems>|<cell|<hlink|<verbatim|Stations>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L112-L114>>|<cell|for
  every order, size and positive tolerances, an admissible station at an
  arbitrarily small scale>>|<row|<cell|cofinal grid
  approximation>|<cell|<hlink|<verbatim|Grill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L121-L123>>|<cell|approximation
  systems at cofinally many grid levels>>|<row|<cell|weak
  completeness>|<cell|<hlink|<verbatim|CompleteWeak>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L35>>|<cell|comparison
  systems for every fixed arity, degree and positive size
  bound>>|<row|<cell|free lighthouse>|<cell|<verbatim|Lighthouse>,
  <verbatim|MaxwellData>>|<cell|free Maxwell comparison model>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Analytic inputs to the annulus estimate.> The reduction in
    <hlink|<verbatim|zone>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Ozone.lean#L21-L45>
    and the flux argument are checked. The discrete stencil bound,
    interpolation estimate and shell estimates invoked there have not been
    independently checked through their analytic dependencies.

    <item><strong|Detailed one-step interfaces.> The principal-data
    construction and the proof assembling the aggregate comparison were
    checked at their application points. The underlying nonlinear integration
    and remainder estimates were not checked in full. The relation between
    the older conditional interfaces in <hlink|<verbatim|LedgerGate.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/LedgerGate.lean>
    and every restarted replacement remains to be documented; their shared
    names do not identify their hypotheses.

    <item><strong|Record definitions.> The stage, launch, hours, vents,
    relay, station and shell hypotheses in the numbered statements refer to
    the linked records. Their complete translation into ordinary mathematical
    estimates remains to be written. Lemmas 4.11, 4.13(iv)\U(vi), 4.14 and
    4.17 retain these structural hypotheses; the displayed inequalities alone
    are not their full assumptions.

    <item><strong|Auxiliary results and upstream estimates.> The additional
    estimates listed after III.11.7 were checked at statement level,
    including their parameter order. The sweep triangularity in Lemma 4.2 was
    checked at statement level. The proofs of the lower-level producers of
    the centred estimate and one-step package, and of the schedule-existence
    theorem in III.10, were not checked in full. The source links identify
    these dependencies; the present outline does not independently establish
    them.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> III.10 One full nonlinear renormalization
  step: bounds on irrelevant terms (notes)|III-10.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-11.tm>|<hlink|III.12 Bounds uniform in the volume and
  convergence as the spacing tends to zero (notes) \<rightarrow\>|III-12.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.11. Comparison with the free Gaussian measure:
    interacting rank and determinant budgets \V detailed notes \U Yang\UMills
    informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|1>>
    <associate|2-what-it-uses|<tuple|2|6>>
    <associate|3-strategy|<tuple|3|8>>
    <associate|4-steps|<tuple|4|9>>
    <associate|41-haar-estimates-and-the-determinant-budget|<tuple|4.1|9>>
    <associate|42-free-covariances|<tuple|4.2|11>>
    <associate|43-polynomial-calculus-and-identities|<tuple|4.3|12>>
    <associate|44-from-frequent-good-scales-to-trial-systems-iii114|<tuple|4.4|13>>
    <associate|45-the-rank-comparison-iii115|<tuple|4.5|14>>
    <associate|46-the-stress-tensor-iii116-iii117|<tuple|4.6|16>>
    <associate|5-where-the-difficulty-lies|<tuple|5|17>>
    <associate|6-notation|<tuple|6|18>>
    <associate|7-what-remains-unexplained|<tuple|7|19>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|4.6|16>>
    <associate|auto-11|<tuple|5|17>>
    <associate|auto-12|<tuple|6|18>>
    <associate|auto-13|<tuple|7|19>>
    <associate|auto-2|<tuple|2|6>>
    <associate|auto-3|<tuple|3|8>>
    <associate|auto-4|<tuple|4|9>>
    <associate|auto-5|<tuple|4.1|9>>
    <associate|auto-6|<tuple|4.2|11>>
    <associate|auto-7|<tuple|4.3|12>>
    <associate|auto-8|<tuple|4.4|13>>
    <associate|auto-9|<tuple|4.5|14>>
    <associate|iii11-comparison-with-the-free-gaussian-measure-interacting-rank-and-determinant-budgets--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 Haar estimates and the determinant
      budget <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 Free covariances
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 Polynomial calculus and identities
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 From frequent good scales to trial
      systems (III.11.4) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 The rank comparison (III.11.5)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.6 The stress tensor (III.11.6, III.11.7)
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
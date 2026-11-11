<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.10 One full nonlinear renormalization
  step: bounds on irrelevant terms|III-10.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-11.tm>|<hlink|III.12 Bounds uniform in the volume and
  convergence as the spacing tends to zero \<rightarrow\>|III-12.tm>>

  <ym-title|III.11. Interacting rank, Gaussian comparison and the stress
  tensor><label|iii11-interacting-rank-gaussian-comparison-and-the-stress-tensor>

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

  <em|Part III \V Ultraviolet construction (renormalization group).>

  Compares field-space ranks with the free theory and constructs
  stress-tensor data using Gaussian estimates.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/III-11.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: III.10|III-10.tm> <ym-middot> <hlink|Next:
  III.12 \<rightarrow\>|III-12.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <\ym-details|Source inventory and conventions>
    <strong|Part:> III, Ultraviolet construction (renormalization group).
    <strong|Lean:> unit III.11: <hlink|<verbatim|YM/Next/RANK/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK>,
    <hlink|<verbatim|YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON>,
    <hlink|<verbatim|YM/PhysicalNext/RANK_COVARIANCE_ATLAS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS>,
    <hlink|<verbatim|YM/MergeProof/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof>
    (with <verbatim|West/>, <verbatim|North/>, <verbatim|East/>,
    <verbatim|South/>). <strong|Size:> 42,556 lines (about 5,300
    declarations).
  </ym-details>

  <label|unit-results>

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
  <math|0\<less\>s\<leqslant\>1\<leqslant\>b> be a Haar budget (Step 1). Let
  <math|g\<gtr\>0> with <math|g\<leqslant\><math-up|threshold><around|(|R|)>>
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

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item><strong|I.1, II.2:> the torus, Wilson measure, product Haar prior,
    lawful RG representations, construction record, cells and chessboard
    roots; <hlink|<verbatim|prior>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L55>,
    <hlink|<verbatim|Rep.Lawful>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L181-L183>.

    <item><strong|II.1:> label spaces, their real structures, the Maxwell
    equation ideal and the free Wick realization;
    <hlink|<verbatim|equationIdeal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72>.

    <item><strong|III.2:> stages, thresholds, clip coefficients, loop caps,
    delays and waiting windows; <hlink|<verbatim|ruese>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Expound.lean#L68-L77>.

    <item><strong|III.3\UIII.4:> free covariances, regulator symbol bounds,
    Gaussian integration and window-to-kernel transfer;
    <hlink|<verbatim|intended>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Radian/Signed.lean#L56-L92>.

    <item><strong|III.9\UIII.10:> coupling growth, exact RG histories and
    vacuum identities, one-step bounds and the waiting-window engine;
    <hlink|<verbatim|Wait.engine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L26-L135>.

    <item><strong|IV.1:> extraction, refinements, raw limits, spans and
    cleaning to smooth tables; <hlink|<verbatim|Base>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L42-L51>.

    <item><strong|VI.1\UVI.2:> windows and flux, finite faithfulness of
    testers, free Maxwell data and stress, and production of the current;
    <hlink|<verbatim|maxwell_supplies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L45-L48>,
    <hlink|<verbatim|produce_current>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L129-L167>.

    <item><strong|III.13:> the common Wilson family closes the conditional
    chain; <hlink|<verbatim|uv_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130>
    has only the hypotheses that <math|G> is simple and <math|b\<gtr\>0>.
  </itemize-minus>

  <strong|Standard results:> the chessboard estimate and reflection
  positivity of the Wilson action; axial tree gauge and Haar invariance;
  small-ball Haar volume estimates; Wick expansion; Schur complements;
  frequency-symbol estimates; finite-dimensional duality; and Ward identities
  for conserved symmetric stress tensors and Killing fields.

  <strong|Constants and assumptions:> the Haar budget is fixed independently
  of stages and volumes by <hlink|<verbatim|integral_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Haar.lean#L170-L211>.
  The projector, one-step, centred, frequent-scale, binding, shell,
  grid-approximation and weak-completeness hypotheses remain explicit in Ÿ1;
  their main-chain producers are identified there. The older one-step
  interfaces in <hlink|<verbatim|LedgerGate.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/LedgerGate.lean>
  are conditional definitions, not consequences of lawful representations.

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  The Maxwell equations give the upper bound on the interacting field-space
  dimensions. Corrected observables tested at short distances give the
  reverse bound: their one- and two-point correlations approach a finite
  separating family of free correlations, so their classes are eventually
  independent. The two bounds identify the limit null space with a limit
  projector kernel. Conjugating a cutoff projector to the limit projector
  then gives the isomorphism compatible with conjugation and signed
  permutations.

  The quantitative comparison uses the exact RG history to carry reflected
  products to a coarse torus, then bounds a ratio of Haar integrals.
  Plaquette elimination gives <math|3*c-3> numerator factors, while tree
  gauge leaves <math|3*c+1> vacuum factors; the remaining coupling cost is
  only <math|g<rsup|-4*dim G>=\<beta\><rsup|2*dim G>> in total. Its
  chessboard root is affordable, allowing connected errors to tend to zero
  along infinitely many good scales. For the stress tensor, comparison with
  free Maxwell fixes its normalization along a scaling sequence;
  conservation, shell estimates and finite-dimensional duality represent each
  Killing-field flux by a local field.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item><strong|Haar budget.> There are
    <math|0\<less\>s\<leqslant\>1\<leqslant\>b> with
    <math|h<around|(|<math-up|shell><around|(|r/4|)>|)>\<geqslant\>s*r<rsup|dim
    G>> for <math|0\<less\>r\<leqslant\>1> and
    <math|<big|int>e<rsup|-<math-up|chord><around|(|u|)>/t>*<space|0.17em>d*h<around|(|u|)>\<leqslant\>b*t<rsup|dim
    G>> for <math|t\<gtr\>0>. Exponential coordinates give the local volume
    estimates; compactness and a shell sum give the integral estimate.
    <hlink|<verbatim|integral_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Haar.lean#L170-L211>

    <item><strong|Plaquette elimination.> For <math|n\<geqslant\>2> and
    continuous <math|\<varphi\>:G\<to\><around|[|0,1|]>>,
    <math|<big|int><big|prod><rsub|p>\<varphi\><around|(|U<rsub|p>|)>*<space|0.17em>d*\<mu\><rsub|<math-up|prior>>\<leqslant\><around|(|<big|int>\<varphi\>*<space|0.17em>d*h|)><rsup|3*c-3>>.
    A triangular sweep assigns <math|3*c-3> plaquettes to distinct bonds,
    whose successive Haar integrations factor; the unselected factors are at
    most <math|1>. <hlink|<verbatim|elimination>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Axial.lean#L368-L383>,
    <hlink|<verbatim|charged_integral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Axial.lean#L347-L365>
    <em|(proof read; sweep count and triangularity statement only)>

    <item><strong|Vacuum and numerator.> Under III.11.1(a), tree gauge and
    restriction of the <math|3*c+1> free bonds to
    <math|<math-up|shell><around|(|g/4|)>> give the vacuum lower bound, while
    the clipped action retains exponential chord decay for the numerator.
    Applying Steps 1\U2 and dividing gives <math|exp
    <around|(|c*\<pi\>|)>*g<rsup|-4*dim G>>; the four-factor difference
    between the counts accounts for the remaining power of <math|g>.
    <hlink|<verbatim|vacuum_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L76-L111>,
    <hlink|<verbatim|exponent_retains>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L153-L181>,
    <hlink|<verbatim|determinant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L240-L274>

    <item><strong|Per-site price and chessboard root.> Under III.11.1(b), the
    stage bounds give <math|\<pi\>\<leqslant\><text|work item>-1> and
    <math|-4*dim G*log g/c<rsub|m,p>\<leqslant\>1> eventually, uniformly in
    admissible parameters and periods. In the trial comparison, the exact
    vacuum identity and local activity decomposition transfer the determinant
    estimate to the chessboard root; deleting additive activities costs the
    <math|2*\<delta\>> already included in the price. Allocation and
    affordability, with allowance <math|e<rsup|2*I>> and
    <math|I\<geqslant\><text|work item>>, then give root error
    <math|e<rsup|-I>> for every nonempty connected part.
    <hlink|<verbatim|affordable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L119-L123>,
    <hlink|<verbatim|s_postage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Denarii.lean#L49-L85>,
    <hlink|<verbatim|coupon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Denarii.lean#L90-L123>
    <em|(proof read; flow identity and cell-stamp bookkeeping statement
    only)>

    <item><strong|Free pair and window estimates.> In III.11.2, stencil
    evaluation kills keys below the stencil degree, the equal-degree terms
    give the free curvature kernel, and every remaining term gains
    <math|r<rsup|-1>>, giving the bound <math|C*D/r> on the scaled remainder.
    For III.11.3, the regulator chart is a symbol of order zero and differs
    from the heat symbol by a symbol of order one; the change of variables
    <math|\<zeta\>=2*\<pi\>*\<xi\>> and the finite number of plaquette pairs
    give a uniform constant. <hlink|<verbatim|Prayer.fence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StrideCost.lean#L70-L98>,
    <hlink|<verbatim|window_prices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Window.lean#L118-L136>

    <item><strong|Covariance splitting.> For an atlas compatible with the
    schedule and retained unmasked quadratic forms, satisfying symmetry,
    coercivity, inverse and crossing laws, and a step <math|i\<less\>N> with
    a tree forest and the required torus size, the complete curvature
    covariances satisfy

    <\equation*>
      \<cal-C\><rsub|i+1>-W<rsub|i>*\<cal-C\><rsub|i>*W<rsub|i><rsup|<math-ss|T>>=d<rsub|f>*\<Gamma\><rsub|i>*d<rsub|f><rsup|<math-ss|T>>,<space|2em>\<Gamma\><rsub|i>\<succeq\>0.
    </equation*>

    This is the Schur-complement identity on the curl image; uniform
    resolvent estimates give the propagation constant for fixed kernel
    choices and stage indices <math|j,t\<geqslant\>4> in the range
    <math|d-1\<leqslant\>j-2> (natural-number subtraction).
    <hlink|<verbatim|one_fold>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Identity.lean#L198-L213>,
    <hlink|<verbatim|train_issue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Step.lean#L106-L116>

    <item><strong|Local polynomial comparison.> For regular local observables
    with the prescribed derivative bounds, Taylor expansion in link
    coordinates gives bounded polynomial coefficients and a remainder of the
    required order. For zero-mean formal Gaussian data with symmetric
    covariance vanishing within each location, Wick expansion runs over
    cross-location pairings without requiring positive covariance; under the
    comparison's common-mask, support, coefficient, mean and covariance
    hypotheses, these moments give the corrected connected-component bounds.
    The allocation, integrability, locality and compatibility hypotheses give
    exact sector decomposition and factorization over disjoint supports.
    <hlink|<verbatim|minted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/LineBox.lean#L168-L205>,
    <hlink|<verbatim|headed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTrack.lean#L131-L173>,
    <hlink|<verbatim|console>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Festoon.lean#L57-L126>,
    <hlink|<verbatim|rendered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Rendered.lean#L36-L86>,
    <hlink|<verbatim|peer_beams>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Sight.lean#L132-L158>
    <em|(proof read; local comparison and allocation inputs statement only)>

    <item><strong|Corrected trials.> Under III.11.4, one correction map and
    polynomial approximations serve all test rows; the free-profile
    correction cancels the leading terms, and the one-step estimates
    propagate the remaining source bounds from the middle level to the width
    level. Steps 3\U4 give the purchase bounds, and an inductive choice among
    the good levels gives increasing depths and widths, decreasing test
    scales, and bounded real coefficient vectors with the reference unit
    first. <hlink|<verbatim|v_paid_factory>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Diana.lean#L57-L104>,
    <hlink|<verbatim|v_culminates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L84-L95>,
    <hlink|<verbatim|v_conditioned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L29-L53>,
    <hlink|<verbatim|v_obtain_purchases>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L177-L222>
    <em|(proof read; analytic inputs and helper estimates statement only)>

    <item><strong|Supply of good levels.> For simple <math|G>, the
    construction record and one-step package with the prescribed weights and
    multiplicities at least <math|1>, a fixed degree-<math|d> column family
    and stage package with mark exponent <math|c\<geqslant\>2*<around|(|w<rsub|d>+1|)>>
    satisfy the lantern-mark condition at every sufficiently large metered
    level. Compatible pre-<math|L> prices and one-step bounds, stage
    thresholds below block lengths, eventual presence of each degree index,
    nonnegative mark exponents and a Haar budget give panels and an enlarged
    waiting window on which every Wilson family paid on that window and every
    binding with those prices have infinitely many simultaneous good levels
    for each <math|d>. <hlink|<verbatim|bursts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SteamW.lean#L54-L59>,
    <hlink|<verbatim|franchise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Snow.lean#L55-L60>
    <em|(proof structure read; analytic inputs and helpers statement only)>

    <item><strong|Equations and independent columns.> Under III.11.5(i), free
    probes separate the on-shell sector and give <math|dim
    \<cal-L\><rsub|d>\<leqslant\>dim ker \<Pi\><rsub|d,N,p>+dim
    F<rsub|d><rsup|<math-up|free>>> at each cutoff. For a Wilson family
    satisfying the construction record, with generic point limits and
    continuous kernels integrable against every separated test function,
    purchases and iterated coefficient limits give moment errors
    <math|P<rsub|k>*\<gamma\><rsub|k>\<to\>0>, so the limiting corrected
    columns are independent modulo the integrated-test null space for all
    sufficiently large trials. Relay estimates put the limit projector kernel
    inside the null space; with the centred port, raw limits, convergent
    relay projectors, equation counts and trials in every degree, extraction
    and the dimension comparison give a smooth table <math|T>, its seed, and
    <math|<math-up|null><rsub|d><around|(|T|)>=ker \<Pi\><rsub|\<infty\>>>.
    <hlink|<verbatim|savings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L19-L47>,
    <hlink|<verbatim|measured>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Monitors.lean#L71-L87>,
    <hlink|<verbatim|arriving_seed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Beam.lean#L153-L180>
    <em|(proof read; free positivity, chessboard and analytic inputs
    statement only)>

    <item><strong|Equivariant identification.> Under the projector
    presentation and its extraction record, if
    <math|A<rsub|i>\<to\>\<Pi\><rsub|\<infty\>>>, then
    <math|Y<rsub|i>=\<Pi\><rsub|\<infty\>>*A<rsub|i>+<around|(|1-\<Pi\><rsub|\<infty\>>|)>*<around|(|1-A<rsub|i>|)>\<to\>1>
    and <math|Y<rsub|i>*A<rsub|i>=\<Pi\><rsub|\<infty\>>*Y<rsub|i>>. For
    large <math|i>, <math|Y<rsub|i>> is invertible, real and equivariant;
    composing it with the corrected label map carries
    <math|\<cal-E\><rsub|d>> onto <math|<math-up|null><rsub|d><around|(|T|)>>
    and induces III.11.5's quotient isomorphism.
    <hlink|<verbatim|drumroll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Thrush.lean#L13-L68>,
    <hlink|<verbatim|thrush>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Thrush.lean#L72-L114>,
    <hlink|<verbatim|Accent.rated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L48-L71>

    <item><strong|Flux becomes a local field.> Under III.11.7, conservation
    permits windows on shrinking annuli; the shell estimate shows that every
    finite combination of grid testers annihilating <math|F<rsub|D>> also
    annihilates the flux. Finite-dimensional duality supplies a matching
    field for each finite tester family, finite faithfulness gives a single
    field for all testers, and translation covariance, continuity and grid
    density extend the identity to all distinct configurations. Constant and
    rotational Killing fields give the translation and rotation maps.
    <hlink|<verbatim|tenet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Blanca.lean#L49-L120>,
    <hlink|<verbatim|annular_fieldA>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Bravo.lean#L55-L89>,
    <hlink|<verbatim|shells_law>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Orange.lean#L33-L63>
    <em|(proof read; annulus comparison inputs statement only)>

    <item><strong|Stress and ultraviolet records.> Under III.11.6(a), the
    orientation law and station equivalences allow the free comparison to
    produce a nonzero current and scaling sequence; zero current divergence
    gives conservation, the weak scaling comparison gives the action law, and
    Step 12 gives the stress laws. Under III.11.6(b), canonical free Maxwell
    data, the seed's corrected rank widths and weak completeness supply the
    comparison model, dimension bound and station hypothesis needed for (a).
    <hlink|<verbatim|Acme.readyA>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L15-L30>,
    <hlink|<verbatim|Acme.emanate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L31-L37>
    <em|(proof read; helper estimates statement only)>
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The determinant comparison must avoid a per-site loss of <math|log
  \<beta\>>: that would overwhelm the vanishing chessboard error. Tree-gauge
  counting leaves only the volume-independent factor
  <math|\<beta\><rsup|2*dim G>>; this is a Haar integral estimate rather than
  a Hessian determinant calculation. The lower rank bound requires
  short-distance comparison at infinitely many scales, whereas the upper
  bound is algebraic at every cutoff. The isomorphism comes from conjugating
  projectors, and its symmetry statement concerns complex representations
  with compatible conjugations under signed permutations. Constants must be
  chosen before block lengths and uniformly in the period; eventual estimates
  require the specified delays before use on comparison windows.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <\itemize-minus>
    <item><strong|Symbol:> <math|\<mu\><rsub|k>>, <math|w<rsub|d>>

    <strong|Meaning and Lean link:> Fixed schedule factor <math|exp
    <around|(|<around|(|log log <wide|\<beta\>|^><rsub|k>|)><rsup|2>|)>>;
    coefficient exponent. <hlink|<verbatim|monitor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L81>,
    <hlink|<verbatim|winter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Tender.lean#L11>

    <item><strong|Symbol:> <math|<around|(|s,b|)>>, <math|\<sigma\><rsub|R>>,
    <math|\<pi\>>, work item

    <strong|Meaning and Lean link:> Haar budget, clip strength, per-site
    determinant price and stage allowance of III.11.1.
    <hlink|<verbatim|HaarBudget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L26-L33>,
    <hlink|<verbatim|strength>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L116>,
    <hlink|<verbatim|protection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L225-L227>,
    <hlink|<verbatim|work item>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L41-L44>

    <item><strong|Symbol:> <math|\<cal-L\><rsub|d>>,
    <math|\<cal-V\><rsub|d>>, <math|\<cal-E\><rsub|d>>

    <strong|Meaning and Lean link:> Abstract labels, coordinate labels and
    Maxwell equation ideal; <math|F<rsub|d><rsup|<math-up|free>>=\<cal-L\><rsub|d>/\<cal-E\><rsub|d>>.
    <hlink|<verbatim|equationIdeal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72>

    <item><strong|Symbol:> <math|F<rsub|d><around|(|T|)>>,
    <math|<math-up|null><rsub|d><around|(|T|)>>

    <strong|Meaning and Lean link:> Local fields of degree <math|d> and
    labels with vanishing correlations. <hlink|<verbatim|Maxwell.Ranks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L135-L139>

    <item><strong|Symbol:> <math|\<Pi\><rsub|d,N,p>>,
    <math|\<Pi\><rsub|\<infty\>>>

    <strong|Meaning and Lean link:> Cutoff and limit projectors; their
    kernels identify the equations after correction.
    <hlink|<verbatim|Scotia>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Eureka.lean#L16-L20>

    <item><strong|Symbol:> Stage package and price conditions

    <strong|Meaning and Lean link:> Stage data; tender, metering, hours,
    vents and lantern marks in III.11.4. <hlink|<verbatim|Cohesion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Concord.lean#L38-L51>,
    <hlink|<verbatim|Tender>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Consumer.lean#L71>,
    <hlink|<verbatim|Metering>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Concord.lean#L62-L64>,
    <hlink|<verbatim|ShowHours>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Pleas.lean#L21-L26>,
    <hlink|<verbatim|Vents>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Postsale.lean#L19-L21>,
    <hlink|<verbatim|LanternMarks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Proceed.lean#L74-L77>

    <item><strong|Symbol:> <math|\<cal-C\><rsub|i>>, <math|W<rsub|i>>,
    <math|d<rsub|f>>, <math|\<Gamma\><rsub|i>>

    <strong|Meaning and Lean link:> Complete curvature covariance, passage
    map, fine exterior derivative and uncut tree covariance.
    <hlink|<verbatim|one_fold>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Identity.lean#L198-L213>

    <item><strong|Symbol:> <math|\<cal-J\>>, shell budget

    <strong|Meaning and Lean link:> Stress tensor; annular estimates with
    radii tending to zero. <hlink|<verbatim|Aroma>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Ozone.lean#L16-L19>

    <item><strong|Symbol:> Seed, station, grid approximation, weak
    completeness

    <strong|Meaning and Lean link:> Records used in III.11.5\UIII.11.6.
    <hlink|<verbatim|Spec.Seed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26>,
    <hlink|<verbatim|Stations>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L112-L114>,
    <hlink|<verbatim|Grill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L121-L123>,
    <hlink|<verbatim|CompleteWeak>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L35>
  </itemize-minus>

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\itemize-minus>
    <item>The discrete stencil, interpolation and shell estimates underlying
    the annulus bound have not been independently checked through their
    analytic dependencies; <hlink|<verbatim|zone>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Ozone.lean#L21-L45>.

    <item>The nonlinear integration and remainder estimates beneath the
    one-step comparison were not checked in full. The correspondence between
    the older conditional interfaces in <hlink|<verbatim|LedgerGate.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/LedgerGate.lean>
    and all restarted replacements remains to be documented.

    <item>Complete mathematical estimates for the stage, launch, hours,
    vents, relay, station and shell records remain to be written. Their
    structural hypotheses cannot be replaced by the displayed inequalities
    alone.

    <item>Sweep triangularity and the auxiliary estimates were checked at
    statement level. The lower-level proofs supplying the centred estimate,
    one-step package and schedule existence were not checked in full.
  </itemize-minus>

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/III-11.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|I.1|I-1.tm>, <hlink|III.1|III-1.tm>,
  <hlink|II.2|II-2.tm>, <hlink|II.1|II-1.tm>, <hlink|III.10|III-10.tm>,
  <hlink|III.16|III-16.tm>, <hlink|III.4|III-4.tm>, <hlink|IV.1|IV-1.tm>,
  <hlink|III.5|III-5.tm>, <hlink|V.2|V-2.tm>, <hlink|VIII.1|VIII-1.tm>,
  <hlink|III.2|III-2.tm>, <hlink|III.9|III-9.tm>, <hlink|III.3|III-3.tm>,
  <hlink|VI.2|VI-2.tm>, <hlink|III.15|III-15.tm>, <hlink|VI.1|VI-1.tm>,
  <hlink|III.8|III-8.tm>, <hlink|III.6|III-6.tm>.

  <strong|Referenced by:> <hlink|VII.6|VII-6.tm>, <hlink|III.12|III-12.tm>,
  <hlink|III.4|III-4.tm>, <hlink|VII.4|VII-4.tm>, <hlink|III.2|III-2.tm>,
  <hlink|VIII.1|VIII-1.tm>, <hlink|III.13|III-13.tm>, <hlink|VII.2|VII-2.tm>,
  <hlink|VII.1|VII-1.tm>, <hlink|III.15|III-15.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 42,556 attributed lines; 5,286 line-counted
  declarations; 7,425 assigned declaration names. Of the assigned names,
  7,102 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>work package <hlink|<verbatim|YM/Next/RANK/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK>,
    with <hlink|<verbatim|YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON>,
    <hlink|<verbatim|YM/MergeProof/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof>,
    <hlink|<verbatim|YM/MergeProof/West/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West>,
    <hlink|<verbatim|YM/MergeProof/North/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North>,
    <hlink|<verbatim|YM/MergeProof/East/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East>,
    <hlink|<verbatim|YM/PhysicalNext/RANK_COVARIANCE_ATLAS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS>,
    <hlink|<verbatim|YM/MergeProof/South/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/South>,
    <hlink|<verbatim|YM/PhysicalNext/PHYSICAL_GUARD_7F546/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/PHYSICAL_GUARD_7F546>
    \V 42,556 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|Climb.comparison>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L53-L63>

    <item><hlink|<verbatim|projectionExact>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L102-L118>

    <item><hlink|<verbatim|no_residual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L38-L54>

    <item><hlink|<verbatim|chord>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L115>

    <item><hlink|<verbatim|Scrim>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Biscuit.lean#L29-L34>

    <item><hlink|<verbatim|Economics>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Economist.lean#L20-L21>

    <item><hlink|<verbatim|quaking>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SteamW.lean#L45-L52>

    <item><hlink|<verbatim|obtainable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Bravo.lean#L31-L52>

    <item><hlink|<verbatim|banking>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L42>

    <item><hlink|<verbatim|free_count>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Axial.lean#L115-L119>

    <item><hlink|<verbatim|independent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Axial.lean#L278-L303>

    <item><hlink|<verbatim|pull_link>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Axial.lean#L314-L345>

    <item><hlink|<verbatim|equation_retains>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Beam.lean#L142-L147>

    <item><hlink|<verbatim|Bought.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bought.lean>

    <item><hlink|<verbatim|Purchases.samples>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bought.lean#L112-L123>

    <item><hlink|<verbatim|converge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bought.lean#L125-L133>

    <item><hlink|<verbatim|numerator>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L189-L217>

    <item><hlink|<verbatim|ent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L220>

    <item><hlink|<verbatim|exists_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L35-L36>

    <item><hlink|<verbatim|gauge_eval>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L46-L68>

    <item><hlink|<verbatim|Prayer.penalty>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/EastBell.lean#L44-L67>

    <item><hlink|<verbatim|EquationCount>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Monitors.lean#L92-L94>

    <item><hlink|<verbatim|Launch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratchet.lean#L35-L41>

    <item><hlink|<verbatim|rolls_law>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L46-L79>

    <item><hlink|<verbatim|linear_cons>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Tensor.lean#L121-L125>

    <item><hlink|<verbatim|Org.UV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L177-L186>

    <item><hlink|<verbatim|denture>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Denarii.lean#L27-L43>

    <item><hlink|<verbatim|s_provisions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Diana.lean#L37>

    <item><hlink|<verbatim|s_empire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Diana.lean#L44-L51>

    <item><hlink|<verbatim|backstage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Star.lean#L49-L63>

    <item><hlink|<verbatim|Offers_>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L110>

    <item><hlink|<verbatim|v_pay_all>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L112-L125>

    <item><hlink|<verbatim|Travels_>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L134-L147>

    <item><hlink|<verbatim|ticketed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L149-L173>

    <item><hlink|<verbatim|Turning_>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L76-L79>

    <item><hlink|<verbatim|circleRate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Fourier.lean#L26>

    <item><hlink|<verbatim|heat_window>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Window.lean#L57-L76>

    <item><hlink|<verbatim|FreeStress.fire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L137-L150>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/mgubi/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-iii-11-1>

  <\itemize-minus>
    <item><strong|K-III.11.1> <hlink|<verbatim|SourceAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Value.lean#L38-L46>
    <em|(numbered result)> \V A structure packaging a monomial in a marked
    exponent with a value-only representative for local value-order
    estimates.
  </itemize-minus>

  <label|k-iii-11-2>

  <\itemize-minus>
    <item><strong|K-III.11.2> <hlink|<verbatim|Lifted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Value.lean#L49-L60>
    <em|(numbered result)> \V A structure packaging a labelled occurrence of
    a K-pattern with geometry and flag conditions.
  </itemize-minus>

  <label|k-iii-11-3>

  <\itemize-minus>
    <item><strong|K-III.11.3> <hlink|<verbatim|conquer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Terrain.lean#L66-L123>
    <em|(numbered result)> \V A product of smooth functions equal to 1 at a
    point with derivative bounds up to order D has derivative bounds
    polynomial in length and B.
  </itemize-minus>

  <label|k-iii-11-4>

  <\itemize-minus>
    <item><strong|K-III.11.4> <hlink|<verbatim|integral_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Haar.lean#L170-L211>
    <em|(key result)> \V Haar measure of small balls is bounded below by
    r^dim and the exponential-chord tail integral is bounded above by b
    t^dim, with uniform constants.
  </itemize-minus>

  <label|k-iii-11-5>

  <\itemize-minus>
    <item><strong|K-III.11.5> <hlink|<verbatim|elimination>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Axial.lean#L368-L383>
    <em|(key result)> \V On the torus, the expected product of a [0,1]-valued
    function over all plaquettes is at most the Haar integral to the power
    3\|sites\|-3.
  </itemize-minus>

  <label|k-iii-11-6>

  <\itemize-minus>
    <item><strong|K-III.11.6> <hlink|<verbatim|determinant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Determinant.lean#L240-L274>
    <em|(key result)> \V Under a Haar budget and a weighted exponential bound
    on F, the ratio of the integral of F to the normalization integral is
    bounded by an exponential in volume times a protection term minus a
    power-of-g factor.
  </itemize-minus>

  <label|k-iii-11-7>

  <\itemize-minus>
    <item><strong|K-III.11.7> <hlink|<verbatim|fence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StrideCost.lean#L70-L98>
    <em|(key result)> \V The rescaled difference between the covariance-based
    pair term and the free light-cone kernel is bounded by a constant times
    the bound D on the free covariance, uniformly in r\<geqslant\>1.
  </itemize-minus>

  <label|k-iii-11-8>

  <\itemize-minus>
    <item><strong|K-III.11.8> <hlink|<verbatim|grant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Dock.lean#L179-L185>
    <em|(key result)> \V Combining first-system estimates, the
    polynomial-type output (sum of sent contributions times dust) satisfies a
    Notice bound with prescribed radius, exponent and output.
  </itemize-minus>

  <label|k-iii-11-9>

  <\itemize-minus>
    <item><strong|K-III.11.9> <hlink|<verbatim|headed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTrack.lean#L131-L173>
    <em|(key result)> \V The Gaussian expectation of a product of linear
    forms expands as a sum over pairings (matchings) of products of
    covariances, respecting a location constraint.
  </itemize-minus>

  <label|k-iii-11-10>

  <\itemize-minus>
    <item><strong|K-III.11.10> <hlink|<verbatim|minted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/LineBox.lean#L168-L205>
    <em|(key result)> \V A smooth function with sup bounds has a Taylor
    polynomial in link variables of degree d with controlled coefficient size
    and remainder at most c\<\|\|\>x\<\|\|\>^{d+1}.
  </itemize-minus>

  <label|k-iii-11-11>

  <\itemize-minus>
    <item><strong|K-III.11.11> <hlink|<verbatim|till>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Stories.lean#L99-L112>
    <em|(key result)> \V For regular summable families of observables with
    sup bounds, there is a polynomial in link variables of degree at most d
    approximating the weighted sum, with constant growing like (number of
    links+1)^d.
  </itemize-minus>

  <label|k-iii-11-12>

  <\itemize-minus>
    <item><strong|K-III.11.12> <hlink|<verbatim|pedestals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Chimes.lean#L113-L153>
    <em|(numbered result)> \V Eventually in s, numerical cost bounds on time
    bands hold for all budget points in the stated ranges.
  </itemize-minus>

  <label|k-iii-11-13>

  <\itemize-minus>
    <item><strong|K-III.11.13> <hlink|<verbatim|grafted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Anise.lean#L21-L39>
    <em|(key result)> \V Under the arc hypotheses, there exist served
    functions with dominated profiles and blade bounds, and these are
    transported along the affine symmetry for other vertices.
  </itemize-minus>

  <label|k-iii-11-14>

  <\itemize-minus>
    <item><strong|K-III.11.14> <hlink|<verbatim|affordable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/StationMeter.lean#L119-L123>
    <em|(numbered result)> \V For sufficiently fine widths, a protection
    quantity minus a log-volume correction is bounded by the determinant
    estimate price for simple gauge group.
  </itemize-minus>

  <label|k-iii-11-15>

  <\itemize-minus>
    <item><strong|K-III.11.15> <hlink|<verbatim|resolution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Prayer.lean#L74-L111>
    <em|(key result)> \V Uniform finite measured errors are controlled
    relative to a sampled free current, given a reads structure.
  </itemize-minus>

  <label|k-iii-11-16>

  <\itemize-minus>
    <item><strong|K-III.11.16> <hlink|<verbatim|window_prices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Window.lean#L118-L136>
    <em|(key result)> \V The colored chart of every free covariance satisfies
    a window estimate with constant uniform in the regulator family.
  </itemize-minus>

  <label|k-iii-11-17>

  <\itemize-minus>
    <item><strong|K-III.11.17> <hlink|<verbatim|chamber_now>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Distant.lean#L69-L100>
    <em|(key result)> \V For large k, uniformly in the physical period,
    distinct chosen test points give meridian-arc separation estimates for
    all models.
  </itemize-minus>

  <label|k-iii-11-18>

  <\itemize-minus>
    <item><strong|K-III.11.18> <hlink|<verbatim|s_postage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Denarii.lean#L49-L85>
    <em|(key result)> \V The root test of a mode observable is bounded by an
    exponential in a determinant budget divided by a power of r, under a
    Notice hypothesis.
  </itemize-minus>

  <label|k-iii-11-19>

  <\itemize-minus>
    <item><strong|K-III.11.19> <hlink|<verbatim|Binding>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Consumer.lean#L30-L38>
    <em|(numbered result)> \V Extra history-receipt data tying a
    rank-covariance family to the same path and prices.
  </itemize-minus>

  <label|k-iii-11-20>

  <\itemize-minus>
    <item><strong|K-III.11.20> <hlink|<verbatim|on_hold>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Brite.lean#L31-L122>
    <em|(key result)> \V For points converging to a configuration of distinct
    points, eventually every admissible fit at large scale satisfies the Bell
    property for every vantage.
  </itemize-minus>

  <label|k-iii-11-21>

  <\itemize-minus>
    <item><strong|K-III.11.21> <hlink|<verbatim|on_demand>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Promises.lean#L37-L127>
    <em|(key result)> \V For generic points and large k, the Bell property
    holds for all vantage data produced from Fourier terminal/lifted stencil
    ports.
  </itemize-minus>

  <label|k-iii-11-22>

  <\itemize-minus>
    <item><strong|K-III.11.22> <hlink|<verbatim|one_fold>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Identity.lean#L198-L213>
    <em|(key result)> \V A single conditional covariance identity for real
    links, derived via the hinge resolution.
  </itemize-minus>

  <label|k-iii-11-23>

  <\itemize-minus>
    <item><strong|K-III.11.23> <hlink|<verbatim|antilles>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Antilles.lean#L43-L75>
    <em|(key result)> \V Starting from an admissible coefficient at scale m,
    one constructs a backward chain of states with prescribed endpoint,
    challenge compatibility, and exact density and index relations.
  </itemize-minus>

  <label|k-iii-11-24>

  <\itemize-minus>
    <item><strong|K-III.11.24> <hlink|<verbatim|forge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Tilt.lean#L36-L59>
    <em|(key result)> \V For large k, a stamp-duty structure exists for every
    admissible representation and atlas data at each level.
  </itemize-minus>

  <label|k-iii-11-25>

  <\itemize-minus>
    <item><strong|K-III.11.25> <hlink|<verbatim|cardinal_spin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Prism.lean#L102-L168>
    <em|(key result)> \V The loading is positive and the freight equals
    loading times exp of the spool lift for certified matched pilots.
  </itemize-minus>

  <label|k-iii-11-26>

  <\itemize-minus>
    <item><strong|K-III.11.26> <hlink|<verbatim|train_issue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Step.lean#L106-L116>
    <em|(key result)> \V For fixed kernel choices and periods, there is a
    uniform constant R such that the difference-motion train bound holds for
    all gauges, levels, and indices in the tested range.
  </itemize-minus>

  <label|k-iii-11-27>

  <\itemize-minus>
    <item><strong|K-III.11.27> <hlink|<verbatim|chamber>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Attic.lean#L157-L203>
    <em|(key result)> \V For all sufficiently large sides L and large
    couplings W, there is m\<gtr\>0 such that the rank-meter condition holds
    eventually in x.
  </itemize-minus>

  <label|k-iii-11-28>

  <\itemize-minus>
    <item><strong|K-III.11.28> <hlink|<verbatim|reserve_away>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/PHYSICAL_GUARD_7F546/Continuation/Suppression.lean#L120-L134>
    <em|(key result)> \V For a Gaussian with positive semidefinite covariance
    bounded entrywise by U, the probability that the central guard
    coordinates deviate by more than t is at most e^2 exp(-c t^2) with c
    depending on K and U.
  </itemize-minus>

  <label|k-iii-11-29>

  <\itemize-minus>
    <item><strong|K-III.11.29> <hlink|<verbatim|arriving_seed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Beam.lean#L153-L180>
    <em|(key result)> \V Given raw limits and trial columns with purchases,
    one can choose a refinement order with index data preserving the inputs
    and satisfying the required properties.
  </itemize-minus>

  <label|k-iii-11-30>

  <\itemize-minus>
    <item><strong|K-III.11.30> <hlink|<verbatim|tenet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Blanca.lean#L49-L120>
    <em|(key result)> \V The flux of the conserved stress against a
    Killing-type vector field and window functions vanishes for any finite
    combination annihilating all tests.
  </itemize-minus>

  <label|k-iii-11-31>

  <\itemize-minus>
    <item><strong|K-III.11.31> <hlink|<verbatim|laminate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Rail.lean#L197-L229>
    <em|(key result)> \V On actual stencils with pose and payment hypotheses,
    the coarse observable is valid on the fine patch and the rank arguments
    are close to the critical bias.
  </itemize-minus>

  <label|k-iii-11-32>

  <\itemize-minus>
    <item><strong|K-III.11.32> <hlink|<verbatim|prepared>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Gates.lean#L86>
    <em|(numbered result)> \V A chosen prepared table obtained from the
    nonemptiness result.
  </itemize-minus>

  <label|k-iii-11-33>

  <\itemize-minus>
    <item><strong|K-III.11.33> <hlink|<verbatim|arise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Conditions.lean#L100-L119>
    <em|(numbered result)> \V A weight satisfying a cost bound is integrable
    on the tilted measure and its inflated integral is bounded by the cost.
  </itemize-minus>

  <label|k-iii-11-34>

  <\itemize-minus>
    <item><strong|K-III.11.34> <hlink|<verbatim|peer_beams>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Sight.lean#L132-L158>
    <em|(numbered result)> \V For shaders on disjoint supports, the product
    is integrable and its integral factorizes as the product of integrals.
  </itemize-minus>

  <label|k-iii-11-35>

  <\itemize-minus>
    <item><strong|K-III.11.35> <hlink|<verbatim|single>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Meringue.lean#L32-L102>
    <em|(key result)> \V A single scale-step estimate: applying a coupon
    bound to an already packed coefficient yields a controlled remainder
    after one gauge-door step.
  </itemize-minus>

  <label|k-iii-11-36>

  <\itemize-minus>
    <item><strong|K-III.11.36> <hlink|<verbatim|earnings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Tael.lean#L58-L90>
    <em|(key result)> \V For label data on a compact set of distinct-point
    configurations, a quantitative estimate on lifts with tested marks holds
    eventually in the scale.
  </itemize-minus>

  <label|k-iii-11-37>

  <\itemize-minus>
    <item><strong|K-III.11.37> <hlink|<verbatim|arriving>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Dispenser.lean#L121-L143>
    <em|(key result)> \V The pushed-forward density at a configuration equals
    a sum over sectors with matching flags of integrals over tag variables
    weighted by streak shares.
  </itemize-minus>

  <label|k-iii-11-38>

  <\itemize-minus>
    <item><strong|K-III.11.38> <hlink|<verbatim|wheeled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Star.lean#L68-L69>
    <em|(key result)> \V Under provisions hypotheses there exists a trial
    system that travels and satisfies purchases.
  </itemize-minus>

  <label|k-iii-11-39>

  <\itemize-minus>
    <item><strong|K-III.11.39> <hlink|<verbatim|v_paid_factory>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Diana.lean#L57-L104>
    <em|(key result)> \V Provisions hypotheses imply the empire (aggregate)
    property for the factory data.
  </itemize-minus>

  <label|k-iii-11-40>

  <\itemize-minus>
    <item><strong|K-III.11.40> <hlink|<verbatim|y_ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Lys.lean#L40-L60>
    <em|(key result)> \V Under a heavy list of hypotheses, the root test of
    the invoice part at every mode is bounded by the budget.
  </itemize-minus>

  <label|k-iii-11-41>

  <\itemize-minus>
    <item><strong|K-III.11.41> <hlink|<verbatim|asideP>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Gelatin.lean#L23-L92>
    <em|(numbered result)> \V Applying the coupon estimate to already packed
    key addresses yields the coupon bound with parameters scaled by eta times
    t.
  </itemize-minus>

  <label|k-iii-11-42>

  <\itemize-minus>
    <item><strong|K-III.11.42> <hlink|<verbatim|lava_v>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Reach.lean#L27-L42>
    <em|(key result)> \V Uniformly on a compact set, eventually in k, an
    endpoint estimate holds for poised configurations.
  </itemize-minus>

  <label|k-iii-11-43>

  <\itemize-minus>
    <item><strong|K-III.11.43> <hlink|<verbatim|rated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L48-L71>
    <em|(key result)> \V Along a refined subsequence the limiting data form a
    table with seed whose rank matrix has the Maxwell ranks.
  </itemize-minus>

  <label|k-iii-11-44>

  <\itemize-minus>
    <item><strong|K-III.11.44> <hlink|<verbatim|attire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Delft.lean#L27-L35>
    <em|(key result)> \V Under spacing and budget hypotheses, the main budget
    to the boundary holds at any eligible specification.
  </itemize-minus>

  <label|k-iii-11-45>

  <\itemize-minus>
    <item><strong|K-III.11.45> <hlink|<verbatim|herald>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Morning.lean#L35-L53>
    <em|(key result)> \V For a branching patch, there is a constant
    U\<geqslant\>1 such that for large t and x in [t/2,t], suitable
    parameters make the Dawn condition hold uniformly for \<beta\>,\<beta\>'
    in range.
  </itemize-minus>

  <label|k-iii-11-46>

  <\itemize-minus>
    <item><strong|K-III.11.46> <hlink|<verbatim|readyA>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L15-L30>
    <em|(key result)> \V Under the standing hypotheses there is a nonzero
    conserved current in the kernel together with a scaling that is stable
    and compatible between the two hierarchies.
  </itemize-minus>

  <label|k-iii-11-47>

  <\itemize-minus>
    <item><strong|K-III.11.47> <hlink|<verbatim|scopes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Focusing.lean#L43-L101>
    <em|(key result)> \V For a branching patch, there exists E\<geqslant\>1
    such that the strong-scope property holds for all large x.
  </itemize-minus>

  <label|k-iii-11-48>

  <\itemize-minus>
    <item><strong|K-III.11.48> <hlink|<verbatim|annular_fieldA>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Bravo.lean#L55-L89>
    <em|(key result)> \V The flux of the stress against homogeneous Killing
    fields is represented by a single limit field B on annular windows.
  </itemize-minus>

  <label|k-iii-11-49>

  <\itemize-minus>
    <item><strong|K-III.11.49> <hlink|<verbatim|cast_off>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Star.lean#L64-L66>
    <em|(key result)> \V For a simple graph, frequent good scales (tender,
    metering, hours, marks) imply the provisions conclusion for the sequence.
  </itemize-minus>

  <label|k-iii-11-50>

  <\itemize-minus>
    <item><strong|K-III.11.50> <hlink|<verbatim|success>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/TeamKernel.lean#L71-L89>
    <em|(key result)> \V The weighted sum over molecules converges to the
    push-forward value of the partition-type quantity, completing the
    expansion identity.
  </itemize-minus>

  <label|k-iii-11-51>

  <\itemize-minus>
    <item><strong|K-III.11.51> <hlink|<verbatim|hoops>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Offers.lean#L38-L61>
    <em|(key result)> \V At weak coupling, eventually in s, for dyed step
    data matching a patch and ratio, the Helps property holds with beta at
    most 4 times retimed x.
  </itemize-minus>

  <label|k-iii-11-52>

  <\itemize-minus>
    <item><strong|K-III.11.52> <hlink|<verbatim|boot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Starring.lean#L31-L37>
    <em|(key result)> \V For generic points and suitable parameters, the
    initial uncorrected array (Boot) hypothesis holds for all sufficiently
    large k.
  </itemize-minus>

  <label|k-iii-11-53>

  <\itemize-minus>
    <item><strong|K-III.11.53> <hlink|<verbatim|mural_cast>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Esme.lean#L42-L57>
    <em|(key result)> \V Over any compact set of distinct-point
    configurations, the wall conditions with numeric gates hold uniformly for
    all sufficiently large scales.
  </itemize-minus>

  <label|k-iii-11-54>

  <\itemize-minus>
    <item><strong|K-III.11.54> <hlink|<verbatim|s_choir>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Crowns.lean#L146-L157>
    <em|(key result)> \V For fit points of at most two, the choir property
    holds for the short stamp.
  </itemize-minus>

  <label|k-iii-11-55>

  <\itemize-minus>
    <item><strong|K-III.11.55> <hlink|<verbatim|laurelE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Economist.lean#L23-L32>
    <em|(key result)> \V If a configuration is created and makes its
    requirements, then the economics (budget) condition holds.
  </itemize-minus>

  <label|k-iii-11-56>

  <\itemize-minus>
    <item><strong|K-III.11.56> <hlink|<verbatim|dredge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Dredge.lean#L33-L75>
    <em|(key result)> \V There is \<ell\>\<geqslant\>1 such that eventually
    in x the soundness property holds for all positioned configurations with
    parameters in range.
  </itemize-minus>

  <label|k-iii-11-57>

  <\itemize-minus>
    <item><strong|K-III.11.57> <hlink|<verbatim|console>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Festoon.lean#L57-L126>
    <em|(key result)> \V For healthy polynomial data on a common mask, the
    tagged cumulant calculation yields a quantitative estimate for the
    polygon-composed polynomial under degree and weight bounds.
  </itemize-minus>

  <label|k-iii-11-58>

  <\itemize-minus>
    <item><strong|K-III.11.58> <hlink|<verbatim|preheat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Hearth.lean#L87-L88>
    <em|(key result)> \V For large sides and couplings there is m\<gtr\>0
    such that for all K, D, the peaking property holds eventually in x after
    subtracting affine squares.
  </itemize-minus>

  <label|k-iii-11-59>

  <\itemize-minus>
    <item><strong|K-III.11.59> <hlink|<verbatim|aspect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Medal.lean#L36-L76>
    <em|(key result)> \V Along a sequence of poised tables with diverging
    index, there exist limiting balances (extraction) for the calibrated
    data.
  </itemize-minus>

  <label|k-iii-11-60>

  <\itemize-minus>
    <item><strong|K-III.11.60> <hlink|<verbatim|v_culminates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L84-L95>
    <em|(main result)> \V For simple G and b large enough, the empire
    hypothesis implies the Turning property.
  </itemize-minus>

  <label|k-iii-11-61>

  <\itemize-minus>
    <item><strong|K-III.11.61> <hlink|<verbatim|grilled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/South/FinalG.lean#L76-L83>
    <em|(key result)> \V Cell hypotheses imply the Grill property for the
    observable.
  </itemize-minus>

  <label|k-iii-11-62>

  <\itemize-minus>
    <item><strong|K-III.11.62> <hlink|<verbatim|stroke>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Copse.lean#L50-L72>
    <em|(key result)> \V A served property for a family of observables
    propagates through a pushforward kernel with explicit exponential-type
    bound loss.
  </itemize-minus>

  <label|k-iii-11-63>

  <\itemize-minus>
    <item><strong|K-III.11.63> <hlink|<verbatim|rendered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Rendered.lean#L36-L86>
    <em|(key result)> \V If a layout achieves the pointwise representation on
    positioned data, the pushforward of the field density equals the tableau
    expression.
  </itemize-minus>

  <label|k-iii-11-64>

  <\itemize-minus>
    <item><strong|K-III.11.64> <hlink|<verbatim|v_obtain_purchases>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L177-L222>
    <em|(key result)> \V Offers imply the existence of a trial system that
    travels and satisfies purchases.
  </itemize-minus>

  <label|k-iii-11-65>

  <\itemize-minus>
    <item><strong|K-III.11.65> <hlink|<verbatim|v_conditioned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Supra.lean#L29-L53>
    <em|(key result)> \V Under a path, tally and instance hypotheses with
    sufficiently large m, an estimate holds for the ship with the given
    allowance.
  </itemize-minus>

  <label|k-iii-11-66>

  <\itemize-minus>
    <item><strong|K-III.11.66> <hlink|<verbatim|v_reward>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Soft/Agate.lean#L37-L63>
    <em|(key result)> \V Under coupler, return-trip and small-parameter
    hypotheses, the dust pushforward satisfies matric and radii bounds with
    explicit constants.
  </itemize-minus>

  <label|k-iii-11-67>

  <\itemize-minus>
    <item><strong|K-III.11.67> <hlink|<verbatim|sponsored>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L38-L51>
    <em|(key result)> \V For a simple gauge group and local ratio, a
    sufficiently long wait structure guarantees that families paid at those
    levels satisfy weak completeness.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> III.10 One full nonlinear renormalization
  step: bounds on irrelevant terms|III-10.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-11.tm>|<hlink|III.12 Bounds uniform in the volume and
  convergence as the spacing tends to zero \<rightarrow\>|III-12.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.11. Interacting rank, Gaussian comparison and
    the stress tensor \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|6>>
    <associate|3-strategy|<tuple|3|7>>
    <associate|4-steps|<tuple|4|7>>
    <associate|5-where-the-difficulty-lies|<tuple|5|9>>
    <associate|6-notation|<tuple|6|10>>
    <associate|7-what-remains-unexplained|<tuple|7|10>>
    <associate|additional-source-locations|<tuple|9.1|11>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|9.1|11>>
    <associate|auto-11|<tuple|10|13>>
    <associate|auto-2|<tuple|2|6>>
    <associate|auto-3|<tuple|3|7>>
    <associate|auto-4|<tuple|4|7>>
    <associate|auto-5|<tuple|5|9>>
    <associate|auto-6|<tuple|6|10>>
    <associate|auto-7|<tuple|7|10>>
    <associate|auto-8|<tuple|8|11>>
    <associate|auto-9|<tuple|9|11>>
    <associate|code-dependencies|<tuple|8|11>>
    <associate|iii11-interacting-rank-gaussian-comparison-and-the-stress-tensor|<tuple|?|1>>
    <associate|k-iii-11-1|<tuple|10|13>>
    <associate|k-iii-11-10|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-11-11|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-11-12|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-11-13|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-11-14|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-11-15|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-11-16|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-11-17|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-11-18|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-11-19|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-11-2|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-11-20|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-11-21|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-11-22|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-11-23|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-11-24|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-11-25|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-11-26|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-11-27|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-11-28|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-11-29|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-11-3|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-11-30|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-11-31|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-11-32|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-11-33|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-11-34|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-11-35|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-11-36|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-11-37|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-iii-11-38|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-iii-11-39|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-iii-11-4|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-11-40|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-iii-11-41|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-iii-11-42|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-iii-11-43|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-iii-11-44|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-iii-11-45|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-iii-11-46|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-iii-11-47|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-11-48|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-11-49|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-11-5|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-11-50|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-11-51|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-11-52|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-11-53|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-11-54|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-11-55|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-11-56|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-11-57|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-11-58|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-11-59|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-11-6|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-11-60|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-11-61|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-11-62|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-11-63|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-11-64|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-11-65|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-11-66|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-11-67|<tuple|<with|mode|<quote|math>|<rigid|->>|20>>
    <associate|k-iii-11-7|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-11-8|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-11-9|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|key-statements|<tuple|10|13>>
    <associate|lean-source|<tuple|9|11>>
    <associate|unit-difficulty|<tuple|13|9>>
    <associate|unit-inputs|<tuple|<with|mode|<quote|math>|<rigid|->>|6>>
    <associate|unit-limitations|<tuple|<with|mode|<quote|math>|<rigid|->>|10>>
    <associate|unit-notation|<tuple|5|9>>
    <associate|unit-results|<tuple|?|1>>
    <associate|unit-steps|<tuple|3|7>>
    <associate|unit-strategy|<tuple|<with|mode|<quote|math>|<rigid|->>|7>>
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